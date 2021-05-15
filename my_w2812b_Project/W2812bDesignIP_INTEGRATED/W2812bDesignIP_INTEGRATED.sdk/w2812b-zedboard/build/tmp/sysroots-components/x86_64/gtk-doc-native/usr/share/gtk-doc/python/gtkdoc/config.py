version = "1.29"

# tools
dblatex = ''
fop = ''
highlight = ''
highlight_options = ''
pkg_config = 'FIXMESTAGINGDIRHOST/usr/bin/pkg-config'
xsltproc = '/scratch/petalinux-yocto/yocto_downloads_2019.1_zynq-generic/build_zynq-generic/tmp/sysroots-xsct/Scout/2019.1/bin/xsltproc'

# configured directories
prefix = 'FIXMESTAGINGDIRHOST/usr'
datarootdir = "${prefix}/share".replace('${prefix}', prefix)
datadir = "FIXMESTAGINGDIRHOST/usr/share".replace('${datarootdir}', datarootdir)

exeext = ''
