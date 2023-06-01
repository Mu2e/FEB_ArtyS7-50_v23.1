LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;
Library UNISIM;
use UNISIM.vcomponents.all;

use work.Proj_Def.all;

entity Exclude_DDR is
  Port (
  	SysClk				: in std_logic; -- 160 MHz
-- Signals for the EventBuff
	EvBuffRd			: buffer std_logic;
	EvBuffOut			: in std_logic_vector(15 downto 0);
	EvBuffEmpty			: in std_logic;
	EvBuffWdsUsed		: in std_logic_vector(10 downto 0);
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
end Exclude_DDR;

architecture Exclude_DDR_arch of Exclude_DDR is

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

signal Clk_4MHz				: std_logic;
signal count				: std_logic_vector(11 downto 0);
signal tmp 					: std_logic := '0';

constant ReadEventBuff : AddrPtr := "11" & X"AB";
constant ResetEventBuff : AddrPtr := "11" & X"B0";
constant StopReadEventBuff : AddrPtr := "11" & X"B1";

type instruction_FSM is (reset, start, stop);
signal prev_state, next_state: instruction_FSM; 
signal state				: std_logic_vector(3 downto 0);


--attribute mark_debug : string;
--attribute mark_debug of EvBuffRd : signal is "true";
--attribute mark_debug of EvBuffOut : signal is "true";

begin

clock_divider: process(SysClk, CpldRst)
begin
	if CpldRst = '0' then
		count <= x"001";
		tmp <= '0';
	elsif falling_edge (SysClk) then
		count <= count + x"001";
	if (count = x"A") then --14
		tmp <= NOT tmp;
		count <= x"001";
	end if;
end if;
Clk_4MHz <= tmp;
end process;

iuCD_rst <= not CpldRst;
iuCD_sync: iuCD_FIFO 
port map(
    rst 	=> iuCD_rst,
    wr_clk  => SysClk,
    rd_clk  => Clk_4MHz,
    din 	=> iuCD_FIFOdin,
    wr_en 	=> iuCD_FIFOwre,
    rd_en 	=> iuCD_FIFOrde,
    dout 	=> iuCD_FIFOdout,
    full 	=> iuCD_FIFOfull,
    empty 	=> iuCD_FIFOempty
  );

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




state_memory : process (SysClk, CpldRst)
begin 
    if CpldRst = '0' then
		prev_state 		<= reset;
	elsif rising_edge (SysClk) then
		prev_state		<= next_state;
	end if; 
end process; 

transition_table: process(prev_state, uCA)
begin   	
	case prev_state is
	when reset =>
		if uCA(9 downto 0) = ReadEventBuff then 
			next_state 			<= start;
		elsif uCA(9 downto 0) = StopReadEventBuff then
			next_state 			<= stop;
		else 
			next_state 			<= reset;
		end if;			
	when start =>
		if uCA(9 downto 0) = ResetEventBuff then 
			next_state 			<= reset;
		elsif uCA(9 downto 0) = StopReadEventBuff then
			next_state 			<= stop;
		else 
			next_state 			<= start;
		end if; 
	when stop =>
		if uCA(9 downto 0) = ResetEventBuff then 
			next_state 			<= reset;
		elsif uCA(9 downto 0) = ReadEventBuff then
			next_state 			<= start;
		else 
			next_state 			<= stop;
		end if; 
--	when others =>
--			next_state 			<= readback;
	end case;
end process;

output_table : process(prev_state, EvBuffOut, EvBuffEmpty)
begin
	-- Default value of the output 
		EvBuffRd 		<= '0';
		iuCD_FIFOwre 	<= '0';
	
	case prev_state is
		when reset =>
		state   		<= (others => '0');
		when start =>
		state   		<= x"1";
		EvBuffRd		<= '1';
		iuCD_FIFOwre 	<= not EvBuffEmpty;
		iuCD_FIFOdin 	<= EvBuffOut;
		when stop =>
		state   		<= x"2";
		end case;
end process;


iuCD <= iuCD_FIFOdout;


end Exclude_DDR_arch;
