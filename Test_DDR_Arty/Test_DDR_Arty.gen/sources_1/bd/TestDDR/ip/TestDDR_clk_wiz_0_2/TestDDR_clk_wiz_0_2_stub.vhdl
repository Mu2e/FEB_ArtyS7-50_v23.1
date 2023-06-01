-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue May 30 09:58:58 2023
-- Host        : CD-135239 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top TestDDR_clk_wiz_0_2 -prefix
--               TestDDR_clk_wiz_0_2_ TestDDR_clk_wiz_0_2_stub.vhdl
-- Design      : TestDDR_clk_wiz_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TestDDR_clk_wiz_0_2 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end TestDDR_clk_wiz_0_2;

architecture stub of TestDDR_clk_wiz_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_out2,resetn,clk_in1";
begin
end;
