----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/24/2023 12:34:49 PM
-- Design Name: 
-- Module Name: Testbench - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;
Library UNISIM;
use UNISIM.vcomponents.all;

use work.Proj_Def.all;

entity Testbench is
--  Port ( );
end Testbench;

architecture Behavioral of Testbench is

component TestDDR_top is
generic(
	-- DDR3L parameters
	DATA_WIDTH			: integer := 16;  -- 16 Both ARTY and FEB
	DDR3L_ADDR			: integer := 14;  -- 14: ARTY 15: FEB
	APP_ADDR			: integer := 28  -- 28: ARTY 29: FEB
);
port (
--	ClkB_P,ClkB_N  		: in std_logic; 
	Clk_100MHz			: in std_logic;
	SysClk				: in std_logic; -- 160 MHz
	CpldRst				: in std_logic;
	Clk_200MHz			: in std_logic;
-- LEDS and buttons
	led_4bits_tri_o 	: out std_logic_vector(3 downto 0);
	rgb_led_tri_o 		: out std_logic_vector(5 downto 0);
	push_buttons_4bits_tri_i : in std_logic_vector(3 downto 0);
-- DDR3L pins
	DDR_DATA			: inout std_logic_vector(DATA_WIDTH-1 downto 0);
	DDR_ADDR			: out std_logic_vector(DDR3L_ADDR-1 downto 0);
	BA 					: out std_logic_vector(2 downto 0);
	DDR_CKE	 			: out std_logic_vector(0 downto 0);
	ODT 				: out std_logic_vector(0 downto 0);
	CS 					: out std_logic_vector(0 downto 0);
	DM 					: out std_logic_vector(1 downto 0);
	RAS,CAS				: out std_logic; 
	DDR_WE 				: out std_logic;
	DDR_CLKP,DDR_CLKN 	: out  std_logic_vector(0 downto 0);
	LDQS_P, LDQS_N 		: inout std_logic;
	UDQS_P, UDQS_N 		: inout std_logic;
	RESET_N				: out std_logic
);
end component;

component ddr3_model is
port(
    rst_n				: in std_logic;
    ck                  : in std_logic_vector(0 downto 0);
    ck_n                : in std_logic_vector(0 downto 0);
    cke                 : in std_logic_vector(0 downto 0);
    cs_n                : in std_logic_vector(0 downto 0);
    ras_n               : in std_logic;
    cas_n               : in std_logic;
    we_n                : in std_logic;
    dm_tdqs             : inout std_logic_vector(1 downto 0);  
    ba                  : in std_logic_vector(2 downto 0); 
    addr                : in std_logic_vector(13 downto 0);
    dq                  : inout std_logic_vector(15 downto 0);  
    dqs                 : inout std_logic_vector(1 downto 0); 
    dqs_n               : inout std_logic_vector(1 downto 0);
    tdqs_n              : out std_logic_vector(1 downto 0); 
    odt                 : in std_logic_vector(0 downto 0)
);
end component;

constant Clk100MHz_period: time := 10.0ns;  -- 100 MHz
constant Clk200MHz_period: time := 5.0ns;   -- 200 MHz
constant Clk160MHz_period: time := 6.25ns;  -- 160 MHz
constant Clk80MHz_period:  time := 12.5ns;  -- 80 MHz
constant Clk560MHz_period: time := 1.786ns; -- 80 MHz * 7 = 560MHz
constant Clk10MHz_period: time := 100ns;
constant Clk12MHz_period: time := 83ns;
constant Clk15MHz_period: time := 67ns;
constant HW_period: time := 78ns;

signal reset	: std_logic := '1';
signal ResetHi	: std_logic := '1';
signal CpldRst	: std_logic := '1';
signal Clk100MHz, Clk200MHz, Clk160MHz, Clk80MHz, Clk560MHz, SysClk: std_logic := '0';
signal HW_Clk : std_logic := '0';

signal button 			: std_logic_vector(3 downto 0);
signal led 				: std_logic_vector(3 downto 0);
signal ledrgb 			: std_logic_vector(5 downto 0);
signal DDR_DATA			: std_logic_vector(DATA_WIDTH-1 downto 0);
signal DDR_ADDR			: std_logic_vector(DDR3L_ADDR-1 downto 0);
signal BA 				: std_logic_vector(2 downto 0);
signal DDR_CKE	 		: std_logic_vector(0 downto 0);
signal ODT 				: std_logic_vector(0 downto 0);
signal CS 				: std_logic_vector(0 downto 0);
signal DM 				: std_logic_vector(1 downto 0);
signal LDQS_P, LDQS_N 	: std_logic;
signal UDQS_P, UDQS_N 	: std_logic;
signal DQS_P, DQS_N		: std_logic_vector(1 downto 0);
signal RESET_N			: std_logic;
signal RAS,CAS			: std_logic; 
signal DDR_WE 			: std_logic;
signal DDR_CLKP,DDR_CLKN 	:   std_logic_vector(0 downto 0);
signal tdqs_n			:   std_logic_vector(1 downto 0);
	
begin

DQS_P <= UDQS_P & LDQS_P; 
DQS_N <= UDQS_N & LDQS_N; 

-- make the clocks
Clk80MHz   <= not Clk80MHz  after Clk80MHz_period/2;
Clk100MHz  <= not Clk100MHz  after Clk100MHz_period/2;
Clk160MHz  <= not Clk160MHz after Clk160MHz_period/2;
SysClk 	   <= not Clk160MHz after Clk160MHz_period/2;
Clk200MHz  <= not Clk200MHz after Clk200MHz_period/2;
Clk560MHz  <= not Clk560MHz after Clk560MHz_period/2;
HW_Clk 	   <= not HW_Clk after HW_period/2;


CpldRst <= '0', '1' after Clk160MHz_period*1000;
button <= x"0", b"0001" after 60 ns, x"0" after 100 ns; 

targettest : TestDDR_top 
port map(
	Clk_100MHz			=> Clk100MHz,
	SysClk				=> Clk160MHz,
	CpldRst				=> CpldRst,
	Clk_200MHz			=> Clk200MHz,
-- LEDS and buttons
	led_4bits_tri_o 	=> led, 
	rgb_led_tri_o 		=> ledrgb, 
	push_buttons_4bits_tri_i => button,
-- DDR3L pins
	DDR_DATA			=> DDR_DATA,
	DDR_ADDR			=> DDR_ADDR,
	BA 					=> BA, 		
	DDR_CKE	 			=> DDR_CKE,	
	ODT 				=> ODT,		
	CS 					=> CS, 		
	DM 					=> DM, 		
	RAS					=> RAS,
	CAS					=> CAS,
	DDR_WE 				=> DDR_WE,
	DDR_CLKP			=> DDR_CLKP,
	DDR_CLKN 			=> DDR_CLKN,
	LDQS_P 				=> LDQS_P,
	LDQS_N 		        => LDQS_N,
	UDQS_P              => UDQS_P,
	UDQS_N 		        => UDQS_N,
	RESET_N		        => RESET_N
);

ddr3model : ddr3_model 
port map(
    rst_n				=> RESET_N,
    ck                  => DDR_CLKP,
    ck_n                => DDR_CLKN,
    cke                 => DDR_CKE,
    cs_n                => CS,
    ras_n               => RAS,
    cas_n               => CAS,
    we_n                => DDR_WE,
    dm_tdqs             => DM, 	 
    ba                  => BA,
    addr                => DDR_ADDR,
    dq                  => DDR_DATA,  
    dqs             	=> DQS_P,
    dqs_n            	=> DQS_N,
    tdqs_n              => tdqs_n,
    odt                 => ODT
);




end Behavioral;
