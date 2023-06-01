// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Jun  1 16:04:26 2023
// Host        : CD-135239 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/v23.1/FEB_fabric/FEB_fabric.gen/sources_1/ip/iuCD_FIFO/iuCD_FIFO_sim_netlist.v
// Design      : iuCD_FIFO
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "iuCD_FIFO,fifo_generator_v13_2_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module iuCD_FIFO
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
  iuCD_FIFO_fifo_generator_v13_2_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52800)
`pragma protect data_block
cDuuyPfkBJaH0FjGQZHwn0QiPBEsVJOExLNpijXPjFTpWN+Db3ZnfkOtswcX3WZ3SUdN2tl1YVpX
Pd5845KJjSomsrBgU1xC2ChdTKqO9XSBNxO+NqOKPX9D6RixBEivDb/pXddSyfNP+OsG6hmrh5Jj
FsrZPHCSSiO7tOWydjCuvZbCVjHKaAU5ZtiLoIeCACn7coWImTXIMIl8REMu8m8rRorWldDPoSkc
hyaJ/NEGImumfXTrzzRn2eeXEcmzlyvnu9Dc9/4oMkMFyS80yKlcYbuoCddugqh1YC1yW49B0ZOI
AxeWUcGud0Qm/n07kyHNTdTu8xOtfW7mWt3qHBzMMQ6joapX1EaBcYz0z7GHJd+V+xwLn6EUYQIn
ZyDoWPk4RHJrPnTXoXFBK05W+yWrUlBwkZJy4sry8CuwxkDczn0840uxkNwuorHm4ROfjrnYHcW/
lIiEiIzirMH5SehLDIC9EewBJ/yL/yLcAQuGAwVc3EOUbPb2GvibUtwOhP2VuhTPZ+hvDniirPLv
1USoRkDu74oTkeOalD9QQYo45gXTHSNLdbmrtqhNNfQ6LQnHGsVl87lVd6hYtJx/EwTQlzohCO1x
h2Anw06LELHiCjhS17wIlS+1EcDwZNLFE0mvZOH/PFGifuvV/5DtaiQFtCXEHwta6MHGVbB6PUfb
0hBSXg1lVHgC0HyXNd8+DcT3MCF3bJpAS3QUc2bZxKBfd+Ma5eJJmnbabfd8mfzNG4siqZJnIVWn
t2xF2+oJZhMaBo0kOlL02AH4GVoGklLL32c/oQk0axU1KZ7nO+iTgiRfIGQdi3lgmpGlytxgyLJN
ADseCK3d7yBmpvxbS66kixISVY5adkzx+WvwMvHya+xQ3C5StcdxhsdiSHWxImKBsrsKrJhnu05Q
kwpt9ESTY5ISThB8qqDQPOtiKF8CSNRxziUmqbF3A2Y6bpnv3N5tS09QqMk+EPoCGvgCPDTMyP3D
EEX+yHRxy3skKfvb6c1I3uOuDMgL8UgHpfcnIWFh+wKJV/BznSRfXJ0LZPRhbBz+5l3I4kVoE5ji
eDVIrDSzLcbLSn5gqGshKWNmHG28tUR5VrBw6OFkvZTZIWpDeC4J4ANeOmLw3AGtRDtgz5/DGcys
LpoxGFmWPMPDvfSTFXkR8tRocSyhuiZEcz7kvEwuLYwvof8Ve7X+C4roTynE48yVWIyp2zV5GiOl
AnVFa+FiHduJlimkfkYBvVQMcHYv/ZmOod7T/dlU5SITDi9RgMDfbs0p6WhQBYAgNCIYvK40Mo7G
t7sWaTT5jF29YwnXLA/WK91HU/80e22ZHcCTmBSqmqa5sgMozyzuwi/HB3CgzA4WaJev9ZBwkW1T
JvpfL2nHcBXER4PEGeQucGawF2hHEz171yRvuJOJQi/lWEr7uVYWbMhnWciWNzsShyTWBMQc1AWu
U1G7VU15jO9X00LX3LiHtm+Ihpprupg1vUnD6ZAU3OtkqLZNj3QSCfW9MpqRdKrH9tMAMQKWrFAt
s0QFk0DFsZoFp2fyZLT1KsPyO2KQPixk7MyciTVOhtTMTblyvblUhX3xPMrk/XlSuYzhVFqgCVyH
QPVWbA5+4UxY9Qo3rtdheZY42oezk7Ofzwe4LIAMNZEkUrJj1W29U5yHTKtWYc+an8fVArcQpf7y
Kfr1fvkMfQGRksBJHnKthpejTullEfZkPLKcgGk3OaZT8To/KDRfJmseda4yHPH9F7dr+5ZGTh4K
u7/ezrWm9tKGqpUz7NbESvN4hdNG59DBiA7xoXKM0cDoCObn7igJsvVyb+RaI1+Ny9w61xh16CM7
0JQdS3Az2SOExBY074FYRGMDCetW2g0I5QiRi4j8ZJwHeullNAXZTastPwNwkGLbmVIEdRpXi9Yo
jICunjUQzmMCcENvhqnLJIqfu8Twfwnv8G8FN+S6McFzolYul8EUF0PjxnILfZh+OJdXSW4hFOGY
UzRP2giSAcZpSZLklc3qIHXX8pPZUc0NaBloBJUP3nuSCv7d7d81nHTt96nOMP3V6bBJz7ZgatLw
oKIVk4vKFBHq9Q9FNKFfBPya0R9D3m/ZwmbQzY9+7OGlhm0F4ywgGzj5iSZJZZRiWprVY6pMDUms
KNRFSzHOt1XA50JvEjSO0FY3wWzRcjV8UEY2hSLJENQcwGITXth48xB9hMn0TNEuQ0zaclZP/s1n
9YINBCJ4TGKnr8k0LlGEumEf6aEnGpHh6kfvt9mNMiRHTlCSBEPno1fOXltm7csgPQN61HgIpfbO
nsF2XU6dN8KHtxD7Bg4L90KpXGzv/fQ607A5Quk27T0H+x0M0dbxEZUupAsr8Voo4GbfmDRvW5nF
DxxK6aJHH2F/5Y/rp/gkOFK8aIFxUTFxKzitq8YUf89sC2UIpu7dfvEBR9ocVcRjt+Itr+tJjK3f
PG8c2DmzrtUvVXlyysOUp98trkJQaVOzug6+PHG1CNHNYC3eol0QivmM2c+O8no0Emb89vdlH1Nd
G/9rFK7KBsicCaH3U7fU1CePxN3wkX8gd8GDhJYDNC4OAu+9mkshjUnBmWck3Ftv+cd78MhpXGCm
fIhWDouXFyBXD5ReT36IZRnlhdEuE0CS3Wynm6b2h21hOruFSZ45c1n9eknx9e6ZoUzkfGr7WJhm
S9c93texRO1H8UPLxURhhFTlapdJfXACWbh5xFLLDhzXlubJ4svKo559lRfmrlvcmBd7vPIZjXcW
6cQ0c1Vmk4l7gwdsEQdClIlOxzExmPN/5CYoQL7kjk92CgAA8S4du6qVnqYpw7U+EH4iGWdYN1gx
VTs0k26ze0VeUfEvK+6lyDrpDgysoPjK+Deuvb3jI98NE5gADQ+TZyH7zKm6YS+anQm7TGNsy1gM
DKty7muO417u9B+Svjn44eooKd9N2Plcn6jJicJmrZKOHyvGiiC8PsTFHzpJWgay0Dz8/fS9Q2vI
Fe5HcvZJby9dU2RszUvc1SsDm5UGix6xuvjgTWsVrLJkTrYxb9yGMwR620Fv82MHbbajtaMVPKzj
epmmUR43InTCbJ8/jfI/GCHDHGZXSWndPcUmTnVFQ7PbFl4bV4AX4X4uTDeT8rzarLdPZ7muPEBM
TrJ9JInCDz1OfWwKXL5jdndJ7TvXDrLKU8j8xeWMklLpBHCFZZ5lV1m46tBTYW4TUXJDyzJcpqSz
eJwCT0dbqWTTwpviooGmt6dblw7vCwjyiXRXeBSG4QaPod0kukZs41niEmL3OrsbQ3Nx6MacM55H
dci1NmLD+gOrfob6JXc9gml9PMgH719FoBud30Be7R+sPTYZUwgwosONMw8UjPdvdC5v1FKfw4+q
cJJiVpmgKoHwENsXtq9voO+cRyk0sCjh8KftBB350Z/dHQgVqrafoU+qt8DydJ2FZcQwtO+xYMRl
8Mnw8+WLuXEfIniqHsYNuGeX5z8NYJmlV4xIUzv9imLuQXtk/nvoLg1o7QBafj7MM4d4HtM977lw
/5fb7HctpXF838vovXTTiYxJ9VJvqBkwGX6fpHrqWenFfHbp2eZmLCOSDApklUxkE5hewtcuqCl5
w4Dze/09R3LZ85fKUonRUUnGNz+F8Ph9ayTUOV+HLCtlsA4Sv21zbs3f5HymHs4LcdaOz6yfu2jt
++CRLpegNnqlCbEsKRPYp7RpHjCXD2Ul51t1vfSsZ/GhhwJlgeYMB+/OHPiaFJ8Dps8lBKpDHOOO
0+fUarBBBQSW5GeJr01mL5T1l2sKtV6MEkHJMZRg0sfgYAt0o56Wy5pE5ZVQC0JAHdaXBl3dCBg/
4omiJ9MTf+CfnA1c3rjAqBWsH6ykC9bkimAiPXqAvzOkBV1+n4rSjfU5eDdCCvBjNnlxGXYZCdb3
6tdvjQieFYcFbU/ySG9bZihVNUpoQlL/XMYAdIEgusw1vSz3jWkOfax6OdeeG21UiaYEZxnFIIXA
Y/9/s9cyY88TYFilXZAqTHUpqKRtkug1djSfPeD+j/RjC5QOwoRCwFFhlCHlM3eCyE8YOQtotP/Q
UGNkesweLpbde26jYB5xNUcRUGa2ITYcxshjdTrqR8AfzOurUmp5abGnWtgl+0ctA9wU24E0FFK1
1ApWni8Uc10tK5IR3AvXpIZm34vRIsZnS9430WiBOqoWtLZGb6MjDW9XazGxqTb5r+70N/Y44B6Z
SpWia1Di81Luz2P2FmQ6gnOmHu/Mq/boyIZJvLLyqzOYVIMTiLm3TeuLSZJ+bIx62Xcs/sIMUZUF
ZWdF+EkgRYF7v2M3eOz7xapscA+7VPYtDvOWHe7IdogQOQe+TXz+3HYxo7zHHaHy7OBnuC9zVpQJ
TcVC/ehb2GK1WnNgHCzSte4yfeA8x7W1g1MagWbjKfz0iX8ZujycO1ZaEdVjv3cT74HVmTljI75a
btG/lNzj+H+SD6CD1wJSus2CtDwxExGNlCBeV6SaDNQV8W20DXfNi5kkMjXFx/hUtkYtrFitAMA9
hHJZ7oklgjjHWJXzfFguM3GRyuiFaSsCv+GLePEutqfiyXDJtgazRfnLYgbAC8r1kOVlUCpLxx+E
yHi7MvyzBhTqKUGNt6K+6dbDm/Bu2RWlsFSYr4LkxxNanjVJtQpWVMsKhifHj6vW8nUScFjxyk2c
S5EX4MKJchnXIt9T4BeLoF3I4QtbIe/uAsMT5rd22ki4BJ20lNo26KdnXwrclPu7oNcju/Hv7wNA
TuUqrwP99DzGIAf6YY3Siktjm+Uro/cAU/WzSxa3aSRvOZOvRWF/d5IyzSTMtehFvNPDU6Y7MM6u
TZ1d80kEsfACC5X4jZyiSmmBPs6/Urvm9Yq5XCHfBHi6rarsojfiXOgXlsnCKwVnCF06PvjAs9Ju
XVGWdq+alreNa/S9LfPhtfY+99dkcJcLgF9iaLaxG5IKw9cLdjBy4+CrlJ1GWGx/7SSS8RcoryUq
FG9MWemDGsKFk2C7ZBSW/HgWX0bxpPRor500dLWu3252LTRBGIfMhLY/Qv8vt7/CJaU/Aw+ujPJ/
+YpF9o0YNDOOKECBrjSmLWu7MIGzquWpKoXYkRn5+yp4x/DNc4W2xE+4/ir1hPExw2sfVvN2lcZ1
BJ34saoGaksSX2JpQ0waTbmbz9QKmNZ1rg+pRtcTclGxqvhTgPIfVdHkWg+Ocq2OGDBexWkz/Zif
KpM+Q1EpTHzSWbc/iuoltjX5hY9iOy8uAyOOeKkhj+y6Kg6eV9HHLttzuIxOQfN14tQABW3p5zV2
o3xi44t28c+HpyQ7Zin7Z29ZrhQhqLm/tpo+n2nuds2FSDj8+a6jnULrA0LbwppdJQJ2WRQqB67f
fcyRQ5Cj1b11BtL5jzY9uQgUM+h68Msbx5fnRullJAi9B6qsw3zU0042mAFXs4CMkbxRSaxQm/Fb
M4fKSV3VaqbV1/eQjTs8iHWK4W2KtuxkvARl5RyBF4TzTh00lppZqQJxSwApHOf8zxZV2ocxbGty
VH1Om4xGIMepryagswNXoHEntqH1ZfAHjyTXG+MLS7GfHB9uMAb7pNWqdodyK6/JzCbAYFarmqHZ
Y+++XEFkWEu9/u15zQsjZ9hX69U+EqQeIf6J7uZFLUscPX805nB3hTnp2n101FgsFL36aDvMSizo
TCFWef7MuGrE3ErJ7fD2hXjIynQVffm4ooLH5jcdBPFKWXSABgdfd3w0qeiP5zCAPZBAB8FdpHj2
a3qKTGQysMZX0GeZ+lvBna6qMnKCToGlg0z+d2LWkXx5zLoPkNOG79z1b4yw2aHcQ0bz+pqqAuIO
6PJsYlTYDDlat5MvTb6cPFScMUS/3CBf2N4KfwZ/onJoI//8iG4IyBKUfmqZaVSD+Bmg5xiO647w
j6H9JE6RtU9WNYCwnIBlR9Gb9jldI2oD/DDUxPqJvsTw6+b0S8SKOr0aJKD6jq2NIj1D1SE1E+1q
nt81h5onSQwxL9ikFPC6sMStBTy+zKP6A29SKmqBwqxmrLjVHOh90EqKaU2b2LZ9yzGaWBHBd6/W
WfFfmqQ/NoVgy2BcSk6UPqizrJE9RkxApPscz042MKoKIi4Qe5p5Pl+uCaBDp2z+vKYi1fZ+Mag4
ydi9OGzPcALY+FNeq2NlMJVOs5Z+2U5rmifsqhk7lhU+VZ+b3TlQOPV/GXqlQ07iEVS8nBprd3YV
Ho7zf6V3k1M9nuBDrldt7dKYHvNBudBoAxeul6HHb0x/+MyAqZIkxBHSoeLKQGPZpprmGqrC+2me
7dbQgGxbBRcJIa9GxS7VLZ7MxjA/hQh2FqpaxmfRQ9kWQxXuw0v9LqgOEfexmmr4BSg/zXALSsOA
y8dXmbrjTh8HRIG+l/obbcAHINfjGxvekPhfTwZTQ4Urz0DBlfnbe1pnSZO1LoboAKOCpFvh1utW
OgtcFfBWB+5PFTTwSLI80b5sp/OCHNemiQLor0N3NazMvak02yfjkLZVvrinK8sgrvzeYX3LQQri
ZrXYRLB3skzZcf/zh6tSxZqBKQlc+w0NCrIMSSkfb3BwNm41v3WYISDnwzyOs/+nho8O0raR3/fX
XwrJuNaE3xlFddtexzVPgKJO2je0/ImvfgwuugttkYkx+Cc5PxHVFmpZm+tdnqYyDakXjtgJiRdj
Q0AsPo3FddyQSClelzhTjlUx2jlOXWQVdMqV+F9rxAgXVSgcqC4kO88NvAl31aiUIQprRTZMHSLk
GGrT6Wt9QlMJOxtktsikaHHSauwAmzDYoDu6ApLvzjQmRpP6CqF4VW6BVEikxgK/VTXgVCQIi92C
H8cfW1wFKdLF0Q9EB+l15oMACruamgkvP3UwTNnsW95xhHJBQj+mgpk2Tc1EEIcdZ+LGhCfTYJ8Y
BnpCaqShSiWHypPG0eS6gAorpXDl/3IZ83qzXuVuFMpPqoSeI5/CAT/8wZaPyWk58WX0teNtI1Is
LxTKZz7GwiMCAbvnC/LDYuTLvzOpVW1fsKVt/DrKFm8AItTybJCfYlwTnc1Bfuik+WP3QO7z/9x5
QU5oXLZVsCI9fDut32xKo9mqSOeR/CnO87/ICAHn/Sa+BwD2AwDri0qqotWIPA5Y+Rz6NZexG0Si
C5j7wGkmztkH3XRxu5UNY7k03cXWDzVoiRjVj4P27sthJeAqdk/8dVhWYRkS1lFK4TQpgFoy+v37
CjHODx2P8OY8r8I4FoX3fFdPdoGKwZLXDCBo0gaEhP+kT2m4aK2LNvcdTXGxcTx5KyH6AdgaPm9x
UNXI2TZXAPlONc2AZTOBhDOv7pMY+fMafcrbX+wxvp2+70eEcfnL3VMhu1LajD/hpiAXUU7KHTeW
ebSRxMr12BB997EslBF99rTYdxchwUxl7Jn88KkF5ngp7+kckm9YDJMjjCM4J4W4gSehzG8WTIg6
5VIeKTceRuKFo9qn1vtur28Hv7gV8U7qe1AB0e9tGN2DwiKXsjJwo1D5Apjwa2Wi99KeV+yfmQgk
ulUhmK5z6ogm+mTim8/wSIQG8tvNneR9rxt0io2qPDZRVzliEnSrMG5Y9T6sB5FF4tNF67ggrBxm
pBv+8ucv8Rz+LXIj7XUslSj2ndNYeikXnXM4+dDyVUtFu/bZlPn5ml/drmCJjFL9qCEoSJo7e1yg
WIacP1pBC57dcrX5IhEvar6DWgGrbtM48NTRkTu1AHlWhMx8WhwVLNIgua1NkR7AeYU3j/9rBG7h
OSbnXW/eGMGn5xRNAaQnfOoUcCZ2QHO+J57FtiGj2iVWDzL6Unl72+DxQW7XOzwX+Avih1aMWYl8
9gxocxxNbq6SFxxmJ1vQd7Qm8wMhypPmQHhIgnV63EuRsfyfRWY7ZdyQqo1+XiWzZRaktV2p1S5p
BgZtofX5CJkwFrLZd7vk/BxQ+USFlBZFkIEEDqVbIUY62n5kX2xfcbf5DLSc69Y/RE/AeKEj98Jz
XfuO3pO2rRj8ACXBd7l75nWUrVDar9Yw9UVeK0QaEYSWdutQkV/CmatVmoh0gxrzj5AcMroKZDpN
bF7C1epH2z8zu7soREXEt4QZY/9Yyx74HZ4LOyPqT9s4sNB6HMqgh0dKHtcaPvw/YryzPJHY2chI
z0+ybKmyTbE4ichpj34/kLGaHhGdTaqpEJW0fIqcaXAU4rVfmmWndgwVGXoLJNP1+/ANc9N6HIJT
VfMg6qhi0f8zya0AjurgWhMiknw0As7SwibmDBdOgQrPhsS9AIc2z8kA902hqrWUV/+fZseFGmfh
Y3yS+ag01/RSzpM1FRk+7ifOj0sPS0grH2aRLQTF2NUwL2Vcqvz98IiZoGyoE1x/Pr0f0T6+pxJH
fkmo+eOX/D4kiNzaeBUgE1hq4NfwzAphJO7PRsgBN7Wy3gRotDuhtwQQiePnkwXCEBRvl9K4xB5b
Oa1IKw+OkSdPhDja79Hpo6nWH4sdgZTYtcEAeljlZYWkLLzewiS/9J3E8hQauGg36NBFn8Q3ClNa
9OC59cXP7x4P313DELLfdY2bxbX8bLoMHk/xzmQt+zauYmh7LLLiMdkbYZi3NmY6eDYc5JbgyGms
5RA1AkzayOUq4Pfoeg9c1GGJTUE2uw4r9ZnqJa0OBcMHX4V4DsK8Oao+juF6PI2vlTBVOZDS9n6t
6JASmdv99wXF9GWdzss8USqi7q97C4u1Yl07TjcdjETpgWEeaXShX3mVuqZuoFsBfuMDu7SAWuYi
i0ixDo4o8p4P/ZQE2Yx2uRPOHdV559ymN2hW7p7+NPp99cshfmQnLSli+pnPvy4iGJyEfjT9dhbu
RcHX80hxr7Siru319BJvgRYsvQNNmVwVS471QqqUoBvzHk6wnjcMPfENO2s0CHhW+Bw3tXeyrLyU
opB2wck3abhduq+Mlaj7Xi9gQB7GE6eW1nAOqAMCX1jtxKtjFrouw9Fck3jHlr1sjaO1SrcEdnVa
qUiIH3mlkoXqVxQExVFmlUOA6UlRtFGUPY1s3xZ6vFDWWkEUAhXx0cQt0f6BIxBiOCdkyrSfZ9+U
9MCaHEDJ0ztyvRLih5miFZl5i5Ja7XHeHoE/VnVDUnKsyn7wfgY1ibMVDm/C+yUXhe7PmHj5yNx8
7gdzCO8VqLz1bZLDKaePvs0fR5N8hN9rIB/tFU4JZ5d4QNgb7lkcPxyxP9sYgd4aNAyMyOcoMLSr
4f/a6RcsTzxzJ0bU3vsUV3mNBsRMFwxyOqTFbSapKbLPyCjJDNEnQJo1KryVEZgjKEvEi5FsZHuf
mPBPYzrSVZSQzxgH5l140EZK3+42L7sj8SXqETl/IHF3QaO74DxfJ7OS+Ep01NgvFgbvoWtpVUQN
cnm9U6spIPk/kbpe/Vi3U8zooynApltfyf/kQo2Z8qzJR9rbxuvVvOReOvqlsKC13hNSZeD3lu0B
SO0tqSFbbSxak89+vmOseDeOHR1CkmVDqE8qFuEZE32jT0fSRsA/jnsNT3HstHAPsdLagbJ8ANox
9orUsuYSGyv3VbVZ61ZnXsj/RFBAjRh843CSaA1y88+DnA+FyW/+1Q93R3KQxqTKdLLAd97LtvcC
F3/SYpTFWIR+Wz7q8E6D9NDHHALvXJOc8tvtNsKlbB05oauQqJDhmdSbXHxwNtvfRW0djQL6fPrK
wqV0zP9b759TQmjryexbWT8Tl+b8nLoZZa0aKn0MZQl42KRKhIoPmKnxj0BKRVPovl+mos3sfqSb
N+RNd7zdFJiLVd0hH7abDb8nEN1CaJ10TeEPkm4EK49jn0Fd6h9sxG1ex3LT+YETwxAQfEO5asZR
WRx3GfzZef3I6EcISE5hJYC2nEd1y7bGx7BKM4a0nGu/EqET2+BLFScM5pgoQ8Ab7xOVotXOX4fi
oPI8FOlCqfHNns+zIa1jLCBYd5RhlU7cN7Ck/4kIfhkuPbcY6gJXJHrQcRYxPwNz6rWxnv1XHKBW
bsrsRo5BO2MMGWMx+pRBY+gN9eFNG23LlPGZdtpO88AlCuISmEbZY/VOJvD7ZPUtxVaZc9E60nyd
hSvF9MW4w9zcbFvUvxDjYYvlNZJVyBfyuf2vywcCYjtTiHTn5ertPcIvPO4PEwu+h5OUaps8P85r
UY3LX/7Fo9j1vaSOK4JFINPOcLYhTX3dx1h+RxmIDbDlVzM98s6+u/KtNp2XW9nTedLk9XxOwDuO
YzQ88YQQqVmUBDVLmpNaXtVN8reuMlFuYPEsVW3mFsYSZViI6ixSs+O88xTNi4bh94/BI8klknQY
IGU4LyEye8pZMpKHEMHQtaSzMCjcU8b0lkWBU1ADDJJLT+Asee0elCzl1Dx5nIxjhd5G5oaoWaZa
y4nc8nMU29nwPYrGV+z2hoN35HJVlW64dxwdQUqR6ybE21SxauYLc8E76qt21xBgHBf/UMQOnHGW
K0uuppIF54WjCqnN+rye8Twhea0OMdiBDNX0tyQaKEO7NJ74vYIDNZAoA9FlSg3QznxUOJMWJQQP
QnYryE4sEIHo0Ir36cDtTJEOli7DyP7kSoIw3RAaUynCaG5vDGOGplrtoe/GjTmk14VILTASWnP3
qzyegCuCVYwG8qFeAv+ddzdUb2dJRI4GoL/L/r5UPO7BTRhT95UeMaE7KjACbXszHw4tZSo35+ni
nTgMX16kYi5xXRbygfg/pJH+2WjXb3zbA8CAIVYD0EJrLY5oOwKPOXxOzP2E5VFd+ui1dI6Daucr
nhAIuWOl0yV/z8gFzwQgue5nFNsT1LevbMQX/vZn4nrc4mIsa4KjE12zzdtCmFHvyPTj9tNFVLo5
zWGnUnwFVf47Dq7ZhR2kWSjinflbbi5xijj8JXuAxZ/f7Z5DnIZ3Rwl/rHFQrq8si2Ch45PqV+Hv
b3vH9byHShYQnqzfsqazgAbpyy1As7mV4U84JkdeT6qo8GM+tc9r1oGQ3iC8yz+ytBWfz5flJYi4
VJKPxP/bp7NpZOEf/nQNG32HSJOfYPyOmFak/R3ZKxbwXOU3RPyf0uWNGaVzcKYIOUntM/2WzbD6
BTKwUKXCDcb51iTodT1lIhpaPptY3xnVyBm8Ew6r8jezgF1QsfjNhlNaRmB4MhX9TYJ9OfUxGNIl
W4T38JsVlV03XwVAH1+o1ADd7Vj+J+xtIhLvh0h5owAePFaxF3t9mMwgqD2zc9CQ0AIjqZvKH0wl
rMgeOuakubRRripG7OX8/PiYZ6xaRnLmJKk/0e/+KkcGZpeTnR/g7tQVZwi7GwhPt56R9pnfqq9m
zaJ/c9n7zLbL7dyDWkDUQ0ayAFTgBcPgCtMOZ00JxQu/DvWYS8nQ3XWKle3gmBZrMauN1G7vErbi
FPA87gAUFQ+DtLQ4SLKfGA+UtPbhdU+n1POUNPK3fYdky1XXMb9xpnouDkFmEdGX3NEoAnQWACVD
u3DF6pPeTFEbwSF9HNSCwXm1qgfmiC9asS0IH4FH9XRRKr6MfOaeazLAQgVrj+lJxNzFMWX04Khl
DkjOsk2lGqKupA1iBESYuy0C/BLtp7KfKyMfO4Q+Tll7+GP2IUQFvQDiOTwpKeNARwVi4o7eTQv6
5JfUr8rgCmRUgsnj5IG6leKStNBniWAIqR3uLfugpide1tZ09bTHtzB2G6AvQ3UGy/jMpzTkon+k
Zdb0IicMKyqt6TgqqeSSozGUk/dqwwSpbOiybEKeKkGpENCIl0wEp03L4A9b9tJLBNhty71sPUvo
iIf/zShlnWuQGlQX35rCFFR9Qx040vGKXjowyrVBaSC441dmt6a42GfQ5kebLKTYRauXfEJQE3jp
JzSl1hNZTtIkXRKMQmubyGjV6i4H6Sga9bX5lNcYkwtjxgBda1TZip/QSVOwOqz69dAGiXiIXOfb
o9ZAg5dF3KM0+UlFpsqBPU5lEymop5H/XvQLpnDvzoIEIhtovyRGoQDIQnAgDaJscHgvGpUPMWfB
ZYgTOyB0tOmAQStPtv/OioIq5NPe8Ae2ioW4KTvkUSMgcV+edvo3iZVlYnXjHX02gRnjvbnfpqkx
mlPWFFy1YFQWPVWYLKxlaqRnvwLow4UbbeJVNmFlexKMfb56nSkn4UMWhZ82okn1yPcm7vAMsedv
t9yAm3N+vcCHOkITjlbgcIGdjOLS11qKAy0w9z+ZR7u8YKfpl2ojRZVGM+yyvjd22+7mDl/BbPrp
sk19/QoaMoAsWPpF8bYZZiAQ7jK/5StqGDndRdnU0irsLcwLxMPOfa1Y+lLM7xWeKvrOyjZBw568
I31E8GnSYAfdZd2/zfVSmpjc46zIiU2EvNO4uOYugrO5jNLoC2I9OlN2cRk/eL+qNZzfwv/XZ2kF
Kzqj2E3oHpEcA/Tro2ypqKSScIFNxY1cG7GV/hfIk3IFkvSb6OLNLpaMGSW1rcmtqSKuuo7hwc14
AP6IAJs2EvXnzz/BXYi9++qE3NO9otcmdqFu5np3agQKZ8bLEK4tn9nnl+Y8sGfih9x5XPTyHJVy
vW4FJFLaJ9v5rrmpYMUPab+hRDz3EK4j70iCbAbcy8CwE2ajApr7fJiYrCin06QSvvWLRlrLP33V
zZPCWCbQA995lxrlYVicSmG5gTlKPnLp/YCE/sEUzO0SHUxqE6gaaiEfOMqrHUsnFIUpvVPvKJGm
mzBX9lRVHYFBccmt9OnG40U9UJ7TKrnnoTlxd94G1G3eo51RcL+zoxuLc7IuuezFKg85b6808ocn
L4NpQm30l3MqB/eZqrUTN1E6JGkyK1v8c89WRMOGkohoNSoUTlUeSzeej0a7Zj+DkEBWm4LnWCuG
s+xekIGGofjY4RRIBfemN/JGP0lA7nBpkZOnvVMeWuGE9De0PKEjfjCLy/PU1T1dPytTfBk9fAZs
4wJbuaCAIVbbteJU17Qd3JuoWmx/qPIwidHUxmtiDQVm3m8exoS0OAlXPDfwZG2r+C1QONnnFDXr
3vzc58FpiKaNKr0c/C3FioBXc6Yuf+i6O4NCTE8t4ovz9hAKE1EMEmoC2FicfYwf+MyVvqWK8GNu
/Wj5uOxHp5gq7BX2u6Vis4h0YvGWF4G2+jLFMAzcHWrRxiEboxvvMyiYqL5YsT4QGt8wnVxVMwZo
CLH65dj9C+7Hqc/C8nRHu1eWRjTTbNETgW7w7w8pGJ3EpAgoVAsdwLiaozQl1wN0W0FEy9k/uvfh
f8ss9Wx7ig7z0julRw719UZ9up6UlE1DoxdYJZN3fplZl4lgR9wekYryO6ZVHIZyuTAP/8t0HMek
EmidDgDDyJEddC5U9ct2nVOj2M1kqaunJrLCnDCe82zNcpEoec2gtvouHMb2QlvxEB0HkY+oq/Xi
5d6R1zTiird1iVUjz23o75+dbDCIM/aD7zEMm+GnPXqnJ4vrvzDkW/4YmTaq9AtrNhICD0C76qNO
94gsnBI6cbeIGFx3FPiXUGlTRN8c6WrVVra8QaGHh0bqFZpFDZxW6gRMGtgq94RfE59QEtOhPv+H
Dj4pSWkhRlIerQzA7yx28H2xGT3O1jatzZO7LLPH+oXA4zShTVzixbbucE+9Uct0B7cnCh9qeq3A
lqMb/itJJ806skpfZMwJGwDQ0UgyIyqbKxf6i3F4qcoNQePCofNO392mKMayQAtsXTEF94Z+NPLX
uf+KATrsoWHRnuNBNkEx9mx9BDkH14IeCaG1M/9NQKOVvH2nFNkhnUtlKVnAVJHxoZrk5Mpxjzkc
t9iVLy8+a3C6ZntoKN0g4DMs9vqBuBqfMjVYt34nRjlyZchEMmOTySJIwWdLOtAIeGbfpHCZxQHS
oqtV1xc/ndud13S3renwdZxrbddqCI32svMcvg+LmqUy9DF6ipmWlUBsHCJ3prBvUPIGEPvJqq51
WKXbeEYkLJZxuyAni8h+0HyhWZ6JlG4jgMSJuzZFAD7fvXJohEE39VVceWuKxEeAJbzIZVAmd6vt
9++s9t0dKeUT8WMpctZw8MA04PqXaYyauzXOYskupS8Atgb74jryjnHioWXPM+384EyLimIkcaEs
ChB7gXms3XQkVjG+lh6hMAVdq3bt3TkeVO8qT5DpHranNpfusiWzcKoSN4zQQCKlHev8KAyLfxZT
yJGJjAxGQbD/Ytcs052lpLneaSmKcKZVy3iCWPWkXAM9PgzYdF7kzZDZdb2avGlBlRreA3wUVjVk
57GuRJ26uJr2TiudIlViqjVklEefNN0ymfuCVb8qeNTRz4Yub0e00nVNtieRBMwSgE7RkFebmLZ3
6nVMAPwEImegh9MnAo+Tn3l5CkR8IPBkprdS/brYyDrvsbZmuBtj1w2VLzCkCRUpRb+ljYhWue52
FW8s671yjOYrEcgnUTE4YPZb7T5Y5K9oj3EVBQaSVJbsLyecNBMRcixBxO2/feUMromRwQKPmpH3
jydnAQyPy2/bX9zkiZXcK+nnrI/dRgc+BfJxY6HBrx/E01ao03978jXJXQOeBBg3QJ1viuNIaN9+
D/bsbx+YOaCVqKryK4xJJUD1y7jG12gWsEqg8x8T0J27+QGWs/5Tz1seL1QL9KxKRwoH6hY9sJqT
GxMNoV4gIBnWg+1FJLV9sLJmR8Jm5TNEzK8htBTeJ4JZRdhobu3QY+Fz9NgjZtQdKqlqXel2frE7
9KgTRjCEv5gQNsf1dE9QC3jH12xVdRXoaXQovJTW6ccMI5prwL1D4Lrk/eIXPgFoLraMOdIOMsA4
s5GsVCpHp7xolqR1jt70qZDiXCcQmVlMhzgJl0KKoPp/gTaff2p3e4wewiD4+4gWv9m4u80g6TyV
FzuZ0nn2BeausSZTQm3KwR89a0IMn9HQ3bYzGnrI/XH4ju6SAeFl32SRp/N4z2n9GEiGeZxJG6xU
ZMN5cVFEBC1Nj1ZMeWw84OcPkBp0Mc+SvojzZDqqK5EzPsheOxHhw6KioP9aDNJlYL2MVcigy1Gy
LO8jGSVwuI7lbFzqUVbnYNfHzzrvzcX1PYl6ktslwdl+Lxr5tay8aSPRlsu8mbWsxWVRwgQ1v4ga
ZmuYDNbgAv44Vjb5spUiwro8/64BE+R2UbK6RKxjD2P6MfL2BnicUgEJnP4SMECSQHc6jgI+hMM8
E1Sy2LALbV09JLz15rKFkvbVL/YIRROK+vvUsjH9QJKHTtOE6KXBuH5o0TUufCPzYa8MiTMof8st
rkvcIAhtUyw2Ceu3vhQ65kLVZtWmaXbtK4+dFmD9g6NFCbY9o//+amAlb8z7cSNv7hup+fRpK2Av
XHq5Q3/yiz6DQsl6VjnoVHrVIWY5XeNc1Ecm0Ez5XMZoUhstw9otmVrrdpapMPxX8bqeqo+xMdnR
bDIQmEeTa/VP8BiPespGhg5UUGFo+4pZgWS3iB4y4fxO3PJ8far7sKIVrz6j9+Zi2gO1x0Qw6Gw3
gC4+N/sk9xPyK+A6FglbUsSEfHp+W9AJ9JmOLDbCcVEb70nJwQ5nFZIGL8RZc0IcU+UjqGmLklab
KQySxelXJSk1LpBDhecWYPHcXE6j5OKhXMyUt1fCbAtl9nGNBHz5rQplcml0kzDG4dBazVwmX2n0
HH2bGCwRlXO+P3mYn6z1xJIQTFuu9aXZGX5Qk17smD3qvxZY+chAkKFUKwPycbQtBG63XmWWajd+
zSZ8a4Pxz/5pAJ7Q454QzuDDnBFb29cFvUEKP+rb1GKnVJZQYSVmH+tv3rBJZo56RiUa05spf+yL
0o5aAT8cGsxMu6msMM3hl2MURqUdKHNqao0yWiB2XcxMy4K3gJcIJm/XEf/wqbyNLQTSif4a1sQc
BwZo5ISGcKmfEQY/1a9FgVGUm0skOEgoj/VFJrgkNtT7D2C9FIy1i0F9H188en0AX2TFxqq0iNEu
Z+a4yBgIdx9zoBAuF+qvL3Gh6L+r/tG9DrVB/lwK7kPooTOg23icHu4qOOJboAQlwnPEN5I4G07I
ZQn9rjjL6Ibk1BeEXgOtudev90XJpb6ta+HKm9d+iuVY2RDC1yKseGbWfpzArLeCz0vCgaVQBHxF
eI5FsOykzrxm8MhoGqP9R8Wx/ku+YTf216YGiSQE53tEyXAxdyvOFJEmuXxa/kF9NKamaP882cs8
qQQglqDz6dms998pdEaqvGSIQ97z0wM541hTagNlfXx6S+Qv4kAVSByAkhyj6M56/53hfhZ8Acv8
w1UW7rLLxGMHVWGRG8NyFIYsUfLgT1qJafHNA+GrMnoVnB/195FVQpkKbggBhvgYreLE+RrOOXSb
XY/eAjfO9MirIS3yZvk8XLXh8YP6c2PYXI061/fWJx9248Lxte9CDb4m+kBXNiEMRq6RNIItFHQ9
vXZG3BPG2wf5vGAKJV5LTvi75yQEwy5tiqNCF1eK8m8hf3gRfkJMq8brifWtvCyzniTkYXnTSHjD
H0dummKx5WVCgJ17p5hiOCUQw5qFzfKNdJvwekXPjM3f/c/o2GOM28RCtGn0s+a1AqjsdMzRmLmJ
mPizEZWbPRjes1Vc2ox2oBZqqoFfhxUw8ILfXuQoLm8CUkr/kcaqvYE8UIbj3v6X7mydJj26WXGu
gy46BoSFvsW3ZMzMLgNIIg4ABuQmSBXdWphAgqXmdYh2KfIwoQZySXgwX+D9b5TkPgBvi+Az8usJ
mRmf9EYjTDnjTPuYJ2BuoOdmHA0VY6LW4TGkMqwA/1R38P8+AV4GM3RGxHkG0LLyH6j7hcxTXWDL
NcHzCXRSZCLeCc+PQmI7RW5Hw2WckhhCcnrHWUPTrLVc+Yh2EwGdIcw9eI0LOI83hxRaDSQgj9SL
2vcFogHFHnpIm7gVFl84xnCp4Z3lLAaFLs06NfKSgLDojXhx1XsM+7u+CUSpN0KvIh6HxuN5bvwa
OfiayVJ50KsF/uAPzB4kIAXr51p87wigBXsoo4nu7JOAiqoLqiweyvP0C/VcXY0ix7KTtqoxRRnX
3V0CjRvCl2I5UVvUTh0RODYWjqYRN6G7jpxnnr+5lHqSsoJizZ5weyVpiYY7JexKtxNjhmud0gf4
lKjKSNN5z2qqVSrSkIm7uGbswxfIFLAW1MDAqi0N1o0wNhxFihb7TfCKHQDKKlRKYamtbZfWsTZY
F0s53auMuxDpJ1Z6X+7ma2h+CqgFhMi4p6nea3xa2ZWjeSaW/0562Oq7O0Xk8KmiU3Vvw9ZvX+pO
R9Nf0+jIjYfbzsi3bRpRHVRUKCcV5nJJQUcOImaG4v5lmLcYgdU+fWe0JYWA3tfNIegVmYUjS5ro
KZ+fAkAj7vKhV3mIdKhNO/ddU1W7XUGAmGfc41rvC9UB2IdnGn80bwe3GWxuj3CnAKH8d/F6KNR9
oPn0yptfrObpJQz+Ln5oMrts+V7hz6Dsxhi6cuN0RF0yZswEm7i3/vRotIo3xypJ7ZEmk89qcGNG
VSKmYhsm0OUaw10LkhI/lEZRyjLpAYsfadiLTpw7HErbJcjBb4qYl1ZdVsRfBCAej4xOJ4jbDOO+
qZi1P8M46xpoo8Emtgc+rsdwzdW512/CTuy9kpBA3CwxtPyl7C5L8GBj2DRpR87J2d/3XOoI+1Ef
i9IaOLyY+Z23KKo5Wgjt5YZnMTWn4OMNDRfSjePupO/jyyd6snCGq14qOY883GCZop53UkWMuuHF
SETwhEvRgUJLEkVi9FGU3InPJHlWXxbDquLi8PjmNgRCRCjl8QKsN0nzoA3ngfJC4kLNt1JYzT/r
UrRwZnRK1CG/ihC859hb6Yzjp2tm4Dyp255lABDaj0IEJ1JzKhqnZLJPm3myfmgfrTjyt2t1648z
COZw9+3caxuAB3vGnroV9gG/ZOVUonhjvCVeTUjZ6IH3l9Ihf5iuXZyolNw7hWQ6+J4f9tNjZBRi
c3VlhCl/QZr3mUH5O7XRtAP/LTZJDIkU/4M8f4y1D66FlPdamiT2DSJFTB72W9mywul24YsG51R4
iL7WmFSBxXfYLhzoVnFq7/1wPLu/Lua5EVgXwJ7PlkxAk7BI8FcWB4Ko8d1sRogpiNHU/AH9ifNi
1aFAYcivxjfUNpW1nOSbaTQDfpQw6/vsuTEBepBlZwSJ165bxfRxzpiFRQkYxawTHXr8blqq/n43
Hf0qnUsBY8Yb8rfvLF6fwQLW0CH1f6Sg0pIi669huZmo3apTx1Wd0mVB6d9GWUCip5WYGMwJvCYA
s1XkR2xPri9okY8jMJg65DeEK5NuBmN73Khj5ybflMbt8Ahi/TfIiHTL0P3Qan4LJ9izn1aVmPoA
6Qc5iD/wIiM29fX8PYMUjRa0d7VIGMxJ++gk5qf/SV/SszsFcs/qLOy6Berm8+NRfS8EL1xvK3i6
BziIw0b4x3QoKsiTycyCurQgf/uwGofsD4Iq2vS5y4fBAoO3UPjp0o4cmsPEeM02BUdjFMu67ln5
rZsVn88/1FfSDyv7pa4kLJbnGg3qxAc7VcbxJYCWnhcI/4UlLi8Xh+00e7IGRoHPrIHWPP4+3y6C
C9TJZoQpDboU4OifSTFl5P5GrSBbT0XulPQUn61sl7x0t9SHQMSfxChp4dUcwCFopREjcVgfT934
BK8CVV2D9qPTugCahVRGHy+m9YKhkT9XmaOzAa5OyIXsHkRDuCwaWDwy4ndWtNgupgHf6rXiZSLQ
RB9PwZ9yePJLQTf7EwKPdtXm7j9LxbMoDceFS5lU24T5K4LnJxz5FVEX9z/e1PL1xf8UfZLq9cRg
Yc+Agf7sqzabpE8R95pOEiA3pkbUojY8zpuzrqmKhdHOnazayNBtKXLLZwZxvvX/rV//K6100NEz
1U8Zw+sKMHHn2JxPgcTsVyctFxhGYOMbYD5bchJQM/SlMfDJYq6KOTiNyRbYT5kWzLNTsvJSmSEH
x5pPIosl0iNYb0v42kerMnH7i238fM4hKY9S1MMJcxzYdgsb0Jg9o16VZyTEfSSf9as3ArdrApRc
ko98m1cepX2J3TXrP8u9BBnX2JbIDrU2nLxiLsFRA75xPXRFgCHGj7AtwUfVLbWaiWJZcHP4zZQH
J+rCkuDdK9G/FacCYbgRCBVDTiGjnSHfGDLlz5FF3UZTW5vG9RqH7GYXrjqoH9DOz0nhrSdmJ6V4
C3/6dXBWV6U7uuo1+1AqmeOa0FbIe2T/DrdlHOqvN1tJRkN8/N3XG4PoQFQh+QyxapviDNZYSy0V
u6hdo72MAHwvR6AD5FD4ZnPYB9YBQAKgSYPsAXlLXwvFgDgdzjNIh0lEscyYecu/m6YU9W/EQeMU
wn2Oj+ePiBuBbMsel+NiQTbKxvUkEiBDA5iZTk5113ux3PNKhfps0j5GA6/vrpBLLRB1ouxSkTmY
YSv/9wj8Z9upcUIn906k4G/mv31s2kYwlQLxRgOBeuBmu3tmtZt2RPAsddQaa+3V2H6N/vfOBNWw
seyAWXTsjMJsfDukf5F8GWHXcxbYMg0hZTYn95vNV6ZElAdBF0cquXUV4knw4ETLnfFqtVgKBzPJ
IY0H4QdD4O7DtPt2g7016Cam3z81fJsQpxJhabdWM5frbtQ5rX3h5CAt3bED+h2hBHpwvDuSV4u5
uljYzP5r65qkv921JIE62d59laz0QjKKQCbMTeMhN2+Xw77g76Jpi0kPnsSGuoQ+lbufdhNXfTrY
xTymDFemYBx+31MNw7fKYobEKl9ZdsmitXykttBxsw2WgwEt8hEqZjlC2J4IoPw3jQkPLw7cyWyQ
xknnrc1CWo3Dk/o2UIw3+V+pYgbcps68iU7APOKw1f/TbDdRoEJsVoT0J7aAteFQV8pVCPPpJq8v
dCTmJQQ35SQKbHfFOwR6ZGPoCL5gwMFDhr/7y71dry+Gxir5JB7hrAmpgvFG29zt4E+6LlOpU6uX
sMTSjtcBsFm/u6MetTNvSD5ldH5QpCwzFsbwqDKy5DFvZMMC4XldwyqrBtiKKIK/Guo/8czR4oli
zRBlJdFWJ1+F48y7A9ZS0bQpDYXOJm3gF2ECgsvSkdGKmR0pkz1H+1v4f4YbH/MzJbYdSgo2dRZF
GSy21LvITNFzBnKgnQYQoY/3sOrAsfygTFLtziAO/vjN4NPrpz0uzgwUvREDvZIyCY+xgocx8ebl
7aH7NVpduPmQ1DfWSa9mcgBgj9cYyzzgQd4NKVkSHeNgpel8r4ahsMaGa92iR4Dde9MgbTStwRZx
Y0ojCFJC3TaCbo+ThZqRnx1JIYA8Dg4qIXONjcVEXX5q3ElyYtVTmHn/cF8igkuAtDrbGf01kUye
AK5898NARLC5h76BGoyeMzloe2p/uX86zYQ4Va/CdPOIbJHwkceyMnA6nHegLy2inOKgRXajgJxZ
OZNCINlIXf0xZ7qGNdmNw4OdakhqOpcqRe/nST/6CjbekIa4FuwX3R9s/l+bcHY35E0sIKrUXbeV
pCfHbg0c7R5bLLBuuZgjTfH9tG/qXAp2UOiCqHjeBzPFH7s7o/0iHARET1sPiNpQU4eRdFPt83S8
O+Vj+L7g5RMa3oJ4funCeNu6vCLJKCBtw8MIHBwKmdGU/uuwO7n4964AStRsMTQYsSpgtpbtlrsL
TJPxtaLtPYWMCXIRajWXThgJWp/dJoqkjyaDCTFwj4I5JD0Prf46jcCH7i9FBd07HC2A3YYiZkQc
RfjTZaiHUuPKB0i9OZnwhuwxHhdhB012OMHWN1znJyppE2P/TVWvEBbcbsGOXGMm9hBMrz2sh9oJ
GrT3EYOdV0hhfCV9n2oJeCcpLWV4pBdEPAznalXIEyAaVa1wn5wvQqObl3XDT28SgoWgOK1A5LAw
b8mXAhIBVf3M8/EdbqTGCTJScqedWjOXCdsrb+SFqq1ao6k7l2G4p5AsD5ueroTGfy4icM7wlJxR
C2ewOtzKBkB35KSG7o+otS2QJJ68o40MTGMC/ck/pAWeIhtDAsZqhU4aTmcwLApT/M9ZacSn+rMd
evFffhVhRFm4tqtz2VaCuHnyugYxLTBzoHgvKRAFYGNXqZe+ZG0bjsiIg1GbUAtDFqW5VVu8BsBk
3STv+m7DLOvOvjnYZ3NaHtKQzOe65iQ80sLhHvwzYFOVMJM9hGHpipxSaRXkgtov383IgmrEYmyE
2HHAXmvzUmgHIIY79OPV4L52FklvpXcPbTeRIE7bOXC9beM7U5+UnxofB/eGiNgombksK+Y72tKZ
l8wvt1mraoGsv6lShsJ/jfWyxHdxzZ2/ev/FnLf2uAjuYonKaD+lj/hEDbb0eQbq8nLhWkxLXvi6
M8UFk8ryUt4OEUREiDebGmBve3ArzkQihUQsm9VUP+Ly4gJstX+02OrI0MhLnVuTypMk6PgTVh+7
6hs+cbKVmVDbpZCiYi54B9Oiu5J2HNEbWKo0sI2puRLzD8i/bjiKJClnLqNgSbz7RKfJY9+WuO3L
mrQ/HjmAu3ogB5tZMiBpkE5ViKn8ilhniMp1EVyPGWmlJTd5THFpNRG8q6PJ/MdDOt7kegVbGVZc
hVDfhL2z6+C02j4oItLzHSnIkzPobWnOsopZeLbFxqFWy93CPY6SFMLPSfQTYCH0WxpDJaSFzQkH
e86KH8CzxI/yelehHGU43IKwIwYDKlp7TlTjkfArXstCodqv+oig8GEkI9kKKEeTBN/QleSs5dV/
qPDOJayeXi3JEmCWR3gSM/yh02NJ0+2tow4zoINVELZViIbNo/tScE6B6v+mI4ifQSUWR4O1+m35
iYKGnTnBP9O0ZAG56xFD3fdsTBV1znZGF9kwm09Yeyw7Gh6C6hS5q4jh2GbOSw9uSq9Xg4HBwWRq
nwO4HGxbapiOFx7611BxY3mxYR+zPGbjJKXSp/w2saDDRR+pHYhNV7xIH5iR40JgNmqUk3hSWYdN
FbOuyPDfMCILyvaRuNkGMvq60LZBhBwgzFazWAhiygJupNuS1Ar6e7NISEmvi7bjf/o/RduEfLzH
AvbUwapCFIrtSqe9NC8O47y9TMrMpIVoPHgM0ylVWSktYS7VgNJzP1WT86X8mNYxYJvrfqoi7GLl
YkHz50tJYrhyluMcN2RbTUpvi+tTKm/1NMTaeFi4bYzwlYzgVHt+7VHFPSfVmH8Y57lZz3+GbEte
KwG9Dv6wwmT7NyfSOhhk4QmM5lBaHQGKRV7u5u5vhLKgZjsjETdXLjqI5rlNsJIT0G0/zSP14ZFz
aWyFSHPbmtxNjZuGdnceU+P8PQKcql6IXvmCGPKGlsReSmXWVlqZtwIzntbrBdo8dkJspQ/O/tHX
nWjLb6me4QTl7pYeqEEBppUqfl0DF1YW1GgroVvjITbPVvpVO4PGNzwtEd47W4HrvoVBvLJMULUv
xsiVsYlO1P4KWxkQtZxeuq6cv4L4MT7Mi26jfQK54ap/FsT0U64ZURjEKdxifG2bK9aBp9cIuQDw
s1NQR2JW9Tfp60iioaM0y+/d+uZbC8vVzWUtsiK9DmRKwBYMyLj3nWUxus9N3OOjBeNWZrFFFccJ
l0tTRHg9qwstPlhXiCRN6jZ0UhYVfqYKQvwZ9aPvV2UScaCIvGLCLctW3L8tR9C9TApiobRc8WLr
ioSs3SqO4qBX2n3NrAGnUibFFqKTgEHe3PvHqV7WvCgZAseL4uM9XBQViWNK5tLAZknw6epMNEXq
D4kV+CXnC4fjUhlFxzIvuH2MsFNghABinpUx52qhBgmz8xHnQT0F8WaNQrj/afDq3DK3ZPGRCtCY
bwqy9TI3KNU1ztJAZYGcBFRYlMysJH/tRjWtIaf9ceaUrkTa70V/DgGhBVsJOLjG0YvqFY4GEHoi
6VFc2QsjzK7iwe96jInUhj1EVAuYhKLlRbdl22Bi2B5SfAhgOn/Fz3SxG2XJaesgzS2x9VZj3k6R
fNgpDvQ9Krvb3+g+7cIM43eCPOhXt2jHVDYw+Ri0hrO0AfcvznfadpmuSRjNkUSvqOfWiFrhJBqf
a4OGUnweamgOZWQJM7ARShmTdVHubSkSKBqhebaSMVWDlNIgcFD7BbcD4BycKUZGhxmNSjhCpcb0
5iXqM/kdrbAkbBQdmC+dF8+Wlr0/w3ENitHi4xPuN5K2TnjrqUrAU1BPNRx05+SChdXsXTr2Wsou
wmS9MWQfxq2hDakVzrPZOYv/mShOs2hDyRZ4BLLvYZnu8oHg0ns2griU81ImyQXj7hlvP++Wrtxz
K4w1obMZoUi9eJrlReZscpTFslCTI7k3IKyM61Y+2hHaxbl2oFUM97oNgaZUtYzjqi3XQcmDsYbV
xK5wDnE52zya1jnXO0SCVo/0BehXulTPE4+JzrobrBhbG7hGrc9mzS/aHNx7/BFYoGFzReG+s2mG
4mt/352BUwUqG2dp3ahk3bDVAPbTM2Ama6dEHD+DQSS2avFBT77vIBCChGPMYaOcS8Pv/jM/Ecm4
V4WtBzwFj4PYxpqdrwe6GaXKeg0dUa+THasYyjaq8B4EOP8v83xI7SaHmXlqy6vltgSR4dL4Nxq+
nVOFVupquSY3m8/vNXtWCXYUqjbsDdYCQT5O8qt7QdT4GVgPTovfKX1aTjiOJPmKLas3z9XFvHEP
rpgp3boGXN3Ev3RURlC6YMI36vYV7YHmTOWhXUpOsH/3NgTRs9ERuAww7jBLw0MfGCUj04dIavp5
SsBUsv4M4hPdKhLSbi4qxTBfQt2o/sN5PSZn/s3sJWNjkpTCbWxQp7TDME+NhFfYdCKL6oA9rwxo
t4t8lOJEVwvtRvzlKrgg/j4oba/Qt2d/64io3hFrkHqgi7qKkQ0IIpQ1KJQS2oCMOreyHLR0ww29
S2Rjr9bJOeu5AiJoqDK383sHF+3YGTRVmXaVvfjDya9Sm05iOMvq/1CXG1ahhoxmDMFy75SVfsdL
jwQggh4aox0sxxLr7/o20jvOu8ZKB0uO0NKMIfs3iPokGj2R/JlVB4KRnBxtH4bKhhyGYd1W1Bl3
UFSLd0RWep6ta6f/n0MDCW4ttDWWt/5ZtvLKZrPBgDYJrrPlqhFJQ8PkPkbAZuTO4CvLkg82dKQh
cWpXTozWZ2756otznylz9qF/NUQE5f89qHKGehxWDw7Wn290vbOEc/SIZqTC+RsidmY9AOt4aWAa
FgvocqLUDGmjvmEK5zqlQF7ax6BdkjEPRZdcRBHQkML3Cg2D+9WIk3siHb8G4LZlj3SLCxsf5yhV
GkEi/eSNhlguoaRF6GE5IQkjcnwjdj7ie5k1TQ108THRECKJFxeMJx2G4MXvjhZXe/N1+BFI98p+
y1qGGjXR5o533lvCxn7/RZ53F9OOOfcsa7+hjWwPUw4rc3rmZRe7a4REg+OuYkHvbxATYwAqtuus
jFqncCAvb1pKzczV1Qd7P681dfjeG55nsKlpYSrJ2c8wstRp/Jta+gMO2kuD6zmlFOz/b0b7OoGq
1EgAQzY6un1OL3Z86gTee3Ve95fN30gecECi9wEQkxlnqVSuQyf2/ElsT+r+ytEw4hPDawvetEAJ
wd/zL3Cc6n11P8uEgELnGJDBgfxHCVfQ7g3wprH12hGoo7aPj82wrqTysaIRVvw6O/i1va8Y08cc
TXNms6Bv+vuikqz/EJrNLimj7Zj/XvJewcVYSDxMmnOECdyW0qZwPu29I8yVtjTvCGmK8WqKlEBl
q695jTKFS4v0xJ+jWBxklvsnphqAk0RrNuJu98qc/D8aHz+1VdS50Ds297Yliwz+57Caw775iGsz
j0nJV6PnnAIlr8UA969s2msb34JjvyjUnHsKPh3nR8XxwEw838fp4WZx+fTJRtKlEx1fJbIikVF3
rz9MeDMi1mrSUxa4AbEGnEjBYYAgzL/7aY1k357heJNIx0QEoo1cWOfTyw8cRRfQyCOSCG5VdXnY
DTKGVnS/5UQgOjD0hoIQDcnQR10//NdIJ2ut1/keKnML/38PmaIdXkzk/CbKgMBVmSYvdPm24joH
+pRvN57z0FZXC6aoelgXUD1tTPvMSjAOiwqM0govm/OkVMmE2fh3legqAM3Wy2BpWiMKAWjhPUUR
lDh+4lrpOwULzu106rDt39vSA9hza4Tx4yA4P8Zqb4D9wnzNH2zZUPlUdJI79szbljHCfJdhopaQ
VVkGBvASl4KTdDVqYrknObIaAKIKq1OVuUj33fvLnC+BTQHpJ7iQmEhLAAqrkTjkWikK0QntY1AD
Fu39qG2iZrfjsMPW04DCbQv06aXYsbCj6hO0FUatswF2RJZrMQ9mWhGbxmszLuclV4CGbT7YKbBw
giQTOxHXGVEFHw1/OkQbhXqDMbR8B/3b/7S29UjObsBP/83hO7bb59g38z9Jq0oJKQlbtyZH5T+k
2M2yEaQY7EstOE0IPScms2l5JXE3418TIfS25Bw1hBuMRoTW/UZKZdsSpHXsC0nl/qvrdKQABMEA
IbwDFNFqj4967H9BkHc6YlwfC/lm+PGCZxXpH38PeHVyBtaf99nsfT9lsDUS7XCWeKjkzyytb7/z
siIEDPU/kusVEsCOwsYawqRnyeHkKKqaWPKFIvAajXdVBMvVyXp8f4gHSqS2NZxDs2fRKA2KeEiC
abATvtIfKhujfoXuBZh77dpBQm8K3ctC2FwmzYdpb8O8QvW8hKeabPz8Xr8O7fdChCtNIXae0O9l
gDr01qLOJ3cF1oGKks5XqCoQuSSmD+uT+gM74aetrrm6bJhDl0DWr+q7L8klqVAJv7/YAbBf3Mhy
6HCFObXGyAuJsDpGVAJlwgdrc+yXCTYJObyTf/qJOd+Q5OH41h7IXpAl8wKcxWJMEnwSVHayb1/8
A4Hoqcy2L6hW/JYHKWX+lK8yeEItDrPAcNcnPlulbb1auX0XmoJP/1jjlbVwvp8GrWlv3+lC/xiS
QNNXgcsjiyZ7xbfun01aDt2xVETXGGGnUDblEFdyfzK42vEez6Yabd/vKg5p9TQabq5BH5hDhj/8
wiRrlrohcGGVKKBYo+bttsFgNyy77MqGckYDbbTbpGM5sLEu5iKO/SVRlARzLIBv1F0ukeW9gXWX
Zj5Ng2s6e1rSAZ0/DM/7tU+odbMIwd7dGkW6OrYKaLAULj/nZEGfHrV9vg112uKhbjOlLAgfc8BS
1MENfeql4+adphwYlVbMzY1z2t5kbY1qHwOXuXAfiSdKBgvzl2/iP6Ak1mOPQl9Fl6O+kwlu48bQ
m+QBxWRwieRCWLdkvmzcu5FFA+s1jw4G9RKHyJY0a0dNx24wyQAb6hL+12PwFcrlQJnJNm26kxdH
IIuxe9Wu1xV8BfPxYlylXJz0MIn7hRJiynHkEl3xXdstCAUZi6ZhXpVZVI8d9Q+dHqHYER7/OnpL
Eh3z5ytRcbNFLIrS+a2FuAgivvtk76dQeiCJ9mIu5DWS3tbTh5VZBz1WckqvxBkKoC4U6bxZMnmi
pfWJq89MPpQKm9ECgxOMoNkfACuIlFKdC9ccMVindwkrg7Ks82HifGrLLcBjb+hDoh0KmSz7StBt
YQsasgRRBYhqiotLmUyzRUgMLNsyklWgVU/otS/LkVUtzQYInei1LAr/K4siwMXATclaVDztmdGU
B5lfySm7w2PGCNpDVV7OSpFKXBIBIohn3Z2sFhYkAtTEYSFE1nJVwsEHHK6oBLt7sfiQojLdlc9L
ZiH5MJcvzULgrczxLqg6ravPrV08RCPrh66ojZchDP1S7IUCoyWVUgCcdSjVap0ZaUBJel704uc+
5wxUSQ/jNx3VHX7p/ue1goxTTvKhcHSzjHSNYWlW7cJdFda01YNli80Yjn9trNeKrvMi4bWNYsLJ
40WKABhWH0iJbbH8ICZLit+LkOMbydHBt+VBf97Rc27T7azBdg7vHX2QYrppCzPPJSW1ErM8IhC5
bpQxI562JIGqDKROlDrmfpA7nZjxHvso2BTGEJcnYxdylMzghv1zqkWszPefMojKB4L0MD0iRiu/
VdrwFQ2UsQpktHlW6LBYqhaC73uJoS/xEG//Zc9djfY8Hgi8phl7mrWnRF+w0ZzfOpaG/tfQO8MQ
Cad7sKOsrbIYD/J1X3o2333ND5dTa1WEQ65EaXCpP4X+hPs/qwi/dEsdPh9GO507Xc8iJNbofEFG
frBcyxJejzuMXJLBcTDh2/NG7E6Ny8EB4a4RyCnRBs3UvSipn8xpBlkUwGiFRX6vPRPvM48Iecpa
pRaIw3suActoy6vkvfWbaziBbBWIevwMrr8yGPqymgAjhDwlaBbw46NDRHHKxajYcfhiWD/rpwVF
azogMc9LGnIxPm0X75ZWRbIkQNtPvT0R8OJClwWrNI/et5/+WV5EwJDp317rf9DrqdKnf9qH3qL+
6OpeqVY03nvvT8oECfSlqjrPLH5ZtC7jZmtXv7lp5xzZnx2H+w+u7Gni2wzfaCqp0wU1Ak1XTbxk
hvVGhFGUxK1Hgy1FPV5J/ejjAdWZ+gWuOD5TVHUi/lkCA+I1bq9XdpYUJbwtqHBtMDKbR29ACs2Y
A1/x2fTY0sLqK/xxxA+AT+9AQT6xIHR+LdXULTADnf3LuHdCj1/9UeYPYNKYvn1rkwwNgdPtdefo
ca3REF+ZDFjS4oyTVvR35CGoehHvScZH84YnH5AB2w3TeVjvZSgz2OVCeQLnbB7w7XwaiIX71LVp
cXjgkcoalXEzEsV6L/a+xgM72nyXozwa9DCnV8USj3E5GkD3T+IIgwteF1oype4B2acszcQP9mJr
uon/nkrStkaPaYke/htrf3emHo6n8kgMxsfxbNB1I1kgbm5rTqJdmGU2tBnnhXOS4OY5V57Kx7U5
dQaVIDuBN4MoGImAXwE5kG9TNZkgFcz+oHFjpzimY5wuXTZzLylUotOa7CR1H1O4i+vbd/U6514O
ZK2407sm38Zp3LAW8noWz/vtGKn4BtcnTf+9i4fmL1Z0iWT6WYaC/BGRZHPxJWot4EX6459sxM2P
iFImAyJfabQgAcaeg8RoOdJoqyIlo7fSs9PfAVTwOM+rvQiKMTjHCnSnbELuWn0FzD+BZ7vHqcGV
+/oa3RH0Bkx3+BGUGqzqfho669iAXEc+g6rxq9zZ/3U7/X6z9/JSrJZrKc5WwOFvB1jUsumZr9SD
BKz42E2dTEQIVam9rkBv6vh7BlqNqeEFy61ih3Vdc8if6QLKEvHyDXnk2OvW2zrXVjQRHOJcBGrh
u5n828kHHLkGs6EKMv+6gjmdouC9XDIc10sdUSrtAmECujZCdLsKHEmA2gNqfdA9mgNu5zwMceGM
M/zTw5pJdnsz8AvbtHIYNpwkZJebemlV4RhWCAnFbvPkk3Fukrt3cGfHbD1ttvw1OpVQ3lkjketW
Sfmx+7AXZkjZMM7z04O0pk8oZFI8D+81tQsf9ULt7ewtpW/7tz37nlSUN2Km33f3AtHRPcIW1nOL
pa2rb1ydfobUy4c/ABx1sVpq+9Fp5Bl99eUvpWHwyfzrGYJZ3v7s1VHn7v3gTm5ExKaeyQoJoHhW
rGKPjtHnwXls1Q9et7TWheRFV7r8dB/T1J3lcohxYdbSbyEIaziYWDJpil2oLODkZl9DmZ8R+ffm
zcL2XtP3sCBfZvDTVN/svGgOwtM121WvhVQZZmSyifN6dwPyXQjIfmgQFMd/4iGWPf0T2VATYzrD
HOzLgwagn7cCB8qQ4r2Zt2Fh88ZY545Z8WSiOSpWSTdXdrPBQ02dsLu3Xcrs3nfz2cH9WTRyZRtZ
ecDBZ+xuZ+wXMv76tYTkxJVadBSz+bkcjKXt2zmJYGEiNotulyb7KOK2ftHx0RnCnIQmuqBZXo40
WVfYjz0xYwryGuKgSAUqnzStMw1Or4NXPlyeQAKDgEVQOp0qfI//OsYqcMjgmE5dJGFqbGXeyeuM
HXzbo+0ghUA2fNCXYGyV6iorYQajnBf0j1yO8NzeOengXlKfbARg8pr1QLIE5dhLeaeHIAvtPYOY
NF/A9Z6dDZ9szpPSLVH9ggcgubx7QPBn53sMl6ELfcaHUezcaoLPza4SLkbZoOkeoT7DhvQ/0Z+K
cDn32MO+j6DbgsMBIW0RugclBQpswIGsotjE72/DGH+QigHxn5bsjudIRTKAzamdeRJtYEyQdx+r
3sVdaSfbHCviYglVl9iQqhCQ8/O5RLYXAl6qg8nK9p7YR0l6wD32vrRqPu37fDtuLJ6+IPHzdTuj
M1Y6Bz107w+0DhPh0vkiFAWpRRTcfyJbELrkS+4ijdbD+8dKvES71mrLAm9rAv9re9OULb9uJ6qC
816YvDwR7h2QS6yiO8vKK2ewtu7eW07spduHPE85S7DEXRuMFXVvssiK8/Bcw0bz26zsLt886OXx
M/60AG1LHOF9uQHoFhL42sxK+nKMQDZ+UmidTDWMpMM1gms6FriZUj6JQiSV2jUX98x/tzpTSrIG
WPl+cMX+4mFzlCf9A7gjN2GpDr6NfDgL3oHAJwB6GhqhWYONos419lbQRD9iuAFVVZMzfmPP3XS7
4U/svCcy9oC7VKGJAXROZLpVdSPhIupCk7RgGgWnSNGlyaDmvpmhE7cEtZMbks//yJPrceIFDX96
3WWeQDV79Asp8dphZP5nRT6N8g3y1LT55jo53JfTBdj2eEbH9zZRrCzjhoswXLYJ5K94igQt/Q9A
pelLB6FPGyZOWxBgFbIAK4CuOqgO5JzghrK9ToCVA2NWg+2paS1DmFJKJrwTWFtTIrsmtXmuDgdV
jt+8gZXYWvroKqwF6u7AGFJVb1zWQEwl3UfNToH3C2c1+zYQ6yVx06mlUdz9duSDMVfcEA2ZaI4k
KBJkO4FGXmHa2oG38Xx+/TjFye00hw9I4/lQHaZNDfiG3ykSaQ4T6HNzZ5+MxIHITU2MNbRvaaIL
U77z48ei5JLLmKoBaf1LoUwlRmb46iu7XgN3uWZenRQE+aiwaFIGiHVfqdS6lrf193Np8Z+7MIs6
R+gDUC5eqJZ7o7LDtCroSvQKWnJ7w0Rg1yKTm9H2KHardsY5atns6z4c7ElDAnxZggnXlh+umOVV
ruvOJ+dB0W8oZO07JYlxEVhCAMVA91Ij/kAESweQCOFHtshEnazGr1uEs6e/ZQXfpauCSW8elp7j
lnym9ziXkev8tZ4zqu+Y6mXwY2jLeMrxMSeeiXGkp11oAb6WAHIwKsVrw0cH4vI5wAjpHl4mNjrK
X1r4urTofcA408cGsQ3M7Y57JdcI84S/B/0+HHIlijxnvIFz2E52vj/aZddHj01vFYqtQ5mIt8LA
R/Mei+nu1aH9asTVSxD6rE1RZeooppb/AG65MiwYoAB+lWaFOlavZ/iJzlvQYEeraCwkkdu+SwcR
DnhcFsbhDgd0U0T2LFoE8EyfoQu0Sv8Sw4O3yi5L7D8EkBH+P8tnRRFl6z9xteeJFoMMuCBsAx5W
CxBSkPviQNiAX58wFTtg7sHSt1ZzWMaimhDUKPICgegg57N/BZfFUtF7KBAEBsN0+lz0jwjk5j8L
09NDbm93RwC9KmG8mTmWx2OntQuXNKROJoKcVZsMXgYo+QTBFidi3dGLpk6ce7GdOZOuy7YvJarA
dR7qLTklQH5Mzo9/A3lY3featzPMLoT97JP0DEzxJMtwttJH1JwJBgKl5DoTYxQuiVDCRrhi0T02
5gfm4PG196bZrbIa5nkQTFuwn4XO+MH1I3L0SGH5XbnFWLUJ3HCYJ5Q+gvNUniJX4CiudXNCyMZY
qchibn3OnyVgVPb/xCSK/cHkwuLMEEpqupo2z9y/FJlLh6Ytr4tdb5cotniB1g3LjfMgfN8PhIsP
dujaQ78rYNCcV8ZnGVh1BOZu/GX1Ff4+ULkr3PubOyfY513Gvr8kiN8d9+bGy+r/ZNihC4U0RVz3
2JRWBaNDqRW29atNeRFBbyItpf0Zd3IZUMlRLQN0+aS79yZDLd00t6QiSssq036tJs2rPDsrieRU
isPdYSeBVW+L6jIiyVqiN6OzQnWI4e+wo/9d4RsrSoMsi6zKwG71bqwhN3G1IF6lFDh+oDbrBB+L
AxTHoiEFVf5ObYchvSLL4rBLssU6ehiG8b4mMe29Ph+vReeB9asaKGDIDQtqNUccAvcbZDmwMq6B
3aA+Vq3q0hGivYvN+vGk8KIgjPFjvCqW9vN/uqGgNTj98uBez3FWRLNRzN3GrchhoDz7X57l9ZWV
Y0cO5eQov00TfzDeHlS3lhFWTwCi6XB/a+x+UZsHoBCF8FrJ253ksja9ngltm/irvegaQ9HFyfmM
fECj7ei2TCmruu945ZO9qTEXwRqgxANUevsaf9CeQfMWI2MxSbHYIvkbHoZgorFTNApfjXZJoSjB
uuTxGP1HiA+damjrRqlKOQtlgijaeMA3Cx9dVcuc7XnLuycZjbxsSsb2OJK0FozkHELfE3OKISzy
ZWoH63wAgyLgBYD+HMihe3r6zDCxCAhzyeQpDFdnc1KiTyDMV0iGibNldlWCOz8F9o7apErYgRZ8
aybhDZdFUVHLwnHWQbyeNEPsDNHUTIQD8LvoJwnh2R7zvf3oRiv8wDP9STbL+7A+dq/VT7/z9Kj7
kclL7oQ+b+QRpJdElk0Ep5cHkQnAdYIkQFfrCWrLOYl10Evfz5I9eBec2rBY0jivQl+YuNPWtFHf
i4uAVORzv3JMBl3nKacMpFXTXw525vDBQKc59++ClcBqTUG5Ut7GQowuP4N+KJBS9E1OhUTeeYeK
9WARaOn0pWl10/LpuuFWfBf9JqpB+1+aPB9Z0T6wYDt14TwyGJ89pch35tbqJOm6Uzu5hKoTo9GY
ZzJ+eNIHdFVzepW8ES7FEaoODK8qjg+1LZNAlsd89O2PmtbPDqRB4QCGjB+voHfdcPdaDJeiC/Cn
o2qTME9PqvI2Dj8YMpbgc4q+aEIhPAPKvTE89yzJ2zOtxKAwiGzuGMhdGzLxWCqBAKj5Si8dtqUb
g8VKXFFIJEgunckoBGgVaxfUwNUuvn0JDkl9xmObzQ4SXB76EBIwjlxwhMtEXzLynDQK/zyt07hw
6rzwZahAOiwz9lLvRG0lhHeILN+c4odOZ4LLic3+df+WEhq/8vljRFu5piCUYlIg7emeUsapeL6j
yv/wTa2YD8pMI1nEgKu9Y1quGKJB2yj5v2bATRTOhy7ydBUMfx+ATcCZFE14mSeYsOZKwwfI8VLt
2NOVJNOChWnDeZm0J4GSiLKQsiK5WDKtf+4xIVHmERpS35gfKpBEqE6rCg4xOEZoP9s2AA5i+BVY
hcEe8PH22aZAuhBOu5/qepD8WOpLg6Ck+U+INikix03RdX+G3a75qveD8GZ7WaxS5g7L7oAntXVu
SqVPbDQi/3OFgGcirJTdHN6/v+6Rzo6Qwbe0oJYaghT6xr2T6vPZjcyA8qYI2zejpTvvCkTRLZwr
jEygT5yGIGbex9gph7EuUGmcNHmWQ2IVGzNFtPf+jdSip47cl4k1ua2ZFk5zLSZGYCixa3pf0dgK
Mwu3xKUdgyPG5V5i/eTn3ZkC3g+t6C5BtCPR25JEvTunMUNBhLDHb9ykPMRJSLIk1hAVWqsTMRy9
30HhsXYN4gVWi06Lr1GZWTUcX9w7x0Lq+3Sf6AHsJMcJT+gBTmjSn80QwCblubg0fXLiE2V9TRFQ
2HWiY6Wz74Lbrg2mRJCeUoFBl01yorou0WHYKSKXI4a/uO7IVQXlfSIEzWH6u2IB2LlztWh+PNGg
+IJfnNoBZC/5wxcn5WeJwhrzC1w/wRJHH+hEg1x0UqJ1AkFjQQ/CwFcg1JhMT2HPvLCWbkW72nnY
cIIrpQGfuYE8DYu9kU6FLqYu+FiFhHeLaaMT0W9rUSZs13Tb/zI5tq7T9I5Dh0RvTCZQgeIr9s0h
PjoXhpta5q9sllAm7B9MNPJHHQ6HmkNKUEAvLwUZRfkCphyBzZ0IhUvajJfX0pWBcWCnM7AmSI9q
pBgurqzqa7cVDV2NdPBvKMexQyeB3X3n+WbjiecgMvkVTsHv0kfUzpEB2a6kxqpWXpSohhAW95B2
D55D9pOnQuhdbUlm40DylAQ6VwFY9+qMDiKGhI2PrKiqvvSFmMocn/QSmK9OndnRkey475RYdDEB
LRCjwrf/CEI99YLoqpr6UM5ufu8hfOk4q5vVy7zUMiJRqyVmVcoq9ZeUYvltzxxvB+YnTPNaRlZm
EE2HHbnV+1wf4JhXLQSA5Ig9n6tUjMJInjozv0xVEzPON+EvpILCON/DoLnCvWtDY8xO+CXTeURj
htXq12H5Vy7PQZ0alDfvlq8XVY8E7qa3T1mrI6RiI9vSnHjwS39AcsJ0w52S/0jRDxx0RcYa1z1V
q6zIoamcYpzIdZ5KFhyAvvip6DtpUpPz+XlWBTF4wYOtPJ5fT2il6RpeJinDDw66qtWxmo8zVCAf
ASZnUTBrlaGMipmK2vuLeqeArGWr6y3PZS2HROaf5/89ImLcCPl58e9+d5WbKP+nXBGAHBN8xuqF
beznrssKVLLueHm/BMrxYpLAdnLu+tZLH8XMZUGUNJu2FSgg+qDSEICfMPJm4RM1ruMwioYdzyL1
EN8l1tO17/C9EAWQFtEIF/Bk9DkY5SMI9AmbadxJh2g0Wn+GxXluKGDgY4a9VNiLBgXrccQtbBwk
wyVpF8ljLO9xgTD0IqbXd2/X1LaMO04Mf31UKFzaNdkDJQpvdwfJyBPoplZLcCnEsJnSIgmOwVaE
yi88PYeykx55MzHfY69S+igVkkO6mHHhuBiugJzA6VdBA1lMhUd6grAnPeen9rvFdkmjLhXG+7y/
Krsj+orn4p1tSv/vGVeotN8zSdbICmVDpSBulk4w+FA22HtICR3bT0EkzdzsGz7W5ERi++RvJhg1
MWWqkhnWWEdWHX29aLQW8cV5mEubh9lnb2ao9naQySzWHsykCRTNxUljlkwz7mM76mEZ3W173W2x
ZJrZwV+vd01CVuxwUsraJgi0qq1CAoJWUUcFih47iFijumZKpDkPxv0c7ZJiyad2l6XX9Bb5n3Me
aj6q13stMquJ+pa5iN9h08XLiq3ad11FOTgoR9lYDprLRVFTPCVOqKYUjcUc5YUaCYeCgLYnDfFZ
qbfI/sc1jRSOev1aRophyplIu6rsQsHCudd97fruq4T9QI4g/b0DFA+uyz9zmJ2SMfwhPggBHhHY
MsZ5AND5JC840pKMstdYt87lyQUYN8axiHnT+bACEhY+XT6Ip6Aa5ppvOxW75CbcJ74+YdPqxE7t
GPdqS4n5wWxWy8tBLO2jabzQ40rkhtwrODJQiYX8sgczOme3AujEBf475bhJIZ3hXWILFRVUOE0F
UdF9Do/UftgVeyaGNiLvwks4TURr1ODzj9E1NDpA5ZmRWiolXxRE/wcQLR/RAkoS7Gl3TESDUpkB
tWYWHCGoJUmKikon62BWC+LAPC/W3flP5AVw7MFMDzzDpr8v/aY5OCzwQNe8kLFH1te7My6wf/2F
ZsibiazXmRraZ+5DpUssam+bybuMcHYnUWkI/zaLH5GJM/cSZTFtiZTQvXjZ+6AvGTW0pXmC9tuP
cvKjypxc5C71wMcm1bajB8mDlI5AGyWAzmzXOlXIgkzty+v5j9LNGb0RQVUx2xu3Rk+5dZmhojTd
RwiqDGM8qqb6weRCh8bR44XA526Bb38ME114LUPhRSmKCwzSk/9bbYn+gxBy/9VatLsnJqzT9Prf
v7GNnG4Af3asNObc2Kk3scXwpLaghBweFfq6Lyh0QPEi0Uo34LnyeBgvr7o6Q5lYf70PfHz/T2GV
/pbRyq3M/f50hgrbemIfy1k7oCoNZBTG1Fk5v1wPZB9P5T09Z1qHDj3OgV4BQJJahIvl+l7pi0Yw
be7hYPBq1ehSWTZtoY+Gf8EDPmh13D6bJk6bwAfGC6aMXXTj5dvV9MDamjjgabJuTg6fbd2vm8xs
c/4LfVgrzsAMnC0pBN6MJug0rLk4H/EKJyZRjwWlPD2HSSqyTmqCW/niPODDmvTwFBpRi3Uy92PT
wRS96krECttZjHsxNBQ6OYUXO2pBjPobOjzmb2SnZFhDkhnxqyskXIkn8t8xcIsjuQzkP1ArpqX4
78jxNTrZmqbVelHmOwHwmR0eI7kjJoG685logDkgontSZtuFvpmTZOFA3Rht2vfM6whCYGBLv8qD
tsfhzjEc/lAT23vwxnr5mmz5XubclVH1AnLt5fwvJIsod/EaFwGd/PpgGLF93VPOtUtyyQWBDyJB
4uoyQjrGOoDFz0kDI9kQcjcN9keKrEoejx70RXmPgUShBzXGdd+9C6FpbGMhScKnks+m8fve01Xe
bJ55K2tsQS2sGQFvaSuLCmn/S6fleUOlDjU5i5Wvu8X9ByTXTSInyRR37H0uXRFeuD3pvl74lVQd
DrZedpPFZKqKvKxay6XQvKvFZCBmf6Wk1V7gKE+zGtRBEpyroLgUL6uf/qmTF0pD5l5OwU15eZ6r
EmfDInKO0ZNd45wxkZouxPLEMfkBCMd2XghbYpoKebUAhUQeKIpb5nNLszlxED4/RF+1kRJeiMsZ
rAKP4rVpdxq0swe0HupEV44/q3eTrRUcOeeS8klAMo3PFyZ5snAhB/H5QWfTAJ7JaUTnu9GElwZe
nE763wFzhTfHnuEoaNNakn/veg4+b2UsfkigUV3JcrPoh2lzWfF7hxVtVV6ZybmDZ6OEcChBPQl6
MTaLOD+vMc02NhZdceiNxCM1rqmL67P0HUyDjqxsaFNhjwiSiVDUTTCLGtrRNLTEUTh2Am9nZCjh
zn/9rl5yVyB5LftxVAMj0NQMrNiYTISkKXLHSg+LrDPo//kNchXeDUbc6ZIxwWD4CuOlvEMTf/Qj
mZJbYnOWvB4vrStrAarNkZVUKUNFIHTq901VH8UAt33ZaL/uyWdbtSC/566Njpvv6b7QqAkwGnDa
5L+2aHC/J5tn0mObMkKeGRW7DBO441AaVE/2gVlpdv1NEcsqVKFzGWIlVTq0+ZZOeFBzashtG93E
bCGh906sbrpRocesqRDbWq8zYqQPIazyAkgCPzep66aeqYImX0i5TqLaxlhJ24WwP7nqk75izZwq
FaXXNXz0tGOkc1FhJiBkZWcxX4QZabGWZBCPkhoAISPO5jmd1sFhifaFwtLU/eBbO3ZSQuXz9v59
Ao6qWdJXt+2k8+FhovG5yl91TJKnJAoS42yAiwCn9yu6+0ihbZJnnbrZzstpsneZTPj/9BSQgJYj
fd+pZzVRcmqkl1Iplh8j+g17iiPx0IKQu8Tmx7ZLM9Qv1EXQGVKvQTRFZs3DkFt+mRu5n4ZQqQc6
V7Ys3lhtQmQ9mVAirdjOA15jV5k5dAfMqA/+C2gUIhKSrRfnGncMSZbRyUkoPzmUBa3ij+wjioDO
0lp/p+k5xVabqe6McUAB/bbKiJmPyh7sxsFVfdEtC1rcgdM9SZl9kibdebGDfqjGEFry58+SHNRL
1wWYgaBXneMEb3d+Vm2U0dTecMbYy2N3PTlSkkTy8EOIctt54P2MWJWbbfpkoEkCwgWN5TxNVHvN
A0YUtcL0jOPggoonbgOVTMT57170aJQHjZ+92InsUt6Zp7qTnBpoH2YBWgD5MNnE4M8caGPYvsa1
XEO4Gb92wOfOl2VmnajFmHnudg8HLxXX2hzgI0dofifUmzNp8zhG6MhaFioG8JBx9ITLpWAFywvX
Zr5ngNkQlfcbJPKkg6BtDBytiUPlPpPzZXhF16EckgS6DuLrW768PwzeEVtm5XgKwgP92cNPufy4
SuVbEz73sLBQWdsWp7dq4OtNlCdMZ/ntvj47Yd6Gd0lGXFkdjQ8DLgz0vM1C3wOXWCfxNUMVn3zR
7txRrGQ+NG3JsMZ1HWxNQIqQh2z7lqwXuK2vdkHQLgqf70JK2ZgeAlolE6ZuynJB0Wpevt/toZ1j
XE/W77FzFX2N71so0ZxhXkU+uykWUz3dUQhO3PxfaIJKMamiNrgHzyQ9BngEsVBg4BjXmqRfa42y
bQRfudqu7wAR5Cb9OxyDC5CWUDkxCI8j4gEvK4dwnbsjfpzT8qhSHo6oV81Y6jN8TAb5NxwCsVT7
2eY7le1Xn8gwozyORtjej3bIJlfsF/fEsr6E0J0ipASSGowrY2asOLGMA+r9hJKVrSOD4JFsJS9m
J7EjxvNvYxeQbA7UTIELzx/yYZSkx97dMLbxVfZG4PY0sFEs0Pg3Zt5PklRE3i1Vr3qLS65DXocf
qkBgQGrjmf4+zSaXaTrrgIhpJTmArynhI7eWCBVTePgKJKvWtHcEcyY4HcnaeXOP+MJtzrct1S7j
gi1TG1ZOUG+NUv2gTHSH2JvyKDtoX2Yug/X/TmiCTNvpP5rv3/A/Vrfavwh/14LPr1nSKJl0YKoV
M1KTjGcAyIvoi0w13ZT9a/5zZVT2M3rFoCM1Sbcx1hRwdSgpu4q1lv/z0BG/lEl7A2UMtfCkuhep
JWy2eAOaa1FR2wZfOCR1bfG2De3t1vY94vw+ylOS7z2YNMdMH6NDuu0op7QjEwrWKzTPBnUh4hi/
dtOyz1RuGZUB5IzgjcnEdPYGSp2OZJ8QWpi6s8c8UHUGdbADd+z+l/C7FiRUtn+l/HkB/ToFyu7S
y4vBZMrAld+ceQiyfk8mHPrhCw3s1y8V3PcWlNqCZozYrWzmdG45miTkUZVeYDGnDE49P/opkVuh
9zbdcLjMNi3PjjewXzFePfNX+8PM7KgYsesvRSAvDyfk+KTZY8uh/c9zEd+E2UMYoRTSVuB3/IIZ
jNioetCE4FylbLOCeyePZwUs9KMhIN9k/nyycQO1jKL5Fx8SwNmJpZE/TtoVmHC0ZanjIikZ+LaU
6vsy8QWLupbgDYaNLslSGGi5186YDryyiyPgpDtXSEdz8O8MNUW6+Ke0r9kL3OI276/leYKgxyM3
GNAHOg6DXxCUq9GU4GRwfJAvNn/oAPuApIWzfxquqBPFlAjmf33JKmp/G/96jS/kb2kcEMLCtWDr
D2q0gr59wRRALUe6CSwLC/9KoO6EoeJrpQKVyWB3xnvq84tIyp34/BRFAEfzpzhuHHTEUykppHnw
O1X1FGeqAfAv8yuNh8kYHRdO2mKSLJvT38EoOE4AbpcG1lkrGI0sU6RLAI6KEsvQJ8qi2mhTg38A
HhZoiGoEYVgkZBEoHhuOlZ0WLE2vP9FXRFTTkgBIB70OsOpbvISV0UohVwYLqJkfOdkgw3IROQnP
NxJA6fZUXWgsFRSGeqAlk/y4Kbu8Ecb3yRSQAusfLIT5TryUCq0aRMjZIj1bDuF+F/cclHeTmU6W
SEUchMdvSR+DvU+konrgSD/axpMXgCiI5mewwMJNeHUSnT+/VaVhg3sT9eMlblp2nXmI+1H6h2YE
+xTpK9uBGj/LPq60SWCqOuHiwK4+I1SFSmN3zXz2TUJV+2K3FZplQH53P6UA5WboM8PksfFdwB22
vUGr2d/FB8nP83lUijCr/0CpMb7q46WyurPBPv7x3symwctBfOaWkWUB46WMTuM1XMWK02XZUrk9
AysA9Yz73CXLUFuaRIB9Oxzc2OUsJ81yVwXJyRS7kk6ud5Lb1BKKerKBnvA1R/YMIFG0Kp4Se1qJ
jzKWTpI9BB5iI62XahsMRKA5IWRGwXnXR/Ghk2mncI78fTVZvhoJMOdmSUcDmjG5+NLlObXVmi5X
rtqHAudjtKoqR4TukWS6iroynJlWEOl4hdMBXBOXxLQjNXCWFerefhvNDG6deF1tfCSxmECBmdde
WsB7cHrb6wbaHzKnU//ZN+v0W9eEQBx7NTEXi0rQc+J6mK/jrwLzLkL8NlfvZF12r4N3hGyudaJf
td6qTzI555FgOjtfR/Qh+6lN0fsoElf3AwpuQRc6r4ZY0H4toi5vxCOV7fLbChgLSemeSgW7A87+
zeiajl9W5vV4zFgo3Do809373epaua2QqVMTnISVhzsUHtGyYwoGMsWXKVA+Y9C/G06qqP0jKHz4
Fe/dkY2vNpTtRDBYPHkR1MvgtCpOwHnqLqLFRMYhJO9QZEM7WtOicT/yPqijb0Q2BMwaP4VpAZZJ
OyqBsqMZWjy1iMDcOofkMMBBG/eHLoFzVd9RnsXPheSIPbiy1dZjtYWuBevVAxswayb9zi/YwME3
fZNJQz9wrHOrWiXYVY/tLTitfuTY4IEG+fj0Ph5LPC2uxxdc5x1eGY0sFdApVZ8DjVuMAuf4MPyo
/ZepvEPB6MIFxoJshMx+ECyWodZcIRVMIJrzOsV2+rTnBDp0pMemjwWSJHy3GEuzX9FhDe+6VTp3
e4cBG+U2BxWbvP08TwK61OnUfRtIXj7mPWW56RtdqBDu/e3xmOGCB9+ftvRslQ/47eZaY1J+pysq
x7HFrmwQfbqcSB1klNp553em0YNYxjktL4LundKceUCTaW0smtPMc8PYFb6SGz8+vJFqFgK9jnNA
Vw0r47nXTVNTDeDMBJgO25qQ6YWwVvLUfWTSb1/JWo4qdbPdJUFfRWcLUM60GNj2Bfx8qIMGwUvJ
wW4+PZvo5OKLjTvow/Ns3FcE+DluepLznoVH5RTYKFwIB78mSGf2hcSxjmUEPqEKd+8F1tEoC831
o+1yMwouJSI3H+qzEigSGz2QjWnZwtNqmCMz9lSlhUFt8CrznwBwjKezCSRTRpAgo6T89EmfZ39T
mQhlnByaYn+bWgNJbUH9Gkz8chGz/D1713V0C0u7vt1igql0mPRcV+Bys+Lv7JitN2Cu6ZZfaQU8
JGSNINySAiSpyPuPUruJ4hH8wB3iT00Z0JC+zcjTxNjvTAE6QntHUKDootzhWKzJarhDqXXFm0A3
YzzXNAuuqXpWuDwauEMte3Fq4DH1K2mBzoQM7kICefTVRiynKHxVzg1laraWblpb8rlNMaAHE6BA
ToBo7e9QhIBQLpDxwVcLL9gx2eTmQrOsHgJ6lgUJaRy4YPrX75i7X3cpHIAKV9hGb9/AHuJPanZ4
MalnIgBbr9ezKDJTZIbvd3k2SHAxkEXeKEVrwoErjd2QILlFMrS6TxOb4IY+2ZI7ztw9oX43Jdtw
b28gKzR3IRlX3yF0a4A0ZGILrlD9JLsCqNp8OXBj/5ly7cC9Aa4+XiA3MMXkFZG6CMOPJh1gzGR9
KhZXoc8ta21VWdADwv38ubeknBf+2uZJhZL0VIRJ7JpUKnsYJy63Q5RzvqADluHoHL+WOmERErmY
BO/RDBwl/oMMoJwdwX/Qf9d4y2q4YzoZZMVIIaj7FJCGZadiU2b3d50Jg+fl/qz0imRLsow/lsfR
Xb63SlrMfbTeSU3W46CacGzkqa9PVtwaSfp6nCQIoncd0jBQfigCFcwxO4zNgHb15XihlpOe5sz4
AoTMC/3zSb2W+qF8GnKnXx4CaAiv6ZHt8gA+2N010KYSWLptNhOQ6uFvN2SVJScZgyATMMwAP2GH
gLNyeV6maiAtEjlPxtC+TKne9jR11v1XvF7FZH2EngseqCMRKdBr97tJGB9YNKqZMm1AQJcy2nz7
k33sj6bxIfvtJVgrsCnHKvdhVksts2rDHazN6wtBs9E6334jnICSfGvdLMDUu5MEjsi03uQt1A0z
KPyZFTe4vYwHlBicQr9QnTKNADwohfYmJ+T0ZQ9kqrdotUTqRkJl3HjH/RH7c/jG25vwnbZzL+Ay
DA1Tziq0Z9zF7Lh5cs/rvzu9JEoOYQO76EIBPZqbljUwCJV87iEoxb0Du0dHTTNYt3SJU/ajiYW+
TeK5qbtCkOhHQFSHOd/0jpyea0q6b1dnCPOeMpJDcxiSJYdcCvpg3kE1m+gni4n52P4ee1KNhUAb
DktesJgE9R0IlVO2cOh2taTkJSOF/ICsQt2V0BsvFWqJCpymXahukyJbygGP69RZ7tHcx25vulOC
m3BPGmpJRJ/qxnZkZRA9WQeR+dYHgZ6OyRlnm2oLrN3zinm4qDwSd90ROcxnTxuJDbHUelwwm4mH
IeCllhbX2mfxXDVYKhdIwTg1bRhBmOxdMJ54yhC0DGny9Ph/QtSJ9POM72R/MiWw+kmz/0yoFJIN
e+yZQr4OgTHKvm+CQQdhnzh5n6qoPOE3g1DzQu9uxEMupJO+C7DwXhuG173fkVt/MLOV2AzOiFcr
PGm9j9cj/ds2QPucI4BHPRH3bsX2zgsC2f+u5MamAYS0+NDMvP/ei9ZrBwTf08sYV3oajOwTOQEx
Cx3q+RzVdItzmcTxTaFbwHb4xrJotZdL7Vj4z9qPicDwRVsjcpouxrJzwzz5VArW18N2dJYMFlRS
QIlvQhcQZuppymie4jj7+twJeMB8jc5fH3SyjhMy6ZnJa95T7dTqYTeLD0xaJikv6vAluUAqhU8m
r0loTrCiZ+0yLfoAVoHgTKI2TyXHa5GmKIljn7faOWZu3cB9eaHEYHzbddgATnbzK70psj9poHEG
jnrG2wyrC5FKcVYQu3owiZKLVRLsPnuSi6DKLrUF9NURTkVtamtEYxxWUQtbCDKkyT4btu0yF95R
n7AeJEdCDH70Df09QkQ2iphuokmUQWVm6CnkelkHHOuhN5nVk6RsbbfrfLF4wN8T78mpWM7rD+dB
cAL8VGcojsfOc/iygBNpjYAv8igDiuesQYDQ/hYLWiAkheSo0Bk4qWfMjnrhetFiDvHXo9yTSex8
BLyzMUZ75Iv/qnaFlzTeIOMQjb6Ks5Gpmofy5HJ8/kIu+2SCmYSh6NcdaeHan+VQiVOEocsptQnZ
+Gw8IfGxiHmvkPlN9DnswF8NKD4W01rjVFAruKCnCCiduYj3kOiStPPaZx3NU/IZH6MF/bTcnL92
rV2bBNhzZ3cdPhcPEPxEEZ5R7o07EK8RVseFv9mcUhVsSGTZUTHv2MwhQSt+SQ4vZmBXLZViN7OI
InhaquHZbvTkLcn/Lx4w1P9rClYDCPHYepIZxtCgPa3kh5NNzRLu/5HSlSXs2JUXhmLAFYtfoPoT
jaSpxFeBFdZWhraqA5LpmNu4ikLVGG7GKDOb9k552B24HLjk+zneziMNDE1I09DLdCoZ/3yz1XS+
KeUCGanSZB2kKKWxLFOGrXd/+cUYdGe5tY12lWwl0Xj2BJozlzffQ8+xhK/fvK5TX67gJHan19+7
xuPJX35PblEbV0GC6To+gMpMhVu/Fn3yp6qQi+erl7/RHDLoW6gqE2EP8SN0IutXIxSeOX3voEpv
MBEyfBBm1+5ahJXP+2zTUvWgh3oudj+TDXIfyQmQBK+5o2QpIlkMOXT7hWNILxtyfwhSr8mGAKko
cF1c9OUqUF3/NX+m4oDmMzcIuGzqfn+uTug/6r5iNFHJBilNomEedms1bpsupN0LacQNHXy0KP11
ltcY/UWYhLA14t+ZUQkld4k1tJUjEr83MXuPOVGt1fMrzZaioDG4Da3byjgbb7+GaQtBaBUV95AQ
20AuG8zmaCm5pueIG0ttOdsCEGQJbanA0DOBktnWXh0pdRDEZZS4SVcE2EvX6pwNAPJcDT7n+DJy
+l3MwzioU91gTAi2cedFwEVeliUF2L4XGm/hCDNPgdwuVu376xG+SenlSrBxPQrjMS+/7wGH75N8
OncIukIAH7uCfvyGZBwF5QE+P/+8tT39o1imykRrh9nXJ292AfIPp9vsNQ0/YbpxklFimBXLIJW4
mlyz5r7lIiYaR8uEZKHcjDQHkofHB5rdt4ZTgat5Ez+PkP31KMMlADbYCyOqE16mxsH+tfO5YVkS
aSV0zTbxRlEGTlT3nyMbK+C6o0cXaiLPgGGD+7dmOflcZ9fX8uQJXBfAJW3azkKmTjEP5tOHkiTf
01uGHF5+bJMSkHqyxs589OAWQpuv6oaQGUPZCdjy/kc4Fzi2eJR8NulPjsGsMqIqh8E7sXTAyIEH
f/0Armdj+2rg1L7FuSoi3iY0yb+C1u8P22By3XDyAskyYTuFMYzki4AUkUJFx1hJCUZBNA9ohTXC
gh0hz7dGtUD7X0vdzuIzZ5i8iBd187qgoUObWdoolthfK2nmnHW0acN8M/iKKFxHpH1LsQyrHm6x
c7hqjdEB/+PBEl7PViQrPCD5CTFjW+kq6JB6g3hL+TaBqWH1R9odNvxC1I1PFcEoikTt7tu1FpId
D5TSW0fvSO/7cd1D905Zi6stIoV7guu5lXbIgr44jeXMdUgWmHd5+JebXl2ayC+WuE3fbxvs/D9P
hAtcgpY23er9nwE/6lgpqixbPRQxDp+9MYhLnnHECKmfaq+K/BehVTHJGgA1CtU6MEEF4HXShP+n
RJ2YgBn8omZGktHjwxbYLNQQrjj4wZl7vpUMfTYt/sC7lYBf4s0NzFdfvNxzGftpBrt5mZOcRLbm
aODPrx24zrWINJsBnH8vp+OvzE9a82FsbvZ22+gMT4iNpSYnUeYMCJpLxPyF+hy+RNRzBxZKYUPC
baxd+NXCz9ouJF2f8oJ1RapYysKrQfvU6FF4HAGgcznHAwsi3VRawYbriujLYW4G2B43r6u5AbCx
AJjW0I1PRE2BpJ1aOmyhno2Uxdu+QhUcyF+/38cGewq/7VriilIis5xsVbhthJDalpjy2hwjxYX/
EVivMVTQQS1CrzPUx5tcaDwTypJMps46N0aiOFcgkC7/CyHAYapcnvfo9Wz7KHKxboMSX3c0tFO8
vNT9BFm7Xgx+Rn1AVB3srADBullNSNX8x12nSRXFd/iwp89118c4tw1Uu4vOV6LdhuXBGUlP2exk
j8f223jSp7+jnYBhoFdD6vwnQyL77FBjN/6KqyJx2q+rYlQG2MmAT8L/xZvxX5HqV1eHrfoxap4W
fJZRDkDRlpORhX5HSi5Vd9W2qongN0zE7hNy59pFlulhnfuJMjVbAkWnWWnHx3a4CA3ouSVPX2i5
Ac2gXYETwFrH1rb1Bm1aBalfYQPYPgL3Hk/f44gcK3ZcM4ZJt+p8RRpTthS33XvCZu+q95cTlzph
hREzpe6wJqb77e8EPLB9FksCihkkv3wILO0ecGt5UBI1PoLS1tCFwYXWnOvlNnOmoBMUbAZtRZFh
n6iVx7fp/10PafBh8K3tMdsIpOItKJvTnbloXLBZeIKOspf+o0CXve0AckBQF/p8uPNtQQLF2hML
59W6UorQMNsjynrE6q793cXo+8lcVo3GIsgP3c9iM0yKhemazKxZEnDMLFrFqiZEivov8tRv5XXR
a8Uah5Cgk0uKI8FeXxX0rgzBFV0l1FGmi/atPWm1sklSfaD2OtEAOEjEys1o0KDpmIHv2Bc8K7eL
7fnCgAPfcIy/CTKfb2lM+na6GEV6ouwVg/ulbsZG1thkxdJJMgWWUYY46HFOtzLewR8opv6SjycL
59ImmCyHK/WTnWuFqR/KGUDz/m/+YjDy4lDXl9ASHNMydVa73YplkyhcCrZGehn1AaH6bKrcR4yS
ahnfJHttd9R99A5X/NOmmCqvPPPXS93cPMX5VG7y4in3ywYk4Cv0bdt9AS1iXqgjHqBQjY4k9MLq
eQ7JctG/zISFGe8a5puu0kAcHNZs+aGgk6hBrhEnOgYwYN7iGOepspBFrYwNqEoTrBwVKDDST4dM
Fbl082VkEzKJxbU8TGCz+11FjfNZ29sNF+sv0fyrwp6e+igfSBw2CafuDBSeGK8Z74N+OkVXeFNf
aoFxED0zJfgDdxLb9yu8WMRnla4eops8lC++lS0f3iSfM4vlxIKkannzt6U36v7WOUp+YeET3ypc
TTxnD6so8z0cJ3HeunGzs6AjWprImYdHrO2pLCe+d8PIB0T+V+Nrr2Ectbf6vcCaGKHjQEu+Vf4l
7zm61+Bo84p+DyQjgisyeg3vkyqlODoXXWW5OH2Z3NPEolSbC4KLvI34gAmlMu4KbNCahNrCrG0O
tYeZmdGpIAIp/K5ofNH7VkMy5FDrhK3OAXjxpJo8uS9TdAGekioljZMrqpHw2FPbWyamZrTa3xL5
J2H+KF5TzAtE16xN10CWVbropBJER0gKTjMn18FyPCUB6NypxDGFhOkSgKmIfYMDqEylKzQUoMLh
woWjTcvWWRDmCWmZDsgWGSeouAEctes5fwG5tqsnD1rI8kzhDXmy4A32rWtxlgCXG6RvLddV8d6i
JcVRlS+q2RZ7DStK8rbD2PRVNLuja5RDbXe4apIC9W+3RrgG70bvIEdL9kXOzZaRd86AYYku7dMu
djmmGiP9M0o/K/iCFDrKqqP3VsID9M+6gG9iykT45VbIiDLcAfUeHkIWIvwc4qOYOPoexB0VPUk+
OZLtKMl0bV1r5ks2fAwfMqMNbT58coPq8D7hLv2btW6tsXhNBz8QoS91TpABR1qFt1YV4uEcAabe
WkfF9O9UrRttKWO5IZVMxsPUrESMFtaURUwNPre7wLCYXg0aLIv39yQM8edE0eMyxEHYAKbRqph3
7o6bioCCIgIlfnGIR7vtaO+LT+SVJb5/IrUCTni3Nv4LCSeR5dpyXCRsDCZLlAd7lKLp+nkYy/xY
r3BAAKOfKCkDxzR/4rI0p7i8VecvWzxnelOLRHTXb3DoAzUJptNkaA8u/hSjBdTjtoyos6y662Cf
ulGYQqD+ClAR5TOOLXOn60TtxQOkL6r047kruQQAjPjS+vDfthuGXG7rbhlOBmBQAGD+9x7VMfnc
MwAoq/yBjC0oMOUJfCmkwxlNl/hyay55IcXae2vFGo9R5ywd7QjVSHvP32b9goyY2diHsPUE6Enn
CltbNsBlOPwVSkgYrmCcwpBTyG6E13js7M+NbrehLC7ddPoIJJ/wIkx6k9DjzsibIN0PtqxD08dg
SneOEBy6MlDPMZNzqBuesJNM4E0r+L1C4tZzPjn+wKg+vT1zJQ6V/+n9dxLkWJVCnn8YIIYZqNTl
qNFUGLGStC9C9W6I8cvnArmyBGuaE8pFtBni1unC04j0yLpVCl2PCTLfVbyXu8EmZ8GHsVKVD52l
H54LVuj/59axKT01oLPA/+4aObjkZrusfNSNnC8H9cZR7dqKsTP+mPNCsd19PyVVygBOffvcoQHc
9YmWbnhz8e7r7aij/pJ4KdJTHUret0vav83LLh8k7lq6KXG+AAM4rt32HFRI6TRKGETjSIQz5nny
YAsnhojNy0OkCCTtHi748demhbDwYkKWs8X6KynB4yj/mXBcufRy+ydbhXI0mG/v3t9HXcNedx3N
x6ivKbPDA590loQhEjVM5z0gtAZuoe8fBINKOSsDFmiABrw/q3YkyLy9ADbtCtjvm89c6Oo/He3V
QdrxfGZEXbP1UpPSmb2z4TAZrVZewkGpFwOBXRw3+9gV9WRqnCO5DrCPMAw1uuP8OmxH3XgQnG/G
IZUEPjjoK7TBmbWhy5I5gAb4pwS8XMrD2WhSIq9Bq4xc3/lVnSubQ7+OUUail+IruoG0GqK5we6w
9iJSYukPA7nuQqbZLs+9T/Hr5XAV5UzDqZRcDYaZrnSFQETiJQsnlKc9Th0GU9aGEytdXf6f1maH
IEJMHwixWBwXty3Kkgn3BA5U4PIGv77hMmgVZ7kNvvfto/E/vAHPdZCXRw5JH94dRM4YGhg8s5N7
7SGLtyeA5CLhIdZi2HBiaqCKeTKD7lUmGaUaXZGu4CgSKwbb4mAR4F1fzey8r+ZXylfPtA44V+1M
xHNomekzulOK8mWZjyp8t05EAg+7Kq6BxEmIjeImzdZ2WKq39lhHjzE8+jFeWrmyzKIrgCYzyzjQ
9A7+vtAZsWAMTcVw1x8FRdjBWLkAklM1ZMLqnNg+KIL/PB/Wx90vu1ZNHktmRuHD/q197j+Uf/ay
zo9iOKCMwiF6m0kI5h0QCu28mE/6BHExFKeewVVZLSwCoy/pI8FoIaomlZE+DOE0CROXkCurTfvH
BE8flRLGVRii6PLVTOKO4ispFrYbKtkBHH+33km6m9AWfCuimilVhOvaDDwm7s1hKX8LzcPJZNro
eGKHSHfjLIrR60mFQxmL8kHQKeaD53czqVkVJGmU8TWvHioRZjQRuxCi6LKtQ/LNWgYQLPiigslI
GkyiMCIvhCU3db5WTClCljyqtvfGiqkHU/dRJ9809yIO9TOuX6dcRxKOCoCZdKM4auWnnm4Yqsvi
GDmLO9k2ybBBB+B0twuK0yWBoYV89pmO3Zi1wAE47VVMpWpeMmWQ0xqmF0VVCt5B+/F4KVI0pPK2
IgsU8qM1c1T/w2CfpwzorJP4qjotCsD7/1dKjFl5DmsCdm/gq4zBiY8exrgBwdJQ3IYxpkUCn6kk
049wgIMR6dHnC/UcFkTG+2CiT148KGbT4MyIJpwd6ghRXf6fbdYD+onNmf5h6OiYVcCguiWcrUCn
KRy1evSsrfQ8cQ6NiGc37B91BlVs/ZUKY+OEejh6vLZdsrw9de4ZQ8cV1/uXjbqx1s8+B7Sc3u3H
xknO0fLiV0u8BIOux9q62k6/7pNfejURP/+gEHxVAicrMkh1mw+U3AOGMCc3el3XLjkIa8yzha44
MH9LPGITOtokJ1bubE+CGnBSjj7KvuTtuLWaK3QGsauVatngkjYcbiw1O84iI7uCelEbI2jumN54
KMzf2VZQZ0OUtvollgMswqo79S146B9Ckre6WqHmuDnviCHGsn2RbZxeQTmQYrAWN38OFftxFO+b
F4b7ytYd8MKZInzH9ebJhixrTCY5fon/mVS8aVCidkL2qalgErdFm/VqdCDoJBStUMgBvW0LWReq
bgMJ1Tam4dPIkMvEdzEKUfUzkPlkR1L6txBORabtMHATyKSsYcJmF989NCjPdWDf9gqs35b5XnbG
3olgIXsbZ254VadLFuOLkEO9tHqpZNUdx4kXS/sMdQ+vUEACZZQEkiBIvMdZye1gkvS6BH2cTpwC
SaOf7PJd8re4Ih8XclCKktrWAV7C23exqE82zLhuporyjsT7/x3aEYuG0zX1yPt649yK28Guy8Vo
cSndR5TEpYBHq/U8p3vDNN6c36wtXMtmPbSM/tdMhku5oUHI+nrNOmWPcmshQbJ7Abx7SvCqCt6J
Bw2ObZ0FIJC5TyALhQEWZFSW7PJpxAcV0+Yk8ET+7gx14d+dnxAuTVnZ/wSiCvDIT8N+fETIWUHz
OMvDS5mPgyDdmbFbikjlAIK7b+Q/ZmCceqSBQhynumm1feMtZhsAe4ZhGttp30/XI+mm1ocIzs71
Xe42+t7jJtK2n8si1qWR4Kr7JTOCNzATimz7hkacsJg8pSfqD39uyoqA3ZMiKGzcE4st5oPL1N7m
wc2/jTfBH1UFlZQcffACmcrlReUL4AcBMr8YNMeZhgJXFJqhjl8CqvG4lKPs9im1DZi60OBOoEyJ
skgv7D03xV3jbkXfo8vsZ8vFBk6bOmKUlkFSYoUMHcfuOxtDGAkOXeRt35RMgmSMysUrDct5bvB5
nOVbATIJxMqO3Cn7blYtCXjXD7+Lsemu7Z2XRdwsgfkfLG5CAoDV6Tf+aVZn90JaAeRF3y0vZSnc
14qcMyJHEpGxAOWaGhTvHtGaKF9XJ8lMyv4AdTwd30rHlczwq0rqJXRiIw42Ya5cFxKcbd/pD7H8
EvQNzIVynpnsAowbGCBeeKYH2x7LZGrQxCFnI5BJIWOFfsMPYHv4cGPFRIEmtmc+QWypotCQ9iss
yTRtF9ltx47XZUZG1rW+raPjbkiYEAmSpoMSqWmwtCQli/7MSTlICXxa+MdUvoNNJBN7PL59Q6Cg
Xhkx1umlxWjs+JuPReNPXZ72N6KRv1MKqZ0RhY7qnSeK9oGEtkNTyaBm/+GeEb6y7NjF9lda4KM7
028xrullZfh1i5czwd50drabQjXp6r0ADViANaqp0xxGdnlD4MhAWtYzXdv5Wtew+tsdMpzbfOJh
2hAmr1RMqye6m2zm5oPA7/O9oHiaEl0oe8KqsodUeOUiSpEM6NzQ65l4AjwMTwvqMXqilEHHcSGv
+4eSKKebp/ScFLgNPVtyP2SOrKC8nBPNemJSSqtCLPC5TD6ig7pSkcO8k/KoMNfnu01ye7Evnvn2
yZ/3S0KVk9I+KY1NSozRh0VomU53YyA6Zl3k2dbqarbhMcUJe0oNt0FWtTwf/El7aPeTjx/kOTKq
sznzM5iTSb02ZU9Yg7/i+2PmunOrFlV+PauJ0a+LHGHqv0yKd4g/xlKSsQe50BRspRAnsX31F05l
Ks6kA97rCPFZY1LHZA0sXHloeh2dbInTxsYbmgiZ32stIdmoBwCBCgzYbHAhwLB/baPwZanPfIyD
LPL1YURT6eeIHLyz7TxUQplbRt6N9rB5euC9/K11Gm4BnEtmjG/+G4frf7Pob2Qw4zqPlcJR0kud
cqsRrhANsPBVfyGwX2RjxR4udTJkWjbg5X7hX4c/rR4iGfR3poDpOA8rI9DnWvbZCyC8Avrgfrq5
zwB5AjhHwfbGU3+SDgc3F3ctRdBLXtprLfTbs3TN2Pmv9LLNlDGlEQCcenAmd1meYcLu0aGUhGMv
oPveA/6CaBdDdUZys9ifJATX6vq4LGDFwoAxyQEVpYCoUKsrfDWM6Jz4hIfchIbn4PkMAslHtADL
lbh8J7dCH2VSZLmIyE9k5BFQwk+Z6OJYWxczOOMOeHWW1p7XlOhI5VLYlNlYa0Wzg4V4VQrmVcn1
pZG9/c6S9VeaRNSoFrVtdBVvPiUf49vzgF52/XxhRLVjXBBzSOY4U/DcWLo4V8dbc9wzuf+5OvWi
piS3XcpZZdlE3zANouwW3KW9Of37hZ1ZYipEz9rlNrQpBpahmMwcwEMTHA+mT15aAaw1CxYwohOZ
OzmH2ABDi2Ju+jumaIbg3/4YwCaVzDBhAdC2QXiFNpERiCaYLw5yZrKH2jprIDM8sywXeoWUVbUo
rWJcUYpPHeHB5DQMeQIM9XnQrHwvq3TRQfe5SMfxjNR+dgyHIOXOvz7GvlHzxRzpAn9V5Z0Sa8+L
OID0V6aE23ruqENDwGbHK9Xq/Ba0BwjupfhTNFXYlEGrI/dkay7hU+I6jr1CAVrF/Y/zJ/nNB7ZO
pki/U8BxX2Ldq5FVtYenpC6zkj4jObcnC5bqdr0oRbgWkke9V/Skh9jAFx4CaMwyywN84wuLV6fS
xiYuPL+K99NdlVNSwswYLqdBZAPK9SQhLbyGNTKHDFiTbwyckLQ7kyA7+//APGPEXrN248QWUWPx
lqzZBfqgYvS+fSTUlNq5l6El+Pu8467pYITpqGivotn8ZZBPVBva691DcdxbCExD0BGnbE5i/Now
XGCFMydMswOxVnZ/OyYfVVh+ez4uMq9n/mkxgFzI9QWPgiFIUmNk7nimX6FM8gBpswhk21Uv/DOb
825oBQm+9peNx9gFmPsETUN6/4j8o1c2hBbUuwFa6mLhxRQlWNzUjuQvAO5jGTCFULsxUNSCJgF9
nrLHnGDWPaPC2nWP6yEn0WZVObU7WrETRxEcrad1V1hRdPAlssJk0yB7X5pLH4zp7Jfk1Tb07IWO
IwdXTSpO0jgdtwkXiz+QJk+4NSwmc0e8vkpPYU8fsi1KQrhOXLMoaPFkBa3CE0Q3HfFxFBPi6248
gE2xbqZj2YKmCh3uQ+ziWraqTEBNGlRYqIST7nZKx4+78rxlYZY1ph4XLz7lCTKaqJ1t2WoNU9y6
JpNaX0bWtEl6iaTu9z+TX9+0zma6RBzSV4T+Zu3iXHt9W6SHnjrJ7ym+GteIUa6AH83taAvKpujA
oCzXZtmyczPljuaounVLEUlECsUk8GhejglVB3+rGKJ2eTW5SZlvHjNpVvVyGDlxNW1s21ig+XKL
872WHAJU2y6UJRFA4xSni/DDAdBXK+w7aTmzijbxxADZ6gI79K0bwQsx783UJ/AvBzBh3wJ72IkU
sC/7hp7ckCni0fikx0UiJU4z/FpD5JnNwtNAcqh/8lF1W/rNNV6k11L/W2l4YkiK/gxIg8dIKmU5
zoU0jOj2oLfMSlsld/QwgHWCchQClG/TeOCgMZfEruMlzyFRT3mkudDqquMocLbtaFBKOdqcXGyV
lGi7B5EDiG24fBecIFWmwp2EF0eSIbfAfhgDW4AjOgPiK7/hvskCSVIczK3pl3A3oJ/x1NoRNVs/
lXxxZ/2U8DojRREIxzFSdSD9YUUWX9wOtZ88PiTgC+dx+s3epxnz2JNfwgQJKmlGXDggbdpkCKOd
fBnlxW/eEjYRhC7zdwn2dDEtpCm++iLQxzdak20c/+fwos08VHDzoyftU6ef4Kah3agWzebpxPbS
1kcQL3Pm2Lpe7n5hgeAB+PHIHZtYJ9JFdwCAw6judqPOBBMt9DdjGcbc7RLh8uyjc8Is4MsaQfz0
+KEwbX2hydeCxoZVGZP45U8LLdmY4X64M5TCH3MHTQNlQcwZlyNAohhjH9GHfCg3j6DG/+TniNRT
FZkflfwiBeYh+WYjQawIqFBFXoipU2E6ruI+cfGALLGtBqW7vVBz0n4zoqm5nVm5h5FIrhYcsKfT
/3NHO8zPKZdfDRRMO2fIGCLwEs50t0hAAjFO18tDJtg2N2UdMQUSKLGT42PCi8NEcmyj542xERpX
J+6DzycLWSoLYgUE2DkO/NNSVzXy6s9iPseytqP8UtblQq61cnT+EbGU0xbLuIRru1Tyq//tTLKR
wbflXlgN948mymJm+m19afiqEX/ylIDm6D9CprXh3ejnnbZntrlJAqzlQPKP+V0gNxJDgSQ/llwR
psuKjtbTwrpy1AlnV7CKr7AHTX/SaJHRuJ6VN3ocikJ3n6JoIsFlEoNAv8En5vd/fmHPriVe8Ywv
SBE07faaJg+5aMY569RTE4iNpRXcm2g0/kCxNn+rWN22f7T1ukFjhULGaKcjPxoW+DNqMVqAXnzL
SQCGXnfZUNIudu9qoN0XtVDx3ihfTeItpnR80m62qq+f/Mn2NCfxfFrxbBqESyuKYD/63plfA3Qy
DPoOqIPlNVFgenuYnVibI0vmvG2f/7rMG3FLoRefxbyw5duN6s0vB+b32atG8AIk698gOKAA9hGz
98hbX20NqxlkvXKXSBKCebFUpMFVAwxgGyBAJb2Hfoe4mDN1x0Hw6KWFLUbLeAYqfJi19x2SP/P+
Jc1nAC10LwKuOvqi65ODC9KoMFKB7YwlxFAypyn9Mc4QT3ArbVhI16j8OKXLWztHeXEGwWb1vCMO
eTbgsZ/HsX193krTUY5bw1znK9jz17F664sdgDDJ0cLY+w+BfFYt9y1B9J7FIxoCTrw/uTM2lmLX
EcVlqRhAwoGX9+zKFVzbY/dq4mPBO0aLPLG6FRP0U5/C2aXO9W8aU2Qtx06ealvotRvSo8+DJgn7
gkFPjmOzBwRtVJMv8d54+IpIiGl73iHCr2ZlIbpn5zNvyY86n898VwbkwDAOTmc4fEvjzKArlWF6
rD0rKLaaElS5cxcZJJsZu/yUi48e7sgetxvI78+SpLIqFBTssnLZYXPyf4z98+BV4VUlJkOgd0wy
GbLQciQZylh4+mTasd4bVT2hnCkh+oNpGer7EQYtInzXPCWoEzFe/RlD8WEfEKy7EBxGwbYv5FHv
gR0ZloWlYhcayHm1/PJDoTC+UuwGs+Mq5X+0cah4BUpVR1JplWNbNX4bxO4sPPxqHN1yyhCbLz/a
Qz7q8/P2wGXujtPzpwEx/V6pkSXbonJaZDw9KNYqJJPq8KFIIXpWQl9uO+isTKm3swSTKR9ruV76
ojV9rZ88q3SDUkSgD4OmyVFpaFZCUmVnjZwpf6jQPnvJ+g8n3MYkOV2KIwMxt4PtA6VH1Hbir6uK
ygNhWbKvmekYKZ4k2zMyfx2cGNsOpkWuFTT7EA47pp30437d1hqkQxjSLbwtoFeOOvsNHAJ4UK7a
24GaNh1KBeqLlZqrN6drOBMQRwu+Buf/VCIKDBojvx/UoAtV2N6pyDbP701czy8A82s+et7iHsil
b5xJSeaHBl9sRwWaAnGN8TmpENO2X8qDL5zNkZ6Lo6xkON1GBTeFxO5ce0qXdZkZodrqAB6yBOxN
xCnlW4k5/rUzExvfWk5NBJ7Kc+CtTN0YNHNldXoKcNd1PjajYJwU4T6MdOQnsPH39+wjgP+OZKXw
UWsl3xODw5YhS9S+iT0XSJKUHhlb+whbkrGaS5FjkpVaRDCzC9GR9RAuL3PWsDzIj8k6w3xsTPGO
bwFxIIu5VoG/myP/v10Z47iCCRedjmt0djrx406YaSTVe/pZE/bRoSp1vt+8jUy7Rz70tWHlo/5H
yZ3GITOhw/hMycCsApY/l595bI1b6OKDcthSKqPOKp0HIJbY3X9GxbfOEE1Lubt+RDZW9YEw52fB
lMj1IjsKTTpHYix0x3mYEMgd69RUY9J8vHUBij4vrzy1cx0PUJFB+Bq6DJw165tq3d7epfmyz7DK
JeGpNEbvQ0BpSX/7t3WcmWgGWQvxKS0pbK40qyzbrPHdMr8Lvcq7bVVgNpDhpWBEWOT9fPiHZGzA
72qUfBO1FgD6WytdgSNn+3RVjNqP1EK9oXNADFnrYo960xE9zpS1aVpfVceVWtVmSHLMyQ6b+96O
AF3j3gGgus8VKfhGmdy8l4nYK/IUrohEa10Afwfn+p2ZNVJ51j58YD9bdEEkPef+qlXBGMd82mri
2FKPSxRckJzMTP4Y4i7RhU6wm0MzwFPTcmHkw3ZZtwyZsGJvuxhVcw80igUsFZ+mhuMVi33EMvE6
7Kw9H22HZbnWjMFLhTo2y+a/XSsMccL+p4GlS8SpO5CG84Tgxd+D1i8rLcOc95pvnAdXjvCyHNA1
nYcFTYGZfeXOqF9J/HXIZD5g1xN7d19+hJFlXlbEkL0uOggsFXznFpmBBoD3S5Py375ixFha7Mkd
mDytfmDbdr08208LTXOMdyQ33ZPWvUPeYwm5nMeHcAOJ4IVE+jOb8ERTkpvlrrYpI071dqWWExsL
dVbJkVdwXCmALJoTR5qOwMHuxNqUBNBJhq4YENThmIQWeqWh0nkPS8b7HtBKwrDT7Aj5SsvgcEnF
DbiYsvqR+fXSgFwllwjng96rA3F3QW66sWjgwEZPrJWsFtYWxkKiI6b6blJlKT+HbxZDEtrW/fl1
kZUR7bVzO8xza9MtgVtRZE5yJDBudNoD9fud5el0pVCUUJvPt+XreVynoeuPeMXvQQVM5/t/qXAf
xHiunvAp9qv/+RqU17ut89VEnmmyc5UfmBR7G2kR5mIjZepnSr/g2foOjoOEViWg+Villn7sV9mb
z9GWo90o/Zov1c1Q3jHNT001lfSayy2AIUmdVJBxYnwoAL0k9j0ZOduTxeAdHhQLFbBysHHLxMy9
lwQ0pcpRGVl0GCxuw8ozSVbdeOZyqwXuDWiAgJXrv2zpATEVWPqGQ4vFScPYi6iBrFtNGECv/k4g
wftBXbmpjN4YRiwKISmeqJ85nLoVbAP7lVnIdsffsVOpA4Lh9my/+iEj8DtUVKzCDb5J2TiDtCbP
BIDWPKxtneX7Syn6doqLqJYBnZuuMnx3ihXlJNz2TrZ7SayMgeGUEPWZBfRaJIYoetEuJmqXe2zl
DzeXxL1fS3JozoF9vXK/T75FNMOIpGDubH92ed6uM5son/RZVLMexhYSTbUQSUNEvwXUmTMxzaH3
55QqGDpEpzFsBSL8q3uzSxp5kpaFaNxCZ8L3/43BtuBDfNO/BTOEq7KIfkLJ39jrF6SXHylGFrOU
yXaDQmsCi3DpaKaZX22eMbVG6wm1ka/Qh/RdLA2aOMeKoNdq2wIMgTF/mr13YhNKLkaHm/ApaGK7
VTwRM3/UsD4MNgLQIJpQlONQh7vWc4ysaJYCQMxuUPERpfa8o1T3YWVP7HNfZv6+EvtASFh2JdUN
qJS64p9uKjrHzTDyUcPCHSPrtkMPxz5pzJLRGuJXyli43VgZbKUiTHHBQJ0YvfadDN8RQriRrYXV
D9YVhmpDYysUFBZlWzjU8Qu1x3GVYOTsHiojRMZHOARn6urHxpu63/oUGZaQG0N3kDdzR9EU4ex1
puXU6Z08/cPLxDh9FeTc1ZpUMJe1uZiNKXXkg3Gso2p4Nb6WyHpiPgyiNnQJxl/OSKYWsTSkorX2
3M8tQlAmu4eIamBn7LRbB6wbacnhM3lyfEPbuYM8KPxbwAJIxWhyfrQcHXIlWXg4q1K4iH6Vow/J
B1wZw2b/HN8R0mdBaac2xjS89qwrZxj4P3BPa+ztVo43TKG0adVc9OMiO6DigbES/DeW7C6dwtUl
dLfdeSmExky2WJO077exNYydk59ZngVydiyY/WBpoiKLxMPH92SYTd/IoaOhLfKWmZPrjulvrP4r
QxzIXoiarCdD+PU6cbbHSs8NgBIK3IH63jiAIiq0fZt+xl3mTCGlDRqR7XwHbqyj/1Xyo6vGbDQN
ruLuuHK69ZV0fI9roajEsvLW/fdas4IIvGjoRdqC8v7x2nX0pwX0s8E5s8BH/p3aVFWyR+fVY8ib
/iF06YgeTLbQ565lUtMQk9XjJtguxNqk4LHbjgbaVgh2+nckvkoCrZiYqiCuIbZb4W50Ck6oiHvF
r5pyLb5AkEHNlj0uyEEzYpyJHF/yZN2G//OgmS1X0JMyo1xelWDIWsQ1yp6niUudw9B6S+M15IXi
NHOrD6hh9GG13K0nQN0e7qekxBVubRo7XGUbZMI7ykxrJAlIYe6+1dA62TmRf11Fv672kOF4QTTN
+aRb0khgutl5nNpQIS/VrfDYiw6j99zKNLZMzJJZ23ijdPUZVpRsrhB+azpegLBwfEt08AoM7UBg
k4LJ1wXYlprFXUtdq3jTUGPmvdlz8H0l2MrjtFMLHg36eHO6FnJ4rg2EWT4o3SMFS2WjHM4nD/Q4
W3ElBNddM5MAhuZ9vK1GGOuwYVmHbKRvWePZpOEdoyM6t1WIk8ekSWYhDPSX5R/k0+5tv2DNtHHX
SOUcIiBcS9xHEo9cRZ/j40R4V9UVi9FQZMZXaPV23A2+lgAjgDjVUj/dsnhC0CbDCREMja/Qq5+j
w6+EszQ5MF7Fwk3Lu/ri8acsk2Yn86nOKR4EnSyD/qKqWecBCq1WGfdXJGzWerw5Usabq6fbvA8+
1QH8XVjb/ozu3NuaMqLJm7F7ftXbbyMne2Ofe7GxlOkhVmvWU5cTAVFztx3XfROhyySOOSFaCQVE
NHNLZGEY+L6hvJfZsyS3RKP/48rwCGHnLJRhCpqO49p49nBhDhVDFI1y0Fa0Dp845cThFrYqP8O8
TwdrOLewM3EfjVkEWjuOQA+Zb/EO375rEC/u/Tsh7Wp4d2FhN2KQPdbPLF5LrnXouc7O25bil83H
/T6QdzTA9aoJGwFjGpZOiXHkZVX9dk4Lg3qq7iOoenYra6S7JPknmLjThwjiQw9hAZ8ho2ih4FMP
DfSxoA36mEaHNNxOZWnnAXbjvav5WM0doiKZAITTJKeOIrEiOupu4bu2mXBnmZP1QHbODe8/PC6y
n08qu/tvTgqjVlN/Yet30ZHLLrfEUxw9kOBZv/J3sacIT/6YNlULCxQl+taOmT+2e64A8hvPM1rz
4gyq5q2M8mGdXkT1FzX2JWyNd/73JbJv8AS343Emdsj1s/oAHK9KvuVgdRLWT0ObBjHS5PZVfu3E
sYpFLQpSyRIzBTh13br7jl4+izKghQ+dZrGou5Gz79Tdpcy7tyGBcWjfJHLsWNLxQbbxldzBr1uI
fMqlH1D54IeaISVmWcl1XZVoEh6YyRZrtKQSM6seG5n83cjuJ5L3xi5aBDRwzxSEmzXnSW59HwM2
3FeUg9//lyqWwNfIjFnBzw3OpL2wPlcxeoErTqYxDtcYK2/8Odanphf7zq/uh+YX4OB3tIq1PWiF
qTINFwF8eLJ0ARrGZ9hm5Tydqd32p5yNYTc+ID53E3WG+lxOpKmVq/FP9TzWZobdUowGx81FXGvv
saqvSKhiEKinWfeCL0ir4b+MspdbEa/DD9WrNhrbBJhA0Z9o0VqPNbbumCf5KPEHTJuFaNbq/v7O
KbYe+AZg+OfGhUqRSjqgVblc+K9uB1eNIeCykToiHLqrNNaNR1B/0QO/4wHf/KUkKuXvjGfbpm/z
+JgvN6MCQGp44SEy2Fxr5UB7llyGP/W1YVnMHqu2YLWDrH8RAVDRD25JcY4VUXXe0PfEwK3Pj97n
HZKG/6126N23uhNZj5b1K+ze0sTfDMohDYa5OlQXbAuueMRfqeBbrpYYcrCmOoR3PkhaPFuKKQYp
HDzEYyPnha1bdUUCyIHyetQe6HI1MCdZ+T9cvIGgAuuJ3czBFTNOKmBGSkiQ1VC7LZDNvr7RnxZ9
c4T3QJe+jrStFM3rwROnJ7aWiYNBVEJi4Ebyx17hYYUYCWcjMkHAcTZ08O459+4fkV+LBKZfXGB5
z0xuZBJhgZ7M5RIsI4eiHM6wfEmqj0bYsBdNUkwvKzX59ZUeA/GJVh5x+JHfA4hP7WotXWEFlLNl
461j1jmzUgj3MloUXIgZhah6+tPohkuCbqPE5nfYmF78R5P5+t9GoN7a/2uTxEVGC0rDCHjSQNhF
vn4bu4Iy2P0VpD3Vt8HZij7foRzbmUSnMwkrbiuaVe2QBjFQ5A/OtgWAloMqog/CRpzAzGLVPtZa
UPXAjo1bQNpbsNo64K6vHauFxyGO70vPOOgtr1KYqW7BRZ//x5UzIfJb0GegnfyaODk90fIUQHSR
xKZo6PAtAACTg40unTmqvljqxyJq0XZhhJ0Py50aSWVamiGNIwbPpeSMZbxg3K9KHiWyPYUCyRMr
F+7ojeX4+TC8Iq2giesurtLwNFEJRNh5sJGxUvaNKTqcPfH4LVrqXpbqdCN+hgfudDDAlbA1CDts
B9wyij3Pn2sSGzzTaueo2wPGAQogX9gw5LgCVSuR3Gd4jisLSEy7a0cJDO8L2piiAS1CgikVBl8r
OCuc9Meq3uSDpibdfQ1haspibu9LXlLBIS5hHcUS+kWKHAhYt5TpoprqkH5eThtiTx0zRkA+NHqw
5FvrKP9sgBPn7yaEY2vlrH2Nm/Q7vNEN4bOAA+zc+k/I1m+T2tbZN2ptBRZbEI9Xuvi5KdQMhLY5
nbbXEO7leSzXfv9coqNTZdI69szSId16HkcXGn+uMcuY5mwnmJaRLERkWJE9X6TrF0WLuH1fchco
miyMBqAS6Qn5j2Z738pYhinEZHr9A4IBXv6ARZSL6UySbOOFqcjukCjh1h/3E3zJwryXRJA3sEge
wGAR3ghTno/aFwNwlGbksSlPp4cqel6PAIrAirsIhr8iTxouNUXWPQ4mR55L5qdoZkaOlXrm58mA
wJVr/mSaCsCJfDHFkLj0zl5jRVSNp4kodI7NUtrRpg30fHvBl7Qk3ySAzZLQ2UMGRKqHYDcyppzY
yDoUsDV8/dC5DSlTci/dReGV6K7+wRfe80ZGk2OgvjB9cs3xNDzQ/+RS3Fumet/syTA0RUOqxeO3
AVZvn0oECJ3T/7SD84k/KTWkQ9HCcMr7oH1omxk0azS5fb3QNHm5+u+aGFVkOQY1q4Y3V183isy1
acM/ZamPlb4xk/vNf8s4d65NwuCUDV+Eah963FkJilgfiWobMyO3U8lrxIWTYj0Czr5h3QmGANoB
pCquIv5Snznk99j9wQHvRcy7g8XXh3uM7eXmN53u1WFhB9vFSiS+ARrPl2In3EjbRx0CcOX/Sjkt
/c1mVGRsoihbRupDjaKIT2+Z2jq1/QTcPGzlmnz3cgxGlQlTpa9rPEo9zL2cgEAhxGg6cxDPkKXz
VXKlPT2kE6i3OodOSGNW/4HbzdmfGUcKJT4vd2tcycWnZ/qN/d+V2yPFM7tRBygFT4jTBVqbgT+y
eIFsMbXoYK/WfjfMLJUsxFxECr5TsVxDWlFlfxY7o+f4NM1AsjEWBM91tJTt9eKi2v4+L2R5YOu5
zbgJR10mGs0hPKdZ1Dv4NnOxNPpdSzc6X+pU7z4c0P6at/PSzM0XCspJ3d836Qr2IGBVbWxFuHbN
tvG2K/GW5TANV/qVZ+DE40tHFhe/qE5U6V9kyk4GjO33xet6tOOmUQ+4vVoXd0iHy60fCmCS45JE
n/pTocYiVRA42m+PgIXkGK0IO+9zKO+W2V38ytt6t1J3oV5t4gjB/uHWrVcDkM6XO2QIgsfZePbG
ZXaxWwQNIbOGLvLhlv/lIDzsIZyeNmKTQ/lqBYUZ2uLJlcJanCEcMAaW0id3ngJ3EhBhIUIWLnot
+3/40cHMgZkkI7ed6nYdiMFyW7j0V2wNUnpjFvnLIF8akyTAF2GKKAGYyibstKV2t3fzhxF7Klvt
024Fqp+v/4j6Qu2UlX77VIYYhQi50lDNqfRXulb/SHuYi2mL/0GbPbsOCeJXstJbLaoed/TB5Bi/
ZnE8ob0cSL79c1fuz9Uo5kBpeZr1V/9k4PEy1BFRVqt9NsDJsaNHiKl7aUJa0NETQlBiFruz29cH
cyVbySQppsAeZQ4qyVoPa99eA3hhZwijlmzRyySp74HniMqzJzY6+Kcw0dwTeSK393H6BhXUaTjG
BccD8hjZJyVm7zPhoWDV3i/64DQHivt9WI/vPZ36FSZWaLN7Lpb/KehUdpONfQn4vHX/y8FO1r42
MmpGOi0baFCraB9jcFfT0JiBavPfjdqDAbr/mUGrLC51cHpQaTRzGBEmgft70M8m+NDltnq00zBD
h+xUQky++ypc7eKm+VpaNY6rIq1Zkr2OP6ERUeO2EXdvz6s1kk4wI8UqLMEscEqRpa0LkWGlY5gQ
uWgD0Y2QB2x8hDVBJhP4GqUiEsfzk3oMh+LCUytEN3XduHy7NHeINw+5uTqNWfSyWHWlZKzr3d4S
2tV9N0f1f9/WlL0KGzYeouMNDD/S3QDw+SqEZykQ8meiNJ/nL0nKA0x0Q/xyURr9/JE+e77j/jd2
TQdEcuufXziMYLn+YF5bNZ9oHilVbfqItgjmk09bKXK/1RtERDuGCeozburf8SdpB9E6s44XpQsu
67mPR38vhzvz9giUpDMKqkP9nQQY5rib65tpjqToVRXIhABjaNeIb1dJHZXYqHtUIW5ILliDQIcs
jvooQsQLfrw8nHANbohvwULwf05ABWB69sebWt4SHXsHiPQKs0rzJIjJZdxM9444L1OOVP0xjgso
35FErYzCNLdpvN5nOV2ezaOg6tPer9Ign+dXi7OjTIg2fNnKHccM1K3IENaSH4MD/uzyPu/A5r+E
VOSY860kvVKvYmQ8qeYlTICG4Sbq45BHWG4qmijcCr2kGLPNLkdIzczdJK9Ohy2pwGFHoFwbeSjC
5OK3TNkpaLzZcBomjbzeKo6a8+rp295ngVS62fW+bjD/Su6U60YjDTmDBH0E1WwYXgYpJilnTe9W
HOGQltwCnu7XWCU0xLfRxmcTPS1Dv2ZraT/5gqJrwuOK5Z/bhmZUCGDngTx7iI27I1RZ98NSLcUA
0Y3K46RnKj7UHesQKZG6qIp34EGbQkJ+q8Orb73cCYEvYCep3OONqasyGYJrUApCbXAW4ic0VA5A
DyDk+Rt6clmshAa+GFdLW26VxwPQ1VzKExiwRLxOTT+GNzotY9G3Z5a/fMtkJOIQ0PpwBirbrWOc
aBm+f7fV9N8L8fMMnYGO/X0zOKgHe5g0M9IjL5Z+WR9O177YWo+6GEbalUiQpJjgspjdABWEfoTR
GaiaiwvQrlZ1yrZ7+lmsNgCXMDQZ8btz6yefa4BDcFhBLfEDdkmGuIEglwYriWzJs1CEfRtT5ze3
6c8VWPLUv9b8K/u7L/VpZWYvwj9YmhaoPuh+AiPMJ00Lw0+RLSAPfm7skD9r8S5M10tbP0wY8XAb
ewE9ceaxDYRAoQLX0JdR4eJi/DliqkU1JopWAeBSszCUQu+Qt9y+2BkuzECNjtT49g4lGhimaKjx
dfx1D7QxEI6HHoB7/vG/RcMZDdfoe6pVI7yKnd1H0XCT+v5cJ0Xwo9U+y01tg/ziOhBjrSuaDSEG
BVEreDnFKfPxTs0qNRtAEqkAeyoVa8J4WbsHw3jBUjFsMd47zt5Lmr16xLpYRyUVKw9QTOXqIKvl
YmHcebhmbAuHDXFPZlYQoKF5zWMlQBodBVytv2ii04LBUjVAllXTJ1ZQIVzpYVInyhGr+KUM+GVK
NRxQr884NVDmodSLKRN+keiePnx1ywT1/ONiTI3ZhnmNpsWYHDIik3qgkGu7zLAxeYBrcWTA2c/j
3eov2rv0F/L6SQCwOy86LrT3phGKi2fFdwvTEEd0Jxc5pQo/BBKC3FU73u0McJsb9FJOnapvD49U
b9keKcNQVgK3Diw+If/SKP8dMyLgg5bZGckWa+ZoMHNxqbofzaAvEn8iic9H80qXI2s/uMwKuJGG
BQg7HHFwMHL5g6pXBIKi+UddjXTm3d3fXX4D5Y5iS5oQgbk4DW7qZaxHUN4tSORBndQWfCxPEmoE
5xzo6UDKhfkSqPRDB1yAxWktTpc7uY05Cip2cPrTkiORSC3+f7pzabQ71noQom/8vnpTbIMCUTdh
/YfEGcuMfZ/c8D7P3IILHd5FxpZ3HakLDf5zJMHhW/khmUoqLySWswTcPBt8LdWmhmK5oAHGo0nL
CVz+Xvuvp0NeC7yQoozABlzP2WiP9lbi3deCou0QfcOIqJDbdcKKoFZHRWmfWAA/QxbKore4WX8W
vDbCeRyq7yMjci7N9+I09Xn3b8JAgs64UfeyZw29UGuDRWSNx/eJWf6Y2zDSoDhdGEaX+wsCmYQL
umSKTITVDCSssT9/8euVAUHRNrSMHdEaRGOflugXX1FAQKD/bWrTVfDT6DDnLiBg/lnTt7VbNEYX
ZiTjtPjiPa+TG3xBQds8pEkle4NUhGgz3VzaOtensNgpJvLSyTvcWB/X5opXra4yxyXEA7qh6NWC
mCXxqjBzB3uXSg3cbVKjjC007VldTlz8+eFgHNGxvpvbCVRgV9X39/MeeDHUpsrAGrqgQgrJqFko
ZzAyGv0cNbyIefEiTtYXR9qJNQ++R5LweLaeYN+T7x/v8BKcGJT++Y/UdhUTPY9zO7tvHJOH5Ss6
wgG56AH7l3rtErQnj0RKZyAhi314pF7SdqtEG0G/+qHCQ7+6uI+rBCB9EsBZ31QEEDAxoyHtNZma
N8EoSC0Ba2h6DCn4IQLbevIZCSL2i+HxgpHIlxbvnSHhZhpdR6RjJo4BgYGhCqgp/qDp1ESvHjy8
n64Kw+c50tGSJ/dBWhjFatuyGconnJ7Nu43ukSmJF+Q9B3G+IhZYSFNZT3CcuFSQ1MYq8HesV0qg
dOULXBcfGxi8e+FawlhWqtKkb/YWTKcCQTA8eCr6zNh8+N6lNodzgOUvr0PcMo2RFXf8GgH5Fbpy
M8W3KLOHttJeh24e3BoJVHzy0ui23hhjXCRm6uw3YRstH1tBa/okYO7YIjBVVwkHcpqVEHshTQoe
u0lbRolKEUGajO+RE0mKFGqeG+bqh/FE3n+FWFEaMMcrbbOg4YqhNK9a/9JjiJzmrZ7zHOzB2TKD
2f8SMYrdIhQxXwdLuoKb1qiLURX3IIcV1rPFgQNIixDXqBvDPUNxpT3x1A6dn1clC6olTzv/PkUf
RhTWTW0K7jyuNVqoCP+rnSnRkze91/eLYjcaeoI1aE/jSR/3dHUezkVYw+cjkRjPQjfBoHo+1ZRz
P9u/YgdT691FqXceT6rW6IHq7gdRSDI65051Pf8PfsKRxeDOsanWXO3RhCuJ1uz5H6q/wX85b0pC
+1z0CuN1Gqd9sYFOJlksbm7eYVyTjOyanwMIKKK9gznVnWpWrYwuiMIC8pirY5N2saluTa0u8JRZ
B/yVJbQJRrRmc/3/P9Mgs2VDxSqiePnygDj1jQsloJcnn4YKfAvtwdU5FFxVTxs6OW8pKh39diHo
GygHaL+fSD3aMK9ozXZsGFFSH9jO3RVkBc4zilln/a0qvQeaOE/KZ3neAB3lHuclqRhEAt4bx8yS
1LodTQs7efgQmvv6SHi11nXLWi3UfGgu2FFuZ5GZprhxBnCcwIbxwpgZF6lxcR4CbdzD6bJ5uAi2
T5hTDGLb1Lwa52kkmFWY0Py4P8kQn+D5xnYXosWL2dZSBZkT4z27IOia7/4JJAOSfaLx4atBtn6L
97iz6IpFr/yGWqfbtmUzToOU7Vy+bSyey2ZqxAAeV9UDw2QJVzcTnISyM+SMwOuyI92+VtzXNK87
uibvQWTP6m9LCZEU34ACKiYMr3Z+eMN79CKScs+Mf4/bBfWSa7tt/F4xFVrgW7BA7ICqzPmrZy3r
TN4fIsi3qHwpkVFpByRFvaVGaXPcjxM5GnPnobqM5JSyak+q310VAuWsogrVll0Y10rWcO/6eiZn
Rs0AjSv383u62YUyTIv019zFdQu98p6ym/y2u3Alg/ducbS8vim/PlDFX/JSBwOkqPsLA+uKpzwO
w2ALygxMaiXMORwTvJVtyGSruTUEypmqK9mpni/Mf9NqdAZQ92Pua9AGqMgHqSZ1mT8+q1GrP6iB
32j4ioaeRXznmtPhVNvscOkPLwgBuoT4BQHx9XRuvQXtBtLMLbbZs6PjqBil4QdmOja7v4LcisbY
yK9DIW7S9hqriuazjcgLgCDH2bXXMdC2PvzLyyE4lN5zpZPKi1IHvWkbxHhHV5Ue9xQmwSxw6TkH
EOzNTu5odme0VfHTQp7uCwibXEbeZdbqCaIOUdlIfBDZCDgVCIbarFfiKnXzWSOTeVlJvrkEX0QO
XY9bX8V01JcmTsJPcWnrp3Z3ZIiLJ4333AMLuGHzdwtwBLlHWyBadP+D+bwlBruSE3wbkQGUZLGQ
FM9h5+KiLFWE6XFEwFJpiRkfFa62llVNZtfJJHcFkvvmyoFGpdMSEdtfxQkha2D/pLm62CHRTjK7
RieCc/YY4unndpFJrC8VlIbWZPwv8t1pLPv/D/OG5xVOGYYcFsCz/s7Ii81V1PVEY8OozLmIv5EO
FjUBwCY6T+d6dWYbkbmDoTdKtxUmcpFmkS7D91qz7mNbyil/4JoxPBdgxA5FVTd1X70T3N+Ya3oE
UiAwb1xS1KvFyfZ7+O7QTppnZW0f92bA9DamhzROWngg8nkUfSE1LjP8uHeWBX2H0LElcv4nBBLV
E2VkJA4fulBt5fKIoZW6buzvxirnwyWSlYNgMkL9aD63WY4+9CVdT65bkkSyrI5j6NkS05zSR17t
zHP0DUgmlmToD5h5+YBFFLMxHvrO1uQq2tkLnAF33y9Dh7hVKF3yRUGvxNct/q5yEbn/eg6/X5dy
YGy9mtWaK855ARCtDemzx2RJ82Ij9uZaO9AomR+rMvaSytu7VXDqaPoAyaasc5vawPm3QqOzDO3O
teaZRFFATEqbjCk4RCm+WU4oaH9+IYI5wHZg+8xsuzhYD6QpOngdYyWpwPpCbYtFtkhtty/VfEuK
ytIf4KMr0iT53HwZPUyhZOzBmNUdDWWhsLkrtws5DJnSKHX99aARIOkO+xrWGEZ9tKQZGWwNqQiY
nOpzi0+dhRd7e4YtNQi6TZ2RYu7K6JC0+7QBhp7TZCRUVKv2IdWlYVF+JNfvxTFPHxu04hsVmz2f
HJtwMTXTdAjVX7UVHunW5X2Sg8yhyFaPpFk+7oiyih0p7tYG80pH998w7Y+9Bz7C0WvJbBmig437
pWZT2YuPVjnvuDgEF8eRQyZTvVANEt0xtFPK9y2d6iPqaCBpQcECMJdo4gIrU8ubhdRnwhy++Rkf
zl3B/94tWwgyBvbsLt0m9M0Jb5+A2cZlrRILGiO4ZZUgiTDOqWxlso3IOv5bz9vGLqOUHKiFYL42
YmSeXaMaxAIDFyo1kHDwJ/W9/zJYFe80V0sS8K2UnV/Yh0ctOknJgkw25hSskKZ1yzWMvbzWUg6+
L26SFpn+7Aro9Dcq6T5o9Sgp+2Dd0eqwuD3p1SostGa3ev270qbuEzKDhhPQvBnCoDObjpEvsHKN
fhQTxetVOQhrPWSVrRZCZcwlWI6s1dSaH1duw+a4hkvsqBWs7j4rJCVdEINa0AfXF9P3zJFeFotn
JM8kFJvwznne3WoAdf2hTrmMc847j4Mh3oneXetp6vLgLqYr71W3NSpTrg9TbkUg4cmp/r64sQSu
FyiTPckbhUlCVNmr407kLKIv8zVqYAsYljLatF8AQ+csjSnJP9OlDdfcxLfu1Np25qgtKot1M2AA
DkJssoYteYEwAClxWhyRSrdWXKeN05GDQ1UGnVCOd21OAgmq/A/Us6E8HV9QPTtJBrKzVzEk8cpQ
mXNchwyoVfFr5JrPwvAFUdxb7zW1/SmLL4QHHRsBmEqOdG8RY79pB8BhyQVFhGUGcJ3099ImBH5l
fh7lXbQpb8z4RQeZdoRaWA+STmaQJ/plpQKaI3gn6VN6mn2tbHGbpb7mu4SJStXioLWxx+aCHqeN
IWmlNlI2GdN7WP5ToiN5xYAxP8vIx9DpR/IGy+9MnZFhnZzIbES5d+SW5m0gWFl1z9ZhgLE6SrZf
2wS78XN+d3GU6/B+/zJtTFWFYKuo5wjX7iWpNIwG5jPZPjH8PJO5lKiRDXRJ4zuMmQPItVCklrSz
U67UumACNkJBbEPlegXFISEgHkos9NGk5FwPUk6YgtV+sh4GBegr5CmTht7s/YMyFslPLrHkbS8n
fjCdZ3/KuuTQNXnRxLmY9MiKiUrRaJMbfKbKPBzdzmuiwwjpJdf3Zw34KpWRCYIUvHM4B4dY35uT
QdlFaLllKQ9CExU6VJjKNsV6G+fnTPBF/So9oG7hwg72JQpBQg51G5LMLDgxjTT7Jk6zzpcailYL
+QFdwxLiFFBm/JCQgfCHALhCfAdEEW/jWo0mb6CVB3HhZyKVIt0Upm09Gc6U/Ny/pv7Wj9xMBsmr
amZ4vwMvcH4lTunbRYDkv0VKbssoQRJJOY6CHbY1K4H/XufamuLCEL+TAPtMut1cw95diNoPzbNm
LckJ6sDSPERs0zubVLD5fS+zXMzCXkKjCK2B4Ml4My3MsrCVBdgE/lXDWY9/+KUKr3sP/plYsY8r
pundCigMOdiAf99WycPLhUWmVLV8Na/rzbXOvDCwEqhWeABY9EGoHwpilp1aOX9UDt8Su8wuwa21
z9GQ8xbojXjEsejfzxqXtQ4oWHgwCdPkN4VZ4u22qGI8tGEPmUX8ICKo+WyGQSw69WchXXtpgvz0
5PNiaUWnmjd8H4NOjXYUPEk2Pu9nWBbAiTqVkHeVy2ixEd1eqB79+Lm1hgPBcWxDXpu3eYlV8+NU
EbMcnHx8cYPrE8LHcanmQ6k7xAJxGGRbt3Dlp5JoJDz8QnNnMszPsaYh1mUm46OLir2s7IUV3Gvd
EU5MRb6SbG1YU+8QQAs6CKinkqZvGANsKUt8HrKUAImokGPDEPf324szpNDeFnpGTiZ9xV0pVsQ3
9r9TYDWmsOXtkoPDRTFF8nqlvXz0dg8ltdEYpI4d/LZcZ/hSke7FjMfBG7E1yk/RNQ2mKnR12EbO
Vd4JT774c9ak3tH0ipj5lzUEybFXEKlTD0F7SLweet3ApWtFZiYd6h2Oy5tEKDFxRMd5j06iEXfK
09YTEFKu0gtL+jKVxushN2qDCLQVjHrPP927WvCMbPX4cEEOvx/tB8tnoOq+iX2Xe3nxKorFGrd2
+miYLRbNifJsEX+2Y74kKeQWKRUxpBWLlCfT6fE51EpX497JjVgwy06tEiKzeqOpojT8VSZxGYtN
gpF7Lo7G6Up7g/GY9RAFLGjDYppPjW2m0Hib+zctsB0gY5/B6n1HOqW4qHyia+f8c0R0qLpJohdS
Rmf1uuRZD+KfZctgyDd43Y/xx08C9T/kN2PxHy92DyNf5g6Uq8MKNCfWMwhEfcyjXSreAqoj0IUu
vns3Y/owXuW/xu00dOdwGkMGx4gZdBIZwIlocZ7oDKV0+OXYlj2RUxx+2Kr3nH5ePvUJPT7fhwBf
fKSdvIgfIucaY8nYFgDX0WJJWyp0MfgBOXdpCfPq+Fgi33+Dy+aIl2N7/emj+Q3KuwO/mMv9M8k9
CJoknX5ngjw4lhunqMuAAWn4byh8VyaClya8a51kRZHbDjBJ4v6MeDtbWKFAEFMX+pQNgs1U+bt7
LThM7CCRk0qfiJV9Jxyiy81XLEmlrNAKKcS6CtTlnJ1Ukv8Zfzaa7aesVqOzIZGNK3ShfIcTDCon
X9mN4B8CY/8Nj5fWnbYysCWx470OLJ9nX92zWT5Jl60PM/U2092WtoOKQYDEyp0rgdkVx1pY4s1y
PxZw5k43bF/Kd/KJjeKfHiiaV63ChmS7jxF7XxXrBqqDrCSymBJg7wndTnGaKqlkYEhnr2TVr8w0
NwK8+6Mc0u9yTXszxQufR+tAQzqiQjY660nT8VgKeGNaPYonWSKUt6Kq0pIjlJHUkJUIySfWxY8y
nZyYxdNM9q9uImpqYbqgPdjEK1wCjDC7QZb1/3UT8dUzSArlG5mu6odBvWsgH9jOVEDcPgBPHQOd
dt7KzhmT5pOg/vknWkC3K3927Og5HHKMU4QBz94mb/R8Yqkad0DjSQf42zPtvFKbAmA73BUzmOcY
zXnwaVx9b0R16fT//wnpHqIX0SPyxS9ZI/BgMJ3EOK0RAZDde0AgZ2APPTgbZ0GvVA6+pHhs1KLN
C2JHVPmlJoBz2fyfCSeuqXBDST0qzjWD174bsDh8N/AqqFPjr7WBiB0VFoADeBjl+muJ4a0BIUdO
Z14o6j4QGxvZY6rbMPy4xoz9Ft0fSJ5rETgXRkL/AAoAI+UtOtB92HfK9uKgE+UyIGXl5syymOnL
sFgwshOXdKok32k5WVbLZup4omM8yyXwI8+k5FLtX6r9+6T0EBczuHwpiwboRl8CzU+9BFRS5S0P
6j++DipvmF8ag5DPf3GJvHFIJGBch8U86Jsxnuq6t5gaFU1B8dqkOgXG2Qj5A+Xg6jJE9jyJPqhf
1zprGiRfFqVCXqcyBkS8S2Q1ZqbP/50ACi7g+yG+zdZYZhdfcBl16Hbr/UeB1uLG6rRA/yiS7kG3
e3ihP0VfwWWo6sWHyUhVLaSVtM4aRFz+ZUUTdwmqgdgP2tN672YWY0K3cBJNZq/HMPU+HCQgtnx3
sj6rxw1EzwZzN70Ju4ZsvoBv43WmNy6aIFtDMAw18HCk4Im+XM0nZ4pwhIziniIi8tS82MfrA/Oh
YqyKCewZB8cYmC8gsT3NQ3f1p6jL1GlWvsOKkJdMSTY2N6mHKGmaXU+L/ZbdssN0AqEmLgBTR73u
BYhNQsfJfaW1CPdXLzXenonLXhSsYx7692C81IiEbwaEVBCDPqYrCBMeIyBhMWSxO/Sao8gXGDLl
ijZOXy4tHwZreLf5DG/J51zaruZrGxA1mI/l8+khVgdOo1EEP33IJDsW1LQ0Lm9GsIH05oXPSxCb
8Z6F+CrkporWXP0WbhFfSZ4Wf664W8rOjF9YD9QsVK5spGoH5EXARj5T4RigqdYz9XRhooWSodnZ
MH+Wymb8w7K3jJamGoFcD+q8rjjbIr7ndvQVLPawxvnki6UrM6jcgylrzBBp0DMPpw5k9w/tyB6O
fNUCU8G/XDT0edGWV019lXQR3xXmO36zxjj1NX1xxOyHnoGsKuODtoGETi6d56ndujGg2H6M0wRL
nMG7cuBlZXfIbM47FioxhrCtCG8i3OjQZF7151cmP4Ydq/SBiSGmkJUO3N0U1PHjQWBQxRVQmGYk
++VTOWLrlQKBJe2kbuP37dT2tpHDsqnjrfBdaHWssB5oOTgYW5ZCI3qZyT8gJrLsyHkVP7Pk/wZC
LuAEy4TFnx4FGkc7QaHurZIpII4b3j1yZlWq1+wYUWus875JpaizegwjaTMzrbDoITZYbeT/lAYj
KFWn3lm6xxMar886REgk3ec+68nNRZtL5YZLmYL0SV16f275mY1dBB2277tYwp+yCkWliNGimhXS
jN5Jy4yDFd8ZNqh7xhO5bItvXSIIBIAm89u2/j7a3DTP/7qnxdjoU+l9vAPJ8D9fF3+O1Klz9kD8
EwFR91sKHUTDhtdwNp917gOtfro7iRwxAd7FJbQUxMREOJD1V+Tlww2ALerLaN+az+yTPXaS27PC
awZdSpSJurM16k26uUTNknetLkRnK6OEfqQdiVvuLL8v7uDWUz6g0gEpxj7+cK+Y5xLlZFuHYc/y
2RK5LsJzG4c4Wgm1+d1Zzb7BBnuoDcXzjq38LQheBdwRHwQeVE6+vl9tulBvFkAoHjHlQF34b11F
BYIYAATbaZQHfEJ9w93m2L3mPuH95ciW7ELR4fOnB0i2eojJJCmYeR6jQpbKJiAi0Meryh0JXH2Z
pNflXA0k3kjw06UHttaywQnSIiuLvVOyxx9HHZVSVs1sc5i0Q/3nHdlb0vKfi5Tq/pe6SGlEJMjz
Mv/1LgM9+uIEVJn1eWEi8MU8fpB+sLndu0QGd57KStHBzNMFU3AQ/YAwCvVmmLneYFeL6xRhIh0E
qnZryoyheas+8vKvkz+C03sJm6b6P5LoyCOrg5uLXvLuHduH9O5O4AEioUhBAivggh4eLeRiLjIB
cdmMEEcQgL32MAaZt1TBzlyLUBey3bH7ZbE5ka7JPryBpd4Y40PLwANm2OSnLhHwdfmEdw3Afmrf
93pNJVvwOXSd9rpV9jU1P7sf2WHIgGbBSyxCW138SeG5uJauX0ZsNej3qiPJEB6pBLQYvyJsrnNU
oFZVi+2JfpxNClI4kthlbcd6Y/ohyNxOsrIGHVUnh+pcDeq/QdRaVem8d279xEt4aCJxczNf2ZnX
9VSBk1Ln5Hr3KGmnMSm6NZpcgj4trjuQUaxD1MEqUAxACSDfTonkUQSKlL5qvV9j5CMGffAXYfua
UbRTuuAcgBy47sa9OHZEZNCn7kVZKDKMkyZSWmlsy1kRKNs2lZ9N6NvHj/Ubdfv9gHdIXWZXzsRa
Lu3QgpfCjwE6U8kny8qcFUYdtvGVjfn3BqL00Nyp09M0FaKuYfW8HEnmWXK83vSbrqjYLhqZpQ6B
/aj7fiLGY06xcktT2IFSfdWnIHVx7HEa/ar2kJjs6VslKLw4qlTxEnxaEf6PdVWaGHGgtqbQDymq
SGTlpc8IaD1kuT+JYHOwatR4PCoZicwQEIYNdw2+Ow+p3mtj/rwBHwJK4eTzUMXtiXyI7tZ+ckKN
o7CgZJi6Uz8Na1X7cbu++cuQBQfM/MW3tiAuuk0zKn28bYReCTXcTFhvTo3Mn/7c4N/Uhk9V8/1X
IurSrytNom6iriO/gWDxFfoCMjuGKUtS5YdFv8L3w9AwhDtNmF0t9PCP3AXUkYpVjOya65whsaAD
zuMS5Qtvxk+tlSxBN73GnmP2PtDm7IO3QBJSxqmS/8lJ6y/Acj2rVCHnMMXmCHnFQn60ODEGekfg
ko4VvRYDYO/VHIecrtZKigYG+PeK9jgTRGSgBoxJO2aZTV5mHGj1FtveKlbUlryO4jljq+fThbAU
FsARLo5WBYAOVIu1pXzKZypdiwreaWGI54yEwifDGhg/tyYiUquIydnOaauWuK3bysYJwndrR151
Jr8lt9scEJHYSbZlfUDuFfKDKoF2Q/YLtMejYJpQXkPdHIS9ED7aFfhx8BHYKXGOgN+ZyYpi1gZu
xlSUmjwVc21iGetEmaFoIcigiyx3NlCwLpJcIRUjltcdVko0Mbk/nWl7fFSagOR1LrpuPTPxMMqC
Vaf7fCJu2eTlh3CCtPXD5aUJ1i7rnPTV5HfmDZsa3oVOOfoOw71AuYYtunTDSENQ3iWpVdKrUJO/
2Fobx1G7SgcSvZDC0V1g7Hnzt4dlaY2M1F3mVvm17JqH6M1vf8evC2mog3LvcFMWBlL81WtcdBoh
lhGGYGRnAg1rIdqkN1O4KWH7SWTCK7B/A2neb6zzhz6XgZGTZ1GyQPiE+PxjGQuUtbjFFOsQD2UW
uRG1FZ0/79PzLBmz+ArG/3O3dShhrZqA1Ji+qcoBTnIlBDME9xc0pES3rP7v4spMZIXjDpH5qIQT
5eb5AfhCsJnOrHjDO/0Aft6W
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
