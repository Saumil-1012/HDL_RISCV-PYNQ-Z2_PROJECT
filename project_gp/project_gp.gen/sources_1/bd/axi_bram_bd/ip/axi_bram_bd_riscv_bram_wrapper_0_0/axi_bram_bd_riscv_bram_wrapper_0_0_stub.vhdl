-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Tue Aug  4 01:05:53 2026
-- Host        : Kamal running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/vivado_tutorial/project_3/project_3.gen/sources_1/bd/axi_bram_bd/ip/axi_bram_bd_riscv_bram_wrapper_0_0/axi_bram_bd_riscv_bram_wrapper_0_0_stub.vhdl
-- Design      : axi_bram_bd_riscv_bram_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity axi_bram_bd_riscv_bram_wrapper_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    system_resetn : in STD_LOGIC;
    run : in STD_LOGIC;
    imem_enb : out STD_LOGIC;
    imem_web : out STD_LOGIC_VECTOR ( 3 downto 0 );
    imem_addrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    imem_dinb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    imem_doutb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dmem_enb : out STD_LOGIC;
    dmem_web : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dmem_addrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dmem_dinb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dmem_doutb : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end axi_bram_bd_riscv_bram_wrapper_0_0;

architecture stub of axi_bram_bd_riscv_bram_wrapper_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,system_resetn,run,imem_enb,imem_web[3:0],imem_addrb[31:0],imem_dinb[31:0],imem_doutb[31:0],dmem_enb,dmem_web[3:0],dmem_addrb[31:0],dmem_dinb[31:0],dmem_doutb[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "riscv_bram_wrapper,Vivado 2021.2";
begin
end;
