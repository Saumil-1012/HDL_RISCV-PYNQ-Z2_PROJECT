// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Aug  4 01:05:53 2026
// Host        : Kamal running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/vivado_tutorial/project_3/project_3.gen/sources_1/bd/axi_bram_bd/ip/axi_bram_bd_riscv_bram_wrapper_0_0/axi_bram_bd_riscv_bram_wrapper_0_0_stub.v
// Design      : axi_bram_bd_riscv_bram_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "riscv_bram_wrapper,Vivado 2021.2" *)
module axi_bram_bd_riscv_bram_wrapper_0_0(clk, system_resetn, run, imem_enb, imem_web, 
  imem_addrb, imem_dinb, imem_doutb, dmem_enb, dmem_web, dmem_addrb, dmem_dinb, dmem_doutb)
/* synthesis syn_black_box black_box_pad_pin="clk,system_resetn,run,imem_enb,imem_web[3:0],imem_addrb[31:0],imem_dinb[31:0],imem_doutb[31:0],dmem_enb,dmem_web[3:0],dmem_addrb[31:0],dmem_dinb[31:0],dmem_doutb[31:0]" */;
  input clk;
  input system_resetn;
  input run;
  output imem_enb;
  output [3:0]imem_web;
  output [31:0]imem_addrb;
  output [31:0]imem_dinb;
  input [31:0]imem_doutb;
  output dmem_enb;
  output [3:0]dmem_web;
  output [31:0]dmem_addrb;
  output [31:0]dmem_dinb;
  input [31:0]dmem_doutb;
endmodule
