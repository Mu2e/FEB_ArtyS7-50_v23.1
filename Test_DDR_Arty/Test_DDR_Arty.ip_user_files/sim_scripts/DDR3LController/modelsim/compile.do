vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_std.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \

vcom -work xil_defaultlib  -93  \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.vhd" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/DDR3LController_mig_sim.vhd" \
"../../../../Test_DDR_Arty.gen/sources_1/ip/DDR3LController/DDR3LController/user_design/rtl/DDR3LController.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

