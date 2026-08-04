// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Aug  3 23:35:01 2026
// Host        : Kamal running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top axi_bram_bd_blk_mem_gen_0_0 -prefix
//               axi_bram_bd_blk_mem_gen_0_0_ axi_bram_bd_blk_mem_gen_0_1_sim_netlist.v
// Design      : axi_bram_bd_blk_mem_gen_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axi_bram_bd_blk_mem_gen_0_1,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module axi_bram_bd_blk_mem_gen_0_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  axi_bram_bd_blk_mem_gen_0_0_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59648)
`pragma protect data_block
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
ygY8IFiZNx4ipocC13eZ5OfRNNZzNbvrJW0=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
