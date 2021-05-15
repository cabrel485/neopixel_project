Summary: Simple myapp application
Name: myapp
Version: 1.0
Release: r0
License: MIT
Group: PETALINUX/apps
Packager: Xilinx <meta-xilinx@yoctoproject.org>
BuildRequires: virtual/arm-xilinx-linux-gnueabi-compilerlibs
BuildRequires: virtual/arm-xilinx-linux-gnueabi-gcc
BuildRequires: virtual/libc
Requires: ld-linux-armhf.so.3
Requires: ld-linux-armhf.so.3(GLIBC_2.4)
Requires: libc.so.6
Requires: libc.so.6(GLIBC_2.4)
Requires: libc6 >= 2.28
Requires: rtld(GNU_HASH)
Recommends: myapp-lic

%description
Simple myapp application.

%package -n myapp-lic
Summary: Simple myapp application
License: MIT
Group: PETALINUX/apps

%description -n myapp-lic
Simple myapp application.

%package -n myapp-dbg
Summary: Simple myapp application - Debugging files
License: MIT
Group: devel
Recommends: libc6-dbg
Recommends: myapp-lic

%description -n myapp-dbg
Simple myapp application.  This package contains ELF symbols and related
sources for debugging purposes.

%package -n myapp-staticdev
Summary: Simple myapp application - Development files (Static Libraries)
License: MIT
Group: devel
Requires: myapp-dev = 1.0-r0
Recommends: myapp-lic

%description -n myapp-staticdev
Simple myapp application.  This package contains static libraries for
software development.

%package -n myapp-dev
Summary: Simple myapp application - Development files
License: MIT
Group: devel
Requires: myapp = 1.0-r0
Recommends: libc6-dev
Recommends: myapp-lic

%description -n myapp-dev
Simple myapp application.  This package contains symbolic links, header
files, and related items necessary for software development.

%package -n myapp-doc
Summary: Simple myapp application - Documentation files
License: MIT
Group: doc
Recommends: myapp-lic

%description -n myapp-doc
Simple myapp application.  This package contains documentation.

%package -n myapp-locale
Summary: Simple myapp application
License: MIT
Group: PETALINUX/apps
Recommends: myapp-lic

%description -n myapp-locale
Simple myapp application.

%files
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/bin"
"/usr/bin/myapp"

%files -n myapp-lic
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/licenses"
%dir "/usr/share/licenses/myapp"
"/usr/share/licenses/myapp/MIT"
"/usr/share/licenses/myapp/generic_MIT"

%files -n myapp-dbg
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/src"
%dir "/usr/bin"
%dir "/usr/src/debug"
%dir "/usr/src/debug/myapp"
%dir "/usr/src/debug/myapp/1.0-r0"
"/usr/src/debug/myapp/1.0-r0/myapp.c"
"/usr/src/debug/myapp/1.0-r0/led.c"
"/usr/src/debug/myapp/1.0-r0/led.h"
%dir "/usr/bin/.debug"
"/usr/bin/.debug/myapp"

%files -n myapp-dev
%defattr(-,-,-,-)

