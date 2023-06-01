// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Jun  1 16:04:26 2023
// Host        : CD-135239 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ iuCD_FIFO_sim_netlist.v
// Design      : iuCD_FIFO
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "iuCD_FIFO,fifo_generator_v13_2_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 160000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 8000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [15:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [15:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [15:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "16" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "16" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "5" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "6" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "938" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "937" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "8" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "160" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_8 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qpp66Ic61NR0mkVmjG7vgOL0NB6CTFb3Lsi4qxXFnJ8tqqKShAriiJmn7uXBNCBvGZLnXCb4uZ8i
EqR6IQq34abN0LrooQu7rm3+Pw0iYYKzN1lcF+6EclZnFEeAIj7bGbLI9X3Ib88Mjvj0+p4IA3Fj
9ZGHNW+O+knchfmqAlY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aPxGoOnJHTAqFdFSzG9ru8Bw31YY71SqnXPbyZfA86PxaAjm6NpQtu/8fWeHlM19Jz2a+1ZDAj2o
VkuAl+PF18BGfMNo3Sar4bSJm8QwGYpdMiLM+06C76IY/redmJfNEXBnwDGx1NRihbIrHe17Fsp0
wci4ZT2n5HHVBuhowg8un8abF3TR6B1Ll1huon8bmUC1ZCG/4nJpwwhcE9pfhZYPxzBDs7qGqe8g
84QrDMzU6WhHqgMvR8Uor517l0pItAYj4pxMvaZhC0k3EgSYp/MQytJr+HF3vsw+o0eF1bHVU6Na
eXWSV3ijxUZXCyCMZ7YmEZa9JX5uKS5m5eiP0w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mWzZIcmTvZaO1EYxJJAY0jRMaMCjTyRzPU6SbUzrKHfep0pA4LS/MlSJytRY9FYloq8LonlEJmOa
YvTXus6Gximwd82NfOWOU+xAliGI4hqn0DLAX0dSg8OERUorJfPsNqrBuHvDufz9efGQs7Upr74j
TMlZiW0gSVGHMQSLqUU=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lzrP+qu7wbNhDwJym0tPh2ytzSxetAAI7sMgVeTkF4E0aGc202oEP6AjkTk508CVci4/F5/oGOgY
jKPpZya27mqQoisM8ilYqvcw5pXx0/pQGRu7JZF08b+k4spPXeJ2wn8IDY3FWSHnOcvi4dOebH/q
+4u19fu74aqk1ECrIQzbVZpwcWeMDGDUSHDy4FPk9OjOswCxOQPuglJjXYv+hMg/7JiOUBTJX0uZ
Xmdtxy8L9z4EWzfRzOSHsJFjTkSLmdTFavs61PfZS4KYT25LV10DOvmL3fy7M6+bBXN5qE6rW0RO
W75E2gYB5D04Qa/SgER8JeFW1M0T8RacJUUV3w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FMe5G7+i5Dg2OTIM7CinNcesmx+3xFOKOCTYsoHWrp5MlbAPNqriPe41pqSx7Zo2+ype18VVw+tF
lEjRQQF5TsKrIoc8kQqO2Ck9JGAZjsyrFM5jTWzQZBawoJBB/EbM32rM+O963qqQdP9ruUzt4aM6
vf/tdyfOgxkUcl6+JJNYOQDIdBGzvk/dQUeNjJV2gWOsMrT/8aQJJMjp2XPW18IEhMSdUT+e8kM3
NlZcNyywDkNOLcIS8VKNtRSuC1gLTR2zXKL9eJomOGg66N8dfL808FNqNi+dtOqd2OhDKPCh9VYN
gJ7hSggqdHhUVsYY5qT37vUMUZG37ITEHavSug==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IZp7wGosl6Ef78SQeUxKofUHVTZqkQHJJU3t0K53ysy/heNabWQpu3n2M8+eCIHOAio8FR6+AOlT
IAA4JAFJfJ70Sm8r1CV0vuXGNVDhIlFr8HhnDDJc8CLdz8yaFrENXgAR92A47cxMlNwaJCGipXa/
922mJ6b2pGDdjdTLUcKsU1DD92Kou08spouWrbB/PrcgiC0dc9Vh5gbveNqmUuOyH3mlBam3FvZl
pgofpiJBXCkR1i8+hAEtpYGjmSGUTUQ6uHMUKX0u24I2h77iOiDKYTNJT6jVuiYM/DRD2IfylgS4
u7QDnvP07bndi2AIocxrw7LHdjJ9XWVyHUaXIQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mcmaj6yfbZVEKTiuHl5s5QU2BU2VRdOtz/pVopoNI21Pt4eUkknoHSgdfu7K976MpUo+bkHQ7sJi
/0kAsbTsCHtz7UWvsCk9A5SyLMykdZnWyjEbf0dHlFcgzZooebDG2zm4mibiRUIKwAMgFxTWk4RV
k5Ay3X64cOudFYqRbTCUmp1L8ijVoYJo0zi23fsL0jwpEG5FTTnJ1h5mK9rFtj4nIzmKqwwP+7JP
esKOwY5A74OZa9Q2+Oc/k4UmgeZgw5q/xkt1aAjxDyRRfCIJizymNuJw9sa/nQXTKX0zCMrY0MnQ
PN3c4p5wkiNcAHR4g0673PQsVxTSpFZkCNMkwQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
mo2NT2/CRe5fYBwkxXV4DV2r4VY+mW8FieM9wY58cqg6XakgyeQ/Du2w01ie+Sko3Okr8ziahuNO
XBMXX0d4rR94Cwxf6q8vsbxZgbIlknsXsEuTwNfsw6ywD3/7leL6Kapx3fGSVuIHDMHjwpstoX+8
phs6lpM0VeRML4QJl7ITOuweBx9b+hHFRy5duNtva30fSyVWHLpzAsS+sS+gCcFxsDn+K9lQj/Kh
u11IaBweyu8d5W2ClTN46tdIzlVw6S962vDsk1+h6BQzF9y3z3BJfLpfR+9jdhy5wqng0ejlOpbT
G22gnlE/BqKGgLqVQKaeXfnp5NnReQcYXQTMossrLWwi2JUvDGuA6egmN+38JdoIzDHxNPxvAOZ/
mF9Qjn64t2tHB5iHybi3qFxlysWYSczGHStpTKrEoNAcQV/kMTe5coIDdy3mGIpwuduxq1OYPA9m
VKKE/GCL1MQzfgEx1Az+ts8Oo9hgM/A/cJ2envlpTKlt5itG9ciBZ41m

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RXuoomA7HXqxfp6NbzOyYrUYOntlNDrjnrws4DzEIh4YC3p8BdX9/zrLD3AxALpTnAeHyk3lFxEI
uDCpL9/tP6yT5BmfL2N/oyWIQ7y53Env+IFaJMMaBIG9U1LBtkcnhV/FW9tkUePJ8EbKyE9tP/kp
RScK28UNuQEHp0OPznrb1v+AWO/DiSNPuA44x+Ig5nBALVW9qfA4+tvzfHYpcke67vIFYWLthZx9
NC9+R793F9ypEZMOjinKDbEk0gDUoqsmcmgF819P1JtLnGnuwtr1uER6OP17CsHbFowAmPsPPA55
QkDMyp68B+cHNNW23VXNPbIXLvPilhp/ypT+iw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6BvoQpuoVy9vIT9h44IRmW7Bo+8MCKJj5ZfOShjmujfjeFOwPLw2GCUNvV3ipB1eThHomI5yXGiO
fxOovfDeVP2hfGVaO1qz9Lz6NGhPt8K9Z+sH2rq47t68akOCSgmAoKJ/5BbwL/t0FtUVgTtq7Si+
HqZAUgbX8TCY6IRkFibfSSK6UarmhEpPrPOpvsevKx4OaMU1jfgaJvIMRd257kSQy5o7pyO0n7VX
LK6V93O0bi7Aa/TTt9W2MSK5pIDw9DmkTCLFjsS7gBYQYaFaba+LGfjQ782nQK2+KDz85b5qKPM1
h19t51h74j2WjWCadIgjRVfMYVvsErL0ehA3Xw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MMpJ8DorVcMATHbuGSlNSCGkzTOL3lRnFD2u4TUx1W94+tAqA8Ktjam9MqFHuJh/5PX5VUq6FgP7
1oYcR65DRc8C5iUj4h0vhHLi42ruJU++GUuIdS9gvoiQ246hdXMefRe5wcEOnqmxKzf7fyduaSpG
7SdN9PpubFzyeck9cLJj2CYMY1XoujEAxeBG5YKJtFkQkCeHZWr6R8PkNR2oyQGuZuMeJdgNh4Lg
5yYuOk0BGcB7bwSjic5zqk+8Veyp/ZGAVMgpH80juQjINIxDcLbvhqTIZX4gKUQjcJYcBhVuPgVt
Ms7dqARwL9nkpmZ/SuNzUmGdEIhVlblWNDRV3A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52912)
`pragma protect data_block
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
NdIAqGC694zetEHCicNIJA==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
