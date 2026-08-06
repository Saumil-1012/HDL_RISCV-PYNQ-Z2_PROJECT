`timescale 1ns/1ps
// Smoke test for the common program image.  It uses zero-latency behavioural
// BRAMs, matching the unregistered Port-B configuration in the checked-in XCI.
// Example (where iverilog is installed):
//   iverilog -g2012 -s tb_compare_program -o compare \
//     ../mc_h.v rv32i_single_cycle_bram.v tb_compare_program.v && vvp compare
module tb_compare_program;
  reg clk = 0, rst_n = 0, run = 0;
  always #5 clk = ~clk;

  wire pie, pde, sie, sde;
  wire [3:0] piw, pdw, siw, sdw;
  wire [31:0] pia, pid, pda, pdd, sia, sid, sda, sdd;
  reg [31:0] pimem [0:63], pdmem [0:63], simem [0:63], sdmem [0:63];
  wire [31:0] pio = pimem[pia[7:2]], pdo = pdmem[pda[7:2]];
  wire [31:0] sio = simem[sia[7:2]], sdo = sdmem[sda[7:2]];
  integer i, cycles;

  mc_h #(.INTERNAL_MEMORY(0)) pipeline (
    .clk(clk), .rst_n(rst_n), .imem_enb(pie), .imem_web(piw), .imem_addrb(pia), .imem_dinb(pid), .imem_doutb(pio),
    .dmem_enb(pde), .dmem_web(pdw), .dmem_addrb(pda), .dmem_dinb(pdd), .dmem_doutb(pdo));
  rv32i_single_cycle_bram single (
    .clk(clk), .rst_n(rst_n), .run(run), .imem_enb(sie), .imem_web(siw), .imem_addrb(sia), .imem_dinb(sid), .imem_doutb(sio),
    .dmem_enb(sde), .dmem_web(sdw), .dmem_addrb(sda), .dmem_dinb(sdd), .dmem_doutb(sdo));

  always @(posedge clk) begin
    if (pde && pdw == 4'hf) pdmem[pda[7:2]] <= pdd;
    if (sde && sdw == 4'hf) sdmem[sda[7:2]] <= sdd;
    if (rst_n) cycles <= cycles + 1;
  end
  initial begin
    cycles = 0;
    for (i=0; i<64; i=i+1) begin pimem[i]=0; pdmem[i]=0; simem[i]=0; sdmem[i]=0; end
    $readmemh("../program.hex", pimem);
    $readmemh("../program.hex", simem);
    repeat (2) @(posedge clk); rst_n = 1; run = 1;
    repeat (180) @(posedge clk);
    if (pdmem[0] !== 32'd6765 || sdmem[0] !== 32'd6765) begin
      $display("FAIL: pipeline=%0d single=%0d", pdmem[0], sdmem[0]); $fatal;
    end
    $display("PASS: pipeline cycles=%0d instret=%0d; single cycles=%0d instret=%0d",
      pipeline.cycle_count, pipeline.instret_count, single.cycle_count, single.instret_count);
    $finish;
  end
endmodule
