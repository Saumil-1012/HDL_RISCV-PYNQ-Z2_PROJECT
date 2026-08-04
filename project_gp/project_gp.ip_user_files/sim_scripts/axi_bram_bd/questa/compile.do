vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_11
vlib questa_lib/msim/processing_system7_vip_v1_0_13
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/axi_bram_ctrl_v4_1_6
vlib questa_lib/msim/blk_mem_gen_v8_4_5
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_register_slice_v2_1_25
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_27
vlib questa_lib/msim/jtag_axi

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_11 questa_lib/msim/axi_vip_v1_1_11
vmap processing_system7_vip_v1_0_13 questa_lib/msim/processing_system7_vip_v1_0_13
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap axi_bram_ctrl_v4_1_6 questa_lib/msim/axi_bram_ctrl_v4_1_6
vmap blk_mem_gen_v8_4_5 questa_lib/msim/blk_mem_gen_v8_4_5
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_25 questa_lib/msim/axi_register_slice_v2_1_25
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_27 questa_lib/msim/axi_gpio_v2_0_27
vmap jtag_axi questa_lib/msim/jtag_axi

vlog -work xilinx_vip  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"D:/saumilHDLSoftwre/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/saumilHDLSoftwre/Vivado/2021.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/saumilHDLSoftwre/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"D:/saumilHDLSoftwre/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_11  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_13  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_processing_system7_0_0/sim/axi_bram_bd_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_proc_sys_reset_0_0/sim/axi_bram_bd_proc_sys_reset_0_0.vhd" \

vcom -work axi_bram_ctrl_v4_1_6  -93 \
"../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3c31/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_bram_ctrl_0_0/sim/axi_bram_bd_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_5  -incr -mfcu "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_blk_mem_gen_0_0/sim/axi_bram_bd_blk_mem_gen_0_0.v" \

vlog -work xlconstant_v1_1_7  -incr -mfcu "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_0/sim/bd_94a3_one_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_1/sim/bd_94a3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_2/sim/bd_94a3_arsw_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_3/sim/bd_94a3_rsw_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_4/sim/bd_94a3_awsw_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_5/sim/bd_94a3_wsw_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_6/sim/bd_94a3_bsw_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_7/sim/bd_94a3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_8/sim/bd_94a3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_9/sim/bd_94a3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_10/sim/bd_94a3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_11/sim/bd_94a3_sarn_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_12/sim/bd_94a3_srn_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_13/sim/bd_94a3_sawn_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_14/sim/bd_94a3_swn_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_15/sim/bd_94a3_sbn_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_16/sim/bd_94a3_s01mmu_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_17/sim/bd_94a3_s01tr_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_18/sim/bd_94a3_s01sic_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_19/sim/bd_94a3_s01a2s_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_20/sim/bd_94a3_sarn_1.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_21/sim/bd_94a3_srn_1.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_22/sim/bd_94a3_sawn_1.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_23/sim/bd_94a3_swn_1.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_24/sim/bd_94a3_sbn_1.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_25/sim/bd_94a3_m00s2a_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_26/sim/bd_94a3_m00arn_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_27/sim/bd_94a3_m00rn_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_28/sim/bd_94a3_m00awn_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_29/sim/bd_94a3_m00wn_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_30/sim/bd_94a3_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/93a6/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_31/sim/bd_94a3_m00e_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_32/sim/bd_94a3_m01s2a_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_33/sim/bd_94a3_m01arn_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_34/sim/bd_94a3_m01rn_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_35/sim/bd_94a3_m01awn_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_36/sim/bd_94a3_m01wn_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_37/sim/bd_94a3_m01bn_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_38/sim/bd_94a3_m01e_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_39/sim/bd_94a3_m02s2a_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_40/sim/bd_94a3_m02arn_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_41/sim/bd_94a3_m02rn_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_42/sim/bd_94a3_m02awn_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_43/sim/bd_94a3_m02wn_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_44/sim/bd_94a3_m02bn_0.sv" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/ip/ip_45/sim/bd_94a3_m02e_0.sv" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/bd_0/sim/bd_94a3.v" \

vlog -work axi_register_slice_v2_1_25  -incr -mfcu "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_smc_0/sim/axi_bram_bd_axi_smc_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4  -93 \
"../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_27  -93 \
"../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/a5bb/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_gpio_0_0/sim/axi_bram_bd_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_riscv_bram_wrapper_0_0/sim/axi_bram_bd_riscv_bram_wrapper_0_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_axi_bram_ctrl_0_1/sim/axi_bram_bd_axi_bram_ctrl_0_1.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_blk_mem_gen_0_1/sim/axi_bram_bd_blk_mem_gen_0_1.v" \
"../../../bd/axi_bram_bd/sim/axi_bram_bd.v" \

vlog -work jtag_axi  -incr -mfcu "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/de86/hdl/jtag_axi_v1_2_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/ec67/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/3007/hdl" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/66be/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_3.gen/sources_1/bd/axi_bram_bd/ipshared/122e/hdl/verilog" "+incdir+D:/saumilHDLSoftwre/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/axi_bram_bd/ip/axi_bram_bd_jtag_axi_0_0/sim/axi_bram_bd_jtag_axi_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

