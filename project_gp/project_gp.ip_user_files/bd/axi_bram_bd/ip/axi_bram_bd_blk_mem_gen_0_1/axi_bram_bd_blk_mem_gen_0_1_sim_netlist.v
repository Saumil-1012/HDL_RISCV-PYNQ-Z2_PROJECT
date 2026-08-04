// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Aug  3 23:35:02 2026
// Host        : Kamal running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/vivado_tutorial/project_3/project_3.gen/sources_1/bd/axi_bram_bd/ip/axi_bram_bd_blk_mem_gen_0_1/axi_bram_bd_blk_mem_gen_0_1_sim_netlist.v
// Design      : axi_bram_bd_blk_mem_gen_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axi_bram_bd_blk_mem_gen_0_1,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module axi_bram_bd_blk_mem_gen_0_1
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
  axi_bram_bd_blk_mem_gen_0_1_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59936)
`pragma protect data_block
IvuIH0UXexz0966YTXNjH+oPsAtE5sTRqz52Og/cTKwfK++wiob3L79niT9Xn2SVldT5wZA9YI7h
oUC/V57aE9Tmtr5Z73xXaoVbwfu6zYOGNf2Imo/IdFRrN1k1bSvS0lWiyVCrSOwOhISmG89TWKML
k+wr+GLIE6K+RKNaBX2tjWyS2IKE8njdovBh3tKZrfo5xrQkrn0byI/iuD8oL+47LRoHXhSSxhcH
+2Tz+jDSUWXRQ36OKM0BVdDj6waqCKYjkUlbkA3P3Ubc9LCDWkhPmBzURvLqq9BEpmC1pNcBtMdH
peQr9wFNMUwad1Efrz8s7li5Gqd1hG8a0cRHm45E5Ebn9g1sKGGcpea8pd3uFFIhypCccf+aotb3
DvG9jBiiIW+O5Nja1DaqVYl/TWe+GAabCh9xcILgDGZRWERYZfz8hcy9snZUr2amBBebLvI3IYDk
IupbcB7xGO/Ru+m/cQi9sbzxJQn8TI+1HwEiQQct+FoW8uk2ScL3GdDzR4YJk9tlptxTp5ZCWVIo
X9sHYObSj2Aq8Qu3sJcK3K71XoBysPeMTm9lVgUfvP2FMmcBZHuIKG1HPr5JQn0YvYPs3JqnV1g3
nL92CsVZFEkdTioD3ZI7liLSxeLPmNBmbgBMbfGGTqZILy+deFKpHJpQWoXQN+yzybRteG92U7DQ
UDNBEdGp4wvAXoui0AOEhKPADSocJVNdjjX9L68g8Q0bodFDCPFVigZjRknTPYrBukf6IFDh/HeR
ifoP5IVH9/G+UbbNfFnT49YplujJNLC7WhBprepH/mUgxSzvMHiV9R/TytKp1rV8Wbqv3nFJrHCx
NkMQJpmNJ8dIF0L4FLapV4JPX7UMlooLiUUgYpwWdtL4CCyYRrVsPYe58+ccLoKDaNFmilmut+Xb
XCrIc+e8J+DyV1Z6JDmqKMNkPbzeylbM4QdE4MT4jPoBpJ1pK67EfeVys2lxT7eDmVaLRB2rb/vl
jA6TZoVy2Q6WVm+32UAF9tY2y5Ni/w6aSB3lyuMI1WLbpU/59xkn9RgSOryFZvT7DcZ7RX+QxpJV
msgAXE9xB8dmxyyFvPSTEsWjJOlw4ze2NGFR6u85wNxLe/26qBVmZJeDlfdKm2D40eMYvVxmcJck
9JTudrsxi07iijOg8l7TsojiY3e/fb1yLxvxy32cjoEG1f25EbJepaW1jXeUdqIM6b2PE+d3UDQO
Qw7ZwgJ8lndgCIAt0kcLjC3vK7RLrzEW/wU8f3UVXkQk0+tn1qaS1RHDsAiR9Q0lQ9eWONCnbvHs
1lrGvywV+p+k2aDPka4RKsd10sd7ab19mFLZOJppLuJlUEuIY1Xw8J92SnjjALfZe3Xd2qTWy0Ws
cOj9gKS/JBp6AKRW0psjRVJXlqs6ZVWGWaDiqUbInHL1+UyCoq0Y8ch22DM4kJsCX1YFNIE6jVpD
vIZ3mN74b6P45x13/Lq8zCDbJ5LQrF1VEneslx4Z4tsI9XO8GxwHqntRXrUxkX17RGo5kGRzczHm
amtDs/FgxrmYkb1EJX87UDxqOBob9KwQvoGuC4SMZ/ZrzEcN7ifGDU1VfG153Y54n1ixtKuAiSVR
7xqyGhEL8tCqN0iSbYJx4W/yYRoUS8T/Yr84XL/OhM/RbuqhMucIRsxk4+V6TQp1mpA+QvzYwaXo
CIIKio8I2CQDCRDzgTAuwtD12jfRzv7NhBPj1T2U67QmdNUekrrcv9aiXdvzvY5AkIQl9GWTejqK
Dpxo3FjLBYoX5Q7glgDOn3FiCnmiPGZ2suR6Ei3ItGUmUjhIc++dwQippTVsfMHq7JIY4WuwIdEv
DZ3waMwlGtEyMJX3XMHSt04Al0njvs2KKyGTKxTZM2rpqmXz6QPoRx0I/D4+QrQvT7vMnd3xZsFP
+tgr/hfSsmOQUxjJH+Z4OvIqk0rfFqY+6AZ57Tk+JqqIar3mrQrAoLl49hPuXOmRObIPuHrv5W7m
Rd0EcU2VQypbTrAUZaqelA5JmIZDu/kpQBHceA/5eqOsfN87+T7xqcOdfvO7xVgO6va3eUoDCQx2
ei/UJKUhKPj/lr2Bk8TAIc1Y4qMaUY8rxMONpjpDu3N2rKWsJMKkPydFhExj9iuj656SS/wmWhQF
8d5Nu7dISfMSae+Kiu/R0LEyFGFLsp9BbYeBi1SJLMTKmN7tlnp5D5sfEbIVEU49wGpCXgYyZMx4
v/lDPVLfpvA2ZSMadZACUd/Uba2bHVS1UmvR3ox1oqhbEKtbLNiNEG3FNF1ttm9Nd1GDIGh07hev
3pwH+TLeNn+vJLNuz9UXhLSL51fbkAM7fvSbPPgQavYvu17InsAVltn9o+yGYF0yjoDWe0gGaP7R
Cwcd1bUibJtjmNn1VamjJGdR5WbFfwtwiNSrVbziKrBwRU7Up39fhvWV/mW3eBGkOj/C629nUtgP
Xi5TS+F5WhYyyv9wVq+OyoThDCgav83ZIlVXvEbO9ldzxjtOFvf0kQKjCsI8JnHedQHDKbwrLycJ
dVcOdmz65HmFb9VirLrqKgKcd3yDt41NhCbjcXGuyieuNsLRPhmty0aM/20I6DvC8WEsXSk4vAdb
26wTqwV2nAy/dW+G7sPymp1rYSEsJ9cRfwpVw9xQ0BWG8fW0zx3rS28T1GG+fmzLX4Ygcp5t9t+g
Cgo+gjwlDA6RdKaZc/aE+sFIR85o4JWSvbSIUCccYJKkssV9mlnxDEb3ApyyI60vTKX2pYwx0dnc
u4p8dpWbuUUQSJ1t4KpNpIMLDCcO+ZVmbpQfYh6otFxTkhacOHFW8CPkn6rAkAt46OXWFPnQCaJi
GrRO7nccmPWJwVD8r7C+CKjdCq7ZIyQKWpdZm5/8VHQvHppMOjECXDZiqsrD4wY+blE+s2NEN/oU
WtESZd9a+DsnzSKsuOhKgUhBPIfDVdZhgyl2KqCHW8wRp+5N8UhFl49TxqRo1EfUhSQhd8eX0vie
lkggYxq8C/UBoTO/fdM9eBJ1yorWhMWqTT9zG8+9UhHOII7x9adOKc6riyc+wu+4/8YHp8aGyqzf
rj5v1EIjxYZ3LS9pZQux83LAQNHxQ342EkqIP33417sS6VW3OnR5j5ZupQvUUjSNdY/PQoKQ/7xp
dpHBo+bh0hNGaLQfDLOqNhpyecb2i5C5poyQzGo3uRTkFOSOSxKXUZsKBbqJmGhoHW4HJu6imeU8
cPreAWHR12sT+ZAYQHhGZI97FXXzV6Lu2UcvnQjFszUMZle0SLFiJECgRFS3qdqaGTFE1Kgt+Nmu
LPhmyBKbK4FWhQJUo4iAOTS7dsbnlFi9pWSC5IeY0yIrJaAvJDGIfe3tMJqQEuvJ6+MxWfYR61kG
BEkz3zyunQQRP6HMnT3zNpnU0gMkt8NVAaCbyiaJILinQy8ug2O/4qLdVbTAb7zm8Obne9kQ3/fE
mauOaSwbxqgf9xYYyYcf2q6hva9F+LL+yPYzNeANWf8gppsZjcEsbHhQsdaIn4lJxla41Mnk8Br7
KlRyLtzb7biGN7d2GC0KeReuqxRJwBTz379z4v91IPifqPMzak9uKmS4hzupuwaxl6ysjuRGwH04
V1qmPzFBtiR6cTq4ZbX2FDKAT/quklYm5GAzmXwG7rw3giY1Ci2rZ8IeEyo4woeNlmr++1gUzWMr
aFLHrbGo5pcNofGHAeXMl2Qjp37TXcgvhxAKZ0a1cqRe5ZvfV2OOeAfD5DXUkPaycY77H7EOwy3f
Zz8DeDuoANJyzryr91IexmQeqcv2T/er4vNNxQcwKukz6VYoYTvgDoYZ4u05zDJXxp8liBCyZ0Ki
ssTAGVayczXOmhA48VxNI3q3FXAWi2aUslGBVLBTm38rkyE3VXab5LLWqWlIztYblu4G6CztP917
nVsfuGqxF9+e9Mx65z9skphdxEgHv9vq53Y7jsKi06NXhAMYfeHp9FNsvpPcoJHY2EMAdNEB88fM
/GAt2uHYKE41ftm8wdgvRGPGas0ungtvA6jFNlNiWBqOiM23jwmymgevM0gTF/MjlxLeVchGtC/p
k0DFYxqNC0H05JqUy9k8HSG3zv2iVVEFvv2m4FgWjNMUU94XitrhYb69+EF71epsxIybD3xW7nud
xCMM1uXeZ7biSNdyheBAnCxBd0RBQJf3RmZreHsUqCYtvogMQNEWA4QHryQ9Po3rcjfj1wJgtzkN
pzHtXIxBDABFnJHAeTT8cBhR9fkEcS6AZXt/aByWWkCakP27M61FKwSEjG0R0vJlw5EbbkWuChZ/
sA2ELUTSyvb15QXmK7HJsb9fn3OUI5nGZNAFOsGRq4Dh4smK4nvGYOd8sWZ1Be6Na9yYkCvGOkpp
/n/lmbAqPcCeQxLtR+yCmuI1Rkequ0HUM17vVpN80NjP4ohSXfRaUKY9MxYp+Qnnsz7fsk8byxSN
3Q+ceYUKlQ8SsExLBz1lpakEQeb3mKoBB6/UgWd5i6x86MEReZ9GQQHzLdabTVW3J0a0NEs9b+GP
NxRHOibfjhpPpvOGNZCemrMZR/c/hGjyNO/GAs4SHFPQFilLQmcNsg4nF1I6sXSyQomQaUOqlCpw
d7Nh4yREtnwWq9d9e2KGSfcxDDfJtdAaBDlyQhZuSKT8e04hJAJIQqh5Tp2v9QKuG0+YaVkKuZyh
iyU6WoFfSEy6+aI+JrHh3hCKtyEuOFPjJY/oJHGnsx2TEcauzVc1e1bEUeThdYjFC9shMAwxnLBt
TY3aYi7VtDKfPLpvgCIvZHYP1UyITV6Qo2H/fvS9LA7K3dXmeWDzUpoEboadL12+sXEKGa5wO8gz
HnGLjGSOaD7wTUoTmFQqo08pp8qZQWSODNt2wQzkVeXOgh7VRxXVTsD1JGGx1a3O3UCPEW06/fP8
q9zNDt6+OScZPXm33oeaiI6X4uK2yIkhFWSQN1ZmtIqLXhwDjIDpLtdq0QAnButumeX3HbuXt1d/
7uraM/Y5nSSQDek1mh3ED9Z8Z+Y45VUusdWiaNnSY8D5ouMKFnJN05TPiodVElGnsT8cY3lvJyzQ
e3Dh7gxzTZf3NDRgntpZGUqbmXc41XujUuHYvdNg0DPJnpOvhVvmRM1NBPB7T8lgoF58FwkHFvLS
vwhyO9ujQxRFXhSXfaDz4+2hGbEURCq3m/HzHsP7gL/MCQOzBW4eze8ITCOtI4yWgRL7uLXsKq1f
oIkvTOSw7tlnWPCnGJ518olGtGBmjIfQQHs32IQNJ/cHhbdrO1rAXMjgtwGfXtHkxiln7NBETtYp
BM1iz/G+mO7BRdH7ssozfsOm6a2EBI+AIVUUGHBxrMXM7OxbaD5UbYs252iC98b0zb4HbxtuZUCv
WwFZLNY+MOy50lnY2rX7PVF4imzz4fUVCG+5t2PLjL8CULRDVaDapiJKi6igqTZOfaI4kBUkSx/0
S6jVJk2JWWpiMBJAdVeOJk3ZV7vLVb64mdpXtEFJO9y4GprTHzk0Ah+uYXPpMI1r4PFmSqUDZ9pd
2OXmgBxSu7EEAjFm73e5FjPjgpppCZk/LkZklVQZwCZ+aOkxzqXK9pGq3MXAi1ByVOd2EYqWDt3g
rDs+Idmh+tFOMGXIyKUUZYCvGfmupHwa6iwNGFAlJLJyBnbf6Go+kh/cgNCZ7+KKeOHUOrCcWBwJ
Qu9SHgdLD2L/XAREWsQgiTdIGCsSRzGt4Wt6nJMbON27/w+5F6Jaa2sexs/aMMIyuCrbh+widVlI
Rf7vsNe5WBC3axAzC7jrK+P6VcT1gSsuUvJLJd8G1E5+lCFDDuJyW31NZUYaB3TpaRGbIUMTt8x2
4E4+z5rK4e0xc2TYaxa/Tb/AKFMAYoY8CDAmZz4bhhYwB/kwQKzNt/BVdYrvJgFaqDUOoRvsmtzO
yRGWfrvqTCmzXrcDiSg4P89Higdu11ikptdPE42UJbxsDtd4dYJUNVDCukeA8oBNpsaGJYFOow0D
aMI8h5Lsw31LESagHBvduGdS6irV5BP6OLhd5wNC19z9zY9orYky04rZIhMVEqBtySPlDbGXOx+B
b2u1YGZAbsnzATaz5rHralSCve+u4+dIKryf9pmWEtA6lvJ+UsFO4k11HAR98gMT74Qx1aecFfF2
hfaZYYu0r7y8gGS99N4jOgAEeUvPai9o7+AS+Qm1/Jgme6JRklmpzGYRxt6mSN5JRxCUltdVhU6v
qrH/XtT6QBofMe4cXDRgkpYXVWnT7Utic+++4GwuKPo+y4qm/U1Z3D+wKxGwOvSubwW1NoPwo5z7
eFa9g/ympADjns2z+V/icwCznd9n66mtvP5T9Zz/EdbrBvCDS08gRIYpjrrtvLh6uO8XcawpyxuP
6w7kn7jBPqNkHVwy5TCFpjDx1WBcvHIXPs2/MuqhfnRIcBK0qtJfeZD5/D0tXfl4URKnIhRyWUcw
MAzAUmedjuzgHJNNyG7bTLP86/uA7/7qt1Bpfj9N1EumymwkdIVs2e4+Uz3YRiuQ8h33l0ItJRLB
G6ce9jVYtkWg/sx0YoOjxhHUnhCcRL2d7mkSabOumK6DHS5V/56a95PwgT+QFSPTNSWB6ppmxmNQ
kXieH3IeAyfOYaOyFRzjoQvlrAKkp+xEVlN1QCtlM+u5MNT+MlpMe+42X0GoqjKHKo4VltX3PDp4
m+Ktxp/PrI//SwlcOaOpSaW++U9UFms7oAgxrPR9wghxjioyfJzqlWXx9Qv1Jmidwl3K1/LkzG9C
kDqxyN85Ukimz3DfvlkRCOKtz7f23geiu6+joMnkJJAc/3EiOVW2gQKKbtbuTyDdAV1c2n+te05g
xyoeCt+xoIShXx6tvkXY9J/Z0B05o+lWhrCifMuyJxnTXt6d7A8DfpxonDhs3LO9H+ot8PFhp7ks
VDmpFrHz/s2wp4doaOS107b37mRRxUpFBUxKGPzGWP/4uomkKtokSnwy7ucRuO42Nb5dVCPdBFx7
QDmTOFTGOUTf/wll82JYQz5SlB2vtnXD2+b1i9WPtDwjvS6hwZ/8LhiydtiRl3PVqEYkAhyVl3HN
AKk4t63x2+qxxW1P0w2NtGbdyEEzcZD+e0k0DiOUxOFZtEHp4nQxNanFgY5O3IfrAjrvLsA9bd59
N9n0/PEj3QVaGcMHBjn1mJCkGJj46RcShg4wC0uEGPS1iAeIFnVu+X4HBhJQ6wr+HpiweTLC6Z/g
eHrvH6YvhxZqKa6Z1aGFbLqSoi0f7wovIIth3rA1ir7bFhhQ5jvwo+NqJ7KSAA6IyNJUUsvQjpGN
aE3a38Lwzq2DBhjROWPCV39DqzA9Cz6MfkxXpcOK4BeGz50EfOY+XLv0vBKq0AXh1DHoEQLSvXA7
GqryO82fOuBuz6a22ab2KfEFHheeriV2IZZfrhsAuvJM6PY9J9LSyRbrbW35MdCBGM0reVu0Fqs+
vu+DO6k39r4kR8PNsWKzBD2UeoldnYk3KdUDQtMR2vMLMpIAFf+uQBZE7/RTS+K1NHvCREm3PpMC
TG1Wc7ZY2XfKQfGC4wU160jAKbmW3esdQApAULW0Bye2nwPAYpg72aQn9RC+GJsrfp3ymT0jnjqO
15poRXOmfXZwg+gt7xq/e1R6WTidxRPCoGzzBCbYjRjWkYVFGCnGpBAouN91HmKVJbMjdWXvTrVO
sz5DJMPe6NeLD8QTWhG79nfpajjTsn9IHLOndLJ8o7QCh2XzW1fnmrBH1SezKb82CPuriRvDPXMg
idw6fd/i/XbfC7RTK3WaCwO1ltnaOuGV7Q8qmVCrFx13H5yckaEL1dtLZzaNf0z+8oYcN4BSuo6J
DP5B0rPh8upEDk8018Vo0nIJwraKFlc5bSSLzqhGRMHwq8IDepdepc09C799Q5PjviyfSkYfzobh
RUTZgKViGh0KGtjJo9lFAMYVkNF0KNw/5DxsXD50LorJYy0yHI50lrMxsuSUy9MopZpVnRJaPhz9
jAnx+RN3gr15bbsMSFdCLbRI/9aJ4n0kX7ToocARMOyR0hWYQ1wI4PAY6Z2cBLiiUMdBRcx5X748
o6Uy3n1nvIoyeEjr8atUwt61gOINJF4PwgerY+koC5oYjVKVwzBQcwdrZDmsW6rl6MsAWMvcW/9T
yst5DCClI1sWw1NHsderH+BScZ30/LDncn+oM+bjaAFf18KLbfBFmQsuR2aTMNo4vPP/JTuPEmLq
zlRUA3jL7QVXoA9UcGxmPyzJ9Za91P01qBdTzv1wLnBsvNc53jrJPopqop74iRNWjVbv6LWAIqcu
Eka4apzEUMt7dvEssadzvAPVOES0cvEVWilzxkhtcpKppsQZ3RaNuxHySKsQliRd/IYb1wkLAoM5
e96WBqvVpConFvhCunXZBcl2685NilsFysxEk72fciaZRLiQgAv5S2qafekZcp79KxFeROnCiO8C
vzDcZ5o2CN3FK9avgpY2s/fWj4F9EGKlbzivkcwXX4LKbR7to3UAINnmOIrvfmTjLFtf71Nb4e7y
n9IxeCT8JY9THrL9avSofuTZMqk62ScCN4CqnYttFJCP7wF6sSwtTMSsoDKRZldATyz/5X6c3YqV
VIgI9PbtsJIRfW1XgSsA3yU+bEg5zHHzpwpyKN9IyNCpZFZXaB1OU7hdobT1iJb+4+J/07GtCqnG
WS5jxN2m7Esd88hrrnPK90aaWZS1RFEEpE+HmySheWXTbEG4wOITkqLugp1uIinrkB4wHX0sxg+V
9hTHrN15zX3JkBu7lAByz4WpOS0uSHHSRGQtLEZwOIBd+y28jvTkcVzWouOUI9SN+VqTABowgm5f
5wvr1C7jyD75ubWU9zdEqJALNjTiawrmnjrzpG42BCLSaDK8mVZNP67je351VUDbNUdbKuse+NeM
+MtNRVDsmJa16mwFChXSiaPQqCPZACd/00rsAuyQj8OQ/LvDQOJ27l3df9wU2AOcFX+xzelAeUdM
kEzRQm/v/XM+dF+9qvrhmsFrEoGpP0f/hTS2fsaiv9VYIV2Hw8/RzjsJqeBM0tiVdyCs/8cHS6d4
GB5x5yTuG4W2uTsLC2xmXHGTXCgmxgzXykDNyY8bLV6trQsKe+DHeErPSAiOQs/kyQ7CJeZ4UfX+
FylOwwO/iyY7OQvbeUo4+yOIj+K5kDDxNxeVR3/r+5gD9THanwhXHKk9XTAcBVXwP8HY5AxJjOhf
+iKsGkr2EVHKEpqr4NAK8hq2S8/eWoZ9+HdPOLBH4LjqoPVnnc/l2wrVuAUWk4FZ7yngaYN93LtT
22WmuC7Ctnlx47LBx3KBMGrJ/CPK26bVZVHv0gzsza1+ai/EkRZ2b+HGXwN6dtaIUnPHTv/477Xp
uWL2IHnQbWi7khL2r5WSbivOWkjOrEh9B4FpQWSmzgLrgYh6ZTRJeBDy7m4BmO6hF/Ye54CJ9qrL
7F21AByQCUswKZrzpE0MOyINPEAmLGOmUOh2gg9yX3vz9fzo6g46FkeoJqJNDoDtrKy4b8D9MVWH
54YCM07XKTRH79oBlFd9F3YD+zW+Q0yj/C0Zj1NMaFD17zrr4rh2o+KKAvYc8EmAhBtBpeRRr+0K
r359tMaLjHwp0I+dD1855ynrVHF2uisDJG2xeOMj0ICVNe6/1z8SHfHfTR0rN+vs7Is3DlkwQS46
87U8S3NsFSxk/bkFjZwUaJZAAhXXqARQKRIHQ3uMvfOkLxEXoyAP8uEmumMk3NSnN5yDKyRaml6Y
pxIXEXJZK6BvFZ629AtnM+S++5LtniMDupgpFAxSAbnwLwfoa48i5kKcDt0Mqz3VV+7bvRilP7f6
WOUxdrRF2Lgx1dMFrSDU9K50o1Wvee/p1SS/JJUPD1PV3Bqw1qYcASbUEjX7RZ1SR8xg5KiS5ytW
kN75NE/C8Qgey+UpE9+nTNk3ntRijnrJKOJ+RtBxlpNLxYw9KlxdAtjQcisAfxz9QNlGjmWmM81K
+Z3SSketeAB/UsGS3miWgsciEoTHufxqmvFHFGQEkeqMRl+9gex7JN0uL+170wytBWACdd24Pvy5
diXLCPyiLp4DnbuyGsngHzSip8khwVVk1nByDJsMG+yihLqFIKNwdvDCL7iX1/fjMCqp4m0f1xwE
TPe+zwJCWVbHlfpMLxN+FGWfYJ4fxjhH7py3bD1lFi05zZ0nT08vQpYS2mTL8zKnJvvRWVl8EGsk
DzkSZ0FbkqoWflEbyAlwTL6gzcx5FqUZT5smqIbWJm7mSM/LIy+17YhNcbm0oyLiHEhT0J/ywT8X
UoW5nSQfufUN7J7pMUKDQ6EyH2aABrYoovot7irMmnIc6Hy7X79zsLW16zjOa5HyBaSJdyx25sKR
RgpKAVv1KAae7nlkNkbUVd4kzKXzTtv6MnpT+SoCeTfE6pdnL22C8OBj3y1z/lcKcMQSY7y4uLGD
bnLRbcn56OcJrHQiPVeb3xIB3GEkveFqeog/EvM3HRLaZfgzuUiKFgcXJInggd8mYnUs6jVrs9bs
elpbUDB5eRINkRI3XAx8Smfg8q9YOD2LsFZnfb1NOdeoLkN5ariyR+EuLbYKeXpBTyNFPCRiA3pg
3haSFox8eu/i14dTyziDRf4JKqTfO8jdBurdWf8yL4tqdNA4hUCdNeKAt3hIL6aGQ7OGk7j7LRuP
baZ7kBRywrznCG4mbJIGXSHCNau2cNFwGXYnqCPT/AEYwKjco2WO0dvPRPJ+sdZawBH4wbSMD4qS
VwTO4uTOOZz9lx0YPj2uUPkBnh0CzvW1bCXgbmfODgIlXxZVtNTIh5OFXSABTzRrfI8QRd3lXjhD
HqVBtIiwWOt7gf3uITZhuZifGJx0i9SecBJG+iowD1HWdcQplkgtw7j9G5+0Doq8lh9nynlJ9y0k
NtG+nBAub0i90fySX4boHqxuXjudF4EZp5SPm4nuQhtfWcooX8RssZVKrDOOTK1tQypcUWEsKunJ
9MvA7OSOGkCTLIOE3Oibv6Nimh1ODiKzoV6fCNI4G+DbGK06jmXGUpmK0pO32OIaUdHBbIJ+pCo+
BlB7e8cn74QgMHzWctTk7db7ASukDpMfOGmj5gx6ml82eUKqySAYXFblP78y8tC6wv9ceMtYF/jX
2VyQ8vrFT0RcXa/sByRRzUTD7z0TKdcScZM+PNtyCLtXFl6QvQT5HFwf4b3tJLmHmuVOkXZYr3sS
u4WCbaZzlc5RzzO5xkKLSsDTpJ/4X66pSBkGfGQnKC+gINaF1MFwnpNvUNI+43JqTXQA/CPM/EGZ
rELTICJIkfVpqOnnRTByDBY7KAOR4F8cW4KiOZKqZC1l/nw2Rz+jzlcQ+ebPJ0621TSrnBhEPedC
ie7lALKYw1+4P8Y3y/UPahDQazuSdPJ7CojfgV+nML4yVPOjCvfO2j44NQ7EtH0S6pIoTML2MTJq
qcKy8RCaLkwlA5B2hE0ZnzAiiSLrmUX89p7Au8vXcG/dn1kiVhN/7KduIOAEZoR+nLORqjkyTenG
SgShE2JGndrFXBXQTXGeWfNCtdipNJW83HbX17xBvKXdJ1jPLcFSG1TQpifxCl+MDGCffyr0o38l
yeZN20bfjXux/rVD2gAZlDGmu3dmhRD4xwnFBFYfI+NnXRQHdtvT8UXLdafrrhPxjbcCLx5shLxY
LQMPruh4RZ+Qw4bXjUUveyFLVB/c6jzoCMGE2M88PX35LH10UYu67tuf+lcNPCgUtKw67bOEywsM
7a4kw6Tu2XZB/LncgMtAQpcyGemGeVoTlFD84+nGWy6gJ7YxVPNdD1AKwd92LGuJf7myUBvEwu5G
GOyfBmKGpNsU2vlNfuZax5rQtU6OYxMLYLkZZKA91LCXIt27w2x+M7c9AwHXmVsFtElxFSaOUAJs
v1v5sCJ5C2YW6kfiyo1WPKyzpK/C/nIo3V6tTeqwDmOyQRBMYUaFjWZc1H1iRugc0L5DqR7ObKU4
i+fSMdT9+HOgvKlI4CqGps+3UBZZ4ZYpTa2u+qgJyaaNyvGOorsG02e6XBVRmbO3GFseL8bcvb69
m/hOhhboiv+G+yA0kFNQJOnUfEw3SpPHZ91DH9UZK+pXY8MvpJ5JXg2A0DR3+yPBmP1oF19v16PF
NFcL974l6Q8lAzI5Vw5Vohw3tO7e4XOg7YJR7huUb27BtrU8Yg/JnPj4hjGrbES0s/PNAqxn1YU+
LOFoB7d5k0MVajiqfI6bx+0yFwwpWGi2vgUVnZ8qwyj+GMRmkAJhgJHRYF55FXNHT72jAo1wjxjP
SDPy2Umsb3QCcuKILHIAxDrEw+SKrQZob1wVlw0vL8upoKipXTTqgNIGp24xdY8LoS8PeGyYeAoK
bcpOsrFXSq0EcQHOhl9g2e4IPhHXeKouIcjiAZw5w07vCuPgCdesDDCskPD0F3wqlwMtX3yFC8Sp
wI7oDTegUHV2b209PMkHfAJo6mUu5v3jMZ5ZKypWCP24z8DeVAeGkbxzo5x7YdO7fLmJimTqlLfK
XwfiaRaDr2EUZ2mR7pDsY9p1GbVCvuCMkP+Y+FmNaY+SeT4p8vjLTeEvDNIIqTc/SS+skq8+/cCi
s32pg3Bn2vCBlt5MLkelA7hRFaWsuLYzPK2oNxpD5NhDAt8jiWzxMg6045y3MELZJ9C/Bji+KR53
rEgHFe1Z1hqW1Tmw8pbJpza5IGjLHHlEDN+JQ5Dsy8LpTGThJwR11IMNmzLqnqaUxMXrRTaVq22P
+UelaaR3Tfz1DjPb/jyLVs+tgSksgZa8hz06BhVkscvNPbki1HDRy7a0rzELcoeh1+XYpn7zcKdO
3MZz+iAR+/51h5fXZJnvhBAU3KANPRLIGjfZMOLGmj0sy+FsVQ5nC7H8M4EfRNteRg0D9wQ6UjUu
gk0W2/RR8HvaKQPJB0ps6fzYBX6laPgmtOgyN6hVEgg9y0fheAqfBSJADXNvakO9oxg4IRy7/42z
hbadpFQPMZcsTpNVYXMfd6sqQeqaViQtkDsLfW2LADaRvRQQ/gT/Pm/HQgWi5X4GshyxnUXy/LJe
fFTLo/Md/wnszOjR9fj3lizIeFoSNIrcfm4IAGrtKj9SotBCJQbEZyUfe+Xh6jLmn3DKO7OE6FAF
bqh5GU5xeBke8aRmEJFcyTJJxAH0btRAMi7Phyu9CrAwLeEYS1WyWmRX7ManxTk8sCEMXrh6819q
8ZkRiprIXqHY0UUXRoW0V/7BqnfsjSWgxECxcq333n1hzxwY22m8WIIppjOzvApMz4IJPz3sAt5D
sW7/S7OVl2odcyv0B9KOJLIFsqqjA0A+xTYQJWUgyjwIQdylCneJgtjJMg9G/ALIuX1uN8RYuwmf
ojcAVkRBOFf+dqJ/GVXjm9w7BBGmV8LfxSR3pdg2w07UeVjvw2A8zzLwrjYkkA4EShRQO3spzh2B
cId7iBvGIguUwlx8Ecop4DuPJ490QiLtBV+DvFG57l/Upz+j+YZfFMQheiwQPbeOLTAn/lguiPlq
L2GD7B4+SdV2AwgRBZxwjxJxCme7bJB/yeXs41HWWqzdKzSpR9U2lXj27vG2SRL+uGBT7Vkg2moM
Kr8kdkYB/DFiwvNQ6YQC8/TN008E8JzJI9ZIF4jH8CNTYSqux+Q37JVwopxUy+KtGuBSYHSQzKmY
jDu5JO08le3vuyZBg3l/M9MTFN/PhzBhyaA0t7wOE1OBUYFuGCFh8HLDnKISh/iqOQ/c1XZwd4Dm
TNdoiuYD7dkOTzyi5jZsmueJMiWQTidzyawGLNVLr8GmdwsT6CIksEj6HlV0eg6itXgNrO5UA9kT
lk1nZH//lJEeIxkvRvnvIx/IyUcZKef25XtNOYzCYJ2XA4RdZApLPUsS3ycmCBpl39+VEOmDrqJN
ijJyM+8lVHQXog2bzUIWSBnsKpGlGeC27MQJBu9lVr9Q0ZLjwtVW8Aa9J1ux5+qvivzzDnEJghNs
MzsbQbQO/D9uVujxD5bxJ8Nsy/70RPZn1wwAYyyvlsoGJsVb5PSOEpTnkBptZ6vD5dSL6aI4z1FH
x781FE0JLZkflF/FxavRJDVUNXnFUKlm62R/aAxL3bTq4kJ6HLpxJJXM/EWFHh/pbSbrZP1aZsEc
NKGk7E4jBfbwdlonh4VbyBwmXzxRbpqAeSBYtE8w3VhCNuWU/wPdLowIdFbyxnAiacqgkOhhT9aD
71OrCpV0iZmKP2XdU6w5IGnHvbsko2xA+F0kSuYL7OEgH/aOGEz28ffNI8wiynhTJim12hrzHgbX
9LkjLWRZgsxFD+fIHFdPj1gD7zdA/jCv9A9Bwjb1/jJsWNiWmEzz0R3x5jfIoyZsjbhVfkhNNkUB
TaL/ozA5JAOKcPlxZ5PqABDVSl7arJD7Rr0Q+UVJC/ZFeu6U6BX2Q1YMQSnuQz1FDRWRo0WMfGhg
BeV2hHhb8tXruVDqlQJb9+noHX+NJqMigOGztVWr7eXfHZ3miLnHfiQ2AkwgLw8xst9FFRX7Ef8Z
qJTzwCLc8FrFEzZh9kANGNqMZKxCMMzKThk8AqvlQt65pb0sq0TI9Pdf8Byi3d1npd1IwTCgk8Pt
+nOhQ14GUoaMnf/RVdv4OG4QWaI0rO8wHhbQd+SbylmIlCFoS2/YeFR/17u07NMt9qWE7GCHsBVA
icNvYN1nR5EHEOzTWktIUCLtZNozjoNEJ85+vkGsXII5JzIaDR2YfYVgGWq/e24slOVLtyRTVX41
l4mbYEIvyz6g0mCXAwBm5kwLnEwSo4N1VOMXobpbcb99Bl3lTzOUz53uktb3BbESrz+AaTUlYnor
vaiFurTlff/erC+mvtkEwrFP/s8rF2LAskZaNv5KgUykChCeQWmWAeWJxpRwRJUYTZWt7fUgJq5x
4BNM9NWxubCNXTabQBn5A2h5Qouc5662p78DzeFMLruyM2t0ZwYbwhFWf+FzlkUVfH7I8d2Ex/hK
BqbJF3vRvqeVlhQx/mpylhg5dpvagUoYmvWOU2JbkN3fZt2lpFLF7Pje+F/KLapGj59uhnDvuMbI
2bt6Vb3az1gu+zw4pywr8m6fIiGuUUgcr/gRetArosGnsc0n8Uv9OHGZ0GqeNP+28PnbYXEOpK0y
haqTfpSKydxuVO/xn5lZcFKDpHpZ5TK2l2jnJQRaG4YXEO2G7w/UynlYg0SszLFwhkXluVeljgQ4
CXEGoqAtBlNNMuRygmbjIjipDZmWyxEsmvhEoSMXpJk7Hy75jwZMUVbHU2x6K+hJ9x6DRqS6mXE5
x4hBzuO/G2ah4Bp8d0ew6Mbhgg55qNDW0sjyB/LAOH2egrfiKRRpsLum8tsf3CU8PFE3J2P2Bt7F
5vcrzfl3/+6IhPYXY7yDIC90iAiK7rDGPHQHHUWdTcWFPuboehf4Sz5d/vtwa7LWZJ4SewLSMCZc
Xz/V9fouV4mcAwmEQIjfO90e0ry1vLQKxGsu82BaBkerlfgiyLReR/V+sWeO3TaHsZTMYnLnF/+u
4K3JuraSzyTyL2EZi1FliTmW+ZtCaRnk4O6VKwsOBi4fT4wdxwooRpH0hQIxSWywuK3mv1HDq7jo
DuHOaANDuumdIqqr3U3jLeHg8xTLwKtvcHKkgsgpsvlyvqO6JxtsV9Gmy8/O6TFbJfigGuyQ7QIg
7rbIc+kXVeYOnIGsvE+MvbGH2ssH2oFeOzPQwWko+DIdkEXd5wpsyj8+BLFBQkGyI9zg3u3T5w8j
ysezLOERUmKCyj9nGxjRUYHx2BFaERyB8vOYXxCJPD/OIOaw1g/Wk0oDHmGZFQq0jssGMyAogdq5
h3yGCmG5xnMrEhnfLDiEyWxoGuIo8YulAsEQvxLTTaTw6mSkvRbsHMjaIJ9b8V/W+dXPXbeEWf2v
ET1h8HQQg4QO2EwMKTIE3yee6v5/BlMu7E3DeM2xv1bIjLGWkOjNIqPA3n64CqWbf3mUkpY62ErT
3By9CLVBKUWhCQ3GKzTk6MwGAZkRXb1opEksTQlRufiXQACPXd7ks5W9teUifDiA6xwT+piYFgMW
9lVStUrpESkTAS3odUmVN6ZM5pcVEQXus2ygzH5vWQ8fG2OL256e74i/ldkodtMrBR673y8KlGaW
QzobkNvxIADQ6WFvcNKD2lAQKLmAokL6D73V/obE4iX0SrsKiF3JKUuVjQeTbK9CqYTAHfGi3eJ4
Tx6iUqVX5PSA/ufIqGA4pt4vLsK+6g+BAFMI2JpMVufaSEzUZbsjxQLOROzHt8M0gzjsnRN4UviS
wQ+cjEQxR+VpDe8oPicJ31SiedTjyQEtHNetu8+M9OHmTCsuJ053qTysn1R6Nh2h7Vf9uboQEsxs
K+ivrZv7X/QyuIIdOfMpGbI4+TykHsKhAm7rZtINvZaCgbIDSk/KNv32oc/NrHoRqC60iDy430iN
wBbp9BoAh0xxIeCdiLIMJM7u6kdPBA2WmQm4ynNdvGm4tGL4PR9x7Twfz4v5HxNjDRG6DfpTgwlu
nck8lZey7wsdBzSKiVWkH7togk3zdwtF61D9+naRJjz9VXl0hRdD/UoyGiayE/UnU4TAEWlrAGKn
UrSehxpJRk/qHUxkg+czvtldGagdofeS/mX3lxcjFa7xS5Dlt+dYbdwIG6tuacGMLNGRVTR+MG2+
rwA2D7729/JGIaOr3A2z6e3PX16AVLRErk3pqXQm5btGXN57iSIO/AGe3QPADfMx5f0w8SeZGDZP
jR+1+wpLwWXQVJUd9F/7FVXM04W5DEJ1H6SeaFjh9Teka+bH/tnEDQWswnk2H3vOlhunVouW0zi3
64gp9ePsczaqOkga6MR5W7zn3uFqDCZ738qbhhVTZ8N5hljQ8G3U+XSiTfUHNlhxdWGhCtYKgjah
KZkY4xgOdu+ESKY4Le7rSgJoOcvvm2Jq6WhLSexC3NPtXuZhiCnCWoN+QS+8Ku/5PeQ8bLo6xy7e
99vygi9iAFLENKr+SakArlTndQvD6c9NvPuCTFJH44csgQqscLVpZM9NihddRdoZccFqhgo1TaMs
4AC3KhGzRRYy5OjXI5WK2scS/Z1TafGf4eRNNsyPMy2AuBsAX9Dxj8fR7bJfaBHB3NFapnInGsqU
p4ykbEDY3c5mAxenKF6FBqpIr9vatDEogIrAmZLYtYM/BaV29EhlCqMwkr3owEN0nxA0/6tUzCL8
/ewZvsTriukpgJpDvPcWCkqyxDkl7abwy0db4hioglmi9pNKvfhqsZd7TFWhMoCkCwZCr4BEO46/
S5SnXCN7MRuzuX0VzXz4MUqaQGR7A2bnimTPsl3/yQTp+VM4TRJo80WKhrBFJIo7Vf+IWJLQrOWg
gph4otN/3+y5y+9Z6aBJaqReFp9JsYXcOECKrVcyYNsaTtzdz6I9EO10DW5a23AG29qFS4VhPksa
wzeYGjV7MW6QYhX8jjmpJDlV+6sk5vmaM56PQRThEsutaacfZZIoDq972ZY4htg4M6xw0xCEt/X/
fQztq7KG78mGRVOj+lZnRwIK8SE3HEbrkre7EePovy0a+H+yKxeKSZXzSm+UhQtWCdMfBSJaULZF
wQLjJHS1GJ9TDNkn/H4t42C15yiouN8/fal2GLRgXwDbwQCysASt3//m1fc2fmxacANNl7BbDMdh
m+37+4SZ8BiEYqLHkltapgCyZnpm8x5+5yyUMrxbDa20xv/0v1HOzdAEk+43o3QHxln0SA9MHz4k
ykmI06lZ8uosFiNa48vW/w9aINEfI+3kZ/uZh4nbI5GSzA56+IeGtImbthnE7dgXSTcOBjiL3RUt
0HXYsblXhy+5yh3XH+GjtmBv/G4QC3++THH3vJk9NePZM2N+2FEhwd3jWOSgE+7pJjWU4ndI6gDC
+8qv0m+7OFgql4RrJT4aGQT0FWSPqXCQu406LlRN15Dxu++ZCzAynAtL/o8QwZYedUu1+oYRKoMv
jcGZ7MjXuYrEQOh0nFy+RGY3kFuol5PG4s5Eb8c4oO6cRrwtiDDmO48tCmV1ILycNk0qpR5rFCRg
vfXndFe1fFyXu/7wprrL8Pv12DzyqCNfoRhbPqb63lCExkwGL8H+TjrcZwFR74vabvZ3osNXaBhG
T47VqiycZ5233Ry/5HVJBzJm3RjCd2vNWriwBQm0/VNE4A9satuKEseE0lliv1KSBRUehX+1llXl
lQG0Kff8pr2zQwndyqbjWlHFI8XGp9ruC6j7SCBzkcUuDLoPW8p9pr+yAhIIBJM2F6c9bs4GZpss
lqd64Ox1lyywgO2hDMgG96Vln9c9qvj0fSOaDmXHoZ4seD/vVVgX3kiX3O2fS7J/rjxmF3rWJL1R
5I23pAg+A44O4NB7MxEFEN+IV2qYZR29VgN63G4eXaTxpSFqBhjUn6+17qjgD+HfCTOFO9uoPIqK
qA5R6LUgHb7gqOB7YJnDBCYseBprI6Lt8SyC+SzEq7ERGD9zi4uGl1HZJGADVVZ3kzSAsR+KG8oZ
sA3NglD/UW9sQR/KsJWZrH76qAdKsiMz6WGvUpdhnnhKiRwnkZaewcT67A1RJOuva+6EHAKDdE8e
DKvuC9R2kBS1g4P/4HhRGDlhDHTUzGdwfL7kaTyE+nQdeAcXC7Qp1SJU2STsrpsQzrh+Ueq8deMl
/hyQwEMrD1lptInDTEhCCYxahY2ZaAek5oC1TSB0GnstFobQSy/GNT3ATfXq3HYL6HW1cEOBC2vx
Kp+U2fbzo9mswqYh8+4nTQkEmpUyiTCUhb9BBzfhXW6anZc8pr2JI7eXPAm7tyZULW2wBsLW4xus
l8tpee4gse1va6RIUpEgSPuvD3mJa1Q8j5YP8MW2lK7tIJM2EtK57qtzkVCPbSviZgnr40I83EUa
1ipgXifMfSIrgMi8wlCT4dLj7KxsvlZFgh8aHer5qm9MCLQdeBihqyLZaRqKaBEc8MwpGq2fRwGK
X237/4uyUymYZL4HjryVop//JvK+BeA4ZF3cCwXbIQ45KYHqMcNNj+2WNroXd5jmiF91CQ+ntozI
ZZ7nVkl0+1UkLNAVa5Hq9Rqcje0oYaHWxch1b7CefugKWt+if1LB/Lf3vIQ6+2hJW5i9Z6SraGWg
F+3mjeA3mVdqFTvtaXM9bgROfK8Zwq8CdNpJg1MwOQYmK1ef89ymNpFTDuGV5Y4Boyu9OM+k5qgU
Hh51Qy/gzDJOmP3A2v2dWEXf11FKoX5ncP5yQIt0MMiFkeaxoVuhQsFI7HSKas2DZlsZ51Uxh2iJ
W8XaNSc/ScRLpaBKivONn1vfuHAzR7e3uDKdoP0hVnR4ydXa47pyEoQj2lFNF0F3yas6Cr/n99S6
LIWFHuCl+Sw1RzrZ43jFDEZuIIwfw8BwqrWg5hJ7OUNWxmC8roZgAVe0Vl4NzrsDfq6QzAarYVgl
qSVHwwLPD8FqU9nxUVMGypDVjrEM+MIYTpF0Fa5rzwGfe1CQdrgp5VHw7P3y1vTzT0RGAl2bhn3h
4BHksfPcgcp9Vv7rnFo2uAe7OjBkejLu9egZsbKvlZAsgyHaF5Iyb0idthgEUdGzPqi4j8mdeN/7
VzXjV6sshvHWD+IXNuz+uFG8WaQ1TJTz3IaegjHH7n0cYFxu1HtuT87xifRQyOc4sAqmvLWf0dy5
wJlQ+Yvb2Onynx+54DFYT0TrUKvALDFHaJYVW3v5kJOMZ7XhaMIbkCf5/RnQgs2erKmsiR5/7Vyj
HlMcxJxc+IXWPuUBcRMho2DAyxELWIVfDSqhScubst1VdAWHPRkdY5R/rf0PFkg/yt3YNvjQf9Q9
nLVPgcUIPi5IF1qsaFjPpNoysv3vt3mNcbUIh96eVsoL2EQTQqf2RQVK3W2GpfUlo7WB4tna0viC
4ny27dGH/j2cpMDA5LhbbM24ienbNYuk2HFwiRnU5AXr+WLOFVMjWxVun6IRzE5OgUsa4v1XrdsH
4RZQDdLIe0nnCXGWa8JBE7n8Oj3jGW7ruKbHB0GRorAaZgV1C4OjtQ8VxVV7qUAHVDPveygC7LZp
v1zsyywCaXFv7+J4t/WCwhtfkgcmMgjwKWWtNiF6yX34kxLfoy8gU8quFfZs8JhydTYEkQg5IcU+
CDXpMqNThx9bFQCjOWfC9OIqH8jsP02MNRC81RCBymNS9yZNeJBJk2HxIp95IOujv5dif95cHZui
Ot+hEoiMRLkU4kKxfgDoanh3rbGdxiNNPA+Ac7EbQoca13f8Jx38PICPE2A8vzfUkfcaZvZ6ipkN
U95L6tuDZAeChd4fOzYftjTVVDeEH0kTgNH6us/B89sY8Pdy4HULeYMM7AZ30O96o2njuxWf1qAn
uJ6jQkJfFok7qSSJrOVLVFZjKQG9Euq6r5Ylfb4BcRNEanw5rXHsx3BIb4nwnXtatUQxwLRHvPmc
KjShpELt4zJiLRV2QMdxCtGlwkxTdblbRKIngE4KS5T/++mZ8QF2gctVJqcbY5pLmEsW1z5ZpRPi
LtC4LR+KTQqdXoC6qdAeOJZ7yZ+pI+H2zolsIt7IooFfVoDaNRde1QyUsviF71XaYBE2ugbDHD0g
Xq89izu16+sATGTjjHCe5HUJc5l5g4vy99R7wkPznvK2Km0zolZ601z0bCYf91BeZrVeh7SQizO+
w3sqOXdpNF1KGg7iHgMIqJ1PqlLv3LnJ3oEgccFMYQazGzGt++dhNhYRgUPXRgvBH9ju9+hLVVBj
aw/cmKlaso8fnBOOdTA8ECKIgUzJFJoWBcBqA1rklN4h2YK1dfl6pCTTqWV9HzTeE/roDPYi13eC
ImdQzc6V2eaOO3wX+OPbSash6KuUWXFf90rQlepyPqEPnobtDzTNbn8dyYC6fL5ZTk0qiI79eIm8
Yy/8UV2Q+fBXYMhabUVRbWZjULMAiU4gQoeU+vTJbkKrd+Jb6dskh5+bPtxBV7qrHsDDbaMCux8Z
0xF00rH2xBJkqB0f7QjJge7wZFtB+SR1fzXHqCcfyabfzkz0JW2iNTrNhnnPeRLOwnNqCXOi3/Z7
sYpQKN/maLOZaIYNMVVMrgTZ1dYcsD8ov6HXf8D3tkLA2JP0gi5sJerathKpaCsJkv14ejQTxgH7
CV6D/0I3w5qT5Q4/OYQWHIKYOXij+AttbuzOs7JTgiPP6sCsSbWI+7KeZ1eZos0mvb9mvQm6oRd6
Cgx1rhI+WmgzDuqcaielsWGa4dLc4e2QAWnwqsr3wlqDUzOknEUpHmDPtVCkg47UlTDLbeRJwJfH
DcpJsv1aQy+8M6P9z3x77LDJ2kr9QURL5Ncc1o9y31lxlFzLCRhCvUpb7cio9Sjn6HICQEuDbFKa
QehOEZKWvB6M84amdqm+UqT8vLtRsQv+uaUMgo3QU53cSZ0RefZfnJ0hQTnc6aHTyLw2Xx/YysKN
OS/WpGkodChnrQ6Ef61/yn+vwjdFNizOPcdQG86gKqcA2566Nz+wPt4l67dvHYyEDrXfXDLm1nz/
8/D5NO8dB4QFTTVnktKWiM9qWFsTkkeWIMpEyGbNFcohOTlqv/tOQmpBTeRFU4d0g13M9eAM2CEZ
IsDDDSkaqH+Pbg2rqZ5IwMuRHKebJKb56EyMOYIMCTvAJKqP35UACbAdqBEE6JfQ2gl7uZAop8kx
ZVDuVdmGCvdEyVodSG03NMESquFLFuiOJZ3fCc3J7qu/ymavw1kdvKAn5sa41NgMSwDF8bnaDoHC
TY8x3i8OFhKjNSwFzmgYI04ixiD/E8OZs5Ny0taXgvHJsUBlteiYA6ObunRYYW09E6l1dNWIjcll
03qOhPmetswLqkGpGVyhhbUzL05iBdgq/uTQLNYdeLOs0xBzasLZ3JPmCabj/sptoa669Cj3tm/y
D++ln8dtWaJdHqiKLI/gvIFz7guO9ksINGCmpl95PQY5to7EAdlXFvccnelE7uoYbek/YWullzZg
+fx4u5DeJl27GdYRGPL3GxYVLgFIQ89fstAsXoz0F8oPPPGK5hcwITgfWy6Tw0xnEiJCS0mW39my
ufpLKAdCyOnV3tUpYwDkA+m8H7sbgwDWu4GXN9whNw5kiynJIwHG7dL+qLC3DVHBzgj5B+ULghWm
Wyd1UsJ7jQdYLH4x93K+h0SBbQJNWiPhxbNHmhsw+q6Fe5syFQ/60qVZZGd3zOnnP1J+RuTrz/yV
Gs6kJo6bFM3CDeLmYn4i8s51yCwQ+bLjSaKEn1LQIVJwLzzqFisVAoOH2Uwj95psxpcoy/0KS0mY
7hekEe/s2KMLv2ZhwB88okR5lrKe7OBNdS+1Evt5PuzzktwrEnQPSBb9yAfzBd7jASuHMncjwfmM
eY4hfpS5L/y1R8HPwl2sCL6HNeHz3MsD4HyjNOwc58R3ca6EWXTDkf9mjmNeYF9CpHVtNfAVV8Y6
LPsmluumtVrHAWoRvx71Omx03iJRlerUtv9+BXJVKgMZYZi4kqyHBfW8vD6G52brZ7jInSpG+OZg
XG4P/69vnXz6/jqCnnHog5PLh/eV/96uec3xfsL/sdu5/t9+BUwN1SvID9ym31ObvfqpPMla8ZMW
DHuvJfsAI24OEV5y/HxWx+kvFyu+Frq7psz60Wxqu/5Xpytllg1zsJZ3yAHARbGhuE/yJhStsuoA
trWOGo/JDzuuW+dRE9eGg9Pkjqx5Eapvm/eLjdu+hqe2+XmPfOJkj8GpwERxRXpJNqeJ8uF2sTJs
fpKnV5wX+pUV/nq3VF7UBaUgN1gvFVwNvb1vWXejWedMmDJDy3kfBjkoDNfEshgT+PSOVy0O3BkC
uZkgORPcvZY7X7gtov+0CQAJJ97W9CG2EhEvMUZNwdJSAfbsHFT9ylSJsTVNE2S/3tcge6soFFPv
wqt7ZbLe/AjMeNHJKR1BqrTYGBbOc+psNqmJCsZORCoEGoUMp/TD+Yb+SdMk8cWOIyaEAlEmpaxV
901BYjEIcrQI9QgpXqN35XuLtcENPWjl6UpTV9KKI4AaingR1SEJU2AlH6db0ARMeM80vyH9OIQ4
mRHcUyaSQ7rY5xYr/tey0KNs6uyDbrlZvPuYjrypqx3GDYiYs0f1QTOeLPyqCmxxARCrAP8cZV/D
tyGwYLvc4yFBmtlQK5xaVWv417iBbjyHnwZR8lqa4b41YSij172D1/WtqekoO8lZhK6oobFzdOzU
fvVH/CfaDvDPytdDOsCEUsmF/anOoFNfn5gHviqAhho9zh8AyGQ6w8ESx0gqywBUXcdxOvf3vLKu
o3DX+0WcojNk9QPPCaVXlcs/8i9wnB/b4Stx9zVSEOFgfSdFBwsCviQhHgU/IN+oTkMiqzGKb9Nh
a37uc0Eow+NnsVY+/6Ir4NjGI2w88TB9zSQfrVEqe//u3u+pDN/uOQBu3AdHxI611+ryp7zHkuJE
1PELKiOzkNjOPXb8MncAHva0SkCBlunLHUtwMxoNQ2Rs7xmZuIYeMI+X4zzy7A5WhrY6xhs3cKFD
MsATA8farfrFkSIzjoy/+3/JlYXI9numPRn1FfIC4PKTQCXrmyKfJx1tidLUFC7MBh87Cvcb97+3
oAcDnTGzTFkaBzsegUKFjc0M5CIycvsxqokvtyPdt68MmAPRHLqokwyUYciNcxBNgV3mKBFBxmdw
HRYikZO/0OtErwrHjucHOCJ1PBbrnxHB+g+hNu/24u3cZcrx+CUtQJOySjG+yEGK2+y/HBfcllew
RyW2j3hKbjYZiyFc6esMKbu21iytTKhqb3NNZZbrwPA0il2DFJVAMPJG2LkE1M18CoYuVRcQxnnQ
NsE5BqkpUDKGQGSBQbZIV56U/1wL7cz3iESuNfkiKvibovJp11tvf4M5ayu4QYsrZXOCdSq5sGyk
3saIAGOtYyUOn9qJFFiF5EsAmePwhXG8oh2/J02LlvZhI8IMAr63mK68rbF8NvjbC2RTo/AopJec
ncvh4Xf5qA+AqEUKDMuuy8LpjSEUelDhC7tLJhJP2eyjXFADlTVQpykv2Hk3SWIm0DyTP7hF0sK3
XydaoVR2oPyLuS8CapqyEwdkl2/BgIe/Q1XpGzjOkcK2Q1l9Wm/IR3B+SKn2u4plqzhobMb2Yf4e
M6IbgsjtuUgTLG0qGJoZRtQ0g4ynw2ObBrbDlVAFLf8J7O/Kc22sdPVlptKdp+pJitqO+6f3M4QX
oKRUoyxkfpi6nhQCAJLAA0xIZUX7HrktbdMZvW37F/g02SFu6Q+v9JhsGE3RTWGJM9c/WF3cVyuG
jagZ0aWtGiqnnblibPrFRQmQYVdm4i7pQQrIfharvAZ+mTeh1q/BFddmf9X3UxYMGQYABmmkLcQT
FQQDyY+9Yc7VqG5SAJGF2fHheaVAMS8Xg2hgNk67A5D5sdqCPGLzgNMPO5O2+LcWfTpYnzjvO9jq
9wGNnPAimPS7XbNBXHY/6Cfn7pT3qtIfkN7Av5R3QHdDAW4SJ/5DXhnO+FOE9Hp/h0w+8/yQxRYr
/dibI8aGVVQSLbbKTBEH02rNPw8c/3ajrEQ3N9Sb+gXtkcooOZbSBI83nOWtnUXH46gLkkK6ZLDl
Mc/8hV7W55+2FSZT1Fb7FnElt/4UnkIJwggaZzgjob9A/rLGurv/WeYGdV25hzNuBXDoulvoemgL
v8vVs6xSx/OtPrjhw3R3Ys76Z0C13myhudOGZut7NNM7wvuz8SR6oDQ4FRVC6IpKRLN1g5WLL229
JoEr8bIFQ2nhFp6QsP0O0Ee+l0zoOp6P4AnrO2gek0pIaYvqhrDwmr34ge1aBaxO9i1FW4XXUM76
+EOreIN8S3pnFdn8I/XZ0ekGwDG6ao9RCVvFV6YmqOg12fK4M94H1/F5+qsZUK2W5XmVGCBUihSz
BrBvIu038dh2s4t8EgBdx/5EDviuwRfcH/pdv6lTulO70xPvOAzyi71x7sXlM0RMoueX4d5q76p4
WY9ELAV9JQQ2Y5QmumlID3LA1g4Nz2wJbDCKxwwqGWBapM/FuBoQsv4FBnTOA7n/7O0oX+zwf3Zg
Nq0bJGS2muH2T+LPmfUb5YmKkRYttNPKzHASO11sOSmUmMWlo/LTQJENK1ISC8tEMKnH5fLyYBGa
45Kq5nBN1AGHePwZ3GHUohlAIsO88OhhY8k6XQCs/sGYkNXR0BziJ8r/LW8pZnc+V1sYB49TrZsv
8/fnYpyYErHP52h20Nl5nWuozYHrcumKH/Ep/m5pNWjKhCnh0hnUAdI9qOTzXCxVodscxMDh7PTi
tD0Gq7iChPnPwgH+rJQaB0VWgmXTyFn/JEWYEsLBOAU0Bc1f+NYKukJYHb3iwuXAeHdifVLcr9R8
C8Gq300GUaJOa/u6b4CUfyvARM7t9VzhYDevl8BJEhfuwW7g7erswtjvVQ4LzH9I46FXmUNgKC/x
ZcLFp0ecfZyAYXwJ+75yzUb+F8cJPSolqFXz3NDMKcBcN+FjrVca0CVu9CDmVnCUve7lHqfCaOVf
38cqVjWaWNbz+m6SvPQ4k+HC24kZfVAfCI1ROrE/9naIfyFr8UObuqXmZtvja/SYZv3DWZF3Dcgp
iVNtDCsabWc85JjZ42//YW5ogh1l7erlSUBeLezztjm/M20T3sM17BwGRI7J6U+Jq7Q3KOSMRQ7Y
NUfKzCnQ6iGbFOLb8sPDIChHWKYgXc+MVEBs84eb7+2IjoL2RU/k7ULT0GRLFScszVznK6wkRr++
bUlAbWxVDG2DmqSvYqMTNQGY2HfpvQtlJue9NxUBdSx/quxyu9X4aXZJ7cb3JPI3cRm15uNzwCdI
bDHpb1fn83u1/9AehiIt9R3FCC5hhWMTob3MolKjjvTWyFvFq4Zc93YnMHf54r8VVqhE/l3t3TqQ
uWl+tLnW5TKVvH2dUzfCDVGxjZ2J23q9OyFKeC+cwN+OExMP0A6uM1vq+5z9LvQwO295MkB6X5IP
WtCOHjC61EYqwBTQWzKwVMnRAbk/+2QA1ooV1QQtDx/z7ZxXv9W9GJvZldKkxCcTtkC+tZkcJTfF
10aS9SRUcVhZKub9nPeb34MyeGwptUZAnGokh6SV62BkUnSzHv3j8pSywDyPpWAOJxmZCRjjJVmf
luJiJJkjm0JuGWgtl97KZMEeY71/IvM0m3z51C4xxgElyFVDL1QfQLrRfYOGD7Nx1Uvo/Nx2ettn
cLfvQINCxhNiW6BedTn+RpQ3emTVjKUjxoQYxxthBsdpLNTcDb4mBgkFoFtLvZyY+ZLaO0eMZ2c6
1RpMlH8r55r0/VsFmKANjXIpH3YLNt1laPtRZ8GhAKxONNbuVDUlhUXYLMhlCQR/kCe5IhgMOXCl
sEDq5bVHHvktc7xSN2mP0GyGWpPrX643uwcspqNFNUHwKz8V64tCVfdJY7v8flIWtuwwEcZqvPRb
WZ/C0iyuCnp2FT8/UllaU0fci5kzYQjpFqpQcKQOwPl8UgL4N2VLd9REYunJx40vsUl4LN1wWFyl
RmGdQPmvO1BGMKxiu/AcUunbv2c/aCOSp1MPnXRLDzHg0LT0I456qJZ4rzGdLGdUxBPC6u9n6ttn
RE2A0eVKdy9PwEYSc5ah5/3u6w9xG193HG2Aw+b91ydSy2sVSRog2PKrQYMfSO7M56FeL1W/rvRj
bSDgF3M5LpXuPYmklAZmthO53uV4QpcZ3NtTYKK/Zn6ba+MBjDdl/ZeWncMdtXdOtP6dWxRfdSkV
SO5+uJWUEdFLXxND3fAAKGQbi8Lw2yxwuz/4/yXNMtWFl8xIcnxWXacfQz3g8vER/FEVC24vOQOh
/eUOo+LL4kXSWikr2kOKgJwyfoNjwZ5rKr4anT10DzLzMRGQWognoOaIMpsaVoy/SatUFvegHEdi
SBnsCXCUOQy1cEMv2UHmc5h+FLYhEgZGCYsxgNfvsrimfeuv9m9XUtGJBAAWhCJNrAY7TUIrVHuD
Lf2BY/2fk7KFXlWfvSHrMRXkxjqz5SSG0uh9TuyX9j8ECxpwvzLdoXiBm+RqpyRNB39qcIVqyqbJ
QDlxXlBnKHF1x9bZy4OKswe0KWTbW7SafcF9hqzL0nzZUH8Fpa4joYLdyiVKvH1WkDk+1NxJbqrW
eGxoU2/w1s02CadbTlBnmlnFbTiaUxWDTKa0vdOVE/OO87gAfTKfTp9wKvC31PdpeV63gdfu7nHC
2D19lqb2hTEleKt22G7aXMDULqaYKSMOK+sTjhAFebJB4dxf83EFnzwzUQrhRj3gDlNg4K7HHfSV
EgTlGGH72q1u9lkCXAxj9rJmvPUmMb1qLwLn6EBJDg3Vv9Lpo/Up3aJCLJkUJYGkZ82/0L9qxtHX
dPhKTupVU219A9399epkUCJaM/CwdHMN354XjP/MuL5DG7htgr1P9Ufgm9chu76RYOJ2PiRAPIHW
eZt+FijGOAfe3rlodgKP8lBlGifMGoOWpV0CLLQZcm7B98iNHo6VnoXfeTlQI1C9gG/P/N+jdpoy
7l1wlBmJmk2U1GAZxA/T9EAb1UnwINl9+UwesYxx4WR9VQfz487G7GfoXlCGop3geqh8liPgNr9h
T/GQe9EkEFZSt0xq6MDK9k9cSlcuFV/bk0Be1iCuEIZ/dAwdkBGu88QXIQFfxtdOCN4JuSHV70MO
ZcwdcsIMHEDwtOhnYPVgxjaMv5pNFFFK5QLSakkiOoe9bjZ8dhiBdX+k45M+VMXXu5FS/jPfyklg
ssda282SzYCu+JiU3hSQ7g8QGlpdcyG44yWRoxJiQ3J9U9phz0XhPK2i6MUFL31rtN92rd7DWLTy
ncp5FHy/Hu17bb9LMZ8iANCyBns7fhYAal+kfvdZRhd2oC81kVmh7eXy6E61eRIwkeX01Px/LGPk
9DZw9rwNu5vc6NaKTQhcrska3mUYK3XaF0RJZZkXYekAsOnBBSUgKcYeoWE0XZBVnA0iX89tlo7U
49iVo8T5cRdcU4WFP51DK38gBZ0C8YnyaNBcK8NOTqKCtPVB01DsHfVeIB/oQqVwGATthLp8E40B
azflTUltf31dCRNk+r2pUTKRYhPniTX8HNu7MkKrUWmHWyXUfj1ZoC3iCZpIjId+Q5zViFkX/wTL
dQ82OUPEZXQhT/BXvjMFlWYSeMJUaOfqJBkZqSgPmzoMKq0QRCU0iCqTJUMYSiaNN4nXsPItNn3p
wiCSJ7cSQX4pAuoI1xyPzIoOpgOOmdU3p7TNWpw9OvIqli/jcLVBOSwNHUUGooFsQ25qNBc5dUXj
Z580s3s4Ct8eUlrzWQOImNL7l3i7+jOPTZHc+UpspJGAUWh/NY71o3L6CLBA4qY1/oePftvceh/b
bDLwR/3HOH80Y8RK1BPhhnmlgz2X67t8hzz6/XyC+WVBsefATKKA6oIUnsUAU3jcrHeVj5PoyQHu
aQO9bIBUxqiphWravUpCwnezaZh2G9N0D8vh4nQFBQVmlRXiHDySe4UYyTxlqcZk+gW64pRXH4y4
52yjVC/jZWvwnIlJ4Sy2aaEjFec3HxzPp+bbskmNJwN0t7lpie9DL00mnHT5Lf/5tMGyp8uwKHCw
Y1h1KCdbBvAkbj6KDKamAnx2iijSwYjLjSIT8uF4PG4WyNxXGlMbnxOE6o3grWWx9XOSMEgFqblB
9VGDwz6EQIZoyjbbLw8yLhRZHaP8hPqQiTzueuSbDjwo7RbN5xzKrA5fA8CdCeZLRDJ2lq431kHX
gmq15CE1YOlYaXqgRTOuqzSyqnbB9hVXSg7cMuNKIgtgsf+//Au1G5vaq8rC9xuw9yawavoPzU8T
/ex2CHhtZLh0has3YFeSswoIPWZeXhPCMX0czLaxQU+yVtXQ4dKQ4jTJeYvFMmDB+x2s9mW6disR
48LATB5XJxiCXu8EPg20n3vJwN5NliF0PHKSMG2Tql8fx3hfdbZ5RxakM+sMlnYYC3eNXC0K5Ykf
DeNmq0lOMcDPMIEiVDnoCcKMtY6bQyT5ZlqtN3rPjoXMMh5B3+EZt0Si9RU2o3TsAowXumAl6/Tt
inRi8mHpIAQm9vKz12pckpSVXYL9sYTC1pMATOjdZ2lQHWsHAY2XzqBQOw2KEK2i3j/Kn0sFIMAg
Wxjq/H9orWEsKIBQRJPXmi/zS8MJ2x2XHo1w1z07KlP0ozOtI5S2dK4Q6TjKvkSyo1fh2cWK2lCt
iUY1MSrMObO2qPlVob/VBFwHCVVAu9F9NUt+uobJCs8eJGbHJATAELihGwjtgapYVtGRxSE3jN8b
UpZERIGCsMFNFkDOIs9ich7bu6AzXNhCZ6BIL0b+kv3RSYjiOisaXieP2C2Ogtjf5avGDukNysGB
OxOd0OpcoyTVdKInW7VawXkDxmRmy7N/Rx4U2eaxXpGVfiymc8QHLWczp7DSxQFgSbuJrttDeXBP
VSNSUiw5RBVdvvhfTqGBRBNc5+dpdWi/C9q8d87F+EKj+7W0y0pBCWVoZG38Q5a8DqUeMngEPc+R
bXqNZdaO/OIqzKqWAyuZoImK4SRxdBz+AHeE6ripsWRcanOWNd03Hgm+xy3N8TLOozsFPlFNDZmA
5ME+aQE5ZLPP15cQzWg39bfSX0I7Mc7MH2ZGi/ihfF/ImO1JbFDxqs5MWyhuUzWMhHTFACkJZcId
Ye4mqQxesUVX5ukBnO/V845WHqjCtMmVdGQADkzbPxZDEARxse6EW8L7yoekXEp1y6Gna36hnOS1
siWf+LaAueaiXUR6mjoyDtV8/b0VC2eAz4+PJSag35ZpPVkyTXuKo42AC+I3hhXuF/EzeIwHFl42
ecjRX32oZNyi4FEHu64XgdqClSp9hhvvggXBXJ+b1vQFgljU47c+r01guSb5oPXQU86lWVel7vfX
bCcyMemFn5oV1qquGFB3d/+THTdfOXLOXbNTB/4d2byrpuGJgi3PBeq2FelpWX1WLYJTYTbtc5wa
z5uRnoNuoa7jzEJLQH4i1e018T1wNblvKbtvN/pmTp4i+gFNuUtkNM7ZuUEVwgV0p0kl3h8M9O1V
Se5jrg3SF2xutoUTUYNwOHUgDCDhlylpIu/fODQ58UleNPAzACDfcgM27Qrewxy0scC5Igc0Hx3i
A1VhtsBIt2/oYfnkmBjRzTE1azTun96ArSxNI9V4AGOmzVbM0F7vM7nXfTKi1gb5cFbbUw880bO2
vi+ZasJiE5vwtYXiNVudb0+dllDTueM8KsekcEUgIbRvfTW2OHGCZk2GKuLdJMFkpNppna20c1jJ
ssI7nRJX76GCSDNj7Di9MratBiZqMMLYxBv1jc14ziP1LhXiuglFqlo39042PUgusZIxs1dfeWU/
floY4lvg+FAiBK5X0x21sGUH32YwaPCq6bVL71H06nSYLNJI/P+g8i5NAeUZlLa5ZWrpXPz38juP
sPnOPpdFjT5B8JSAX/fcig8Ja0P6cWtN3WOAHosQ+qjvJrCPP26E9JqY6iZDE+f9iCjxNn74dIOU
rITjzJj+0+1tJ2CzsvxizneDT0+/Lm7kgFOaI+9S5pqT5g5OU425vWZ3gwwsHhI4enGcr+qdmzp9
Yq1ZFIatGpmedhWeUZ/+RVsepvWy4fGqweZqkfwJkZSBSGTyOtPkAE5o2NJXUsVhViQ1QhzJcUEP
voeqW2KyuvAXhxTWtkhGWWVnrUFTDv6iAOANysKsHyFTdbD8q5aiVJdW3iZjNWMr6vNoLhzygq40
vGBho36bzHJ2MQx4mfKLhFQCnme4ZCYw5v+9tOg6XXKwHqPi5YWqHx0vfG8Y/L6QIevjMjc2kdSM
yNN1d532FpWMypQ4DznyraI8eSZDHsDnCYevSQI9Dg09fG7LKSpt6EQiYnIklnd1qc6LkxS3k6uh
05uCQOHcTpImkunQZgYwhJ08SS76fy/IyBBSBCfTWkodfy0CQAERE98pFm+3MR1JIWIBbbmlFwiV
7TvkygwKAxGm2bKuKOtByXRrMhY5DmgJ4KyYYwrlYBdQStQXTgeaD58GyB3aepA7DMTD5eVlUdSe
OrLhuOpJCYgTfHqZ7ciQcw7ft8xGatKsRHE4KQRFPaX7yRksqq0VVEf2Y59vp/yNGn5L5yXz/+mZ
e6zST/l6inE1Q5HW6Wnks+69uuZuReaBjhn7WWmbUu/8H0o+E17YKaWZIFXrt4RICAgoWiiU+sqo
LPQTnEoUp+0jWkGDVJJSq+0V4AZv8KdqpXwZSAn4j8MIywAWqAdRQWKEiEcYb+SD9fOWPJaCw7wQ
HyKPfMsC4T2jpnl/myriffLsoXGjr2jRS2zAAV2ZyXzOCv0xp8iK69YXMzRbOJWDVldnM+o3+k/D
quduiui08HosZ1hy5vOcF2aPcV39IakdRHC50b/cn9YqQoyJjZIFOl9tU8W1uDwJ+Ty79yuiA3Jt
45cZy3bWWHvn+VacW01aHQZq8gF8NzIhYQy1IeXedCgf21llsZ6Bl+hSinqRMJ3KR0x+NtS6OU9Y
fl7GCcw0n+UHy9DO9idIZWgl6BA21D/dnfnIBEjts7kfHODyrLCVQDbbLtSQrUO3LILATilFEd2Z
LYAA3J3nbSTK/87a47KHUilGIuHoI3AL124qe+RuKt+2Yqdx7gA/JVimDMYQVpkiDJz0vRk2goMu
zbtDWN9XRCUxjoLUitQtu1eZRDd+EVZhvlvNhqq3EdW6/bGtQoUJBA9zSpNAG+mQ7GQ8Ur/E7Fpz
CNm1LD37WXVVtWTUl+7GCAGkbXM15vqDCHe/yWeINRxcHT5mcRq2IDnYoxczu0LGB2WUZzrRDy5y
5Pwq2IziDg2FSKw1skhbq6sw7JMEA63qK9aSSmEFJaTGgsohyHS+YcAiu7GbBFEmL4oGqEjTkUpt
3MU2w/oPWFnCRMn3czNnFM5yrAbszXfnzXCDBWabf8Hy/I/BUWz7rGDn2rEUvJ1bh1IUrNnrnnEp
gmy+K0b/KsH7aUDnrOrPtDGxB43hcJ9VuwWgBUxVS7WvV605/ZnqNLYWyl1bJ+LYeqU0qaFX1+71
si8JGOEEdLQzrZ7df8Q2wckXpPsCoe/HXAtCPTz5oxum3BTohYDryKMHo3iBBthuqYFJafAHAX/L
464MEL1Y/KACrlZjArfjn/Hp45lKlYdbsBNTHWzgtFNe6sdSyDeAUkK6QyIKXONmRuxsfCUqG0AW
F/JJ4pjPDFNnCpDm0Ly9wNNm1L1u1FbGsb8Ie3qwPzpmlqNaGPJ9wPnapQeN7JpOkhfon/TPK4C+
Jj1TDdXg9gufuVv1EQm879kYm3fy1SYPK1d8oH8uBJcSchLY/Vybi01X5hCcP7dBgJhEj3JfkHLJ
0FMNQHQZOeHmGampTxwHZdkm9Jemd6FANTNX6dzY0xDM+CdQ6u8nS3qgOQkDCqx8rrc2IYVnScPt
RJI6KsqN9GLJEdvo0mtMfi2RwvksMeWHpm+HUYYoKSAWNBBw++rNncJvvv6PTxSoxp0j+nPnLFZf
N7zE7aA1wwboaGF44Ev0PW+0L7gU4nWGU20+l7aHmnmjr1ASvC0+0rgftO9zKrjY/npbxTFBHqVX
jz2bPSlqYRDoSdmdhRhdKZ01iP+LDdKjx9JF9gBi5fpA2AK2FPdgmLukZ4x44woHztb3/Vyyfn1R
W6h7IjUOzcPp0tt0tkD9IB3f/6hs5+1mkz0s5WgfHzMlbtCiQT9URQORVngrBxu2Pnga8xi/CVNx
0pUZ7ICLLc+QQYODgk/w4Z2wRjfl+Y3aXrySLziqkcVGxPPpTLw3WJQdWIoL/0ZuhUOK2x4M4aou
ActdR63/j8A1bh+erbTowpOgyqbF6IYzcjY5J6qy6e48AY6dxZmDt+r2vr1eFxvu3fSBP9ilVe3F
MyV5BuN7rgf2cePpyyKBB4BXN6mv8T2W7xTzQSD/gP489d6pCPLg8I5XhC6HeYCDPDPf2X+0KSv5
/6Ax0UIazHrdwp5zaUbjqx6WLTNjMovqOpx98dfZn+TR1EhM3XkqZa4JJDzrWtmdqIEn/KvpwBAf
msDohkW4TRNr0dZiknMQ+IG/L0byaJnlEbIitPhawkpAKYO0jLbhPmCjl8R9nmy6f4Izejg4kgr+
3upL4P7feiN0sC3NhnHbjBeAdTqAfjtJdJf4yZsRo6m4OgUGHs7jYbUSY9NLM6jNoxx23aASF3nL
fxk5HwnqeaWCuKhNvQKnOBANNjr8dXmsQkWS64okF/rnNc1xSN6MMGAVxhQSeWqd/5MNx00NP+zW
hi/bDunyIQrBWvibdVeDwohsxgXWa3+l3QGhDG8IQeFZGGlGko5zBPHuk6leEuUOR8G3NC3hcSat
q6WXjRDDJSShaFMikNTe5LOS7zE792uUuB4sN5yiy9AU4XmX6Rwd6Sa9o2w6ylRWpcWgomMOC02x
cO+77P29KsOWbnyoXTZQoPvGdFW3xp7Leo8+tKpSi9ottVebG6dvg53QLamnBzwSb0DU7nMQL+Ig
1OUNeB0ATm99dxznpzawpcNjKQy7Z+0Ee01We94T6Jemj0uobFoKltfRNfnG+jpSeGjvguPZgEA9
LAzoU1xy5o7Pr8XK7tZ2CXEwDX80ZA+Sd4KlPE4qCeTtEQqAFS/e8XqpAsvVrto77tKk/nEVW4hD
/pl6/rH0ML0tE03oNsJEu7t7g0m/eGoXfvnwypW8dpQwoHKoAWK+O/kJknio+uunZ5Ohk3u7s9kS
I5gR+tKNSgVeRUuG9mNKcDv9pgFc3Zjzap47ekv3joYfD5ooLHv1NDnunEZH58iyBMlADxj3apik
IEqmtQonS9Tzl1D3LO8+hlvXHLt7pvj03hFuWhHX6M4f3/2DE+RLsy9DYHGTv0/I2wwJQE7M3AbY
Tm7ow0K52NVz+9g/e7LR76e+gjmiSXoo1r4cA7nox57VMGyilRu+DENnFVxWOnoKnIsUDqmzRp2q
afMywZqa855tTLxbFqYFcOiEUtn98+j7WIy2YywiqmUemZHa/lbFn8q4lIbeltswN7S4h/RbGAP/
7akG+co2xr9VZZU+ka2ZnoJ4Lh5r6rx9rTLZwlsx4RjsDCyyh75sz7EV7UjoNLQdbZkz44ujkKkc
sl9r+cKkxkINXLsvFO+rPXZkrZx+iWy3HmkX22Yyxi4IQLgiPzJcgj0ggyC18TEHWdVF7W8Pg30q
JAWryKbUw04aKi8ohYMWQNpbsvklOFZDFePAXnz4dRM60Mk6TxgndU/5PpI9pnvQduQFx1QwDAwt
4W31N2DYBugzF+P+HAgkHg7GMv83QOCRppeiP1850IaswwpQaXhGTm2ONbIhPMNtUQboLgjf+3Vs
B7h3AaoAgJevw4nFmOjfQmGv5oo4uwQZK+42iiMSZNChtJer0NN4jwsInPq7BlRdhIZCze55Yg3z
0oXUP7A2xq3T4SpxxAN1TQROGb+9quK4PQ6vWjO012NkeGBOxCXMaIuc729WWB6jusiZdVHJv/CZ
y0cEfp8IsG0BFbZNDCL9GWQRmEH5ug9mz0Ud8JrR5rt88Ez2P58Agvgi6Q1fo4nvNQVukSlrnWCG
D9vb1n6yrZrGkffPzLOue+raFbZSOh1gkPJBdNCbjrP1xaOPCo/mczOq5ztzVJiShPUFmKLKzBuS
UK2gmnKFPB0lEICDifnAF6o1Mtstogmo8NucfX07cDneMdbgFxMdHWAT/1EXoEuDm1VGjI7zmPCZ
mJc4mWtBBscfPMA6bLmvuIMjesczbwO/sURFj3eHADRvfYHApWMePo8tbxvTxZ7xtMhW87rZn1wi
8DnjH9b0AQsefP4OR8w7oZa9I9Xe1Xxi8qFeMSgNIVl2H6cdRuXj+gEFKHisFKZNIapO1mQRO4R0
OmIc26MXmtUF6UCj9kQF2f0iMhJtOeSYNH2+7i4Em5ogp5tvu5gHsBcnReTRxsMR19B3QFVrz3AY
gwRlXlfMNAxcgzVL7WLp5xslc0v1rmaApTvXf3TreoXqUk9loBHigctATdHqx3MaiUMNBVrsJT+8
rNgH2KS1Xz5wG3YHNB7yyCiQrz7ckmTD88dIFCV9mThOD3FDMnXHQL/ckMTGttabTFHqMdrPfPeb
XB/kIg+qoI5US1TUoKwzTlFPQdhdgalMKdGAACSfXvcEvrlaw9SeDQQu6jXkudxiZAJyAQ+ozB2b
c5wUFxAHOlIEZ1CsBqDJP6YonLn2dkBjzeUelbQUUXW+2dSJgMwLgMNbGp92Uph920yacm1lpCLy
SoruHPZyyQY1u+zr8FAL2RIcL4df+EzNDVtZJsS5hXOV5SE56YwNQrrnCLzbS6wKQz76V4MSIwF4
yoBLME9TiMRA8/lZHO7KRlTLAAGLJ3dMlTSRNrYzN1v8bQmiY0JH164kK49cquDFmiynnU9iS1Rs
QgghwVwVmEmaDRmTMXy7vwoGxNkJ2HS456sVSGbgpZvkUB3OkNzFGamzwPb4F8qpSnWwNRBTLaJn
B31AA2OS5B7sjLrbfJ+dPaAzvypQkv3qF8TdFMXS8FpBKbYYz05FFHRI8O/SQmoew2uYb8ydHJQt
xsZcLXq5pCGTtnmR8G8VfPjPt8Fvy3zSiwEmiYWYSqvNVe5jmvXCOZpjtELecjbFC3JS5yF+mibE
t68Ib6TGvrrPO12yO9WwUIEQZ3EmSQlDAd51WrJuSZ+yXnGyaerSqY2ZkAifhT5T+Q1/qJlRxKKE
APnMdf7R0nJ/UOOJBIwSEJUd1/pg45R/hjyGbgK3+YGCaBPMqR77HwuJQN6mMsas9/nJnKrYOyhd
rB07Arw3DM+c8TmjiXCgMzBL2Em8vDllwx9zs3ILn9S3fLsm6a8lAOMl+jbmHUBhfzxc5tLEPu7I
ubTfOEe+VbiGVNFPNMDtXqmXVI/Hc8YkZlsxVXftLezt+XrWkJzf8XgO5xywR32zPn9SIFIBxwqN
k4TIOiCWzCv76RkEDBR0i5/isvC9ObW/b7d/zvO1+dse1MqB1S+8NEBpdI/Ao5W3YdYpzIExZEPS
xDdnhanK2dXNv1VrJRh8JCKaMeNxUszgOxxWq4bCh9VamcOWlfvIV5BFjghSIxyVZvkJqeNgXH+Q
jILW1DADrXQMfN1yK2xffZo6GzYsT3fXZ4M1wRve/BrcF+yj9fKY2Chooc7gYBbizVs/FCsQhvHw
XxZoGubY8SJZbUrPlxaN67iHYYnfYt7jYgCrToyoPYJqATqlqEyfr1B/KysxZ7KBl3Oh3mSIh+Di
DddKc8ISwXv3D4OYlUoKwVXtGQEJIdV6gxoCjbeonQgihh+joMIIDeX8MqLh/xKk4lM5IEZDgv2P
YcETwmcUqUnBBj1VqCRJiD9uBJcyHueNad9uWLpuJ2OOA1P+dVF5vDmHEoH1BYCjXSDcZ+lvSln/
xkgpmqiR6ZhzV0D7fLfpF6giAqoMd+luZBSBmllslXVfQqF/79hYlT4oPOtu6cs/G0UBu9R+H5WI
+634JqD2R7PYwnviMI58yDbU+OPGzRV7Mu6rHYwbHMm49IqqEHRGqht2upM+5mJ0D96iXKK1qX/i
PMkwHzlSBwwmWetzmXwRHbt4YJqGb38ifJhvgYLNLRHl4UNljW3I/E9Lp8383th29fEPHE6C08hc
Rl7wfh5xfRpBskhAomN6/hKR5QBKAgq577Jm+BnzxovKed483lXJdrNTDB80gCPQkn4LR2qFjpIz
eS3ZBdtkBayv1QjiEbv7NbZXKlEMmVzUXezz41VRmxyjnuyteJR3zAfGPxKF5ND/1BA9fYQbbnmT
sSMubYOGFOFIyMOHB+XneM9UdEmGoA2jozMMIv1nR/vJqvFZ9zvSnwtgSwfpmSIZ3T/1DrXahr/8
B6A9ZKawN2Wc2+Hc+vzaYf71nYQauVotOM+1uLfvDwIWHZHBHJ8l+zcQuVgaWtvMSU+nkDYAhcIL
faz36P5cXRYxQzeztQdiHvv2NEjhf2zDrutsKs2ArttNrCrmfUnfUzvlf1RNPhLUBB1EKofA3tb4
BTCtLP0+R8NYUnR+GrZxNuQsRXBUMf+ISPHTTN0apkezAbSkFjbWqaoHfwhDsLckzmlcAU3sx1Em
lsm49Ia7QvLAMw4tXutP5FUuZ9dzkNdUUHL4xX3zKGkmSwNdO7dtH4qL1sGz/8+1+8kuNhudLBmg
VOL7skExmdT6z46pwY3GmP84jnp8NdjHf7ZGYA7atyj7T6v5u0yaVaI7pf9mLU9JacWcKea/PuET
x/+75qJfEiW153vRaKEj7fKl7sEBiCycUq7rPWo8Do7XqYgds81cv5oI110DMG4WDKNF6u6PcRg4
QQfM7OLInIDVM6N0X2joVt5Miap3gw1AEaw+01TrO02Hk+WLDowt429Jc7ruvdo1JR+N+rGz/ReB
iw/u6B4xMi36askBILflk4xCo091AOPJuLWVXPZbmDD7Fvdil1LlqRe426Pnm8i0tZpBy6nTh2cQ
g/KR81tCc4CrtcA0qULOSbhiEuC1s9T040STkGVfRH8hhQ7baZpG1tvBvxQRotmRkj4if0VbeMLI
5xrQdhS48ldjnSwkgt3rSJCSd1Kw2xbR4HzDs19EpzO8HFAzucZqFmJjnd22CGtv9Sm1YIJKJ4Nb
z6yeyvdmM/s822T6iJK5qAsBYSAUzUSlwNzzeOOhucMfrw4Tkz+5p6Tlzi3f3OqK+Be1ISc6rGBs
u0mVW7PkFNQvd7rinMhxV2v9cu5r4XR1sRvjI1aLGCA30RgiY0fvXUeYy2nn5fhLmpjgq+eQBSQC
ogPufxvL9N7SmVftCwFjDJR1KEB6GJVeBOjkO6i93RYqFiPyKGNtr0oxBimnTAwfO5qz5o8cIxHS
KqphPLGxpfbiRmRj4JFqF40Y8bLurmfJiVCiqV/8wTZDDmm1x1kSmiGVyGk09SagGH2PIEg0Jp8O
r+jCLW3mjQQM+jE/wiepHEGM5/C1IyaPXqZnIs9rk4A+lsvBSK9Mt45CETFB1O+5kJUHFu2eNjBL
hn1QGFrYACfKSk0wZmf7BWNEPR0nVz4IoGWg211Zkh0X8p5utyhivDm65WJCW1f0ZF9pPcAlN9N7
Fq2myfurC+Xtjdvjwq05U/mmaWResaVj+oSoQbTcjLY+e2FG58DnXitcyEk75hQ2RcbF7mDelCsE
DnpExwlLVyhIc89Fwxlt0C79B6UUBqUjzZw3L1WRH6maIeAt87LlZM0WRB7yVfTrQq+ugyxjCeZI
Po3rNOwnCGDb9mTe8a9e76fzVNkZYjbHo63GqcHnxtV6VU1377zsIwPO1l7PeR12ng9sk1Dgm/OJ
cQEXuDuIw0p2qF3Rbuh+Il8Y3tiB5xwVotQAYHfrXVQu3Dro8F1bl0TVl4gjMSxIzXPn7JJgEJZ7
A+lSdmN/nLyhP2qbinmORwNzuRPtUlb3T0qdzQnUUTFA6iHQmVt2nk8MLpo1ZqO8/KI8zrESlfID
n88J2bUV++Id7Uf7vGga8GlrfyQSt1lDB0KSGUbX9ced7nBZZ6Yj1uds4mQQdYTqjrN58X5yEKlb
nUkbegjJ5GKUU+G3O5VsuDh5JBflNES+OGZjrgPQ30d5pkgoYg2T/02omeS7++xoUh3ljEOGs2Sh
MxMS5m+y0Q1lQZSlJcQXaUvaOoEiHd87oSlo2ZQfjSO8b5UOWDaQ9IrgbB5l1NMJRncw/LmW4DXX
iCdvDtK5PcGQkeGnwfnRY1qxtjpK01AX0Ldf1InV8og6LyNbQyndfTPd9H7V/bQ2wD5Cu4qeFhq8
I+KdW1+RNShQQ5JCDJNrmSlhs6E1yqtAvvNXJPDuzfhphnLHLG3NiZPlhg+ve8rrxAYcwwdZZa9C
VQP6h1t7NhWFhUiQTOQFk/gffQkmsGxDzfXOWP9rt1FKZSo+W51kCe1zLwRmAUHxUopHzuBJ2Sqm
GxGIfF3yNO6wLDzEx2VTvWS12Dbb2Afkez4Eo7lEY48R4yzhhyd/L3r6fmEVmgUyr1wiovKr5Pya
T4aIBVant+42LvU3G6q0z3+qmkCX30oFDHgHJfhbE+St3n+MwNXbsRFlWcaDk1RKp9ChT+D+4ax1
pnGVntoz1ProsX6LB3nBTq36OBeGUa+xcvEsjI+mIdi4NjzdJ8MrywbCHIAuQpuT1wTvqNAT0b3J
1poQZ1ywOZBoUt0ENZN55V5bf3nL8YHxn6WEyHP8aT12YNgjcCKWMA3LG7A4PBZbTQ5k/6S7QXw3
kTyT6v6MHHUKVxncZD0M0+ndQPvXTwThGkAlEJPqTzwppk3Gy07Wn64WRbWiAK0RDmExtEIvvXPg
KuOP/RTOEYMkdOxMN95x5uQvelrIPWOISXvHFDccAEDKrESgndXz+JHY2MWz5te63n6wU9af69st
SZaU8gF1S5BOoYHeaa0cVbPXJdGV1EOt4ep7UkERVCxsIybYYKHx33z5y+daQsq5ROQ0JcJy2LBQ
PAgYpLbV2ydCDaMlzsdaWwjpjPQSYRKn5yzRwSC4gS3xqLKloBOQBMsi9f9AnCxAfpTLtjA4oZEB
+3lcPmNx1jD6eWAoOQt6bwy9NoACMAJEvgsAFk4alhCf5ahbRIxT30D9lzpjMnkFQNCNCoPb9rps
IPmvw3Asa30pepaGrOlTSGXi2JH6ebXen7TtU79z2wCL9nbM0ggKyyik+0YNM1f4CEq2tlcm9AxI
gpv+E3Qp4zn4kG7T7+Q+c2u7FUfn9majQr37Y3gRQ253JXMItwYGsz7UaUWNCIwiQN0TMtbF72Y9
og9+vFZ1uCQXVFOpzm4qBXHKuIwRC8FonXAVy5r1WJwaX7X6rPYLO9p+ZAtwJqVNiKLIoiPRupLg
Ljf6TF8aShDWPNCT86hut6jLRIOgJlidhIcHYupESP3j+6c6Ct95NRcF+0q73I2X4QUuxYb9OEuj
ZYHVnPDg/RGej/yGiiSEtt4Xz1Bb0CCj7TQd+fQ9rjYo7iIWbTm+jJn8f9xE8cpvVUNDmruvgIBF
4Qb/p1RpALRLlvOAtb/gMNqozh4aMnVgd9qj7lcrakZhSjpQuYQFmv3pUSd8WOx08bgWzoA92OkI
f2HnOI6PP6BKRUl6X140KGJN5rubTo6FLX0FBru1Rp5a8D/r2edeY4JE3zlnw3hOCtOh2pn4G8KT
RV9TQAW17/09HJ9pTn7Q4iWPRlIYNzwJ8RVSgqWZiwI5UlSq/U33yFIkrOPfeuouWv55R3aPz+ns
eOgTOklL6hnjmHNLfvprwGlNY1gmF5GkLSgibHe8+4m3J1VETsgBZUQj/BPSlTxvOaG3mxPzZZ19
Z4V4zNNMMk85rBNdQqf/7QDptBIlmoiudEmOpIQ0tKC6lMLJ3Dvxbualibuz8uMGF0p4au5BhmZx
XJBoWLtmClfSHRSboNpgtWepNorybOwhU8YGv86m/Nlrrn3Y77K67088BoZr2ATGTkI9nseHRcPl
qQxPjjKG3MRlMVWvZ4OXv7DvIeRbdewv4A03HQeistQ0CreOBnva66mCiWGupeZX1aUTnVHA74Oj
BmZEYnoYs542cB/PiK1RUGsOqoxTr+PSFlydYVgviW+NmTC1Eaf2kJUfTOBp91UFgq+uX3+eZK4t
8R/vASiie3xVgkOwASqsVQF1vI5bsBhHgCD9V+q80FNDLPDoh0ufhoy2iI0iBC0GFrWyIwgvy9Lg
dsnbfR7s5MwVt465MUidpklDOhV8uyVmIyhNTNgmuMwaONRywlSiVwur4V+BE2Vy4EwknhqiR/Vd
3Y0V2Bc+vxLgX2LdqR7s9tXb/GfXHwq4hMzNXi2ykww4L4dkeRg/78OdsyXR4XTOXJRS4mDL0Y8V
QbEjNf9qT/5ucRgf8YoXcNOV7g1GJmgt988gcKwR41xafjCTavOy9oWosuzSd2u3ET6Fdmk2vRh1
xIfw0fDwRkfuKxeP9G+Aiep2080EfwItxvskXsVMYNOUj/dg+/WVgsgie7Yxz6yXPN6GXjOp8/z3
R/iZqqXULuORF02arVRvE6t2AJX0NqUuaWVoxcNnlsIEYsMMU71B/N2bVhHdqV4YfH0z6U2RQNNp
Wgv059bOkyvi31GlpiyZ0RNjNHE0R4mcyGt4xYZYhnL+QNAS9YAd2Ue52sqUWdTjLLgHO9tFeOsT
PJeNCHn7bM5gK3StTg1JWoK83rK5W6rBK1zCgUDXUenc95qNcS0e1aKHtr6A02Xydm+8zJmluDJz
nrgn3ByfyFhxvA+if0I+7OmwB2oq0qf8VUXeHxVquC2SJpLzSoRDzotOCQ1rYChP6Ci8tYQ4ut8Q
MdoMgENTJEKKxzMBFAfnObbYR0pa2f1+2ereTEqAeydWmIpSMqn9VcjSwYRxucfNwaWPbPdl1SSY
QszooH9GxlatyN3qr1R9Rg2S9O5LemSOz2eROYCGULRatOJ7HVptW8IOU11T5ldQqTcl6OsSBmkZ
01gCWzvI53LW9bHec98rtLmkqoS3zTdarNfVBZTRMGfCTH25Ihj4K6mF/VnCisR1S7w96HtT35k5
j2S5SPr+1aDtAoSamdlRohZgJ32bPIxTG4GQvzvZgdmiwGelji+y4hOoCfgNsnGOsLWe70ug9xYv
IE0AyycFGL5bEwmzQ2jO3aDt7Ny0yvk5MVNX6Co31IE3pmlBe6ZMyfdvDh5nLfb7YgM5w5jb+7xT
93fGWGhSNLjC26MqRIHl7xhLdJoAd0zqVYVP4BG99NC52i8fzWtnib3XijcZilkJP2Z8LrdPDVr+
TmqjCAkDDXErd44Of+yFPrtwn91K4EgiiUzAgmpx63F9l4I+cjNg/Uea7C5Hr++snqR80aEDGPYh
pQZ3nEr/t6FAoV3C8fvNmSHKJAAagjye8CwUdcKcZRsUty5V4TksI5u6OpYpdAByX7JYIepsr2sD
84+Hn+mMh793g8qr+zdaRzH5woGs0NXQdr5H24qGYZUeDeLLe4CUzdbxlLNmimDbUYO62r2ynJZU
YyYurWJ3Brf1UHmUaf8RxpPLOFMlMH/n1o3IL/eiYSGJwZLyzi7uPMU/sUnrvTQnwZdzNM21Qux0
tEyPO4I4rggh3L/bbr49o1y6XM708O2AufAGXOVahCNguDz0W/PbYta631AJ2uJ4E6LgN2OWIknS
ICcKW2sSEXiQ8z53WZwHBRmdgryKu1n8fgU8gNto3XOxenMFkHWQBvwYYox5Ulp0Pxnt/SB+04OT
nPAiUU3KqlW7fxzY4rE8DpUn+thHT1MI1Ea7UbNPx/ksZZXxCRGlVujenURmjTdRMX4NBc0Cw/0j
s9WObEZveyBEhi8geBiXxIpHKPLtXIK0QJu7Tw3xqCw9QaZkEfzlM6En0ItX7GEN9rY8jLgNKB1I
Ts+sUCwcpqPIwEHxuDw2W3mvqxHJ8iJ+m/NlfPigrGgWEn4DzSeaN5OrDvnDAwFk0EwsCTgKviLx
bgjLT5PmSn1uhWgA9iAjcTv5nzDBJcl1x3fqWFIvytN+c4jmk+hGEtRfxwrG3ukCOSQ5+hiJ6agF
aSyTZcX6X4o8tb7cQxx4bCOsWKC8Zd6dEreVc9dTkKRpRUyKzk2RqCVWSVKAk7iM25I2x++Y7EYP
RKMO6epG9buHxs8a/Y0dyaTDTyGilB72jyPKY+SD8jEnMjvpCyrTmPa0SiqD9wlJ18Rhoc/wcHrz
n+dssAYZwiQkm5bI52gXhdaUnUNRermMI+Jbtb8q33dMMNkPEGF3SSLdhcnoiylab9Ud0w6xpQxF
UYP1nRhbdCGgg2w9v/g1PcvhfY0w5mMY8zoky/QCOvBlCRNh9OPc1G54a55ICAdZCuy+++S7/rpZ
RyRs4rAp7EFrTyxEta7Kk87V8zU+ox/E4un8xpGSbTdhH4p+UWknFr6sQNp5CpDZr/1Jl7uNjreL
/JNjzoXA/tnwCnC5dwM7qrMapdGdDc8vEBa1uV4AV/ZqV+UE2ywRRP1ADoy8aaZ32VV6Mqi2xrMh
otjqUIM2Tteo/uanqqoTMmzvrr4YtyoZBFxnw5ibtHV+RnRrSKPur2jqwKc5bJho7bw1xtl9vbPg
J/YrgOYe4isi7D34YiY9V3gHVPCX39GHRzYmG4ONtnhD/wQAp565xuYM4q8AMvZ5vknha9EvE7qH
oiU3bippKbsnvdGlhDO+0izwn9SkQB3Wxfh9ybe1lYzchZVGttCtPhBvo/UWdvhxioVjC2SIZT4e
Ff4iUD4jI4e1UEFE7nadIL6ZClEGJTvib6ZMGj7SpwpSZV2B1dfBx4oJ0s42AWytAtwxlnV7i7CD
qXza7ryX9HpI1weaDCgDcSELqbiXwgBN1wLZ1srRik37lvzGpsw+OSw2EahZO4FF7lWJhmUP9p1D
bhUMTyDf7mBskgG+lnrc6fEa5gLTJ742jjTbG9fg0K0OQCqjj7OKOAkcPqEERKcABc6HSjS193U3
hAdl11ofS7t33pKAkjrYPCegEqfpaRL+N+rTV+D9ydbuwNqtFyuRVLyyuhF+1U/9/wRuoi8vZYyb
ulmpv3n3E5nhH0vgjjCO/L/5p1e2agScx9qGhMiT4qGbaW4hT8oSwa9auZnRhols25OkZy/kWhGe
vXkNbV4+Vyg6JYahmwi7XCLe/Au44EepTz+G3Tt4oDi1DAzBdKOaBsj24pEbE+j8SbQYCsmWNPcD
3/UAQlIvuC6Jebs0L7lBc/NVz+54mHN+Rep2OWfTkAV0Qk+gFCaWFXD4qfq3vGhb30yg8Sg6/ffE
UgTTZHlGK07RJ+9oXCEbCBgc6e+psDKoi+wumhaDQTtctRJa6lEGgnq94WAGtrrdtW73YpH8Eosf
KWI40cb7XhynsldG0NlcVrl++rbEtxJIOSM9JF1E5mOmF0p+Z6wdKU2fwlAVPumcSNHhq45Q/pkB
dCQs7Z+z5Eapo5i7tT7EzuDEV5Xe1nqScpiW1RSi5wgaC1KJi3hKBFPLwGEDB5QlQM8VAZapj9Ad
gB8G/jgX+aSIH1fKCFp8qYEQBr+iPFLiyHKoWEHQy9gNyLI9dWSG1yMFIQl8CXfFvuXclV3V2auX
yYrkODFIQRCv6NPpjF9c9d2BV2UK0qQFgI/z1yW/cYXsaGIq2EruYTTcGUeBENQNoNtLYjTEnxU3
kVS1PvkLRUEBJpvM7W3GQjRHxn17xveMzJ8dHg2KUrZWBImv3b+ToBaq80lsUJhSz19dbJH4067D
pk+R6JppnMRo/49rmn5aTzb4qk3eNlxJd0O2SF7qtLqKhG5rXezLdGVSyJtkNKWrtw+vAvMaP7Fa
F509oFMqiVdJfyHxXWlTRgUNfhOXyQPCiXzkw6LwziKpKdKV8uKhsGm41iIl8O5YVqOvp0lQOwFt
zGw6sHDJ5cJoDkU2ddgkgAkcctnyXjDpAxwwP51Ij2HFGjtKae2DUyEIKtwBmxBl6iiUGFd2Z9J2
n/J6dGUsFgyH+BJOOy/ZLJ+tzulb554A2fUa0rtJj+FTFhUfIaPopjvufEooSiOQ6wWw3O3lCmlb
7nJcfS15eZWmeJPMsC+KXzFvBP34fqLYr9o15wKo8AR1MVYVXHK2bPQr18xeo+dth/ma+6yE1UdX
vWlnieGtQINUusW3fjbG5uwdX+N5Bq1J3M78RqtOZ7kp1awaYvB2M206RHcdcJCX4U+92ByCZJ3k
p/v67sYtwMmIkj3Ec+J3Wa/ViYYMmeyR31wzL12pWT2H/9fCPUiNPqZuwD089DVjwi+0cFFguukQ
ziyc7jyWs4CMwRAvGJPrXOMLTCT/A9JsAofH/HiaCS8ed0jpMykXNGYEq9tBqeUvC5aSjqz+ndRu
WQoneExvixCLTiAqi+6ClDO6lPtyEpaWJcaIaShrsl6a4z4XuA0exfvtuE7N/tpz8x5lLsEgeaoN
C5dKKDxH6X3YiKRe5Q3gs4tQv20B1I/9EKNQT44PuR0xqZjvK2Vm6f74hcKg5utrwCXy0/YHOdX0
PaETgZOdA9pPEBBlxGec6i4hPnBDNvrQIyq6h1EiPYb/tCgb5KpkAvAzGiA6E16e78FCdZSIOl7L
pzMEVbQnH4zQDpbOcyItdemsk7E6YyJbiDwFBYDVHeWuJhCddV/s7V90gblR1lafmGDXw1lX9opw
NJ9Qp0XGYebRO/cp6R71o1pVrOt7a8E55gdJG4Fk9Zv2kVRGFK2hWfKR25DPgw1NYvf3Dg9gmoKx
4HPi0ZrtusPaHyxHHqtD3fkcA4fkZVRSirCIwIpMP8GS9cV8uq5QtVpVJzH8GDrzspRr/ft8zCOQ
OqKqnbNnBk01uEXPubAdDO90O9v4Kur+Bod/MvdnU1B+kBSH+n+wAPJK5rSFV3WNf7k48nCBRkPQ
SsfEtmCU9c528/3X+qO60hjktRVH2MnXaMz5eYI97p8TndGYpEYw61pxyd3H72/EneG9moNY3ngt
1ykvF78Ycqx6dEa5p//yIVNIVbX/8ginRQHyf9850230tuBq/o29wgVe5GDCdSgCx6lh9USaWS8e
o0dS834tCcCFqRjoLugY3e7ywx7BhM82OQHK34Dsi4HC+vMfCSSzTNBYovaWR7UdiCCgomre/lOM
kNbUUpafDoJmretzgQT/ctlfVsdgCW4xPhdZKXczVrr8nALIB2zyWrKTqeJr/wQZtmBbXuSFgi2U
QcP6hovuDQKnN5jsc4ypIgA8bl5DLUfu7aFnRP2NComSW3Tw4OcQZnMYnhzA84IRKudiKm7/EgLz
09XdhTp2HIcNFseWHdeBzYtdxQfOkQ7B5EXU93YErTP8S2h55p/NIZ+RS1spznMvRD59y/0QOuyU
xBVaDm7xdfDO5caMUHeyP7pcmZrsTwRucu0zTqcfwWKbhJzAF4TwZSK4eAQjgYfWljWq2WgxSMG7
Usu0tAshNE7KDAqonDPFQUZLhd2lbtpr1eXXmLTE5dXcAdkZkE43lqddhs2bZ045gyG4inLW5gfm
kzWwTKuUTSSYdfvIN5ewT1LZHoxowrBGcNbzDa4r87xzyjerOrHO3k1FYTMKX5jSiS5wORRKmKwf
ObqzrXEBGH2q5zJksyy7LcA2cwI8BiBjDIGoa055ebKlzVrjCLuH3zNK0c+bee4A0xFFUJIpRTUo
XvnKKnVSQFixr8kutmOpZgIC6L51OQDltqwXskBILc4++QOUq9CwbSUqOhtMTJ3MJfTbsWupIL5d
zbBfDSnH8HG4CiJoKoEFr9ATupm+Ha+5PZCoalpamvauqbnkfcpvcv0yIw0M73EwEnphaNMEVKSD
BwXl11l9gpEgk3n2k3tvOXfCqtfsf0y+dfZamIlCkgoJb/O7wf8gGst2umaNpCmZ2V2TjvQ3d2XW
ecA2W1YEGO8t8Qh6tCb6sLfxItp1XMkDcf7Sjw2FSP0Yh9+VyMbQxskmqNH8b6T0VNau7s7fa6tv
fcKGULC1xMxB13hG56KjvtZzt9lVdwjX6dL5NbMSuE6uHW0Di7ul0uiKYtdCWeh3clt7X4etcKoj
vlxLQdauYg0ZdBu5IbVWONAaQA5C46f+mrr2uc2IPoA++XTkiiLdU1TCNrpPuNuakhg1FfcR+G4e
hX6gZUxBlolUmlZZ7pDIv2OWsuA9KWS97Z2yr+HtjYfS/jiCNjQVjPKEFTavGvkOLUS9uxYUDan1
FGPy4LfVoqqCF/PomEjiHAx4KDKMG/9Sneajgf/uTOOT9KpE1wMKKUIkrmUJGK7oi7x5S+n6XyKo
zVWCkw9zngbpZ/R2zwpZW8KmVLImqWI4XJrVOw4Xf+SHYbSXPZkVBv/2mCZHsi4lncAZFBVzx9cC
GPKEThUkqu/9S+16bqFla/gxBcke0fgFpn/Y0BsGl7DdsKDo0eJXpstC3bljUZhiGjW9x8uK3WP1
9oLO6jl+tkyvz8uAhqOQiR4CIpmJ94SS9tvr4RnUgIpORE6acUUlK6MfKOhCBw6KLTCLiCpv7jGa
GGTFycvivR90tIXDuvqlbE0wVThXS/dVD/EpKp5kl61HP5cxg+tpN+Pt5iwK9Cjr0I3ZE01jCQec
d2tv0DFA0tM0sbZJZdUd2MQzF+oY3mXtlPvQuxtu3mmD4ZjB6VB2v8VPehKoUBFgBJe2CHjZHb+p
/dddv/8mOjyeYSsL5cqrerJYj71l+P+l384RkkMFgDwbGBZnQ9orTlLvh3vKAzYmBcYN1jp7fmwi
7a9ozixVZNdFhE9J/GDewetDNic2Y1yohrLwONMWnXUPFMyxn0JAndStZjtbumW7PAU8EEzgCeBi
oKHhF968rL/TxcX6YLgvX8VSYA2LWCvjGWnzCNXVUyE1oSaTjGzP0zNz3tjBOqNMI0lVXELYxAyL
DlrN4h1Xg1yQBHCjVTpqHnZ409iBlonmAw/1+/mFegdzWD32/xtXwePt+A5PYXFAWkUPUBjgSCyG
v/qBkUHnpuTW+5tgkUloBcRCPqUhtM82/RDOG6PaslgnKfV3zADVXWkYjH+W67Xx+sYTFd9FNwal
I+4RifZ97v5f540RBbUZ3ECD/2AjZfGHW2ajL8CTyuTAnmOgAgNiYr25EsBQJl0cZzaqlD2HNWeh
9lFrNmmXOqovjcmvHXerFFCr4zcm3TQ8gasB4cRwxyT4C16l7lfjDxujLT9e1WabaTDYRF3gXhEv
WO56qr6G9vJy0beslaNcyzFoFANUtKtXf581d6bRU3Q7mDldX2pcr8+ULejESB/UWuXxI/TOdH9z
/eQ7e1Wd/gpAN8iLASetLUm197VgzozylvjnMFCExrAt0A1UWgeNRkeJHubf3RWJkQ5jLAxl1Pwc
5OMskDRToU6WbJocvQ6Z6jKAkFbj31gCl/v6bwd7RfXjvX4hq/gPydAHDqzkEIdAHYfoq1nH4rZX
cTHw4/bjiMe58XrY2XajZanMng3QviDf89NtdhC5N/e4YXwzGDKHGXXsWy4NLMRZRFnyD+KzqZFq
A1Q8H2L3QqrnjqvKQTJsohOm67FWIkXwk725kqqPyPk6Iu1dNfMRyrRCHrMrvznE4ebIVNJmOurt
kDvQiq5yU5HQnzPNhoUB3wmDv2PNPxG2tCzBBpyY5A8peADQHiJNhKt/eImdow0S5IWvyrZgSYyX
wmBBaGBsKUi2E4xf2LDjf2vlwjdWpYybYmjUvudE8mo6ipuhqxiuUshjtTGY8Fp9BWOX6vcSpDFB
Y9trLzfk0blmRMr0ZFGIVm/3HzPT5RkKOeFPQvm6DFDwrMw+2umJef0z0HgIUt7uBwjNYJWa8lF7
s6fZTsL4YrgOIGA9UqByXoa5VhuV4oF+Eq9frmDZclVlb/SsrK4pZnGqqZPK7uc5KGs3m70L0reo
rlwvL/L7krX/ETB9lwDB6JJSZCV1Uc6DXsGbGFUFGuKYwG1PWEVkwD/f6cUANp5aYwovZT2H9F8T
6NrSNU0aRsCYp7TM8/0TcY37XWb3/bhmt0TRKAUj9gcA4Xmxf3zS0+i37u0a1GDEKkDecB2Q25gb
+gjmh5rAsY5F/LqGypsREbV8UQU+P2OSM3GMhhM/4S0IZ/CCrw66yVdfg3S1B6DSmRp9jbjyS+Ow
FVkxlHThnIOp94sOgaPIcgeK0AZZxSTDc06zv1KaxURLrvuTTZwtw7mqreS9Ff1vgiblj8gBQvtm
dNmXT5LV1bVPlNZSZt0Hjt/5dv8CgNszo+EBF3KiS6RVXRsoreh40pAS7w6O1J8JmsdAw4gL5pw9
/QC+ecLu3ywZSfuyRBflyP2mZqfKQQEdMdnCHJhhxAmdgrbM8Dgdml2PpLcNo0hn/CtOX4dfxvuF
EVkJwqo6x3TXqodRqB88R5fqdTyNQA4srxGoZpgKKJCrWIVOAHwhYRy6IW06T4tBiYcyfodpYmOw
0fPB9jFyN9edaLkQYD9fpHagzXFE07lPGxFp7Zk5GzQObNvlOC/pcwnpe91orF9sxhZbpyNkyqF1
NVwg0k9o2AMgy0+MwGW3S/U8vJXVEdMdA3DNAotv2ame7J2zP9hDRf1ZujVXq5dfU6YlmqwtH0Tb
XxNL8Is4X6wmvAw4GoejiQ6hKGUZAFtSGRwjCBJxmI3t2Li/qHqP1CmKXYMG2W8Q4LumetXRrgFX
sw8B2ofn5pjRmCq97ORrbV32Ypd3CmmkYCmKBaqh9hRCOtVwv5P9xFRlOyb6lBmLVbf3YtTdV3RK
BE9lmdUgesItkK2gEq7eLh5uXfaGtMEoOf5y5vujuQD7wwA5bxKBFo2TpnxP91sHP3uGFBsvkKoO
oelR63AGwN7y1//eUQF+APGljgyPoVYpeLmB6K8c6Sw/0UaQ7h8/78ug4zkwlh+XFtUm/lWkTgO6
T1/7lTgKU95F/NWRpjHSpnQSAHl76w6bbMHKED0vCYRFvJR8meoJyNCCeC6MHs8km5/lCrttn33i
61vijGM1POrtEYv2kEUixLKbvgcPWC/YpEMB6bC9MpQ3IqoHU2liB8Wi0Fk4BusISmLJpsfUsCa8
18YZSUog1sLvIgS7eJdUPMrMhlXULqciFyGAN+roqkGP4qu/K+loYl64r7PnktiJlGhve6MmAFqL
FoKPm+CEk4hcwN3uwHppMVOdw9tk/jx2t8TQtyBSRhmyi7ajhtYCA9ZXqu5qnRAFu52jLMDhuMEH
FxY8dzZYvMFOoaA4780LreGXWfBsybLya7LgFUj/nBs99MG+xczPJ5wXX96A2X2Dhv39CatwBhVK
HxvrfIRAj2LBfQc8MJJW78r78QkT48ouSIoMvGAYy+FwywRm8Q+t/yfH/yI2DxMiPJe6qbIL1BTI
cjqkqUr9gXz837XagNA/ED/ZaCce1LMkQ5AOLbwY+vV5kjpejnak4ps00eccDb6de8yR/B+MvX/R
qBd/mKo97w8SYmQ8xzZVKVz5ccfXJ8vbT+WcwTX3Dg6hWTsgU83ToB+0CrgJd89vudbuZDwMbqUG
eNzAY/OQCm3NcF5VFu/fzszYk7eP8+Ea8o6G86GHfmjUQ4tZ5HqNMuk0benV6sUdSNp6Ez815dO+
0g6JLVF/2mTan+OewKNlQkjni87mPe2qfUjOOeISpvOZYJm/IuYM9evZ9LfzPpd5Nf6ryiA7r6PG
cJuho7Q8w+VJgXPllBRKDBzXNveDk5cT8g2RA7OWwvdvcIso5IOOchyvuJQoOj2vBtj0ULLSVITA
Bct15bKX7S0SPjabsfbp+TvJTdVxowCCIfkez+4ggPqhjuWGm5hk14waYtAt1e0WL1ZVkIFSOLqV
E7HSKCuRTy4jxgo5RoLrW/r+mulfRkwBzBGF/q+jJxMcaD7bZYRLzVJaAONbI4XDdk1rM93qJglP
K30yBSVLwsTyippv6MlomjONpGq2OReH8e5JQhEt+DHJlMKSvyi5xJDAcCBk6D4HK/Z/y9hPsLe5
+LhOYw31ij3Rw9YH2d/00dgD1kUEf6xgfnnCXar4+HHKvB7uy6GiSR7q9Lr4/5NWU6ZasFpJ7E9G
MJaWMG0qFiCdX1T5JJs8hyoD37se+x63elDYxlwdDYjc2YoAitlOTLvyWcjyZlMYypk6c2ug3byl
iNFAL5RDhX2OAyRevnc8rCOzBWH8sfyyu7IRw1CxonYw0gP3GBHxLHChUArSWBc6LOnbKAfBUZdP
m8wP4YT9PsOaDXQOk4lY471v/VFFXYy8XXJK+bpuX3QKv1BcAtbwy+kc2R2DAXh3fhess9qfusSX
OyvhYJFW4vKndkHvdWCrvhuWa93hR5rkCWrvaiICajxfM2kQe+W5HjQAnnrySQkY78FUh7tRcR9G
JBWIDTU0wBVBW3/ve42XIoxhWTUkrUqxTO64h8/lIHeEHBCSCuPC+tkHUztIxax28+6zIwewOuBm
MC2AhRfk4YAVHDMTObQix5lvC5DUazFQLIbyIeg8njeirRQ9ucbsmrjhpO0rt6IB/U4pL6ViHqxx
fHKrarzciynDxEOoP6TO2nBdEd7Ak0DY3i3Cdi7IJBuWV/3iPsMHgzuD/tHhfzJrtrXkVEPamPPl
YKrxPy9eJiNQJzVX5MPVym0vr9h7FA0hp4LrRdCVDHmkS0s1X24rbSu4T6njboZL/CEc+6qsqJP8
rPgpkpNKhUgw+DqZgc+LvkgL8rIfHAy5n3zm02xvHvRENOzqmbsHPJN6EpTtjcC46otvaHYGkEaQ
8BMZnG/+4DnUQg2aAQvMXplgVVZSDtGCkZfyaUB3Bgirmr9PfVk3mfEYrgslM+tbr+Jp8Vizy9G9
4OEM+rWTCb/WQXI7oDh/JyCb2e+f+3eKkG1nScA0MSxDaFftM1z4vKt7vBS7yqhgXZufblTUSE+E
Q/cs+3X/aKFxoZBHiAv8jZf526ZRDmZpC6B2iKCQ9oL7VPcAHcKW+wbvUJJtvzbR0JdCqFy63Od1
gPARPO4izZr0p76TE5eRKT8E67C1xMWnoIEbbMhuaYhI64ica65dZXgRTJ9196yiD6GID9xxDxkw
mSsB2r7m2+qKm3q5HdG603F/Q/wpjUDIUkqIDsbY9eThsf9DWYJ+lMGC6HiHiAfw9701Z/4gQAFW
ecBK/w5mQ5Q16EhCGzh1G6ymS0hIvelzKSf3ZzILw2RVoPfEVtLd3ubeoVV4ae/aetRUo2C663fN
12c8VSqriCp4jJx9Fm0sVvdrAuBuCYtzl23DqNnTdptoNprLJOEd1cii22KKrEU3G05YjCsqTQRo
Njr3XczHEzEwYHC6ZEpOaQGU9LkbUZOOQwXEgksWcdbRDjlNcbuwgY46CZ1hjHmutjqtpuWorwsj
89lLGDOyUsW6KPtG+NCDN14wsOPb5V7dXcE5lUNaNejOzodljMasIwzMAtkuQIiHdbyatTtN9g4D
Q9M0xnDZpMZ7pUrmbf5P/Mo6s44wK3Z0nrUVYpjQiLK9//zAcn/Wl1zleBGEEis1G46hJ88MMd3V
R1y4raLcmktDfUX69r9Mh6H2JajVF8ms+r6j3qiTjeiPfZTJSI6X/KNqVGHgkGJEHCq2XPiPmG0I
mDSzVJDDMX0Tt5bv6WPM1oWJsHAgMHJixs1FgGL5OdI4f2dZ/dC+9Uvf+7zYF5+huMB4U02XHK/b
KC6W13HRlGZ5iSg0nuabd/4KKUUCHX2aex14m22bSzy6MiKmogJrzcq7UhG7g4pTWIY29Yt9djtK
353Z/f7B8WaAa7MWq5mxjkuH1u7Ybviq7DME/SHg3BIwhNpTG8yJDogtl/KvO+YOSsG6BA5xQVy5
iXCHhrKb/sJzDArHpPBZoas4UI87orRKAT0mla2ozv3jrB3Fa9f0COoDnZQiL0BMRxnLI9Ff7jSF
mR54rVdCbMOQYf1XFk3dTNSg4qwIIAXwdXsyAQ7VlnVdREn7RP7PHFWRGDQNQh8sy9SS3j5BwLrX
ZCwsfPRWJfTvgF9HUD9+2uuvHdusgHX0BEqRhx4bpW9MZlfj+/JM+MtlK/p8mb/R85H6XAbrbyxs
q8wtKDQ1VCeGcIlKjbiXhO+fdLoCsT+GAsFUTt2i2wK8+UES6lslQGG7FwGn5kNN2TfqpY8R3vAf
WOMVwo7tJtv3l6kqXREPhEz2nkJgQyo7pSy8kGmn3+S/Fw/HOTjz+O5kvBIuVegJuMxdSqu2x/2x
vWD22y+C8//4EAaQmPyGvw4yeust567yMBoAfm1ALv9AACbsh4QMRof0Hxu8MusTDqt87etqoDrO
KI8CSMPizcKsJ1lTYd9rkpHbCS3O7sr3BLToCf4ZnPkS8PNY3HjAPZzMpHD6AoYMBA6h6RIglTdB
FuUYVr3yAUcY49nXNzsGMBf1uwQq2wGGuMuIahSGsUvmsMBxt9q/7YkABayK15VHhGZ6opgP9/e1
fWfYnx6JClB5AaeMgAxh5SQxVucmXZvFz4h00T/eKBMaF1Bhy+5rqLKzkk0/jL5sRGmsGe/Jw6B3
QqhxXUNAeVQJVmTnUIwsD2QHQ82cwwT36R7VkWx2FG2vGxKO5eEnaZs0w5vkBk8+aKfrShVcvTzh
NneSblcLYcot1BLebCBs+K8YpMEWD9/XGpjoC61CQNAjno33286jtFCQWi/S4XMpd3VgY9HGH4ib
oPT2lFI9LQuQAttF70j4QEZyb9drKGjN8BXubQRtR+nRPTZ+hgDaaay0bcv23y3UpUH0oPOpZKJx
rHIbx0XLQ1Ut1H02xtpDHof3kmsNJzVyrr8l2SU8WcuGgg1l9qHxyVLZnP4QNX+5YGcZrwk92Mfz
y2YY3zsUTgnyj1nHdtbTF6Sw1FNqqPcziE3z3U+oxVBHK83k74IDTFSMh1vhB8tbzKcHR7n6C6qb
1QXfUPFaxoM8JqaFmNdaB0XI1rn4kfICmycClOqAshmlvb1t2+0ye54hQoNHPZxPyzuocryzBhTK
E6/7AfNBSzlgGzTRTMySErY6ORelQYnFGTtA/9W5sK+dTb0hzqPIXv8ZuAuaIZvuKem8N+FpJUSg
3meTAWeFNQWh3GIzMkRWAb5tKhpnks+UDSlCjOmLIxqwpTsinIglMkCwN6ykjr+digZVY6IpPYhV
hRjNe96fTU5Pyd5K7xq4eGPhjlR5Ycy+/D/tadnsZGswJm461qdTVpEfaCf6kehYndLySPEYmZ+E
SENOEwAMjGXj7OVlEwyvHxVCB9YH80AvfQOHn7ZZm3yCcKGZfHMGA/BM/W2hBEkUTTGQ7mEEeK2H
KAfOsdZHkpLMiK2IJlapcpPBfA0gVoPl+Ar120Yt8eJe7YZMIkwn4Mj1LMQY2+ygdTtTKw8ioQaz
MjOFyA31TcIgdj4t2cKwQ7QH+OvyB4ziy9EBpUBXRro19vuQxu/V3FJaAf426saW204/jud6MDTv
dopgHD0hgYsQafq66amw7QA82k4nGd0ozKF1WBZqrSgIdiy53i1gZHDfbQ4C3Dejac2AMcxjXv84
eXrVshuGdDb+9+1IIiHtZgUXt9xESuLMkv3TsBfmMYFf91FObrreaFnDZH1IdOj6it8Eg7zPDicf
82VgfYYnj/C6+9WQ/a4GYMBNnNulvL6BlN9B1/PhGkNfrretBMpttq2QBi/ErjwC0tfqG7TLfCoI
aI+ECDVPVePRGGrUDVc58dcaKAQ5/gotIoKNjxpENEsnuuAoWnIGV1/U4CZBQO/czH4pKLjKr31Y
tCnjK0iN0E2QqrYvF3kI7NmmDEVe+XianxcjIAAYzhDdLRczH8JFW7d5XjYOQRN7LoKCLOVD2/11
QRjbtV7c5QSe6RMOpH00jAq3q8Zb4DvF1BblXUlhHYfk/hl/nlHGisJt70ZbGGZSAAMvy60OuZB2
qxK6hRQhC/5sFjie8xSWPTMGPAGBVEGEgdWO+Fp42NsMACD5Rl+dGj0MIntKFP56BFwC+iFqngWd
qaNBVB1CUHVlHotWvqfxEuYrICtMySsPKgN4r0lccywPw5EEXDP0rH0t+2WRh/Za4vmDzjjwd/0e
JCTTYMX2kVOI0Au1RDoNwmj7qjWXv6rVcFse/c+bXABp0MpMcvi9yFjH3CKQc0NwCEzu5pXMOu40
TicwTkpN+2rz04nEEu1+Fb4hiVLsIOCrObWiQNjYCCn2Ib7FT8N+wf7l8vr96I/NfS/SInaCOaUx
QegG6zxmvX9K72y6EebnEksVfe79DjX7ld17dqj1/P8Oh9H7aBMQW7V75jcfaD03HFmeBuQlRMhx
2pJVxY74Dgs5Tbo/dZmmpOU7sdctHh0d1UDl/J969oPepO6lTQvnmHDYzNsQZi/cIEkuUUKk+Q4u
dbAB4jnip4nGuKVy7nYUtGasPJ8AiBTOpLKXnx1IHJ/LhQ1AdsWHhiQMVxvw6YQivt9Jg7Kb8q4+
Off60mThtYDDONhnoXVA0NruiPS+/RmtvP0YHQx2oS+UIJciCTaatURoXPZfBzJhi14ptdpADZ3W
GE05iyblwhda+lyL7JERSpxeL03YH41nibh8D/MoYA6NUL5Z2cNBv9rCVTgQ+4+3AiLDqlizzW13
M0pJS+QApcrEneAlgbm0D637oEJdd5/JwpZ5eJPgLeR7dYeLoeCC3DrEX9r8s2Rf/t0yqS958B6Q
bHjVcX326O8oLi5naYOYQthUt9ss3foA1GtTGu/ng5C8PEFIGOzTsI7E16ao1x1qObNPdOCRTYmU
JwtvRrqv1gw3eryaXmFH6baLnl4ag6lQWkX2RlIQVA8stvl3vb73i7CXgd6CcK94SER+kQPRaMdI
smvcdFWIg2sE3ZGBEjk12eiMtkmZZ083Q+jlPd2vLg5G93tfphe48zUaGg3NXJOoo7O/FnV7oLMp
aMMk6AAC+Rfr2FKi99RT1Vzs0FLWv8pADWSInDU8X4u7qtaDFt3aXFBxhV6pn8TYOzqNRUluZ4Ce
yCtCzWoww8LfF9h7xUQHvglNq4lZ3z2SNGUnCbqpsyxi9Woum+rWLr+3dGns5y6UfEgqa565XioG
C7LrLK1UZl99wcfqXs4+QRbhpuKccZZ4Jq6Jh3y4wgNLqruccFJeEp1otHGuUy0qAHaY77wcq6ks
2ZEpHH0JEj3M7Lr/Ky0c8aINK+MHhrIdHyijD19yx+j47a43Kzp1D9CdjSMR2q0Y9aLYU8DwC4ED
1KlSAIeP+8lhdR6f1ZR3FJ/krEOdsx3ySWOaodhQPsR77syQtQHig8f684JpjM4t34llywxJfoPL
yJOemGR0TFXxYEGU86V83ZUnVyFWbti4pSmObQhJt2CWTCjPY++Z0jKL+u1GYi0npatLzBZe30jH
wcYQL71HkTErVaTyBiydLThKfNudCI84a8uYPXlgnRB3WBD3aI/kIOEQTejRPklj6eqZaRLY5sZT
xwd9CNGRkbG+jmnsz1riCc5cmohL/MkigCYuXb2AHymNXMOOYtRxWqh8p9bQpcHx5E+P6A3SdMyK
LiT24FjE8STFF2MdCzpwXbu1b4t7j9WqG2VKFxHybW443TGi18uqQ9tpMPtPNTBj/6w3t6sQo2EI
qSi3AMzO/S21tw8nLUwidSJwnclI0Ia2fDnkuGBHSMtllepGTboFJLD8k7IALOdH71iRCMOOrnj8
6lErrc6lvjLeQ81ERTKG1UP3qLvX0qFWwum7XNymhveYaHd0T9a3xU/K13A/ibn3KKqHihNsZw27
/xppAgl5Gr+mrE8AD/BBkxOcsthDaOh//zfSiriztqIzJAX/FxjkYiTYe/LUP/18sLWvMKvJbXih
MhlULmyRmvvntN/+5KXKNxnx53BNBYzDBaCDPDB/SBdqrY+f23qi0rNJe/IS3MyV/ER3j2HR7SP2
yGht3EvpEa3/wK6QK1cyAcsw7fxwAJ/WGVYvpsXcAMopbEpBsLYVm5d8Zm5cuYIdfh0aG2rdAWZU
oftA+X43xwmN+oMhPigSTHm06QHmMtFr5dWoGCQqL1Uo7IYJqsUHuO5pX9NpE9UmStoJnPYIoYaF
XBSi61XACKDrr65ShifTyEbMnsQJ1mmuFZv/BHMwantfDnFFQ9TjJLTlHL/qR7myi+t2upEGdAin
ryisqqXlMfOBnKuN2NzPf/n/cGa9H5yVL7j6yemiFG+X2Bf9mTUZDlk1LO+bu8uX1PhtsOKHPFTb
7Q3K80dez/96VCa/9v7qsYBSGuq54wQKPSqn+Rjso7COf8APTQL+eF2A4ycAcdM7km9rg4yJB7QU
uRV8uxXrfAv7lWifcbJSqQHCnsMMCrEHBEgOQaZ5O8wrfQAZPd1PxIO0pHfbsSI30VJM5/QsxRfd
/oRFCLxb9IreEm7/iSMKMBd9kI/2fSQM9YWD749rtbDYb3JqELQNKKEnSfQzoJ1Xpc2+yTL4GUlN
8Q4qotJ2VnovTMce8fhNeLKJdu276agYlfidk8lT/kp84WgwZR1OVpkDNNcZyNqqWRjCBuPYYh4U
s1JFNxSW+OpROqLPfm7E67R7fxlcpPEnzTGyuyhR967PPfKdtHY18Zscw/P3CyC/YFz2EqbcsGUj
CEJQHI7FbID+CWyP5yn5vTf0EBh8Wbel7BMalvpOIuudZnUJaEL0n1lutVFkqh5ZYLYqc0k4gPsh
sDjv5o740gYftWzU6W6n3NJ5BW6coIEUoBP2n6r2lxpt85R2rLa0V4gFiDwxyS0JbrSrHCmIA1r0
GVBnFwHP8v/fyNg5Y5Kt4EPdIQG5H40b66QaAGCRfimi3v5fTHjrWs6C9ybV5BFC0WVPeL1Q3EhK
y34dHuTn0Jy30C6L1NuxSvlkejT8ky63fvp5frzbK1Ni4x+EHZuQUXoTqBBoPJ0+9zib7Ylu2FiF
gw/g+v9oyrMxlKQBxZU4Ljd3yvcXTlvpm77GUoZB7hUZ5YlEP6MncVaV6rdHaS5tQIfjyu0ynKZS
SxUyhLx0ME2kOb/jfyxo6hW27j5TsXq0IfPc2cV+W5gOr1Jqn1CoagdWcj6S+KxQ7YX6m77S4AJg
SUfKdj82Q8yInDDvi/KrJ/I+I0Pp2PCvGS71SERbC9DnLgGpiR8MKZybnTHojQ3NTVuqWZwzKPiE
lGkDSYfZ+0KBBRlRJZKLojbEhgPEg9LkyHRoxRHmMrHYpsTqbMs0ESCLrqeTk8pQ6dzgUttzIkUP
zQ9JJL6hbSPVAOEBJDWRdNXF5DVFrlICbAiVj2Iw1HBEcfNHCZ5yKuxK7QyqYO/i7EoXDQD3WxB0
nNR120UbpQq2SdEzJeX79A3TUmVpZrp2PDyu9dGRCGHWypmF8YQ8+M8CfkG4FiSLWiZ6IHG6Z1Xz
zJSn4sMNMFzcWrf0Z9mA3FnfUCypvXtQydUGXIh/Vlha3L+wu1H1PzXsDU+9sdMRR8OnwaDzq+Cc
t82qRoVXg3+RAvySrbo3X1uF/KcKoenuROeyAq1zyQ7Z4s4mzPtIwtYtfPr0GR4PMfwznZArTQQ/
EVF5JrCUGnBCToYveQYnb64TD2MWNpPnPt+OPkrKvmXQul8nYB0NYuUo5ibSTjuAc/+TT1V4q0to
jOLxqARklaIMiYM8I8YHW9DpdkFAPAIJN8CRXbpFeSnJVz4wf80m4Ypxn67BKI1dO96a3zRyer/f
btRa1D2Sq26Hqek+zUL26gRNPLekM/wflnOtZQ//99ht/Qr95WCuctQTos70eIbhbyJ1mDm10k7j
QSMbVVZSvzsvAgpbRL56idB8CxcKVVjAj0/jpEqS4aVsXVNsmxGP0oMo16AEZDrCZExEMLqE9nhe
xB46K4eWPK3CCgbU4D+LHemjcPMg5XI327qTGyxr7updpw8EQUq+x8irbnkNR3Y04tJ8kgekYrjc
kda4yWlTqIjIqYQWAclAFzHZpikuPX7besDSSTqXK800kivb52oqhQEguVM3XpDvJTJU1tIPyUgi
cNViKXHr2/kT1CLrk0vmPLGEB/tu4XcEnzLntK0KYo54a0mBiiDngPhn0rrFyCU3G6WtrSJGvibe
Fz6oa3pOH3fEY3kQFgFUnTYmOtfEEjGO8Wm/Wi+w5sp814f7wMwlJ4LbpSRbDZnJ4d5F6ebj2ziD
T5770iXXQnmAgHc92ZJqjDyEF6nJnZaQUe2Nq7Y9u8CZVJOQhQvHGSz250x2CGLcP8Bq2KM1/Ps1
nCPIbI1Dg6YG+sR0WtsFjzHO/in141BJINl/pSlhOHb6The7lLRAUMy9Bo1CVgGh9ODMJS3HH3Lq
A2IZGYZjOd1ehj7tF/XHWjeTLt3/xwibp/RbGQzXB8G/hB4JsJop7qiT8wTrCIJm57d8m8hFOd4w
pMRpJ2QTo7GsNQ5JrivHpbWf9EFuDfG8WLiw3niXbqS+tu27AyTMAHwLF9eUEOe1tLbhDA8hoJYr
/QK+Q79QJjU97oAImvifrVdPM52TPCbOVgRGt/F/x6EfbQcfu5Ei2L6ORsZnHdQyzlRwZrmoixcn
QhhYZ0Pmc7Lp9NEbc3TaAxAtyJNcgH2p+kpRfLvOpS8etyebnh5JVeVHiv24xgb8BMvokNubgEdm
+iB135amYq4USzYRRBU2C2EGnd8KKKI8hfseZnYdLYHhZkNg0IFMA/EDMsPV930gdy9T3sqoViK1
vkwmpm4YDvn0rnaDeHkg/3xnOR/q4BSv/A1nhjr5PKtKFFdvn/r9UNBYxFIzFltsBP0LypKe1iWF
prTSk/fmURqqQgtRjMoKdDkd2tSCmk1+CoF2brG6QSwrFAGh5jFFVlvbE4EGle0Udi5XzDGKEjow
J7D84UVfLRtcvqg6ET+CtAbIzseo2KU/HVu1wKoNgBWTQoqX00D+UgC3IhkU2PRD0Au33dRhmxEA
7cKqV4mMMqdtEXH+JLpmwuxEpeMUzy5tXeSSeVzsC2RxSzfgYOxJaizX3OKMQbyCJvHwK9VyiCmG
Qpv38/dFq9917z8ODPu+3Ss43m1/HUJQVO1NW7BEAU7KfawFv1yJv3ifVCAeR1WANeZppzjmOwLT
mrpyd1fmvcjmao+KAcO//3XDqJ4Wb+Z9EIApYmdzrfLKg2/A+OucIPs1kE/R696apzzL57+BnQW7
tZjtLzvqJLYZ4g0NmClHN91nQteD7mdyFBMctZHVy8UoP24orC+zBhHUstiIWhv98Jw6/QpuKYtr
beeEQir8k/6E3eiuJfJODr7RvGJj8ocBJQkGZ/K9qrBqYFtG1M7bXbdJSexNwKD4b42OTzO0GWFt
Af36UV7v4+uSWCuvY0H7lwwrFr2IDUUpp0T5GPBRim75jkgYzOn0HgUd09ZYMtL1cyWniHIPvlle
l1x26vXzosHx9q30AYmAR25cOXFEu+gzey3dbSXyeyeSH+7GM1A8KPwrNpvhbYemmPqO/yZ/WjIV
C0BMm4j8GgRUKO8o04gl8+ka79yFcrxk0Jkw83jt5ImIaVxBJUsuEmNE1i5iHA5HLqUgYdm6q681
2J8bk+MLxx7/AIu+uptP+fNq0RPE/o8JhoOWFGMLEAVr0KUhO1GkHbYkgwQT8N7wS1dD+ha57CRd
7MIzXZvTrK8DWa7qFollsqvLs3SvslD6UM2OPcYI5NcJWlwXZONtJTnjAQHktKQNhWe0/NbC/rUN
bCSJ5OMpHsPNBBZhYGwJrBio1ewQ2SSvlLuwowfetYjRe0DJixLlz4fUOt1BMHR3tLX0HSDzn/Wx
jWJk7/e3u1/gFPM8NIFwXWrwV0qlRabFdqVR3o4ZSAav+Dt44XFeSPpEuf+yUHb+IV4XBIcGFApn
GF3/OipfqmJeWgKmAdJaO6UVMcBJznYQLyyB4UhLAYfI60IvHGsWwzLiZaworKgWeeoB4z/WvSSR
7bKj4jgRIYkp2gsMSzV5zCqJm4WHTsByz230naPdKwwlckvzQ7QGSYeadMbSWqYbpzhaRSEsMwaS
U+NJQ0acCkVi8HbgQRedIOKwlCCFGZN0CWGZvGEhNVl2qVjK+Bsa6oU5m7ais7Uh9dzHBQUehi3b
OHwyA+mIXhMGbyqY42GJ6EnL8SUZS5cOsvHLta6T7Xcvi1WvkRJ2JqhpGlI4HXRqpU6QYg/zje2o
4hwOLsvrYAURTg1AIIczFoP2EugtO28ZlCjn+HSqRmRdJIiVpea9gjoWTnlz7UDullf7VW+wDTKq
m1qe0zDIgm2YTnzt6XtxIGEupGlSvDPiziApiQCqYqMELRwJStKIo3YdoBkRX8wkRExokvZDAaJY
X4laLK5dxMHnGUsb6wcRhAXY/Qmhhn7T/MuPxqZ+baOl30IIsupvhDOyjBnRYwFzlpEnDxe3soZG
+139ExrSlyVkTUrtkI2Ib8i3F54yXb8b9K8p4LGPfj+IIwfaQRgf9hl2yDU2RcYnXDdau/PLY2dN
5PWUnX2bJHCu8ayALTdXr1lp42CWD8tjoSp/zqzBtVFTttztX/PZsV7TydihSwvCfyEw+5p0yPis
CO/HtA7OoTs1DTClWTqZWFp3ccueFAOc5vijViLS4YOy6tqMJSZc0dn23ZXDLI19ZARjnehjRkOB
W12Grt3sTUs5+veGa36WhGbAcC3ZIEa7Qh1qMtp6/BCsOs0VnfolwWlxwokBGh8B+FrNv9/gJAsf
inh0K/cnKdg/NjmnXtibw9vqWJpuR1Puglsus79frySiYNsOJMA1HGr2QROQ+t/O7igGC2NOGHUa
G+gniYQ18R7pHVWJaTcQOUh1pl4Xv39uHtZqKk0Vnd16XIcnCI3oC4U/RDyuxhc79NQFhYV5Hpk7
sxxOjCgbxmonVseO7kOr1dzmilO+ab+OAxeAxq5UwYvq3HzyD9kah1sxFtetSZEaR8d2QUYM4uz9
TPSOsg06ei8DLZ6FMcoyspJLj7ai+SDNh6X+0+aVLhEGXryv3sNpmCZVGG79cuVAbFzbh8tZs0Q8
YlnFemZq/Ynn1tHIFgu3aGpwEkEuRgYujURds02kNPnOwsGBMKt64dmsCwfPe351jvLdGUoWHGiF
anV0bguKqd06yVGMFYUEdvK521N2bdLSuuSWmNJmLWAata+eN3EUlhiclvHTXTcAtQUwBvcAtJag
PRwIzEmHUOEepFvG+1cG7mO9oksph+AOADrWXj2NsN8w/TSeoRT0DpyOqa0bFPQ53EOpewr/A5z1
v6U661JMyc87nZrthwQsBxtXk3h3k1mWCMMWPW+A8XEnxiBxLhiph1XKKV9M06WdBA0TBQdVQPvE
WTNsuAE2Q0du71An3hriWNOOMnftbaSlINDu4XSYhjQAA4BVnANgO3QDbM2jAG1fMml8O8PsMk8G
mW5nv5cy+v1VcOWJzSkSnbOUyx/X1+P36i02twTkGF8QcEHV0wN93VqFGfDYK4uaerHcqkr31wmt
F0KvAcBChmiVlJ9k11Zyn8CiliS1+e3eZP1viVB/rk9BWusMGBHpJ72KHeoLeYWedJEchAkrYxCl
moN4KqCwCc9qqQpZ5rJsd9IfT0WVpMFPdULsbg0mvSgaiO+QMOuGpEBZrMrxT8OD4THHdJZ7DJIA
JRW7QJfu8b6ShLb6oPzudNq/EbB0gjSDkFvrz6HFoYuytqstfzRUwA+gOFwTwmSWQK004M3MQb7J
SgsoByS426ZM6AZP5VwmdJdR6eHJIKjtyBKfqvV0AVSYt0bwKJU4dAFT0rtda9CzBB0CA5bJwMAq
ZPY37iFood4OhtDIS2+/YTNsT5k9g1UQdmXXuPYZKea5KQkC5KPzIUgZ3MZ+FuCKogX/1Rt5Q6ZE
apJolE+bY0VAxu6RZSqN+7quNM3/Zxt5iKUP00+SUO03d+oUZFP/neUrW5A/T04Sj9MDuP8aAFOs
85hzU2sL71T4RAip3DN+C0vy+cpRB0CY29wrhZZj9n8upmtliYrR3wh0Eztj6XXngrltpELWuTMS
o/Hv0xlnVXcuFJoNbaV9iJpwDyElQK79Wc/fuZ95eAp86EoCiD6pPnUij7AaHsMdWQCKMM5wItz3
+UU4K5lyRyF9Lb+4GWx36LxaH9mEz6Fq6ZDKEFaJ5NUVcY8BLAiRR7w0hReCQQ82b3MJZUbzE+KE
12PNprkbYa94SXGB9nC0zHr3ZbeB08KcqZeiBs0wTeoS+wIKJSvssiRDVdH9dxoaglwdlUz3O7xe
hblWf/AM+kzKeBassn6bJsOH6wn/3NqOpAzDtB3cfWggFrE0d8MTBxsq6t4lq/FGMqRHuxBh5JMa
exhUZmciaxOYzU5CR1/OX10QRezTMg76mZGUbY5d5bsbWeJEQVn8eY8pnDv/xkvlC4SGy2HCOMmc
mC+cRmvHni1/y5kYwJzmBfKcQC2EYZHca/FMkyQPCW8XQXaIMOh8yntZHSOrMm01iKe8URtMD6CQ
BjyOoZpc3SzvUumaB2p/X/FpNSipx13cbu6KDD9eHe2+7PslyO1zsHVDx3NsC0a3MSpAnVRq2zBK
zbTZznVYqglaQYYVJuxzsZugO/HxgiKZXUPf8Znzg0Y1HUB5mGDYXAeBDUtVJ55Ed8QyDPoTloTa
zrgmm89vy3K8U5RSYEGuuwHepWyR8dBZyTgd2YO1cwQ4zJ/qZmoPuaWQl+ItVBnNUc8FIClteP2I
VGkCDp2e63Kh+3Cl1/qf0B2esq6A4/JE2E3Msd6GS83luzZ9pxt47N9HMyUN264CuAQbtLqk+90h
2tJOU79f+0wHsniWS6pZ/P0tIKOMB9ORAY5SlZhA0ejoKOC56hGVt/OpeLdJ3W42ZqWXOIa9uHF8
8leHYYmA9VFuKGoScDA9oczO2HnaLr89g+jJMENqsL2CEALKIqx0vXkFkItWuztKzfGGfsYp/up0
igA7ctXyXvPXaJaFk+4cwbhshSjb8pNpl3ATOh17vacEMxvR3XqW6OJpvpNKKY15o2lYQGGsvChr
2FFb5cqqsISzHxWFzYMWilEcMlkan+4FCoeuB0ScDAyU0umk+t+T5hD0CK2IG21lgBA+ggHTwU8d
9luuDhzNnkGXbRJB4Qy/C82gbbBiLv/kpTIKUcLB7IaRNAuKLYmq/8ES8MXYVJME89BonSzgTt9U
rQ1ww41qh1cGF95rHRhcbESSwHDYGe+4biIuWTjbchBghhHfQHMa/KuMY3/JJzezsz+Czh+w5Krj
Xz8/W4ILjc0fa7dMG1V0uF6FqhTDUQa9tULI0Ff1xIv7Jrm3eZvgChTPw14Ou6RVHL3+ecWTNHm/
kxWzwhUqAa2PkyKbS6dLjxejbgxnzIdOaS/x6d6H62tI8pErg/GG+0v29U6BKQd8+vddtqjdinKz
RhyAumaT5MXe3ZU9aI43taQAo4ZO3Ktu4cnwfsLmMiztnwUZ2thGbEY9Sfcur0PFX5BhbaaU0v+f
xA8gfquBxBoeD981sYdnlCT8D54irhK67KIFX5/Rl9WW6OJ4Gm7NYFZFU+suobb9CzA4UCmZq/7+
F1cK/5LWXYJbKI4EbqnK1nzLm7rJhx8YvOJn+tT7mQtyw8xF2JNxrKbcd97Ux/m6O8f9hWWwWwIi
nXWugKjnUC+jllW7W6jY9KofL27w08G23U2vVMaQ/Ns8ThL1FzHzb7jxvcNccfkDHfTPQcf8m4B8
cFt2WR2ZuGqub4gdzl7vsiJu7oIH5KDvuvj9PhUqEKegb4BlNdkWp4NzyGFLUS5z9xIndPqnU8Ml
XKSR64JyNWyTSN8I6FpuGXyS+PfGvNYyXwD0T3sEDF5Bg1gP/P66RZckSTVPQ8RzyCy1666BWUPN
e5DL63/XEkbgWQOmqBoImfZzc7xRqAH7N3TP3BqWI0nyGD2fxvo7sbDKXDToziex7zV9jvmMv9+7
sXvpMhrM45aRObzeFk1WFYokbZKQXyeukI+r87LtiNH2aFDuBuJP/r6QANxxG2Pa9nsBZdgPV7LM
5wFxoLS7sEzh3W1zZvVQB1rCoNizH4j1EYnADAoSXzLUResM1noVQOQpgziUgdBSlIUJJbJIW3m5
tRZkKCvLpBsU/BNV8YKncC1JJ56nL/OgOzw3Sq4/jYKonb2lJixsSMLvh852llei8TtXNiq4u1Im
FAEnhPQWvpF+wSVW8bhubKzGXQSSwZDnAMPjxufC8xmYtM8so9I6OYiAI6puqFx3Inq2D8XpzWs8
c8xOVfQQRpH+S6QmtCwDRV2ivTTA/bMS2lCw7uLHubrkji5W9bezLWO618tFd8q+I5czg/CZ5yJ1
/2jSDl7jXOhQQ9OYq/O5Vjj7nb6i6F0pkkFA0dqkqbukGX4ZzROKY7sjX+1T6LTUg2DlI7y7M57X
klLWAqQYiWUJKiZy2nZUXlpgdg7YuuiJa3iRhZyD3kMXoj6HBy9glaDrhVo93s4PzlsRW9Oskw8E
UpLS6QvUgQnaC/C0z60BPJpR3u3vjKeeyX7rgklu76wXbrsQjQ/ggTOIyQUzRHNJ3uUItnKFNMji
hbfl100xBJDTiGB1CiMPJB/RKuuqWi1MHh04t1GwaQp+K35+N2lm6NHfo7SeWGZyTd36mWN+BWTR
nEfdw5Tz2/vpWncHSFOK8MsKZ12gRURCyV9zAOdk+mVyVrqoYPmdnR4JMIoCp+uXOQiD1/BN+EdC
Ixxn21PV4yrwt35VHCAhv91nkybzWxfBAyp2R52H5bSmBEkFEh8xTSoYz1j3dc4CszW6+HRK/8ec
an+u4XfMq5U24vKONsMfK26C9objQ3+XH2BFX+KccAbPfR4rLZn7STCQhuutWuWCIAvB/jthtYCl
CezPDRj91Io1T5N94BmBDpmlAYsQBATGge1AUN3yq23mPZ+Rl9vQt+DFgN02OdMdEA1ShGbYK97b
PDAZizbTZoD3Vf6rUmAN/hsZDf08aw4Amgq2NiUPfLoNiZ06xbjdIVvCmDvRGIvu+uAWLEoeARmN
O1H4V5L82dY0SoCC509AZvonemnN8wKodzRCQ4kSsfBTsRYDLESi5QxXDzqCZ/DMj53b5wQX9W2v
Gymx5osB+KRrg9h0yyo1Cvg5Wycxq5GSOZICWZybVAQRe+HcV7DnLfatdSZorVax2k+D3G9/9OKW
2U5b0quOSCrCfhdH7hyuLF7Mr+U8Mi2JQZTxlygCJsbNN0uxzH3fbywDfK2YxtcWCLVmYQY1HkHk
LOwVmAjBqOG0K0hNgRwR1pcpUe6Ccx42epiDYUIUqx7KjNbhNWu97BK61CXkwf+qTWhtpyN6uoKD
dxBBKiv5caZnUYkWxMs8/6BqwWdh6AP3qfa36lTaLu4y9LZJFRuJwROETNpGtY9dRe20QvhgR2d6
laWhzyUf0KtFKTuPf3/N3eZ02chkWutIy19k/mGEqMGqBhMo/maEsdMHOfxt6D0cDvspcXLVZzMO
ngp9QOCbM4DlL4AlpLamg4RFHj8m3bfJuul/mMLZNkQ+XeX+C7nAhdOzowyStXtLe0T5XxGXzHC3
q2KRBZq4aBtG8yz49XkOfvWXBxrvkSKtDHqnx9FmjCpxJh/ZH4CWE5jP8A/47Sz5tPDetS9Ush2y
6OGlluvC7/lh/ay/HbFECKYcOEqx0/UUAobFPOD+LCxzqYYRmedd8MM0nZhLHkzhSacqtvUa59xu
6yu3E6bcRakTdeRIQwjCq1JXw/xn8BqZkTn6bazUzeSSzFCgKwfNl7EJ4GiNI87md3skvPtaeMxn
oyXjy1dQEbWIO+NGSzjN2o74uScXaOMKkuILQHwUoM5/IxJMTbWx+3yDsiXdOhZbQjeWoHWcir+9
iavBkR8l58vMmJu2JBQ4ZDputIW+4NrFc4dRNIx8qZiYo0RQow0cKi8ZwQ9D57rjzHji7CScMbzM
aETNcV9LhxWTPhVkg6SwD0LpImKj68jRmMEVNVD9xklybLbmXv8fhk6rhj1wdLkdWgtXLYNI7Ur/
nHrGfW6Hhi5pKRfLwrglbosk0p3JFmf+SvQAktCvJ7Vd6v5SmQ3sgnUIP8PoZwrU4n6iqFFtXkhg
GXeeHA9V3fMKBeeIn9cPmT8T9J/GWjSoCa4fvPrNxepL2+COWdX0QwPinj2Bs4KooWT+9jkZ727J
XQtCUIV1J1+IJoYdOMi/+riamZYvvGv+UmnwMG3BQ6VA5WQB/pMMuIQqIVL7NVDhUiQdVSVgBr/4
MuPKl8AvuOGaGFti2viYVh60V9d3hxkG4S5oKvQFmvdKdqf+71Ztjem9YHwQuIi+mkX81kKMycSS
JmEKfnsq0wCVj5kwcs7LYHYggGOINnytHdWZWn3KWkziUFryJ+nu6Rhu4WKaskDQ/nogkClsfEra
HBg6lXT3AI4tQAiFpRjU5PqrE5e01lM3ZMYjBG0PMsIpTTN3irc5KU7b8czdxmWIiK4a1nrQ+M97
1hq2XweKqzeir0mfwwJfwhs+UunZg5GsfQPCpYUHjADmVaUcWUO6ZJQAFiNZz5gYZanUSQ51fGv8
hGFSKoMzZfYNZRX9q7hlhyUzrKusPkkH0/dcv1gO+gh1eE00K/2f8d6bSLCZU05oPYolTOIkMLPp
NUhrZYKvuPVXC6zn3Nx+Hus7TylWMwWBPRJlOuE1zOC0pc2tuSwiRg3XRigtnY8uiJ7k8MYBNyt6
wCSPloKZiQEIy0cXXMNiFvVN6Fg7P14yUQnmurve/VH1EpvOx4YOfl1cuN/wW9Tc2ePkP91HnS+c
ERyoiA+xKtR4qHmWSpGFJ9S0j/fp9Iwt7a575xDztjYkQnJ0ATWLrdebKlcof8yRIWT87dmxBDp/
7sxJMConJ8EdtayOlmSuyRlEYLQ9nSBxLMr2DsnoF1O+BkTZncuRlUXrD/Tzn275/7rGPgHI54oZ
AWYjjiVAuJgO5zRxcl9AHvQNFWj5MewMwJBwUTWyvQphVV4pbXZ7oNN4aYQ/rY8BT3/V2/dM7+EW
nIAfmgf+Xdvntw6wFjKWlAOgSMwi5MIWecD8Fm2394WVFU7zD79Mv6fZY/6ap7ve9BzZUGLj7WIA
zKlZAa9dSKLiD071yqcGzAjZXFB42V4KZ9mk8ngbmpR5iyW33vF4/VXjabIItyEJRJKakUaR8y68
kiYJw1kwIyalbyQ9G/pxUr9Ah7GqI0OoKW+hKASCTJrrMZzfL3SL/DZYZ1zAk0eHKpGf3ylWMVMN
m6BKa1lGv9yw3Jaena3eZ/0I3bHMnEO1qiULmg0roVIm+Ea1P7rRlBxgIqxkbYVm40WU8V2RuLhq
SnjCMuw+bBjYnHiGDiV3PDWrDp7ODZUWvZJdhHYsq7lnkyz1YwxwcdlYtDO9W+5d54QGdiGGE6LD
04O3+HDNk2YlZFKfpqeOZqb7YOT0B/r2czQ7HG98iySV2sgDbfhg5hHPUrgbBZrcECzIWYlU8nsJ
7J5wffhY3Pe0a/u4dBdSwnvmKF0tiBcf6GlmbN1B7MogJuJJGhF146877+YUvD7rp7Qp3CKE7n79
e5D1fAGeykLnxX6Z4M+OBfqIn9peNJi94uerFgxkeX6FGXPMB+0f8eqg/qE9rBcmj6Ggw+CAmWsb
nQ2nCH2KphkANSQFhNf8lAfpEC1WCe8bHomV4obq6hsykgiT1Ub38XAuSjGqT39RFFcWw0e9fpkK
NuBhvKZTwpa3ynQqtivyePgscUBSr1wzHR2Z7BHnUc7ohC3gZCGjpVmp60utBh5g9NZ0ugsr1xCT
jK/AUsAXAlirWJRN9omXG4MAcfwQGu2qTqFJILQrl5tM4hwJQvZ+RKvpZsuFiTvabawPlTkbPcz8
XBjhGGug3o2BCmMrLNjRx5NYlaVHfbIg35enIh+75HaOajo7Za1rEKZR5tDNOUe9jmhoy6XQadn/
h3CeeiWwXYvqw+7gFnwQz1oCh4DGx+b2Bzk7SGdUFWtzk+DTttuP/areqPND/FC7IDcvg4f94BFj
oW08wYTXnoO7XXJiMn+4ruSSfVJIL50dR8qLsnaObPpj8CLUpJIFMCPqf/5VfcOZ6tbTHbP6pr5D
C/yDmPRBo34IbhicK5feBntcwj3SQx1eO0CnCBzLHI/kslGnDfCzoh4RdnhZu9L5hOD4lK9n0bpK
FYWbZ0bMdMXx23SiFRGMmxyOJnTBEBk9ebTHzHMtKUPa9Mbe8WY0clsl2VvupRTe1l8Xu3glB7rA
Z/FN7I1fFoetriuAOkg0s6akCl0OTJ/nEiBjPs3+rNrIkOST/ariiNjxPF5TSslY+R/NzE/asOoW
KQDdH5fcUsSOJdDBun1Dukmp/wiucn/6xoCzlmP72ViBdpsKrRVLgSI0twhcn5UZcmFWWsz8WXks
rfFArN19ASPccA6B4MW1hfWOe2Jvul++ZSNI28BQTD6VlQrjJ+pXrgVqeausQUE7xWLZXo0PAAx4
Vj0DLXuKC5+d8S0V+25i/lXxXwhlAJjhrE+uM9gq9YQF7QUPtvM8yehriZK3XSrxW9KSmqPqbzVM
xQSxakFYjXFJg2nz5nG/+2GVJPUY0z2Y4X6Rw09R7HhoqIwdtjESUZ9TpARYUKEl+C4MFYF5di6q
rgF0+stiWoA7RiOTAzALHmkcp+mtVlqJ+4fvn2H53eeW4jXcsqFQY0uQzk1Roju6BHjAG0tk+U6H
ZcQbSPigasT5nYkFkqrp+eI4kHCDz8SemSZnt3/cdlKca78AesI0bzPUcsm8IKAH9xzPeQYkof6m
nF/3foDNdj5o5UfgkqIibp7PCbmlEoersy4eG+zb3/JrM7ogwNJKndXpFLacNmJy1ZBEYmCuOTuG
1gIP+1PPFkW0eZ3agJhxyh47MiRPnNV5rP9TdHvPTW1+lDLFMq1bofMw5sbtfYxMnRhDqIv/hKIE
Xj+ymVCbJngP1R/5oSTjC19UXhOxKLohdQAVlAX60lEUMoCzrfWejL4tHNIx++nH5no0xzs4rpzb
uaQQr54zDXmKfXgCUbXJBGxUPy8m4i1GF9Z+AWFsS6JkytTmo9Rrq7XDUoPNXFkei6vMCGHUWPdg
zsYpxWJguvwUgmx9+1mEyezqSAdpaE+y5/5DiqIV8rX3Z67lPV5FVGBVajXJVq2RDGc/mLWJcPNW
ghamrPaHd+DtnJAN4XZzV+i5bTiKoraN0jSEW61eCU2jeFoFsvI7mNdywA6Lw6zTOxDGPzEjyuyZ
f3kqf3SuJuzt5uzNPxyimaJ1QZEa8HGoSSCQuzdZnMs6irMMmqbGYUA0dwAhmMjFkK2WVlUnfeOZ
uMxEqm0EFa+sE0s07N/2nbDqTzMwvU61fTcFL7Vgt21SbE5NVyqcsc/8+e+BdsKLncecCOxPJO5l
sSReIdZBrvEbIBHDgcQXLJP7YouyRGOZOrwDml8gejMbMPvIyUROHw2mq820z+61bGaLF1GJXddH
uMjiZb1QKna/+KguUDi/3HYOoPznVoW0UsorD+qiRFuJo5SOcCLXc468ge2aA1vJ7o9BuP2GmA5D
zM2xmtBhvCqksf5f0/N+KWMadD+RzYI54uszNVgrdtJBjEZR1vC8qzzN2P0MyVkNpNBQRv6yzOot
VD6v5qq8KBbdbJjnD4FlrbbJ9b9QEVAoexhi3colawcTdVtGWrIgt0x29GHQPbNcVgjl37EUEW6W
HjtyaaKEFcHQqVVnNQiHKYl+fUqw2wi0FKVhIqtxLjYIiPLGZHIqnlbfYWfOMYuqaoiE/eUVkKLx
NxmD/z/wnOTwPkef8t4dJZO9TPuOMy6QdB4zMBbgS+aPnB+CehGpDBng9TXgQSibCAnsSRljK+E0
JuPWTC32Riypx4Bb8iEbMaFE44JfgO++njwvinPmmftCcht/+gYc4vqmFPRTmmugEH91ofWpDmlt
tab1IMm4UciZyy3m/giiSfN7/ehUW1EuI29tj/EYeQXxVPVFG+6TrJyHAfwPi+us1nlz5tLEO5St
76bK2fXrMuX6TtlL7TmAomzN4YLxqkGZbiCOYhgqGaf7xvZ5gEgZyyjUQDIxERbbdLdZfdzoG0bd
ToTMtMG1Ab78819ygVe2kPIbc6VcsZdfTN/iKzq774ooXlz9v3u89ndJbkv2fMcw91SyW2SFVLub
OmoQGxACox9lm70Y/RRrKQq4iOFl02Jqmqsi02h5X7wlVKY2x2GSKM7DgW/1Kjy9g6tjYzEuZoPZ
rK5omOLUgHt9p3H5DgYfQiTj5fe4BmMEk6i2retiKmlS/PIbaIyW3dBvBahG9DREWDoZ4WRWfM8u
3OeiRigtKieGQX5aKkCvLEiMJBc5yFuxMFrrui2EePVeSvoQuPrK+Y5xag/cZM1olQgUyCD2VndU
Hew65DQrccf72cURsRqQBHFg+JbCeM4TYk8Vp/9cSrzk8n3HrfD/65dpw/W+HJz44mEUXHYueHfk
nYqPJRzohNpwpp/EMfbkLtYyTaEbRkCEwfyUe9oW8PNGYAD+EvsU95LbQr6bSy7H3W5OdNHdkVWM
vSkJ1QMMHrDpjH4NPPh/pwkVVQnfzRYAK+YSBgdOjfNbURliSopNRgL2SP/1I1/3uZxjg9N0OV/d
pNt0y/1IK0sUJzy+XOaduFuSf7ULQrqbjDmWx8mb7ljAYoQiUadLWm0N0tC7P4jSta7KY2WFEhah
IkHUkKdY6XVrwRI4kLSvWjenV9UINLdDEBfamB95V3eZnrIc7wGqRrJZj4UWQfVmmUOEvE+P8zdr
k7G5eP1jHZfYZoSIzCKxgQggbrGEzEbU7Pdq9UzPxL2SgH0zJ7cSchFs+3JHY5dngevFgQQaOb/l
xgUvhRiHvo0Z0cDUNU4VqBROhwsuPQCL2Kgl7Pl1rrbgFQZM8iTwff4HBqHJYKLe+L3PIYWlZBJk
sFO3xdcNolff6rA5rZ6GihwFqMrjfLFTK+VO3cc4wBjeRA/bBBabshs3M+OmJnatS57N7DhrWV2n
QMUlZl0Gbt+Xj+G91kp4rtCiwR0uTbbuqX763lAW0jXiHCCfHEu+CmYrTjAS4jQ5djSzDh4uGdFu
/Y0TYK8T0L8piWqu1g97sgonA8jpA495pyEe/GH6uqwQoi8XtqO0XZPnaCBkIZxd9Kd6rxI87SWh
bye3vkyUgFpCOFpzSjqYWyML2wU4HbwgeEm6HfJUG/h9hsFTt9YltfHWj/AvILzdMVUPUFgcyvAA
kiP6AFuZeXhINDjT+MacIHEyDFviGMoZN6fhSCfZfI1uiXRd4W1GOZYyrzIyG94S1Pb2eHC1OdMY
AF++JwZvraMdpSSRt5Kvh+QRb2ckgFPNHkNj1MlSjpIF0AXsGD3jrjUdNdkLaJ/tUtZ8aFiAO1tm
AJaMBQO6ThyYNQEQVwd83xfy0UZBOCt3rs8zTZU5Hy3rXTtB/w4y1606cZ2TN9ZwFfVV+KuJGy8m
FKKyf9LQgeeXydiTkzn3m7bK1bRee6fft4MY+muO5e4jI0gIgGjC++nSXfTG1uzyc5cbmOMXP/WQ
IgEJyX898Xs/mMJYy1LI9+L6MHf4mRITjNHnHZeXWbTW8NeGuxHa5BpWNJlukcAiP5GspCWJxanh
taMrXGXMJWsld5eJPpXxQmm4LY+ffs8nDbXHKh/bLJSyBzIdxQc2E7MhAqxifQ0iFaKULBDnqZnL
cu9+NhBx1fcSt/Gg9wou9YNBrqnYyn93gpvJcXSrOMu/xVG313eaImtNXUxdVMQP6M3jGdNqicYZ
bXYJHrcAPsDN6bwZHCZajf9q1uKP2nkEdeakYkYw9QE6lrDQYaKRqKCRB8d3IKusUQrRMNsm+8F5
+dvCSZjTxiaxdRCdIGukrvukuUsmBnQkQhF1DtWzSfzHsN+2das8Fb6kTVjeh05RJ1BcAs69xBT3
pDjMAvi/w5PzqWgLy1IBRgEUNXHrBQi7QKVQwqDqnnkZQd7AmEivW4fP00s2qP5ecFICwN5l7b0g
lxcmVQ/MMiPQtXSHZiLoHuxhqO1SnsSyYfMQgJQS8El+QA/nxvVQIGtn36Ie4CJ8jgPcV+O1TVHK
zxKH2GJnpN8Gr5dL1jd4LVv5E9q0QS3s+SSsUwyzc89twHRwizZtK6resClyRQpPx/YiBowBcUF3
vpujd7Brsr1f2SbF0VSl5lZlDN5Wjx1z4uPQNPO3BHp89cxmokJo26H/4hB7I1rYd8FQ2JdpvuTy
xgjGecCtW6WagbSMpRCG7UKwPXZmAEU2XaJqmbrIvMaazKfn8/O9XuV3vqdWNegJ11YJhYRk5TO7
H4MlZ9FX9GYFf/pYzRZi0Vyvm2wPZpc+uO9j4IYLLjsVR0Ccq7ukMWpXEMZZCxUDgylTa1X8A61V
yFmnqP1TlKC85YuzaDGscJ4Uu1X2+vYFQhWwDqnpnuy1BzX/0rqWQV9DFWkpAC7ZHR75tai+C5GV
mhdYA9R+78aK7fJzejFJAOPHQcxwURBDhIRMxQSRQd9I0Ot4DhlR0/VW5jjWKc36vbFMNv77BcLs
vISO1L8Sl7M/k+vBFGEn2siaqlb9LyolRUl2XXQz9i0AW9MgGB0bCCXEZQCx6JlXE/8wwYaZ4Dqv
JsS7Z4XavFGpsrCBYXt8ivDmuJ2WPqqvmdhaYVPoxqONDQhEQyuol4PLhv87abG7pP3gV9Y/50J5
XuLrWRRBofJRLAzirvVCSZPTZ91XDfDpO5yqJT8cJL6JUjfVLKjUIeG4Zd9TNmC8vzY6Fh7VQ9Xh
IgVVrHyMBnzryiI/DeibNVo75zhxlUMrCuo9V1OMg1lPrEeQE3kLX4K9M9i4X23sYPM35GFa5dBs
rq2heT/qqyNwfrXN6SEWvE7mvJyjrtGa7SW94d0FEHKVrgCKl2+2Mup8IoyPt0S6N56kaNcaVBmI
8eeZucTEIVvFN7R2RDdn/2Og5DQekSUAqbpkAsOFicjitghx9p09QvuofnEqfS+egwh/Fja6JwoR
He3S4GkkbemuoHBFlJ/DLPMl0ZZADAaidJrfNo84cZ8PAPdF5gou6utGHiJQ3pWbGhefVKClMftH
HOoyjuulOJYAofV3323+je9ENOaX9mUEiteqayc8if0cDAEwDlGScCSPj6htB2VM7hpi3ea0u3QT
MFm8XZQn2nK80z38FzlW0r0F3a2XlX++9RexLhbHr42fUcV9bVzHnQQuGEXIwjA767Nyzv9kid+Q
+cpK47VuZOmQgiAjdLh1QOkWnEi9JYWxzeZodbt/03Jjfd5WATZmUIHQmeiuMEM0Ysu05w8MHzxD
QQCqTztCRWR9yafnnsoL+tLzvHo+4ewleaObTcjJnmB4efWU74BhY2Y/RsRE+sJvDjXZGgecVVol
td5ZDr9suJunJfrbZHWdgs0twfIWTCL9sFn0GZI4cjTsW8oI6P1xAT8EOjVxn1dePDjFtkvciOk5
3fxZL1u4ybFAR2/37sZFBlEWnOsFgNSY7lmUqjyQXlKIZa7RfhVLBzn6M92PA5c+zq5BWqOSg7BU
oMuCZGsLcnRkedAqamtreNiQc2g+Rr3hybxWrbXyCdRAS7ifu9kFPTaQpAN94R67V3L6VA4+Y7Jz
yBnED8OBaMWpZLom2xnMCV425axOicLu3JZ1ZrOTSGgI7nUsfAZAPu3a6KRq2UUjzgbCg7rZ/jOh
I8VGNstTHxfPCsgLEMmTs76Om2ZiLDBxydsD7cPC92M5+3EtxU+BBOA5ykMSxYOV3busPwWpf50N
+YJJG6Wr6X3leQw9zWjp1kV9xLXYTcTvlZX5suOjMukKkjnLvudcLtIumRrFoQpE/G0J581Iy/up
8u/yfTl5gpjJFjEbyOO2IhRiNv+YwAmoLK9YnD+wIa+IZpI4TykfgnzX9oWKkhDXJ2n4ZdwX0ShH
aYs2UUh+vPLRBLnsYX2CItqt4FQSMtDAHpSvqqk0ALIw6MatBHQw/PlSTP7R21ZbraVBSsCAma3C
GTKI5moEZPVK7FWunkav+AZYB1Sa0pF7+esUlSacDa6eaGfx0a+aSg808sR4roVR8o7g0astkK/h
I2hRVtiVUh1J8R8DnAfn3CDa+4rGfvGhLixdaw5kq6fU+/6+qN7U+FcAxBm/z229Z6WsIBdLGwdB
YxsPcQHO0myeRIDDVKpYAqQ4o87ttxSHgfX3BdJVRxK8MdmsnhMlXFeQvH/S+IXbpBS5wtoctkJN
Xgtva8HV3L699MhjZfQuW40B5APlO5sehMdE3sKMbqqe4it2LHvpgif9uiIDot7SWpSondGT/XsI
De8KCMXRgipDpq1/JPzmC10HCw2oP48RaT3v4VCQQ4CLu1IwCzeHi7E1O7x7WcE1uP+j7p3kwfUe
e7GQHVnccuJdhQX0vacLCUrlnrCUKbiOpHrHxidI69vLxgHO8a+museQcYZ5B1gvw3JwXTZCCCwb
C6un+0j7iQMwl8sSyUc19jxwdx9eSAxzPPemgptJxPN1WxPwCx+XYfPMAo5TrPjoVpatBtcKcy2A
PUAwV+ypHpRtyvixDbGTJ/nAGREl+DMU70+KgLe7ODcJbehIpSTb+NgImi3/uD2owKj5B5QFASi6
0M+N/2aFR9XKRpU1dwhahq3awl4aSiNdgPuiTmoBOtGEk78PinUO6lK9QJMDGB1Nt2HI8C2IPEBQ
8AJ8N8EYsHl1mtocJecEl/ck70OlFAp3/a5stgaG6nEHYgj6waMxP3GpWZTJFIlS4k3IUuHOSq56
4gofXTtZxxoDGRT3pHoTOsf7O+PN2KOGaO9KHoFDxGn0TA5MBb02aDe69+Y7pgN8sbDYVc63LYux
70U6viKmSI8jX8iqbMgPgFx1Qi2NoGkJCSECxh2/iHw2YTQzoZIuldL3kYxfvIFjcKsomrQxpi7N
HFK49MpIBLSmyi8cl3bpVZZZnwcTUnG/DxNAojYKNl7jXUA4JJU5PL8qFyEHySEZ1KAJXUDqUHhP
P9BR9eAKrBZ7tohVUkkf+gqwcSWIM3T5oDOge1cm1BqQ3jcR8tlOy08onhJ9LbVSRcBcQpgs33WM
7DHRYioe3Ql+H2N7P6MdSlpsEbN/mdO5v7voaCpWJMCuBuJsbYRgVcdVI9veFY/7qsrBUnj8KbJT
n6iG6zrkcvC8mne8ZkDX4I58vtEg2toxRo0UksKr+88RtuNA2RkwPsNmQWTFinAsZ/nia0VmZJfD
VTkKBeWS8RFUpZgciKqb0MIE6LIPckEePu2KCURJyqT+Wdktn4SD1bD5UArmge87sBriGUEh88Ca
mJX3WW65gSlfp1pzQlrkLCTXk4Gpw760ZQwekMUJncbc67TVSgNPuRhDzpfYSRP28sD2oZ8pCl95
melCgPSWVxgLF9IWFJezhRP38Jd8bayglmbcraeWJ3ydqRABzYZqc4DKu83GxlLuQ8feCxf9WLQ6
tO44+gP1DFUtYRq3EbeAVyitUCq3R1EXXk2vTlTOYHmTbi/DHg4tCsz1iR356hF7EGayHgrQ5N5O
Zl6V9NooTHWNFwgw/w9DFhNipRfPTJLm4o7r2KUSHCVTanEa897s6CWewL4sPcXr7Ewn71yXKUTH
q7aDU1+JHsU0YuYWRK2UEl0MeEX3AggOgDxxHJ0GJoOfwACTUAMOyXqiUdSA+YxEOeKkmn/zSk/p
CrleXFLCFiUE7XPpGtrL26WFqL4FRvUhZ08C6ph7lrPuxPqo8lcNUGUdzYJD4WSN5O7p3cnZUwP8
gnPukkkqCtkKtSEG/7Tbi+n1OXQ0G7iYEL8v9Rx59d/Ae2QqxG/mUadZEleut/stwMwSnLd9qM/B
A4Ae0KW6D0N0FiaxMZhq47EpbFrnEl8cSi/7bEEq2g3t9so4BB4Mhsgw4L7LziHj3zSWP9Uqvf1D
ZQsRJ2LsA55o4/JVn1fgMWxhuG1fvwy2KTKD9R7zBLBDZLlTsg57s+79+jEwMmx9vvyw7TfefAO5
oAnxw9chb/22gAqYZN/2DskjqgOzRE5oRcAYCgqHJ1LyAaKJqolqKvlmoaaRMc5ZMxiaZ69F8ZJ/
3RUkfW37SfF2YoPOYAkWjf5L/OBIK3Vj3AnGQ4X5k5ykqz7FtjN+phGrn2GxHI5Wq1MbZccCBppZ
MehaWOEPtQQs4JekaNDkZRSy3mgP4pxvrH1w9YS0yk5B03vsheeewt5+tYtHuDOGn14X8WKI+xN2
dzr+CBr2junlKny7osaCr9Kf1nc0nbP08F1pf9V3lZwRrqzAAkFgUK7RuJx1U1OsLzPqm0BFtxlG
SQLfnIDwBgmkMXj4+g38GwLIGe8DcYXqOCbL+/Ia+QoSpLbNlSeFM/n4BeGW8Z8GCwcvcgStFE60
iUR0c7Mz3M8cdsE7xmSCA/jGUYPbzgPuP0hwMWcLMDhFl/K9Q5WRgI3A3lIUCDeVBVLBeW47r87r
xgxFiKo60/9m36T92kJg6ZXHfKvg+wO3I8PYTXjKK8DCsT/D1ExWGVxtB45frxnDt/8iHUV0CO0/
EzC4kdGhcJbnGAxQ/svYAi1p/amGtE+uWLaga8orxzXwsOmRjcsrUBnX3P8rGa+gY3eMt00HvBQ/
hTa3/mbHZY6qt740KbwNpUzOq+5eyarrjUody0WbnFxE7A+1Xyc4YMfOBHSjGA7NVDWyHSzGoIqj
oV0awwa1Q0LgVw4stRkm0Fm452HLElLbC05PciHVqjEIrKVrY7pNsG0WBhlXi5Jj8hFI5igdA2uZ
L8fKR3j00TA3BxTn4A/6UPnySRhPdJXQBakCBte2gjHLsJdPF6+P3QrehyEH/fjLGpJ7KwlXftC/
cxkHPts/0vt6Duf7TNSlgepTpYb/lO2o104di02Dt5TJIx7Xbj/rS+Cboj1OLuBwjq11EnBjl6qN
9g7oxJEUd3tvSpKc9FrzqyvVXljoam+YhWtiZKCaKRKBoJjMLBdxdtj72ctcjFsZZJoOGf17iP6l
qsrpYeyiEu9J+5bHEcCwWHipn9UYMVBTvYJWRcXZ8RpFLQMdT1kwHsts2ZutA5DcDutGeJy/M7T+
tRLWh9NjJ9D5AhoQiNUlCQVDW2+1Nb9xhrsEwV99yXVCVXfamJ7nrAmyAfl0LRpchZdLiXAlr2tc
e3JBmTv8sU9ExR+EAhWBrWcGCnIaso5QllZDvoweQCECjVk1znzv1khMsTd7xsxhQjqQhJmGFXAk
+nhw3nRa6cDnoOGvc/0s99N2n8UQmEz31CLrcVL47PPc5PI3koWKUfZ4mlKILw/jtANbEwRrg/OB
hLCHVw5MEkCWKRlTnYtpuTXrIayQJoABNs1FXIL3N6FqXct96T/A9KbI6jMgYfAKXatTxghEJ6ba
MxH1x0AzDOnd6g98Nma8jZvekFug5zyqo4zaIozGh+nweJoXv6xs2XaPRluYO/g/ZvU2Wvgrbv1j
AgeCFy3Y9mkVJFutAeWk82z//nQJvFgh27/0vrLx5clAIMhTXQn0fl86JuRRFQNc78uPHeSIJtSm
pnGfnqAQ3mmGtkR0AYWAtpYV/cGoZAsu1FHBylWfuB986n4+ycaLzaCTUgC+NXmkK7UKaCo6jUk5
w/3p2aFSuhrp+2/iKkD+EUMTbNImX+Qo6AEA6YcvnmPKOnA24rz9Je8vYAhvzp7w9+OTlvTV7OeH
EMRgpeHZ+s7D0pTfIhHfuoucvOR8TtMHCi7V+zj5WGpOvs8JFhtK0z+4i5FSJMjtO9hSd98Pc+oT
LkJ9PUFAp+CXaWfjdKX/zFSoOQboxDRNPm1Cr+gaBXQvVbdjwEKww72J2cNMAX8K+KTB1BRVqZ2K
cnkyC/iex2vdNXSPoRPd2orfoP7SR5RKK7fMxkywSN9/SxzVB9huW5I83RkyOj8Pzrs/ms+Pgc0U
NCIsJzwaf/3/c/iMuBDZRNRCXSsEK1M39aLZTd1W+HjWaSekO+xv2TVV1qsp9JST0JO4hwU6PKo/
MdNbPallp9NIdzQYi6PbQkaSi2v9ED0d69EcmXapMglBVbOlo4s19CaYkDQq0pot+Cn+uAf8DiVf
rGWGjcpRQsBOe/TuWr9Zr5wqsc+u0s57bln1kROiuDTvk/T7IYecpZ15/1y7LI1B1Vk3N3T4JyGi
MeK/iBrPO97P5p5cnVY+9J/qKR2fczhoQQ/OpKMcleD9IMsz5mBP5R6iuKXs9M3aXWpXS+jEIXKS
82rDPFV+zwTOeGLoC0V9CMYrhaBFQGgfDFLgKJH2EFO+gzmFv9cUSICG6i3NogRw8Awve1qhqf2t
2gsMjdPcd5/TiaiyO62NCWFdLG+72LzGNxHM3qUQMmxjAwMjogXAFk+qnFHi2XZ3uT3qWr5CctFG
XCGkTor8y0+zUjR5hz5aePEigqMCbeMp9wMXn1HktWBRsMsnBQ2pX8EhO86cuIh8jcBJG7NuCoxR
Q11WXb0PB+A0F/Jxg0dpzHBlYkSGzRGbgA/KJUfNDWz3mRNWKgn2hSmP8t6km6oo8Nf3rIwN6lud
Vv7MtedxrlEqplN19dGMTwiZMMhl0tyGSEeLos8s5qyZSKa5TojqYHUarJ53tB2dVVp3gUlR08Ti
ehOZBSHdUJzZEDhHG4R10znRJ5K6EatDHIT9HGh8pwX5ULRNNr7j663D8ukHPhoQ7x2lCD5B8Lbu
nHCR9v2jvKVau15HlK9FrG1HEx1ok/p62gn0EUSpliNaAbue/+QYAuM7g2sBzOPegV+B1puSAGdN
eyQIKasklOJr+xDoOyMfJ+kbOQXiZfyO9zVZPjamKth89olVPaaq0AxVsajyIOG0qJkx92vdZlAe
g3ro2UQ7eyIVpuyDUWg/R6QsWO/wj1ahsJenJoQsTxLcecKRX9c/JiJ4I7QO6OqV8+5YLXKm7T1S
M5Z4kZM+ByjgPltMTjzDZBLCKdVAxtBIjQKJ8rn88954DusmDWpBgCH0y+2gz0MeUVhxsQRpc14F
MBm40sHkmD9IRAcK8kcQUN/HvtjEt3IR7pmoz+RhjKl8UGo7+lJV45Uf9Knu8516BaslwR2d+Yy7
CvQ97Q+dc8SIanb1SN1LusbCH/6buqScNSDBjEhi6o5m6G7dUSIxUnyGrSV+shdBI6IzepxIQrbw
fBT0zCA8KknKUNNz3LyO41VxR+mj5SA8X2eLl7SD+HpvsF8OGpO3i64hx+GwtX/2+2rwxUneoELU
6tRlOPWfk/my5KFasVAnhjcPgd238sxJsNAw0r7gBhTbgjy438YiggrwWlrNlU5jn8NT0Ic0125l
IZaV5mzVOCq7k9xPnWa4edThHJ+IS+icb2pDcaRLfW8jfUA4urXB0/gMMnsjWWR1dguWQr7s/pv9
sJG21Wj4IKVLELf5t+BS6AZIzFaizQx6+RbBgQwu5/etW+4HcseWPNM4q3oHkBxYtYGUxois8PGu
BVxKVOCFq3XnZBqbR+tk8B3TcKU5Iilw8CpE/vq5nKPpt8IKOzUM5AupCHjuH2//tknJ76C92F7K
dHDF0525asj6jTMCW6HHAGLxYwJ8PK7QKfvpHdVZPVHmIJjTbsMlmpoVzo5H5H8l4TIMYOv8gkEs
bvEXG594DEbIhEWFyBH7Apysa3tcrYqLTi7G2uHYdelqiSahCrmIYXZyR5GV8R+vM1393+/KVOdv
HLbNmhTGcHP470YH2cnIgkySjbpWxlTsveO31YBL3wfzfw2Xe86l++l9s/LC9Bk47RxF6JTOvkqu
UKwBw3gKlJSYJQ7xPILCk4VZqKOMu53OBiT9JCpVAIDuGCpdVaFPXkuybxL148XydV1S/2EaLWe6
11XgbO33arYJMES6+5yVeop8qH0TkVtbpeQzknt1ZHWwhoKoMBhpirVIAK2JB0c20DFo4tcOuDgR
hU8HBb95xa1x2s5fandIPvtzAC/kQWM4/eXveu5w9GS/jguHpF5IAu8nZMwF0vLdjDebBky/4qlu
hs+saEpo/Ws4Ck/vGp3TX9gULlPND2UU7rIfx2qg/OIH3dBCRFbnjc1XSuZughVQpe0Hbb0BPVET
fgXdqry4j819u4AL7RVD3PYczEqwWVv1pwMaOjuF+2njGKm1nqC0kXcUv0kz2bXtkndIE7M3RX6A
iG1VdgR3GaKUmwiA3vOFBpHcnqa1//Q4t2W+JnqETRALF7MLo4S7+a+Hqnby6zB07tOzRkJLJbHK
wqvgb8QlYPfkKO15fkpwkg3deZnkr/jenhKk10RwmjuPVhRJmf2M4rg1WMJgaS88lFaEia/Lk4Pe
bTL+T8mh+PMXfLbv8z1i1xXYdeiWiTzw5qjqyeI=
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
