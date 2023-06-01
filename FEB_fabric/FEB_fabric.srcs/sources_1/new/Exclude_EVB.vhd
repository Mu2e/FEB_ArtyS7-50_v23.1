LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;
Library UNISIM;
use UNISIM.vcomponents.all;

use work.Proj_Def.all;

entity Exclude_EVB is
  Port (
	SysClk				: in std_logic; -- 160 MHz
	CpldRst				: in std_logic;
	ResetHi				: in std_logic;
-- Signals from/to AFE Buffer
	MaskReg				: in Array_2x8;
	BufferRdAdd			: buffer Array_2x8x10;
	BufferOut 			: in Array_2x8x16;
-- Microcontroller strobes
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
end Exclude_EVB;

architecture Exclude_EVB_arch of Exclude_EVB is

component iuCD_FIFO 
port (
    rst 	: in std_logic;
    wr_clk  : in std_logic;
    rd_clk  : in std_logic;
    din 	: in std_logic_vector(15 downto 0);
    wr_en 	: in std_logic;
    rd_en 	: in std_logic;
    dout 	: out std_logic_vector(15 downto 0);
    full 	: out std_logic;
    empty 	: out std_logic
  );
end component;

signal iuCD_rst				: std_logic;
signal iuCD_FIFOwre			: std_logic;
signal iuCD_FIFOrde			: std_logic;
signal iuCD_FIFOdin         : std_logic_vector(15 downto 0);
signal iuCD_FIFOdout        : std_logic_vector(15 downto 0);
signal iuCD_FIFOfull 		: std_logic;
signal iuCD_FIFOempty		: std_logic;

signal Clk_8MHz				: std_logic;
signal count				: std_logic_vector(11 downto 0);
signal tmp 					: std_logic := '0';

constant ReadAFEBuff : AddrPtr := "11" & X"AA";

attribute mark_debug : string;
attribute mark_debug of iuCD_FIFOwre	: signal is "true";
attribute mark_debug of iuCD_FIFOrde	: signal is "true";
attribute mark_debug of iuCD_FIFOdin  	: signal is "true";
attribute mark_debug of iuCD_FIFOdout 	: signal is "true";
attribute mark_debug of iuCD_FIFOfull 	: signal is "true";
attribute mark_debug of iuCD_FIFOempty	: signal is "true";



begin

clock_divider: process(SysClk, CpldRst)
begin
	if CpldRst = '0' then
		count <= x"001";
		tmp <= '0';
	elsif falling_edge (SysClk) then
		count <= count + x"001";
	if (count = x"19") then
		tmp <= NOT tmp;
		count <= x"001";
	end if;
end if;

Clk_8MHz <= tmp;
end process;

iuCD_rst <= not CpldRst;
iuCD_sync: iuCD_FIFO 
port map(
    rst 	=> iuCD_rst,
    wr_clk  => SysClk,
    rd_clk  => Clk_8MHz,
    din 	=> iuCD_FIFOdin,
    wr_en 	=> iuCD_FIFOwre,
    rd_en 	=> iuCD_FIFOrde,
    dout 	=> iuCD_FIFOdout,
    full 	=> iuCD_FIFOfull,
    empty 	=> iuCD_FIFOempty
  );


uC_registers : process (SysClk, CpldRst) 
begin 
	if CpldRst = '0' then
	BufferRdAdd(0)(0)	<= (others => '0'); 
	elsif rising_edge (SysClk) then 
	
	if uCA(9 downto 0) = ReadAFEBuff
	then BufferRdAdd(0)(0) <= BufferRdAdd(0)(0) + 1;
		 iuCD_FIFOdin <= BufferOut(0)(0);
	else BufferRdAdd(0)(0)<= BufferRdAdd(0)(0);
	end if;
end if;
end process; 

iuCD_FIFO_sync: process(SysClk, CpldRst)
begin
	if CpldRst = '0' then
		iuCD_FIFOrde	<= '0';
	elsif rising_edge (SysClk) then
		if iuCD_FIFOempty = '0' then
			iuCD_FIFOrde 	<= '1';
		else 
			iuCD_FIFOrde 	<= '0';
		end if;
end if;
end process;

iuCD <= iuCD_FIFOdout;	
	

end Exclude_EVB_arch;