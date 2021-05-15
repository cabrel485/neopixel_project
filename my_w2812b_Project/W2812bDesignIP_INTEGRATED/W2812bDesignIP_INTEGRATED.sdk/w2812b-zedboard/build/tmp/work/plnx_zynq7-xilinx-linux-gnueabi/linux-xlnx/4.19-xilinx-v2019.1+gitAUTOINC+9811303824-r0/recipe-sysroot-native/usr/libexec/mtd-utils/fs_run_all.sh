#!/bin/sh

prefix=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native/usr
exec_prefix=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native/usr
bindir=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native/usr/bin
libexecpath=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native/usr/libexec/mtd-utils
TESTBINDIR=$libexecpath

TEST_DIR=$TEST_FILE_SYSTEM_MOUNT_DIR
if test -z "$TEST_DIR";
then
	TEST_DIR="/mnt/test_file_system"
fi

rm -rf ${TEST_DIR}/*

$TESTBINDIR/test_1 || exit 1

rm -rf ${TEST_DIR}/*

$TESTBINDIR/test_2 || exit 1

rm -rf ${TEST_DIR}/*

$TESTBINDIR/integck $TEST_DIR || exit 1

rm -rf ${TEST_DIR}/*

$TESTBINDIR/rndrm00 -z0 || exit 1

rm -rf ${TEST_DIR}/*

$TESTBINDIR/rmdir00 -z0 || exit 1

rm -rf ${TEST_DIR}/*

$TESTBINDIR/stress_1 -z10000000 -e || exit 1

rm -rf ${TEST_DIR}/*

$TESTBINDIR/stress_2 -z10000000 || exit 1

rm -rf ${TEST_DIR}/*

$TESTBINDIR/stress_3 -z1000000000 -e || exit 1

rm -rf ${TEST_DIR}/*

$TESTBINDIR/fs_stress00.sh 360 || exit 1

$TESTBINDIR/fs_stress01.sh 360 || exit 1
