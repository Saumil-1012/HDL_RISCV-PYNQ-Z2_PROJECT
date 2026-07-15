`timescale 1ns/1ps
`include "mc_h.v"

module tb;
  reg clk;
  reg rst_n;

  integer cycle_count;
  integer retired;

  initial begin
    retired = 0;
  end

  // Valid instruction completed (Writes to RF or Memory)
  wire WB_valid =
       (dut.W_rf_we && dut.W_rd != 5'd0) ||  
       dut.M_we_mem;                         

  // Instantiate the updated processor
  mc_h dut (
      .clk(clk),
      .rst_n(rst_n)
  );

  always #5 clk = ~clk;

  initial begin
    $dumpfile("pipeline_wave.vcd"); 
    $dumpvars(0, tb);               

    clk = 0;
    rst_n = 0;
    cycle_count = 0;

    // Fixed the filename to match your provided hex file
    $readmemh("program.hex", dut.IMEM.RAM);
    
    dut.DMEM.RAM[0] = 32'd0;

    #20;
    rst_n = 1;
  end

  always @(posedge clk) begin
    if (rst_n) cycle_count <= cycle_count + 1;
  end

  always @(posedge clk) begin
    if (rst_n) begin
      if (WB_valid) retired <= retired + 1;
    end
  end

  always @(posedge clk) begin
    // Stop when result is stored to DMEM[0], or timeout
    if (rst_n && dut.DMEM.RAM[0] != 32'd0) begin
      $display("========================================");
      $display("Fibonacci loop result:");
      $display("x6 = %0d", dut.REGFILE.REG[6]);
      $display("DMEM[0] = %0d (expect 6765)", dut.DMEM.RAM[0]);
      $display("DMEM[1] = %0d (expect 6765)", dut.DMEM.RAM[1]);
      $display("DMEM[2] = %0d (expect 6765)", dut.DMEM.RAM[2]);
      $display("DMEM[3] = %0d (expect 6765)", dut.DMEM.RAM[3]);
      $display("DMEM[4] = %0d (expect 6765)", dut.DMEM.RAM[4]);
      $display("DMEM[5] = %0d (expect 6765)", dut.DMEM.RAM[5]);
      $display("DMEM[6] = %0d (expect 6765)", dut.DMEM.RAM[6]);
      $display("DMEM[7] = %0d (expect 6765)", dut.DMEM.RAM[7]);
      $display("DMEM[8] = %0d (expect 6765)", dut.DMEM.RAM[8]);
      $display("cycles = %0d", cycle_count);
      $display("retired = %0d", retired);
      $display("CPI = %f", cycle_count * 1.0 / retired);
      $display("========================================");
      $finish;
    end

    if (cycle_count > 2000) begin
      $display("========================================");
      $display("TIMEOUT - 2000 Cycles Reached");
      $display("x6 = %0d", dut.REGFILE.REG[6]);
      $display("DMEM[0] = %0d", dut.DMEM.RAM[0]);
      $display("DMEM[1] = %0d", dut.DMEM.RAM[1]);
      $display("DMEM[2] = %0d", dut.DMEM.RAM[2]);
      $display("DMEM[3] = %0d", dut.DMEM.RAM[3]);
      $display("DMEM[4] = %0d", dut.DMEM.RAM[4]);
      $display("DMEM[5] = %0d", dut.DMEM.RAM[5]);
      $display("DMEM[6] = %0d", dut.DMEM.RAM[6]);
      $display("DMEM[7] = %0d", dut.DMEM.RAM[7]);
      $display("========================================");
      $finish;
    end
  end
endmodule