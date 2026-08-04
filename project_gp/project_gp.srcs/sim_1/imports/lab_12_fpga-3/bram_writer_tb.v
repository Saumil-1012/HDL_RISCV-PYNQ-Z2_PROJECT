`timescale 1ns/1ps

module tb_bram_seq_writer_wave_mon;

  // Small MAX_VALUE so students can follow the printout & waveform
  localparam integer ADDR_WIDTH = 32;
  localparam integer MAX_VALUE  = 31;   // writes 0..31 (32 words)
  localparam integer MEM_WORDS  = 64;

  reg                    clk;
  reg                    rst_n;
  reg                    run;
  wire                   busy;
  wire                   done;

  wire                   bram_enb;
  wire [3:0]             bram_web;
  wire [ADDR_WIDTH-1:0]  bram_addrb;
  wire [31:0]            bram_dinb;
  reg  [31:0]            bram_doutb;

  // DUT
  bram_seq_writer #(
    .ADDR_WIDTH(ADDR_WIDTH),
    .MAX_VALUE (MAX_VALUE)
  ) dut (
    .clk(clk),
    .rst_n(rst_n),
    .run(run),
    .busy(busy),
    .done(done),
    .bram_enb(bram_enb),
    .bram_web(bram_web),
    .bram_addrb(bram_addrb),
    .bram_dinb(bram_dinb),
    .bram_doutb(bram_doutb)
  );

  // -----------------------------------
  // Simple BRAM model (Port B)
  // Address is treated as BYTE address:
  // word_index = bram_addrb >> 2
  // -----------------------------------
  reg [31:0] mem [0:MEM_WORDS-1];
  integer wi;

  initial begin
    for (wi = 0; wi < MEM_WORDS; wi = wi + 1)
      mem[wi] = 32'h0000_0000;
  end

  always @(*) begin
    wi = (bram_addrb >> 2);
    if (wi >= 0 && wi < MEM_WORDS) bram_doutb = mem[wi];
    else bram_doutb = 32'hDEAD_BEEF;
  end

  always @(posedge clk) begin
    if (bram_enb && (bram_web == 4'hF)) begin
      wi = (bram_addrb >> 2);
      if (wi >= 0 && wi < MEM_WORDS)
        mem[wi] <= bram_dinb;
    end
  end

  // Probe for waveform + printing convenience
  wire [31:0] mem_at_addr = ((bram_addrb >> 2) < MEM_WORDS) ? mem[bram_addrb >> 2] : 32'hBAD0_BAD0;

  // 100 MHz clock
  initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
  end

  // -----------------------------
  // $monitor: always prints when any argument changes
  // Keep it compact: time, run/busy/done, addr, din, word_index
  // -----------------------------
  initial begin
    $monitor("t=%0t ns | run=%b busy=%b done=%b | enb=%b web=%h | addrb=%h (word=%0d) din=%h | mem_at_addr=%h",
             $time, run, busy, done, bram_enb, bram_web, bram_addrb, (bram_addrb >> 2), bram_dinb, mem_at_addr);
  end

  // -----------------------------
  // $display: print ONLY on actual writes (much easier to read)
  // Shows: byte address, word index, data written, and memory after write (next cycle)
  // -----------------------------
  always @(posedge clk) begin
    if (bram_enb && (bram_web == 4'hF)) begin
      $display("WRITE @t=%0t ns : addrb=%h (word=%0d) <= din=%h",
               $time, bram_addrb, (bram_addrb >> 2), bram_dinb);
    end
  end

  // -----------------------------
  // Simple stimulus
  // -----------------------------
  initial begin
    // For waveform generation (Vivado xsim will still show WDB)
    $dumpfile("tb_bram_seq_writer_wave_mon.vcd");
    $dumpvars(0, tb_bram_seq_writer_wave_mon);

    rst_n = 0;
    run   = 0;
    repeat (5) @(posedge clk);

    rst_n = 1;
    repeat (2) @(posedge clk);

    $display("\n=== Clean run: expect writes to addrb 0x0,0x4,0x8,... and din 0,1,2,... ===");
    run = 1;
    wait(done == 1);
    @(posedge clk);
    run = 0;
    repeat (4) @(posedge clk);

    $display("\n=== Partial run (10 cycles), then stop ===");
    run = 1;
    repeat (10) @(posedge clk);
    run = 0;
    repeat (4) @(posedge clk);

    $display("\n=== Restart run: should restart from 0 again (because run was low) ===");
    run = 1;
    wait(done == 1);
    @(posedge clk);
    run = 0;

    repeat (10) @(posedge clk);

    // Optional: print a small memory dump so students see final contents
    $display("\n=== Memory dump (first 16 words) ===");
    for (wi = 0; wi < 16; wi = wi + 1)
      $display("mem[%0d] = %h", wi, mem[wi]);

    $finish;
  end

endmodule
