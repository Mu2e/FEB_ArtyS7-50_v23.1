create_clock -period 5.000 -name Clk_200MHz -waveform {0.000 2.500} [get_ports Clk_200MHz]
create_clock -period 6.250 -name SysClk -waveform {0.000 3.125} [get_ports SysClk]
set_false_path -from [get_clocks Clk_200MHz] -to [get_clocks clk_pll_i]



set_property IOSTANDARD SSTL135 [get_ports Clk_200MHz]
set_property PACKAGE_PIN R2 [get_ports Clk_100MHz]
set_property PACKAGE_PIN G16 [get_ports Clk_200MHz]
set_property PACKAGE_PIN D18 [get_ports SysClk]
set_property IOSTANDARD SSTL135 [get_ports SysClk]
set_property PACKAGE_PIN A8 [get_ports GPI0_P]
set_property IOSTANDARD TMDS_33 [get_ports GPI0_P]
set_property IOSTANDARD TMDS_33 [get_ports GPI0_N]
set_property IOSTANDARD LVCMOS33 [get_ports GPI1]
set_property PACKAGE_PIN A2 [get_ports GPI1]
set_property IOSTANDARD LVCMOS33 [get_ports Pulse]
set_property PACKAGE_PIN A3 [get_ports Pulse]
set_property IOSTANDARD LVCMOS33 [get_ports PulseSel]
set_property PACKAGE_PIN A4 [get_ports PulseSel]
set_property IOSTANDARD SSTL135 [get_ports Clk_80MHz]
set_property PACKAGE_PIN D14 [get_ports Clk_80MHz]



connect_debug_port u_ila_0/probe13 [get_nets [list LEDSrc]]

connect_debug_port u_ila_0/probe7 [get_nets [list {AFE_DataPath_inst/Input_Seqs[0][0][0]} {AFE_DataPath_inst/Input_Seqs[0][0][1]} {AFE_DataPath_inst/Input_Seqs[0][0][2]}]]
connect_debug_port u_ila_0/probe17 [get_nets [list {AFE_DataPath_inst/iWrtDL[1][0]} {AFE_DataPath_inst/iWrtDL[1][1]}]]
connect_debug_port u_ila_0/probe18 [get_nets [list {AFE_DataPath_inst/iWrtDL[0][0]} {AFE_DataPath_inst/iWrtDL[0][1]}]]
connect_debug_port u_ila_0/probe19 [get_nets [list {AFE_DataPath_inst/uBunchOffset[1][0]} {AFE_DataPath_inst/uBunchOffset[1][1]} {AFE_DataPath_inst/uBunchOffset[1][2]} {AFE_DataPath_inst/uBunchOffset[1][3]} {AFE_DataPath_inst/uBunchOffset[1][4]} {AFE_DataPath_inst/uBunchOffset[1][5]} {AFE_DataPath_inst/uBunchOffset[1][6]} {AFE_DataPath_inst/uBunchOffset[1][7]} {AFE_DataPath_inst/uBunchOffset[1][8]} {AFE_DataPath_inst/uBunchOffset[1][9]} {AFE_DataPath_inst/uBunchOffset[1][10]} {AFE_DataPath_inst/uBunchOffset[1][11]}]]
connect_debug_port u_ila_2/probe0 [get_nets [list AFE_DataPath_inst/AsyncRst]]


connect_debug_port u_ila_0/probe5 [get_nets [list {EventBuilder_logic/EventWdCnt[0]} {EventBuilder_logic/EventWdCnt[1]} {EventBuilder_logic/EventWdCnt[2]} {EventBuilder_logic/EventWdCnt[3]} {EventBuilder_logic/EventWdCnt[4]} {EventBuilder_logic/EventWdCnt[5]} {EventBuilder_logic/EventWdCnt[6]} {EventBuilder_logic/EventWdCnt[7]} {EventBuilder_logic/EventWdCnt[8]} {EventBuilder_logic/EventWdCnt[9]} {EventBuilder_logic/EventWdCnt[10]} {EventBuilder_logic/EventWdCnt[11]} {EventBuilder_logic/EventWdCnt[12]} {EventBuilder_logic/EventWdCnt[13]} {EventBuilder_logic/EventWdCnt[14]} {EventBuilder_logic/EventWdCnt[15]}]]
connect_debug_port u_ila_0/probe7 [get_nets [list {EventBuilder_logic/Read_Seq_Stat[0]} {EventBuilder_logic/Read_Seq_Stat[1]} {EventBuilder_logic/Read_Seq_Stat[2]} {EventBuilder_logic/Read_Seq_Stat[3]}]]

set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets CpldRst_IBUF_BUFG]
