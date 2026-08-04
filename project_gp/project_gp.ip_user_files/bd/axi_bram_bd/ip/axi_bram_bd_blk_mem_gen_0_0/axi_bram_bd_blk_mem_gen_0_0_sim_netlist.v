// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Jan 23 18:20:33 2026
// Host        : wengROGG14 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/thoch/fpga/lab3_new/lab3_new.gen/sources_1/bd/axi_bram_bd/ip/axi_bram_bd_blk_mem_gen_0_0/axi_bram_bd_blk_mem_gen_0_0_sim_netlist.v
// Design      : axi_bram_bd_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axi_bram_bd_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59936)
`pragma protect data_block
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
WH0FdVGoeXrT/wb/5JcSKFK1B9yTVLlpBfF5TuU=
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
