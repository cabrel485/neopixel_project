#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/wilson/Xilinx/SDK/2019.1/bin:/home/wilson/Xilinx/Vivado/2019.1/ids_lite/ISE/bin/lin64:/home/wilson/Xilinx/Vivado/2019.1/bin
else
  PATH=/home/wilson/Xilinx/SDK/2019.1/bin:/home/wilson/Xilinx/Vivado/2019.1/ids_lite/ISE/bin/lin64:/home/wilson/Xilinx/Vivado/2019.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/wilson/Documents/Project/my_w2812b_Project/W2812b_HW_Design/W2812b_HW_Design.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log WS2812_controller.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source WS2812_controller.tcl
