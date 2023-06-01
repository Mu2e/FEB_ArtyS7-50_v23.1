LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;
Library UNISIM;
use UNISIM.vcomponents.all;

use work.Proj_Def.all;

entity AFE_Interface_Sim is
  Port (
	Clk_80MHz			: in std_logic; 
	SysClk				: in std_logic;
-- Data output from the deserializer for AFE0 and AFE1 synchronized to 80 MHz clock
	dout_AFE0			: out Array_8x14; 
    dout_AFE1			: out Array_8x14;
    done				: out std_logic_vector(1 downto 0); -- status of automatic alignment FSM
-- Microcontroller strobes
	CpldRst				: in std_logic
	);
end AFE_Interface_Sim;

architecture Behavioral of AFE_Interface_Sim is

signal d0_vec: std_logic_vector(13 downto 0) := "00100000000001"; -- 0x801
signal d1_vec: std_logic_vector(13 downto 0) := "00110000000011"; -- 0x803
signal d2_vec: std_logic_vector(13 downto 0) := "00101010101010"; -- 0xAAA
signal d3_vec: std_logic_vector(13 downto 0) := "00010101010101"; -- 0x555
signal d4_vec: std_logic_vector(13 downto 0) := "00111111111111"; -- 0xFFF
signal d5_vec: std_logic_vector(13 downto 0) := "00000000000000"; -- 0x000 
signal d6_vec: std_logic_vector(13 downto 0) := "00101010111100"; -- 0x0ABC
signal d7_vec: std_logic_vector(13 downto 0) := "00000000000000"; -- count up
signal d8_vec: std_logic_vector(13 downto 0) := "11111110000000"; -- aka FCLK should be 0x3F80


begin

-- done <= "00", "11" after 50ns;
done <= "11";

sender: process
begin
    wait until rising_edge(Clk_80MHz);
	dout_AFE0(7) <= d7_vec;
	dout_AFE0(6) <= d6_vec;
	dout_AFE0(5) <= d5_vec;
	dout_AFE0(4) <= d4_vec;
	dout_AFE0(3) <= d3_vec;
	dout_AFE0(2) <= d2_vec;
	dout_AFE0(1) <= d1_vec;
	dout_AFE0(0) <= d0_vec;
	
	dout_AFE1(7) <= d7_vec;
	dout_AFE1(6) <= d6_vec;
	dout_AFE1(5) <= d5_vec;
	dout_AFE1(4) <= d4_vec;
	dout_AFE1(3) <= d3_vec;
	dout_AFE1(2) <= d2_vec;
	dout_AFE1(1) <= d1_vec;
	dout_AFE1(0) <= d0_vec;

    d7_vec <= std_logic_vector(unsigned(d7_vec)+1);
	d6_vec <= std_logic_vector(unsigned(d6_vec)+1);
	d5_vec <= std_logic_vector(unsigned(d5_vec)+1);
	d4_vec <= std_logic_vector(unsigned(d4_vec)+1);
	d3_vec <= std_logic_vector(unsigned(d3_vec)+1);
	d2_vec <= std_logic_vector(unsigned(d2_vec)+1);
	d1_vec <= std_logic_vector(unsigned(d1_vec)+1);
	d0_vec <= std_logic_vector(unsigned(d0_vec)+1);	
end process sender;

end Behavioral;