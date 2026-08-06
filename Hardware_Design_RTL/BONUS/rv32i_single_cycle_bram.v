// SPDX-License-Identifier: MIT
// Reference RV32I single-cycle core for the pipeline comparison bonus.
//
// The interface is byte addressed and connects directly to Port B of the two
// AXI BRAMs.  It intentionally uses the same ISA subset, reset/run protocol,
// data address map and hardware counters as the pipelined implementation.

module rv32i_single_cycle_bram (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        run,
    output wire        imem_enb,
    output wire [3:0]  imem_web,
    output wire [31:0] imem_addrb,
    output wire [31:0] imem_dinb,
    input  wire [31:0] imem_doutb,
    output wire        dmem_enb,
    output wire [3:0]  dmem_web,
    output wire [31:0] dmem_addrb,
    output wire [31:0] dmem_dinb,
    input  wire [31:0] dmem_doutb
);
    localparam [31:0] CSR_CYCLE   = 32'hC00;
    localparam [31:0] CSR_INSTRET = 32'hC02;

    reg [31:0] pc;
    reg [31:0] x [0:31];
    reg [63:0] cycle_count, instret_count;
    reg [63:0] load_count, store_count, branch_count, branch_taken_count;
    integer i;

    wire [31:0] insn = imem_doutb;
    wire [6:0] opcode = insn[6:0];
    wire [2:0] funct3 = insn[14:12];
    wire [6:0] funct7 = insn[31:25];
    wire [4:0] rs1 = insn[19:15], rs2 = insn[24:20], rd = insn[11:7];
    wire [31:0] a = (rs1 == 0) ? 0 : x[rs1];
    wire [31:0] b = (rs2 == 0) ? 0 : x[rs2];
    wire [31:0] imm_i = {{20{insn[31]}}, insn[31:20]};
    wire [31:0] imm_s = {{20{insn[31]}}, insn[31:25], insn[11:7]};
    wire [31:0] imm_b = {{19{insn[31]}}, insn[31], insn[7], insn[30:25], insn[11:8], 1'b0};
    wire [31:0] imm_u = {insn[31:12], 12'b0};
    wire [31:0] imm_j = {{11{insn[31]}}, insn[31], insn[19:12], insn[20], insn[30:21], 1'b0};

    reg [31:0] alu_y, wb_data, next_pc;
    reg        reg_we, mem_we, mem_re, retire, is_branch, taken;
    reg [31:0] mem_addr, mem_wdata;

    assign imem_enb   = run;
    assign imem_web   = 4'b0000;
    assign imem_addrb = pc;
    assign imem_dinb  = 32'b0;
    assign dmem_enb   = run && (mem_re || mem_we);
    assign dmem_web   = mem_we ? 4'hF : 4'h0;
    assign dmem_addrb = mem_addr;
    assign dmem_dinb  = mem_wdata;

    always @* begin
        alu_y = 0; wb_data = 0; next_pc = pc + 4;
        reg_we = 0; mem_we = 0; mem_re = 0; retire = 0;
        is_branch = 0; taken = 0; mem_addr = 0; mem_wdata = b;
        case (opcode)
          7'b0110011: begin // register ALU
            retire = 1; reg_we = 1;
            case (funct3)
              3'b000: alu_y = funct7[5] ? a-b : a+b;
              3'b001: alu_y = a << b[4:0];
              3'b010: alu_y = ($signed(a) < $signed(b));
              3'b011: alu_y = (a < b);
              3'b100: alu_y = a ^ b;
              3'b101: alu_y = funct7[5] ? ($signed(a) >>> b[4:0]) : (a >> b[4:0]);
              3'b110: alu_y = a | b;
              3'b111: alu_y = a & b;
            endcase
            wb_data = alu_y;
          end
          7'b0010011: begin // immediate ALU
            retire = 1; reg_we = 1;
            case (funct3)
              3'b000: alu_y = a + imm_i;
              3'b010: alu_y = ($signed(a) < $signed(imm_i));
              3'b011: alu_y = (a < imm_i);
              3'b100: alu_y = a ^ imm_i;
              3'b110: alu_y = a | imm_i;
              3'b111: alu_y = a & imm_i;
              3'b001: alu_y = a << insn[24:20];
              3'b101: alu_y = insn[30] ? ($signed(a) >>> insn[24:20]) : (a >> insn[24:20]);
            endcase
            wb_data = alu_y;
          end
          7'b0000011: begin // lw
            retire = 1; reg_we = 1; mem_re = 1; mem_addr = a + imm_i; wb_data = dmem_doutb;
          end
          7'b0100011: begin // sw
            retire = 1; mem_we = 1; mem_addr = a + imm_s;
          end
          7'b1100011: begin
            retire = 1; is_branch = 1;
            case (funct3)
              3'b000: taken = (a == b);       // beq
              3'b001: taken = (a != b);       // bne
              3'b100: taken = ($signed(a) < $signed(b));
              3'b101: taken = ($signed(a) >= $signed(b));
              3'b110: taken = (a < b);
              3'b111: taken = (a >= b);
            endcase
            if (taken) next_pc = pc + imm_b;
          end
          7'b1101111: begin retire = 1; reg_we = 1; wb_data = pc + 4; next_pc = pc + imm_j; end // jal
          7'b0110111: begin retire = 1; reg_we = 1; wb_data = imm_u; end // lui
          7'b0010111: begin retire = 1; reg_we = 1; wb_data = pc + imm_u; end // auipc
          7'b1110011: begin // rdcycle / rdinstret (CSRRS xrd, csr, x0)
            if (funct3 == 3'b010 && rs1 == 0 && (insn[31:20] == CSR_CYCLE || insn[31:20] == CSR_INSTRET)) begin
              retire = 1; reg_we = 1;
              wb_data = (insn[31:20] == CSR_CYCLE) ? cycle_count[31:0] : instret_count[31:0];
            end
          end
          default: ; // unsupported encodings act as NOPs and do not retire
        endcase
    end

    always @(posedge clk or negedge rst_n) begin
      if (!rst_n || !run) begin
        pc <= 0; cycle_count <= 0; instret_count <= 0;
        load_count <= 0; store_count <= 0; branch_count <= 0; branch_taken_count <= 0;
        for (i=0; i<32; i=i+1) x[i] <= 0;
      end else begin
        pc <= next_pc;
        cycle_count <= cycle_count + 1;
        if (retire) instret_count <= instret_count + 1;
        if (mem_re) load_count <= load_count + 1;
        if (mem_we) store_count <= store_count + 1;
        if (is_branch) branch_count <= branch_count + 1;
        if (taken) branch_taken_count <= branch_taken_count + 1;
        if (reg_we && rd != 0) x[rd] <= wb_data;
        x[0] <= 0;
      end
    end
endmodule
