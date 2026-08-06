// ====================================================================
//                       BASIC SUPPORTING MODULES
// ====================================================================

module pc_reg (
    input clk,
    input rst_n,
    input en,         // High = update, Low = Stall
    input [31:0] next_pc,
    output reg [31:0] pc
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) pc <= 32'h00000000;
        else if (en) pc <= next_pc;
    end
endmodule

module my_reg (
    input clk,
    input rst,
    input rf_we,
    input [4:0] rs1,
    input [4:0] rs2,
    input [4:0] rd,
    input [31:0] wd,
    output [31:0] rd1,
    output [31:0] rd2
);
    reg [31:0] REG [0:31]; 
    integer i;

    // Read ports combinational
    assign rd1 = (rs1 == 5'b0) ? 32'b0 : REG[rs1];
    assign rd2 = (rs2 == 5'b0) ? 32'b0 : REG[rs2];

    // Write port triggered on NEGATIVE edge to permit same-cycle read/write bypass
    always @(negedge clk) begin
        if (rst) begin
            for (i = 0; i < 32; i = i + 1) begin
                REG[i] <= 32'b0;
            end
        end else if (rf_we && rd != 5'b0) begin 
            REG[rd] <= wd;
        end
    end
endmodule

module my_mem #(parameter MEM_DEPTH = 64) (
    input clk,
    input we,
    input [31:0] addr,
    input [31:0] data_in,
    output [31:0] data_out
);
    reg [31:0] RAM [0:MEM_DEPTH-1];
    wire [29:0] word_addr = addr[31:2]; 

    integer i;
    initial begin
        for (i = 0; i < MEM_DEPTH; i = i + 1) begin
            RAM[i] = 32'b0;
        end
    end

    assign data_out = RAM[word_addr];

    always @(posedge clk) begin
        if (we) begin
            RAM[word_addr] <= data_in;
        end
    end
endmodule

module sign_extender (
    input  [31:0] instr,
    input  [2:0]  sel_ext, 
    output reg [31:0] imm
);
    always @(*) begin
        case (sel_ext)
            3'b000: imm = {{20{instr[31]}}, instr[31:20]};                                // I-type
            3'b001: imm = {{20{instr[31]}}, instr[31:25], instr[11:7]};                   // S-type
            3'b010: imm = {{20{instr[31]}}, instr[7], instr[30:25], instr[11:8], 1'b0};   // B-type (beq)
            3'b011: imm = {{12{instr[31]}}, instr[19:12], instr[20], instr[30:21], 1'b0}; // J-type (jal)
            3'b100: imm = {instr[31:12], 12'b0};                                          // U-type (lui)
            default: imm = 32'b0;
        endcase
    end
endmodule

module alu (
    input  [31:0] a,
    input  [31:0] b,
    input  [3:0]  alu_ctrl,
    output reg [31:0] result,
    output zero
);
    assign zero = (result == 32'b0);

    always @(*) begin
        case (alu_ctrl)
            4'b0000: result = a + b;
            4'b1000: result = a - b;
            4'b0001: result = a << b[4:0];
            4'b0010: result = ($signed(a) < $signed(b)) ? 32'd1 : 32'd0;
            4'b0011: result = (a < b) ? 32'd1 : 32'd0;
            4'b0100: result = a ^ b;
            4'b0101: result = a >> b[4:0];
            4'b1101: result = $signed(a) >>> b[4:0];
            4'b0110: result = a | b;
            4'b0111: result = a & b;
            default: result = 32'b0;
        endcase
    end
endmodule


// ====================================================================
//                 COMBINATIONAL PIPELINE DECODER MODULES
// ====================================================================

module main_decoder (
    input  [6:0] opcode,
    output reg   valid,
    output reg   branch,
    output reg   jump,
    output reg   sel_result, // 0: ALU out, 1: Mem data read
    output reg   we_mem,
    output reg   sel_alu_src_b,
    output reg   sel_lui,
    output reg   rf_we,
    output reg [2:0] sel_ext,
    output reg [1:0] alu_op
);
    always @(*) begin
        valid         = 1'b0;
        branch        = 1'b0;
        jump          = 1'b0;
        sel_result    = 1'b0;
        we_mem        = 1'b0;
        sel_alu_src_b = 1'b0;
        sel_lui       = 1'b0;
        rf_we         = 1'b0;
        sel_ext       = 3'b000;
        alu_op        = 2'b00;

        case (opcode)
            7'b0110011: begin // R-type
                valid = 1'b1;
                rf_we = 1'b1;
                alu_op = 2'b01;
            end
            7'b0010011: begin // I-type ALU
                valid = 1'b1;
                rf_we = 1'b1;
                sel_alu_src_b = 1'b1;
                sel_ext = 3'b000;
                alu_op = 2'b10;
            end
            7'b0000011: begin // LW
                valid = 1'b1;
                rf_we = 1'b1;
                sel_alu_src_b = 1'b1;
                sel_result = 1'b1;
                sel_ext = 3'b000;
                alu_op = 2'b00;
            end
            7'b0100011: begin // SW
                valid = 1'b1;
                we_mem = 1'b1;
                sel_alu_src_b = 1'b1;
                sel_ext = 3'b001;
                alu_op = 2'b00;
            end
            7'b1100011: begin // BEQ
                valid = 1'b1;
                branch = 1'b1;
                sel_ext = 3'b010;
                alu_op = 2'b11;
            end
            7'b1101111: begin // JAL
                valid = 1'b1;
                jump = 1'b1;
                rf_we = 1'b1;
                sel_ext = 3'b011;
            end
            7'b0110111: begin // LUI
                valid = 1'b1;
                rf_we = 1'b1;
                sel_lui = 1'b1;
                sel_alu_src_b = 1'b1;
                sel_ext = 3'b100;
                alu_op = 2'b00;
            end
            default: ;
        endcase
    end
endmodule

module alu_decoder (
    input  [1:0] alu_op,
    input  [2:0] funct3,
    input        funct7_5,
    output reg [3:0] alu_control
);
    always @(*) begin
        case (alu_op)
            2'b00: alu_control = 4'b0000; // ADD
            2'b01: alu_control = {funct7_5, funct3}; // R-type
            2'b10: begin // I-type
                if (funct3 == 3'b101) alu_control = {funct7_5, funct3};
                else alu_control = {1'b0, funct3};
            end
            2'b11: alu_control = 4'b1000; // SUB (BEQ)
            default: alu_control = 4'b0000;
        endcase
    end
endmodule


// ====================================================================
//                         HAZARD CONTROL UNIT
// ====================================================================

module hazard_unit (
    input [4:0] D_rs1, D_rs2,
    input [4:0] E_rs1, E_rs2, E_rd,
    input [4:0] M_rd,
    input [4:0] W_rd,
    input M_rf_we, W_rf_we,
    input E_sel_result, 
    input E_branch, E_zero, 
    input E_jump, // <--- 1. ADD THIS INPUT
    output reg [1:0] forward_a, forward_b,
    output stall_IF, stall_ID, flush_EX, flush_IF_ID
);
    // 1. Data Forwarding for RAW Hazards (Execution Stage Operands)
    always @(*) begin
        // Forward A logic
        if ((E_rs1 != 5'b0) && (E_rs1 == M_rd) && M_rf_we) 
            forward_a = 2'b10; // Forward from Memory Stage Output
        else if ((E_rs1 != 5'b0) && (E_rs1 == W_rd) && W_rf_we) 
            forward_a = 2'b01; // Forward from Write-Back Stage Data
        else 
            forward_a = 2'b00; // Normal read out from ID/EX register

        // Forward B logic
        if ((E_rs2 != 5'b0) && (E_rs2 == M_rd) && M_rf_we) 
            forward_b = 2'b10; 
        else if ((E_rs2 != 5'b0) && (E_rs2 == W_rd) && W_rf_we) 
            forward_b = 2'b01; 
        else 
            forward_b = 2'b00;
    end

    // 2. Load-Use Hazard Stalling Logic
    wire lw_stall = E_sel_result && ((D_rs1 == E_rd) || (D_rs2 == E_rd));
    assign stall_IF = lw_stall;
    assign stall_ID = lw_stall;

    // 2. INCLUDE JUMP IN THE FLUSH LOGIC
    wire branch_taken = (E_branch && E_zero) || E_jump; 

    assign flush_EX    = lw_stall || branch_taken;
    assign flush_IF_ID = branch_taken;
endmodule


// ====================================================================
//                    COMPLETE 5-STAGE PIPELINED TOP
// ====================================================================

// INTERNAL_MEMORY=1 preserves the original self-contained simulation core.
// Set it to 0 in the Vivado wrapper to use the AXI-visible BRAM Port B pins.
module mc_h #(parameter INTERNAL_MEMORY = 1) (
    input clk,
    input rst_n,
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
    wire rst = ~rst_n;

    // ====================================================================
    // 0. SIGNAL DECLARATIONS (Fixes Implicit / Forward-Reference Errors)
    // ====================================================================
    
    // Hazard Unit interface lines
    wire [1:0] forward_a, forward_b;
    wire stall_IF, stall_ID, flush_EX, flush_IF_ID;

    // IF Stage Signals
    wire [31:0] F_pc, F_next_pc, F_pc_plus4, F_instr;
    // Exposed performance counters: useful in xsim through hierarchy and in
    // ILA probes.  They reset with the core, so every run is comparable.
    reg [63:0] cycle_count, instret_count, load_count, store_count;
    
    // ID Stage Signals (Outputs of IF/ID Reg & Decode logic)
    reg [31:0] D_pc, D_pc_plus4, D_instr;
    wire [6:0] D_opcode;
    wire [2:0] D_funct3;
    wire       D_funct7_5;
    wire [4:0] D_rs1, D_rs2, D_rd;
    wire D_valid, D_branch, D_jump, D_sel_result, D_we_mem, D_sel_alu_src_b, D_sel_lui, D_rf_we;
    wire [2:0] D_sel_ext;
    wire [1:0] D_alu_op;
    wire [3:0] D_alu_control;
    wire [31:0] D_rd1, D_rd2, D_imm_ext;

    // EX Stage Signals (Outputs of ID/EX Reg & EX logic)
    reg E_valid, E_branch, E_sel_result, E_we_mem, E_sel_alu_src_b, E_sel_lui, E_rf_we, E_jump;
    reg [3:0] E_alu_control;
    reg [31:0] E_rd1, E_rd2, E_pc, E_imm_ext, E_pc_plus4;
    reg [4:0] E_rs1, E_rs2, E_rd;
    reg [31:0] E_forwarded_a, E_forwarded_b;
    wire [31:0] E_alu_src_b_mux;
    wire [31:0] E_alu_src_a_mux;
    wire [31:0] E_alu_result;
    wire E_zero;
    wire [31:0] E_target_pc;

    // MA Stage Signals (Outputs of EX/MA Reg & MA logic)
    reg M_valid, M_sel_result, M_we_mem, M_rf_we;
    reg [31:0] M_alu_result, M_write_data;
    reg [4:0] M_rd;
    wire [31:0] M_mem_out;

    // WB Stage Signals (Outputs of MA/WB Reg & WB logic)
    reg W_valid, W_sel_result, W_rf_we;
    reg [31:0] W_alu_result, W_mem_out;
    reg [4:0] W_rd;
    wire [31:0] W_wb_data;


    // ====================================================================
    // 1. INSTRUCTION FETCH (IF) STAGE
    // ====================================================================
    assign F_pc_plus4 = F_pc + 32'd4;
    assign F_next_pc  = ((E_branch && E_zero) || E_jump) ? E_target_pc : F_pc_plus4;

    pc_reg PC_REG_INST (
        .clk(clk), .rst_n(rst_n), .en(!stall_IF), .next_pc(F_next_pc), .pc(F_pc)
    );

    // Retain named IMEM/DMEM instances so the original testbench and program
    // loader continue to work.  Vivado removes these memories when the
    // external configuration is selected because their outputs are unused.
    wire [31:0] F_instr_internal;
    my_mem #(64) IMEM (
        .clk(clk), .we(1'b0), .addr(F_pc), .data_in(32'b0), .data_out(F_instr_internal)
    );
    assign F_instr = INTERNAL_MEMORY ? F_instr_internal : imem_doutb;
    assign imem_enb = INTERNAL_MEMORY ? 1'b0 : 1'b1;
    assign imem_web = 4'b0;
    assign imem_addrb = F_pc;
    assign imem_dinb = 32'b0;

    // --- PIPELINE REGISTER 1: IF -> ID ---
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n || flush_IF_ID) begin
            D_pc       <= 32'b0;
            D_pc_plus4 <= 32'b0;
            D_instr    <= 32'b0;
        end else if (!stall_ID) begin
            D_pc       <= F_pc;
            D_pc_plus4 <= F_pc_plus4;
            D_instr    <= F_instr;
        end
    end


    // ====================================================================
    // 2. INSTRUCTION DECODE (ID) STAGE
    // ====================================================================
    assign D_opcode   = D_instr[6:0];
    assign D_funct3   = D_instr[14:12];
    assign D_funct7_5 = D_instr[30];
    assign D_rs1      = D_instr[19:15];
    assign D_rs2      = D_instr[24:20];
    assign D_rd       = D_instr[11:7];

    main_decoder MDEC (
        .opcode(D_opcode), .valid(D_valid), .branch(D_branch), .jump(D_jump), .sel_result(D_sel_result),
        .we_mem(D_we_mem), .sel_alu_src_b(D_sel_alu_src_b), .sel_lui(D_sel_lui), .rf_we(D_rf_we),
        .sel_ext(D_sel_ext), .alu_op(D_alu_op)
    );

    alu_decoder ADEC (
        .alu_op(D_alu_op), .funct3(D_funct3), .funct7_5(D_funct7_5), .alu_control(D_alu_control)
    );

    my_reg REGFILE (
        .clk(clk), .rst(rst), .rf_we(W_rf_we),
        .rs1(D_rs1), .rs2(D_rs2), .rd(W_rd), .wd(W_wb_data),
        .rd1(D_rd1), .rd2(D_rd2)
    );

    sign_extender EXT (
        .instr(D_instr), .sel_ext(D_sel_ext), .imm(D_imm_ext)
    );

    // --- PIPELINE REGISTER 2: ID -> EX ---
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n || flush_EX) begin
            E_valid         <= 1'b0;
            E_jump          <= 1'b0;
            E_branch        <= 1'b0;
            E_sel_result    <= 1'b0;
            E_we_mem        <= 1'b0;
            E_sel_alu_src_b <= 1'b0;
            E_sel_lui       <= 1'b0;
            E_rf_we         <= 1'b0;
            E_alu_control   <= 4'b0;
            E_rd1           <= 32'b0;
            E_rd2           <= 32'b0;
            E_pc            <= 32'b0;
            E_imm_ext       <= 32'b0;
            E_pc_plus4      <= 32'b0;
            E_rs1           <= 5'b0;
            E_rs2           <= 5'b0;
            E_rd            <= 5'b0;
        end else begin
            E_valid         <= D_valid;
            E_jump          <= D_jump;
            E_branch        <= D_branch;
            E_sel_result    <= D_sel_result;
            E_we_mem        <= D_we_mem;
            E_sel_alu_src_b <= D_sel_alu_src_b;
            E_sel_lui       <= D_sel_lui;
            E_rf_we         <= D_rf_we;
            E_alu_control   <= D_alu_control;
            E_rd1           <= D_rd1;
            E_rd2           <= D_rd2;
            E_pc            <= D_pc;
            E_imm_ext       <= D_imm_ext;
            E_pc_plus4      <= D_pc_plus4;
            E_rs1           <= D_rs1;
            E_rs2           <= D_rs2;
            E_rd            <= D_rd;
        end
    end


    // ====================================================================
    // 3. EXECUTION (EX) STAGE
    // ====================================================================
    assign E_target_pc = E_pc + E_imm_ext;

    // Multiplexer picking correct Forwarded A port operand
    always @(*) begin
        case (forward_a)
            2'b00:   E_forwarded_a = E_rd1;
            2'b01:   E_forwarded_a = W_wb_data;
            2'b10:   E_forwarded_a = M_alu_result;
            default: E_forwarded_a = E_rd1;
        endcase
    end

    // Multiplexer picking correct Forwarded B port operand
    always @(*) begin
        case (forward_b)
            2'b00:   E_forwarded_b = E_rd2;
            2'b01:   E_forwarded_b = W_wb_data;
            2'b10:   E_forwarded_b = M_alu_result;
            default: E_forwarded_b = E_rd2;
        endcase
    end

    assign E_alu_src_b_mux = E_sel_alu_src_b ? E_imm_ext : E_forwarded_b;
    assign E_alu_src_a_mux = E_sel_lui ? 32'b0 : E_forwarded_a;

    alu ALU_CORE (
        .a(E_alu_src_a_mux), .b(E_alu_src_b_mux), .alu_ctrl(E_alu_control),
        .result(E_alu_result), .zero(E_zero)
    );

    // --- PIPELINE REGISTER 3: EX -> MA ---
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            M_valid      <= 1'b0;
            M_sel_result <= 1'b0;
            M_we_mem     <= 1'b0;
            M_rf_we      <= 1'b0;
            M_alu_result <= 32'b0;
            M_write_data <= 32'b0;
            M_rd         <= 5'b0;
        end else begin
            M_valid      <= E_valid;
            M_sel_result <= E_sel_result;
            M_we_mem     <= E_we_mem;
            M_rf_we      <= E_rf_we;
            M_alu_result <= E_alu_result;
            M_write_data <= E_forwarded_b; // Buffered forwarded store data payload
            M_rd         <= E_rd;
        end
    end


    // ====================================================================
    // 4. MEMORY ACCESS (MA) STAGE
    // ====================================================================
    wire [31:0] M_mem_out_internal;
    my_mem #(64) DMEM (
        .clk(clk), .we(M_we_mem && INTERNAL_MEMORY), .addr(M_alu_result),
        .data_in(M_write_data), .data_out(M_mem_out_internal)
    );
    assign M_mem_out = INTERNAL_MEMORY ? M_mem_out_internal : dmem_doutb;
    assign dmem_enb = (!INTERNAL_MEMORY) && (M_we_mem || M_sel_result);
    assign dmem_web = (!INTERNAL_MEMORY && M_we_mem) ? 4'hF : 4'h0;
    assign dmem_addrb = M_alu_result;
    assign dmem_dinb = M_write_data;

    // --- PIPELINE REGISTER 4: MA -> WB ---
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            W_valid      <= 1'b0;
            W_sel_result <= 1'b0;
            W_rf_we      <= 1'b0;
            W_alu_result <= 32'b0;
            W_mem_out    <= 32'b0;
            W_rd         <= 5'b0;
        end else begin
            W_valid      <= M_valid;
            W_sel_result <= M_sel_result;
            W_rf_we      <= M_rf_we;
            W_alu_result <= M_alu_result;
            W_mem_out    <= M_mem_out;
            W_rd         <= M_rd;
        end
    end


    // ====================================================================
    // 5. WRITE BACK (WB) STAGE
    // ====================================================================
    assign W_wb_data = W_sel_result ? W_mem_out : W_alu_result;

    // Counter semantics: cycles count active clocks after reset; instret
    // counts architectural writes and stores.  These are identical metrics
    // used by the single-cycle baseline (with the same program image).
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cycle_count <= 64'd0;
            instret_count <= 64'd0;
            load_count <= 64'd0;
            store_count <= 64'd0;
        end else begin
            cycle_count <= cycle_count + 64'd1;
            if (W_valid)
                instret_count <= instret_count + 64'd1;
            if (M_sel_result) load_count <= load_count + 64'd1;
            if (M_we_mem) store_count <= store_count + 64'd1;
        end
    end


    // ====================================================================
    // 6. HAZARD CONTROL UNIT INSTANTIATION
    // ====================================================================
    hazard_unit HAZARD_CTRL_SYS (
        .D_rs1(D_rs1), .D_rs2(D_rs2),
        .E_rs1(E_rs1), .E_rs2(E_rs2), .E_rd(E_rd),
        .M_rd(M_rd), .W_rd(W_rd),
        .M_rf_we(M_rf_we), .W_rf_we(W_rf_we),
        .E_sel_result(E_sel_result),
        .E_branch(E_branch), .E_zero(E_zero),
        .E_jump(E_jump),
        .forward_a(forward_a), .forward_b(forward_b),
        .stall_IF(stall_IF), .stall_ID(stall_ID),
        .flush_EX(flush_EX), .flush_IF_ID(flush_IF_ID)
    );

endmodule
