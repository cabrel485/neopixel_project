-makelib xcelium_lib/xilinx_vip -sv \
  "/home/wilson/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/home/wilson/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/home/wilson/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/home/wilson/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/home/wilson/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/home/wilson/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/home/wilson/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/home/wilson/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/home/wilson/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "/home/wilson/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/home/wilson/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/home/wilson/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../W2812bDesignIP_INTEGRATED.srcs/sources_1/bd/W2812b_design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_5 -sv \
  "../../../../W2812bDesignIP_INTEGRATED.srcs/sources_1/bd/W2812b_design_1/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../W2812bDesignIP_INTEGRATED.srcs/sources_1/bd/W2812b_design_1/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/W2812b_design_1/ip/W2812b_design_1_processing_system7_0_0/sim/W2812b_design_1_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../W2812bDesignIP_INTEGRATED.srcs/sources_1/bd/W2812b_design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../W2812bDesignIP_INTEGRATED.srcs/sources_1/bd/W2812b_design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/W2812b_design_1/ip/W2812b_design_1_rst_ps7_0_100M_0/sim/W2812b_design_1_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../W2812bDesignIP_INTEGRATED.srcs/sources_1/bd/W2812b_design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_19 \
  "../../../../W2812bDesignIP_INTEGRATED.srcs/sources_1/bd/W2812b_design_1/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../W2812bDesignIP_INTEGRATED.srcs/sources_1/bd/W2812b_design_1/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../W2812bDesignIP_INTEGRATED.srcs/sources_1/bd/W2812b_design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../W2812bDesignIP_INTEGRATED.srcs/sources_1/bd/W2812b_design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_18 \
  "../../../../W2812bDesignIP_INTEGRATED.srcs/sources_1/bd/W2812b_design_1/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_20 \
  "../../../../W2812bDesignIP_INTEGRATED.srcs/sources_1/bd/W2812b_design_1/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/W2812b_design_1/ip/W2812b_design_1_xbar_0/sim/W2812b_design_1_xbar_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../W2812bDesignIP_INTEGRATED.srcs/sources_1/bd/W2812b_design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../W2812bDesignIP_INTEGRATED.srcs/sources_1/bd/W2812b_design_1/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_21 \
  "../../../../W2812bDesignIP_INTEGRATED.srcs/sources_1/bd/W2812b_design_1/ipshared/9c6e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/W2812b_design_1/ip/W2812b_design_1_axi_gpio_0_0/sim/W2812b_design_1_axi_gpio_0_0.vhd" \
  "../../../bd/W2812b_design_1/ipshared/2f84/src/WS2812_controller.vhd" \
  "../../../bd/W2812b_design_1/ipshared/2f84/hdl/myW2812bDesignIP_v1_0_S00_AXI.vhd" \
  "../../../bd/W2812b_design_1/ipshared/2f84/hdl/myW2812bDesignIP_v1_0.vhd" \
  "../../../bd/W2812b_design_1/ip/W2812b_design_1_myW2812bDesignIP_0_1/sim/W2812b_design_1_myW2812bDesignIP_0_1.vhd" \
  "../../../bd/W2812b_design_1/ip/W2812b_design_1_myW2812bDesignIP_1_0/sim/W2812b_design_1_myW2812bDesignIP_1_0.vhd" \
  "../../../bd/W2812b_design_1/ip/W2812b_design_1_myW2812bDesignIP_2_0/sim/W2812b_design_1_myW2812bDesignIP_2_0.vhd" \
  "../../../bd/W2812b_design_1/ip/W2812b_design_1_myW2812bDesignIP_3_0/sim/W2812b_design_1_myW2812bDesignIP_3_0.vhd" \
  "../../../bd/W2812b_design_1/sim/W2812b_design_1.vhd" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_19 \
  "../../../../W2812bDesignIP_INTEGRATED.srcs/sources_1/bd/W2812b_design_1/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/W2812b_design_1/ip/W2812b_design_1_auto_pc_0/sim/W2812b_design_1_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

