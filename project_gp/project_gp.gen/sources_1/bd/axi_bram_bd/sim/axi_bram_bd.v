//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Tue Aug  4 01:01:06 2026
//Host        : Kamal running 64-bit major release  (build 9200)
//Command     : generate_target axi_bram_bd.bd
//Design      : axi_bram_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "axi_bram_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=axi_bram_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=4,da_board_cnt=2,da_bram_cntlr_cnt=1,da_clkrst_cnt=1,da_ps7_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "axi_bram_bd.hwdef" *) 
module axi_bram_bd
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;

  wire [12:0]axi_bram_ctrl_0_BRAM_PORTA1_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA1_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA1_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA1_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA1_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA1_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA1_WE;
  wire [12:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [0:0]axi_gpio_0_gpio_io_o;
  wire [12:0]axi_smc_M00_AXI_ARADDR;
  wire [1:0]axi_smc_M00_AXI_ARBURST;
  wire [3:0]axi_smc_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_M00_AXI_ARLEN;
  wire [0:0]axi_smc_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_M00_AXI_ARPROT;
  wire axi_smc_M00_AXI_ARREADY;
  wire [2:0]axi_smc_M00_AXI_ARSIZE;
  wire axi_smc_M00_AXI_ARVALID;
  wire [12:0]axi_smc_M00_AXI_AWADDR;
  wire [1:0]axi_smc_M00_AXI_AWBURST;
  wire [3:0]axi_smc_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_M00_AXI_AWLEN;
  wire [0:0]axi_smc_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_M00_AXI_AWPROT;
  wire axi_smc_M00_AXI_AWREADY;
  wire [2:0]axi_smc_M00_AXI_AWSIZE;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [31:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RLAST;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [31:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WLAST;
  wire axi_smc_M00_AXI_WREADY;
  wire [3:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire [8:0]axi_smc_M01_AXI_ARADDR;
  wire axi_smc_M01_AXI_ARREADY;
  wire axi_smc_M01_AXI_ARVALID;
  wire [8:0]axi_smc_M01_AXI_AWADDR;
  wire axi_smc_M01_AXI_AWREADY;
  wire axi_smc_M01_AXI_AWVALID;
  wire axi_smc_M01_AXI_BREADY;
  wire [1:0]axi_smc_M01_AXI_BRESP;
  wire axi_smc_M01_AXI_BVALID;
  wire [31:0]axi_smc_M01_AXI_RDATA;
  wire axi_smc_M01_AXI_RREADY;
  wire [1:0]axi_smc_M01_AXI_RRESP;
  wire axi_smc_M01_AXI_RVALID;
  wire [31:0]axi_smc_M01_AXI_WDATA;
  wire axi_smc_M01_AXI_WREADY;
  wire [3:0]axi_smc_M01_AXI_WSTRB;
  wire axi_smc_M01_AXI_WVALID;
  wire [12:0]axi_smc_M02_AXI_ARADDR;
  wire [1:0]axi_smc_M02_AXI_ARBURST;
  wire [3:0]axi_smc_M02_AXI_ARCACHE;
  wire [7:0]axi_smc_M02_AXI_ARLEN;
  wire [0:0]axi_smc_M02_AXI_ARLOCK;
  wire [2:0]axi_smc_M02_AXI_ARPROT;
  wire axi_smc_M02_AXI_ARREADY;
  wire [2:0]axi_smc_M02_AXI_ARSIZE;
  wire axi_smc_M02_AXI_ARVALID;
  wire [12:0]axi_smc_M02_AXI_AWADDR;
  wire [1:0]axi_smc_M02_AXI_AWBURST;
  wire [3:0]axi_smc_M02_AXI_AWCACHE;
  wire [7:0]axi_smc_M02_AXI_AWLEN;
  wire [0:0]axi_smc_M02_AXI_AWLOCK;
  wire [2:0]axi_smc_M02_AXI_AWPROT;
  wire axi_smc_M02_AXI_AWREADY;
  wire [2:0]axi_smc_M02_AXI_AWSIZE;
  wire axi_smc_M02_AXI_AWVALID;
  wire axi_smc_M02_AXI_BREADY;
  wire [1:0]axi_smc_M02_AXI_BRESP;
  wire axi_smc_M02_AXI_BVALID;
  wire [31:0]axi_smc_M02_AXI_RDATA;
  wire axi_smc_M02_AXI_RLAST;
  wire axi_smc_M02_AXI_RREADY;
  wire [1:0]axi_smc_M02_AXI_RRESP;
  wire axi_smc_M02_AXI_RVALID;
  wire [31:0]axi_smc_M02_AXI_WDATA;
  wire axi_smc_M02_AXI_WLAST;
  wire axi_smc_M02_AXI_WREADY;
  wire [3:0]axi_smc_M02_AXI_WSTRB;
  wire axi_smc_M02_AXI_WVALID;
  wire [31:0]blk_mem_gen_0_doutb;
  wire [31:0]blk_mem_gen_1_doutb;
  wire [31:0]jtag_axi_0_M_AXI_ARADDR;
  wire [1:0]jtag_axi_0_M_AXI_ARBURST;
  wire [3:0]jtag_axi_0_M_AXI_ARCACHE;
  wire [0:0]jtag_axi_0_M_AXI_ARID;
  wire [7:0]jtag_axi_0_M_AXI_ARLEN;
  wire jtag_axi_0_M_AXI_ARLOCK;
  wire [2:0]jtag_axi_0_M_AXI_ARPROT;
  wire [3:0]jtag_axi_0_M_AXI_ARQOS;
  wire jtag_axi_0_M_AXI_ARREADY;
  wire [2:0]jtag_axi_0_M_AXI_ARSIZE;
  wire jtag_axi_0_M_AXI_ARVALID;
  wire [31:0]jtag_axi_0_M_AXI_AWADDR;
  wire [1:0]jtag_axi_0_M_AXI_AWBURST;
  wire [3:0]jtag_axi_0_M_AXI_AWCACHE;
  wire [0:0]jtag_axi_0_M_AXI_AWID;
  wire [7:0]jtag_axi_0_M_AXI_AWLEN;
  wire jtag_axi_0_M_AXI_AWLOCK;
  wire [2:0]jtag_axi_0_M_AXI_AWPROT;
  wire [3:0]jtag_axi_0_M_AXI_AWQOS;
  wire jtag_axi_0_M_AXI_AWREADY;
  wire [2:0]jtag_axi_0_M_AXI_AWSIZE;
  wire jtag_axi_0_M_AXI_AWVALID;
  wire [0:0]jtag_axi_0_M_AXI_BID;
  wire jtag_axi_0_M_AXI_BREADY;
  wire [1:0]jtag_axi_0_M_AXI_BRESP;
  wire jtag_axi_0_M_AXI_BVALID;
  wire [31:0]jtag_axi_0_M_AXI_RDATA;
  wire [0:0]jtag_axi_0_M_AXI_RID;
  wire jtag_axi_0_M_AXI_RLAST;
  wire jtag_axi_0_M_AXI_RREADY;
  wire [1:0]jtag_axi_0_M_AXI_RRESP;
  wire jtag_axi_0_M_AXI_RVALID;
  wire [31:0]jtag_axi_0_M_AXI_WDATA;
  wire jtag_axi_0_M_AXI_WLAST;
  wire jtag_axi_0_M_AXI_WREADY;
  wire [3:0]jtag_axi_0_M_AXI_WSTRB;
  wire jtag_axi_0_M_AXI_WVALID;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  wire [31:0]riscv_bram_wrapper_0_dmem_addrb;
  wire [31:0]riscv_bram_wrapper_0_dmem_dinb;
  wire riscv_bram_wrapper_0_dmem_enb;
  wire [3:0]riscv_bram_wrapper_0_dmem_web;
  wire [31:0]riscv_bram_wrapper_0_imem_addrb;
  wire [31:0]riscv_bram_wrapper_0_imem_dinb;
  wire riscv_bram_wrapper_0_imem_enb;
  wire [3:0]riscv_bram_wrapper_0_imem_web;

  (* BMM_INFO_ADDRESS_SPACE = "byte  0x40000000 32 > axi_bram_bd blk_mem_gen_0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  axi_bram_bd_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_smc_M00_AXI_ARADDR),
        .s_axi_arburst(axi_smc_M00_AXI_ARBURST),
        .s_axi_arcache(axi_smc_M00_AXI_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arlen(axi_smc_M00_AXI_ARLEN),
        .s_axi_arlock(axi_smc_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_smc_M00_AXI_ARPROT),
        .s_axi_arready(axi_smc_M00_AXI_ARREADY),
        .s_axi_arsize(axi_smc_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_smc_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M00_AXI_AWADDR),
        .s_axi_awburst(axi_smc_M00_AXI_AWBURST),
        .s_axi_awcache(axi_smc_M00_AXI_AWCACHE),
        .s_axi_awlen(axi_smc_M00_AXI_AWLEN),
        .s_axi_awlock(axi_smc_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_smc_M00_AXI_AWPROT),
        .s_axi_awready(axi_smc_M00_AXI_AWREADY),
        .s_axi_awsize(axi_smc_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_smc_M00_AXI_AWVALID),
        .s_axi_bready(axi_smc_M00_AXI_BREADY),
        .s_axi_bresp(axi_smc_M00_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M00_AXI_BVALID),
        .s_axi_rdata(axi_smc_M00_AXI_RDATA),
        .s_axi_rlast(axi_smc_M00_AXI_RLAST),
        .s_axi_rready(axi_smc_M00_AXI_RREADY),
        .s_axi_rresp(axi_smc_M00_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M00_AXI_RVALID),
        .s_axi_wdata(axi_smc_M00_AXI_WDATA),
        .s_axi_wlast(axi_smc_M00_AXI_WLAST),
        .s_axi_wready(axi_smc_M00_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M00_AXI_WVALID));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x42000000 32 > axi_bram_bd blk_mem_gen_1" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  axi_bram_bd_axi_bram_ctrl_0_1 axi_bram_ctrl_1
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA1_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA1_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA1_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA1_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA1_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA1_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA1_DIN),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_smc_M02_AXI_ARADDR),
        .s_axi_arburst(axi_smc_M02_AXI_ARBURST),
        .s_axi_arcache(axi_smc_M02_AXI_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arlen(axi_smc_M02_AXI_ARLEN),
        .s_axi_arlock(axi_smc_M02_AXI_ARLOCK),
        .s_axi_arprot(axi_smc_M02_AXI_ARPROT),
        .s_axi_arready(axi_smc_M02_AXI_ARREADY),
        .s_axi_arsize(axi_smc_M02_AXI_ARSIZE),
        .s_axi_arvalid(axi_smc_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M02_AXI_AWADDR),
        .s_axi_awburst(axi_smc_M02_AXI_AWBURST),
        .s_axi_awcache(axi_smc_M02_AXI_AWCACHE),
        .s_axi_awlen(axi_smc_M02_AXI_AWLEN),
        .s_axi_awlock(axi_smc_M02_AXI_AWLOCK),
        .s_axi_awprot(axi_smc_M02_AXI_AWPROT),
        .s_axi_awready(axi_smc_M02_AXI_AWREADY),
        .s_axi_awsize(axi_smc_M02_AXI_AWSIZE),
        .s_axi_awvalid(axi_smc_M02_AXI_AWVALID),
        .s_axi_bready(axi_smc_M02_AXI_BREADY),
        .s_axi_bresp(axi_smc_M02_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M02_AXI_BVALID),
        .s_axi_rdata(axi_smc_M02_AXI_RDATA),
        .s_axi_rlast(axi_smc_M02_AXI_RLAST),
        .s_axi_rready(axi_smc_M02_AXI_RREADY),
        .s_axi_rresp(axi_smc_M02_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M02_AXI_RVALID),
        .s_axi_wdata(axi_smc_M02_AXI_WDATA),
        .s_axi_wlast(axi_smc_M02_AXI_WLAST),
        .s_axi_wready(axi_smc_M02_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M02_AXI_WVALID));
  axi_bram_bd_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_smc_M01_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(axi_smc_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M01_AXI_AWADDR),
        .s_axi_awready(axi_smc_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M01_AXI_AWVALID),
        .s_axi_bready(axi_smc_M01_AXI_BREADY),
        .s_axi_bresp(axi_smc_M01_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M01_AXI_BVALID),
        .s_axi_rdata(axi_smc_M01_AXI_RDATA),
        .s_axi_rready(axi_smc_M01_AXI_RREADY),
        .s_axi_rresp(axi_smc_M01_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M01_AXI_RVALID),
        .s_axi_wdata(axi_smc_M01_AXI_WDATA),
        .s_axi_wready(axi_smc_M01_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M01_AXI_WVALID));
  axi_bram_bd_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_smc_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_smc_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_smc_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_smc_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_smc_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_smc_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_smc_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_smc_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_smc_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_smc_M01_AXI_RDATA),
        .M01_AXI_rready(axi_smc_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_smc_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_smc_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_smc_M01_AXI_WDATA),
        .M01_AXI_wready(axi_smc_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_smc_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_smc_M01_AXI_WVALID),
        .M02_AXI_araddr(axi_smc_M02_AXI_ARADDR),
        .M02_AXI_arburst(axi_smc_M02_AXI_ARBURST),
        .M02_AXI_arcache(axi_smc_M02_AXI_ARCACHE),
        .M02_AXI_arlen(axi_smc_M02_AXI_ARLEN),
        .M02_AXI_arlock(axi_smc_M02_AXI_ARLOCK),
        .M02_AXI_arprot(axi_smc_M02_AXI_ARPROT),
        .M02_AXI_arready(axi_smc_M02_AXI_ARREADY),
        .M02_AXI_arsize(axi_smc_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(axi_smc_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_smc_M02_AXI_AWADDR),
        .M02_AXI_awburst(axi_smc_M02_AXI_AWBURST),
        .M02_AXI_awcache(axi_smc_M02_AXI_AWCACHE),
        .M02_AXI_awlen(axi_smc_M02_AXI_AWLEN),
        .M02_AXI_awlock(axi_smc_M02_AXI_AWLOCK),
        .M02_AXI_awprot(axi_smc_M02_AXI_AWPROT),
        .M02_AXI_awready(axi_smc_M02_AXI_AWREADY),
        .M02_AXI_awsize(axi_smc_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(axi_smc_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_smc_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_smc_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_smc_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_smc_M02_AXI_RDATA),
        .M02_AXI_rlast(axi_smc_M02_AXI_RLAST),
        .M02_AXI_rready(axi_smc_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_smc_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_smc_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_smc_M02_AXI_WDATA),
        .M02_AXI_wlast(axi_smc_M02_AXI_WLAST),
        .M02_AXI_wready(axi_smc_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_smc_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_smc_M02_AXI_WVALID),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID),
        .S01_AXI_araddr(jtag_axi_0_M_AXI_ARADDR),
        .S01_AXI_arburst(jtag_axi_0_M_AXI_ARBURST),
        .S01_AXI_arcache(jtag_axi_0_M_AXI_ARCACHE),
        .S01_AXI_arid(jtag_axi_0_M_AXI_ARID),
        .S01_AXI_arlen(jtag_axi_0_M_AXI_ARLEN),
        .S01_AXI_arlock(jtag_axi_0_M_AXI_ARLOCK),
        .S01_AXI_arprot(jtag_axi_0_M_AXI_ARPROT),
        .S01_AXI_arqos(jtag_axi_0_M_AXI_ARQOS),
        .S01_AXI_arready(jtag_axi_0_M_AXI_ARREADY),
        .S01_AXI_arsize(jtag_axi_0_M_AXI_ARSIZE),
        .S01_AXI_arvalid(jtag_axi_0_M_AXI_ARVALID),
        .S01_AXI_awaddr(jtag_axi_0_M_AXI_AWADDR),
        .S01_AXI_awburst(jtag_axi_0_M_AXI_AWBURST),
        .S01_AXI_awcache(jtag_axi_0_M_AXI_AWCACHE),
        .S01_AXI_awid(jtag_axi_0_M_AXI_AWID),
        .S01_AXI_awlen(jtag_axi_0_M_AXI_AWLEN),
        .S01_AXI_awlock(jtag_axi_0_M_AXI_AWLOCK),
        .S01_AXI_awprot(jtag_axi_0_M_AXI_AWPROT),
        .S01_AXI_awqos(jtag_axi_0_M_AXI_AWQOS),
        .S01_AXI_awready(jtag_axi_0_M_AXI_AWREADY),
        .S01_AXI_awsize(jtag_axi_0_M_AXI_AWSIZE),
        .S01_AXI_awvalid(jtag_axi_0_M_AXI_AWVALID),
        .S01_AXI_bid(jtag_axi_0_M_AXI_BID),
        .S01_AXI_bready(jtag_axi_0_M_AXI_BREADY),
        .S01_AXI_bresp(jtag_axi_0_M_AXI_BRESP),
        .S01_AXI_bvalid(jtag_axi_0_M_AXI_BVALID),
        .S01_AXI_rdata(jtag_axi_0_M_AXI_RDATA),
        .S01_AXI_rid(jtag_axi_0_M_AXI_RID),
        .S01_AXI_rlast(jtag_axi_0_M_AXI_RLAST),
        .S01_AXI_rready(jtag_axi_0_M_AXI_RREADY),
        .S01_AXI_rresp(jtag_axi_0_M_AXI_RRESP),
        .S01_AXI_rvalid(jtag_axi_0_M_AXI_RVALID),
        .S01_AXI_wdata(jtag_axi_0_M_AXI_WDATA),
        .S01_AXI_wlast(jtag_axi_0_M_AXI_WLAST),
        .S01_AXI_wready(jtag_axi_0_M_AXI_WREADY),
        .S01_AXI_wstrb(jtag_axi_0_M_AXI_WSTRB),
        .S01_AXI_wvalid(jtag_axi_0_M_AXI_WVALID),
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(proc_sys_reset_0_peripheral_aresetn));
  axi_bram_bd_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb(riscv_bram_wrapper_0_imem_addrb),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(processing_system7_0_FCLK_CLK0),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(riscv_bram_wrapper_0_imem_dinb),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(blk_mem_gen_0_doutb),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(riscv_bram_wrapper_0_imem_enb),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(proc_sys_reset_0_peripheral_reset),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(riscv_bram_wrapper_0_imem_web));
  axi_bram_bd_blk_mem_gen_0_1 blk_mem_gen_1
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA1_ADDR}),
        .addrb(riscv_bram_wrapper_0_dmem_addrb),
        .clka(axi_bram_ctrl_0_BRAM_PORTA1_CLK),
        .clkb(processing_system7_0_FCLK_CLK0),
        .dina(axi_bram_ctrl_0_BRAM_PORTA1_DIN),
        .dinb(riscv_bram_wrapper_0_dmem_dinb),
        .douta(axi_bram_ctrl_0_BRAM_PORTA1_DOUT),
        .doutb(blk_mem_gen_1_doutb),
        .ena(axi_bram_ctrl_0_BRAM_PORTA1_EN),
        .enb(riscv_bram_wrapper_0_dmem_enb),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA1_RST),
        .rstb(proc_sys_reset_0_peripheral_reset),
        .wea(axi_bram_ctrl_0_BRAM_PORTA1_WE),
        .web(riscv_bram_wrapper_0_dmem_web));
  axi_bram_bd_jtag_axi_0_0 jtag_axi_0
       (.aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_araddr(jtag_axi_0_M_AXI_ARADDR),
        .m_axi_arburst(jtag_axi_0_M_AXI_ARBURST),
        .m_axi_arcache(jtag_axi_0_M_AXI_ARCACHE),
        .m_axi_arid(jtag_axi_0_M_AXI_ARID),
        .m_axi_arlen(jtag_axi_0_M_AXI_ARLEN),
        .m_axi_arlock(jtag_axi_0_M_AXI_ARLOCK),
        .m_axi_arprot(jtag_axi_0_M_AXI_ARPROT),
        .m_axi_arqos(jtag_axi_0_M_AXI_ARQOS),
        .m_axi_arready(jtag_axi_0_M_AXI_ARREADY),
        .m_axi_arsize(jtag_axi_0_M_AXI_ARSIZE),
        .m_axi_arvalid(jtag_axi_0_M_AXI_ARVALID),
        .m_axi_awaddr(jtag_axi_0_M_AXI_AWADDR),
        .m_axi_awburst(jtag_axi_0_M_AXI_AWBURST),
        .m_axi_awcache(jtag_axi_0_M_AXI_AWCACHE),
        .m_axi_awid(jtag_axi_0_M_AXI_AWID),
        .m_axi_awlen(jtag_axi_0_M_AXI_AWLEN),
        .m_axi_awlock(jtag_axi_0_M_AXI_AWLOCK),
        .m_axi_awprot(jtag_axi_0_M_AXI_AWPROT),
        .m_axi_awqos(jtag_axi_0_M_AXI_AWQOS),
        .m_axi_awready(jtag_axi_0_M_AXI_AWREADY),
        .m_axi_awsize(jtag_axi_0_M_AXI_AWSIZE),
        .m_axi_awvalid(jtag_axi_0_M_AXI_AWVALID),
        .m_axi_bid(jtag_axi_0_M_AXI_BID),
        .m_axi_bready(jtag_axi_0_M_AXI_BREADY),
        .m_axi_bresp(jtag_axi_0_M_AXI_BRESP),
        .m_axi_bvalid(jtag_axi_0_M_AXI_BVALID),
        .m_axi_rdata(jtag_axi_0_M_AXI_RDATA),
        .m_axi_rid(jtag_axi_0_M_AXI_RID),
        .m_axi_rlast(jtag_axi_0_M_AXI_RLAST),
        .m_axi_rready(jtag_axi_0_M_AXI_RREADY),
        .m_axi_rresp(jtag_axi_0_M_AXI_RRESP),
        .m_axi_rvalid(jtag_axi_0_M_AXI_RVALID),
        .m_axi_wdata(jtag_axi_0_M_AXI_WDATA),
        .m_axi_wlast(jtag_axi_0_M_AXI_WLAST),
        .m_axi_wready(jtag_axi_0_M_AXI_WREADY),
        .m_axi_wstrb(jtag_axi_0_M_AXI_WSTRB),
        .m_axi_wvalid(jtag_axi_0_M_AXI_WVALID));
  axi_bram_bd_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  (* BMM_INFO_PROCESSOR = "arm > axi_bram_bd axi_bram_ctrl_0 axi_bram_bd axi_bram_ctrl_1" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  axi_bram_bd_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb));
  axi_bram_bd_riscv_bram_wrapper_0_0 riscv_bram_wrapper_0
       (.clk(processing_system7_0_FCLK_CLK0),
        .dmem_addrb(riscv_bram_wrapper_0_dmem_addrb),
        .dmem_dinb(riscv_bram_wrapper_0_dmem_dinb),
        .dmem_doutb(blk_mem_gen_1_doutb),
        .dmem_enb(riscv_bram_wrapper_0_dmem_enb),
        .dmem_web(riscv_bram_wrapper_0_dmem_web),
        .imem_addrb(riscv_bram_wrapper_0_imem_addrb),
        .imem_dinb(riscv_bram_wrapper_0_imem_dinb),
        .imem_doutb(blk_mem_gen_0_doutb),
        .imem_enb(riscv_bram_wrapper_0_imem_enb),
        .imem_web(riscv_bram_wrapper_0_imem_web),
        .run(axi_gpio_0_gpio_io_o),
        .system_resetn(proc_sys_reset_0_peripheral_aresetn));
endmodule
