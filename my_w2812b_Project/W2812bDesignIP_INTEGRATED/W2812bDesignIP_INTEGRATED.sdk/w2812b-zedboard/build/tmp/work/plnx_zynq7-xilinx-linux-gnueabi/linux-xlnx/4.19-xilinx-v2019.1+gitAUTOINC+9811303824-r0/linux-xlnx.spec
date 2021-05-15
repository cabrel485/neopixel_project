Summary: Linux kernel
Name: linux-xlnx
Version: 4.19+xilinx+v2019.1+git0+9811303824
Release: r0
License: GPLv2
Group: kernel
Packager: Xilinx <meta-xilinx@yoctoproject.org>
BuildRequires: bc-native
BuildRequires: bison-native
BuildRequires: dtc-native
BuildRequires: kmod-native
BuildRequires: lzop-native
BuildRequires: u-boot-mkimage-native
BuildRequires: virtual/arm-xilinx-linux-gnueabi-binutils
BuildRequires: virtual/arm-xilinx-linux-gnueabi-gcc
BuildRequires: xz-native

%description
Xilinx Kernel

%package -n linux-xlnx-lic
Summary: Linux kernel
License: GPLv2
Group: kernel

%description -n linux-xlnx-lic
Xilinx Kernel

%package -n kernel
Summary: Linux kernel
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Recommends: linux-xlnx-lic

%description -n kernel
Xilinx Kernel

%package -n kernel-4.19.0-xilinx-v2019.1
Summary: Linux kernel
License: GPLv2
Group: kernel
Recommends: linux-xlnx-lic
Provides: kernel-4.19.0-xilinx-v2019.1
Provides: kernel-base = 4.19+xilinx+v2019.1+git0+9811303824

%description -n kernel-4.19.0-xilinx-v2019.1
Xilinx Kernel

%package -n kernel-vmlinux
Summary: Linux kernel
License: GPLv2
Group: kernel
Recommends: linux-xlnx-lic

%description -n kernel-vmlinux
Xilinx Kernel

%package -n kernel-image-4.19.0-xilinx-v2019.1
Summary: Linux kernel
License: GPLv2
Group: kernel
Requires: kernel-image-fitimage-4.19.0-xilinx-v2019.1
Requires: kernel-image-uimage-4.19.0-xilinx-v2019.1
Requires: kernel-image-vmlinux-4.19.0-xilinx-v2019.1
Requires: kernel-image-zimage-4.19.0-xilinx-v2019.1
Recommends: linux-xlnx-lic
Provides: kernel-image = 4.19+xilinx+v2019.1+git0+9811303824

%description -n kernel-image-4.19.0-xilinx-v2019.1
Xilinx Kernel

%package -n kernel-dev
Summary: Linux kernel
License: GPLv2
Group: kernel
Recommends: kernel-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-base-dev
Recommends: kernel-image-fitimage-dev
Recommends: kernel-image-uimage-dev
Recommends: kernel-image-vmlinux-dev
Recommends: kernel-image-zimage-dev
Recommends: kernel-module-8021q-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-bridge-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-crypto-engine-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-drbg-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-echainiv-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-g-zero-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-hmac-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-ipip-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-jitterentropy-rng-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-libcomposite-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-llc-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-p8022-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-psnap-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-remoteproc-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-rpmsg-char-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-rpmsg-core-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-sha256-generic-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-stp-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-uio-pdrv-genirq-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-usb-f-mass-storage-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-usb-f-ss-lb-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-virtio-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-virtio-crypto-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-virtio-ring-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-virtio-rpmsg-bus-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-module-zynq-remoteproc-4.19.0-xilinx-v2019.1-dev
Recommends: kernel-vmlinux-dev
Recommends: linux-xlnx-lic

%description -n kernel-dev
Xilinx Kernel

%package -n kernel-modules
Summary: Linux kernel
License: GPLv2
Group: kernel
Requires: kernel-module-8021q-4.19.0-xilinx-v2019.1
Requires: kernel-module-bridge-4.19.0-xilinx-v2019.1
Requires: kernel-module-crypto-engine-4.19.0-xilinx-v2019.1
Requires: kernel-module-drbg-4.19.0-xilinx-v2019.1
Requires: kernel-module-echainiv-4.19.0-xilinx-v2019.1
Requires: kernel-module-g-zero-4.19.0-xilinx-v2019.1
Requires: kernel-module-hmac-4.19.0-xilinx-v2019.1
Requires: kernel-module-ipip-4.19.0-xilinx-v2019.1
Requires: kernel-module-jitterentropy-rng-4.19.0-xilinx-v2019.1
Requires: kernel-module-libcomposite-4.19.0-xilinx-v2019.1
Requires: kernel-module-llc-4.19.0-xilinx-v2019.1
Requires: kernel-module-p8022-4.19.0-xilinx-v2019.1
Requires: kernel-module-psnap-4.19.0-xilinx-v2019.1
Requires: kernel-module-remoteproc-4.19.0-xilinx-v2019.1
Requires: kernel-module-rpmsg-char-4.19.0-xilinx-v2019.1
Requires: kernel-module-rpmsg-core-4.19.0-xilinx-v2019.1
Requires: kernel-module-sha256-generic-4.19.0-xilinx-v2019.1
Requires: kernel-module-stp-4.19.0-xilinx-v2019.1
Requires: kernel-module-uio-pdrv-genirq-4.19.0-xilinx-v2019.1
Requires: kernel-module-usb-f-mass-storage-4.19.0-xilinx-v2019.1
Requires: kernel-module-usb-f-ss-lb-4.19.0-xilinx-v2019.1
Requires: kernel-module-virtio-4.19.0-xilinx-v2019.1
Requires: kernel-module-virtio-crypto-4.19.0-xilinx-v2019.1
Requires: kernel-module-virtio-ring-4.19.0-xilinx-v2019.1
Requires: kernel-module-virtio-rpmsg-bus-4.19.0-xilinx-v2019.1
Requires: kernel-module-zynq-remoteproc-4.19.0-xilinx-v2019.1
Recommends: linux-xlnx-lic

%description -n kernel-modules
Kernel modules meta package

%package -n kernel-devicetree
Summary: Linux kernel
License: GPLv2
Group: kernel
Recommends: linux-xlnx-lic

%description -n kernel-devicetree
Xilinx Kernel

%package -n kernel-image-uimage-4.19.0-xilinx-v2019.1
Summary: Linux kernel
License: GPLv2
Group: kernel
Recommends: linux-xlnx-lic
Provides: kernel-image-uimage = 4.19+xilinx+v2019.1+git0+9811303824

%description -n kernel-image-uimage-4.19.0-xilinx-v2019.1
Xilinx Kernel

%package -n kernel-image-fitimage-4.19.0-xilinx-v2019.1
Summary: Linux kernel
License: GPLv2
Group: kernel
Recommends: linux-xlnx-lic
Provides: kernel-image-fitimage = 4.19+xilinx+v2019.1+git0+9811303824

%description -n kernel-image-fitimage-4.19.0-xilinx-v2019.1
Xilinx Kernel

%package -n kernel-image-vmlinux-4.19.0-xilinx-v2019.1
Summary: Linux kernel
License: GPLv2
Group: kernel
Requires: kernel-vmlinux
Recommends: linux-xlnx-lic
Provides: kernel-image-vmlinux = 4.19+xilinx+v2019.1+git0+9811303824

%description -n kernel-image-vmlinux-4.19.0-xilinx-v2019.1
Xilinx Kernel

%package -n kernel-image-zimage-4.19.0-xilinx-v2019.1
Summary: Linux kernel
License: GPLv2
Group: kernel
Recommends: linux-xlnx-lic
Provides: kernel-image-zimage = 4.19+xilinx+v2019.1+git0+9811303824

%description -n kernel-image-zimage-4.19.0-xilinx-v2019.1
Xilinx Kernel

%package -n kernel-module-crypto-engine-4.19.0-xilinx-v2019.1
Summary: crypto-engine kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Provides: kernel-module-crypto-engine

%description -n kernel-module-crypto-engine-4.19.0-xilinx-v2019.1
crypto-engine kernel module; Crypto hardware engine framework

%package -n kernel-module-drbg-4.19.0-xilinx-v2019.1
Summary: drbg kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Provides: kernel-module-drbg

%description -n kernel-module-drbg-4.19.0-xilinx-v2019.1
drbg kernel module; NIST SP800-90A Deterministic Random Bit Generator
(DRBG) using following cores: HMAC

%package -n kernel-module-echainiv-4.19.0-xilinx-v2019.1
Summary: echainiv kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Provides: kernel-module-echainiv

%description -n kernel-module-echainiv-4.19.0-xilinx-v2019.1
echainiv kernel module; Encrypted Chain IV Generator

%package -n kernel-module-hmac-4.19.0-xilinx-v2019.1
Summary: hmac kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Provides: kernel-module-hmac

%description -n kernel-module-hmac-4.19.0-xilinx-v2019.1
hmac kernel module; HMAC hash algorithm

%package -n kernel-module-jitterentropy-rng-4.19.0-xilinx-v2019.1
Summary: jitterentropy-rng kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Provides: kernel-module-jitterentropy-rng

%description -n kernel-module-jitterentropy-rng-4.19.0-xilinx-v2019.1
jitterentropy-rng kernel module; Non-physical True Random Number Generator
based on CPU Jitter

%package -n kernel-module-sha256-generic-4.19.0-xilinx-v2019.1
Summary: sha256-generic kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Provides: kernel-module-sha256-generic

%description -n kernel-module-sha256-generic-4.19.0-xilinx-v2019.1
sha256-generic kernel module; SHA-224 and SHA-256 Secure Hash Algorithm

%package -n kernel-module-virtio-crypto-4.19.0-xilinx-v2019.1
Summary: virtio-crypto kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires: kernel-module-crypto-engine-4.19.0-xilinx-v2019.1
Requires: kernel-module-virtio-4.19.0-xilinx-v2019.1
Requires: kernel-module-virtio-ring-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-module-crypto-engine-4.19.0-xilinx-v2019.1
Requires(post): kernel-module-virtio-4.19.0-xilinx-v2019.1
Requires(post): kernel-module-virtio-ring-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-module-crypto-engine-4.19.0-xilinx-v2019.1
Requires(postun): kernel-module-virtio-4.19.0-xilinx-v2019.1
Requires(postun): kernel-module-virtio-ring-4.19.0-xilinx-v2019.1
Provides: kernel-module-virtio-crypto

%description -n kernel-module-virtio-crypto-4.19.0-xilinx-v2019.1
virtio-crypto kernel module; virtio crypto device driver

%package -n kernel-module-remoteproc-4.19.0-xilinx-v2019.1
Summary: remoteproc kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires: kernel-module-virtio-4.19.0-xilinx-v2019.1
Requires: kernel-module-virtio-ring-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-module-virtio-4.19.0-xilinx-v2019.1
Requires(post): kernel-module-virtio-ring-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-module-virtio-4.19.0-xilinx-v2019.1
Requires(postun): kernel-module-virtio-ring-4.19.0-xilinx-v2019.1
Provides: kernel-module-remoteproc

%description -n kernel-module-remoteproc-4.19.0-xilinx-v2019.1
remoteproc kernel module; Generic Remote Processor Framework

%package -n kernel-module-zynq-remoteproc-4.19.0-xilinx-v2019.1
Summary: zynq-remoteproc kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires: kernel-module-remoteproc-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-module-remoteproc-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-module-remoteproc-4.19.0-xilinx-v2019.1
Provides: kernel-module-zynq-remoteproc

%description -n kernel-module-zynq-remoteproc-4.19.0-xilinx-v2019.1
zynq-remoteproc kernel module; Zynq remote processor control driver

%package -n kernel-module-rpmsg-char-4.19.0-xilinx-v2019.1
Summary: rpmsg-char kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires: kernel-module-rpmsg-core-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-module-rpmsg-core-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-module-rpmsg-core-4.19.0-xilinx-v2019.1
Provides: kernel-module-rpmsg-char

%description -n kernel-module-rpmsg-char-4.19.0-xilinx-v2019.1
rpmsg-char kernel module

%package -n kernel-module-rpmsg-core-4.19.0-xilinx-v2019.1
Summary: rpmsg-core kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Provides: kernel-module-rpmsg-core

%description -n kernel-module-rpmsg-core-4.19.0-xilinx-v2019.1
rpmsg-core kernel module; remote processor messaging bus

%package -n kernel-module-virtio-rpmsg-bus-4.19.0-xilinx-v2019.1
Summary: virtio-rpmsg-bus kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires: kernel-module-rpmsg-core-4.19.0-xilinx-v2019.1
Requires: kernel-module-virtio-4.19.0-xilinx-v2019.1
Requires: kernel-module-virtio-ring-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-module-rpmsg-core-4.19.0-xilinx-v2019.1
Requires(post): kernel-module-virtio-4.19.0-xilinx-v2019.1
Requires(post): kernel-module-virtio-ring-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-module-rpmsg-core-4.19.0-xilinx-v2019.1
Requires(postun): kernel-module-virtio-4.19.0-xilinx-v2019.1
Requires(postun): kernel-module-virtio-ring-4.19.0-xilinx-v2019.1
Provides: kernel-module-virtio-rpmsg-bus

%description -n kernel-module-virtio-rpmsg-bus-4.19.0-xilinx-v2019.1
virtio-rpmsg-bus kernel module; Virtio-based remote processor messaging bus

%package -n kernel-module-uio-pdrv-genirq-4.19.0-xilinx-v2019.1
Summary: uio-pdrv-genirq kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Provides: kernel-module-uio-pdrv-genirq

%description -n kernel-module-uio-pdrv-genirq-4.19.0-xilinx-v2019.1
uio-pdrv-genirq kernel module; Userspace I/O platform driver with generic
IRQ handling

%package -n kernel-module-usb-f-mass-storage-4.19.0-xilinx-v2019.1
Summary: usb-f-mass-storage kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires: kernel-module-libcomposite-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-module-libcomposite-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-module-libcomposite-4.19.0-xilinx-v2019.1
Provides: kernel-module-usb-f-mass-storage

%description -n kernel-module-usb-f-mass-storage-4.19.0-xilinx-v2019.1
usb-f-mass-storage kernel module

%package -n kernel-module-usb-f-ss-lb-4.19.0-xilinx-v2019.1
Summary: usb-f-ss-lb kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires: kernel-module-libcomposite-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-module-libcomposite-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-module-libcomposite-4.19.0-xilinx-v2019.1
Provides: kernel-module-usb-f-ss-lb

%description -n kernel-module-usb-f-ss-lb-4.19.0-xilinx-v2019.1
usb-f-ss-lb kernel module

%package -n kernel-module-g-zero-4.19.0-xilinx-v2019.1
Summary: g-zero kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires: kernel-module-libcomposite-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-module-libcomposite-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-module-libcomposite-4.19.0-xilinx-v2019.1
Provides: kernel-module-g-zero

%description -n kernel-module-g-zero-4.19.0-xilinx-v2019.1
g-zero kernel module

%package -n kernel-module-libcomposite-4.19.0-xilinx-v2019.1
Summary: libcomposite kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Provides: kernel-module-libcomposite

%description -n kernel-module-libcomposite-4.19.0-xilinx-v2019.1
libcomposite kernel module

%package -n kernel-module-virtio-4.19.0-xilinx-v2019.1
Summary: virtio kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Provides: kernel-module-virtio

%description -n kernel-module-virtio-4.19.0-xilinx-v2019.1
virtio kernel module

%package -n kernel-module-virtio-ring-4.19.0-xilinx-v2019.1
Summary: virtio-ring kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Provides: kernel-module-virtio-ring

%description -n kernel-module-virtio-ring-4.19.0-xilinx-v2019.1
virtio-ring kernel module

%package -n kernel-module-p8022-4.19.0-xilinx-v2019.1
Summary: p8022 kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires: kernel-module-llc-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-module-llc-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-module-llc-4.19.0-xilinx-v2019.1
Provides: kernel-module-p8022

%description -n kernel-module-p8022-4.19.0-xilinx-v2019.1
p8022 kernel module

%package -n kernel-module-psnap-4.19.0-xilinx-v2019.1
Summary: psnap kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires: kernel-module-llc-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-module-llc-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-module-llc-4.19.0-xilinx-v2019.1
Provides: kernel-module-psnap

%description -n kernel-module-psnap-4.19.0-xilinx-v2019.1
psnap kernel module

%package -n kernel-module-stp-4.19.0-xilinx-v2019.1
Summary: stp kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires: kernel-module-llc-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-module-llc-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-module-llc-4.19.0-xilinx-v2019.1
Provides: kernel-module-stp

%description -n kernel-module-stp-4.19.0-xilinx-v2019.1
stp kernel module

%package -n kernel-module-8021q-4.19.0-xilinx-v2019.1
Summary: 8021q kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Provides: kernel-module-8021q

%description -n kernel-module-8021q-4.19.0-xilinx-v2019.1
8021q kernel module

%package -n kernel-module-bridge-4.19.0-xilinx-v2019.1
Summary: bridge kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires: kernel-module-llc-4.19.0-xilinx-v2019.1
Requires: kernel-module-stp-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-module-llc-4.19.0-xilinx-v2019.1
Requires(post): kernel-module-stp-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-module-llc-4.19.0-xilinx-v2019.1
Requires(postun): kernel-module-stp-4.19.0-xilinx-v2019.1
Provides: kernel-module-bridge

%description -n kernel-module-bridge-4.19.0-xilinx-v2019.1
bridge kernel module

%package -n kernel-module-ipip-4.19.0-xilinx-v2019.1
Summary: ipip kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Provides: kernel-module-ipip

%description -n kernel-module-ipip-4.19.0-xilinx-v2019.1
ipip kernel module

%package -n kernel-module-llc-4.19.0-xilinx-v2019.1
Summary: llc kernel module
License: GPLv2
Group: kernel
Requires: kernel-4.19.0-xilinx-v2019.1
Requires(post): kernel-4.19.0-xilinx-v2019.1
Requires(postun): kernel-4.19.0-xilinx-v2019.1
Provides: kernel-module-llc

%description -n kernel-module-llc-4.19.0-xilinx-v2019.1
llc kernel module; LLC IEEE 802.2 core support

%post -n kernel-4.19.0-xilinx-v2019.1
# kernel-4.19.0-xilinx-v2019.1 - postinst
set -e
	if [ ! -e "$D/lib/modules/4.19.0-xilinx-v2019.1" ]; then
		mkdir -p $D/lib/modules/4.19.0-xilinx-v2019.1
	fi
	if [ -n "$D" ]; then
		depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
	else
		depmod -a 4.19.0-xilinx-v2019.1
	fi


%post -n kernel-module-crypto-engine-4.19.0-xilinx-v2019.1
# kernel-module-crypto-engine-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-crypto-engine-4.19.0-xilinx-v2019.1
# kernel-module-crypto-engine-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-drbg-4.19.0-xilinx-v2019.1
# kernel-module-drbg-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-drbg-4.19.0-xilinx-v2019.1
# kernel-module-drbg-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-echainiv-4.19.0-xilinx-v2019.1
# kernel-module-echainiv-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-echainiv-4.19.0-xilinx-v2019.1
# kernel-module-echainiv-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-hmac-4.19.0-xilinx-v2019.1
# kernel-module-hmac-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-hmac-4.19.0-xilinx-v2019.1
# kernel-module-hmac-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-jitterentropy-rng-4.19.0-xilinx-v2019.1
# kernel-module-jitterentropy-rng-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-jitterentropy-rng-4.19.0-xilinx-v2019.1
# kernel-module-jitterentropy-rng-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-sha256-generic-4.19.0-xilinx-v2019.1
# kernel-module-sha256-generic-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-sha256-generic-4.19.0-xilinx-v2019.1
# kernel-module-sha256-generic-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-virtio-crypto-4.19.0-xilinx-v2019.1
# kernel-module-virtio-crypto-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-virtio-crypto-4.19.0-xilinx-v2019.1
# kernel-module-virtio-crypto-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-remoteproc-4.19.0-xilinx-v2019.1
# kernel-module-remoteproc-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-remoteproc-4.19.0-xilinx-v2019.1
# kernel-module-remoteproc-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-zynq-remoteproc-4.19.0-xilinx-v2019.1
# kernel-module-zynq-remoteproc-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-zynq-remoteproc-4.19.0-xilinx-v2019.1
# kernel-module-zynq-remoteproc-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-rpmsg-char-4.19.0-xilinx-v2019.1
# kernel-module-rpmsg-char-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-rpmsg-char-4.19.0-xilinx-v2019.1
# kernel-module-rpmsg-char-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-rpmsg-core-4.19.0-xilinx-v2019.1
# kernel-module-rpmsg-core-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-rpmsg-core-4.19.0-xilinx-v2019.1
# kernel-module-rpmsg-core-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-virtio-rpmsg-bus-4.19.0-xilinx-v2019.1
# kernel-module-virtio-rpmsg-bus-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-virtio-rpmsg-bus-4.19.0-xilinx-v2019.1
# kernel-module-virtio-rpmsg-bus-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-uio-pdrv-genirq-4.19.0-xilinx-v2019.1
# kernel-module-uio-pdrv-genirq-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-uio-pdrv-genirq-4.19.0-xilinx-v2019.1
# kernel-module-uio-pdrv-genirq-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-usb-f-mass-storage-4.19.0-xilinx-v2019.1
# kernel-module-usb-f-mass-storage-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-usb-f-mass-storage-4.19.0-xilinx-v2019.1
# kernel-module-usb-f-mass-storage-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-usb-f-ss-lb-4.19.0-xilinx-v2019.1
# kernel-module-usb-f-ss-lb-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-usb-f-ss-lb-4.19.0-xilinx-v2019.1
# kernel-module-usb-f-ss-lb-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-g-zero-4.19.0-xilinx-v2019.1
# kernel-module-g-zero-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-g-zero-4.19.0-xilinx-v2019.1
# kernel-module-g-zero-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-libcomposite-4.19.0-xilinx-v2019.1
# kernel-module-libcomposite-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-libcomposite-4.19.0-xilinx-v2019.1
# kernel-module-libcomposite-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-virtio-4.19.0-xilinx-v2019.1
# kernel-module-virtio-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-virtio-4.19.0-xilinx-v2019.1
# kernel-module-virtio-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-virtio-ring-4.19.0-xilinx-v2019.1
# kernel-module-virtio-ring-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-virtio-ring-4.19.0-xilinx-v2019.1
# kernel-module-virtio-ring-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-p8022-4.19.0-xilinx-v2019.1
# kernel-module-p8022-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-p8022-4.19.0-xilinx-v2019.1
# kernel-module-p8022-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-psnap-4.19.0-xilinx-v2019.1
# kernel-module-psnap-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-psnap-4.19.0-xilinx-v2019.1
# kernel-module-psnap-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-stp-4.19.0-xilinx-v2019.1
# kernel-module-stp-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-stp-4.19.0-xilinx-v2019.1
# kernel-module-stp-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-8021q-4.19.0-xilinx-v2019.1
# kernel-module-8021q-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-8021q-4.19.0-xilinx-v2019.1
# kernel-module-8021q-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-bridge-4.19.0-xilinx-v2019.1
# kernel-module-bridge-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-bridge-4.19.0-xilinx-v2019.1
# kernel-module-bridge-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-ipip-4.19.0-xilinx-v2019.1
# kernel-module-ipip-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-ipip-4.19.0-xilinx-v2019.1
# kernel-module-ipip-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%post -n kernel-module-llc-4.19.0-xilinx-v2019.1
# kernel-module-llc-4.19.0-xilinx-v2019.1 - postinst
#!/bin/sh
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	# image.bbclass will call depmodwrapper after everything is installed,
	# no need to do it here as well
	:
fi



%postun -n kernel-module-llc-4.19.0-xilinx-v2019.1
# kernel-module-llc-4.19.0-xilinx-v2019.1 - postrm
#!/bin/sh
if [ "$1" = "0" ] ; then
set -e
if [ -z "$D" ]; then
	depmod -a 4.19.0-xilinx-v2019.1
else
	depmodwrapper -a -b $D 4.19.0-xilinx-v2019.1
fi
fi

%files -n linux-xlnx-lic
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/licenses"
%dir "/usr/share/licenses/linux-xlnx"
"/usr/share/licenses/linux-xlnx/generic_GPLv2"
"/usr/share/licenses/linux-xlnx/COPYING"

%files -n kernel
%defattr(-,-,-,-)

%files -n kernel-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
"/lib/modules/4.19.0-xilinx-v2019.1/modules.order"
"/lib/modules/4.19.0-xilinx-v2019.1/modules.builtin"

%files -n kernel-vmlinux
%defattr(-,-,-,-)
%dir "/boot"
"/boot/vmlinux-4.19.0-xilinx-v2019.1"

%files -n kernel-image-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)

%files -n kernel-dev
%defattr(-,-,-,-)
%dir "/boot"
"/boot/System.map-4.19.0-xilinx-v2019.1"
"/boot/Module.symvers-4.19.0-xilinx-v2019.1"
"/boot/config-4.19.0-xilinx-v2019.1"

%files -n kernel-modules
%defattr(-,-,-,-)

%files -n kernel-image-uimage-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/boot"
"/boot/uImage-4.19.0-xilinx-v2019.1"
"/boot/uImage"

%files -n kernel-image-fitimage-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/boot"
"/boot/fitImage-4.19.0-xilinx-v2019.1"
"/boot/fitImage"

%files -n kernel-image-vmlinux-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/boot"
"/boot/vmlinux"

%files -n kernel-image-zimage-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/boot"
"/boot/zImage"
"/boot/zImage-4.19.0-xilinx-v2019.1"

%files -n kernel-module-crypto-engine-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/crypto"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/crypto/crypto_engine.ko"

%files -n kernel-module-drbg-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/crypto"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/crypto/drbg.ko"

%files -n kernel-module-echainiv-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/crypto"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/crypto/echainiv.ko"

%files -n kernel-module-hmac-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/crypto"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/crypto/hmac.ko"

%files -n kernel-module-jitterentropy-rng-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/crypto"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/crypto/jitterentropy_rng.ko"

%files -n kernel-module-sha256-generic-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/crypto"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/crypto/sha256_generic.ko"

%files -n kernel-module-virtio-crypto-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/crypto"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/crypto/virtio"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/crypto/virtio/virtio_crypto.ko"

%files -n kernel-module-remoteproc-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/remoteproc"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/remoteproc/remoteproc.ko"

%files -n kernel-module-zynq-remoteproc-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/remoteproc"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/remoteproc/zynq_remoteproc.ko"

%files -n kernel-module-rpmsg-char-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/rpmsg"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/rpmsg/rpmsg_char.ko"

%files -n kernel-module-rpmsg-core-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/rpmsg"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/rpmsg/rpmsg_core.ko"

%files -n kernel-module-virtio-rpmsg-bus-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/rpmsg"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/rpmsg/virtio_rpmsg_bus.ko"

%files -n kernel-module-uio-pdrv-genirq-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/uio"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/uio/uio_pdrv_genirq.ko"

%files -n kernel-module-usb-f-mass-storage-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/usb"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/usb/gadget"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/usb/gadget/function"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/usb/gadget/function/usb_f_mass_storage.ko"

%files -n kernel-module-usb-f-ss-lb-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/usb"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/usb/gadget"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/usb/gadget/function"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/usb/gadget/function/usb_f_ss_lb.ko"

%files -n kernel-module-g-zero-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/usb"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/usb/gadget"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/usb/gadget/legacy"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/usb/gadget/legacy/g_zero.ko"

%files -n kernel-module-libcomposite-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/usb"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/usb/gadget"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/usb/gadget/libcomposite.ko"

%files -n kernel-module-virtio-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/virtio"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/virtio/virtio.ko"

%files -n kernel-module-virtio-ring-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/virtio"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/drivers/virtio/virtio_ring.ko"

%files -n kernel-module-p8022-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/net"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/net/802"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/net/802/p8022.ko"

%files -n kernel-module-psnap-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/net"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/net/802"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/net/802/psnap.ko"

%files -n kernel-module-stp-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/net"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/net/802"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/net/802/stp.ko"

%files -n kernel-module-8021q-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/net"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/net/8021q"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/net/8021q/8021q.ko"

%files -n kernel-module-bridge-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/net"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/net/bridge"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/net/bridge/bridge.ko"

%files -n kernel-module-ipip-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/net"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/net/ipv4"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/net/ipv4/ipip.ko"

%files -n kernel-module-llc-4.19.0-xilinx-v2019.1
%defattr(-,-,-,-)
%dir "/lib"
%dir "/lib/modules"
%dir "/lib/modules/4.19.0-xilinx-v2019.1"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/net"
%dir "/lib/modules/4.19.0-xilinx-v2019.1/kernel/net/llc"
"/lib/modules/4.19.0-xilinx-v2019.1/kernel/net/llc/llc.ko"

