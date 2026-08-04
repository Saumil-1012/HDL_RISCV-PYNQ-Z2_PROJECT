// (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:riscv_bram_wrapper:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module axi_bram_bd_riscv_bram_wrapper_0_0 (
  clk,
  system_resetn,
  run,
  imem_enb,
  imem_web,
  imem_addrb,
  imem_dinb,
  imem_doutb,
  dmem_enb,
  dmem_web,
  dmem_addrb,
  dmem_dinb,
  dmem_doutb
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN axi_bram_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME system_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 system_resetn RST" *)
input wire system_resetn;
input wire run;
output wire imem_enb;
output wire [3 : 0] imem_web;
output wire [31 : 0] imem_addrb;
output wire [31 : 0] imem_dinb;
input wire [31 : 0] imem_doutb;
output wire dmem_enb;
output wire [3 : 0] dmem_web;
output wire [31 : 0] dmem_addrb;
output wire [31 : 0] dmem_dinb;
input wire [31 : 0] dmem_doutb;

  riscv_bram_wrapper inst (
    .clk(clk),
    .system_resetn(system_resetn),
    .run(run),
    .imem_enb(imem_enb),
    .imem_web(imem_web),
    .imem_addrb(imem_addrb),
    .imem_dinb(imem_dinb),
    .imem_doutb(imem_doutb),
    .dmem_enb(dmem_enb),
    .dmem_web(dmem_web),
    .dmem_addrb(dmem_addrb),
    .dmem_dinb(dmem_dinb),
    .dmem_doutb(dmem_doutb)
  );
endmodule
