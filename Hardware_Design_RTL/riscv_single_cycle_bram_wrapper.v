// Drop-in alternative for a fair implementation comparison.  Add this source
// as a second module reference in Vivado; it has exactly the same Port-B and
// GPIO run connections as riscv_bram_wrapper.
module riscv_single_cycle_bram_wrapper (
    input wire clk, input wire system_resetn, input wire run,
    output wire imem_enb, output wire [3:0] imem_web,
    output wire [31:0] imem_addrb, output wire [31:0] imem_dinb,
    input wire [31:0] imem_doutb,
    output wire dmem_enb, output wire [3:0] dmem_web,
    output wire [31:0] dmem_addrb, output wire [31:0] dmem_dinb,
    input wire [31:0] dmem_doutb
);
  reg [1:0] reset_sync;
  always @(posedge clk or negedge system_resetn)
    if (!system_resetn || !run) reset_sync <= 0;
    else reset_sync <= {reset_sync[0], 1'b1};

  rv32i_single_cycle_bram CORE (
    .clk(clk), .rst_n(reset_sync[1]), .run(run),
    .imem_enb(imem_enb), .imem_web(imem_web), .imem_addrb(imem_addrb),
    .imem_dinb(imem_dinb), .imem_doutb(imem_doutb),
    .dmem_enb(dmem_enb), .dmem_web(dmem_web), .dmem_addrb(dmem_addrb),
    .dmem_dinb(dmem_dinb), .dmem_doutb(dmem_doutb)
  );
endmodule
