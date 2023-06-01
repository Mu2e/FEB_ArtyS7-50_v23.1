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
	Clk_100MHz			: in std_logic; 
	SysClk				: in std_logic;
-- Data output from the deserializer for AFE0 and AFE1 synchronized to 80 MHz clock
	dout_AFE0			: out Array_8x14; 
    dout_AFE1			: out Array_8x14;
    done				: out std_logic_vector(1 downto 0); -- status of automatic alignment FSM
-- Microcontroller strobes
	CpldRst				: in std_logic;
	CpldCS				: in std_logic;
	uCRd				: in std_logic;
	uCWr 				: in std_logic;
-- Microcontroller data and address buses	
	uCA 				: in std_logic_vector(11 downto 0);
	uCD 				: in std_logic_vector(15 downto 0);
	iuCD 				: out std_logic_vector(15 downto 0);
-- Geographic address pins
	GA 					: in std_logic_vector(1 downto 0);
-- Synchronous edge detectors of uC read and write strobes
	WRDL 				: in std_logic_vector(1 downto 0)
	);
end AFE_Interface_Sim;

architecture Behavioral of AFE_Interface_Sim is


signal counter				: std_logic_vector(6 downto 0);

attribute mark_debug : string;
--attribute mark_debug of AFEemuWE : signal is "true";


begin

		
sender: process(Clk_80MHz, CpldRst)
begin
    if CpldRst = '0' then
		
		dout_AFE0(0)	<= (others => '0');
		dout_AFE0(1)	<= (others => '0');
		dout_AFE0(2)	<= (others => '0');
		dout_AFE0(3)	<= (others => '0');
		dout_AFE0(4)	<= (others => '0');
		dout_AFE0(5)	<= (others => '0');
		dout_AFE0(6)	<= (others => '0');
		dout_AFE0(7)	<= (others => '0');

		dout_AFE1(0)	<= (others => '0');
		dout_AFE1(1)	<= (others => '0');
		dout_AFE1(2)	<= (others => '0');
		dout_AFE1(3)	<= (others => '0');
		dout_AFE1(4)	<= (others => '0');
		dout_AFE1(5)	<= (others => '0');
		dout_AFE1(6)	<= (others => '0');
		dout_AFE1(7)	<= (others => '0');
		done 	  		<= (others => '0');
		counter	  		<= (others => '0');	
	elsif rising_edge(Clk_80MHz) then
		done 	  		<= (others => '1');
		counter 		<= counter + 1;
		dout_AFE0(0)	<= "0000000" & counter;
		dout_AFE0(1)	<= "0000000" & counter;
		dout_AFE0(2)	<= "0000000" & counter;
		dout_AFE0(3)	<= "0000000" & counter;
		dout_AFE0(4)	<= "0000000" & counter;
		dout_AFE0(5)	<= "0000000" & counter;
		dout_AFE0(6)	<= "0000000" & counter;
		dout_AFE0(7)	<= "0000000" & counter;
		dout_AFE1(0)	<= "0000000" & counter;
		dout_AFE1(1)	<= "0000000" & counter;
		dout_AFE1(2)	<= "0000000" & counter;
		dout_AFE1(3)	<= "0000000" & counter;
		dout_AFE1(4)	<= "0000000" & counter;
		dout_AFE1(5)	<= "0000000" & counter;
		dout_AFE1(6)	<= "0000000" & counter;
		dout_AFE1(7)	<= "0000000" & counter;
	
	end if;
end process;

end Behavioral;