-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Jun  1 15:44:45 2023
-- Host        : CD-135239 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/v23.1/Test_DDR_Arty/Test_DDR_Arty.gen/sources_1/bd/TestDDR/ip/TestDDR_TestDDR_top_0_0/TestDDR_TestDDR_top_0_0_stub.vhdl
-- Design      : TestDDR_TestDDR_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TestDDR_TestDDR_top_0_0 is
  Port ( 
    Clk_100MHz : in STD_LOGIC;
    SysClk : in STD_LOGIC;
    CpldRst : in STD_LOGIC;
    Clk_200MHz : in STD_LOGIC;
    led_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rgb_led_tri_o : out STD_LOGIC_VECTOR ( 5 downto 0 );
    push_buttons_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DATA : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR_ADDR : out STD_LOGIC_VECTOR ( 13 downto 0 );
    BA : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_CKE : out STD_LOGIC_VECTOR ( 0 to 0 );
    ODT : out STD_LOGIC_VECTOR ( 0 to 0 );
    CS : out STD_LOGIC_VECTOR ( 0 to 0 );
    DM : out STD_LOGIC_VECTOR ( 1 downto 0 );
    RAS : out STD_LOGIC;
    CAS : out STD_LOGIC;
    DDR_WE : out STD_LOGIC;
    DDR_CLKP : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR_CLKN : out STD_LOGIC_VECTOR ( 0 to 0 );
    LDQS_P : inout STD_LOGIC;
    LDQS_N : inout STD_LOGIC;
    UDQS_P : inout STD_LOGIC;
    UDQS_N : inout STD_LOGIC;
    RESET_N : out STD_LOGIC
  );

end TestDDR_TestDDR_top_0_0;

architecture stub of TestDDR_TestDDR_top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clk_100MHz,SysClk,CpldRst,Clk_200MHz,led_4bits_tri_o[3:0],rgb_led_tri_o[5:0],push_buttons_4bits_tri_i[3:0],sw[3:0],DDR_DATA[15:0],DDR_ADDR[13:0],BA[2:0],DDR_CKE[0:0],ODT[0:0],CS[0:0],DM[1:0],RAS,CAS,DDR_WE,DDR_CLKP[0:0],DDR_CLKN[0:0],LDQS_P,LDQS_N,UDQS_P,UDQS_N,RESET_N";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "TestDDR_top,Vivado 2023.1";
begin
end;
