----------------------------------------------------------------------------------
-- Company: FNAL
-- Engineer: Micol Rigatti <mrigatti@fnal.gov> 
-- 
-- Create Date: 05/24/2023 09:02:04 AM
-- Design Name: 
-- Module Name: TestDDR_top - Behavioral
-- Project Name: 
-- Target Devices: xc7s50fgga484-2
-- Tool Versions: 2022.2
-- Description: 
----------------------------------------------------------------------------------


LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;
Library UNISIM;
use UNISIM.vcomponents.all;

use work.Proj_Def.all;


entity TestDDR_top is
generic(
	-- DDR3L parameters
	DATA_WIDTH			: integer := 16;  -- 16 Both ARTY and FEB
	DDR3L_ADDR			: integer := 14;  -- 14: ARTY 15: FEB
	APP_ADDR			: integer := 27  -- 27: ARTY 28: FEB
);
port (
--	ClkB_P,ClkB_N  		: in std_logic; 
	Clk_100MHz			: in std_logic; -- DDR: user interface, controller, and PHY layers and drives the MMCM 
	SysClk				: in std_logic; -- 160 MHz
	CpldRst				: in std_logic;
--	Clk_80MHz			: in std_logic;
	Clk_200MHz			: in std_logic; -- Needed for the IODELAYCTRL of the DDR
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
end TestDDR_top;

architecture Behavioral of TestDDR_top is

signal ResetHi         	  : std_logic;

-- Signals for the DDR3 Controller 
signal DDR3_addr          : std_logic_vector(27 downto 0); 
signal DDR3_cmd           : std_logic_vector(2 downto 0);
signal DDR3_en            : std_logic;

signal DDR3_wrt_data      : std_logic_vector(127 downto 0); 
signal DDR3_wrt_end       : std_logic;
signal DDR3_wrt_mask      : std_logic_vector(15 downto 0);
signal DDR3_wrt_en        : std_logic;

signal DDR3_rd_data       : std_logic_vector(127 downto 0);
signal DDR3_rd_data_end   : std_logic;
signal DDR3_rd_data_valid : std_logic;

signal DDR3_rdy           : std_logic;
signal DDR3_wrt_rdy       : std_logic;

signal app_sr_req         : std_logic;
signal app_ref_req        : std_logic;
signal app_zq_req         : std_logic;
signal app_sr_active      : std_logic;
signal app_ref_ack        : std_logic;
signal app_zq_ack         : std_logic;
signal Clk_50MHz          : std_logic; -- out from the MIG
signal DDR3_rst		      : std_logic; -- out from the MIG
signal init_calib_complete: std_logic;
signal reset_count	  	  : std_logic_vector(7 downto 0);
signal first_iter		  : std_logic;
-- System Clock Ports
signal sys_clk_p          : std_logic;
signal sys_clk_n          : std_logic;
-- Reference Clock Ports
signal clk_ref_p          : std_logic;
signal clk_ref_n          : std_logic;
signal device_temp        : std_logic_vector(11 downto 0);
signal sys_rst		      : std_logic;
-- Signals for DDR FSM
constant DDR_cmd_read 	  : std_logic_vector(2 downto 0) := b"001";
constant DDR_cmd_write 	  : std_logic_vector(2 downto 0) := b"000";
signal DDR_addr_bank 	  : std_logic_vector(2 downto 0);
signal DDR_addr_col 	  : std_logic_vector(9 downto 0);
signal DDR_addr_row 	  : std_logic_vector(13 downto 0);

Type DDR_FSM is (Reset, Idle, WaitReady, PrepareData, WrtData, RdData, Pause);
signal prev_state, DDR_Seq 	  : DDR_FSM;
signal DDRSeqStat 	 	  	  : std_logic_vector(3 downto 0);

Type DDRPage_FSM is (Reset, Idle, RdEventBuff, RdWdCount, RduBunchHi, RduBunchLo, WaitEvent, RdEvent,
					RdEvent1, RdEvent2, RdEvent3, RdEvent4, RdEvent5, RdEvent6, RdEvent7, RdEvent8);
signal current_state, DDRPage_Seq 	  : DDRPage_FSM;
signal DDRPageSeqStat 	 	  	  : std_logic_vector(3 downto 0);


signal DDRAddrBuff_wr_en  : std_logic;		
signal DDRAddrBuff_rd_en  : std_logic;
signal DDRAddrBuff_din    : std_logic_vector(31 downto 0);
signal DDRAddrBuff_dout   : std_logic_vector(31 downto 0);
signal DDRAddrBuff_empty  : std_logic;
signal DDRAddrBuff_full   : std_logic;
signal wr_rst_busy	   	  : std_logic;
signal rd_rst_busy	   	  : std_logic;

signal DDRRdBuff_wr_en	  : std_logic;			
signal DDRRdBuff_rd_en    : std_logic;
signal DDRRdBuff_din      : std_logic_vector(15 downto 0);
signal DDRRdBuff_dout     : std_logic_vector(15 downto 0);
signal DDRRdBuff_empty    : std_logic;
signal DDRRdBuff_full     : std_logic;
signal DDRRdBuff_data_count : std_logic_vector(10 downto 0);


signal EvBuffDat		  : std_logic_vector(15 downto 0);
signal EvBuffWrt		  : std_logic;
signal EvBuffFull		  : std_logic;
signal EvBuffRd			  : std_logic;
signal EvBuffOut		  : std_logic_vector(15 downto 0);
signal EvBuffEmpty		  : std_logic;
signal EvBuffWdsUsed	  : std_logic_vector(10 downto 0);

signal counter 			  : std_logic_vector(15 downto 0);

signal DDRPage_rst		  : std_logic;
signal DDRPage_din		  : std_logic_vector(127 downto 0);
signal DDRPage_wr_en	  : std_logic;
signal DDRPage_rd_en 	  : std_logic;
signal DDRPage_dout		  : std_logic_vector(127 downto 0);
signal DDRPage_full 	  : std_logic;
signal DDRPage_empty 	  : std_logic;
signal DDRPage_wr_rst_busy   : std_logic;
signal DDRPage_rd_rst_busy   : std_logic;
signal DDRPage_rd_data_count : std_logic_vector(7 downto 0);
signal DDRPage_wr_data_count : std_logic_vector(7 downto 0);


signal EventWdCnt		  : std_logic_vector(10 downto 0);
signal EventData		  : std_logic_vector(127 downto 0);
signal DDR_wrt_addr       : std_logic_vector(27 downto 0); 
signal uBunch		      : std_logic_vector(31 downto 0);
signal PageWdCnt		  : std_logic_vector(3 downto 0);
signal latched_PageWdCnt  : std_logic_vector(3 downto 0);
signal RdPageWdCnt		  : std_logic_vector(3 downto 0);
signal transferDDR		  : std_logic;	
signal latched_transferDDR: std_logic;
signal rst_transferDDR	  : std_logic;
signal setAddr			  : std_logic;

--signal EventIndex		  : std_logic_vector(3 downto 0);	
attribute mark_debug : string;
--attribute mark_debug of DDRSeqStat: signal is "true";


component ila_0 is
port (
	clk 	: in std_logic;
	probe0 	: in std_logic_vector(27 downto 0);
    probe1 	: in std_logic_vector(2 downto 0);
    probe2 	: in std_logic_vector(0 downto 0);
    probe3 	: in std_logic_vector(127 downto 0);
    probe4 	: in std_logic_vector(0 downto 0);
    probe5 	: in std_logic_vector(15 downto 0);
    probe6 	: in std_logic_vector(0 downto 0);
    probe7 	: in std_logic_vector(127 downto 0);
    probe8 	: in std_logic_vector(0 downto 0);
    probe9 	: in std_logic_vector(0 downto 0);
    probe10 : in std_logic_vector(0 downto 0);
	probe11 : in std_logic_vector(0 downto 0);
	probe12 : in std_logic_vector(3 downto 0)
);
end component;

component FIFO_128x128 is
port (
    rst 	: in std_logic;
    wr_clk  : in std_logic;
    rd_clk  : in std_logic;	
    din 	: in std_logic_vector(127 downto 0);
    wr_en 	: in std_logic;
    rd_en 	: in std_logic;
    dout 	: out std_logic_vector(127 downto 0);
    full 	: out std_logic;
    empty 	: out std_logic;
	wr_rst_busy : out std_logic;
    rd_rst_busy : out std_logic;
	rd_data_count : out std_logic_vector(7 downto 0);
    wr_data_count : out std_logic_vector(7 downto 0)
  );
end component;
 
begin

ResetHi <= not CpldRst;

makeDDRreset: process (SysClk, CpldRst)
begin 
	if CpldRst = '0' then 
		reset_count		<= (others => '0');
		first_iter		<= '1';
		sys_rst			<= '0';
		DDRPage_rst		<= '1';
	elsif rising_edge (SysClk) then 
	    reset_count		<= reset_count + '1';
		if reset_count = x"FF" and first_iter = '1' then 
			first_iter		<= '0';
			sys_rst 		<= '1';	
			DDRPage_rst		<= '0';
		end if;
	end if;
end process;





-- FIFO storing the read data from the DDR
DDRRdBuff : SCFIFO_1Kx16
port map (
	srst 	=> ResetHi,
	clk		=> SysClk,
	wr_en	=> DDRRdBuff_wr_en,	
	rd_en 	=> DDRRdBuff_rd_en, 	
	din 	=> DDRRdBuff_din, 	
    dout 	=> DDRRdBuff_dout, 	
    empty 	=> DDRRdBuff_empty, 	
	full 	=> DDRRdBuff_full, 	
	data_count => DDRRdBuff_data_count
);

-- FIFO for buffering one event
EventBuff : SCFIFO_1Kx16
port map (
	srst 		=> ResetHi,
	clk 		=> SysClk,
	wr_en 		=> EvBuffWrt,
	rd_en 		=> EvBuffRd,
	din 		=> EvBuffDat,
    dout		=> EvBuffOut, 
    empty 		=> EvBuffEmpty,
	full 		=> EvBuffFull,
	data_count  => EvBuffWdsUsed
);

-- FIFO for buffering one event on 128 bits and 50 MHz
OneDDRPage : FIFO_128x128 
port map (
    rst 		=> DDRPage_rst,
    wr_clk  	=> SysClk,
    rd_clk  	=> Clk_50MHz,
    din 		=> DDRPage_din,
    wr_en 		=> DDRPage_wr_en, 		
    rd_en 		=> DDRPage_rd_en, 		
    dout 		=> DDRPage_dout, 		
    full 		=> DDRPage_full, 		
    empty 		=> DDRPage_empty, 		
	wr_rst_busy => DDRPage_wr_rst_busy,
    rd_rst_busy => DDRPage_rd_rst_busy,
	rd_data_count => DDRPage_rd_data_count,
    wr_data_count => DDRPage_wr_data_count
  );





Fill_Buff: process(SysClk, CpldRst)
begin
	if CpldRst = '0' then 
		--DDRAddrBuff_wr_en 	<= '0';
		--DDRAddrBuff_rd_en	<= '0';
		--DDRAddrBuff_din 	<= (others => '0');       
		
		--DDRRdBuff_wr_en 	<= '0';
		--DDRRdBuff_rd_en		<= '0';
		--DDRRdBuff_din 		<= (others => '0');   

		EvBuffWrt		 	<= '0';
		EvBuffDat	 		<= (others => '0'); 
		counter 			<= (others => '0'); 
		
	elsif rising_edge(SysClk) then 
		--if DDRAddrBuff_full = '0' then 
		--	DDRAddrBuff_wr_en 	<= '1';
		--	DDRAddrBuff_din 	<= DDRAddrBuff_din + '1';
		--else 
		--	DDRAddrBuff_wr_en 	<= '0';
		--end if; 
		--
		--if DDRRdBuff_full = '0' then 
		--	DDRRdBuff_wr_en 	<= '1';
		--	DDRRdBuff_din 		<= DDRRdBuff_din + '1';	
		--else
		--	DDRRdBuff_wr_en 	<= '0';
		--end if; 
		counter 			<= counter + '1';		
		if counter = x"0A10" then -- EVENT 1 33 words
			EvBuffDat		<= x"0021";
			EvBuffWrt		<= '1';
		elsif counter = x"0A11" then 
			EvBuffDat		<= x"ABCD";
		elsif counter = x"0A12" then 
			EvBuffDat		<= x"0001";
		elsif counter = x"0A31" then -- EVENT 2 31 words
			EvBuffDat		<= x"001F";
		elsif counter = x"0A32" then 
			EvBuffDat		<= x"DEAD";
		elsif counter = x"0A33" then 
			EvBuffDat		<= x"0002";	
		elsif counter = x"0A50" then -- EVENT 3 48 words
			EvBuffDat		<= x"0030";
		elsif counter = x"0A51" then 
			EvBuffDat		<= x"ABCD";
		elsif counter = x"0A52" then 
			EvBuffDat		<= x"0003";	
		elsif counter = x"0A80" then -- EVENT 4 25 words
			EvBuffDat		<= x"0019";
		elsif counter = x"0A81" then 
			EvBuffDat		<= x"DEAD";
		elsif counter = x"0A82" then 
			EvBuffDat		<= x"0004";			
		elsif counter = x"0A99" then 
			EvBuffWrt		<= '0';			
		else
			EvBuffDat		<= x"A0" & counter(7 downto 0);
		end if; 
		
	end if;
end process;


DDR_Controller : DDR3LController
port map(
    ddr3_dq       	  => DDR_DATA,
    ddr3_dqs_p(0)     => LDQS_P,
    ddr3_dqs_p(1)     => LDQS_N,
	ddr3_dqs_n(0)     => UDQS_P,
    ddr3_dqs_n(1)     => UDQS_N,
	ddr3_addr     	  => DDR_ADDR,
    ddr3_ba       	  => BA,
    ddr3_ras_n    	  => RAS,
    ddr3_cas_n    	  => CAS,
    ddr3_we_n     	  => DDR_WE,
    ddr3_reset_n  	  => RESET_N,
    ddr3_ck_p     	  => DDR_CLKP,
    ddr3_ck_n     	  => DDR_CLKN,
    ddr3_cke      	  => DDR_CKE,
    ddr3_cs_n     	  => CS,
    ddr3_dm       	  => DM,
    ddr3_odt      	  => ODT,
	
	
    app_addr          => DDR3_addr,   -- This input indicates the address for the current request.                      
    app_cmd           => DDR3_cmd,   -- This input selects the command for the current request.                      
    app_en            => DDR3_en,   -- This is the active-High strobe for the app_addr[], app_cmd[2:0], app_sz, and app_hi_pri inputs.           
    
	app_wdf_data      => DDR3_wrt_data,  -- This provides the data for write commands.           
    app_wdf_end       => DDR3_wrt_end, -- This active-High input indicates that the current clock cycle is the last cycle of input data on app_wdf_data[].            
    app_wdf_mask      => DDR3_wrt_mask,   -- This provides the mask for app_wdf_data[].         
    app_wdf_wren      => DDR3_wrt_en, -- This is the active-High strobe for app_wdf_data[].
	
    app_rd_data       => DDR3_rd_data, -- This provides the output data from read commands.             
    app_rd_data_end   => DDR3_rd_data_end, --  This active-High output indicates that the current clock cycle is the last cycle of output data on app_rd_data[]. This is valid only when app_rd_data_valid is active-High.     
    app_rd_data_valid => DDR3_rd_data_valid, -- This active-High output indicates that app_rd_data[] is valid.     
	
    app_rdy           => DDR3_rdy, -- This output indicates that the UI is ready to accept commands. If the signal is deasserted when app_en is enabled, the current app_cmd and app_addr must be retried until app_rdy is asserted.                  
    app_wdf_rdy       => DDR3_wrt_rdy,  -- This output indicates that the write data FIFO is ready to receive data. Write data is accepted when app_wdf_rdy = 1'b1 and app_wdf_wren = 1'b1.                 
    app_sr_req        => '0',   -- This input is reserved and should be tied to 0.              
    app_ref_req       => '0',   -- This active-High input requests that a refresh command be issued to the DRAM.               
    app_zq_req        => '0',   -- This active-High input requests that a ZQ calibration command be issued to the DRAM.               
    app_sr_active     => app_sr_active, -- This output is reserved.     
    app_ref_ack       => app_ref_ack, -- This active-High output indicates that the Memory Controller has sent the requested refresh command to the PHY interface.               
    app_zq_ack        => app_zq_ack,  -- This active-High output indicates that the Memory Controller has sent the requested ZQ calibration command to the PHY interface.              
    ui_clk            => Clk_50MHz,  -- This UI clock must be a half or quarter of the DRAM clock.      
    ui_clk_sync_rst   => DDR3_rst,  -- This is the active-High UI reset.         
    init_calib_complete => init_calib_complete,  -- PHY asserts init_calib_complete when calibration is finished.
	--device_temp_i	  => "000000000000",
    -- System Clock Ports
    sys_clk_i         => Clk_100MHz,
    -- Reference Clock Ports
    clk_ref_i         => Clk_200MHz,      
    device_temp       => device_temp, 
    sys_rst           => sys_rst     
);


-- DDR FSM: Write one event in the buffer OnePage to synch the 50MHz and 128bits
Page_state_memory : process (SysClk, CpldRst)
begin 
    if CpldRst = '0' then --and not DDR3_rst = '1' then
		current_state	<= Reset;
	elsif rising_edge (SysClk) then
		current_state	<= DDRPage_Seq;
	end if; 
end process; 


Page_transition_table: process(SysClk, current_state)
begin 
	case current_state is
	when Reset =>
			DDRPage_Seq 			<= Idle;
	when Idle =>
		if EvBuffEmpty /= '1' then 
			DDRPage_Seq 			<= RdEventBuff;
		else 
			DDRPage_Seq 			<= Idle;
		end if;
	when RdEventBuff =>
		DDRPage_Seq 				<= RdWdCount;
	when RdWdCount =>
		DDRPage_Seq 				<= RduBunchHi;
	when RduBunchHi =>
		DDRPage_Seq 				<= RduBunchLo;		
	when RduBunchLo =>
		if EvBuffWdsUsed > EventWdCnt then 
			DDRPage_Seq 			<= RdEvent;
		else 
			DDRPage_Seq 			<= WaitEvent;
		end if;	
	when WaitEvent =>
		if EvBuffWdsUsed > EventWdCnt then 
			DDRPage_Seq 			<= RdEvent;
		else 
			DDRPage_Seq 			<= WaitEvent;
		end if;	
	when RdEvent =>
			DDRPage_Seq 			<= RdEvent4;
	when RdEvent1 =>
		if EventWdCnt = x"001" then 
			DDRPage_Seq				<= Idle;
		else
			DDRPage_Seq 			<= RdEvent2;
		end if;
	when RdEvent2 =>
		if EventWdCnt = x"001" then 
			DDRPage_Seq				<= Idle;
		else
			DDRPage_Seq 			<= RdEvent3;
		end if;
	when RdEvent3 =>
		if EventWdCnt = x"001" then 
			DDRPage_Seq				<= Idle;
		else
			DDRPage_Seq 			<= RdEvent4;	
		end if;
	when RdEvent4 =>
		if EventWdCnt = x"001" then 
			DDRPage_Seq				<= Idle;
		else
			DDRPage_Seq 			<= RdEvent5;
		end if;
	when RdEvent5 =>
		if EventWdCnt = x"001" then 
			DDRPage_Seq				<= Idle;
		else
			DDRPage_Seq 			<= RdEvent6;
		end if;
	when RdEvent6 =>
		if EventWdCnt = x"001" then 
			DDRPage_Seq				<= Idle;
		else
			DDRPage_Seq 			<= RdEvent7;
		end if;
	when RdEvent7 =>
		if EventWdCnt = x"001" then 
			DDRPage_Seq				<= Idle;
		else
			DDRPage_Seq 			<= RdEvent8;
		end if;
	when RdEvent8 =>
		if EventWdCnt = x"001" then 
			DDRPage_Seq				<= Idle;
		else
			DDRPage_Seq 			<= RdEvent1;	
		end if;
	when others =>
			DDRPage_Seq 			<= Idle;
	end case;
end process;

Page_output_table : process(SysClk, current_state)
begin
if rising_edge(SysClk) then
	-- Default value of the output 
	DDRPage_wr_en	<= '0';
	DDRPage_din		<= (others => '0');
	case current_state is
		when Reset =>  
		DDRPageSeqStat 	<= X"0";
		EvBuffRd		<= '0';
		DDRPage_wr_en	<= '0';
		DDRPage_din		<= (others => '0');
		DDRPage_wr_en	<= '0';
		EventData		<= (others => '0');
		DDR_wrt_addr	<= (others => '0');
		EventWdCnt		<= (others => '0');
		uBunch			<= (others => '0');
		DDRPage_wr_en	<= '0';
		DDRPage_din		<= (others => '0');
		PageWdCnt		<= (others => '0');
		transferDDR		<= '0';
		when Idle =>
		DDRPageSeqStat 	<= X"1";
		EvBuffRd		<= '0';
		PageWdCnt		<= (others => '0');
		transferDDR		<= '0';
		when RdEventBuff => 
		DDRPageSeqStat 	<= X"2";
		EvBuffRd		<= '1';
		
		when RdWdCount => 
		DDRPageSeqStat 	<= X"3";
		EvBuffRd		<= '1';
		EventWdCnt		<= EvBuffOut(10 downto 0);
		EventData(127 downto 112) <= EvBuffOut;
		when RduBunchHi => 
		DDRPageSeqStat 	<= X"4";
		EvBuffRd		<= '1';
		uBunch(31 downto 16) <= EvBuffOut;
		EventData(111 downto 96) <= EvBuffOut;	
		EventWdCnt <= EventWdCnt - '1';		
		when RduBunchLo => 
		DDRPageSeqStat 	<= X"5";
		EvBuffRd		<= '0';
		uBunch(15 downto 0) <= EvBuffOut;
		EventData(95 downto 80) <= EvBuffOut;	
		EventWdCnt <= EventWdCnt - '1';			
		when WaitEvent =>
		DDRPageSeqStat 	<= X"6";
		EvBuffRd		<= '0';		
		when RdEvent =>	
		EvBuffRd		<= '1';	
		when RdEvent1 =>
		EventData(127 downto 112) <= EvBuffOut;
		EventData(111 downto 0) <= (others => '0');
		EventWdCnt <= EventWdCnt - '1';
		DDRPage_wr_en	<= '1';
		PageWdCnt		<= PageWdCnt + '1';
		DDRPage_din		<= EventData;
			if EventWdCnt = x"002" then	
				EvBuffRd		<= '0';
			elsif EventWdCnt = x"001" then
				DDRPage_wr_en	<= '1';
				DDRPage_din		<= EventData;
				PageWdCnt		<= PageWdCnt + '1';
				transferDDR		<= '1';
			end if;
		when RdEvent2 =>
		EventData(111 downto 96) <= EvBuffOut;	
		EventWdCnt <= EventWdCnt - '1';	
			if EventWdCnt = x"002" then	
				EvBuffRd		<= '0';
			elsif EventWdCnt = x"001" then
				DDRPage_wr_en	<= '1';
				DDRPage_din		<= EventData;
				PageWdCnt		<= PageWdCnt + '1';
				transferDDR		<= '1';
			end if;		
		when RdEvent3 =>
		EventData(95 downto 80) <= EvBuffOut;	
		EventWdCnt <= EventWdCnt - '1';	
			if EventWdCnt = x"002" then	
				EvBuffRd		<= '0';
			elsif EventWdCnt = x"001" then
				DDRPage_wr_en	<= '1';
				DDRPage_din		<= EventData;
				PageWdCnt		<= PageWdCnt + '1';
				transferDDR		<= '1';
			end if;		
		when RdEvent4 =>
		EventData(79 downto 64) <= EvBuffOut;		
		EventWdCnt <= EventWdCnt - '1';	
			if EventWdCnt = x"002" then	
				EvBuffRd		<= '0';
			elsif EventWdCnt = x"001" then
				DDRPage_wr_en	<= '1';
				DDRPage_din		<= EventData;
				PageWdCnt		<= PageWdCnt + '1';
				transferDDR		<= '1';
			end if;
		when RdEvent5 =>
		EventData(63 downto 48) <= EvBuffOut;
		EventWdCnt <= EventWdCnt - '1';	
			if EventWdCnt = x"002" then	
				EvBuffRd		<= '0';
			elsif EventWdCnt = x"001" then
				DDRPage_wr_en	<= '1';
				DDRPage_din		<= EventData;
				PageWdCnt		<= PageWdCnt + '1';
				transferDDR		<= '1';				
			end if;		
		when RdEvent6 =>
		EventData(47 downto 32) <= EvBuffOut;
		EventWdCnt <= EventWdCnt - '1';	
			if EventWdCnt = x"002" then	
				EvBuffRd		<= '0';
			elsif EventWdCnt = x"001" then
				DDRPage_wr_en	<= '1';
				DDRPage_din		<= EventData;
				PageWdCnt		<= PageWdCnt + '1';
				transferDDR		<= '1';
			end if;		
		when RdEvent7 =>
		EventData(31 downto 16) <= EvBuffOut;	
		EventWdCnt <= EventWdCnt - '1';	
			if EventWdCnt = x"002" then	
				EvBuffRd		<= '0';
			elsif EventWdCnt = x"001" then
				DDRPage_wr_en	<= '1';
				DDRPage_din		<= EventData;
				PageWdCnt		<= PageWdCnt + '1';
				transferDDR		<= '1';
			end if;
		when RdEvent8 =>
		EventData(15 downto 0) <= EvBuffOut;	
		EventWdCnt <= EventWdCnt - '1';	
			if EventWdCnt = x"002" then	
				EvBuffRd		<= '0';
			elsif EventWdCnt = x"001" then
				DDRPage_wr_en	<= '1';
				DDRPage_din		<= EventData;
				PageWdCnt		<= PageWdCnt + '1';
				transferDDR		<= '1';
			end if;
		
		when others =>

		end case;
end if;
end process;

latchTransferDDR : process(transferDDR, rst_transferDDR)
begin 
    if rst_transferDDR = '0' then --and  not DDR3_rst = '1' then
		latched_transferDDR 	<= '0';
		latched_PageWdCnt		<= (others => '0'); 
	elsif rising_edge (transferDDR) then
		latched_transferDDR		<= '1';
		latched_PageWdCnt		<= PageWdCnt;
	end if; 	
end process;
 
-- DDR FSM: Read and Write

DDR_state_memory : process (Clk_50MHz, CpldRst)
begin 
    if CpldRst = '0' then --and  not DDR3_rst = '1' then
		prev_state 		<= Reset;
	elsif rising_edge (Clk_50MHz) then
		prev_state		<= DDR_Seq;
	end if; 
end process; 

DDR_transition_table: process(Clk_50MHz, prev_state)
begin 
	case prev_state is
	when Reset =>
			DDR_Seq 			<= Idle;
	when Idle =>
		if latched_transferDDR = '1' then --and onlyone = '1' then
			DDR_Seq 			<= WaitReady;
		else 
			DDR_Seq 			<= Idle;
		end if;		
	when WaitReady =>
		if DDR3_rdy = '1' then 
			DDR_Seq 			<= PrepareData;
		else 
			DDR_Seq 			<= WaitReady;
		end if;	
	when PrepareData =>
			DDR_Seq 			<= WrtData;
	when WrtData =>
		if DDR3_rdy = '0' then 
			DDR_Seq 			<= WaitReady;
		--elsif push_buttons_4bits_tri_i = b"0010" then 
		elsif RdPageWdCnt = x"1" then 
			DDR_Seq 			<= Idle;
		else 
			DDR_Seq 			<= WrtData;
		end if;		
		
	when Pause =>
		if push_buttons_4bits_tri_i = b"0100" then 
			DDR_Seq 			<= RdData;
		else 
			DDR_Seq 			<= Pause;
		end if;	
		
	when RdData =>
		--if push_buttons_4bits_tri_i = b"0100" then 
		if DDR3_addr = x"1000" then 
			DDR_Seq 			<= Idle;
		else 
			DDR_Seq 			<= RdData;
		end if;		
		
	when others =>
			DDR_Seq 			<= Idle;
	end case;
end process;

DDR_output_table : process(Clk_50MHz, prev_state)
begin
if rising_edge(Clk_50MHz) then
	-- Default value of the output 
		clk_ref_p       <= '0';        
		clk_ref_n       <= '0';
		rst_transferDDR	<= '1';
	case prev_state is
		when Reset =>  
		DDRSeqStat	  	<= X"0";
		led_4bits_tri_o <= X"0";  
		rgb_led_tri_o	<= b"000001";
		DDR3_cmd    	<= (others => '0');       
		DDR3_en     	<= '0';	       
		DDR3_addr   	<= (others => '0'); 
		DDR3_wrt_data	<= (others => '0'); 
		DDR3_wrt_end 	<= '0';
		DDR3_wrt_mask	<= (others => '0'); 
		DDR3_wrt_en		<= '0';
		rst_transferDDR	<= '0';  
		DDRPage_rd_en   <= '0';  
		RdPageWdCnt		<= (others => '0');
		setAddr			<= '0';
		
		when Idle =>
		DDRSeqStat	  	<= X"1";
		led_4bits_tri_o <= b"0001";	
		rgb_led_tri_o	<= (others => '0');
		DDR3_cmd    	<= (others => '0');       
		DDR3_en     	<= '0';	       
		DDR3_addr   	<= (others => '0');  
		DDR3_wrt_end 	<= '0';
		DDR3_wrt_mask	<= (others => '0'); 
		DDR3_wrt_en		<= '0';
		setAddr 		<= '1';
		DDRPage_rd_en	<= '0';
		
		when WaitReady => 
		DDRSeqStat	  	<= X"2";
		rst_transferDDR	<= '0';
		RdPageWdCnt		<= latched_PageWdCnt;
		DDRPage_rd_en	<= '0';
		
		when PrepareData =>
		DDRSeqStat	  	<= X"3";
		DDRPage_rd_en	<= '1';
		
		when WrtData =>
		DDRSeqStat	  	<= X"4";
		led_4bits_tri_o <= b"0010";	
		rgb_led_tri_o	<= b"000000";
				
		if DDR3_wrt_rdy = '1' then 
		DDR3_cmd		<= DDR_cmd_write;
		DDR3_en     	<= '1';
		DDR3_wrt_end 	<= '1';
		DDR3_wrt_mask	<= (others => '0'); 
		DDR3_wrt_en		<= '1';
		DDR3_wrt_data	<= DDRPage_dout;
		RdPageWdCnt 	<= RdPageWdCnt -'1';
			if setAddr = '1' then 
				DDR3_addr(24 downto 10)	<= uBunch(14 downto 0);
				setAddr <= '0';
			else 
				DDR3_addr		<= DDR3_addr + x"10";
			end if;
			if RdPageWdCnt < x"2" then
				DDRPage_rd_en	<= '0';
			else
				DDRPage_rd_en	<= '1';   
			end if;
		end if; 
		
		when RdData =>
		DDRSeqStat	  	<= X"4";
		led_4bits_tri_o <= b"0100";
		rgb_led_tri_o	<= b"000000";

		DDR3_cmd		<= DDR_cmd_read;
		DDR3_en     	<= '1';
		DDR3_addr		<= DDR3_addr + x"10";
		
		DDR3_wrt_end 	<= '0';
		DDR3_wrt_en		<= '0';

		--datatest		<= datatest + x"00010001000100010001000100010001";
		--
		--if DDR3_rd_data = datatest then 
		--	led_4bits_tri_o <= X"F";
		--	rgb_led_tri_o	<= b"010000";  
		--else 
		--	led_4bits_tri_o <= X"0";
		--	rgb_led_tri_o	<= b"001000";
		--end if;
		
		when Pause => 
		DDR3_en     	<= '0';
		DDRSeqStat	  	<= X"5";	
		DDR3_wrt_end 	<= '0';
		DDR3_wrt_en		<= '0';
		when others =>
		DDRSeqStat	  	<= X"6";
		rgb_led_tri_o <= b"000010";	
		end case;
end if;
end process;


-- =========================================================================
-- ===========================     ILA    ==================================
-- =========================================================================
generateILA0: if true generate

ila : ila_0 
port map(
	clk 		=> SysClk, 
	probe0 		=> DDR3_addr,         
    probe1 		=> DDR3_cmd,          
    probe2(0)	=> DDR3_en,           
    probe3 		=> DDR3_wrt_data,     
    probe4(0)	=> DDR3_wrt_end,      
    probe5 		=> DDR3_wrt_mask,     
    probe6(0)	=> DDR3_wrt_en,       
    probe7 		=> DDR3_rd_data,      
    probe8(0) 	=> DDR3_rd_data_end,  
    probe9(0) 	=> DDR3_rd_data_valid,
    probe10(0) 	=> DDR3_rdy,          
	probe11(0) 	=> DDR3_wrt_rdy,
	probe12	 	=> DDRSeqStat
);                   

end GENERATE; 
end Behavioral;