// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue May 30 16:00:14 2023
// Host        : CD-135239 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/v23.1/Test_DDR_Arty/Test_DDR_Arty.gen/sources_1/ip/SCFIFO_32x256/SCFIFO_32x256_sim_netlist.v
// Design      : SCFIFO_32x256
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SCFIFO_32x256,fifo_generator_v13_2_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module SCFIFO_32x256
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
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
  wire [7:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [7:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [7:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "8" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
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
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "255" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "254" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "8" *) 
  (* C_RD_DEPTH = "256" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "8" *) 
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
  (* C_USE_DOUT_RST = "1" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "8" *) 
  (* C_WR_DEPTH = "256" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "8" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  SCFIFO_32x256_fifo_generator_v13_2_8 U0
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
        .data_count(NLW_U0_data_count_UNCONNECTED[7:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[7:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[7:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module SCFIFO_32x256_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire [6:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [7:0]dest_out_bin;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module SCFIFO_32x256_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire [6:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [7:0]dest_out_bin;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module SCFIFO_32x256_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module SCFIFO_32x256_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module SCFIFO_32x256_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module SCFIFO_32x256_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 114032)
`pragma protect data_block
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
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
