#!/bin/sh

prefix=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native/usr
exec_prefix=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native/usr
bindir=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native/usr/bin
libexecpath=/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/linux-xlnx/4.19-xilinx-v2019.1+gitAUTOINC+9811303824-r0/recipe-sysroot-native/usr/libexec/mtd-utils
TESTBINDIR=$libexecpath

echo -------------------------------------------------------------------------------
$TESTBINDIR/test_1 -h
echo -------------------------------------------------------------------------------
$TESTBINDIR/test_2 -h
echo -------------------------------------------------------------------------------
$TESTBINDIR/stress_1 -h
echo -------------------------------------------------------------------------------
$TESTBINDIR/stress_2 -h
echo -------------------------------------------------------------------------------
$TESTBINDIR/stress_3 -h
echo -------------------------------------------------------------------------------
$TESTBINDIR/fwrite00 -h
echo -------------------------------------------------------------------------------
$TESTBINDIR/gcd_hupper -h
echo -------------------------------------------------------------------------------
$TESTBINDIR/pdfrun -h
echo -------------------------------------------------------------------------------
$TESTBINDIR/rmdir00 -h
echo -------------------------------------------------------------------------------
$TESTBINDIR/rndrm00 -h
echo -------------------------------------------------------------------------------
$TESTBINDIR/rndwrite00 -h
echo -------------------------------------------------------------------------------
$TESTBINDIR/integck -h
echo -------------------------------------------------------------------------------
