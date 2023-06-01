-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Jun  1 15:44:46 2023
-- Host        : CD-135239 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/v23.1/Test_DDR_Arty/Test_DDR_Arty.gen/sources_1/bd/TestDDR/ip/TestDDR_TestDDR_top_0_0/TestDDR_TestDDR_top_0_0_sim_netlist.vhdl
-- Design      : TestDDR_TestDDR_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TestDDR_TestDDR_top_0_0_TestDDR_top is
  port (
    DDR_ADDR : out STD_LOGIC_VECTOR ( 13 downto 0 );
    BA : out STD_LOGIC_VECTOR ( 2 downto 0 );
    RAS : out STD_LOGIC;
    CAS : out STD_LOGIC;
    DDR_WE : out STD_LOGIC;
    RESET_N : out STD_LOGIC;
    DDR_CLKP : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR_CLKN : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR_CKE : out STD_LOGIC_VECTOR ( 0 to 0 );
    CS : out STD_LOGIC_VECTOR ( 0 to 0 );
    DM : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ODT : out STD_LOGIC_VECTOR ( 0 to 0 );
    led_4bits_tri_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rgb_led_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR_DATA : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    ddr3_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    SysClk : in STD_LOGIC;
    Clk_100MHz : in STD_LOGIC;
    Clk_200MHz : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CpldRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TestDDR_TestDDR_top_0_0_TestDDR_top : entity is "TestDDR_top";
end TestDDR_TestDDR_top_0_0_TestDDR_top;

architecture STRUCTURE of TestDDR_TestDDR_top_0_0_TestDDR_top is
  component TestDDR_TestDDR_top_0_0_DDR3LController is
  port (
    ddr3_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    ddr3_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    ddr3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr3_ras_n : out STD_LOGIC;
    ddr3_cas_n : out STD_LOGIC;
    ddr3_we_n : out STD_LOGIC;
    ddr3_reset_n : out STD_LOGIC;
    ddr3_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    app_addr : in STD_LOGIC_VECTOR ( 27 downto 0 );
    app_cmd : in STD_LOGIC_VECTOR ( 2 downto 0 );
    app_en : in STD_LOGIC;
    app_wdf_data : in STD_LOGIC_VECTOR ( 127 downto 0 );
    app_wdf_end : in STD_LOGIC;
    app_wdf_mask : in STD_LOGIC_VECTOR ( 15 downto 0 );
    app_wdf_wren : in STD_LOGIC;
    app_rd_data : out STD_LOGIC_VECTOR ( 127 downto 0 );
    app_rd_data_end : out STD_LOGIC;
    app_rd_data_valid : out STD_LOGIC;
    app_rdy : out STD_LOGIC;
    app_wdf_rdy : out STD_LOGIC;
    app_sr_req : in STD_LOGIC;
    app_ref_req : in STD_LOGIC;
    app_zq_req : in STD_LOGIC;
    app_sr_active : out STD_LOGIC;
    app_ref_ack : out STD_LOGIC;
    app_zq_ack : out STD_LOGIC;
    ui_clk : out STD_LOGIC;
    ui_clk_sync_rst : out STD_LOGIC;
    init_calib_complete : out STD_LOGIC;
    sys_clk_i : in STD_LOGIC;
    clk_ref_i : in STD_LOGIC;
    device_temp : out STD_LOGIC_VECTOR ( 11 downto 0 );
    sys_rst : in STD_LOGIC
  );
  end component TestDDR_TestDDR_top_0_0_DDR3LController;
  component TestDDR_TestDDR_top_0_0_SCFIFO_1Kx16 is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component TestDDR_TestDDR_top_0_0_SCFIFO_1Kx16;
  component TestDDR_TestDDR_top_0_0_FIFO_128x128 is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 127 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 127 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component TestDDR_TestDDR_top_0_0_FIFO_128x128;
  component TestDDR_TestDDR_top_0_0_ila_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 27 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component TestDDR_TestDDR_top_0_0_ila_0;
  signal DDR3_addr : STD_LOGIC_VECTOR ( 27 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of DDR3_addr : signal is std.standard.true;
  signal DDR3_cmd : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of DDR3_cmd : signal is std.standard.true;
  signal \DDR3_cmd[0]_i_1_n_0\ : STD_LOGIC;
  signal \DDR3_cmd[1]_i_1_n_0\ : STD_LOGIC;
  signal \DDR3_cmd[2]_i_1_n_0\ : STD_LOGIC;
  signal \DDR3_cmd[2]_i_2_n_0\ : STD_LOGIC;
  signal \DDR3_cmd[2]_i_3_n_0\ : STD_LOGIC;
  signal DDR3_en : STD_LOGIC;
  attribute MARK_DEBUG of DDR3_en : signal is std.standard.true;
  signal DDR3_en_i_1_n_0 : STD_LOGIC;
  signal DDR3_rd_data : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute MARK_DEBUG of DDR3_rd_data : signal is std.standard.true;
  signal DDR3_rd_data_end : STD_LOGIC;
  attribute MARK_DEBUG of DDR3_rd_data_end : signal is std.standard.true;
  signal DDR3_rd_data_valid : STD_LOGIC;
  attribute MARK_DEBUG of DDR3_rd_data_valid : signal is std.standard.true;
  signal DDR3_rdy : STD_LOGIC;
  attribute MARK_DEBUG of DDR3_rdy : signal is std.standard.true;
  signal DDR3_wrt_data : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute MARK_DEBUG of DDR3_wrt_data : signal is std.standard.true;
  signal DDR3_wrt_data_reg0 : STD_LOGIC;
  signal DDR3_wrt_en : STD_LOGIC;
  attribute MARK_DEBUG of DDR3_wrt_en : signal is std.standard.true;
  signal DDR3_wrt_en_i_1_n_0 : STD_LOGIC;
  signal DDR3_wrt_end : STD_LOGIC;
  attribute MARK_DEBUG of DDR3_wrt_end : signal is std.standard.true;
  signal DDR3_wrt_end_i_1_n_0 : STD_LOGIC;
  signal DDR3_wrt_mask : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of DDR3_wrt_mask : signal is std.standard.true;
  signal DDR3_wrt_rdy : STD_LOGIC;
  attribute MARK_DEBUG of DDR3_wrt_rdy : signal is std.standard.true;
  signal DDRPage_Seq : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \DDRPage_din[0]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[100]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[101]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[102]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[103]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[104]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[105]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[106]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[107]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[108]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[109]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[10]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[110]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[111]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[112]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[113]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[114]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[115]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[116]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[117]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[118]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[119]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[11]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[120]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[121]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[122]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[123]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[124]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[125]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[126]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[127]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[127]_i_2_n_0\ : STD_LOGIC;
  signal \DDRPage_din[12]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[13]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[14]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[15]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[16]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[17]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[18]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[19]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[1]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[20]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[21]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[22]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[23]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[24]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[25]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[26]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[27]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[28]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[29]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[2]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[30]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[31]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[32]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[33]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[34]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[35]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[36]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[37]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[38]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[39]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[3]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[40]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[41]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[42]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[43]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[44]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[45]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[46]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[47]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[48]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[49]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[4]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[50]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[51]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[52]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[53]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[54]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[55]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[56]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[57]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[58]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[59]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[5]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[60]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[61]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[62]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[63]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[64]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[65]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[66]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[67]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[68]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[69]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[6]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[70]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[71]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[72]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[73]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[74]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[75]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[76]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[77]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[78]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[79]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[7]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[80]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[81]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[82]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[83]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[84]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[85]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[86]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[87]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[88]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[89]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[8]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[90]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[91]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[92]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[93]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[94]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[95]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[96]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[97]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[98]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[99]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din[9]_i_1_n_0\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[0]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[100]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[101]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[102]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[103]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[104]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[105]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[106]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[107]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[108]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[109]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[10]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[110]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[111]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[112]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[113]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[114]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[115]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[116]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[117]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[118]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[119]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[11]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[120]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[121]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[122]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[123]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[124]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[125]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[126]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[127]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[12]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[13]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[14]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[15]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[16]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[17]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[18]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[19]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[1]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[20]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[21]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[22]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[23]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[24]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[25]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[26]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[27]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[28]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[29]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[2]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[30]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[31]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[32]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[33]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[34]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[35]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[36]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[37]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[38]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[39]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[3]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[40]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[41]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[42]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[43]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[44]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[45]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[46]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[47]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[48]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[49]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[4]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[50]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[51]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[52]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[53]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[54]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[55]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[56]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[57]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[58]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[59]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[5]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[60]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[61]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[62]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[63]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[64]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[65]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[66]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[67]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[68]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[69]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[6]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[70]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[71]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[72]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[73]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[74]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[75]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[76]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[77]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[78]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[79]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[7]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[80]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[81]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[82]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[83]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[84]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[85]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[86]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[87]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[88]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[89]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[8]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[90]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[91]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[92]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[93]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[94]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[95]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[96]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[97]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[98]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[99]\ : STD_LOGIC;
  signal \DDRPage_din_reg_n_0_[9]\ : STD_LOGIC;
  signal DDRPage_dout : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal DDRPage_rd_en_i_1_n_0 : STD_LOGIC;
  signal DDRPage_rd_en_i_2_n_0 : STD_LOGIC;
  signal DDRPage_rd_en_i_3_n_0 : STD_LOGIC;
  signal DDRPage_rd_en_reg_n_0 : STD_LOGIC;
  signal DDRPage_wr_en_i_1_n_0 : STD_LOGIC;
  signal DDRPage_wr_en_reg_n_0 : STD_LOGIC;
  signal DDRSeqStat : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of DDRSeqStat : signal is std.standard.true;
  signal \DDRSeqStat[0]_i_1_n_0\ : STD_LOGIC;
  signal \DDRSeqStat[1]_i_1_n_0\ : STD_LOGIC;
  signal EvBuffDat : STD_LOGIC;
  signal \EvBuffDat[0]_i_1_n_0\ : STD_LOGIC;
  signal \EvBuffDat[0]_i_2_n_0\ : STD_LOGIC;
  signal \EvBuffDat[0]_i_3_n_0\ : STD_LOGIC;
  signal \EvBuffDat[0]_i_4_n_0\ : STD_LOGIC;
  signal \EvBuffDat[0]_i_5_n_0\ : STD_LOGIC;
  signal \EvBuffDat[0]_i_6_n_0\ : STD_LOGIC;
  signal \EvBuffDat[11]_i_1_n_0\ : STD_LOGIC;
  signal \EvBuffDat[11]_i_2_n_0\ : STD_LOGIC;
  signal \EvBuffDat[11]_i_3_n_0\ : STD_LOGIC;
  signal \EvBuffDat[13]_i_1_n_0\ : STD_LOGIC;
  signal \EvBuffDat[13]_i_2_n_0\ : STD_LOGIC;
  signal \EvBuffDat[14]_i_1_n_0\ : STD_LOGIC;
  signal \EvBuffDat[14]_i_2_n_0\ : STD_LOGIC;
  signal \EvBuffDat[14]_i_3_n_0\ : STD_LOGIC;
  signal \EvBuffDat[14]_i_4_n_0\ : STD_LOGIC;
  signal \EvBuffDat[15]_i_2_n_0\ : STD_LOGIC;
  signal \EvBuffDat[15]_i_3_n_0\ : STD_LOGIC;
  signal \EvBuffDat[15]_i_4_n_0\ : STD_LOGIC;
  signal \EvBuffDat[15]_i_5_n_0\ : STD_LOGIC;
  signal \EvBuffDat[15]_i_6_n_0\ : STD_LOGIC;
  signal \EvBuffDat[15]_i_7_n_0\ : STD_LOGIC;
  signal \EvBuffDat[15]_i_8_n_0\ : STD_LOGIC;
  signal \EvBuffDat[1]_i_1_n_0\ : STD_LOGIC;
  signal \EvBuffDat[1]_i_2_n_0\ : STD_LOGIC;
  signal \EvBuffDat[1]_i_3_n_0\ : STD_LOGIC;
  signal \EvBuffDat[2]_i_1_n_0\ : STD_LOGIC;
  signal \EvBuffDat[2]_i_2_n_0\ : STD_LOGIC;
  signal \EvBuffDat[2]_i_3_n_0\ : STD_LOGIC;
  signal \EvBuffDat[3]_i_1_n_0\ : STD_LOGIC;
  signal \EvBuffDat[3]_i_2_n_0\ : STD_LOGIC;
  signal \EvBuffDat[3]_i_3_n_0\ : STD_LOGIC;
  signal \EvBuffDat[3]_i_4_n_0\ : STD_LOGIC;
  signal \EvBuffDat[3]_i_5_n_0\ : STD_LOGIC;
  signal \EvBuffDat[4]_i_1_n_0\ : STD_LOGIC;
  signal \EvBuffDat[4]_i_2_n_0\ : STD_LOGIC;
  signal \EvBuffDat[5]_i_1_n_0\ : STD_LOGIC;
  signal \EvBuffDat[5]_i_2_n_0\ : STD_LOGIC;
  signal \EvBuffDat[5]_i_3_n_0\ : STD_LOGIC;
  signal \EvBuffDat[6]_i_1_n_0\ : STD_LOGIC;
  signal \EvBuffDat[6]_i_2_n_0\ : STD_LOGIC;
  signal \EvBuffDat[6]_i_3_n_0\ : STD_LOGIC;
  signal \EvBuffDat[6]_i_4_n_0\ : STD_LOGIC;
  signal \EvBuffDat[6]_i_5_n_0\ : STD_LOGIC;
  signal \EvBuffDat[7]_i_1_n_0\ : STD_LOGIC;
  signal \EvBuffDat[7]_i_2_n_0\ : STD_LOGIC;
  signal \EvBuffDat[8]_i_1_n_0\ : STD_LOGIC;
  signal EvBuffOut : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal EvBuffRd_i_1_n_0 : STD_LOGIC;
  signal EvBuffWdsUsed : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal EvBuffWrt_i_1_n_0 : STD_LOGIC;
  signal EvBuffWrt_i_3_n_0 : STD_LOGIC;
  signal EventBuff_i_1_n_0 : STD_LOGIC;
  signal EventData : STD_LOGIC_VECTOR ( 127 downto 15 );
  signal EventData0 : STD_LOGIC;
  signal \EventData[100]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[101]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[102]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[103]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[104]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[105]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[106]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[107]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[108]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[109]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[110]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[111]_i_2_n_0\ : STD_LOGIC;
  signal \EventData[64]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[65]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[66]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[67]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[68]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[69]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[70]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[71]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[72]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[73]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[74]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[75]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[76]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[77]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[78]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[79]_i_2_n_0\ : STD_LOGIC;
  signal \EventData[80]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[81]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[82]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[83]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[84]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[85]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[86]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[87]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[88]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[89]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[90]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[91]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[92]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[93]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[94]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[95]_i_2_n_0\ : STD_LOGIC;
  signal \EventData[96]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[97]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[98]_i_1_n_0\ : STD_LOGIC;
  signal \EventData[99]_i_1_n_0\ : STD_LOGIC;
  signal \EventData_reg_n_0_[0]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[100]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[101]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[102]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[103]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[104]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[105]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[106]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[107]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[108]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[109]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[10]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[110]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[111]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[112]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[113]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[114]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[115]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[116]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[117]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[118]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[119]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[11]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[120]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[121]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[122]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[123]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[124]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[125]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[126]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[127]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[12]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[13]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[14]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[15]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[16]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[17]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[18]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[19]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[1]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[20]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[21]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[22]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[23]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[24]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[25]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[26]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[27]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[28]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[29]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[2]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[30]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[31]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[32]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[33]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[34]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[35]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[36]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[37]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[38]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[39]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[3]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[40]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[41]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[42]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[43]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[44]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[45]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[46]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[47]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[48]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[49]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[4]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[50]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[51]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[52]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[53]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[54]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[55]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[56]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[57]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[58]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[59]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[5]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[60]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[61]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[62]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[63]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[64]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[65]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[66]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[67]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[68]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[69]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[6]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[70]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[71]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[72]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[73]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[74]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[75]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[76]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[77]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[78]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[79]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[7]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[80]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[81]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[82]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[83]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[84]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[85]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[86]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[87]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[88]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[89]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[8]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[90]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[91]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[92]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[93]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[94]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[95]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[96]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[97]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[98]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[99]\ : STD_LOGIC;
  signal \EventData_reg_n_0_[9]\ : STD_LOGIC;
  signal EventWdCnt : STD_LOGIC;
  signal \EventWdCnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \EventWdCnt[10]_i_2_n_0\ : STD_LOGIC;
  signal \EventWdCnt[10]_i_3_n_0\ : STD_LOGIC;
  signal \EventWdCnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \EventWdCnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \EventWdCnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \EventWdCnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \EventWdCnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \EventWdCnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \EventWdCnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \EventWdCnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \EventWdCnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \EventWdCnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \EventWdCnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \EventWdCnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \EventWdCnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \EventWdCnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \EventWdCnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \EventWdCnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \EventWdCnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \EventWdCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \EventWdCnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \EventWdCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \EventWdCnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \EventWdCnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \EventWdCnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \EventWdCnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \EventWdCnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \EventWdCnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \EventWdCnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \EventWdCnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \FSM_onehot_prev_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_prev_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_prev_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_prev_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_prev_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_prev_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_prev_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_prev_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[3]_i_4_n_0\ : STD_LOGIC;
  signal PageWdCnt : STD_LOGIC;
  signal \PageWdCnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \PageWdCnt[3]_i_4_n_0\ : STD_LOGIC;
  signal \PageWdCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \PageWdCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \PageWdCnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \PageWdCnt_reg_n_0_[3]\ : STD_LOGIC;
  signal RdPageWdCnt : STD_LOGIC;
  signal \RdPageWdCnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \RdPageWdCnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \RdPageWdCnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \RdPageWdCnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \RdPageWdCnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \RdPageWdCnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \RdPageWdCnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \RdPageWdCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \RdPageWdCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \RdPageWdCnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \RdPageWdCnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter[0]_i_3_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal din : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal empty : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal eqOp2_in : STD_LOGIC;
  signal first_iter_i_1_n_0 : STD_LOGIC;
  signal gtOp : STD_LOGIC;
  signal \gtOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_n_3\ : STD_LOGIC;
  signal gtOp_carry_i_1_n_0 : STD_LOGIC;
  signal gtOp_carry_i_2_n_0 : STD_LOGIC;
  signal gtOp_carry_i_3_n_0 : STD_LOGIC;
  signal gtOp_carry_i_4_n_0 : STD_LOGIC;
  signal gtOp_carry_i_5_n_0 : STD_LOGIC;
  signal gtOp_carry_i_6_n_0 : STD_LOGIC;
  signal gtOp_carry_i_7_n_0 : STD_LOGIC;
  signal gtOp_carry_i_8_n_0 : STD_LOGIC;
  signal gtOp_carry_n_0 : STD_LOGIC;
  signal gtOp_carry_n_1 : STD_LOGIC;
  signal gtOp_carry_n_2 : STD_LOGIC;
  signal gtOp_carry_n_3 : STD_LOGIC;
  signal in12 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal in9 : STD_LOGIC_VECTOR ( 27 downto 3 );
  signal latched_PageWdCnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal latched_transferDDR : STD_LOGIC;
  signal \^led_4bits_tri_o\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \led_4bits_tri_o[0]_i_1_n_0\ : STD_LOGIC;
  signal \led_4bits_tri_o[1]_i_1_n_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal plusOp_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_4\ : STD_LOGIC;
  signal \plusOp_carry__1_n_5\ : STD_LOGIC;
  signal \plusOp_carry__1_n_6\ : STD_LOGIC;
  signal \plusOp_carry__1_n_7\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_4\ : STD_LOGIC;
  signal \plusOp_carry__2_n_5\ : STD_LOGIC;
  signal \plusOp_carry__2_n_6\ : STD_LOGIC;
  signal \plusOp_carry__2_n_7\ : STD_LOGIC;
  signal \plusOp_carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_carry__3_n_4\ : STD_LOGIC;
  signal \plusOp_carry__3_n_5\ : STD_LOGIC;
  signal \plusOp_carry__3_n_6\ : STD_LOGIC;
  signal \plusOp_carry__3_n_7\ : STD_LOGIC;
  signal \plusOp_carry__4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_n_1\ : STD_LOGIC;
  signal \plusOp_carry__4_n_2\ : STD_LOGIC;
  signal \plusOp_carry__4_n_3\ : STD_LOGIC;
  signal \plusOp_carry__4_n_4\ : STD_LOGIC;
  signal \plusOp_carry__4_n_5\ : STD_LOGIC;
  signal \plusOp_carry__4_n_6\ : STD_LOGIC;
  signal \plusOp_carry__4_n_7\ : STD_LOGIC;
  signal \plusOp_carry__5_n_7\ : STD_LOGIC;
  signal plusOp_carry_i_1_n_0 : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal plusOp_carry_n_4 : STD_LOGIC;
  signal plusOp_carry_n_5 : STD_LOGIC;
  signal plusOp_carry_n_6 : STD_LOGIC;
  signal plusOp_carry_n_7 : STD_LOGIC;
  signal rd_clk : STD_LOGIC;
  signal rd_en : STD_LOGIC;
  signal \reset_count[7]_i_2_n_0\ : STD_LOGIC;
  signal reset_count_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^rgb_led_tri_o\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \rgb_led_tri_o[0]_i_1_n_0\ : STD_LOGIC;
  signal rst : STD_LOGIC;
  signal rst_transferDDR : STD_LOGIC;
  signal rst_transferDDR_reg_inv_n_0 : STD_LOGIC;
  signal setAddr : STD_LOGIC;
  signal setAddr_i_1_n_0 : STD_LOGIC;
  signal setAddr_reg_n_0 : STD_LOGIC;
  signal sys_rst : STD_LOGIC;
  signal sys_rst_i_1_n_0 : STD_LOGIC;
  signal transferDDR_i_1_n_0 : STD_LOGIC;
  signal transferDDR_reg_n_0 : STD_LOGIC;
  signal uBunch : STD_LOGIC_VECTOR ( 14 to 14 );
  signal \uBunch_reg_n_0_[0]\ : STD_LOGIC;
  signal \uBunch_reg_n_0_[10]\ : STD_LOGIC;
  signal \uBunch_reg_n_0_[11]\ : STD_LOGIC;
  signal \uBunch_reg_n_0_[12]\ : STD_LOGIC;
  signal \uBunch_reg_n_0_[13]\ : STD_LOGIC;
  signal \uBunch_reg_n_0_[14]\ : STD_LOGIC;
  signal \uBunch_reg_n_0_[1]\ : STD_LOGIC;
  signal \uBunch_reg_n_0_[2]\ : STD_LOGIC;
  signal \uBunch_reg_n_0_[3]\ : STD_LOGIC;
  signal \uBunch_reg_n_0_[4]\ : STD_LOGIC;
  signal \uBunch_reg_n_0_[5]\ : STD_LOGIC;
  signal \uBunch_reg_n_0_[6]\ : STD_LOGIC;
  signal \uBunch_reg_n_0_[7]\ : STD_LOGIC;
  signal \uBunch_reg_n_0_[8]\ : STD_LOGIC;
  signal \uBunch_reg_n_0_[9]\ : STD_LOGIC;
  signal wr_en : STD_LOGIC;
  signal NLW_DDR_Controller_app_ref_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_DDR_Controller_app_sr_active_UNCONNECTED : STD_LOGIC;
  signal NLW_DDR_Controller_app_zq_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_DDR_Controller_init_calib_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_DDR_Controller_ui_clk_sync_rst_UNCONNECTED : STD_LOGIC;
  signal NLW_DDR_Controller_device_temp_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_EventBuff_full_UNCONNECTED : STD_LOGIC;
  signal NLW_OneDDRPage_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_OneDDRPage_full_UNCONNECTED : STD_LOGIC;
  signal NLW_OneDDRPage_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_OneDDRPage_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_OneDDRPage_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_OneDDRPage_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gtOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute KEEP : string;
  attribute KEEP of \DDR3_addr_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \DDR3_addr_reg[0]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[10]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[10]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[11]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[11]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[12]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[12]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[13]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[13]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[14]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[14]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[15]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[15]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[16]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[16]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[17]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[17]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[18]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[18]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[19]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[19]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[1]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[1]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[20]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[20]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[21]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[21]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[22]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[22]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[23]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[23]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[24]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[24]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[25]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[25]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[26]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[26]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[27]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[27]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[2]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[2]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[3]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[3]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[4]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[4]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[5]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[5]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[6]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[6]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[7]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[7]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[8]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[8]\ : label is "yes";
  attribute KEEP of \DDR3_addr_reg[9]\ : label is "yes";
  attribute mark_debug_string of \DDR3_addr_reg[9]\ : label is "yes";
  attribute KEEP of \DDR3_cmd_reg[0]\ : label is "yes";
  attribute mark_debug_string of \DDR3_cmd_reg[0]\ : label is "yes";
  attribute KEEP of \DDR3_cmd_reg[1]\ : label is "yes";
  attribute mark_debug_string of \DDR3_cmd_reg[1]\ : label is "yes";
  attribute KEEP of \DDR3_cmd_reg[2]\ : label is "yes";
  attribute mark_debug_string of \DDR3_cmd_reg[2]\ : label is "yes";
  attribute KEEP of DDR3_en_reg : label is "yes";
  attribute mark_debug_string of DDR3_en_reg : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[0]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[0]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[100]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[100]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[101]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[101]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[102]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[102]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[103]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[103]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[104]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[104]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[105]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[105]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[106]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[106]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[107]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[107]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[108]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[108]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[109]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[109]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[10]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[10]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[110]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[110]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[111]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[111]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[112]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[112]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[113]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[113]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[114]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[114]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[115]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[115]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[116]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[116]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[117]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[117]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[118]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[118]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[119]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[119]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[11]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[11]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[120]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[120]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[121]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[121]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[122]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[122]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[123]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[123]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[124]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[124]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[125]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[125]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[126]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[126]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[127]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[127]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[12]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[12]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[13]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[13]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[14]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[14]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[15]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[15]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[16]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[16]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[17]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[17]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[18]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[18]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[19]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[19]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[1]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[1]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[20]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[20]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[21]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[21]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[22]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[22]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[23]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[23]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[24]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[24]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[25]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[25]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[26]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[26]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[27]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[27]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[28]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[28]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[29]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[29]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[2]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[2]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[30]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[30]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[31]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[31]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[32]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[32]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[33]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[33]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[34]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[34]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[35]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[35]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[36]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[36]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[37]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[37]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[38]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[38]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[39]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[39]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[3]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[3]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[40]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[40]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[41]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[41]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[42]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[42]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[43]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[43]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[44]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[44]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[45]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[45]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[46]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[46]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[47]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[47]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[48]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[48]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[49]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[49]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[4]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[4]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[50]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[50]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[51]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[51]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[52]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[52]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[53]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[53]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[54]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[54]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[55]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[55]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[56]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[56]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[57]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[57]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[58]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[58]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[59]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[59]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[5]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[5]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[60]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[60]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[61]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[61]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[62]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[62]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[63]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[63]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[64]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[64]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[65]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[65]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[66]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[66]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[67]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[67]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[68]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[68]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[69]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[69]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[6]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[6]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[70]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[70]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[71]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[71]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[72]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[72]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[73]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[73]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[74]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[74]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[75]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[75]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[76]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[76]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[77]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[77]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[78]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[78]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[79]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[79]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[7]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[7]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[80]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[80]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[81]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[81]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[82]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[82]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[83]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[83]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[84]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[84]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[85]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[85]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[86]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[86]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[87]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[87]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[88]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[88]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[89]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[89]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[8]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[8]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[90]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[90]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[91]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[91]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[92]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[92]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[93]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[93]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[94]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[94]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[95]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[95]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[96]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[96]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[97]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[97]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[98]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[98]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[99]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[99]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_data_reg[9]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_data_reg[9]\ : label is "yes";
  attribute KEEP of DDR3_wrt_en_reg : label is "yes";
  attribute mark_debug_string of DDR3_wrt_en_reg : label is "yes";
  attribute KEEP of DDR3_wrt_end_reg : label is "yes";
  attribute mark_debug_string of DDR3_wrt_end_reg : label is "yes";
  attribute KEEP of \DDR3_wrt_mask_reg[0]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_mask_reg[0]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_mask_reg[10]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_mask_reg[10]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_mask_reg[11]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_mask_reg[11]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_mask_reg[12]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_mask_reg[12]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_mask_reg[13]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_mask_reg[13]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_mask_reg[14]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_mask_reg[14]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_mask_reg[15]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_mask_reg[15]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_mask_reg[1]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_mask_reg[1]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_mask_reg[2]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_mask_reg[2]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_mask_reg[3]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_mask_reg[3]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_mask_reg[4]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_mask_reg[4]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_mask_reg[5]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_mask_reg[5]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_mask_reg[6]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_mask_reg[6]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_mask_reg[7]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_mask_reg[7]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_mask_reg[8]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_mask_reg[8]\ : label is "yes";
  attribute KEEP of \DDR3_wrt_mask_reg[9]\ : label is "yes";
  attribute mark_debug_string of \DDR3_wrt_mask_reg[9]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DDRSeqStat[0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \DDRSeqStat[1]_i_1\ : label is "soft_lutpair43";
  attribute KEEP of \DDRSeqStat_reg[0]\ : label is "yes";
  attribute KEEP of \DDRSeqStat_reg[1]\ : label is "yes";
  attribute KEEP of \DDRSeqStat_reg[2]\ : label is "yes";
  attribute syn_black_box : string;
  attribute syn_black_box of DDR_Controller : label is "TRUE";
  attribute SOFT_HLUTNM of \EvBuffDat[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \EvBuffDat[0]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \EvBuffDat[0]_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \EvBuffDat[0]_i_6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \EvBuffDat[13]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \EvBuffDat[14]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \EvBuffDat[14]_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \EvBuffDat[14]_i_4\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \EvBuffDat[15]_i_5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \EvBuffDat[15]_i_6\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \EvBuffDat[15]_i_8\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \EvBuffDat[1]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \EvBuffDat[3]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \EvBuffDat[3]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \EvBuffDat[4]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \EvBuffDat[5]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \EvBuffDat[5]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \EvBuffDat[6]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \EvBuffDat[6]_i_4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \EvBuffDat[6]_i_5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \EvBuffDat[7]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of EvBuffWrt_i_3 : label is "soft_lutpair22";
  attribute syn_black_box of EventBuff : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of EventBuff : label is "fifo_generator_v13_2_8,Vivado 2023.1";
  attribute SOFT_HLUTNM of \EventData[100]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \EventData[101]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \EventData[102]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \EventData[103]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \EventData[104]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \EventData[105]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \EventData[106]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \EventData[107]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \EventData[108]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \EventData[109]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \EventData[110]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \EventData[64]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \EventData[65]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \EventData[66]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \EventData[67]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \EventData[68]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \EventData[69]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \EventData[70]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \EventData[71]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \EventData[72]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \EventData[73]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \EventData[74]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \EventData[75]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \EventData[76]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \EventData[77]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \EventData[78]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \EventData[79]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \EventData[80]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \EventData[81]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \EventData[82]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \EventData[83]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \EventData[84]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \EventData[85]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \EventData[86]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \EventData[87]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \EventData[88]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \EventData[89]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \EventData[90]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \EventData[91]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \EventData[92]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \EventData[93]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \EventData[94]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \EventData[95]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \EventData[96]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \EventData[97]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \EventData[98]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \EventData[99]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \EventWdCnt[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \EventWdCnt[10]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \EventWdCnt[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \EventWdCnt[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \EventWdCnt[3]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \EventWdCnt[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \EventWdCnt[4]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \EventWdCnt[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \EventWdCnt[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \EventWdCnt[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \EventWdCnt[8]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \EventWdCnt[9]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \EventWdCnt[9]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_prev_state[4]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_prev_state_reg[0]\ : label is "reset:00001,preparedata:01000,waitready:00100,wrtdata:10000,pause:110,rddata:101,idle:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_prev_state_reg[1]\ : label is "reset:00001,preparedata:01000,waitready:00100,wrtdata:10000,pause:110,rddata:101,idle:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_prev_state_reg[2]\ : label is "reset:00001,preparedata:01000,waitready:00100,wrtdata:10000,pause:110,rddata:101,idle:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_prev_state_reg[3]\ : label is "reset:00001,preparedata:01000,waitready:00100,wrtdata:10000,pause:110,rddata:101,idle:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_prev_state_reg[4]\ : label is "reset:00001,preparedata:01000,waitready:00100,wrtdata:10000,pause:110,rddata:101,idle:00010";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[3]_i_1\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "rdubunchhi:0100,rdwdcount:0011,rdevent6:1010,rdeventbuff:0010,rdevent4:1000,rdevent5:1001,rdevent3:1111,idle:0001,reset:0000,rdevent2:1110,rdevent:0111,rdevent1:1101,waitevent:0110,rdevent8:1100,rdevent7:1011,rdubunchlo:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "rdubunchhi:0100,rdwdcount:0011,rdevent6:1010,rdeventbuff:0010,rdevent4:1000,rdevent5:1001,rdevent3:1111,idle:0001,reset:0000,rdevent2:1110,rdevent:0111,rdevent1:1101,waitevent:0110,rdevent8:1100,rdevent7:1011,rdubunchlo:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "rdubunchhi:0100,rdwdcount:0011,rdevent6:1010,rdeventbuff:0010,rdevent4:1000,rdevent5:1001,rdevent3:1111,idle:0001,reset:0000,rdevent2:1110,rdevent:0111,rdevent1:1101,waitevent:0110,rdevent8:1100,rdevent7:1011,rdubunchlo:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[3]\ : label is "rdubunchhi:0100,rdwdcount:0011,rdevent6:1010,rdeventbuff:0010,rdevent4:1000,rdevent5:1001,rdevent3:1111,idle:0001,reset:0000,rdevent2:1110,rdevent:0111,rdevent1:1101,waitevent:0110,rdevent8:1100,rdevent7:1011,rdubunchlo:0101";
  attribute syn_black_box of OneDDRPage : label is "TRUE";
  attribute x_core_info of OneDDRPage : label is "fifo_generator_v13_2_8,Vivado 2023.1";
  attribute SOFT_HLUTNM of \PageWdCnt[0]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \PageWdCnt[1]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \PageWdCnt[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \PageWdCnt[3]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \RdPageWdCnt[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \RdPageWdCnt[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \RdPageWdCnt[3]_i_3\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_1\ : label is 11;
  attribute syn_black_box of \generateILA0.ila\ : label is "TRUE";
  attribute x_core_info of \generateILA0.ila\ : label is "ila,Vivado 2023.1";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of gtOp_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \gtOp_carry__0\ : label is 11;
  attribute SOFT_HLUTNM of \led_4bits_tri_o[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \led_4bits_tri_o[1]_i_1\ : label is "soft_lutpair19";
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__5\ : label is 35;
  attribute SOFT_HLUTNM of \reset_count[0]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \reset_count[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \reset_count[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \reset_count[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \reset_count[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \reset_count[6]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \reset_count[7]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \reset_count[7]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rgb_led_tri_o[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of rst_transferDDR_inv_i_1 : label is "soft_lutpair20";
  attribute inverted : string;
  attribute inverted of rst_transferDDR_reg_inv : label is "yes";
begin
  led_4bits_tri_o(1 downto 0) <= \^led_4bits_tri_o\(1 downto 0);
  rgb_led_tri_o(0) <= \^rgb_led_tri_o\(0);
\DDR3_addr[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \uBunch_reg_n_0_[0]\,
      I1 => setAddr_reg_n_0,
      I2 => \plusOp_carry__0_n_4\,
      I3 => DDR3_wrt_rdy,
      I4 => DDR3_addr(10),
      O => in9(10)
    );
\DDR3_addr[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \uBunch_reg_n_0_[1]\,
      I1 => setAddr_reg_n_0,
      I2 => \plusOp_carry__1_n_7\,
      I3 => DDR3_wrt_rdy,
      I4 => DDR3_addr(11),
      O => in9(11)
    );
\DDR3_addr[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \uBunch_reg_n_0_[2]\,
      I1 => setAddr_reg_n_0,
      I2 => \plusOp_carry__1_n_6\,
      I3 => DDR3_wrt_rdy,
      I4 => DDR3_addr(12),
      O => in9(12)
    );
\DDR3_addr[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \uBunch_reg_n_0_[3]\,
      I1 => setAddr_reg_n_0,
      I2 => \plusOp_carry__1_n_5\,
      I3 => DDR3_wrt_rdy,
      I4 => DDR3_addr(13),
      O => in9(13)
    );
\DDR3_addr[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \uBunch_reg_n_0_[4]\,
      I1 => setAddr_reg_n_0,
      I2 => \plusOp_carry__1_n_4\,
      I3 => DDR3_wrt_rdy,
      I4 => DDR3_addr(14),
      O => in9(14)
    );
\DDR3_addr[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \uBunch_reg_n_0_[5]\,
      I1 => setAddr_reg_n_0,
      I2 => \plusOp_carry__2_n_7\,
      I3 => DDR3_wrt_rdy,
      I4 => DDR3_addr(15),
      O => in9(15)
    );
\DDR3_addr[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \uBunch_reg_n_0_[6]\,
      I1 => setAddr_reg_n_0,
      I2 => \plusOp_carry__2_n_6\,
      I3 => DDR3_wrt_rdy,
      I4 => DDR3_addr(16),
      O => in9(16)
    );
\DDR3_addr[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \uBunch_reg_n_0_[7]\,
      I1 => setAddr_reg_n_0,
      I2 => \plusOp_carry__2_n_5\,
      I3 => DDR3_wrt_rdy,
      I4 => DDR3_addr(17),
      O => in9(17)
    );
\DDR3_addr[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \uBunch_reg_n_0_[8]\,
      I1 => setAddr_reg_n_0,
      I2 => \plusOp_carry__2_n_4\,
      I3 => DDR3_wrt_rdy,
      I4 => DDR3_addr(18),
      O => in9(18)
    );
\DDR3_addr[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \uBunch_reg_n_0_[9]\,
      I1 => setAddr_reg_n_0,
      I2 => \plusOp_carry__3_n_7\,
      I3 => DDR3_wrt_rdy,
      I4 => DDR3_addr(19),
      O => in9(19)
    );
\DDR3_addr[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \uBunch_reg_n_0_[10]\,
      I1 => setAddr_reg_n_0,
      I2 => \plusOp_carry__3_n_6\,
      I3 => DDR3_wrt_rdy,
      I4 => DDR3_addr(20),
      O => in9(20)
    );
\DDR3_addr[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \uBunch_reg_n_0_[11]\,
      I1 => setAddr_reg_n_0,
      I2 => \plusOp_carry__3_n_5\,
      I3 => DDR3_wrt_rdy,
      I4 => DDR3_addr(21),
      O => in9(21)
    );
\DDR3_addr[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \uBunch_reg_n_0_[12]\,
      I1 => setAddr_reg_n_0,
      I2 => \plusOp_carry__3_n_4\,
      I3 => DDR3_wrt_rdy,
      I4 => DDR3_addr(22),
      O => in9(22)
    );
\DDR3_addr[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \uBunch_reg_n_0_[13]\,
      I1 => setAddr_reg_n_0,
      I2 => \plusOp_carry__4_n_7\,
      I3 => DDR3_wrt_rdy,
      I4 => DDR3_addr(23),
      O => in9(23)
    );
\DDR3_addr[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \uBunch_reg_n_0_[14]\,
      I1 => setAddr_reg_n_0,
      I2 => \plusOp_carry__4_n_6\,
      I3 => DDR3_wrt_rdy,
      I4 => DDR3_addr(24),
      O => in9(24)
    );
\DDR3_addr[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => setAddr_reg_n_0,
      I1 => \plusOp_carry__4_n_5\,
      I2 => DDR3_wrt_rdy,
      I3 => DDR3_addr(25),
      O => in9(25)
    );
\DDR3_addr[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => setAddr_reg_n_0,
      I1 => \plusOp_carry__4_n_4\,
      I2 => DDR3_wrt_rdy,
      I3 => DDR3_addr(26),
      O => in9(26)
    );
\DDR3_addr[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => setAddr_reg_n_0,
      I1 => \plusOp_carry__5_n_7\,
      I2 => DDR3_wrt_rdy,
      I3 => DDR3_addr(27),
      O => in9(27)
    );
\DDR3_addr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => setAddr_reg_n_0,
      I1 => plusOp_carry_n_7,
      I2 => DDR3_wrt_rdy,
      I3 => DDR3_addr(3),
      O => in9(3)
    );
\DDR3_addr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => setAddr_reg_n_0,
      I1 => plusOp_carry_n_6,
      I2 => DDR3_wrt_rdy,
      I3 => DDR3_addr(4),
      O => in9(4)
    );
\DDR3_addr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => setAddr_reg_n_0,
      I1 => plusOp_carry_n_5,
      I2 => DDR3_wrt_rdy,
      I3 => DDR3_addr(5),
      O => in9(5)
    );
\DDR3_addr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => setAddr_reg_n_0,
      I1 => plusOp_carry_n_4,
      I2 => DDR3_wrt_rdy,
      I3 => DDR3_addr(6),
      O => in9(6)
    );
\DDR3_addr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => setAddr_reg_n_0,
      I1 => \plusOp_carry__0_n_7\,
      I2 => DDR3_wrt_rdy,
      I3 => DDR3_addr(7),
      O => in9(7)
    );
\DDR3_addr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => setAddr_reg_n_0,
      I1 => \plusOp_carry__0_n_6\,
      I2 => DDR3_wrt_rdy,
      I3 => DDR3_addr(8),
      O => in9(8)
    );
\DDR3_addr[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => setAddr_reg_n_0,
      I1 => \plusOp_carry__0_n_5\,
      I2 => DDR3_wrt_rdy,
      I3 => DDR3_addr(9),
      O => in9(9)
    );
\DDR3_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => DDR3_addr(0),
      Q => DDR3_addr(0),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(10),
      Q => DDR3_addr(10),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(11),
      Q => DDR3_addr(11),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(12),
      Q => DDR3_addr(12),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(13),
      Q => DDR3_addr(13),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(14),
      Q => DDR3_addr(14),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(15),
      Q => DDR3_addr(15),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(16),
      Q => DDR3_addr(16),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(17),
      Q => DDR3_addr(17),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(18),
      Q => DDR3_addr(18),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(19),
      Q => DDR3_addr(19),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => DDR3_addr(1),
      Q => DDR3_addr(1),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(20),
      Q => DDR3_addr(20),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(21),
      Q => DDR3_addr(21),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(22),
      Q => DDR3_addr(22),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(23),
      Q => DDR3_addr(23),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(24),
      Q => DDR3_addr(24),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(25),
      Q => DDR3_addr(25),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(26),
      Q => DDR3_addr(26),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(27),
      Q => DDR3_addr(27),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => DDR3_addr(2),
      Q => DDR3_addr(2),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(3),
      Q => DDR3_addr(3),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(4),
      Q => DDR3_addr(4),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(5),
      Q => DDR3_addr(5),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(6),
      Q => DDR3_addr(6),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(7),
      Q => DDR3_addr(7),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(8),
      Q => DDR3_addr(8),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in9(9),
      Q => DDR3_addr(9),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_cmd[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DDR3_cmd(0),
      I1 => DDR3_wrt_rdy,
      O => \DDR3_cmd[0]_i_1_n_0\
    );
\DDR3_cmd[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DDR3_cmd(1),
      I1 => DDR3_wrt_rdy,
      O => \DDR3_cmd[1]_i_1_n_0\
    );
\DDR3_cmd[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => DDR3_wrt_data_reg0,
      I1 => setAddr,
      I2 => \FSM_onehot_prev_state_reg_n_0_[4]\,
      O => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_cmd[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => setAddr,
      I1 => DDR3_wrt_data_reg0,
      I2 => \FSM_onehot_prev_state_reg_n_0_[4]\,
      O => \DDR3_cmd[2]_i_2_n_0\
    );
\DDR3_cmd[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DDR3_cmd(2),
      I1 => DDR3_wrt_rdy,
      O => \DDR3_cmd[2]_i_3_n_0\
    );
\DDR3_cmd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => \DDR3_cmd[0]_i_1_n_0\,
      Q => DDR3_cmd(0),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_cmd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => \DDR3_cmd[1]_i_1_n_0\,
      Q => DDR3_cmd(1),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_cmd_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => \DDR3_cmd[2]_i_3_n_0\,
      Q => DDR3_cmd(2),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
DDR3_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DDR3_wrt_rdy,
      I1 => DDR3_en,
      O => DDR3_en_i_1_n_0
    );
DDR3_en_reg: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => DDR3_en_i_1_n_0,
      Q => DDR3_en,
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_wrt_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(0),
      I1 => DDR3_wrt_data(0),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(0)
    );
\DDR3_wrt_data[100]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(100),
      I1 => DDR3_wrt_data(100),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(100)
    );
\DDR3_wrt_data[101]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(101),
      I1 => DDR3_wrt_data(101),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(101)
    );
\DDR3_wrt_data[102]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(102),
      I1 => DDR3_wrt_data(102),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(102)
    );
\DDR3_wrt_data[103]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(103),
      I1 => DDR3_wrt_data(103),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(103)
    );
\DDR3_wrt_data[104]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(104),
      I1 => DDR3_wrt_data(104),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(104)
    );
\DDR3_wrt_data[105]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(105),
      I1 => DDR3_wrt_data(105),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(105)
    );
\DDR3_wrt_data[106]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(106),
      I1 => DDR3_wrt_data(106),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(106)
    );
\DDR3_wrt_data[107]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(107),
      I1 => DDR3_wrt_data(107),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(107)
    );
\DDR3_wrt_data[108]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(108),
      I1 => DDR3_wrt_data(108),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(108)
    );
\DDR3_wrt_data[109]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(109),
      I1 => DDR3_wrt_data(109),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(109)
    );
\DDR3_wrt_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(10),
      I1 => DDR3_wrt_data(10),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(10)
    );
\DDR3_wrt_data[110]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(110),
      I1 => DDR3_wrt_data(110),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(110)
    );
\DDR3_wrt_data[111]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(111),
      I1 => DDR3_wrt_data(111),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(111)
    );
\DDR3_wrt_data[112]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(112),
      I1 => DDR3_wrt_data(112),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(112)
    );
\DDR3_wrt_data[113]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(113),
      I1 => DDR3_wrt_data(113),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(113)
    );
\DDR3_wrt_data[114]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(114),
      I1 => DDR3_wrt_data(114),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(114)
    );
\DDR3_wrt_data[115]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(115),
      I1 => DDR3_wrt_data(115),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(115)
    );
\DDR3_wrt_data[116]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(116),
      I1 => DDR3_wrt_data(116),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(116)
    );
\DDR3_wrt_data[117]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(117),
      I1 => DDR3_wrt_data(117),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(117)
    );
\DDR3_wrt_data[118]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(118),
      I1 => DDR3_wrt_data(118),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(118)
    );
\DDR3_wrt_data[119]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(119),
      I1 => DDR3_wrt_data(119),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(119)
    );
\DDR3_wrt_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(11),
      I1 => DDR3_wrt_data(11),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(11)
    );
\DDR3_wrt_data[120]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(120),
      I1 => DDR3_wrt_data(120),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(120)
    );
\DDR3_wrt_data[121]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(121),
      I1 => DDR3_wrt_data(121),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(121)
    );
\DDR3_wrt_data[122]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(122),
      I1 => DDR3_wrt_data(122),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(122)
    );
\DDR3_wrt_data[123]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(123),
      I1 => DDR3_wrt_data(123),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(123)
    );
\DDR3_wrt_data[124]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(124),
      I1 => DDR3_wrt_data(124),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(124)
    );
\DDR3_wrt_data[125]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(125),
      I1 => DDR3_wrt_data(125),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(125)
    );
\DDR3_wrt_data[126]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(126),
      I1 => DDR3_wrt_data(126),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(126)
    );
\DDR3_wrt_data[127]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(127),
      I1 => DDR3_wrt_data(127),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(127)
    );
\DDR3_wrt_data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(12),
      I1 => DDR3_wrt_data(12),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(12)
    );
\DDR3_wrt_data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(13),
      I1 => DDR3_wrt_data(13),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(13)
    );
\DDR3_wrt_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(14),
      I1 => DDR3_wrt_data(14),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(14)
    );
\DDR3_wrt_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(15),
      I1 => DDR3_wrt_data(15),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(15)
    );
\DDR3_wrt_data[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(16),
      I1 => DDR3_wrt_data(16),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(16)
    );
\DDR3_wrt_data[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(17),
      I1 => DDR3_wrt_data(17),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(17)
    );
\DDR3_wrt_data[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(18),
      I1 => DDR3_wrt_data(18),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(18)
    );
\DDR3_wrt_data[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(19),
      I1 => DDR3_wrt_data(19),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(19)
    );
\DDR3_wrt_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(1),
      I1 => DDR3_wrt_data(1),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(1)
    );
\DDR3_wrt_data[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(20),
      I1 => DDR3_wrt_data(20),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(20)
    );
\DDR3_wrt_data[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(21),
      I1 => DDR3_wrt_data(21),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(21)
    );
\DDR3_wrt_data[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(22),
      I1 => DDR3_wrt_data(22),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(22)
    );
\DDR3_wrt_data[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(23),
      I1 => DDR3_wrt_data(23),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(23)
    );
\DDR3_wrt_data[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(24),
      I1 => DDR3_wrt_data(24),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(24)
    );
\DDR3_wrt_data[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(25),
      I1 => DDR3_wrt_data(25),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(25)
    );
\DDR3_wrt_data[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(26),
      I1 => DDR3_wrt_data(26),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(26)
    );
\DDR3_wrt_data[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(27),
      I1 => DDR3_wrt_data(27),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(27)
    );
\DDR3_wrt_data[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(28),
      I1 => DDR3_wrt_data(28),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(28)
    );
\DDR3_wrt_data[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(29),
      I1 => DDR3_wrt_data(29),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(29)
    );
\DDR3_wrt_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(2),
      I1 => DDR3_wrt_data(2),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(2)
    );
\DDR3_wrt_data[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(30),
      I1 => DDR3_wrt_data(30),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(30)
    );
\DDR3_wrt_data[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(31),
      I1 => DDR3_wrt_data(31),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(31)
    );
\DDR3_wrt_data[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(32),
      I1 => DDR3_wrt_data(32),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(32)
    );
\DDR3_wrt_data[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(33),
      I1 => DDR3_wrt_data(33),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(33)
    );
\DDR3_wrt_data[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(34),
      I1 => DDR3_wrt_data(34),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(34)
    );
\DDR3_wrt_data[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(35),
      I1 => DDR3_wrt_data(35),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(35)
    );
\DDR3_wrt_data[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(36),
      I1 => DDR3_wrt_data(36),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(36)
    );
\DDR3_wrt_data[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(37),
      I1 => DDR3_wrt_data(37),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(37)
    );
\DDR3_wrt_data[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(38),
      I1 => DDR3_wrt_data(38),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(38)
    );
\DDR3_wrt_data[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(39),
      I1 => DDR3_wrt_data(39),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(39)
    );
\DDR3_wrt_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(3),
      I1 => DDR3_wrt_data(3),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(3)
    );
\DDR3_wrt_data[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(40),
      I1 => DDR3_wrt_data(40),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(40)
    );
\DDR3_wrt_data[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(41),
      I1 => DDR3_wrt_data(41),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(41)
    );
\DDR3_wrt_data[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(42),
      I1 => DDR3_wrt_data(42),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(42)
    );
\DDR3_wrt_data[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(43),
      I1 => DDR3_wrt_data(43),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(43)
    );
\DDR3_wrt_data[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(44),
      I1 => DDR3_wrt_data(44),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(44)
    );
\DDR3_wrt_data[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(45),
      I1 => DDR3_wrt_data(45),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(45)
    );
\DDR3_wrt_data[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(46),
      I1 => DDR3_wrt_data(46),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(46)
    );
\DDR3_wrt_data[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(47),
      I1 => DDR3_wrt_data(47),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(47)
    );
\DDR3_wrt_data[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(48),
      I1 => DDR3_wrt_data(48),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(48)
    );
\DDR3_wrt_data[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(49),
      I1 => DDR3_wrt_data(49),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(49)
    );
\DDR3_wrt_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(4),
      I1 => DDR3_wrt_data(4),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(4)
    );
\DDR3_wrt_data[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(50),
      I1 => DDR3_wrt_data(50),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(50)
    );
\DDR3_wrt_data[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(51),
      I1 => DDR3_wrt_data(51),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(51)
    );
\DDR3_wrt_data[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(52),
      I1 => DDR3_wrt_data(52),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(52)
    );
\DDR3_wrt_data[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(53),
      I1 => DDR3_wrt_data(53),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(53)
    );
\DDR3_wrt_data[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(54),
      I1 => DDR3_wrt_data(54),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(54)
    );
\DDR3_wrt_data[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(55),
      I1 => DDR3_wrt_data(55),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(55)
    );
\DDR3_wrt_data[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(56),
      I1 => DDR3_wrt_data(56),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(56)
    );
\DDR3_wrt_data[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(57),
      I1 => DDR3_wrt_data(57),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(57)
    );
\DDR3_wrt_data[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(58),
      I1 => DDR3_wrt_data(58),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(58)
    );
\DDR3_wrt_data[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(59),
      I1 => DDR3_wrt_data(59),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(59)
    );
\DDR3_wrt_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(5),
      I1 => DDR3_wrt_data(5),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(5)
    );
\DDR3_wrt_data[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(60),
      I1 => DDR3_wrt_data(60),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(60)
    );
\DDR3_wrt_data[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(61),
      I1 => DDR3_wrt_data(61),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(61)
    );
\DDR3_wrt_data[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(62),
      I1 => DDR3_wrt_data(62),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(62)
    );
\DDR3_wrt_data[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(63),
      I1 => DDR3_wrt_data(63),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(63)
    );
\DDR3_wrt_data[64]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(64),
      I1 => DDR3_wrt_data(64),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(64)
    );
\DDR3_wrt_data[65]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(65),
      I1 => DDR3_wrt_data(65),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(65)
    );
\DDR3_wrt_data[66]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(66),
      I1 => DDR3_wrt_data(66),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(66)
    );
\DDR3_wrt_data[67]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(67),
      I1 => DDR3_wrt_data(67),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(67)
    );
\DDR3_wrt_data[68]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(68),
      I1 => DDR3_wrt_data(68),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(68)
    );
\DDR3_wrt_data[69]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(69),
      I1 => DDR3_wrt_data(69),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(69)
    );
\DDR3_wrt_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(6),
      I1 => DDR3_wrt_data(6),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(6)
    );
\DDR3_wrt_data[70]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(70),
      I1 => DDR3_wrt_data(70),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(70)
    );
\DDR3_wrt_data[71]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(71),
      I1 => DDR3_wrt_data(71),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(71)
    );
\DDR3_wrt_data[72]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(72),
      I1 => DDR3_wrt_data(72),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(72)
    );
\DDR3_wrt_data[73]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(73),
      I1 => DDR3_wrt_data(73),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(73)
    );
\DDR3_wrt_data[74]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(74),
      I1 => DDR3_wrt_data(74),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(74)
    );
\DDR3_wrt_data[75]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(75),
      I1 => DDR3_wrt_data(75),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(75)
    );
\DDR3_wrt_data[76]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(76),
      I1 => DDR3_wrt_data(76),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(76)
    );
\DDR3_wrt_data[77]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(77),
      I1 => DDR3_wrt_data(77),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(77)
    );
\DDR3_wrt_data[78]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(78),
      I1 => DDR3_wrt_data(78),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(78)
    );
\DDR3_wrt_data[79]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(79),
      I1 => DDR3_wrt_data(79),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(79)
    );
\DDR3_wrt_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(7),
      I1 => DDR3_wrt_data(7),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(7)
    );
\DDR3_wrt_data[80]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(80),
      I1 => DDR3_wrt_data(80),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(80)
    );
\DDR3_wrt_data[81]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(81),
      I1 => DDR3_wrt_data(81),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(81)
    );
\DDR3_wrt_data[82]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(82),
      I1 => DDR3_wrt_data(82),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(82)
    );
\DDR3_wrt_data[83]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(83),
      I1 => DDR3_wrt_data(83),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(83)
    );
\DDR3_wrt_data[84]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(84),
      I1 => DDR3_wrt_data(84),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(84)
    );
\DDR3_wrt_data[85]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(85),
      I1 => DDR3_wrt_data(85),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(85)
    );
\DDR3_wrt_data[86]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(86),
      I1 => DDR3_wrt_data(86),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(86)
    );
\DDR3_wrt_data[87]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(87),
      I1 => DDR3_wrt_data(87),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(87)
    );
\DDR3_wrt_data[88]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(88),
      I1 => DDR3_wrt_data(88),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(88)
    );
\DDR3_wrt_data[89]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(89),
      I1 => DDR3_wrt_data(89),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(89)
    );
\DDR3_wrt_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(8),
      I1 => DDR3_wrt_data(8),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(8)
    );
\DDR3_wrt_data[90]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(90),
      I1 => DDR3_wrt_data(90),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(90)
    );
\DDR3_wrt_data[91]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(91),
      I1 => DDR3_wrt_data(91),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(91)
    );
\DDR3_wrt_data[92]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(92),
      I1 => DDR3_wrt_data(92),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(92)
    );
\DDR3_wrt_data[93]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(93),
      I1 => DDR3_wrt_data(93),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(93)
    );
\DDR3_wrt_data[94]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(94),
      I1 => DDR3_wrt_data(94),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(94)
    );
\DDR3_wrt_data[95]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(95),
      I1 => DDR3_wrt_data(95),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(95)
    );
\DDR3_wrt_data[96]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(96),
      I1 => DDR3_wrt_data(96),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(96)
    );
\DDR3_wrt_data[97]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(97),
      I1 => DDR3_wrt_data(97),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(97)
    );
\DDR3_wrt_data[98]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(98),
      I1 => DDR3_wrt_data(98),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(98)
    );
\DDR3_wrt_data[99]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(99),
      I1 => DDR3_wrt_data(99),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(99)
    );
\DDR3_wrt_data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DDRPage_dout(9),
      I1 => DDR3_wrt_data(9),
      I2 => DDR3_wrt_rdy,
      O => \p_0_in__0\(9)
    );
\DDR3_wrt_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(0),
      Q => DDR3_wrt_data(0),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(100),
      Q => DDR3_wrt_data(100),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(101),
      Q => DDR3_wrt_data(101),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(102),
      Q => DDR3_wrt_data(102),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(103),
      Q => DDR3_wrt_data(103),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(104),
      Q => DDR3_wrt_data(104),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(105),
      Q => DDR3_wrt_data(105),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(106),
      Q => DDR3_wrt_data(106),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(107),
      Q => DDR3_wrt_data(107),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(108),
      Q => DDR3_wrt_data(108),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(109),
      Q => DDR3_wrt_data(109),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(10),
      Q => DDR3_wrt_data(10),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(110),
      Q => DDR3_wrt_data(110),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(111),
      Q => DDR3_wrt_data(111),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(112),
      Q => DDR3_wrt_data(112),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(113),
      Q => DDR3_wrt_data(113),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(114),
      Q => DDR3_wrt_data(114),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(115),
      Q => DDR3_wrt_data(115),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(116),
      Q => DDR3_wrt_data(116),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(117),
      Q => DDR3_wrt_data(117),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(118),
      Q => DDR3_wrt_data(118),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(119),
      Q => DDR3_wrt_data(119),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(11),
      Q => DDR3_wrt_data(11),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(120),
      Q => DDR3_wrt_data(120),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(121),
      Q => DDR3_wrt_data(121),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(122),
      Q => DDR3_wrt_data(122),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(123),
      Q => DDR3_wrt_data(123),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(124),
      Q => DDR3_wrt_data(124),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(125),
      Q => DDR3_wrt_data(125),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(126),
      Q => DDR3_wrt_data(126),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(127),
      Q => DDR3_wrt_data(127),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(12),
      Q => DDR3_wrt_data(12),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(13),
      Q => DDR3_wrt_data(13),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(14),
      Q => DDR3_wrt_data(14),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(15),
      Q => DDR3_wrt_data(15),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(16),
      Q => DDR3_wrt_data(16),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(17),
      Q => DDR3_wrt_data(17),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(18),
      Q => DDR3_wrt_data(18),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(19),
      Q => DDR3_wrt_data(19),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(1),
      Q => DDR3_wrt_data(1),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(20),
      Q => DDR3_wrt_data(20),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(21),
      Q => DDR3_wrt_data(21),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(22),
      Q => DDR3_wrt_data(22),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(23),
      Q => DDR3_wrt_data(23),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(24),
      Q => DDR3_wrt_data(24),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(25),
      Q => DDR3_wrt_data(25),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(26),
      Q => DDR3_wrt_data(26),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(27),
      Q => DDR3_wrt_data(27),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(28),
      Q => DDR3_wrt_data(28),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(29),
      Q => DDR3_wrt_data(29),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(2),
      Q => DDR3_wrt_data(2),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(30),
      Q => DDR3_wrt_data(30),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(31),
      Q => DDR3_wrt_data(31),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(32),
      Q => DDR3_wrt_data(32),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(33),
      Q => DDR3_wrt_data(33),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(34),
      Q => DDR3_wrt_data(34),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(35),
      Q => DDR3_wrt_data(35),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(36),
      Q => DDR3_wrt_data(36),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(37),
      Q => DDR3_wrt_data(37),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(38),
      Q => DDR3_wrt_data(38),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(39),
      Q => DDR3_wrt_data(39),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(3),
      Q => DDR3_wrt_data(3),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(40),
      Q => DDR3_wrt_data(40),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(41),
      Q => DDR3_wrt_data(41),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(42),
      Q => DDR3_wrt_data(42),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(43),
      Q => DDR3_wrt_data(43),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(44),
      Q => DDR3_wrt_data(44),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(45),
      Q => DDR3_wrt_data(45),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(46),
      Q => DDR3_wrt_data(46),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(47),
      Q => DDR3_wrt_data(47),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(48),
      Q => DDR3_wrt_data(48),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(49),
      Q => DDR3_wrt_data(49),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(4),
      Q => DDR3_wrt_data(4),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(50),
      Q => DDR3_wrt_data(50),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(51),
      Q => DDR3_wrt_data(51),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(52),
      Q => DDR3_wrt_data(52),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(53),
      Q => DDR3_wrt_data(53),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(54),
      Q => DDR3_wrt_data(54),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(55),
      Q => DDR3_wrt_data(55),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(56),
      Q => DDR3_wrt_data(56),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(57),
      Q => DDR3_wrt_data(57),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(58),
      Q => DDR3_wrt_data(58),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(59),
      Q => DDR3_wrt_data(59),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(5),
      Q => DDR3_wrt_data(5),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(60),
      Q => DDR3_wrt_data(60),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(61),
      Q => DDR3_wrt_data(61),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(62),
      Q => DDR3_wrt_data(62),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(63),
      Q => DDR3_wrt_data(63),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(64),
      Q => DDR3_wrt_data(64),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(65),
      Q => DDR3_wrt_data(65),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(66),
      Q => DDR3_wrt_data(66),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(67),
      Q => DDR3_wrt_data(67),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(68),
      Q => DDR3_wrt_data(68),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(69),
      Q => DDR3_wrt_data(69),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(6),
      Q => DDR3_wrt_data(6),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(70),
      Q => DDR3_wrt_data(70),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(71),
      Q => DDR3_wrt_data(71),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(72),
      Q => DDR3_wrt_data(72),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(73),
      Q => DDR3_wrt_data(73),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(74),
      Q => DDR3_wrt_data(74),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(75),
      Q => DDR3_wrt_data(75),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(76),
      Q => DDR3_wrt_data(76),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(77),
      Q => DDR3_wrt_data(77),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(78),
      Q => DDR3_wrt_data(78),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(79),
      Q => DDR3_wrt_data(79),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(7),
      Q => DDR3_wrt_data(7),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(80),
      Q => DDR3_wrt_data(80),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(81),
      Q => DDR3_wrt_data(81),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(82),
      Q => DDR3_wrt_data(82),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(83),
      Q => DDR3_wrt_data(83),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(84),
      Q => DDR3_wrt_data(84),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(85),
      Q => DDR3_wrt_data(85),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(86),
      Q => DDR3_wrt_data(86),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(87),
      Q => DDR3_wrt_data(87),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(88),
      Q => DDR3_wrt_data(88),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(89),
      Q => DDR3_wrt_data(89),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(8),
      Q => DDR3_wrt_data(8),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(90),
      Q => DDR3_wrt_data(90),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(91),
      Q => DDR3_wrt_data(91),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(92),
      Q => DDR3_wrt_data(92),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(93),
      Q => DDR3_wrt_data(93),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(94),
      Q => DDR3_wrt_data(94),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(95),
      Q => DDR3_wrt_data(95),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(96),
      Q => DDR3_wrt_data(96),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(97),
      Q => DDR3_wrt_data(97),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(98),
      Q => DDR3_wrt_data(98),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(99),
      Q => DDR3_wrt_data(99),
      R => DDR3_wrt_data_reg0
    );
\DDR3_wrt_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \FSM_onehot_prev_state_reg_n_0_[4]\,
      D => \p_0_in__0\(9),
      Q => DDR3_wrt_data(9),
      R => DDR3_wrt_data_reg0
    );
DDR3_wrt_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DDR3_wrt_rdy,
      I1 => DDR3_wrt_en,
      O => DDR3_wrt_en_i_1_n_0
    );
DDR3_wrt_en_reg: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => DDR3_wrt_en_i_1_n_0,
      Q => DDR3_wrt_en,
      R => \DDR3_cmd[2]_i_1_n_0\
    );
DDR3_wrt_end_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DDR3_wrt_rdy,
      I1 => DDR3_wrt_end,
      O => DDR3_wrt_end_i_1_n_0
    );
DDR3_wrt_end_reg: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => DDR3_wrt_end_i_1_n_0,
      Q => DDR3_wrt_end,
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_wrt_mask[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DDR3_wrt_mask(0),
      I1 => DDR3_wrt_rdy,
      O => in12(0)
    );
\DDR3_wrt_mask[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DDR3_wrt_mask(10),
      I1 => DDR3_wrt_rdy,
      O => in12(10)
    );
\DDR3_wrt_mask[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DDR3_wrt_mask(11),
      I1 => DDR3_wrt_rdy,
      O => in12(11)
    );
\DDR3_wrt_mask[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DDR3_wrt_mask(12),
      I1 => DDR3_wrt_rdy,
      O => in12(12)
    );
\DDR3_wrt_mask[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DDR3_wrt_mask(13),
      I1 => DDR3_wrt_rdy,
      O => in12(13)
    );
\DDR3_wrt_mask[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DDR3_wrt_mask(14),
      I1 => DDR3_wrt_rdy,
      O => in12(14)
    );
\DDR3_wrt_mask[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DDR3_wrt_mask(15),
      I1 => DDR3_wrt_rdy,
      O => in12(15)
    );
\DDR3_wrt_mask[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DDR3_wrt_mask(1),
      I1 => DDR3_wrt_rdy,
      O => in12(1)
    );
\DDR3_wrt_mask[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DDR3_wrt_mask(2),
      I1 => DDR3_wrt_rdy,
      O => in12(2)
    );
\DDR3_wrt_mask[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DDR3_wrt_mask(3),
      I1 => DDR3_wrt_rdy,
      O => in12(3)
    );
\DDR3_wrt_mask[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DDR3_wrt_mask(4),
      I1 => DDR3_wrt_rdy,
      O => in12(4)
    );
\DDR3_wrt_mask[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DDR3_wrt_mask(5),
      I1 => DDR3_wrt_rdy,
      O => in12(5)
    );
\DDR3_wrt_mask[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DDR3_wrt_mask(6),
      I1 => DDR3_wrt_rdy,
      O => in12(6)
    );
\DDR3_wrt_mask[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DDR3_wrt_mask(7),
      I1 => DDR3_wrt_rdy,
      O => in12(7)
    );
\DDR3_wrt_mask[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DDR3_wrt_mask(8),
      I1 => DDR3_wrt_rdy,
      O => in12(8)
    );
\DDR3_wrt_mask[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DDR3_wrt_mask(9),
      I1 => DDR3_wrt_rdy,
      O => in12(9)
    );
\DDR3_wrt_mask_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in12(0),
      Q => DDR3_wrt_mask(0),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_wrt_mask_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in12(10),
      Q => DDR3_wrt_mask(10),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_wrt_mask_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in12(11),
      Q => DDR3_wrt_mask(11),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_wrt_mask_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in12(12),
      Q => DDR3_wrt_mask(12),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_wrt_mask_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in12(13),
      Q => DDR3_wrt_mask(13),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_wrt_mask_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in12(14),
      Q => DDR3_wrt_mask(14),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_wrt_mask_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in12(15),
      Q => DDR3_wrt_mask(15),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_wrt_mask_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in12(1),
      Q => DDR3_wrt_mask(1),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_wrt_mask_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in12(2),
      Q => DDR3_wrt_mask(2),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_wrt_mask_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in12(3),
      Q => DDR3_wrt_mask(3),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_wrt_mask_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in12(4),
      Q => DDR3_wrt_mask(4),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_wrt_mask_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in12(5),
      Q => DDR3_wrt_mask(5),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_wrt_mask_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in12(6),
      Q => DDR3_wrt_mask(6),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_wrt_mask_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in12(7),
      Q => DDR3_wrt_mask(7),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_wrt_mask_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in12(8),
      Q => DDR3_wrt_mask(8),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDR3_wrt_mask_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => \DDR3_cmd[2]_i_2_n_0\,
      D => in12(9),
      Q => DDR3_wrt_mask(9),
      R => \DDR3_cmd[2]_i_1_n_0\
    );
\DDRPage_din[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[0]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[0]_i_1_n_0\
    );
\DDRPage_din[100]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[100]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[100]_i_1_n_0\
    );
\DDRPage_din[101]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[101]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[101]_i_1_n_0\
    );
\DDRPage_din[102]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[102]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[102]_i_1_n_0\
    );
\DDRPage_din[103]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[103]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[103]_i_1_n_0\
    );
\DDRPage_din[104]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[104]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[104]_i_1_n_0\
    );
\DDRPage_din[105]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[105]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[105]_i_1_n_0\
    );
\DDRPage_din[106]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[106]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[106]_i_1_n_0\
    );
\DDRPage_din[107]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[107]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[107]_i_1_n_0\
    );
\DDRPage_din[108]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[108]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[108]_i_1_n_0\
    );
\DDRPage_din[109]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[109]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[109]_i_1_n_0\
    );
\DDRPage_din[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[10]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[10]_i_1_n_0\
    );
\DDRPage_din[110]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[110]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[110]_i_1_n_0\
    );
\DDRPage_din[111]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[111]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[111]_i_1_n_0\
    );
\DDRPage_din[112]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[112]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[112]_i_1_n_0\
    );
\DDRPage_din[113]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[113]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[113]_i_1_n_0\
    );
\DDRPage_din[114]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[114]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[114]_i_1_n_0\
    );
\DDRPage_din[115]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[115]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[115]_i_1_n_0\
    );
\DDRPage_din[116]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[116]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[116]_i_1_n_0\
    );
\DDRPage_din[117]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[117]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[117]_i_1_n_0\
    );
\DDRPage_din[118]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[118]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[118]_i_1_n_0\
    );
\DDRPage_din[119]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[119]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[119]_i_1_n_0\
    );
\DDRPage_din[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[11]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[11]_i_1_n_0\
    );
\DDRPage_din[120]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[120]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[120]_i_1_n_0\
    );
\DDRPage_din[121]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[121]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[121]_i_1_n_0\
    );
\DDRPage_din[122]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[122]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[122]_i_1_n_0\
    );
\DDRPage_din[123]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[123]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[123]_i_1_n_0\
    );
\DDRPage_din[124]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[124]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[124]_i_1_n_0\
    );
\DDRPage_din[125]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[125]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[125]_i_1_n_0\
    );
\DDRPage_din[126]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[126]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[126]_i_1_n_0\
    );
\DDRPage_din[127]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_state(3),
      O => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din[127]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[127]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[127]_i_2_n_0\
    );
\DDRPage_din[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[12]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[12]_i_1_n_0\
    );
\DDRPage_din[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[13]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[13]_i_1_n_0\
    );
\DDRPage_din[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[14]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[14]_i_1_n_0\
    );
\DDRPage_din[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[15]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[15]_i_1_n_0\
    );
\DDRPage_din[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[16]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[16]_i_1_n_0\
    );
\DDRPage_din[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[17]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[17]_i_1_n_0\
    );
\DDRPage_din[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[18]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[18]_i_1_n_0\
    );
\DDRPage_din[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[19]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[19]_i_1_n_0\
    );
\DDRPage_din[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[1]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[1]_i_1_n_0\
    );
\DDRPage_din[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[20]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[20]_i_1_n_0\
    );
\DDRPage_din[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[21]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[21]_i_1_n_0\
    );
\DDRPage_din[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[22]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[22]_i_1_n_0\
    );
\DDRPage_din[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[23]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[23]_i_1_n_0\
    );
\DDRPage_din[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[24]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[24]_i_1_n_0\
    );
\DDRPage_din[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[25]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[25]_i_1_n_0\
    );
\DDRPage_din[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[26]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[26]_i_1_n_0\
    );
\DDRPage_din[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[27]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[27]_i_1_n_0\
    );
\DDRPage_din[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[28]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[28]_i_1_n_0\
    );
\DDRPage_din[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[29]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[29]_i_1_n_0\
    );
\DDRPage_din[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[2]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[2]_i_1_n_0\
    );
\DDRPage_din[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[30]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[30]_i_1_n_0\
    );
\DDRPage_din[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[31]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[31]_i_1_n_0\
    );
\DDRPage_din[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[32]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[32]_i_1_n_0\
    );
\DDRPage_din[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[33]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[33]_i_1_n_0\
    );
\DDRPage_din[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[34]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[34]_i_1_n_0\
    );
\DDRPage_din[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[35]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[35]_i_1_n_0\
    );
\DDRPage_din[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[36]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[36]_i_1_n_0\
    );
\DDRPage_din[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[37]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[37]_i_1_n_0\
    );
\DDRPage_din[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[38]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[38]_i_1_n_0\
    );
\DDRPage_din[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[39]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[39]_i_1_n_0\
    );
\DDRPage_din[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[3]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[3]_i_1_n_0\
    );
\DDRPage_din[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[40]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[40]_i_1_n_0\
    );
\DDRPage_din[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[41]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[41]_i_1_n_0\
    );
\DDRPage_din[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[42]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[42]_i_1_n_0\
    );
\DDRPage_din[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[43]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[43]_i_1_n_0\
    );
\DDRPage_din[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[44]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[44]_i_1_n_0\
    );
\DDRPage_din[45]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[45]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[45]_i_1_n_0\
    );
\DDRPage_din[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[46]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[46]_i_1_n_0\
    );
\DDRPage_din[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[47]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[47]_i_1_n_0\
    );
\DDRPage_din[48]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[48]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[48]_i_1_n_0\
    );
\DDRPage_din[49]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[49]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[49]_i_1_n_0\
    );
\DDRPage_din[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[4]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[4]_i_1_n_0\
    );
\DDRPage_din[50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[50]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[50]_i_1_n_0\
    );
\DDRPage_din[51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[51]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[51]_i_1_n_0\
    );
\DDRPage_din[52]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[52]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[52]_i_1_n_0\
    );
\DDRPage_din[53]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[53]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[53]_i_1_n_0\
    );
\DDRPage_din[54]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[54]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[54]_i_1_n_0\
    );
\DDRPage_din[55]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[55]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[55]_i_1_n_0\
    );
\DDRPage_din[56]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[56]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[56]_i_1_n_0\
    );
\DDRPage_din[57]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[57]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[57]_i_1_n_0\
    );
\DDRPage_din[58]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[58]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[58]_i_1_n_0\
    );
\DDRPage_din[59]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[59]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[59]_i_1_n_0\
    );
\DDRPage_din[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[5]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[5]_i_1_n_0\
    );
\DDRPage_din[60]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[60]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[60]_i_1_n_0\
    );
\DDRPage_din[61]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[61]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[61]_i_1_n_0\
    );
\DDRPage_din[62]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[62]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[62]_i_1_n_0\
    );
\DDRPage_din[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[63]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[63]_i_1_n_0\
    );
\DDRPage_din[64]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[64]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[64]_i_1_n_0\
    );
\DDRPage_din[65]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[65]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[65]_i_1_n_0\
    );
\DDRPage_din[66]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[66]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[66]_i_1_n_0\
    );
\DDRPage_din[67]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[67]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[67]_i_1_n_0\
    );
\DDRPage_din[68]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[68]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[68]_i_1_n_0\
    );
\DDRPage_din[69]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[69]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[69]_i_1_n_0\
    );
\DDRPage_din[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[6]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[6]_i_1_n_0\
    );
\DDRPage_din[70]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[70]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[70]_i_1_n_0\
    );
\DDRPage_din[71]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[71]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[71]_i_1_n_0\
    );
\DDRPage_din[72]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[72]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[72]_i_1_n_0\
    );
\DDRPage_din[73]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[73]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[73]_i_1_n_0\
    );
\DDRPage_din[74]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[74]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[74]_i_1_n_0\
    );
\DDRPage_din[75]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[75]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[75]_i_1_n_0\
    );
\DDRPage_din[76]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[76]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[76]_i_1_n_0\
    );
\DDRPage_din[77]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[77]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[77]_i_1_n_0\
    );
\DDRPage_din[78]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[78]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[78]_i_1_n_0\
    );
\DDRPage_din[79]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[79]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[79]_i_1_n_0\
    );
\DDRPage_din[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[7]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[7]_i_1_n_0\
    );
\DDRPage_din[80]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[80]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[80]_i_1_n_0\
    );
\DDRPage_din[81]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[81]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[81]_i_1_n_0\
    );
\DDRPage_din[82]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[82]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[82]_i_1_n_0\
    );
\DDRPage_din[83]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[83]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[83]_i_1_n_0\
    );
\DDRPage_din[84]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[84]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[84]_i_1_n_0\
    );
\DDRPage_din[85]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[85]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[85]_i_1_n_0\
    );
\DDRPage_din[86]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[86]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[86]_i_1_n_0\
    );
\DDRPage_din[87]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[87]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[87]_i_1_n_0\
    );
\DDRPage_din[88]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[88]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[88]_i_1_n_0\
    );
\DDRPage_din[89]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[89]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[89]_i_1_n_0\
    );
\DDRPage_din[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[8]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[8]_i_1_n_0\
    );
\DDRPage_din[90]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[90]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[90]_i_1_n_0\
    );
\DDRPage_din[91]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[91]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[91]_i_1_n_0\
    );
\DDRPage_din[92]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[92]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[92]_i_1_n_0\
    );
\DDRPage_din[93]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[93]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[93]_i_1_n_0\
    );
\DDRPage_din[94]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[94]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[94]_i_1_n_0\
    );
\DDRPage_din[95]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[95]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[95]_i_1_n_0\
    );
\DDRPage_din[96]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[96]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[96]_i_1_n_0\
    );
\DDRPage_din[97]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[97]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[97]_i_1_n_0\
    );
\DDRPage_din[98]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[98]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[98]_i_1_n_0\
    );
\DDRPage_din[99]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[99]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[99]_i_1_n_0\
    );
\DDRPage_din[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \EventData_reg_n_0_[9]\,
      I4 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I5 => \PageWdCnt[3]_i_4_n_0\,
      O => \DDRPage_din[9]_i_1_n_0\
    );
\DDRPage_din_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[0]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[0]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[100]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[100]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[101]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[101]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[102]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[102]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[103]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[103]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[104]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[104]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[105]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[105]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[106]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[106]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[107]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[107]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[108]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[108]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[109]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[109]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[10]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[10]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[110]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[110]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[111]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[111]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[112]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[112]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[113]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[113]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[114]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[114]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[115]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[115]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[116]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[116]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[117]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[117]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[118]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[118]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[119]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[119]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[11]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[11]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[120]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[120]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[121]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[121]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[122]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[122]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[123]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[123]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[124]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[124]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[125]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[125]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[126]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[126]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[127]_i_2_n_0\,
      Q => \DDRPage_din_reg_n_0_[127]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[12]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[12]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[13]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[13]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[14]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[14]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[15]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[15]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[16]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[16]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[17]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[17]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[18]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[18]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[19]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[19]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[1]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[1]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[20]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[20]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[21]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[21]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[22]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[22]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[23]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[23]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[24]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[24]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[25]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[25]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[26]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[26]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[27]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[27]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[28]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[28]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[29]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[29]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[2]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[2]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[30]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[30]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[31]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[31]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[32]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[32]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[33]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[33]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[34]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[34]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[35]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[35]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[36]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[36]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[37]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[37]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[38]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[38]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[39]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[39]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[3]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[3]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[40]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[40]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[41]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[41]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[42]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[42]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[43]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[43]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[44]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[44]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[45]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[45]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[46]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[46]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[47]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[47]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[48]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[48]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[49]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[49]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[4]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[4]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[50]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[50]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[51]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[51]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[52]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[52]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[53]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[53]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[54]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[54]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[55]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[55]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[56]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[56]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[57]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[57]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[58]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[58]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[59]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[59]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[5]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[5]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[60]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[60]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[61]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[61]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[62]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[62]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[63]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[63]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[64]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[64]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[65]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[65]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[66]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[66]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[67]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[67]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[68]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[68]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[69]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[69]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[6]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[6]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[70]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[70]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[71]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[71]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[72]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[72]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[73]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[73]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[74]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[74]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[75]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[75]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[76]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[76]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[77]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[77]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[78]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[78]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[79]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[79]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[7]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[7]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[80]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[80]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[81]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[81]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[82]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[82]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[83]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[83]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[84]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[84]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[85]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[85]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[86]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[86]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[87]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[87]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[88]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[88]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[89]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[89]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[8]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[8]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[90]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[90]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[91]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[91]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[92]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[92]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[93]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[93]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[94]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[94]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[95]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[95]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[96]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[96]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[97]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[97]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[98]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[98]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[99]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[99]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRPage_din_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => \DDRPage_din[9]_i_1_n_0\,
      Q => \DDRPage_din_reg_n_0_[9]\,
      R => \DDRPage_din[127]_i_1_n_0\
    );
DDRPage_rd_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAFFFFEFAA0000"
    )
        port map (
      I0 => \FSM_onehot_prev_state_reg_n_0_[3]\,
      I1 => \RdPageWdCnt_reg_n_0_[1]\,
      I2 => DDRPage_rd_en_i_2_n_0,
      I3 => \FSM_onehot_prev_state_reg_n_0_[4]\,
      I4 => DDRPage_rd_en_i_3_n_0,
      I5 => DDRPage_rd_en_reg_n_0,
      O => DDRPage_rd_en_i_1_n_0
    );
DDRPage_rd_en_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \RdPageWdCnt_reg_n_0_[3]\,
      I1 => \RdPageWdCnt_reg_n_0_[2]\,
      O => DDRPage_rd_en_i_2_n_0
    );
DDRPage_rd_en_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => DDR3_wrt_data_reg0,
      I1 => setAddr,
      I2 => DDR3_wrt_rdy,
      I3 => \FSM_onehot_prev_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_prev_state_reg_n_0_[3]\,
      I5 => \FSM_onehot_prev_state_reg_n_0_[2]\,
      O => DDRPage_rd_en_i_3_n_0
    );
DDRPage_rd_en_reg: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => DDRPage_rd_en_i_1_n_0,
      Q => DDRPage_rd_en_reg_n_0,
      R => '0'
    );
DDRPage_wr_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4444F444"
    )
        port map (
      I0 => \PageWdCnt[3]_i_4_n_0\,
      I1 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      O => DDRPage_wr_en_i_1_n_0
    );
DDRPage_wr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => DDRPage_wr_en_i_1_n_0,
      Q => DDRPage_wr_en_reg_n_0,
      R => \DDRPage_din[127]_i_1_n_0\
    );
\DDRSeqStat[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => setAddr,
      I1 => \FSM_onehot_prev_state_reg_n_0_[3]\,
      O => \DDRSeqStat[0]_i_1_n_0\
    );
\DDRSeqStat[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_prev_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_prev_state_reg_n_0_[3]\,
      O => \DDRSeqStat[1]_i_1_n_0\
    );
\DDRSeqStat_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \DDRSeqStat[0]_i_1_n_0\,
      Q => DDRSeqStat(0),
      R => '0'
    );
\DDRSeqStat_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \DDRSeqStat[1]_i_1_n_0\,
      Q => DDRSeqStat(1),
      R => '0'
    );
\DDRSeqStat_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \FSM_onehot_prev_state_reg_n_0_[4]\,
      Q => DDRSeqStat(2),
      R => '0'
    );
DDR_Controller: component TestDDR_TestDDR_top_0_0_DDR3LController
     port map (
      app_addr(27 downto 0) => DDR3_addr(27 downto 0),
      app_cmd(2 downto 0) => DDR3_cmd(2 downto 0),
      app_en => DDR3_en,
      app_rd_data(127 downto 0) => DDR3_rd_data(127 downto 0),
      app_rd_data_end => DDR3_rd_data_end,
      app_rd_data_valid => DDR3_rd_data_valid,
      app_rdy => DDR3_rdy,
      app_ref_ack => NLW_DDR_Controller_app_ref_ack_UNCONNECTED,
      app_ref_req => '0',
      app_sr_active => NLW_DDR_Controller_app_sr_active_UNCONNECTED,
      app_sr_req => '0',
      app_wdf_data(127 downto 0) => DDR3_wrt_data(127 downto 0),
      app_wdf_end => DDR3_wrt_end,
      app_wdf_mask(15 downto 0) => DDR3_wrt_mask(15 downto 0),
      app_wdf_rdy => DDR3_wrt_rdy,
      app_wdf_wren => DDR3_wrt_en,
      app_zq_ack => NLW_DDR_Controller_app_zq_ack_UNCONNECTED,
      app_zq_req => '0',
      clk_ref_i => Clk_200MHz,
      ddr3_addr(13 downto 0) => DDR_ADDR(13 downto 0),
      ddr3_ba(2 downto 0) => BA(2 downto 0),
      ddr3_cas_n => CAS,
      ddr3_ck_n(0) => DDR_CLKN(0),
      ddr3_ck_p(0) => DDR_CLKP(0),
      ddr3_cke(0) => DDR_CKE(0),
      ddr3_cs_n(0) => CS(0),
      ddr3_dm(1 downto 0) => DM(1 downto 0),
      ddr3_dq(15 downto 0) => DDR_DATA(15 downto 0),
      ddr3_dqs_n(1 downto 0) => ddr3_dqs_n(1 downto 0),
      ddr3_dqs_p(1 downto 0) => ddr3_dqs_p(1 downto 0),
      ddr3_odt(0) => ODT(0),
      ddr3_ras_n => RAS,
      ddr3_reset_n => RESET_N,
      ddr3_we_n => DDR_WE,
      device_temp(11 downto 0) => NLW_DDR_Controller_device_temp_UNCONNECTED(11 downto 0),
      init_calib_complete => NLW_DDR_Controller_init_calib_complete_UNCONNECTED,
      sys_clk_i => Clk_100MHz,
      sys_rst => sys_rst,
      ui_clk => rd_clk,
      ui_clk_sync_rst => NLW_DDR_Controller_ui_clk_sync_rst_UNCONNECTED
    );
\EvBuffDat[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2F2F20000F200"
    )
        port map (
      I0 => \EvBuffDat[0]_i_2_n_0\,
      I1 => \EvBuffDat[6]_i_3_n_0\,
      I2 => counter_reg(0),
      I3 => \EvBuffDat[0]_i_3_n_0\,
      I4 => \EvBuffDat[0]_i_4_n_0\,
      I5 => counter_reg(7),
      O => \EvBuffDat[0]_i_1_n_0\
    );
\EvBuffDat[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => counter_reg(5),
      I1 => counter_reg(4),
      I2 => counter_reg(6),
      I3 => counter_reg(1),
      I4 => counter_reg(7),
      O => \EvBuffDat[0]_i_2_n_0\
    );
\EvBuffDat[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDFDDD"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter_reg(0),
      I2 => counter_reg(4),
      I3 => counter_reg(1),
      I4 => counter_reg(5),
      O => \EvBuffDat[0]_i_3_n_0\
    );
\EvBuffDat[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => counter_reg(6),
      I1 => \EvBuffDat[0]_i_5_n_0\,
      I2 => counter_reg(3),
      I3 => counter_reg(2),
      I4 => \EvBuffDat[0]_i_6_n_0\,
      I5 => \EvBuffDat[15]_i_7_n_0\,
      O => \EvBuffDat[0]_i_4_n_0\
    );
\EvBuffDat[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FAA"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      I2 => counter_reg(5),
      I3 => counter_reg(4),
      O => \EvBuffDat[0]_i_5_n_0\
    );
\EvBuffDat[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => counter_reg(9),
      I1 => counter_reg(11),
      I2 => counter_reg(10),
      I3 => counter_reg(8),
      O => \EvBuffDat[0]_i_6_n_0\
    );
\EvBuffDat[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D55000055550000"
    )
        port map (
      I0 => \EvBuffDat[11]_i_2_n_0\,
      I1 => counter_reg(0),
      I2 => counter_reg(1),
      I3 => counter_reg(4),
      I4 => \EvBuffDat[15]_i_4_n_0\,
      I5 => \EvBuffDat[11]_i_3_n_0\,
      O => \EvBuffDat[11]_i_1_n_0\
    );
\EvBuffDat[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFFFFFDF"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      I2 => counter_reg(7),
      I3 => counter_reg(4),
      I4 => counter_reg(6),
      I5 => counter_reg(5),
      O => \EvBuffDat[11]_i_2_n_0\
    );
\EvBuffDat[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(5),
      I1 => counter_reg(7),
      O => \EvBuffDat[11]_i_3_n_0\
    );
\EvBuffDat[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \EvBuffDat[13]_i_2_n_0\,
      I1 => \EvBuffDat[15]_i_4_n_0\,
      O => \EvBuffDat[13]_i_1_n_0\
    );
\EvBuffDat[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEDFDF8FAF"
    )
        port map (
      I0 => counter_reg(5),
      I1 => counter_reg(6),
      I2 => counter_reg(4),
      I3 => counter_reg(1),
      I4 => counter_reg(0),
      I5 => counter_reg(7),
      O => \EvBuffDat[13]_i_2_n_0\
    );
\EvBuffDat[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000A002A0"
    )
        port map (
      I0 => \EvBuffDat[15]_i_4_n_0\,
      I1 => \EvBuffDat[14]_i_2_n_0\,
      I2 => counter_reg(4),
      I3 => counter_reg(7),
      I4 => \EvBuffDat[14]_i_3_n_0\,
      I5 => \EvBuffDat[14]_i_4_n_0\,
      O => \EvBuffDat[14]_i_1_n_0\
    );
\EvBuffDat[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(5),
      I1 => counter_reg(6),
      O => \EvBuffDat[14]_i_2_n_0\
    );
\EvBuffDat[14]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter_reg(0),
      O => \EvBuffDat[14]_i_3_n_0\
    );
\EvBuffDat[14]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => counter_reg(5),
      I1 => counter_reg(6),
      I2 => counter_reg(1),
      I3 => counter_reg(0),
      O => \EvBuffDat[14]_i_4_n_0\
    );
\EvBuffDat[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => sw(1),
      I1 => sw(2),
      I2 => sw(0),
      I3 => sw(3),
      I4 => \EvBuffDat[15]_i_3_n_0\,
      O => EvBuffDat
    );
\EvBuffDat[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFD7DFFFFFFFF"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(0),
      I2 => counter_reg(5),
      I3 => counter_reg(6),
      I4 => counter_reg(7),
      I5 => \EvBuffDat[15]_i_4_n_0\,
      O => \EvBuffDat[15]_i_2_n_0\
    );
\EvBuffDat[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \EvBuffDat[15]_i_5_n_0\,
      I1 => \EvBuffDat[15]_i_6_n_0\,
      I2 => \EvBuffDat[15]_i_7_n_0\,
      I3 => \EvBuffDat[15]_i_8_n_0\,
      I4 => counter_reg(1),
      I5 => counter_reg(2),
      O => \EvBuffDat[15]_i_3_n_0\
    );
\EvBuffDat[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => counter_reg(10),
      I1 => counter_reg(8),
      I2 => \EvBuffDat[15]_i_7_n_0\,
      I3 => \EvBuffDat[15]_i_8_n_0\,
      I4 => counter_reg(3),
      I5 => counter_reg(2),
      O => \EvBuffDat[15]_i_4_n_0\
    );
\EvBuffDat[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter_reg(5),
      I2 => counter_reg(10),
      I3 => counter_reg(8),
      O => \EvBuffDat[15]_i_5_n_0\
    );
\EvBuffDat[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter_reg(3),
      I1 => counter_reg(0),
      I2 => counter_reg(7),
      I3 => counter_reg(4),
      O => \EvBuffDat[15]_i_6_n_0\
    );
\EvBuffDat[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(15),
      I1 => counter_reg(12),
      I2 => counter_reg(14),
      I3 => counter_reg(13),
      O => \EvBuffDat[15]_i_7_n_0\
    );
\EvBuffDat[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => counter_reg(11),
      I1 => counter_reg(9),
      O => \EvBuffDat[15]_i_8_n_0\
    );
\EvBuffDat[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FFF0F0"
    )
        port map (
      I0 => counter_reg(7),
      I1 => \EvBuffDat[1]_i_2_n_0\,
      I2 => counter_reg(1),
      I3 => \EvBuffDat[1]_i_3_n_0\,
      I4 => \EvBuffDat[15]_i_4_n_0\,
      O => \EvBuffDat[1]_i_1_n_0\
    );
\EvBuffDat[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter_reg(5),
      I2 => counter_reg(0),
      I3 => counter_reg(4),
      O => \EvBuffDat[1]_i_2_n_0\
    );
\EvBuffDat[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF31333F33"
    )
        port map (
      I0 => counter_reg(5),
      I1 => counter_reg(1),
      I2 => counter_reg(6),
      I3 => counter_reg(4),
      I4 => counter_reg(0),
      I5 => counter_reg(7),
      O => \EvBuffDat[1]_i_3_n_0\
    );
\EvBuffDat[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => counter_reg(2),
      I1 => \EvBuffDat[2]_i_2_n_0\,
      I2 => \EvBuffDat[2]_i_3_n_0\,
      O => \EvBuffDat[2]_i_1_n_0\
    );
\EvBuffDat[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFECFBEFFBFFFF"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter_reg(7),
      I2 => counter_reg(5),
      I3 => counter_reg(4),
      I4 => counter_reg(1),
      I5 => counter_reg(0),
      O => \EvBuffDat[2]_i_2_n_0\
    );
\EvBuffDat[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => counter_reg(3),
      I1 => counter_reg(9),
      I2 => counter_reg(11),
      I3 => \EvBuffDat[15]_i_7_n_0\,
      I4 => counter_reg(8),
      I5 => counter_reg(10),
      O => \EvBuffDat[2]_i_3_n_0\
    );
\EvBuffDat[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAABAA"
    )
        port map (
      I0 => counter_reg(3),
      I1 => \EvBuffDat[3]_i_2_n_0\,
      I2 => \EvBuffDat[3]_i_3_n_0\,
      I3 => \EvBuffDat[3]_i_4_n_0\,
      I4 => \EvBuffDat[3]_i_5_n_0\,
      O => \EvBuffDat[3]_i_1_n_0\
    );
\EvBuffDat[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => counter_reg(10),
      I1 => counter_reg(8),
      I2 => \EvBuffDat[15]_i_7_n_0\,
      I3 => counter_reg(11),
      I4 => counter_reg(9),
      O => \EvBuffDat[3]_i_2_n_0\
    );
\EvBuffDat[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A22A"
    )
        port map (
      I0 => counter_reg(5),
      I1 => counter_reg(4),
      I2 => counter_reg(0),
      I3 => counter_reg(1),
      O => \EvBuffDat[3]_i_3_n_0\
    );
\EvBuffDat[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFDFFFDFF"
    )
        port map (
      I0 => counter_reg(7),
      I1 => counter_reg(5),
      I2 => counter_reg(6),
      I3 => counter_reg(1),
      I4 => counter_reg(0),
      I5 => counter_reg(3),
      O => \EvBuffDat[3]_i_4_n_0\
    );
\EvBuffDat[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFCCCFEFFFECF"
    )
        port map (
      I0 => \EvBuffDat[14]_i_3_n_0\,
      I1 => counter_reg(2),
      I2 => counter_reg(7),
      I3 => counter_reg(4),
      I4 => counter_reg(6),
      I5 => counter_reg(5),
      O => \EvBuffDat[3]_i_5_n_0\
    );
\EvBuffDat[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \EvBuffDat[4]_i_2_n_0\,
      I1 => \EvBuffDat[15]_i_4_n_0\,
      I2 => counter_reg(4),
      O => \EvBuffDat[4]_i_1_n_0\
    );
\EvBuffDat[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01E600B200"
    )
        port map (
      I0 => counter_reg(5),
      I1 => counter_reg(1),
      I2 => counter_reg(6),
      I3 => counter_reg(4),
      I4 => counter_reg(0),
      I5 => counter_reg(7),
      O => \EvBuffDat[4]_i_2_n_0\
    );
\EvBuffDat[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2F200F2F2F2F2"
    )
        port map (
      I0 => \EvBuffDat[5]_i_2_n_0\,
      I1 => \EvBuffDat[6]_i_3_n_0\,
      I2 => counter_reg(5),
      I3 => counter_reg(7),
      I4 => \EvBuffDat[5]_i_3_n_0\,
      I5 => \EvBuffDat[15]_i_4_n_0\,
      O => \EvBuffDat[5]_i_1_n_0\
    );
\EvBuffDat[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000430"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter_reg(7),
      I2 => counter_reg(4),
      I3 => counter_reg(0),
      I4 => counter_reg(1),
      O => \EvBuffDat[5]_i_2_n_0\
    );
\EvBuffDat[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(6),
      I2 => counter_reg(5),
      I3 => counter_reg(4),
      O => \EvBuffDat[5]_i_3_n_0\
    );
\EvBuffDat[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4FF44004400"
    )
        port map (
      I0 => \EvBuffDat[6]_i_2_n_0\,
      I1 => \EvBuffDat[15]_i_4_n_0\,
      I2 => \EvBuffDat[6]_i_3_n_0\,
      I3 => \EvBuffDat[11]_i_3_n_0\,
      I4 => \EvBuffDat[6]_i_4_n_0\,
      I5 => counter_reg(6),
      O => \EvBuffDat[6]_i_1_n_0\
    );
\EvBuffDat[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      I2 => counter_reg(4),
      O => \EvBuffDat[6]_i_2_n_0\
    );
\EvBuffDat[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => counter_reg(3),
      I1 => counter_reg(2),
      I2 => counter_reg(9),
      I3 => counter_reg(11),
      I4 => \EvBuffDat[6]_i_5_n_0\,
      I5 => \EvBuffDat[15]_i_7_n_0\,
      O => \EvBuffDat[6]_i_3_n_0\
    );
\EvBuffDat[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(4),
      O => \EvBuffDat[6]_i_4_n_0\
    );
\EvBuffDat[6]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(10),
      O => \EvBuffDat[6]_i_5_n_0\
    );
\EvBuffDat[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF00FE00FF00"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(0),
      I2 => \EvBuffDat[14]_i_2_n_0\,
      I3 => counter_reg(7),
      I4 => \EvBuffDat[15]_i_4_n_0\,
      I5 => \EvBuffDat[7]_i_2_n_0\,
      O => \EvBuffDat[7]_i_1_n_0\
    );
\EvBuffDat[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200820"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(5),
      I2 => counter_reg(0),
      I3 => counter_reg(1),
      I4 => counter_reg(6),
      O => \EvBuffDat[7]_i_2_n_0\
    );
\EvBuffDat[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => counter_reg(5),
      I1 => counter_reg(7),
      I2 => \EvBuffDat[15]_i_4_n_0\,
      I3 => counter_reg(4),
      I4 => counter_reg(1),
      I5 => counter_reg(0),
      O => \EvBuffDat[8]_i_1_n_0\
    );
\EvBuffDat_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => EvBuffDat,
      CLR => EventBuff_i_1_n_0,
      D => \EvBuffDat[0]_i_1_n_0\,
      Q => din(0)
    );
\EvBuffDat_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => EvBuffDat,
      CLR => EventBuff_i_1_n_0,
      D => \EvBuffDat[11]_i_1_n_0\,
      Q => din(11)
    );
\EvBuffDat_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => EvBuffDat,
      CLR => EventBuff_i_1_n_0,
      D => \EvBuffDat[13]_i_1_n_0\,
      Q => din(13)
    );
\EvBuffDat_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => EvBuffDat,
      CLR => EventBuff_i_1_n_0,
      D => \EvBuffDat[14]_i_1_n_0\,
      Q => din(14)
    );
\EvBuffDat_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => EvBuffDat,
      CLR => EventBuff_i_1_n_0,
      D => \EvBuffDat[15]_i_2_n_0\,
      Q => din(15)
    );
\EvBuffDat_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => EvBuffDat,
      CLR => EventBuff_i_1_n_0,
      D => \EvBuffDat[1]_i_1_n_0\,
      Q => din(1)
    );
\EvBuffDat_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => EvBuffDat,
      CLR => EventBuff_i_1_n_0,
      D => \EvBuffDat[2]_i_1_n_0\,
      Q => din(2)
    );
\EvBuffDat_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => EvBuffDat,
      CLR => EventBuff_i_1_n_0,
      D => \EvBuffDat[3]_i_1_n_0\,
      Q => din(3)
    );
\EvBuffDat_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => EvBuffDat,
      CLR => EventBuff_i_1_n_0,
      D => \EvBuffDat[4]_i_1_n_0\,
      Q => din(4)
    );
\EvBuffDat_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => EvBuffDat,
      CLR => EventBuff_i_1_n_0,
      D => \EvBuffDat[5]_i_1_n_0\,
      Q => din(5)
    );
\EvBuffDat_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => EvBuffDat,
      CLR => EventBuff_i_1_n_0,
      D => \EvBuffDat[6]_i_1_n_0\,
      Q => din(6)
    );
\EvBuffDat_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => EvBuffDat,
      CLR => EventBuff_i_1_n_0,
      D => \EvBuffDat[7]_i_1_n_0\,
      Q => din(7)
    );
\EvBuffDat_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => EvBuffDat,
      CLR => EventBuff_i_1_n_0,
      D => \EvBuffDat[8]_i_1_n_0\,
      Q => din(8)
    );
EvBuffRd_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFC6C60000C6C6"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => \PageWdCnt[3]_i_4_n_0\,
      I4 => current_state(3),
      I5 => rd_en,
      O => EvBuffRd_i_1_n_0
    );
EvBuffRd_reg: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => EvBuffRd_i_1_n_0,
      Q => rd_en,
      R => '0'
    );
EvBuffWrt_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD88"
    )
        port map (
      I0 => eqOp2_in,
      I1 => eqOp,
      I2 => \EvBuffDat[15]_i_3_n_0\,
      I3 => wr_en,
      O => EvBuffWrt_i_1_n_0
    );
EvBuffWrt_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \EvBuffDat[15]_i_7_n_0\,
      I1 => EvBuffWrt_i_3_n_0,
      I2 => \EvBuffDat[6]_i_4_n_0\,
      I3 => counter_reg(7),
      I4 => counter_reg(3),
      I5 => \EvBuffDat[15]_i_5_n_0\,
      O => eqOp
    );
EvBuffWrt_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => counter_reg(9),
      I1 => counter_reg(11),
      I2 => counter_reg(1),
      I3 => counter_reg(2),
      O => EvBuffWrt_i_3_n_0
    );
EvBuffWrt_reg: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => '1',
      CLR => EventBuff_i_1_n_0,
      D => EvBuffWrt_i_1_n_0,
      Q => wr_en
    );
EventBuff: component TestDDR_TestDDR_top_0_0_SCFIFO_1Kx16
     port map (
      clk => SysClk,
      data_count(10 downto 0) => EvBuffWdsUsed(10 downto 0),
      din(15 downto 13) => din(15 downto 13),
      din(12) => din(14),
      din(11) => din(11),
      din(10) => din(14),
      din(9) => din(11),
      din(8 downto 0) => din(8 downto 0),
      dout(15 downto 0) => EvBuffOut(15 downto 0),
      empty => empty,
      full => NLW_EventBuff_full_UNCONNECTED,
      rd_en => rd_en,
      srst => EventBuff_i_1_n_0,
      wr_en => wr_en
    );
EventBuff_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CpldRst,
      O => EventBuff_i_1_n_0
    );
\EventData[100]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EvBuffOut(4),
      I1 => current_state(0),
      O => \EventData[100]_i_1_n_0\
    );
\EventData[101]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EvBuffOut(5),
      I1 => current_state(0),
      O => \EventData[101]_i_1_n_0\
    );
\EventData[102]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EvBuffOut(6),
      I1 => current_state(0),
      O => \EventData[102]_i_1_n_0\
    );
\EventData[103]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EvBuffOut(7),
      I1 => current_state(0),
      O => \EventData[103]_i_1_n_0\
    );
\EventData[104]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EvBuffOut(8),
      I1 => current_state(0),
      O => \EventData[104]_i_1_n_0\
    );
\EventData[105]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EvBuffOut(9),
      I1 => current_state(0),
      O => \EventData[105]_i_1_n_0\
    );
\EventData[106]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EvBuffOut(10),
      I1 => current_state(0),
      O => \EventData[106]_i_1_n_0\
    );
\EventData[107]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EvBuffOut(11),
      I1 => current_state(0),
      O => \EventData[107]_i_1_n_0\
    );
\EventData[108]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EvBuffOut(12),
      I1 => current_state(0),
      O => \EventData[108]_i_1_n_0\
    );
\EventData[109]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EvBuffOut(13),
      I1 => current_state(0),
      O => \EventData[109]_i_1_n_0\
    );
\EventData[110]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EvBuffOut(14),
      I1 => current_state(0),
      O => \EventData[110]_i_1_n_0\
    );
\EventData[111]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0884"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => current_state(0),
      O => EventData(111)
    );
\EventData[111]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EvBuffOut(15),
      I1 => current_state(0),
      O => \EventData[111]_i_2_n_0\
    );
\EventData[127]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0840"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(2),
      O => EventData(127)
    );
\EventData[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => current_state(2),
      O => EventData(15)
    );
\EventData[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(2),
      O => EventData(31)
    );
\EventData[47]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0820"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(2),
      O => EventData(47)
    );
\EventData[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => current_state(0),
      O => EventData(63)
    );
\EventData[64]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => current_state(3),
      I1 => EvBuffOut(0),
      I2 => current_state(2),
      O => \EventData[64]_i_1_n_0\
    );
\EventData[65]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => current_state(3),
      I1 => EvBuffOut(1),
      I2 => current_state(2),
      O => \EventData[65]_i_1_n_0\
    );
\EventData[66]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => current_state(3),
      I1 => EvBuffOut(2),
      I2 => current_state(2),
      O => \EventData[66]_i_1_n_0\
    );
\EventData[67]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => current_state(3),
      I1 => EvBuffOut(3),
      I2 => current_state(2),
      O => \EventData[67]_i_1_n_0\
    );
\EventData[68]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => current_state(3),
      I1 => EvBuffOut(4),
      I2 => current_state(2),
      O => \EventData[68]_i_1_n_0\
    );
\EventData[69]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => current_state(3),
      I1 => EvBuffOut(5),
      I2 => current_state(2),
      O => \EventData[69]_i_1_n_0\
    );
\EventData[70]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => current_state(3),
      I1 => EvBuffOut(6),
      I2 => current_state(2),
      O => \EventData[70]_i_1_n_0\
    );
\EventData[71]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => current_state(3),
      I1 => EvBuffOut(7),
      I2 => current_state(2),
      O => \EventData[71]_i_1_n_0\
    );
\EventData[72]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => current_state(3),
      I1 => EvBuffOut(8),
      I2 => current_state(2),
      O => \EventData[72]_i_1_n_0\
    );
\EventData[73]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => current_state(3),
      I1 => EvBuffOut(9),
      I2 => current_state(2),
      O => \EventData[73]_i_1_n_0\
    );
\EventData[74]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => current_state(3),
      I1 => EvBuffOut(10),
      I2 => current_state(2),
      O => \EventData[74]_i_1_n_0\
    );
\EventData[75]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => current_state(3),
      I1 => EvBuffOut(11),
      I2 => current_state(2),
      O => \EventData[75]_i_1_n_0\
    );
\EventData[76]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => current_state(3),
      I1 => EvBuffOut(12),
      I2 => current_state(2),
      O => \EventData[76]_i_1_n_0\
    );
\EventData[77]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => current_state(3),
      I1 => EvBuffOut(13),
      I2 => current_state(2),
      O => \EventData[77]_i_1_n_0\
    );
\EventData[78]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => current_state(3),
      I1 => EvBuffOut(14),
      I2 => current_state(2),
      O => \EventData[78]_i_1_n_0\
    );
\EventData[79]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2002"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => current_state(2),
      O => EventData(79)
    );
\EventData[79]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => current_state(3),
      I1 => EvBuffOut(15),
      I2 => current_state(2),
      O => \EventData[79]_i_2_n_0\
    );
\EventData[80]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => EvBuffOut(0),
      O => \EventData[80]_i_1_n_0\
    );
\EventData[81]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => EvBuffOut(1),
      O => \EventData[81]_i_1_n_0\
    );
\EventData[82]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => EvBuffOut(2),
      O => \EventData[82]_i_1_n_0\
    );
\EventData[83]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => EvBuffOut(3),
      O => \EventData[83]_i_1_n_0\
    );
\EventData[84]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => EvBuffOut(4),
      O => \EventData[84]_i_1_n_0\
    );
\EventData[85]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => EvBuffOut(5),
      O => \EventData[85]_i_1_n_0\
    );
\EventData[86]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => EvBuffOut(6),
      O => \EventData[86]_i_1_n_0\
    );
\EventData[87]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => EvBuffOut(7),
      O => \EventData[87]_i_1_n_0\
    );
\EventData[88]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => EvBuffOut(8),
      O => \EventData[88]_i_1_n_0\
    );
\EventData[89]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => EvBuffOut(9),
      O => \EventData[89]_i_1_n_0\
    );
\EventData[90]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => EvBuffOut(10),
      O => \EventData[90]_i_1_n_0\
    );
\EventData[91]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => EvBuffOut(11),
      O => \EventData[91]_i_1_n_0\
    );
\EventData[92]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => EvBuffOut(12),
      O => \EventData[92]_i_1_n_0\
    );
\EventData[93]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => EvBuffOut(13),
      O => \EventData[93]_i_1_n_0\
    );
\EventData[94]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => EvBuffOut(14),
      O => \EventData[94]_i_1_n_0\
    );
\EventData[95]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C00"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => current_state(0),
      O => EventData(95)
    );
\EventData[95]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => EvBuffOut(15),
      O => \EventData[95]_i_2_n_0\
    );
\EventData[96]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EvBuffOut(0),
      I1 => current_state(0),
      O => \EventData[96]_i_1_n_0\
    );
\EventData[97]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EvBuffOut(1),
      I1 => current_state(0),
      O => \EventData[97]_i_1_n_0\
    );
\EventData[98]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EvBuffOut(2),
      I1 => current_state(0),
      O => \EventData[98]_i_1_n_0\
    );
\EventData[99]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EvBuffOut(3),
      I1 => current_state(0),
      O => \EventData[99]_i_1_n_0\
    );
\EventData_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(15),
      D => \EventData[96]_i_1_n_0\,
      Q => \EventData_reg_n_0_[0]\,
      R => EventData0
    );
\EventData_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(111),
      D => \EventData[100]_i_1_n_0\,
      Q => \EventData_reg_n_0_[100]\,
      R => EventData0
    );
\EventData_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(111),
      D => \EventData[101]_i_1_n_0\,
      Q => \EventData_reg_n_0_[101]\,
      R => EventData0
    );
\EventData_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(111),
      D => \EventData[102]_i_1_n_0\,
      Q => \EventData_reg_n_0_[102]\,
      R => EventData0
    );
\EventData_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(111),
      D => \EventData[103]_i_1_n_0\,
      Q => \EventData_reg_n_0_[103]\,
      R => EventData0
    );
\EventData_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(111),
      D => \EventData[104]_i_1_n_0\,
      Q => \EventData_reg_n_0_[104]\,
      R => EventData0
    );
\EventData_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(111),
      D => \EventData[105]_i_1_n_0\,
      Q => \EventData_reg_n_0_[105]\,
      R => EventData0
    );
\EventData_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(111),
      D => \EventData[106]_i_1_n_0\,
      Q => \EventData_reg_n_0_[106]\,
      R => EventData0
    );
\EventData_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(111),
      D => \EventData[107]_i_1_n_0\,
      Q => \EventData_reg_n_0_[107]\,
      R => EventData0
    );
\EventData_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(111),
      D => \EventData[108]_i_1_n_0\,
      Q => \EventData_reg_n_0_[108]\,
      R => EventData0
    );
\EventData_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(111),
      D => \EventData[109]_i_1_n_0\,
      Q => \EventData_reg_n_0_[109]\,
      R => EventData0
    );
\EventData_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(15),
      D => \EventData[106]_i_1_n_0\,
      Q => \EventData_reg_n_0_[10]\,
      R => EventData0
    );
\EventData_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(111),
      D => \EventData[110]_i_1_n_0\,
      Q => \EventData_reg_n_0_[110]\,
      R => EventData0
    );
\EventData_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(111),
      D => \EventData[111]_i_2_n_0\,
      Q => \EventData_reg_n_0_[111]\,
      R => EventData0
    );
\EventData_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(127),
      D => EvBuffOut(0),
      Q => \EventData_reg_n_0_[112]\,
      R => EventData0
    );
\EventData_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(127),
      D => EvBuffOut(1),
      Q => \EventData_reg_n_0_[113]\,
      R => EventData0
    );
\EventData_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(127),
      D => EvBuffOut(2),
      Q => \EventData_reg_n_0_[114]\,
      R => EventData0
    );
\EventData_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(127),
      D => EvBuffOut(3),
      Q => \EventData_reg_n_0_[115]\,
      R => EventData0
    );
\EventData_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(127),
      D => EvBuffOut(4),
      Q => \EventData_reg_n_0_[116]\,
      R => EventData0
    );
\EventData_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(127),
      D => EvBuffOut(5),
      Q => \EventData_reg_n_0_[117]\,
      R => EventData0
    );
\EventData_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(127),
      D => EvBuffOut(6),
      Q => \EventData_reg_n_0_[118]\,
      R => EventData0
    );
\EventData_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(127),
      D => EvBuffOut(7),
      Q => \EventData_reg_n_0_[119]\,
      R => EventData0
    );
\EventData_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(15),
      D => \EventData[107]_i_1_n_0\,
      Q => \EventData_reg_n_0_[11]\,
      R => EventData0
    );
\EventData_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(127),
      D => EvBuffOut(8),
      Q => \EventData_reg_n_0_[120]\,
      R => EventData0
    );
\EventData_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(127),
      D => EvBuffOut(9),
      Q => \EventData_reg_n_0_[121]\,
      R => EventData0
    );
\EventData_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(127),
      D => EvBuffOut(10),
      Q => \EventData_reg_n_0_[122]\,
      R => EventData0
    );
\EventData_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(127),
      D => EvBuffOut(11),
      Q => \EventData_reg_n_0_[123]\,
      R => EventData0
    );
\EventData_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(127),
      D => EvBuffOut(12),
      Q => \EventData_reg_n_0_[124]\,
      R => EventData0
    );
\EventData_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(127),
      D => EvBuffOut(13),
      Q => \EventData_reg_n_0_[125]\,
      R => EventData0
    );
\EventData_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(127),
      D => EvBuffOut(14),
      Q => \EventData_reg_n_0_[126]\,
      R => EventData0
    );
\EventData_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(127),
      D => EvBuffOut(15),
      Q => \EventData_reg_n_0_[127]\,
      R => EventData0
    );
\EventData_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(15),
      D => \EventData[108]_i_1_n_0\,
      Q => \EventData_reg_n_0_[12]\,
      R => EventData0
    );
\EventData_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(15),
      D => \EventData[109]_i_1_n_0\,
      Q => \EventData_reg_n_0_[13]\,
      R => EventData0
    );
\EventData_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(15),
      D => \EventData[110]_i_1_n_0\,
      Q => \EventData_reg_n_0_[14]\,
      R => EventData0
    );
\EventData_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(15),
      D => \EventData[111]_i_2_n_0\,
      Q => \EventData_reg_n_0_[15]\,
      R => EventData0
    );
\EventData_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(31),
      D => \EventData[64]_i_1_n_0\,
      Q => \EventData_reg_n_0_[16]\,
      R => EventData0
    );
\EventData_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(31),
      D => \EventData[65]_i_1_n_0\,
      Q => \EventData_reg_n_0_[17]\,
      R => EventData0
    );
\EventData_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(31),
      D => \EventData[66]_i_1_n_0\,
      Q => \EventData_reg_n_0_[18]\,
      R => EventData0
    );
\EventData_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(31),
      D => \EventData[67]_i_1_n_0\,
      Q => \EventData_reg_n_0_[19]\,
      R => EventData0
    );
\EventData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(15),
      D => \EventData[97]_i_1_n_0\,
      Q => \EventData_reg_n_0_[1]\,
      R => EventData0
    );
\EventData_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(31),
      D => \EventData[68]_i_1_n_0\,
      Q => \EventData_reg_n_0_[20]\,
      R => EventData0
    );
\EventData_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(31),
      D => \EventData[69]_i_1_n_0\,
      Q => \EventData_reg_n_0_[21]\,
      R => EventData0
    );
\EventData_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(31),
      D => \EventData[70]_i_1_n_0\,
      Q => \EventData_reg_n_0_[22]\,
      R => EventData0
    );
\EventData_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(31),
      D => \EventData[71]_i_1_n_0\,
      Q => \EventData_reg_n_0_[23]\,
      R => EventData0
    );
\EventData_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(31),
      D => \EventData[72]_i_1_n_0\,
      Q => \EventData_reg_n_0_[24]\,
      R => EventData0
    );
\EventData_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(31),
      D => \EventData[73]_i_1_n_0\,
      Q => \EventData_reg_n_0_[25]\,
      R => EventData0
    );
\EventData_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(31),
      D => \EventData[74]_i_1_n_0\,
      Q => \EventData_reg_n_0_[26]\,
      R => EventData0
    );
\EventData_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(31),
      D => \EventData[75]_i_1_n_0\,
      Q => \EventData_reg_n_0_[27]\,
      R => EventData0
    );
\EventData_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(31),
      D => \EventData[76]_i_1_n_0\,
      Q => \EventData_reg_n_0_[28]\,
      R => EventData0
    );
\EventData_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(31),
      D => \EventData[77]_i_1_n_0\,
      Q => \EventData_reg_n_0_[29]\,
      R => EventData0
    );
\EventData_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(15),
      D => \EventData[98]_i_1_n_0\,
      Q => \EventData_reg_n_0_[2]\,
      R => EventData0
    );
\EventData_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(31),
      D => \EventData[78]_i_1_n_0\,
      Q => \EventData_reg_n_0_[30]\,
      R => EventData0
    );
\EventData_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(31),
      D => \EventData[79]_i_2_n_0\,
      Q => \EventData_reg_n_0_[31]\,
      R => EventData0
    );
\EventData_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(47),
      D => \EventData[64]_i_1_n_0\,
      Q => \EventData_reg_n_0_[32]\,
      R => EventData0
    );
\EventData_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(47),
      D => \EventData[65]_i_1_n_0\,
      Q => \EventData_reg_n_0_[33]\,
      R => EventData0
    );
\EventData_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(47),
      D => \EventData[66]_i_1_n_0\,
      Q => \EventData_reg_n_0_[34]\,
      R => EventData0
    );
\EventData_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(47),
      D => \EventData[67]_i_1_n_0\,
      Q => \EventData_reg_n_0_[35]\,
      R => EventData0
    );
\EventData_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(47),
      D => \EventData[68]_i_1_n_0\,
      Q => \EventData_reg_n_0_[36]\,
      R => EventData0
    );
\EventData_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(47),
      D => \EventData[69]_i_1_n_0\,
      Q => \EventData_reg_n_0_[37]\,
      R => EventData0
    );
\EventData_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(47),
      D => \EventData[70]_i_1_n_0\,
      Q => \EventData_reg_n_0_[38]\,
      R => EventData0
    );
\EventData_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(47),
      D => \EventData[71]_i_1_n_0\,
      Q => \EventData_reg_n_0_[39]\,
      R => EventData0
    );
\EventData_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(15),
      D => \EventData[99]_i_1_n_0\,
      Q => \EventData_reg_n_0_[3]\,
      R => EventData0
    );
\EventData_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(47),
      D => \EventData[72]_i_1_n_0\,
      Q => \EventData_reg_n_0_[40]\,
      R => EventData0
    );
\EventData_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(47),
      D => \EventData[73]_i_1_n_0\,
      Q => \EventData_reg_n_0_[41]\,
      R => EventData0
    );
\EventData_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(47),
      D => \EventData[74]_i_1_n_0\,
      Q => \EventData_reg_n_0_[42]\,
      R => EventData0
    );
\EventData_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(47),
      D => \EventData[75]_i_1_n_0\,
      Q => \EventData_reg_n_0_[43]\,
      R => EventData0
    );
\EventData_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(47),
      D => \EventData[76]_i_1_n_0\,
      Q => \EventData_reg_n_0_[44]\,
      R => EventData0
    );
\EventData_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(47),
      D => \EventData[77]_i_1_n_0\,
      Q => \EventData_reg_n_0_[45]\,
      R => EventData0
    );
\EventData_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(47),
      D => \EventData[78]_i_1_n_0\,
      Q => \EventData_reg_n_0_[46]\,
      R => EventData0
    );
\EventData_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(47),
      D => \EventData[79]_i_2_n_0\,
      Q => \EventData_reg_n_0_[47]\,
      R => EventData0
    );
\EventData_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(63),
      D => \EventData[64]_i_1_n_0\,
      Q => \EventData_reg_n_0_[48]\,
      R => EventData0
    );
\EventData_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(63),
      D => \EventData[65]_i_1_n_0\,
      Q => \EventData_reg_n_0_[49]\,
      R => EventData0
    );
\EventData_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(15),
      D => \EventData[100]_i_1_n_0\,
      Q => \EventData_reg_n_0_[4]\,
      R => EventData0
    );
\EventData_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(63),
      D => \EventData[66]_i_1_n_0\,
      Q => \EventData_reg_n_0_[50]\,
      R => EventData0
    );
\EventData_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(63),
      D => \EventData[67]_i_1_n_0\,
      Q => \EventData_reg_n_0_[51]\,
      R => EventData0
    );
\EventData_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(63),
      D => \EventData[68]_i_1_n_0\,
      Q => \EventData_reg_n_0_[52]\,
      R => EventData0
    );
\EventData_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(63),
      D => \EventData[69]_i_1_n_0\,
      Q => \EventData_reg_n_0_[53]\,
      R => EventData0
    );
\EventData_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(63),
      D => \EventData[70]_i_1_n_0\,
      Q => \EventData_reg_n_0_[54]\,
      R => EventData0
    );
\EventData_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(63),
      D => \EventData[71]_i_1_n_0\,
      Q => \EventData_reg_n_0_[55]\,
      R => EventData0
    );
\EventData_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(63),
      D => \EventData[72]_i_1_n_0\,
      Q => \EventData_reg_n_0_[56]\,
      R => EventData0
    );
\EventData_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(63),
      D => \EventData[73]_i_1_n_0\,
      Q => \EventData_reg_n_0_[57]\,
      R => EventData0
    );
\EventData_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(63),
      D => \EventData[74]_i_1_n_0\,
      Q => \EventData_reg_n_0_[58]\,
      R => EventData0
    );
\EventData_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(63),
      D => \EventData[75]_i_1_n_0\,
      Q => \EventData_reg_n_0_[59]\,
      R => EventData0
    );
\EventData_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(15),
      D => \EventData[101]_i_1_n_0\,
      Q => \EventData_reg_n_0_[5]\,
      R => EventData0
    );
\EventData_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(63),
      D => \EventData[76]_i_1_n_0\,
      Q => \EventData_reg_n_0_[60]\,
      R => EventData0
    );
\EventData_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(63),
      D => \EventData[77]_i_1_n_0\,
      Q => \EventData_reg_n_0_[61]\,
      R => EventData0
    );
\EventData_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(63),
      D => \EventData[78]_i_1_n_0\,
      Q => \EventData_reg_n_0_[62]\,
      R => EventData0
    );
\EventData_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(63),
      D => \EventData[79]_i_2_n_0\,
      Q => \EventData_reg_n_0_[63]\,
      R => EventData0
    );
\EventData_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(79),
      D => \EventData[64]_i_1_n_0\,
      Q => \EventData_reg_n_0_[64]\,
      R => EventData0
    );
\EventData_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(79),
      D => \EventData[65]_i_1_n_0\,
      Q => \EventData_reg_n_0_[65]\,
      R => EventData0
    );
\EventData_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(79),
      D => \EventData[66]_i_1_n_0\,
      Q => \EventData_reg_n_0_[66]\,
      R => EventData0
    );
\EventData_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(79),
      D => \EventData[67]_i_1_n_0\,
      Q => \EventData_reg_n_0_[67]\,
      R => EventData0
    );
\EventData_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(79),
      D => \EventData[68]_i_1_n_0\,
      Q => \EventData_reg_n_0_[68]\,
      R => EventData0
    );
\EventData_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(79),
      D => \EventData[69]_i_1_n_0\,
      Q => \EventData_reg_n_0_[69]\,
      R => EventData0
    );
\EventData_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(15),
      D => \EventData[102]_i_1_n_0\,
      Q => \EventData_reg_n_0_[6]\,
      R => EventData0
    );
\EventData_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(79),
      D => \EventData[70]_i_1_n_0\,
      Q => \EventData_reg_n_0_[70]\,
      R => EventData0
    );
\EventData_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(79),
      D => \EventData[71]_i_1_n_0\,
      Q => \EventData_reg_n_0_[71]\,
      R => EventData0
    );
\EventData_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(79),
      D => \EventData[72]_i_1_n_0\,
      Q => \EventData_reg_n_0_[72]\,
      R => EventData0
    );
\EventData_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(79),
      D => \EventData[73]_i_1_n_0\,
      Q => \EventData_reg_n_0_[73]\,
      R => EventData0
    );
\EventData_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(79),
      D => \EventData[74]_i_1_n_0\,
      Q => \EventData_reg_n_0_[74]\,
      R => EventData0
    );
\EventData_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(79),
      D => \EventData[75]_i_1_n_0\,
      Q => \EventData_reg_n_0_[75]\,
      R => EventData0
    );
\EventData_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(79),
      D => \EventData[76]_i_1_n_0\,
      Q => \EventData_reg_n_0_[76]\,
      R => EventData0
    );
\EventData_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(79),
      D => \EventData[77]_i_1_n_0\,
      Q => \EventData_reg_n_0_[77]\,
      R => EventData0
    );
\EventData_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(79),
      D => \EventData[78]_i_1_n_0\,
      Q => \EventData_reg_n_0_[78]\,
      R => EventData0
    );
\EventData_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(79),
      D => \EventData[79]_i_2_n_0\,
      Q => \EventData_reg_n_0_[79]\,
      R => EventData0
    );
\EventData_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(15),
      D => \EventData[103]_i_1_n_0\,
      Q => \EventData_reg_n_0_[7]\,
      R => EventData0
    );
\EventData_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(95),
      D => \EventData[80]_i_1_n_0\,
      Q => \EventData_reg_n_0_[80]\,
      R => EventData0
    );
\EventData_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(95),
      D => \EventData[81]_i_1_n_0\,
      Q => \EventData_reg_n_0_[81]\,
      R => EventData0
    );
\EventData_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(95),
      D => \EventData[82]_i_1_n_0\,
      Q => \EventData_reg_n_0_[82]\,
      R => EventData0
    );
\EventData_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(95),
      D => \EventData[83]_i_1_n_0\,
      Q => \EventData_reg_n_0_[83]\,
      R => EventData0
    );
\EventData_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(95),
      D => \EventData[84]_i_1_n_0\,
      Q => \EventData_reg_n_0_[84]\,
      R => EventData0
    );
\EventData_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(95),
      D => \EventData[85]_i_1_n_0\,
      Q => \EventData_reg_n_0_[85]\,
      R => EventData0
    );
\EventData_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(95),
      D => \EventData[86]_i_1_n_0\,
      Q => \EventData_reg_n_0_[86]\,
      R => EventData0
    );
\EventData_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(95),
      D => \EventData[87]_i_1_n_0\,
      Q => \EventData_reg_n_0_[87]\,
      R => EventData0
    );
\EventData_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(95),
      D => \EventData[88]_i_1_n_0\,
      Q => \EventData_reg_n_0_[88]\,
      R => EventData0
    );
\EventData_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(95),
      D => \EventData[89]_i_1_n_0\,
      Q => \EventData_reg_n_0_[89]\,
      R => EventData0
    );
\EventData_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(15),
      D => \EventData[104]_i_1_n_0\,
      Q => \EventData_reg_n_0_[8]\,
      R => EventData0
    );
\EventData_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(95),
      D => \EventData[90]_i_1_n_0\,
      Q => \EventData_reg_n_0_[90]\,
      R => EventData0
    );
\EventData_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(95),
      D => \EventData[91]_i_1_n_0\,
      Q => \EventData_reg_n_0_[91]\,
      R => EventData0
    );
\EventData_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(95),
      D => \EventData[92]_i_1_n_0\,
      Q => \EventData_reg_n_0_[92]\,
      R => EventData0
    );
\EventData_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(95),
      D => \EventData[93]_i_1_n_0\,
      Q => \EventData_reg_n_0_[93]\,
      R => EventData0
    );
\EventData_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(95),
      D => \EventData[94]_i_1_n_0\,
      Q => \EventData_reg_n_0_[94]\,
      R => EventData0
    );
\EventData_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(95),
      D => \EventData[95]_i_2_n_0\,
      Q => \EventData_reg_n_0_[95]\,
      R => EventData0
    );
\EventData_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(111),
      D => \EventData[96]_i_1_n_0\,
      Q => \EventData_reg_n_0_[96]\,
      R => EventData0
    );
\EventData_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(111),
      D => \EventData[97]_i_1_n_0\,
      Q => \EventData_reg_n_0_[97]\,
      R => EventData0
    );
\EventData_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(111),
      D => \EventData[98]_i_1_n_0\,
      Q => \EventData_reg_n_0_[98]\,
      R => EventData0
    );
\EventData_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(111),
      D => \EventData[99]_i_1_n_0\,
      Q => \EventData_reg_n_0_[99]\,
      R => EventData0
    );
\EventData_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventData(15),
      D => \EventData[105]_i_1_n_0\,
      Q => \EventData_reg_n_0_[9]\,
      R => EventData0
    );
\EventWdCnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C0FFEA"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => EvBuffOut(0),
      I3 => current_state(3),
      I4 => \EventWdCnt_reg_n_0_[0]\,
      O => \EventWdCnt[0]_i_1_n_0\
    );
\EventWdCnt[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BEAE"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => current_state(0),
      O => EventWdCnt
    );
\EventWdCnt[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C0FFEA"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => EvBuffOut(10),
      I3 => current_state(3),
      I4 => \EventWdCnt[10]_i_3_n_0\,
      O => \EventWdCnt[10]_i_2_n_0\
    );
\EventWdCnt[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => \EventWdCnt_reg_n_0_[9]\,
      I1 => \EventWdCnt_reg_n_0_[7]\,
      I2 => \EventWdCnt[6]_i_2_n_0\,
      I3 => \EventWdCnt_reg_n_0_[6]\,
      I4 => \EventWdCnt_reg_n_0_[8]\,
      I5 => \EventWdCnt_reg_n_0_[10]\,
      O => \EventWdCnt[10]_i_3_n_0\
    );
\EventWdCnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEA00C000C0FFEA"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => EvBuffOut(1),
      I3 => current_state(3),
      I4 => \EventWdCnt_reg_n_0_[1]\,
      I5 => \EventWdCnt_reg_n_0_[0]\,
      O => \EventWdCnt[1]_i_1_n_0\
    );
\EventWdCnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C0FFEA"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => EvBuffOut(2),
      I3 => current_state(3),
      I4 => \EventWdCnt[2]_i_2_n_0\,
      O => \EventWdCnt[2]_i_1_n_0\
    );
\EventWdCnt[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \EventWdCnt_reg_n_0_[1]\,
      I1 => \EventWdCnt_reg_n_0_[0]\,
      I2 => \EventWdCnt_reg_n_0_[2]\,
      O => \EventWdCnt[2]_i_2_n_0\
    );
\EventWdCnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C0FFEA"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => EvBuffOut(3),
      I3 => current_state(3),
      I4 => \EventWdCnt[3]_i_2_n_0\,
      O => \EventWdCnt[3]_i_1_n_0\
    );
\EventWdCnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \EventWdCnt_reg_n_0_[2]\,
      I1 => \EventWdCnt_reg_n_0_[0]\,
      I2 => \EventWdCnt_reg_n_0_[1]\,
      I3 => \EventWdCnt_reg_n_0_[3]\,
      O => \EventWdCnt[3]_i_2_n_0\
    );
\EventWdCnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C0FFEA"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => EvBuffOut(4),
      I3 => current_state(3),
      I4 => \EventWdCnt[4]_i_2_n_0\,
      O => \EventWdCnt[4]_i_1_n_0\
    );
\EventWdCnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => \EventWdCnt_reg_n_0_[3]\,
      I1 => \EventWdCnt_reg_n_0_[1]\,
      I2 => \EventWdCnt_reg_n_0_[0]\,
      I3 => \EventWdCnt_reg_n_0_[2]\,
      I4 => \EventWdCnt_reg_n_0_[4]\,
      O => \EventWdCnt[4]_i_2_n_0\
    );
\EventWdCnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C0FFEA"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => EvBuffOut(5),
      I3 => current_state(3),
      I4 => \EventWdCnt[5]_i_2_n_0\,
      O => \EventWdCnt[5]_i_1_n_0\
    );
\EventWdCnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => \EventWdCnt_reg_n_0_[4]\,
      I1 => \EventWdCnt_reg_n_0_[2]\,
      I2 => \EventWdCnt_reg_n_0_[0]\,
      I3 => \EventWdCnt_reg_n_0_[1]\,
      I4 => \EventWdCnt_reg_n_0_[3]\,
      I5 => \EventWdCnt_reg_n_0_[5]\,
      O => \EventWdCnt[5]_i_2_n_0\
    );
\EventWdCnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEA00C000C0FFEA"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => EvBuffOut(6),
      I3 => current_state(3),
      I4 => \EventWdCnt_reg_n_0_[6]\,
      I5 => \EventWdCnt[6]_i_2_n_0\,
      O => \EventWdCnt[6]_i_1_n_0\
    );
\EventWdCnt[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \EventWdCnt_reg_n_0_[4]\,
      I1 => \EventWdCnt_reg_n_0_[2]\,
      I2 => \EventWdCnt_reg_n_0_[0]\,
      I3 => \EventWdCnt_reg_n_0_[1]\,
      I4 => \EventWdCnt_reg_n_0_[3]\,
      I5 => \EventWdCnt_reg_n_0_[5]\,
      O => \EventWdCnt[6]_i_2_n_0\
    );
\EventWdCnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C0FFEA"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => EvBuffOut(7),
      I3 => current_state(3),
      I4 => \EventWdCnt[7]_i_2_n_0\,
      O => \EventWdCnt[7]_i_1_n_0\
    );
\EventWdCnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \EventWdCnt_reg_n_0_[6]\,
      I1 => \EventWdCnt[6]_i_2_n_0\,
      I2 => \EventWdCnt_reg_n_0_[7]\,
      O => \EventWdCnt[7]_i_2_n_0\
    );
\EventWdCnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C0FFEA"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => EvBuffOut(8),
      I3 => current_state(3),
      I4 => \EventWdCnt[8]_i_2_n_0\,
      O => \EventWdCnt[8]_i_1_n_0\
    );
\EventWdCnt[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \EventWdCnt_reg_n_0_[7]\,
      I1 => \EventWdCnt[6]_i_2_n_0\,
      I2 => \EventWdCnt_reg_n_0_[6]\,
      I3 => \EventWdCnt_reg_n_0_[8]\,
      O => \EventWdCnt[8]_i_2_n_0\
    );
\EventWdCnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C0FFEA"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => EvBuffOut(9),
      I3 => current_state(3),
      I4 => \EventWdCnt[9]_i_2_n_0\,
      O => \EventWdCnt[9]_i_1_n_0\
    );
\EventWdCnt[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => \EventWdCnt_reg_n_0_[8]\,
      I1 => \EventWdCnt_reg_n_0_[6]\,
      I2 => \EventWdCnt[6]_i_2_n_0\,
      I3 => \EventWdCnt_reg_n_0_[7]\,
      I4 => \EventWdCnt_reg_n_0_[9]\,
      O => \EventWdCnt[9]_i_2_n_0\
    );
\EventWdCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventWdCnt,
      D => \EventWdCnt[0]_i_1_n_0\,
      Q => \EventWdCnt_reg_n_0_[0]\,
      R => EventData0
    );
\EventWdCnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventWdCnt,
      D => \EventWdCnt[10]_i_2_n_0\,
      Q => \EventWdCnt_reg_n_0_[10]\,
      R => EventData0
    );
\EventWdCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventWdCnt,
      D => \EventWdCnt[1]_i_1_n_0\,
      Q => \EventWdCnt_reg_n_0_[1]\,
      R => EventData0
    );
\EventWdCnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventWdCnt,
      D => \EventWdCnt[2]_i_1_n_0\,
      Q => \EventWdCnt_reg_n_0_[2]\,
      R => EventData0
    );
\EventWdCnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventWdCnt,
      D => \EventWdCnt[3]_i_1_n_0\,
      Q => \EventWdCnt_reg_n_0_[3]\,
      R => EventData0
    );
\EventWdCnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventWdCnt,
      D => \EventWdCnt[4]_i_1_n_0\,
      Q => \EventWdCnt_reg_n_0_[4]\,
      R => EventData0
    );
\EventWdCnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventWdCnt,
      D => \EventWdCnt[5]_i_1_n_0\,
      Q => \EventWdCnt_reg_n_0_[5]\,
      R => EventData0
    );
\EventWdCnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventWdCnt,
      D => \EventWdCnt[6]_i_1_n_0\,
      Q => \EventWdCnt_reg_n_0_[6]\,
      R => EventData0
    );
\EventWdCnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventWdCnt,
      D => \EventWdCnt[7]_i_1_n_0\,
      Q => \EventWdCnt_reg_n_0_[7]\,
      R => EventData0
    );
\EventWdCnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventWdCnt,
      D => \EventWdCnt[8]_i_1_n_0\,
      Q => \EventWdCnt_reg_n_0_[8]\,
      R => EventData0
    );
\EventWdCnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => EventWdCnt,
      D => \EventWdCnt[9]_i_1_n_0\,
      Q => \EventWdCnt_reg_n_0_[9]\,
      R => EventData0
    );
\FSM_onehot_prev_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAEAAAFFFFEAAA"
    )
        port map (
      I0 => DDR3_wrt_data_reg0,
      I1 => \FSM_onehot_prev_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_prev_state[4]_i_2_n_0\,
      I3 => DDR3_rdy,
      I4 => setAddr,
      I5 => latched_transferDDR,
      O => \FSM_onehot_prev_state[1]_i_1_n_0\
    );
\FSM_onehot_prev_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0FFEA"
    )
        port map (
      I0 => \FSM_onehot_prev_state_reg_n_0_[2]\,
      I1 => setAddr,
      I2 => latched_transferDDR,
      I3 => \FSM_onehot_prev_state_reg_n_0_[4]\,
      I4 => DDR3_rdy,
      O => \FSM_onehot_prev_state[2]_i_1_n_0\
    );
\FSM_onehot_prev_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_prev_state_reg_n_0_[2]\,
      I1 => DDR3_rdy,
      O => \FSM_onehot_prev_state[3]_i_1_n_0\
    );
\FSM_onehot_prev_state[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => \FSM_onehot_prev_state_reg_n_0_[3]\,
      I1 => DDR3_rdy,
      I2 => \FSM_onehot_prev_state[4]_i_2_n_0\,
      I3 => \FSM_onehot_prev_state_reg_n_0_[4]\,
      O => \FSM_onehot_prev_state[4]_i_1_n_0\
    );
\FSM_onehot_prev_state[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \RdPageWdCnt_reg_n_0_[2]\,
      I1 => \RdPageWdCnt_reg_n_0_[3]\,
      I2 => \RdPageWdCnt_reg_n_0_[0]\,
      I3 => \RdPageWdCnt_reg_n_0_[1]\,
      O => \FSM_onehot_prev_state[4]_i_2_n_0\
    );
\FSM_onehot_prev_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => '0',
      PRE => EventBuff_i_1_n_0,
      Q => DDR3_wrt_data_reg0
    );
\FSM_onehot_prev_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => EventBuff_i_1_n_0,
      D => \FSM_onehot_prev_state[1]_i_1_n_0\,
      Q => setAddr
    );
\FSM_onehot_prev_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => EventBuff_i_1_n_0,
      D => \FSM_onehot_prev_state[2]_i_1_n_0\,
      Q => \FSM_onehot_prev_state_reg_n_0_[2]\
    );
\FSM_onehot_prev_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => EventBuff_i_1_n_0,
      D => \FSM_onehot_prev_state[3]_i_1_n_0\,
      Q => \FSM_onehot_prev_state_reg_n_0_[3]\
    );
\FSM_onehot_prev_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      CLR => EventBuff_i_1_n_0,
      D => \FSM_onehot_prev_state[4]_i_1_n_0\,
      Q => \FSM_onehot_prev_state_reg_n_0_[4]\
    );
\FSM_sequential_current_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B08BFBF"
    )
        port map (
      I0 => gtOp,
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => empty,
      I4 => current_state(0),
      O => \FSM_sequential_current_state[0]_i_2_n_0\
    );
\FSM_sequential_current_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I1 => current_state(0),
      O => \FSM_sequential_current_state[0]_i_3_n_0\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0074770000777700"
    )
        port map (
      I0 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I1 => current_state(3),
      I2 => current_state(2),
      I3 => current_state(1),
      I4 => current_state(0),
      I5 => empty,
      O => DDRPage_Seq(1)
    );
\FSM_sequential_current_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07707070"
    )
        port map (
      I0 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I1 => current_state(3),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      O => DDRPage_Seq(2)
    );
\FSM_sequential_current_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74444444"
    )
        port map (
      I0 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I1 => current_state(3),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      O => DDRPage_Seq(3)
    );
\FSM_sequential_current_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \FSM_sequential_current_state[3]_i_3_n_0\,
      I1 => \FSM_sequential_current_state[3]_i_4_n_0\,
      I2 => \EventWdCnt_reg_n_0_[1]\,
      I3 => \EventWdCnt_reg_n_0_[0]\,
      I4 => \EventWdCnt_reg_n_0_[2]\,
      O => \FSM_sequential_current_state[3]_i_2_n_0\
    );
\FSM_sequential_current_state[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \EventWdCnt_reg_n_0_[9]\,
      I1 => \EventWdCnt_reg_n_0_[10]\,
      I2 => \EventWdCnt_reg_n_0_[6]\,
      I3 => \EventWdCnt_reg_n_0_[7]\,
      I4 => \EventWdCnt_reg_n_0_[8]\,
      O => \FSM_sequential_current_state[3]_i_3_n_0\
    );
\FSM_sequential_current_state[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \EventWdCnt_reg_n_0_[4]\,
      I1 => \EventWdCnt_reg_n_0_[3]\,
      I2 => \EventWdCnt_reg_n_0_[5]\,
      O => \FSM_sequential_current_state[3]_i_4_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk,
      CE => '1',
      CLR => EventBuff_i_1_n_0,
      D => DDRPage_Seq(0),
      Q => current_state(0)
    );
\FSM_sequential_current_state_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_current_state[0]_i_3_n_0\,
      O => DDRPage_Seq(0),
      S => current_state(3)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk,
      CE => '1',
      CLR => EventBuff_i_1_n_0,
      D => DDRPage_Seq(1),
      Q => current_state(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk,
      CE => '1',
      CLR => EventBuff_i_1_n_0,
      D => DDRPage_Seq(2),
      Q => current_state(2)
    );
\FSM_sequential_current_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SysClk,
      CE => '1',
      CLR => EventBuff_i_1_n_0,
      D => DDRPage_Seq(3),
      Q => current_state(3)
    );
OneDDRPage: component TestDDR_TestDDR_top_0_0_FIFO_128x128
     port map (
      din(127) => \DDRPage_din_reg_n_0_[127]\,
      din(126) => \DDRPage_din_reg_n_0_[126]\,
      din(125) => \DDRPage_din_reg_n_0_[125]\,
      din(124) => \DDRPage_din_reg_n_0_[124]\,
      din(123) => \DDRPage_din_reg_n_0_[123]\,
      din(122) => \DDRPage_din_reg_n_0_[122]\,
      din(121) => \DDRPage_din_reg_n_0_[121]\,
      din(120) => \DDRPage_din_reg_n_0_[120]\,
      din(119) => \DDRPage_din_reg_n_0_[119]\,
      din(118) => \DDRPage_din_reg_n_0_[118]\,
      din(117) => \DDRPage_din_reg_n_0_[117]\,
      din(116) => \DDRPage_din_reg_n_0_[116]\,
      din(115) => \DDRPage_din_reg_n_0_[115]\,
      din(114) => \DDRPage_din_reg_n_0_[114]\,
      din(113) => \DDRPage_din_reg_n_0_[113]\,
      din(112) => \DDRPage_din_reg_n_0_[112]\,
      din(111) => \DDRPage_din_reg_n_0_[111]\,
      din(110) => \DDRPage_din_reg_n_0_[110]\,
      din(109) => \DDRPage_din_reg_n_0_[109]\,
      din(108) => \DDRPage_din_reg_n_0_[108]\,
      din(107) => \DDRPage_din_reg_n_0_[107]\,
      din(106) => \DDRPage_din_reg_n_0_[106]\,
      din(105) => \DDRPage_din_reg_n_0_[105]\,
      din(104) => \DDRPage_din_reg_n_0_[104]\,
      din(103) => \DDRPage_din_reg_n_0_[103]\,
      din(102) => \DDRPage_din_reg_n_0_[102]\,
      din(101) => \DDRPage_din_reg_n_0_[101]\,
      din(100) => \DDRPage_din_reg_n_0_[100]\,
      din(99) => \DDRPage_din_reg_n_0_[99]\,
      din(98) => \DDRPage_din_reg_n_0_[98]\,
      din(97) => \DDRPage_din_reg_n_0_[97]\,
      din(96) => \DDRPage_din_reg_n_0_[96]\,
      din(95) => \DDRPage_din_reg_n_0_[95]\,
      din(94) => \DDRPage_din_reg_n_0_[94]\,
      din(93) => \DDRPage_din_reg_n_0_[93]\,
      din(92) => \DDRPage_din_reg_n_0_[92]\,
      din(91) => \DDRPage_din_reg_n_0_[91]\,
      din(90) => \DDRPage_din_reg_n_0_[90]\,
      din(89) => \DDRPage_din_reg_n_0_[89]\,
      din(88) => \DDRPage_din_reg_n_0_[88]\,
      din(87) => \DDRPage_din_reg_n_0_[87]\,
      din(86) => \DDRPage_din_reg_n_0_[86]\,
      din(85) => \DDRPage_din_reg_n_0_[85]\,
      din(84) => \DDRPage_din_reg_n_0_[84]\,
      din(83) => \DDRPage_din_reg_n_0_[83]\,
      din(82) => \DDRPage_din_reg_n_0_[82]\,
      din(81) => \DDRPage_din_reg_n_0_[81]\,
      din(80) => \DDRPage_din_reg_n_0_[80]\,
      din(79) => \DDRPage_din_reg_n_0_[79]\,
      din(78) => \DDRPage_din_reg_n_0_[78]\,
      din(77) => \DDRPage_din_reg_n_0_[77]\,
      din(76) => \DDRPage_din_reg_n_0_[76]\,
      din(75) => \DDRPage_din_reg_n_0_[75]\,
      din(74) => \DDRPage_din_reg_n_0_[74]\,
      din(73) => \DDRPage_din_reg_n_0_[73]\,
      din(72) => \DDRPage_din_reg_n_0_[72]\,
      din(71) => \DDRPage_din_reg_n_0_[71]\,
      din(70) => \DDRPage_din_reg_n_0_[70]\,
      din(69) => \DDRPage_din_reg_n_0_[69]\,
      din(68) => \DDRPage_din_reg_n_0_[68]\,
      din(67) => \DDRPage_din_reg_n_0_[67]\,
      din(66) => \DDRPage_din_reg_n_0_[66]\,
      din(65) => \DDRPage_din_reg_n_0_[65]\,
      din(64) => \DDRPage_din_reg_n_0_[64]\,
      din(63) => \DDRPage_din_reg_n_0_[63]\,
      din(62) => \DDRPage_din_reg_n_0_[62]\,
      din(61) => \DDRPage_din_reg_n_0_[61]\,
      din(60) => \DDRPage_din_reg_n_0_[60]\,
      din(59) => \DDRPage_din_reg_n_0_[59]\,
      din(58) => \DDRPage_din_reg_n_0_[58]\,
      din(57) => \DDRPage_din_reg_n_0_[57]\,
      din(56) => \DDRPage_din_reg_n_0_[56]\,
      din(55) => \DDRPage_din_reg_n_0_[55]\,
      din(54) => \DDRPage_din_reg_n_0_[54]\,
      din(53) => \DDRPage_din_reg_n_0_[53]\,
      din(52) => \DDRPage_din_reg_n_0_[52]\,
      din(51) => \DDRPage_din_reg_n_0_[51]\,
      din(50) => \DDRPage_din_reg_n_0_[50]\,
      din(49) => \DDRPage_din_reg_n_0_[49]\,
      din(48) => \DDRPage_din_reg_n_0_[48]\,
      din(47) => \DDRPage_din_reg_n_0_[47]\,
      din(46) => \DDRPage_din_reg_n_0_[46]\,
      din(45) => \DDRPage_din_reg_n_0_[45]\,
      din(44) => \DDRPage_din_reg_n_0_[44]\,
      din(43) => \DDRPage_din_reg_n_0_[43]\,
      din(42) => \DDRPage_din_reg_n_0_[42]\,
      din(41) => \DDRPage_din_reg_n_0_[41]\,
      din(40) => \DDRPage_din_reg_n_0_[40]\,
      din(39) => \DDRPage_din_reg_n_0_[39]\,
      din(38) => \DDRPage_din_reg_n_0_[38]\,
      din(37) => \DDRPage_din_reg_n_0_[37]\,
      din(36) => \DDRPage_din_reg_n_0_[36]\,
      din(35) => \DDRPage_din_reg_n_0_[35]\,
      din(34) => \DDRPage_din_reg_n_0_[34]\,
      din(33) => \DDRPage_din_reg_n_0_[33]\,
      din(32) => \DDRPage_din_reg_n_0_[32]\,
      din(31) => \DDRPage_din_reg_n_0_[31]\,
      din(30) => \DDRPage_din_reg_n_0_[30]\,
      din(29) => \DDRPage_din_reg_n_0_[29]\,
      din(28) => \DDRPage_din_reg_n_0_[28]\,
      din(27) => \DDRPage_din_reg_n_0_[27]\,
      din(26) => \DDRPage_din_reg_n_0_[26]\,
      din(25) => \DDRPage_din_reg_n_0_[25]\,
      din(24) => \DDRPage_din_reg_n_0_[24]\,
      din(23) => \DDRPage_din_reg_n_0_[23]\,
      din(22) => \DDRPage_din_reg_n_0_[22]\,
      din(21) => \DDRPage_din_reg_n_0_[21]\,
      din(20) => \DDRPage_din_reg_n_0_[20]\,
      din(19) => \DDRPage_din_reg_n_0_[19]\,
      din(18) => \DDRPage_din_reg_n_0_[18]\,
      din(17) => \DDRPage_din_reg_n_0_[17]\,
      din(16) => \DDRPage_din_reg_n_0_[16]\,
      din(15) => \DDRPage_din_reg_n_0_[15]\,
      din(14) => \DDRPage_din_reg_n_0_[14]\,
      din(13) => \DDRPage_din_reg_n_0_[13]\,
      din(12) => \DDRPage_din_reg_n_0_[12]\,
      din(11) => \DDRPage_din_reg_n_0_[11]\,
      din(10) => \DDRPage_din_reg_n_0_[10]\,
      din(9) => \DDRPage_din_reg_n_0_[9]\,
      din(8) => \DDRPage_din_reg_n_0_[8]\,
      din(7) => \DDRPage_din_reg_n_0_[7]\,
      din(6) => \DDRPage_din_reg_n_0_[6]\,
      din(5) => \DDRPage_din_reg_n_0_[5]\,
      din(4) => \DDRPage_din_reg_n_0_[4]\,
      din(3) => \DDRPage_din_reg_n_0_[3]\,
      din(2) => \DDRPage_din_reg_n_0_[2]\,
      din(1) => \DDRPage_din_reg_n_0_[1]\,
      din(0) => \DDRPage_din_reg_n_0_[0]\,
      dout(127 downto 0) => DDRPage_dout(127 downto 0),
      empty => NLW_OneDDRPage_empty_UNCONNECTED,
      full => NLW_OneDDRPage_full_UNCONNECTED,
      rd_clk => rd_clk,
      rd_data_count(7 downto 0) => NLW_OneDDRPage_rd_data_count_UNCONNECTED(7 downto 0),
      rd_en => DDRPage_rd_en_reg_n_0,
      rd_rst_busy => NLW_OneDDRPage_rd_rst_busy_UNCONNECTED,
      rst => rst,
      wr_clk => SysClk,
      wr_data_count(7 downto 0) => NLW_OneDDRPage_wr_data_count_UNCONNECTED(7 downto 0),
      wr_en => DDRPage_wr_en_reg_n_0,
      wr_rst_busy => NLW_OneDDRPage_wr_rst_busy_UNCONNECTED
    );
\PageWdCnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \PageWdCnt_reg_n_0_[0]\,
      O => plusOp_0(0)
    );
\PageWdCnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \PageWdCnt_reg_n_0_[0]\,
      I1 => \PageWdCnt_reg_n_0_[1]\,
      O => plusOp_0(1)
    );
\PageWdCnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \PageWdCnt_reg_n_0_[0]\,
      I1 => \PageWdCnt_reg_n_0_[1]\,
      I2 => \PageWdCnt_reg_n_0_[2]\,
      O => plusOp_0(2)
    );
\PageWdCnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => current_state(3),
      O => \PageWdCnt[3]_i_1_n_0\
    );
\PageWdCnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4400F400440044FF"
    )
        port map (
      I0 => \PageWdCnt[3]_i_4_n_0\,
      I1 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I2 => current_state(0),
      I3 => current_state(3),
      I4 => current_state(1),
      I5 => current_state(2),
      O => PageWdCnt
    );
\PageWdCnt[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \PageWdCnt_reg_n_0_[1]\,
      I1 => \PageWdCnt_reg_n_0_[0]\,
      I2 => \PageWdCnt_reg_n_0_[2]\,
      I3 => \PageWdCnt_reg_n_0_[3]\,
      O => plusOp_0(3)
    );
\PageWdCnt[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \FSM_sequential_current_state[3]_i_3_n_0\,
      I1 => \FSM_sequential_current_state[3]_i_4_n_0\,
      I2 => \EventWdCnt_reg_n_0_[0]\,
      I3 => \EventWdCnt_reg_n_0_[1]\,
      I4 => \EventWdCnt_reg_n_0_[2]\,
      O => \PageWdCnt[3]_i_4_n_0\
    );
\PageWdCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => PageWdCnt,
      D => plusOp_0(0),
      Q => \PageWdCnt_reg_n_0_[0]\,
      R => \PageWdCnt[3]_i_1_n_0\
    );
\PageWdCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => PageWdCnt,
      D => plusOp_0(1),
      Q => \PageWdCnt_reg_n_0_[1]\,
      R => \PageWdCnt[3]_i_1_n_0\
    );
\PageWdCnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => PageWdCnt,
      D => plusOp_0(2),
      Q => \PageWdCnt_reg_n_0_[2]\,
      R => \PageWdCnt[3]_i_1_n_0\
    );
\PageWdCnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => PageWdCnt,
      D => plusOp_0(3),
      Q => \PageWdCnt_reg_n_0_[3]\,
      R => \PageWdCnt[3]_i_1_n_0\
    );
\RdPageWdCnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEFEEEFEEEFE"
    )
        port map (
      I0 => setAddr,
      I1 => \FSM_onehot_prev_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_prev_state_reg_n_0_[4]\,
      I3 => \RdPageWdCnt_reg_n_0_[0]\,
      I4 => \FSM_onehot_prev_state_reg_n_0_[2]\,
      I5 => latched_PageWdCnt(0),
      O => \RdPageWdCnt[0]_i_1_n_0\
    );
\RdPageWdCnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAAEEAAEEAAE"
    )
        port map (
      I0 => \RdPageWdCnt[2]_i_2_n_0\,
      I1 => \FSM_onehot_prev_state_reg_n_0_[4]\,
      I2 => \RdPageWdCnt_reg_n_0_[1]\,
      I3 => \RdPageWdCnt_reg_n_0_[0]\,
      I4 => \FSM_onehot_prev_state_reg_n_0_[2]\,
      I5 => latched_PageWdCnt(1),
      O => \RdPageWdCnt[1]_i_1_n_0\
    );
\RdPageWdCnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAAEEAAEEAAE"
    )
        port map (
      I0 => \RdPageWdCnt[2]_i_2_n_0\,
      I1 => \FSM_onehot_prev_state_reg_n_0_[4]\,
      I2 => \RdPageWdCnt_reg_n_0_[2]\,
      I3 => \RdPageWdCnt[2]_i_3_n_0\,
      I4 => \FSM_onehot_prev_state_reg_n_0_[2]\,
      I5 => latched_PageWdCnt(2),
      O => \RdPageWdCnt[2]_i_1_n_0\
    );
\RdPageWdCnt[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_prev_state_reg_n_0_[3]\,
      I1 => setAddr,
      O => \RdPageWdCnt[2]_i_2_n_0\
    );
\RdPageWdCnt[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \RdPageWdCnt_reg_n_0_[0]\,
      I1 => \RdPageWdCnt_reg_n_0_[1]\,
      O => \RdPageWdCnt[2]_i_3_n_0\
    );
\RdPageWdCnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_prev_state_reg_n_0_[2]\,
      I1 => DDR3_wrt_rdy,
      I2 => \FSM_onehot_prev_state_reg_n_0_[4]\,
      O => RdPageWdCnt
    );
\RdPageWdCnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFE"
    )
        port map (
      I0 => setAddr,
      I1 => \FSM_onehot_prev_state_reg_n_0_[3]\,
      I2 => \RdPageWdCnt[3]_i_3_n_0\,
      I3 => \FSM_onehot_prev_state_reg_n_0_[2]\,
      I4 => latched_PageWdCnt(3),
      O => \RdPageWdCnt[3]_i_2_n_0\
    );
\RdPageWdCnt[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888882"
    )
        port map (
      I0 => \FSM_onehot_prev_state_reg_n_0_[4]\,
      I1 => \RdPageWdCnt_reg_n_0_[3]\,
      I2 => \RdPageWdCnt_reg_n_0_[1]\,
      I3 => \RdPageWdCnt_reg_n_0_[0]\,
      I4 => \RdPageWdCnt_reg_n_0_[2]\,
      O => \RdPageWdCnt[3]_i_3_n_0\
    );
\RdPageWdCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => RdPageWdCnt,
      D => \RdPageWdCnt[0]_i_1_n_0\,
      Q => \RdPageWdCnt_reg_n_0_[0]\,
      R => DDR3_wrt_data_reg0
    );
\RdPageWdCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => RdPageWdCnt,
      D => \RdPageWdCnt[1]_i_1_n_0\,
      Q => \RdPageWdCnt_reg_n_0_[1]\,
      R => DDR3_wrt_data_reg0
    );
\RdPageWdCnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => RdPageWdCnt,
      D => \RdPageWdCnt[2]_i_1_n_0\,
      Q => \RdPageWdCnt_reg_n_0_[2]\,
      R => DDR3_wrt_data_reg0
    );
\RdPageWdCnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => RdPageWdCnt,
      D => \RdPageWdCnt[3]_i_2_n_0\,
      Q => \RdPageWdCnt_reg_n_0_[3]\,
      R => DDR3_wrt_data_reg0
    );
U0i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => DDRSeqStat(3)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sw(3),
      I1 => sw(0),
      I2 => sw(2),
      I3 => sw(1),
      O => eqOp2_in
    );
\counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_3_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => eqOp2_in,
      CLR => EventBuff_i_1_n_0,
      D => \counter_reg[0]_i_2_n_7\,
      Q => counter_reg(0)
    );
\counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_2_n_0\,
      CO(2) => \counter_reg[0]_i_2_n_1\,
      CO(1) => \counter_reg[0]_i_2_n_2\,
      CO(0) => \counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_2_n_4\,
      O(2) => \counter_reg[0]_i_2_n_5\,
      O(1) => \counter_reg[0]_i_2_n_6\,
      O(0) => \counter_reg[0]_i_2_n_7\,
      S(3 downto 1) => counter_reg(3 downto 1),
      S(0) => \counter[0]_i_3_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => eqOp2_in,
      CLR => EventBuff_i_1_n_0,
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => eqOp2_in,
      CLR => EventBuff_i_1_n_0,
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => eqOp2_in,
      CLR => EventBuff_i_1_n_0,
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12)
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \NLW_counter_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => counter_reg(15 downto 12)
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => eqOp2_in,
      CLR => EventBuff_i_1_n_0,
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => eqOp2_in,
      CLR => EventBuff_i_1_n_0,
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => eqOp2_in,
      CLR => EventBuff_i_1_n_0,
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => eqOp2_in,
      CLR => EventBuff_i_1_n_0,
      D => \counter_reg[0]_i_2_n_6\,
      Q => counter_reg(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => eqOp2_in,
      CLR => EventBuff_i_1_n_0,
      D => \counter_reg[0]_i_2_n_5\,
      Q => counter_reg(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => eqOp2_in,
      CLR => EventBuff_i_1_n_0,
      D => \counter_reg[0]_i_2_n_4\,
      Q => counter_reg(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => eqOp2_in,
      CLR => EventBuff_i_1_n_0,
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4)
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_2_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_reg(7 downto 4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => eqOp2_in,
      CLR => EventBuff_i_1_n_0,
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => eqOp2_in,
      CLR => EventBuff_i_1_n_0,
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => eqOp2_in,
      CLR => EventBuff_i_1_n_0,
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => eqOp2_in,
      CLR => EventBuff_i_1_n_0,
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8)
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_reg(11 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => eqOp2_in,
      CLR => EventBuff_i_1_n_0,
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9)
    );
first_iter_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => reset_count_reg(6),
      I1 => \reset_count[7]_i_2_n_0\,
      I2 => reset_count_reg(5),
      I3 => reset_count_reg(7),
      I4 => rst,
      O => first_iter_i_1_n_0
    );
first_iter_reg: unisim.vcomponents.FDPE
     port map (
      C => SysClk,
      CE => '1',
      D => first_iter_i_1_n_0,
      PRE => EventBuff_i_1_n_0,
      Q => rst
    );
\generateILA0.ila\: component TestDDR_TestDDR_top_0_0_ila_0
     port map (
      clk => SysClk,
      probe0(27 downto 0) => DDR3_addr(27 downto 0),
      probe1(2 downto 0) => DDR3_cmd(2 downto 0),
      probe10(0) => DDR3_rdy,
      probe11(0) => DDR3_wrt_rdy,
      probe12(3 downto 0) => DDRSeqStat(3 downto 0),
      probe2(0) => DDR3_en,
      probe3(127 downto 0) => DDR3_wrt_data(127 downto 0),
      probe4(0) => DDR3_wrt_end,
      probe5(15 downto 0) => DDR3_wrt_mask(15 downto 0),
      probe6(0) => DDR3_wrt_en,
      probe7(127 downto 0) => DDR3_rd_data(127 downto 0),
      probe8(0) => DDR3_rd_data_end,
      probe9(0) => DDR3_rd_data_valid
    );
gtOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gtOp_carry_n_0,
      CO(2) => gtOp_carry_n_1,
      CO(1) => gtOp_carry_n_2,
      CO(0) => gtOp_carry_n_3,
      CYINIT => '0',
      DI(3) => gtOp_carry_i_1_n_0,
      DI(2) => gtOp_carry_i_2_n_0,
      DI(1) => gtOp_carry_i_3_n_0,
      DI(0) => gtOp_carry_i_4_n_0,
      O(3 downto 0) => NLW_gtOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => gtOp_carry_i_5_n_0,
      S(2) => gtOp_carry_i_6_n_0,
      S(1) => gtOp_carry_i_7_n_0,
      S(0) => gtOp_carry_i_8_n_0
    );
\gtOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gtOp_carry_n_0,
      CO(3 downto 2) => \NLW_gtOp_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => gtOp,
      CO(0) => \gtOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \gtOp_carry__0_i_1_n_0\,
      DI(0) => \gtOp_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_gtOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \gtOp_carry__0_i_3_n_0\,
      S(0) => \gtOp_carry__0_i_4_n_0\
    );
\gtOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EvBuffWdsUsed(10),
      I1 => \EventWdCnt_reg_n_0_[10]\,
      O => \gtOp_carry__0_i_1_n_0\
    );
\gtOp_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => EvBuffWdsUsed(8),
      I1 => \EventWdCnt_reg_n_0_[8]\,
      I2 => \EventWdCnt_reg_n_0_[9]\,
      I3 => EvBuffWdsUsed(9),
      O => \gtOp_carry__0_i_2_n_0\
    );
\gtOp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \EventWdCnt_reg_n_0_[10]\,
      I1 => EvBuffWdsUsed(10),
      O => \gtOp_carry__0_i_3_n_0\
    );
\gtOp_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => EvBuffWdsUsed(8),
      I1 => \EventWdCnt_reg_n_0_[8]\,
      I2 => EvBuffWdsUsed(9),
      I3 => \EventWdCnt_reg_n_0_[9]\,
      O => \gtOp_carry__0_i_4_n_0\
    );
gtOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => EvBuffWdsUsed(6),
      I1 => \EventWdCnt_reg_n_0_[6]\,
      I2 => \EventWdCnt_reg_n_0_[7]\,
      I3 => EvBuffWdsUsed(7),
      O => gtOp_carry_i_1_n_0
    );
gtOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => EvBuffWdsUsed(4),
      I1 => \EventWdCnt_reg_n_0_[4]\,
      I2 => \EventWdCnt_reg_n_0_[5]\,
      I3 => EvBuffWdsUsed(5),
      O => gtOp_carry_i_2_n_0
    );
gtOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => EvBuffWdsUsed(2),
      I1 => \EventWdCnt_reg_n_0_[2]\,
      I2 => \EventWdCnt_reg_n_0_[3]\,
      I3 => EvBuffWdsUsed(3),
      O => gtOp_carry_i_3_n_0
    );
gtOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => EvBuffWdsUsed(0),
      I1 => \EventWdCnt_reg_n_0_[0]\,
      I2 => \EventWdCnt_reg_n_0_[1]\,
      I3 => EvBuffWdsUsed(1),
      O => gtOp_carry_i_4_n_0
    );
gtOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => EvBuffWdsUsed(6),
      I1 => \EventWdCnt_reg_n_0_[6]\,
      I2 => EvBuffWdsUsed(7),
      I3 => \EventWdCnt_reg_n_0_[7]\,
      O => gtOp_carry_i_5_n_0
    );
gtOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => EvBuffWdsUsed(4),
      I1 => \EventWdCnt_reg_n_0_[4]\,
      I2 => EvBuffWdsUsed(5),
      I3 => \EventWdCnt_reg_n_0_[5]\,
      O => gtOp_carry_i_6_n_0
    );
gtOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => EvBuffWdsUsed(2),
      I1 => \EventWdCnt_reg_n_0_[2]\,
      I2 => EvBuffWdsUsed(3),
      I3 => \EventWdCnt_reg_n_0_[3]\,
      O => gtOp_carry_i_7_n_0
    );
gtOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => EvBuffWdsUsed(0),
      I1 => \EventWdCnt_reg_n_0_[0]\,
      I2 => EvBuffWdsUsed(1),
      I3 => \EventWdCnt_reg_n_0_[1]\,
      O => gtOp_carry_i_8_n_0
    );
\latched_PageWdCnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => transferDDR_reg_n_0,
      CE => '1',
      CLR => rst_transferDDR_reg_inv_n_0,
      D => \PageWdCnt_reg_n_0_[0]\,
      Q => latched_PageWdCnt(0)
    );
\latched_PageWdCnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => transferDDR_reg_n_0,
      CE => '1',
      CLR => rst_transferDDR_reg_inv_n_0,
      D => \PageWdCnt_reg_n_0_[1]\,
      Q => latched_PageWdCnt(1)
    );
\latched_PageWdCnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => transferDDR_reg_n_0,
      CE => '1',
      CLR => rst_transferDDR_reg_inv_n_0,
      D => \PageWdCnt_reg_n_0_[2]\,
      Q => latched_PageWdCnt(2)
    );
\latched_PageWdCnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => transferDDR_reg_n_0,
      CE => '1',
      CLR => rst_transferDDR_reg_inv_n_0,
      D => \PageWdCnt_reg_n_0_[3]\,
      Q => latched_PageWdCnt(3)
    );
latched_transferDDR_reg: unisim.vcomponents.FDCE
     port map (
      C => transferDDR_reg_n_0,
      CE => '1',
      CLR => rst_transferDDR_reg_inv_n_0,
      D => '1',
      Q => latched_transferDDR
    );
\led_4bits_tri_o[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => setAddr,
      I1 => DDR3_wrt_data_reg0,
      I2 => \FSM_onehot_prev_state_reg_n_0_[4]\,
      I3 => \^led_4bits_tri_o\(0),
      O => \led_4bits_tri_o[0]_i_1_n_0\
    );
\led_4bits_tri_o[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F1F0"
    )
        port map (
      I0 => setAddr,
      I1 => DDR3_wrt_data_reg0,
      I2 => \FSM_onehot_prev_state_reg_n_0_[4]\,
      I3 => \^led_4bits_tri_o\(1),
      O => \led_4bits_tri_o[1]_i_1_n_0\
    );
\led_4bits_tri_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \led_4bits_tri_o[0]_i_1_n_0\,
      Q => \^led_4bits_tri_o\(0),
      R => '0'
    );
\led_4bits_tri_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \led_4bits_tri_o[1]_i_1_n_0\,
      Q => \^led_4bits_tri_o\(1),
      R => '0'
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => DDR3_addr(4),
      DI(0) => '0',
      O(3) => plusOp_carry_n_4,
      O(2) => plusOp_carry_n_5,
      O(1) => plusOp_carry_n_6,
      O(0) => plusOp_carry_n_7,
      S(3 downto 2) => DDR3_addr(6 downto 5),
      S(1) => plusOp_carry_i_1_n_0,
      S(0) => DDR3_addr(3)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__0_n_4\,
      O(2) => \plusOp_carry__0_n_5\,
      O(1) => \plusOp_carry__0_n_6\,
      O(0) => \plusOp_carry__0_n_7\,
      S(3 downto 0) => DDR3_addr(10 downto 7)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__1_n_4\,
      O(2) => \plusOp_carry__1_n_5\,
      O(1) => \plusOp_carry__1_n_6\,
      O(0) => \plusOp_carry__1_n_7\,
      S(3 downto 0) => DDR3_addr(14 downto 11)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \plusOp_carry__2_n_0\,
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__2_n_4\,
      O(2) => \plusOp_carry__2_n_5\,
      O(1) => \plusOp_carry__2_n_6\,
      O(0) => \plusOp_carry__2_n_7\,
      S(3 downto 0) => DDR3_addr(18 downto 15)
    );
\plusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__2_n_0\,
      CO(3) => \plusOp_carry__3_n_0\,
      CO(2) => \plusOp_carry__3_n_1\,
      CO(1) => \plusOp_carry__3_n_2\,
      CO(0) => \plusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__3_n_4\,
      O(2) => \plusOp_carry__3_n_5\,
      O(1) => \plusOp_carry__3_n_6\,
      O(0) => \plusOp_carry__3_n_7\,
      S(3 downto 0) => DDR3_addr(22 downto 19)
    );
\plusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__3_n_0\,
      CO(3) => \plusOp_carry__4_n_0\,
      CO(2) => \plusOp_carry__4_n_1\,
      CO(1) => \plusOp_carry__4_n_2\,
      CO(0) => \plusOp_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__4_n_4\,
      O(2) => \plusOp_carry__4_n_5\,
      O(1) => \plusOp_carry__4_n_6\,
      O(0) => \plusOp_carry__4_n_7\,
      S(3 downto 0) => DDR3_addr(26 downto 23)
    );
\plusOp_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__4_n_0\,
      CO(3 downto 0) => \NLW_plusOp_carry__5_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_plusOp_carry__5_O_UNCONNECTED\(3 downto 1),
      O(0) => \plusOp_carry__5_n_7\,
      S(3 downto 1) => B"000",
      S(0) => DDR3_addr(27)
    );
plusOp_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DDR3_addr(4),
      O => plusOp_carry_i_1_n_0
    );
\reset_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_count_reg(0),
      O => plusOp(0)
    );
\reset_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reset_count_reg(0),
      I1 => reset_count_reg(1),
      O => plusOp(1)
    );
\reset_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => reset_count_reg(2),
      I1 => reset_count_reg(0),
      I2 => reset_count_reg(1),
      O => plusOp(2)
    );
\reset_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => reset_count_reg(3),
      I1 => reset_count_reg(1),
      I2 => reset_count_reg(0),
      I3 => reset_count_reg(2),
      O => plusOp(3)
    );
\reset_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => reset_count_reg(4),
      I1 => reset_count_reg(2),
      I2 => reset_count_reg(0),
      I3 => reset_count_reg(1),
      I4 => reset_count_reg(3),
      O => plusOp(4)
    );
\reset_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => reset_count_reg(5),
      I1 => reset_count_reg(2),
      I2 => reset_count_reg(0),
      I3 => reset_count_reg(1),
      I4 => reset_count_reg(3),
      I5 => reset_count_reg(4),
      O => plusOp(5)
    );
\reset_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => reset_count_reg(6),
      I1 => \reset_count[7]_i_2_n_0\,
      I2 => reset_count_reg(5),
      O => plusOp(6)
    );
\reset_count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => reset_count_reg(7),
      I1 => reset_count_reg(5),
      I2 => \reset_count[7]_i_2_n_0\,
      I3 => reset_count_reg(6),
      O => plusOp(7)
    );
\reset_count[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => reset_count_reg(4),
      I1 => reset_count_reg(3),
      I2 => reset_count_reg(1),
      I3 => reset_count_reg(0),
      I4 => reset_count_reg(2),
      O => \reset_count[7]_i_2_n_0\
    );
\reset_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => '1',
      CLR => EventBuff_i_1_n_0,
      D => plusOp(0),
      Q => reset_count_reg(0)
    );
\reset_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => '1',
      CLR => EventBuff_i_1_n_0,
      D => plusOp(1),
      Q => reset_count_reg(1)
    );
\reset_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => '1',
      CLR => EventBuff_i_1_n_0,
      D => plusOp(2),
      Q => reset_count_reg(2)
    );
\reset_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => '1',
      CLR => EventBuff_i_1_n_0,
      D => plusOp(3),
      Q => reset_count_reg(3)
    );
\reset_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => '1',
      CLR => EventBuff_i_1_n_0,
      D => plusOp(4),
      Q => reset_count_reg(4)
    );
\reset_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => '1',
      CLR => EventBuff_i_1_n_0,
      D => plusOp(5),
      Q => reset_count_reg(5)
    );
\reset_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => '1',
      CLR => EventBuff_i_1_n_0,
      D => plusOp(6),
      Q => reset_count_reg(6)
    );
\reset_count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => '1',
      CLR => EventBuff_i_1_n_0,
      D => plusOp(7),
      Q => reset_count_reg(7)
    );
\rgb_led_tri_o[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDCC"
    )
        port map (
      I0 => setAddr,
      I1 => DDR3_wrt_data_reg0,
      I2 => \FSM_onehot_prev_state_reg_n_0_[4]\,
      I3 => \^rgb_led_tri_o\(0),
      O => \rgb_led_tri_o[0]_i_1_n_0\
    );
\rgb_led_tri_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \rgb_led_tri_o[0]_i_1_n_0\,
      Q => \^rgb_led_tri_o\(0),
      R => '0'
    );
rst_transferDDR_inv_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \FSM_onehot_prev_state_reg_n_0_[3]\,
      I1 => setAddr,
      I2 => \FSM_onehot_prev_state_reg_n_0_[4]\,
      O => rst_transferDDR
    );
rst_transferDDR_reg_inv: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => rst_transferDDR,
      Q => rst_transferDDR_reg_inv_n_0,
      R => '0'
    );
setAddr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1050"
    )
        port map (
      I0 => DDR3_wrt_data_reg0,
      I1 => \FSM_onehot_prev_state_reg_n_0_[4]\,
      I2 => setAddr_reg_n_0,
      I3 => DDR3_wrt_rdy,
      I4 => setAddr,
      O => setAddr_i_1_n_0
    );
setAddr_reg: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => setAddr_i_1_n_0,
      Q => setAddr_reg_n_0,
      R => '0'
    );
sys_rst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => reset_count_reg(7),
      I1 => reset_count_reg(5),
      I2 => \reset_count[7]_i_2_n_0\,
      I3 => reset_count_reg(6),
      I4 => rst,
      I5 => sys_rst,
      O => sys_rst_i_1_n_0
    );
sys_rst_reg: unisim.vcomponents.FDCE
     port map (
      C => SysClk,
      CE => '1',
      CLR => EventBuff_i_1_n_0,
      D => sys_rst_i_1_n_0,
      Q => sys_rst
    );
transferDDR_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF020202020"
    )
        port map (
      I0 => \FSM_sequential_current_state[3]_i_2_n_0\,
      I1 => \PageWdCnt[3]_i_4_n_0\,
      I2 => current_state(3),
      I3 => current_state(1),
      I4 => current_state(2),
      I5 => transferDDR_reg_n_0,
      O => transferDDR_i_1_n_0
    );
transferDDR_reg: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => '1',
      D => transferDDR_i_1_n_0,
      Q => transferDDR_reg_n_0,
      R => '0'
    );
\uBunch[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(2),
      I2 => current_state(0),
      I3 => current_state(1),
      O => EventData0
    );
\uBunch[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => current_state(2),
      I3 => current_state(0),
      O => uBunch(14)
    );
\uBunch_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => uBunch(14),
      D => EvBuffOut(0),
      Q => \uBunch_reg_n_0_[0]\,
      R => EventData0
    );
\uBunch_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => uBunch(14),
      D => EvBuffOut(10),
      Q => \uBunch_reg_n_0_[10]\,
      R => EventData0
    );
\uBunch_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => uBunch(14),
      D => EvBuffOut(11),
      Q => \uBunch_reg_n_0_[11]\,
      R => EventData0
    );
\uBunch_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => uBunch(14),
      D => EvBuffOut(12),
      Q => \uBunch_reg_n_0_[12]\,
      R => EventData0
    );
\uBunch_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => uBunch(14),
      D => EvBuffOut(13),
      Q => \uBunch_reg_n_0_[13]\,
      R => EventData0
    );
\uBunch_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => uBunch(14),
      D => EvBuffOut(14),
      Q => \uBunch_reg_n_0_[14]\,
      R => EventData0
    );
\uBunch_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => uBunch(14),
      D => EvBuffOut(1),
      Q => \uBunch_reg_n_0_[1]\,
      R => EventData0
    );
\uBunch_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => uBunch(14),
      D => EvBuffOut(2),
      Q => \uBunch_reg_n_0_[2]\,
      R => EventData0
    );
\uBunch_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => uBunch(14),
      D => EvBuffOut(3),
      Q => \uBunch_reg_n_0_[3]\,
      R => EventData0
    );
\uBunch_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => uBunch(14),
      D => EvBuffOut(4),
      Q => \uBunch_reg_n_0_[4]\,
      R => EventData0
    );
\uBunch_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => uBunch(14),
      D => EvBuffOut(5),
      Q => \uBunch_reg_n_0_[5]\,
      R => EventData0
    );
\uBunch_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => uBunch(14),
      D => EvBuffOut(6),
      Q => \uBunch_reg_n_0_[6]\,
      R => EventData0
    );
\uBunch_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => uBunch(14),
      D => EvBuffOut(7),
      Q => \uBunch_reg_n_0_[7]\,
      R => EventData0
    );
\uBunch_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => uBunch(14),
      D => EvBuffOut(8),
      Q => \uBunch_reg_n_0_[8]\,
      R => EventData0
    );
\uBunch_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => SysClk,
      CE => uBunch(14),
      D => EvBuffOut(9),
      Q => \uBunch_reg_n_0_[9]\,
      R => EventData0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TestDDR_TestDDR_top_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TestDDR_TestDDR_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of TestDDR_TestDDR_top_0_0 : entity is "TestDDR_TestDDR_top_0_0,TestDDR_top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of TestDDR_TestDDR_top_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of TestDDR_TestDDR_top_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of TestDDR_TestDDR_top_0_0 : entity is "TestDDR_top,Vivado 2023.1";
end TestDDR_TestDDR_top_0_0;

architecture STRUCTURE of TestDDR_TestDDR_top_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^led_4bits_tri_o\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^rgb_led_tri_o\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of RESET_N : signal is "xilinx.com:signal:reset:1.0 RESET_N RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of RESET_N : signal is "XIL_INTERFACENAME RESET_N, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  led_4bits_tri_o(3) <= \<const0>\;
  led_4bits_tri_o(2) <= \<const0>\;
  led_4bits_tri_o(1 downto 0) <= \^led_4bits_tri_o\(1 downto 0);
  rgb_led_tri_o(5) <= \<const0>\;
  rgb_led_tri_o(4) <= \<const0>\;
  rgb_led_tri_o(3) <= \<const0>\;
  rgb_led_tri_o(2) <= \<const0>\;
  rgb_led_tri_o(1) <= \<const0>\;
  rgb_led_tri_o(0) <= \^rgb_led_tri_o\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.TestDDR_TestDDR_top_0_0_TestDDR_top
     port map (
      BA(2 downto 0) => BA(2 downto 0),
      CAS => CAS,
      CS(0) => CS(0),
      Clk_100MHz => Clk_100MHz,
      Clk_200MHz => Clk_200MHz,
      CpldRst => CpldRst,
      DDR_ADDR(13 downto 0) => DDR_ADDR(13 downto 0),
      DDR_CKE(0) => DDR_CKE(0),
      DDR_CLKN(0) => DDR_CLKN(0),
      DDR_CLKP(0) => DDR_CLKP(0),
      DDR_DATA(15 downto 0) => DDR_DATA(15 downto 0),
      DDR_WE => DDR_WE,
      DM(1 downto 0) => DM(1 downto 0),
      ODT(0) => ODT(0),
      RAS => RAS,
      RESET_N => RESET_N,
      SysClk => SysClk,
      ddr3_dqs_n(1) => UDQS_N,
      ddr3_dqs_n(0) => UDQS_P,
      ddr3_dqs_p(1) => LDQS_N,
      ddr3_dqs_p(0) => LDQS_P,
      led_4bits_tri_o(1 downto 0) => \^led_4bits_tri_o\(1 downto 0),
      rgb_led_tri_o(0) => \^rgb_led_tri_o\(0),
      sw(3 downto 0) => sw(3 downto 0)
    );
end STRUCTURE;
