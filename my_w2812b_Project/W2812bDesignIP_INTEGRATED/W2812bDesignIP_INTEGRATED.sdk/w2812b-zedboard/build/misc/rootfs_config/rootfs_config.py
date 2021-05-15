import sys
import os
import re
import getopt
import subprocess

def read_config(config_file):
  global Lines_config
  Lines_config = []
  with open(config_file,'r') as fp:
    for line in fp:
      line = line.splitlines()
      Lines_config += [line]
  fp.closed

def read_packages(xilinx_arch):
  image_packages = []
  inherit_packages = []
  image_features = []
  for line in Lines_config:
    line_str = str(line)
    if re.search("#|\n", line_str):
      continue
    elif re.search("ROOTFS_ROOT_PASSWD",line_str):
      passwd = line_str.split('=')[1]
      passwd = re.sub('"|\]|\'' , '',passwd)
    else:
      if re.search("=y'\]",line_str):
        line_str = line_str.split('_')[1]
        line_str = line_str.split('=')[0]
        line_str = fix_config_name(line_str)
	if re.search("inherit-",line_str):
                line_str = line_str.replace('inherit-','')
                line_str = line_str.replace('-', '_')
                inherit_packages += [line_str]
	elif re.search("imagefeature-",line_str):
		line_str = line_str.replace('imagefeature-','')
		image_features += [line_str]
	elif re.match("system-" + xilinx_arch,line_str):
		#do nothing, skipp the package name with "system-<xilinx_arch>". Using to find system type
		continue
	else:
		image_packages += [line_str]
  return passwd,image_packages,inherit_packages,image_features

def write_list(bb_file,packages):
  for package in packages:
        package = "\t\t"+ package + " " + "\\" + "\n"
        bb_file.write(package)
  bb_file.write('\t\t"\n')

def generate_bb(bb_path,xilinx_arch):
  bb_file = open(bb_path + '/petalinux-user-image.bb', 'w')
  bb_file.truncate()
  bb_file.write('DESCRIPTION = "PETALINUX image definition for Xilinx boards"\n')
  bb_file.write('LICENSE = "MIT"\n\n')
  bb_file.write('require recipes-core/images/petalinux-image-common.inc \n\n')
  passwd,image_packages,inherit_packages,image_features=read_packages(xilinx_arch)
  # Add inherit packages into bb file
  inherit_str='inherit extrausers ' + ' '.join(inherit_packages) + '\n'
  bb_file.write(inherit_str)

  # Add common features into bb file
  bb_file.write('COMMON_FEATURES = "\\\n')
  write_list(bb_file,image_features)
  bb_file.write('IMAGE_LINGUAS = " "\n\n')
  # Add image install packages into bb file
  bb_file.write('IMAGE_INSTALL = "\\\n')
  bb_file.write("\t\tkernel-modules \\\n")
  write_list(bb_file,image_packages)

  passwd = 'EXTRA_USERS_PARAMS = "usermod -P ' + passwd + ' root;"\n'
  bb_file.write(passwd)
  bb_file.close()

def fix_kconfig_name(packg):
  plus_str = re.escape("+")
  if(re.search(plus_str,packg)):
    packg = str(packg)
    packg = re.sub(plus_str,"PLUS",packg)
  return packg

def fix_config_name(packg):
  plus_str = re.escape("PLUS")
  if(re.search(plus_str,packg)):
    packg = str(packg)
    packg = re.sub(plus_str,"+",packg)
  return packg

def generate_kconfig_menu(packg):
  if packages_dict[packg]:
    line = ""
    for sub_packg in packages_dict[packg]:
      line += "config " + fix_kconfig_name(sub_packg) + "  \n"
      line += "\t bool \"" + sub_packg + "\"\n"
      line += "\t help\n"
      if sub_packg in summary_dict:
        line += "\t" + summary_dict[sub_packg] + "\n"
      line += "\t\n"
  return line
#  kconf_file.write(line)

def generate_config(packgs,file_path):
  minimal_file=open(file_path + '/minimal_packages','w')
  minimal_file.truncate()
  for p in packgs:
    line = "CONFIG_" + p + "=y\n"
    minimal_file.write(line)
  minimal_file.close()

def generate_kconfig_part(kconf_file,section_key):
  for sub_section_key in sorted(packages_section[section_key]):
    if packages_section[section_key][sub_section_key]:
      line = "menu \"" + sub_section_key + " \" \n"
      kconf_file.write(line)
      for packg in packages_section[section_key][sub_section_key]:
        lines = generate_kconfig_menu(packg)
        kconf_file.write(lines)
      line = "endmenu\n"
      kconf_file.write(line)
    else:
      packg = str(sub_section_key)
      lines=generate_kconfig_menu(packg)
      kconf_file.write(lines)


def generate_kconfig(kconf_file_path):
  kconf_file=open(kconf_file_path + '/Kconfig.user','w')
  kconf_file.truncate()

  for section_key in sorted(packages_section):
    if section_key == "PETALINUX":
      generate_kconfig_part(kconf_file,section_key)

  line = "menu \"" + "user packages" + " \" \n"
  kconf_file.write(line)
  for section_key in sorted(packages_section):
    if section_key != "PETALINUX":
      generate_kconfig_part(kconf_file,section_key)
  line = "endmenu\n"
  kconf_file.write(line)

  kconf_file.close()

def parse_packages_to_sections(packages_dict):
  global packages_section
  packages_section = {}
  my_regx = re.escape("/")
  for packg in sorted(packages_dict):
    if packg in sections_dict:
      section_value = sections_dict[packg]
      if(re.search(my_regx,section_value)):
        string0 = section_value.split('/')[0]
        string1 = section_value.split('/')[1]
	if string0 in packages_section:
	  if string1 in packages_section[string0]:
	    packages_section[string0][string1] += [packg]
	  else:
	    packages_section[string0][string1] = [packg]
	else:
          packages_section[string0] ={}
	  packages_section[string0][string1] = [packg]
      else:
	if section_value in packages_section:
	  packages_section[section_value][packg] = []
	else:
	  packages_section[section_value] = {}
	  packages_section[section_value][packg] = []
    else:
      section_value = "misc"
      if re.search('^lib',packg):
        section_value = "libs"
      if section_value in packages_section:
        packages_section[section_value][packg] = []
      else:
        packages_section[section_value] = {}
        packages_section[section_value][packg] = []

def filter_packages(black_list_file):
  global block_packages_full
  global block_packages_single
  block_packages = []
  block_packages_full = []
  block_packages_single = []
  with open(black_list_file,'r') as fp:
    for line in fp:
      line = line.strip()
      line = str(line)
      if line.startswith('FULL_'):
	line = line.replace("FULL_","")
	block_packages_full  += [line]
      if line.startswith('SINGLE_'):
	line = line.replace("SINGLE_","")
	block_packages_single  += [line]

  fp.closed
#  print block_packages

def extract_packages(Lines_packages):
  global packages_dict
  global sub_block_packgs
  packages_dict = {}
  sub_block_packgs = []
  my_regx = "IMAGE_INSTALL_append"
  my_regx1 = re.escape("(")
  for line in Lines_packages:
     line_str = str(line)
     if(re.search(my_regx,line_str)):
       packg = line_str.split('=')[1]
       packg = packg.split('"')[1]
       packg = packg.strip()
#getting the packages
       packages_dict[packg] = [packg]
#  print packages_dict
  parse_packages_to_sections(packages_dict)

def extract_sections(Layers):
  global sections_dict
  sections_dict = {}
  for layer in Layers:
    for root, directories, files in os.walk(layer):
      for filename in files:
	if filename.endswith((".bb",".inc",".bbclass")):
	  files_bb = open(os.path.join(root, filename),'r')
	  for line in files_bb.readlines():
	     if re.search('^SECTION =',line):
	       line = re.sub(' |"|\n','', line)
	       line = line.split('=')[1]
               strg = re.sub('\.bb$|\.bbclass$|\.inc$','', filename)
	       strg = strg.split('_')[0]
               sections_dict[strg] = line
	  files_bb.close()

def extract_summary(Layers):
  global summary_dict
  summary_dict = {}
  for layer in Layers:
#    print "shiva:",layer
    for root, directories, files in os.walk(layer):
      for filename in files:
	if filename.endswith((".bb",".inc",".bbclass")):
	  files_bb = open(os.path.join(root, filename),'r')
	  for line in files_bb.readlines():
	    if re.search('^SUMMARY =',line):
	      line = re.sub('"|\n','', line)
	      line = line.split('=')[1]
	      strg = re.sub('\.bb$|\.inc$|\.bbclass$','', filename)
	      strg = strg.split('_')[0]
	      summary_dict[strg] = line
	  files_bb.close()
#  print summary_dict


def extract_packages_dot(packages_dot):
  global  Lines_packages_dot
  Lines_packages_dot = []
  with open(packages_dot,'r') as fp:
    for line in fp:
      line = line.splitlines()
      Lines_packages_dot += [line]
  fp.closed
  extract_packages(Lines_packages_dot)

def extract_bblayers():
  Layers = []
  line = proot + '/project-spec/meta-user'
  Layers = [line]
  extract_summary(Layers)
  extract_sections(Layers)
#  print Layers

def parse_args(argv):
  global proot
  try:
    opts, args = getopt.getopt(argv,"hk:b:a:",["generate_kconfig=","generate_bb=","generate_all="])
  except getopt.GetoptError:
    print 'ERROR: valid options --generate_kconfig or --generate_bb or --generate_all'
    sys.exit(2)
  for opt, arg in opts:
    if opt == '-h':
      print 'HELP: '
      print "Usage: python rootfs_config.py --generate_kconfig packages-depends.dot black_list_packages_file <Kconfig path>" 	
      print "Usage: python rootfs_config.py --generate_bb config <bb_path>"
      sys.exit()
    elif opt in ("-k","--generate_kconfig"):
      packages_user = argv[1]
      proot = argv[2]
      kconf_file_path = proot + '/build/misc/rootfs_config'
      extract_bblayers()
      extract_packages_dot(packages_user)
      generate_kconfig(kconf_file_path)

    elif opt in ("-b","--generate_bb"):
      config = argv[1]
      bbappend_path = argv[2]
      xilinx_arch = argv[3]
      read_config(config)
      generate_bb(bbappend_path,xilinx_arch)
      
    elif opt in ("-a","--generate_all"):
      packages_dot = argv[1]
      black_list_file = argv[2]	
      kconf_file_path = argv[3]
      bbappend_path = argv[4]      
      extract_bblayers()	
      filter_packages(black_list_file)
      extract_packages_dot(packages_dot)	
      generate_kconfig(kconf_file_path)
      read_config(config)
      generate_kconfig(kconf_file_path)	
    else:
      print "Error:"
      print "Usage: python rootfs_config.py --generate_kconfig packages-depends.dot black_list_packages_file <Kconfig path>"
      print "Usage: python rootfs_config.py --generate_bb config <bb_path>"

parse_args(sys.argv[1:])
