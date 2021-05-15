#!/bin/sh -euf

prefix=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native/usr
exec_prefix=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native/usr
bindir=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native/usr/bin
libexecpath=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native/usr/libexec/mtd-utils
TESTBINDIR=$libexecpath

tests="mkvol_basic mkvol_bad mkvol_paral rsvol io_basic io_read io_update io_paral volrefcnt"

fatal()
{
	echo "Error: $1" 1>&2
	echo "FAILURE"
	exit 1
}

usage()
{
	cat 1>&2 <<EOF
Run all UBI tests for on an UBI device.
Usage:
  ${0##*/} <UBI device node>
Example:
  ${0##*/} /dev/ubi1 - test /dev/ubi1.
EOF
}

if [ "$#" -lt 1 ]; then
	usage
	exit 1
fi

ubidev="$1"
[ -c "$ubidev" ] || fatal "$ubidev is not character device"

for t in $tests; do
	echo "Running $t $ubidev"
	"$TESTBINDIR/$t" "$ubidev" || fatal "$t failed"
done

echo "SUCCESS"
