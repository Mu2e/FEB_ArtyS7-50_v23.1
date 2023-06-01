// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Jun  1 15:44:45 2023
// Host        : CD-135239 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/v23.1/Test_DDR_Arty/Test_DDR_Arty.gen/sources_1/bd/TestDDR/ip/TestDDR_TestDDR_top_0_0/TestDDR_TestDDR_top_0_0_sim_netlist.v
// Design      : TestDDR_TestDDR_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "TestDDR_TestDDR_top_0_0,TestDDR_top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "TestDDR_top,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module TestDDR_TestDDR_top_0_0
   (Clk_100MHz,
    SysClk,
    CpldRst,
    Clk_200MHz,
    led_4bits_tri_o,
    rgb_led_tri_o,
    push_buttons_4bits_tri_i,
    sw,
    DDR_DATA,
    DDR_ADDR,
    BA,
    DDR_CKE,
    ODT,
    CS,
    DM,
    RAS,
    CAS,
    DDR_WE,
    DDR_CLKP,
    DDR_CLKN,
    LDQS_P,
    LDQS_N,
    UDQS_P,
    UDQS_N,
    RESET_N);
  input Clk_100MHz;
  input SysClk;
  input CpldRst;
  input Clk_200MHz;
  output [3:0]led_4bits_tri_o;
  output [5:0]rgb_led_tri_o;
  input [3:0]push_buttons_4bits_tri_i;
  input [3:0]sw;
  inout [15:0]DDR_DATA;
  output [13:0]DDR_ADDR;
  output [2:0]BA;
  output [0:0]DDR_CKE;
  output [0:0]ODT;
  output [0:0]CS;
  output [1:0]DM;
  output RAS;
  output CAS;
  output DDR_WE;
  output [0:0]DDR_CLKP;
  output [0:0]DDR_CLKN;
  inout LDQS_P;
  inout LDQS_N;
  inout UDQS_P;
  inout UDQS_N;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RESET_N RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RESET_N, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output RESET_N;

  wire \<const0> ;
  wire [2:0]BA;
  wire CAS;
  wire [0:0]CS;
  wire Clk_100MHz;
  wire Clk_200MHz;
  wire CpldRst;
  wire [13:0]DDR_ADDR;
  wire [0:0]DDR_CKE;
  wire [0:0]DDR_CLKN;
  wire [0:0]DDR_CLKP;
  wire [15:0]DDR_DATA;
  wire DDR_WE;
  wire [1:0]DM;
  wire LDQS_N;
  wire LDQS_P;
  wire [0:0]ODT;
  wire RAS;
  wire RESET_N;
  wire SysClk;
  wire UDQS_N;
  wire UDQS_P;
  wire [1:0]\^led_4bits_tri_o ;
  wire [0:0]\^rgb_led_tri_o ;
  wire [3:0]sw;

  assign led_4bits_tri_o[3] = \<const0> ;
  assign led_4bits_tri_o[2] = \<const0> ;
  assign led_4bits_tri_o[1:0] = \^led_4bits_tri_o [1:0];
  assign rgb_led_tri_o[5] = \<const0> ;
  assign rgb_led_tri_o[4] = \<const0> ;
  assign rgb_led_tri_o[3] = \<const0> ;
  assign rgb_led_tri_o[2] = \<const0> ;
  assign rgb_led_tri_o[1] = \<const0> ;
  assign rgb_led_tri_o[0] = \^rgb_led_tri_o [0];
  GND GND
       (.G(\<const0> ));
  TestDDR_TestDDR_top_0_0_TestDDR_top U0
       (.BA(BA),
        .CAS(CAS),
        .CS(CS),
        .Clk_100MHz(Clk_100MHz),
        .Clk_200MHz(Clk_200MHz),
        .CpldRst(CpldRst),
        .DDR_ADDR(DDR_ADDR),
        .DDR_CKE(DDR_CKE),
        .DDR_CLKN(DDR_CLKN),
        .DDR_CLKP(DDR_CLKP),
        .DDR_DATA(DDR_DATA),
        .DDR_WE(DDR_WE),
        .DM(DM),
        .ODT(ODT),
        .RAS(RAS),
        .RESET_N(RESET_N),
        .SysClk(SysClk),
        .ddr3_dqs_n({UDQS_N,UDQS_P}),
        .ddr3_dqs_p({LDQS_N,LDQS_P}),
        .led_4bits_tri_o(\^led_4bits_tri_o ),
        .rgb_led_tri_o(\^rgb_led_tri_o ),
        .sw(sw));
endmodule

(* ORIG_REF_NAME = "DDR3LController" *) 
module TestDDR_TestDDR_top_0_0_DDR3LController
   (ddr3_dq,
    ddr3_dqs_p,
    ddr3_dqs_n,
    ddr3_addr,
    ddr3_ba,
    ddr3_ras_n,
    ddr3_cas_n,
    ddr3_we_n,
    ddr3_reset_n,
    ddr3_ck_p,
    ddr3_ck_n,
    ddr3_cke,
    ddr3_cs_n,
    ddr3_dm,
    ddr3_odt,
    app_addr,
    app_cmd,
    app_en,
    app_wdf_data,
    app_wdf_end,
    app_wdf_mask,
    app_wdf_wren,
    app_rd_data,
    app_rd_data_end,
    app_rd_data_valid,
    app_rdy,
    app_wdf_rdy,
    app_sr_req,
    app_ref_req,
    app_zq_req,
    app_sr_active,
    app_ref_ack,
    app_zq_ack,
    ui_clk,
    ui_clk_sync_rst,
    init_calib_complete,
    sys_clk_i,
    clk_ref_i,
    device_temp,
    sys_rst);
  inout [15:0]ddr3_dq;
  inout [1:0]ddr3_dqs_p;
  inout [1:0]ddr3_dqs_n;
  output [13:0]ddr3_addr;
  output [2:0]ddr3_ba;
  output ddr3_ras_n;
  output ddr3_cas_n;
  output ddr3_we_n;
  output ddr3_reset_n;
  output [0:0]ddr3_ck_p;
  output [0:0]ddr3_ck_n;
  output [0:0]ddr3_cke;
  output [0:0]ddr3_cs_n;
  output [1:0]ddr3_dm;
  output [0:0]ddr3_odt;
  input [27:0]app_addr;
  input [2:0]app_cmd;
  input app_en;
  input [127:0]app_wdf_data;
  input app_wdf_end;
  input [15:0]app_wdf_mask;
  input app_wdf_wren;
  output [127:0]app_rd_data;
  output app_rd_data_end;
  output app_rd_data_valid;
  output app_rdy;
  output app_wdf_rdy;
  input app_sr_req;
  input app_ref_req;
  input app_zq_req;
  output app_sr_active;
  output app_ref_ack;
  output app_zq_ack;
  output ui_clk;
  output ui_clk_sync_rst;
  output init_calib_complete;
  input sys_clk_i;
  input clk_ref_i;
  output [11:0]device_temp;
  input sys_rst;


endmodule

(* ORIG_REF_NAME = "FIFO_128x128" *) 
module TestDDR_TestDDR_top_0_0_FIFO_128x128
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    rd_data_count,
    wr_data_count,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  input wr_clk;
  input rd_clk;
  input [127:0]din;
  input wr_en;
  input rd_en;
  output [127:0]dout;
  output full;
  output empty;
  output [7:0]rd_data_count;
  output [7:0]wr_data_count;
  output wr_rst_busy;
  output rd_rst_busy;


endmodule

(* ORIG_REF_NAME = "SCFIFO_1Kx16" *) 
module TestDDR_TestDDR_top_0_0_SCFIFO_1Kx16
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    data_count);
  input clk;
  input srst;
  input [15:0]din;
  input wr_en;
  input rd_en;
  output [15:0]dout;
  output full;
  output empty;
  output [10:0]data_count;


endmodule

(* ORIG_REF_NAME = "TestDDR_top" *) 
module TestDDR_TestDDR_top_0_0_TestDDR_top
   (DDR_ADDR,
    BA,
    RAS,
    CAS,
    DDR_WE,
    RESET_N,
    DDR_CLKP,
    DDR_CLKN,
    DDR_CKE,
    CS,
    DM,
    ODT,
    led_4bits_tri_o,
    rgb_led_tri_o,
    DDR_DATA,
    ddr3_dqs_p,
    ddr3_dqs_n,
    SysClk,
    Clk_100MHz,
    Clk_200MHz,
    sw,
    CpldRst);
  output [13:0]DDR_ADDR;
  output [2:0]BA;
  output RAS;
  output CAS;
  output DDR_WE;
  output RESET_N;
  output [0:0]DDR_CLKP;
  output [0:0]DDR_CLKN;
  output [0:0]DDR_CKE;
  output [0:0]CS;
  output [1:0]DM;
  output [0:0]ODT;
  output [1:0]led_4bits_tri_o;
  output [0:0]rgb_led_tri_o;
  inout [15:0]DDR_DATA;
  inout [1:0]ddr3_dqs_p;
  inout [1:0]ddr3_dqs_n;
  input SysClk;
  input Clk_100MHz;
  input Clk_200MHz;
  input [3:0]sw;
  input CpldRst;

  wire [2:0]BA;
  wire CAS;
  wire [0:0]CS;
  wire Clk_100MHz;
  wire Clk_200MHz;
  wire CpldRst;
  (* MARK_DEBUG *) wire [27:0]DDR3_addr;
  (* MARK_DEBUG *) wire [2:0]DDR3_cmd;
  wire \DDR3_cmd[0]_i_1_n_0 ;
  wire \DDR3_cmd[1]_i_1_n_0 ;
  wire \DDR3_cmd[2]_i_1_n_0 ;
  wire \DDR3_cmd[2]_i_2_n_0 ;
  wire \DDR3_cmd[2]_i_3_n_0 ;
  (* MARK_DEBUG *) wire DDR3_en;
  wire DDR3_en_i_1_n_0;
  (* MARK_DEBUG *) wire [127:0]DDR3_rd_data;
  (* MARK_DEBUG *) wire DDR3_rd_data_end;
  (* MARK_DEBUG *) wire DDR3_rd_data_valid;
  (* MARK_DEBUG *) wire DDR3_rdy;
  (* MARK_DEBUG *) wire [127:0]DDR3_wrt_data;
  wire DDR3_wrt_data_reg0;
  (* MARK_DEBUG *) wire DDR3_wrt_en;
  wire DDR3_wrt_en_i_1_n_0;
  (* MARK_DEBUG *) wire DDR3_wrt_end;
  wire DDR3_wrt_end_i_1_n_0;
  (* MARK_DEBUG *) wire [15:0]DDR3_wrt_mask;
  (* MARK_DEBUG *) wire DDR3_wrt_rdy;
  wire [3:0]DDRPage_Seq;
  wire \DDRPage_din[0]_i_1_n_0 ;
  wire \DDRPage_din[100]_i_1_n_0 ;
  wire \DDRPage_din[101]_i_1_n_0 ;
  wire \DDRPage_din[102]_i_1_n_0 ;
  wire \DDRPage_din[103]_i_1_n_0 ;
  wire \DDRPage_din[104]_i_1_n_0 ;
  wire \DDRPage_din[105]_i_1_n_0 ;
  wire \DDRPage_din[106]_i_1_n_0 ;
  wire \DDRPage_din[107]_i_1_n_0 ;
  wire \DDRPage_din[108]_i_1_n_0 ;
  wire \DDRPage_din[109]_i_1_n_0 ;
  wire \DDRPage_din[10]_i_1_n_0 ;
  wire \DDRPage_din[110]_i_1_n_0 ;
  wire \DDRPage_din[111]_i_1_n_0 ;
  wire \DDRPage_din[112]_i_1_n_0 ;
  wire \DDRPage_din[113]_i_1_n_0 ;
  wire \DDRPage_din[114]_i_1_n_0 ;
  wire \DDRPage_din[115]_i_1_n_0 ;
  wire \DDRPage_din[116]_i_1_n_0 ;
  wire \DDRPage_din[117]_i_1_n_0 ;
  wire \DDRPage_din[118]_i_1_n_0 ;
  wire \DDRPage_din[119]_i_1_n_0 ;
  wire \DDRPage_din[11]_i_1_n_0 ;
  wire \DDRPage_din[120]_i_1_n_0 ;
  wire \DDRPage_din[121]_i_1_n_0 ;
  wire \DDRPage_din[122]_i_1_n_0 ;
  wire \DDRPage_din[123]_i_1_n_0 ;
  wire \DDRPage_din[124]_i_1_n_0 ;
  wire \DDRPage_din[125]_i_1_n_0 ;
  wire \DDRPage_din[126]_i_1_n_0 ;
  wire \DDRPage_din[127]_i_1_n_0 ;
  wire \DDRPage_din[127]_i_2_n_0 ;
  wire \DDRPage_din[12]_i_1_n_0 ;
  wire \DDRPage_din[13]_i_1_n_0 ;
  wire \DDRPage_din[14]_i_1_n_0 ;
  wire \DDRPage_din[15]_i_1_n_0 ;
  wire \DDRPage_din[16]_i_1_n_0 ;
  wire \DDRPage_din[17]_i_1_n_0 ;
  wire \DDRPage_din[18]_i_1_n_0 ;
  wire \DDRPage_din[19]_i_1_n_0 ;
  wire \DDRPage_din[1]_i_1_n_0 ;
  wire \DDRPage_din[20]_i_1_n_0 ;
  wire \DDRPage_din[21]_i_1_n_0 ;
  wire \DDRPage_din[22]_i_1_n_0 ;
  wire \DDRPage_din[23]_i_1_n_0 ;
  wire \DDRPage_din[24]_i_1_n_0 ;
  wire \DDRPage_din[25]_i_1_n_0 ;
  wire \DDRPage_din[26]_i_1_n_0 ;
  wire \DDRPage_din[27]_i_1_n_0 ;
  wire \DDRPage_din[28]_i_1_n_0 ;
  wire \DDRPage_din[29]_i_1_n_0 ;
  wire \DDRPage_din[2]_i_1_n_0 ;
  wire \DDRPage_din[30]_i_1_n_0 ;
  wire \DDRPage_din[31]_i_1_n_0 ;
  wire \DDRPage_din[32]_i_1_n_0 ;
  wire \DDRPage_din[33]_i_1_n_0 ;
  wire \DDRPage_din[34]_i_1_n_0 ;
  wire \DDRPage_din[35]_i_1_n_0 ;
  wire \DDRPage_din[36]_i_1_n_0 ;
  wire \DDRPage_din[37]_i_1_n_0 ;
  wire \DDRPage_din[38]_i_1_n_0 ;
  wire \DDRPage_din[39]_i_1_n_0 ;
  wire \DDRPage_din[3]_i_1_n_0 ;
  wire \DDRPage_din[40]_i_1_n_0 ;
  wire \DDRPage_din[41]_i_1_n_0 ;
  wire \DDRPage_din[42]_i_1_n_0 ;
  wire \DDRPage_din[43]_i_1_n_0 ;
  wire \DDRPage_din[44]_i_1_n_0 ;
  wire \DDRPage_din[45]_i_1_n_0 ;
  wire \DDRPage_din[46]_i_1_n_0 ;
  wire \DDRPage_din[47]_i_1_n_0 ;
  wire \DDRPage_din[48]_i_1_n_0 ;
  wire \DDRPage_din[49]_i_1_n_0 ;
  wire \DDRPage_din[4]_i_1_n_0 ;
  wire \DDRPage_din[50]_i_1_n_0 ;
  wire \DDRPage_din[51]_i_1_n_0 ;
  wire \DDRPage_din[52]_i_1_n_0 ;
  wire \DDRPage_din[53]_i_1_n_0 ;
  wire \DDRPage_din[54]_i_1_n_0 ;
  wire \DDRPage_din[55]_i_1_n_0 ;
  wire \DDRPage_din[56]_i_1_n_0 ;
  wire \DDRPage_din[57]_i_1_n_0 ;
  wire \DDRPage_din[58]_i_1_n_0 ;
  wire \DDRPage_din[59]_i_1_n_0 ;
  wire \DDRPage_din[5]_i_1_n_0 ;
  wire \DDRPage_din[60]_i_1_n_0 ;
  wire \DDRPage_din[61]_i_1_n_0 ;
  wire \DDRPage_din[62]_i_1_n_0 ;
  wire \DDRPage_din[63]_i_1_n_0 ;
  wire \DDRPage_din[64]_i_1_n_0 ;
  wire \DDRPage_din[65]_i_1_n_0 ;
  wire \DDRPage_din[66]_i_1_n_0 ;
  wire \DDRPage_din[67]_i_1_n_0 ;
  wire \DDRPage_din[68]_i_1_n_0 ;
  wire \DDRPage_din[69]_i_1_n_0 ;
  wire \DDRPage_din[6]_i_1_n_0 ;
  wire \DDRPage_din[70]_i_1_n_0 ;
  wire \DDRPage_din[71]_i_1_n_0 ;
  wire \DDRPage_din[72]_i_1_n_0 ;
  wire \DDRPage_din[73]_i_1_n_0 ;
  wire \DDRPage_din[74]_i_1_n_0 ;
  wire \DDRPage_din[75]_i_1_n_0 ;
  wire \DDRPage_din[76]_i_1_n_0 ;
  wire \DDRPage_din[77]_i_1_n_0 ;
  wire \DDRPage_din[78]_i_1_n_0 ;
  wire \DDRPage_din[79]_i_1_n_0 ;
  wire \DDRPage_din[7]_i_1_n_0 ;
  wire \DDRPage_din[80]_i_1_n_0 ;
  wire \DDRPage_din[81]_i_1_n_0 ;
  wire \DDRPage_din[82]_i_1_n_0 ;
  wire \DDRPage_din[83]_i_1_n_0 ;
  wire \DDRPage_din[84]_i_1_n_0 ;
  wire \DDRPage_din[85]_i_1_n_0 ;
  wire \DDRPage_din[86]_i_1_n_0 ;
  wire \DDRPage_din[87]_i_1_n_0 ;
  wire \DDRPage_din[88]_i_1_n_0 ;
  wire \DDRPage_din[89]_i_1_n_0 ;
  wire \DDRPage_din[8]_i_1_n_0 ;
  wire \DDRPage_din[90]_i_1_n_0 ;
  wire \DDRPage_din[91]_i_1_n_0 ;
  wire \DDRPage_din[92]_i_1_n_0 ;
  wire \DDRPage_din[93]_i_1_n_0 ;
  wire \DDRPage_din[94]_i_1_n_0 ;
  wire \DDRPage_din[95]_i_1_n_0 ;
  wire \DDRPage_din[96]_i_1_n_0 ;
  wire \DDRPage_din[97]_i_1_n_0 ;
  wire \DDRPage_din[98]_i_1_n_0 ;
  wire \DDRPage_din[99]_i_1_n_0 ;
  wire \DDRPage_din[9]_i_1_n_0 ;
  wire \DDRPage_din_reg_n_0_[0] ;
  wire \DDRPage_din_reg_n_0_[100] ;
  wire \DDRPage_din_reg_n_0_[101] ;
  wire \DDRPage_din_reg_n_0_[102] ;
  wire \DDRPage_din_reg_n_0_[103] ;
  wire \DDRPage_din_reg_n_0_[104] ;
  wire \DDRPage_din_reg_n_0_[105] ;
  wire \DDRPage_din_reg_n_0_[106] ;
  wire \DDRPage_din_reg_n_0_[107] ;
  wire \DDRPage_din_reg_n_0_[108] ;
  wire \DDRPage_din_reg_n_0_[109] ;
  wire \DDRPage_din_reg_n_0_[10] ;
  wire \DDRPage_din_reg_n_0_[110] ;
  wire \DDRPage_din_reg_n_0_[111] ;
  wire \DDRPage_din_reg_n_0_[112] ;
  wire \DDRPage_din_reg_n_0_[113] ;
  wire \DDRPage_din_reg_n_0_[114] ;
  wire \DDRPage_din_reg_n_0_[115] ;
  wire \DDRPage_din_reg_n_0_[116] ;
  wire \DDRPage_din_reg_n_0_[117] ;
  wire \DDRPage_din_reg_n_0_[118] ;
  wire \DDRPage_din_reg_n_0_[119] ;
  wire \DDRPage_din_reg_n_0_[11] ;
  wire \DDRPage_din_reg_n_0_[120] ;
  wire \DDRPage_din_reg_n_0_[121] ;
  wire \DDRPage_din_reg_n_0_[122] ;
  wire \DDRPage_din_reg_n_0_[123] ;
  wire \DDRPage_din_reg_n_0_[124] ;
  wire \DDRPage_din_reg_n_0_[125] ;
  wire \DDRPage_din_reg_n_0_[126] ;
  wire \DDRPage_din_reg_n_0_[127] ;
  wire \DDRPage_din_reg_n_0_[12] ;
  wire \DDRPage_din_reg_n_0_[13] ;
  wire \DDRPage_din_reg_n_0_[14] ;
  wire \DDRPage_din_reg_n_0_[15] ;
  wire \DDRPage_din_reg_n_0_[16] ;
  wire \DDRPage_din_reg_n_0_[17] ;
  wire \DDRPage_din_reg_n_0_[18] ;
  wire \DDRPage_din_reg_n_0_[19] ;
  wire \DDRPage_din_reg_n_0_[1] ;
  wire \DDRPage_din_reg_n_0_[20] ;
  wire \DDRPage_din_reg_n_0_[21] ;
  wire \DDRPage_din_reg_n_0_[22] ;
  wire \DDRPage_din_reg_n_0_[23] ;
  wire \DDRPage_din_reg_n_0_[24] ;
  wire \DDRPage_din_reg_n_0_[25] ;
  wire \DDRPage_din_reg_n_0_[26] ;
  wire \DDRPage_din_reg_n_0_[27] ;
  wire \DDRPage_din_reg_n_0_[28] ;
  wire \DDRPage_din_reg_n_0_[29] ;
  wire \DDRPage_din_reg_n_0_[2] ;
  wire \DDRPage_din_reg_n_0_[30] ;
  wire \DDRPage_din_reg_n_0_[31] ;
  wire \DDRPage_din_reg_n_0_[32] ;
  wire \DDRPage_din_reg_n_0_[33] ;
  wire \DDRPage_din_reg_n_0_[34] ;
  wire \DDRPage_din_reg_n_0_[35] ;
  wire \DDRPage_din_reg_n_0_[36] ;
  wire \DDRPage_din_reg_n_0_[37] ;
  wire \DDRPage_din_reg_n_0_[38] ;
  wire \DDRPage_din_reg_n_0_[39] ;
  wire \DDRPage_din_reg_n_0_[3] ;
  wire \DDRPage_din_reg_n_0_[40] ;
  wire \DDRPage_din_reg_n_0_[41] ;
  wire \DDRPage_din_reg_n_0_[42] ;
  wire \DDRPage_din_reg_n_0_[43] ;
  wire \DDRPage_din_reg_n_0_[44] ;
  wire \DDRPage_din_reg_n_0_[45] ;
  wire \DDRPage_din_reg_n_0_[46] ;
  wire \DDRPage_din_reg_n_0_[47] ;
  wire \DDRPage_din_reg_n_0_[48] ;
  wire \DDRPage_din_reg_n_0_[49] ;
  wire \DDRPage_din_reg_n_0_[4] ;
  wire \DDRPage_din_reg_n_0_[50] ;
  wire \DDRPage_din_reg_n_0_[51] ;
  wire \DDRPage_din_reg_n_0_[52] ;
  wire \DDRPage_din_reg_n_0_[53] ;
  wire \DDRPage_din_reg_n_0_[54] ;
  wire \DDRPage_din_reg_n_0_[55] ;
  wire \DDRPage_din_reg_n_0_[56] ;
  wire \DDRPage_din_reg_n_0_[57] ;
  wire \DDRPage_din_reg_n_0_[58] ;
  wire \DDRPage_din_reg_n_0_[59] ;
  wire \DDRPage_din_reg_n_0_[5] ;
  wire \DDRPage_din_reg_n_0_[60] ;
  wire \DDRPage_din_reg_n_0_[61] ;
  wire \DDRPage_din_reg_n_0_[62] ;
  wire \DDRPage_din_reg_n_0_[63] ;
  wire \DDRPage_din_reg_n_0_[64] ;
  wire \DDRPage_din_reg_n_0_[65] ;
  wire \DDRPage_din_reg_n_0_[66] ;
  wire \DDRPage_din_reg_n_0_[67] ;
  wire \DDRPage_din_reg_n_0_[68] ;
  wire \DDRPage_din_reg_n_0_[69] ;
  wire \DDRPage_din_reg_n_0_[6] ;
  wire \DDRPage_din_reg_n_0_[70] ;
  wire \DDRPage_din_reg_n_0_[71] ;
  wire \DDRPage_din_reg_n_0_[72] ;
  wire \DDRPage_din_reg_n_0_[73] ;
  wire \DDRPage_din_reg_n_0_[74] ;
  wire \DDRPage_din_reg_n_0_[75] ;
  wire \DDRPage_din_reg_n_0_[76] ;
  wire \DDRPage_din_reg_n_0_[77] ;
  wire \DDRPage_din_reg_n_0_[78] ;
  wire \DDRPage_din_reg_n_0_[79] ;
  wire \DDRPage_din_reg_n_0_[7] ;
  wire \DDRPage_din_reg_n_0_[80] ;
  wire \DDRPage_din_reg_n_0_[81] ;
  wire \DDRPage_din_reg_n_0_[82] ;
  wire \DDRPage_din_reg_n_0_[83] ;
  wire \DDRPage_din_reg_n_0_[84] ;
  wire \DDRPage_din_reg_n_0_[85] ;
  wire \DDRPage_din_reg_n_0_[86] ;
  wire \DDRPage_din_reg_n_0_[87] ;
  wire \DDRPage_din_reg_n_0_[88] ;
  wire \DDRPage_din_reg_n_0_[89] ;
  wire \DDRPage_din_reg_n_0_[8] ;
  wire \DDRPage_din_reg_n_0_[90] ;
  wire \DDRPage_din_reg_n_0_[91] ;
  wire \DDRPage_din_reg_n_0_[92] ;
  wire \DDRPage_din_reg_n_0_[93] ;
  wire \DDRPage_din_reg_n_0_[94] ;
  wire \DDRPage_din_reg_n_0_[95] ;
  wire \DDRPage_din_reg_n_0_[96] ;
  wire \DDRPage_din_reg_n_0_[97] ;
  wire \DDRPage_din_reg_n_0_[98] ;
  wire \DDRPage_din_reg_n_0_[99] ;
  wire \DDRPage_din_reg_n_0_[9] ;
  wire [127:0]DDRPage_dout;
  wire DDRPage_rd_en_i_1_n_0;
  wire DDRPage_rd_en_i_2_n_0;
  wire DDRPage_rd_en_i_3_n_0;
  wire DDRPage_rd_en_reg_n_0;
  wire DDRPage_wr_en_i_1_n_0;
  wire DDRPage_wr_en_reg_n_0;
  (* MARK_DEBUG *) wire [3:0]DDRSeqStat;
  wire \DDRSeqStat[0]_i_1_n_0 ;
  wire \DDRSeqStat[1]_i_1_n_0 ;
  wire [13:0]DDR_ADDR;
  wire [0:0]DDR_CKE;
  wire [0:0]DDR_CLKN;
  wire [0:0]DDR_CLKP;
  wire [15:0]DDR_DATA;
  wire DDR_WE;
  wire [1:0]DM;
  wire EvBuffDat;
  wire \EvBuffDat[0]_i_1_n_0 ;
  wire \EvBuffDat[0]_i_2_n_0 ;
  wire \EvBuffDat[0]_i_3_n_0 ;
  wire \EvBuffDat[0]_i_4_n_0 ;
  wire \EvBuffDat[0]_i_5_n_0 ;
  wire \EvBuffDat[0]_i_6_n_0 ;
  wire \EvBuffDat[11]_i_1_n_0 ;
  wire \EvBuffDat[11]_i_2_n_0 ;
  wire \EvBuffDat[11]_i_3_n_0 ;
  wire \EvBuffDat[13]_i_1_n_0 ;
  wire \EvBuffDat[13]_i_2_n_0 ;
  wire \EvBuffDat[14]_i_1_n_0 ;
  wire \EvBuffDat[14]_i_2_n_0 ;
  wire \EvBuffDat[14]_i_3_n_0 ;
  wire \EvBuffDat[14]_i_4_n_0 ;
  wire \EvBuffDat[15]_i_2_n_0 ;
  wire \EvBuffDat[15]_i_3_n_0 ;
  wire \EvBuffDat[15]_i_4_n_0 ;
  wire \EvBuffDat[15]_i_5_n_0 ;
  wire \EvBuffDat[15]_i_6_n_0 ;
  wire \EvBuffDat[15]_i_7_n_0 ;
  wire \EvBuffDat[15]_i_8_n_0 ;
  wire \EvBuffDat[1]_i_1_n_0 ;
  wire \EvBuffDat[1]_i_2_n_0 ;
  wire \EvBuffDat[1]_i_3_n_0 ;
  wire \EvBuffDat[2]_i_1_n_0 ;
  wire \EvBuffDat[2]_i_2_n_0 ;
  wire \EvBuffDat[2]_i_3_n_0 ;
  wire \EvBuffDat[3]_i_1_n_0 ;
  wire \EvBuffDat[3]_i_2_n_0 ;
  wire \EvBuffDat[3]_i_3_n_0 ;
  wire \EvBuffDat[3]_i_4_n_0 ;
  wire \EvBuffDat[3]_i_5_n_0 ;
  wire \EvBuffDat[4]_i_1_n_0 ;
  wire \EvBuffDat[4]_i_2_n_0 ;
  wire \EvBuffDat[5]_i_1_n_0 ;
  wire \EvBuffDat[5]_i_2_n_0 ;
  wire \EvBuffDat[5]_i_3_n_0 ;
  wire \EvBuffDat[6]_i_1_n_0 ;
  wire \EvBuffDat[6]_i_2_n_0 ;
  wire \EvBuffDat[6]_i_3_n_0 ;
  wire \EvBuffDat[6]_i_4_n_0 ;
  wire \EvBuffDat[6]_i_5_n_0 ;
  wire \EvBuffDat[7]_i_1_n_0 ;
  wire \EvBuffDat[7]_i_2_n_0 ;
  wire \EvBuffDat[8]_i_1_n_0 ;
  wire [15:0]EvBuffOut;
  wire EvBuffRd_i_1_n_0;
  wire [10:0]EvBuffWdsUsed;
  wire EvBuffWrt_i_1_n_0;
  wire EvBuffWrt_i_3_n_0;
  wire EventBuff_i_1_n_0;
  wire [127:15]EventData;
  wire EventData0;
  wire \EventData[100]_i_1_n_0 ;
  wire \EventData[101]_i_1_n_0 ;
  wire \EventData[102]_i_1_n_0 ;
  wire \EventData[103]_i_1_n_0 ;
  wire \EventData[104]_i_1_n_0 ;
  wire \EventData[105]_i_1_n_0 ;
  wire \EventData[106]_i_1_n_0 ;
  wire \EventData[107]_i_1_n_0 ;
  wire \EventData[108]_i_1_n_0 ;
  wire \EventData[109]_i_1_n_0 ;
  wire \EventData[110]_i_1_n_0 ;
  wire \EventData[111]_i_2_n_0 ;
  wire \EventData[64]_i_1_n_0 ;
  wire \EventData[65]_i_1_n_0 ;
  wire \EventData[66]_i_1_n_0 ;
  wire \EventData[67]_i_1_n_0 ;
  wire \EventData[68]_i_1_n_0 ;
  wire \EventData[69]_i_1_n_0 ;
  wire \EventData[70]_i_1_n_0 ;
  wire \EventData[71]_i_1_n_0 ;
  wire \EventData[72]_i_1_n_0 ;
  wire \EventData[73]_i_1_n_0 ;
  wire \EventData[74]_i_1_n_0 ;
  wire \EventData[75]_i_1_n_0 ;
  wire \EventData[76]_i_1_n_0 ;
  wire \EventData[77]_i_1_n_0 ;
  wire \EventData[78]_i_1_n_0 ;
  wire \EventData[79]_i_2_n_0 ;
  wire \EventData[80]_i_1_n_0 ;
  wire \EventData[81]_i_1_n_0 ;
  wire \EventData[82]_i_1_n_0 ;
  wire \EventData[83]_i_1_n_0 ;
  wire \EventData[84]_i_1_n_0 ;
  wire \EventData[85]_i_1_n_0 ;
  wire \EventData[86]_i_1_n_0 ;
  wire \EventData[87]_i_1_n_0 ;
  wire \EventData[88]_i_1_n_0 ;
  wire \EventData[89]_i_1_n_0 ;
  wire \EventData[90]_i_1_n_0 ;
  wire \EventData[91]_i_1_n_0 ;
  wire \EventData[92]_i_1_n_0 ;
  wire \EventData[93]_i_1_n_0 ;
  wire \EventData[94]_i_1_n_0 ;
  wire \EventData[95]_i_2_n_0 ;
  wire \EventData[96]_i_1_n_0 ;
  wire \EventData[97]_i_1_n_0 ;
  wire \EventData[98]_i_1_n_0 ;
  wire \EventData[99]_i_1_n_0 ;
  wire \EventData_reg_n_0_[0] ;
  wire \EventData_reg_n_0_[100] ;
  wire \EventData_reg_n_0_[101] ;
  wire \EventData_reg_n_0_[102] ;
  wire \EventData_reg_n_0_[103] ;
  wire \EventData_reg_n_0_[104] ;
  wire \EventData_reg_n_0_[105] ;
  wire \EventData_reg_n_0_[106] ;
  wire \EventData_reg_n_0_[107] ;
  wire \EventData_reg_n_0_[108] ;
  wire \EventData_reg_n_0_[109] ;
  wire \EventData_reg_n_0_[10] ;
  wire \EventData_reg_n_0_[110] ;
  wire \EventData_reg_n_0_[111] ;
  wire \EventData_reg_n_0_[112] ;
  wire \EventData_reg_n_0_[113] ;
  wire \EventData_reg_n_0_[114] ;
  wire \EventData_reg_n_0_[115] ;
  wire \EventData_reg_n_0_[116] ;
  wire \EventData_reg_n_0_[117] ;
  wire \EventData_reg_n_0_[118] ;
  wire \EventData_reg_n_0_[119] ;
  wire \EventData_reg_n_0_[11] ;
  wire \EventData_reg_n_0_[120] ;
  wire \EventData_reg_n_0_[121] ;
  wire \EventData_reg_n_0_[122] ;
  wire \EventData_reg_n_0_[123] ;
  wire \EventData_reg_n_0_[124] ;
  wire \EventData_reg_n_0_[125] ;
  wire \EventData_reg_n_0_[126] ;
  wire \EventData_reg_n_0_[127] ;
  wire \EventData_reg_n_0_[12] ;
  wire \EventData_reg_n_0_[13] ;
  wire \EventData_reg_n_0_[14] ;
  wire \EventData_reg_n_0_[15] ;
  wire \EventData_reg_n_0_[16] ;
  wire \EventData_reg_n_0_[17] ;
  wire \EventData_reg_n_0_[18] ;
  wire \EventData_reg_n_0_[19] ;
  wire \EventData_reg_n_0_[1] ;
  wire \EventData_reg_n_0_[20] ;
  wire \EventData_reg_n_0_[21] ;
  wire \EventData_reg_n_0_[22] ;
  wire \EventData_reg_n_0_[23] ;
  wire \EventData_reg_n_0_[24] ;
  wire \EventData_reg_n_0_[25] ;
  wire \EventData_reg_n_0_[26] ;
  wire \EventData_reg_n_0_[27] ;
  wire \EventData_reg_n_0_[28] ;
  wire \EventData_reg_n_0_[29] ;
  wire \EventData_reg_n_0_[2] ;
  wire \EventData_reg_n_0_[30] ;
  wire \EventData_reg_n_0_[31] ;
  wire \EventData_reg_n_0_[32] ;
  wire \EventData_reg_n_0_[33] ;
  wire \EventData_reg_n_0_[34] ;
  wire \EventData_reg_n_0_[35] ;
  wire \EventData_reg_n_0_[36] ;
  wire \EventData_reg_n_0_[37] ;
  wire \EventData_reg_n_0_[38] ;
  wire \EventData_reg_n_0_[39] ;
  wire \EventData_reg_n_0_[3] ;
  wire \EventData_reg_n_0_[40] ;
  wire \EventData_reg_n_0_[41] ;
  wire \EventData_reg_n_0_[42] ;
  wire \EventData_reg_n_0_[43] ;
  wire \EventData_reg_n_0_[44] ;
  wire \EventData_reg_n_0_[45] ;
  wire \EventData_reg_n_0_[46] ;
  wire \EventData_reg_n_0_[47] ;
  wire \EventData_reg_n_0_[48] ;
  wire \EventData_reg_n_0_[49] ;
  wire \EventData_reg_n_0_[4] ;
  wire \EventData_reg_n_0_[50] ;
  wire \EventData_reg_n_0_[51] ;
  wire \EventData_reg_n_0_[52] ;
  wire \EventData_reg_n_0_[53] ;
  wire \EventData_reg_n_0_[54] ;
  wire \EventData_reg_n_0_[55] ;
  wire \EventData_reg_n_0_[56] ;
  wire \EventData_reg_n_0_[57] ;
  wire \EventData_reg_n_0_[58] ;
  wire \EventData_reg_n_0_[59] ;
  wire \EventData_reg_n_0_[5] ;
  wire \EventData_reg_n_0_[60] ;
  wire \EventData_reg_n_0_[61] ;
  wire \EventData_reg_n_0_[62] ;
  wire \EventData_reg_n_0_[63] ;
  wire \EventData_reg_n_0_[64] ;
  wire \EventData_reg_n_0_[65] ;
  wire \EventData_reg_n_0_[66] ;
  wire \EventData_reg_n_0_[67] ;
  wire \EventData_reg_n_0_[68] ;
  wire \EventData_reg_n_0_[69] ;
  wire \EventData_reg_n_0_[6] ;
  wire \EventData_reg_n_0_[70] ;
  wire \EventData_reg_n_0_[71] ;
  wire \EventData_reg_n_0_[72] ;
  wire \EventData_reg_n_0_[73] ;
  wire \EventData_reg_n_0_[74] ;
  wire \EventData_reg_n_0_[75] ;
  wire \EventData_reg_n_0_[76] ;
  wire \EventData_reg_n_0_[77] ;
  wire \EventData_reg_n_0_[78] ;
  wire \EventData_reg_n_0_[79] ;
  wire \EventData_reg_n_0_[7] ;
  wire \EventData_reg_n_0_[80] ;
  wire \EventData_reg_n_0_[81] ;
  wire \EventData_reg_n_0_[82] ;
  wire \EventData_reg_n_0_[83] ;
  wire \EventData_reg_n_0_[84] ;
  wire \EventData_reg_n_0_[85] ;
  wire \EventData_reg_n_0_[86] ;
  wire \EventData_reg_n_0_[87] ;
  wire \EventData_reg_n_0_[88] ;
  wire \EventData_reg_n_0_[89] ;
  wire \EventData_reg_n_0_[8] ;
  wire \EventData_reg_n_0_[90] ;
  wire \EventData_reg_n_0_[91] ;
  wire \EventData_reg_n_0_[92] ;
  wire \EventData_reg_n_0_[93] ;
  wire \EventData_reg_n_0_[94] ;
  wire \EventData_reg_n_0_[95] ;
  wire \EventData_reg_n_0_[96] ;
  wire \EventData_reg_n_0_[97] ;
  wire \EventData_reg_n_0_[98] ;
  wire \EventData_reg_n_0_[99] ;
  wire \EventData_reg_n_0_[9] ;
  wire EventWdCnt;
  wire \EventWdCnt[0]_i_1_n_0 ;
  wire \EventWdCnt[10]_i_2_n_0 ;
  wire \EventWdCnt[10]_i_3_n_0 ;
  wire \EventWdCnt[1]_i_1_n_0 ;
  wire \EventWdCnt[2]_i_1_n_0 ;
  wire \EventWdCnt[2]_i_2_n_0 ;
  wire \EventWdCnt[3]_i_1_n_0 ;
  wire \EventWdCnt[3]_i_2_n_0 ;
  wire \EventWdCnt[4]_i_1_n_0 ;
  wire \EventWdCnt[4]_i_2_n_0 ;
  wire \EventWdCnt[5]_i_1_n_0 ;
  wire \EventWdCnt[5]_i_2_n_0 ;
  wire \EventWdCnt[6]_i_1_n_0 ;
  wire \EventWdCnt[6]_i_2_n_0 ;
  wire \EventWdCnt[7]_i_1_n_0 ;
  wire \EventWdCnt[7]_i_2_n_0 ;
  wire \EventWdCnt[8]_i_1_n_0 ;
  wire \EventWdCnt[8]_i_2_n_0 ;
  wire \EventWdCnt[9]_i_1_n_0 ;
  wire \EventWdCnt[9]_i_2_n_0 ;
  wire \EventWdCnt_reg_n_0_[0] ;
  wire \EventWdCnt_reg_n_0_[10] ;
  wire \EventWdCnt_reg_n_0_[1] ;
  wire \EventWdCnt_reg_n_0_[2] ;
  wire \EventWdCnt_reg_n_0_[3] ;
  wire \EventWdCnt_reg_n_0_[4] ;
  wire \EventWdCnt_reg_n_0_[5] ;
  wire \EventWdCnt_reg_n_0_[6] ;
  wire \EventWdCnt_reg_n_0_[7] ;
  wire \EventWdCnt_reg_n_0_[8] ;
  wire \EventWdCnt_reg_n_0_[9] ;
  wire \FSM_onehot_prev_state[1]_i_1_n_0 ;
  wire \FSM_onehot_prev_state[2]_i_1_n_0 ;
  wire \FSM_onehot_prev_state[3]_i_1_n_0 ;
  wire \FSM_onehot_prev_state[4]_i_1_n_0 ;
  wire \FSM_onehot_prev_state[4]_i_2_n_0 ;
  wire \FSM_onehot_prev_state_reg_n_0_[2] ;
  wire \FSM_onehot_prev_state_reg_n_0_[3] ;
  wire \FSM_onehot_prev_state_reg_n_0_[4] ;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[0]_i_3_n_0 ;
  wire \FSM_sequential_current_state[3]_i_2_n_0 ;
  wire \FSM_sequential_current_state[3]_i_3_n_0 ;
  wire \FSM_sequential_current_state[3]_i_4_n_0 ;
  wire [0:0]ODT;
  wire PageWdCnt;
  wire \PageWdCnt[3]_i_1_n_0 ;
  wire \PageWdCnt[3]_i_4_n_0 ;
  wire \PageWdCnt_reg_n_0_[0] ;
  wire \PageWdCnt_reg_n_0_[1] ;
  wire \PageWdCnt_reg_n_0_[2] ;
  wire \PageWdCnt_reg_n_0_[3] ;
  wire RAS;
  wire RESET_N;
  wire RdPageWdCnt;
  wire \RdPageWdCnt[0]_i_1_n_0 ;
  wire \RdPageWdCnt[1]_i_1_n_0 ;
  wire \RdPageWdCnt[2]_i_1_n_0 ;
  wire \RdPageWdCnt[2]_i_2_n_0 ;
  wire \RdPageWdCnt[2]_i_3_n_0 ;
  wire \RdPageWdCnt[3]_i_2_n_0 ;
  wire \RdPageWdCnt[3]_i_3_n_0 ;
  wire \RdPageWdCnt_reg_n_0_[0] ;
  wire \RdPageWdCnt_reg_n_0_[1] ;
  wire \RdPageWdCnt_reg_n_0_[2] ;
  wire \RdPageWdCnt_reg_n_0_[3] ;
  wire SysClk;
  wire \counter[0]_i_3_n_0 ;
  wire [15:0]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_2 ;
  wire \counter_reg[0]_i_2_n_3 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [3:0]current_state;
  wire [1:0]ddr3_dqs_n;
  wire [1:0]ddr3_dqs_p;
  wire [15:0]din;
  wire empty;
  wire eqOp;
  wire eqOp2_in;
  wire first_iter_i_1_n_0;
  wire gtOp;
  wire gtOp_carry__0_i_1_n_0;
  wire gtOp_carry__0_i_2_n_0;
  wire gtOp_carry__0_i_3_n_0;
  wire gtOp_carry__0_i_4_n_0;
  wire gtOp_carry__0_n_3;
  wire gtOp_carry_i_1_n_0;
  wire gtOp_carry_i_2_n_0;
  wire gtOp_carry_i_3_n_0;
  wire gtOp_carry_i_4_n_0;
  wire gtOp_carry_i_5_n_0;
  wire gtOp_carry_i_6_n_0;
  wire gtOp_carry_i_7_n_0;
  wire gtOp_carry_i_8_n_0;
  wire gtOp_carry_n_0;
  wire gtOp_carry_n_1;
  wire gtOp_carry_n_2;
  wire gtOp_carry_n_3;
  wire [15:0]in12;
  wire [27:3]in9;
  wire [3:0]latched_PageWdCnt;
  wire latched_transferDDR;
  wire [1:0]led_4bits_tri_o;
  wire \led_4bits_tri_o[0]_i_1_n_0 ;
  wire \led_4bits_tri_o[1]_i_1_n_0 ;
  wire [127:0]p_0_in__0;
  wire [7:0]plusOp;
  wire [3:0]plusOp_0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__1_n_4;
  wire plusOp_carry__1_n_5;
  wire plusOp_carry__1_n_6;
  wire plusOp_carry__1_n_7;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__2_n_4;
  wire plusOp_carry__2_n_5;
  wire plusOp_carry__2_n_6;
  wire plusOp_carry__2_n_7;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__3_n_4;
  wire plusOp_carry__3_n_5;
  wire plusOp_carry__3_n_6;
  wire plusOp_carry__3_n_7;
  wire plusOp_carry__4_n_0;
  wire plusOp_carry__4_n_1;
  wire plusOp_carry__4_n_2;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry__4_n_4;
  wire plusOp_carry__4_n_5;
  wire plusOp_carry__4_n_6;
  wire plusOp_carry__4_n_7;
  wire plusOp_carry__5_n_7;
  wire plusOp_carry_i_1_n_0;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire rd_clk;
  wire rd_en;
  wire \reset_count[7]_i_2_n_0 ;
  wire [7:0]reset_count_reg;
  wire [0:0]rgb_led_tri_o;
  wire \rgb_led_tri_o[0]_i_1_n_0 ;
  wire rst;
  wire rst_transferDDR;
  wire rst_transferDDR_reg_inv_n_0;
  wire setAddr;
  wire setAddr_i_1_n_0;
  wire setAddr_reg_n_0;
  wire [3:0]sw;
  wire sys_rst;
  wire sys_rst_i_1_n_0;
  wire transferDDR_i_1_n_0;
  wire transferDDR_reg_n_0;
  wire [14:14]uBunch;
  wire \uBunch_reg_n_0_[0] ;
  wire \uBunch_reg_n_0_[10] ;
  wire \uBunch_reg_n_0_[11] ;
  wire \uBunch_reg_n_0_[12] ;
  wire \uBunch_reg_n_0_[13] ;
  wire \uBunch_reg_n_0_[14] ;
  wire \uBunch_reg_n_0_[1] ;
  wire \uBunch_reg_n_0_[2] ;
  wire \uBunch_reg_n_0_[3] ;
  wire \uBunch_reg_n_0_[4] ;
  wire \uBunch_reg_n_0_[5] ;
  wire \uBunch_reg_n_0_[6] ;
  wire \uBunch_reg_n_0_[7] ;
  wire \uBunch_reg_n_0_[8] ;
  wire \uBunch_reg_n_0_[9] ;
  wire wr_en;
  wire NLW_DDR_Controller_app_ref_ack_UNCONNECTED;
  wire NLW_DDR_Controller_app_sr_active_UNCONNECTED;
  wire NLW_DDR_Controller_app_zq_ack_UNCONNECTED;
  wire NLW_DDR_Controller_init_calib_complete_UNCONNECTED;
  wire NLW_DDR_Controller_ui_clk_sync_rst_UNCONNECTED;
  wire [11:0]NLW_DDR_Controller_device_temp_UNCONNECTED;
  wire NLW_EventBuff_full_UNCONNECTED;
  wire NLW_OneDDRPage_empty_UNCONNECTED;
  wire NLW_OneDDRPage_full_UNCONNECTED;
  wire NLW_OneDDRPage_rd_rst_busy_UNCONNECTED;
  wire NLW_OneDDRPage_wr_rst_busy_UNCONNECTED;
  wire [7:0]NLW_OneDDRPage_rd_data_count_UNCONNECTED;
  wire [7:0]NLW_OneDDRPage_wr_data_count_UNCONNECTED;
  wire [3:3]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_gtOp_carry_O_UNCONNECTED;
  wire [3:2]NLW_gtOp_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_gtOp_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_plusOp_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_plusOp_carry__5_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DDR3_addr[10]_i_1 
       (.I0(\uBunch_reg_n_0_[0] ),
        .I1(setAddr_reg_n_0),
        .I2(plusOp_carry__0_n_4),
        .I3(DDR3_wrt_rdy),
        .I4(DDR3_addr[10]),
        .O(in9[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DDR3_addr[11]_i_1 
       (.I0(\uBunch_reg_n_0_[1] ),
        .I1(setAddr_reg_n_0),
        .I2(plusOp_carry__1_n_7),
        .I3(DDR3_wrt_rdy),
        .I4(DDR3_addr[11]),
        .O(in9[11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DDR3_addr[12]_i_1 
       (.I0(\uBunch_reg_n_0_[2] ),
        .I1(setAddr_reg_n_0),
        .I2(plusOp_carry__1_n_6),
        .I3(DDR3_wrt_rdy),
        .I4(DDR3_addr[12]),
        .O(in9[12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DDR3_addr[13]_i_1 
       (.I0(\uBunch_reg_n_0_[3] ),
        .I1(setAddr_reg_n_0),
        .I2(plusOp_carry__1_n_5),
        .I3(DDR3_wrt_rdy),
        .I4(DDR3_addr[13]),
        .O(in9[13]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DDR3_addr[14]_i_1 
       (.I0(\uBunch_reg_n_0_[4] ),
        .I1(setAddr_reg_n_0),
        .I2(plusOp_carry__1_n_4),
        .I3(DDR3_wrt_rdy),
        .I4(DDR3_addr[14]),
        .O(in9[14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DDR3_addr[15]_i_1 
       (.I0(\uBunch_reg_n_0_[5] ),
        .I1(setAddr_reg_n_0),
        .I2(plusOp_carry__2_n_7),
        .I3(DDR3_wrt_rdy),
        .I4(DDR3_addr[15]),
        .O(in9[15]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DDR3_addr[16]_i_1 
       (.I0(\uBunch_reg_n_0_[6] ),
        .I1(setAddr_reg_n_0),
        .I2(plusOp_carry__2_n_6),
        .I3(DDR3_wrt_rdy),
        .I4(DDR3_addr[16]),
        .O(in9[16]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DDR3_addr[17]_i_1 
       (.I0(\uBunch_reg_n_0_[7] ),
        .I1(setAddr_reg_n_0),
        .I2(plusOp_carry__2_n_5),
        .I3(DDR3_wrt_rdy),
        .I4(DDR3_addr[17]),
        .O(in9[17]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DDR3_addr[18]_i_1 
       (.I0(\uBunch_reg_n_0_[8] ),
        .I1(setAddr_reg_n_0),
        .I2(plusOp_carry__2_n_4),
        .I3(DDR3_wrt_rdy),
        .I4(DDR3_addr[18]),
        .O(in9[18]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DDR3_addr[19]_i_1 
       (.I0(\uBunch_reg_n_0_[9] ),
        .I1(setAddr_reg_n_0),
        .I2(plusOp_carry__3_n_7),
        .I3(DDR3_wrt_rdy),
        .I4(DDR3_addr[19]),
        .O(in9[19]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DDR3_addr[20]_i_1 
       (.I0(\uBunch_reg_n_0_[10] ),
        .I1(setAddr_reg_n_0),
        .I2(plusOp_carry__3_n_6),
        .I3(DDR3_wrt_rdy),
        .I4(DDR3_addr[20]),
        .O(in9[20]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DDR3_addr[21]_i_1 
       (.I0(\uBunch_reg_n_0_[11] ),
        .I1(setAddr_reg_n_0),
        .I2(plusOp_carry__3_n_5),
        .I3(DDR3_wrt_rdy),
        .I4(DDR3_addr[21]),
        .O(in9[21]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DDR3_addr[22]_i_1 
       (.I0(\uBunch_reg_n_0_[12] ),
        .I1(setAddr_reg_n_0),
        .I2(plusOp_carry__3_n_4),
        .I3(DDR3_wrt_rdy),
        .I4(DDR3_addr[22]),
        .O(in9[22]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DDR3_addr[23]_i_1 
       (.I0(\uBunch_reg_n_0_[13] ),
        .I1(setAddr_reg_n_0),
        .I2(plusOp_carry__4_n_7),
        .I3(DDR3_wrt_rdy),
        .I4(DDR3_addr[23]),
        .O(in9[23]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \DDR3_addr[24]_i_1 
       (.I0(\uBunch_reg_n_0_[14] ),
        .I1(setAddr_reg_n_0),
        .I2(plusOp_carry__4_n_6),
        .I3(DDR3_wrt_rdy),
        .I4(DDR3_addr[24]),
        .O(in9[24]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \DDR3_addr[25]_i_1 
       (.I0(setAddr_reg_n_0),
        .I1(plusOp_carry__4_n_5),
        .I2(DDR3_wrt_rdy),
        .I3(DDR3_addr[25]),
        .O(in9[25]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \DDR3_addr[26]_i_1 
       (.I0(setAddr_reg_n_0),
        .I1(plusOp_carry__4_n_4),
        .I2(DDR3_wrt_rdy),
        .I3(DDR3_addr[26]),
        .O(in9[26]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \DDR3_addr[27]_i_1 
       (.I0(setAddr_reg_n_0),
        .I1(plusOp_carry__5_n_7),
        .I2(DDR3_wrt_rdy),
        .I3(DDR3_addr[27]),
        .O(in9[27]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \DDR3_addr[3]_i_1 
       (.I0(setAddr_reg_n_0),
        .I1(plusOp_carry_n_7),
        .I2(DDR3_wrt_rdy),
        .I3(DDR3_addr[3]),
        .O(in9[3]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \DDR3_addr[4]_i_1 
       (.I0(setAddr_reg_n_0),
        .I1(plusOp_carry_n_6),
        .I2(DDR3_wrt_rdy),
        .I3(DDR3_addr[4]),
        .O(in9[4]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \DDR3_addr[5]_i_1 
       (.I0(setAddr_reg_n_0),
        .I1(plusOp_carry_n_5),
        .I2(DDR3_wrt_rdy),
        .I3(DDR3_addr[5]),
        .O(in9[5]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \DDR3_addr[6]_i_1 
       (.I0(setAddr_reg_n_0),
        .I1(plusOp_carry_n_4),
        .I2(DDR3_wrt_rdy),
        .I3(DDR3_addr[6]),
        .O(in9[6]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \DDR3_addr[7]_i_1 
       (.I0(setAddr_reg_n_0),
        .I1(plusOp_carry__0_n_7),
        .I2(DDR3_wrt_rdy),
        .I3(DDR3_addr[7]),
        .O(in9[7]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \DDR3_addr[8]_i_1 
       (.I0(setAddr_reg_n_0),
        .I1(plusOp_carry__0_n_6),
        .I2(DDR3_wrt_rdy),
        .I3(DDR3_addr[8]),
        .O(in9[8]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \DDR3_addr[9]_i_1 
       (.I0(setAddr_reg_n_0),
        .I1(plusOp_carry__0_n_5),
        .I2(DDR3_wrt_rdy),
        .I3(DDR3_addr[9]),
        .O(in9[9]));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[0] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(DDR3_addr[0]),
        .Q(DDR3_addr[0]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[10] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[10]),
        .Q(DDR3_addr[10]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[11] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[11]),
        .Q(DDR3_addr[11]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[12] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[12]),
        .Q(DDR3_addr[12]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[13] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[13]),
        .Q(DDR3_addr[13]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[14] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[14]),
        .Q(DDR3_addr[14]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[15] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[15]),
        .Q(DDR3_addr[15]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[16] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[16]),
        .Q(DDR3_addr[16]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[17] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[17]),
        .Q(DDR3_addr[17]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[18] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[18]),
        .Q(DDR3_addr[18]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[19] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[19]),
        .Q(DDR3_addr[19]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[1] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(DDR3_addr[1]),
        .Q(DDR3_addr[1]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[20] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[20]),
        .Q(DDR3_addr[20]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[21] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[21]),
        .Q(DDR3_addr[21]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[22] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[22]),
        .Q(DDR3_addr[22]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[23] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[23]),
        .Q(DDR3_addr[23]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[24] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[24]),
        .Q(DDR3_addr[24]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[25] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[25]),
        .Q(DDR3_addr[25]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[26] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[26]),
        .Q(DDR3_addr[26]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[27] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[27]),
        .Q(DDR3_addr[27]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[2] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(DDR3_addr[2]),
        .Q(DDR3_addr[2]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[3] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[3]),
        .Q(DDR3_addr[3]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[4] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[4]),
        .Q(DDR3_addr[4]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[5] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[5]),
        .Q(DDR3_addr[5]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[6] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[6]),
        .Q(DDR3_addr[6]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[7] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[7]),
        .Q(DDR3_addr[7]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[8] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[8]),
        .Q(DDR3_addr[8]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_addr_reg[9] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in9[9]),
        .Q(DDR3_addr[9]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DDR3_cmd[0]_i_1 
       (.I0(DDR3_cmd[0]),
        .I1(DDR3_wrt_rdy),
        .O(\DDR3_cmd[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DDR3_cmd[1]_i_1 
       (.I0(DDR3_cmd[1]),
        .I1(DDR3_wrt_rdy),
        .O(\DDR3_cmd[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \DDR3_cmd[2]_i_1 
       (.I0(DDR3_wrt_data_reg0),
        .I1(setAddr),
        .I2(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .O(\DDR3_cmd[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \DDR3_cmd[2]_i_2 
       (.I0(setAddr),
        .I1(DDR3_wrt_data_reg0),
        .I2(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .O(\DDR3_cmd[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DDR3_cmd[2]_i_3 
       (.I0(DDR3_cmd[2]),
        .I1(DDR3_wrt_rdy),
        .O(\DDR3_cmd[2]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_cmd_reg[0] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(\DDR3_cmd[0]_i_1_n_0 ),
        .Q(DDR3_cmd[0]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_cmd_reg[1] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(\DDR3_cmd[1]_i_1_n_0 ),
        .Q(DDR3_cmd[1]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_cmd_reg[2] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(\DDR3_cmd[2]_i_3_n_0 ),
        .Q(DDR3_cmd[2]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    DDR3_en_i_1
       (.I0(DDR3_wrt_rdy),
        .I1(DDR3_en),
        .O(DDR3_en_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE DDR3_en_reg
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(DDR3_en_i_1_n_0),
        .Q(DDR3_en),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[0]_i_1 
       (.I0(DDRPage_dout[0]),
        .I1(DDR3_wrt_data[0]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[100]_i_1 
       (.I0(DDRPage_dout[100]),
        .I1(DDR3_wrt_data[100]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[100]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[101]_i_1 
       (.I0(DDRPage_dout[101]),
        .I1(DDR3_wrt_data[101]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[101]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[102]_i_1 
       (.I0(DDRPage_dout[102]),
        .I1(DDR3_wrt_data[102]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[102]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[103]_i_1 
       (.I0(DDRPage_dout[103]),
        .I1(DDR3_wrt_data[103]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[103]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[104]_i_1 
       (.I0(DDRPage_dout[104]),
        .I1(DDR3_wrt_data[104]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[104]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[105]_i_1 
       (.I0(DDRPage_dout[105]),
        .I1(DDR3_wrt_data[105]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[105]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[106]_i_1 
       (.I0(DDRPage_dout[106]),
        .I1(DDR3_wrt_data[106]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[106]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[107]_i_1 
       (.I0(DDRPage_dout[107]),
        .I1(DDR3_wrt_data[107]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[107]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[108]_i_1 
       (.I0(DDRPage_dout[108]),
        .I1(DDR3_wrt_data[108]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[108]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[109]_i_1 
       (.I0(DDRPage_dout[109]),
        .I1(DDR3_wrt_data[109]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[109]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[10]_i_1 
       (.I0(DDRPage_dout[10]),
        .I1(DDR3_wrt_data[10]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[110]_i_1 
       (.I0(DDRPage_dout[110]),
        .I1(DDR3_wrt_data[110]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[110]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[111]_i_1 
       (.I0(DDRPage_dout[111]),
        .I1(DDR3_wrt_data[111]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[111]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[112]_i_1 
       (.I0(DDRPage_dout[112]),
        .I1(DDR3_wrt_data[112]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[112]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[113]_i_1 
       (.I0(DDRPage_dout[113]),
        .I1(DDR3_wrt_data[113]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[113]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[114]_i_1 
       (.I0(DDRPage_dout[114]),
        .I1(DDR3_wrt_data[114]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[114]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[115]_i_1 
       (.I0(DDRPage_dout[115]),
        .I1(DDR3_wrt_data[115]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[115]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[116]_i_1 
       (.I0(DDRPage_dout[116]),
        .I1(DDR3_wrt_data[116]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[116]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[117]_i_1 
       (.I0(DDRPage_dout[117]),
        .I1(DDR3_wrt_data[117]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[117]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[118]_i_1 
       (.I0(DDRPage_dout[118]),
        .I1(DDR3_wrt_data[118]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[118]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[119]_i_1 
       (.I0(DDRPage_dout[119]),
        .I1(DDR3_wrt_data[119]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[119]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[11]_i_1 
       (.I0(DDRPage_dout[11]),
        .I1(DDR3_wrt_data[11]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[120]_i_1 
       (.I0(DDRPage_dout[120]),
        .I1(DDR3_wrt_data[120]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[120]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[121]_i_1 
       (.I0(DDRPage_dout[121]),
        .I1(DDR3_wrt_data[121]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[121]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[122]_i_1 
       (.I0(DDRPage_dout[122]),
        .I1(DDR3_wrt_data[122]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[122]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[123]_i_1 
       (.I0(DDRPage_dout[123]),
        .I1(DDR3_wrt_data[123]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[123]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[124]_i_1 
       (.I0(DDRPage_dout[124]),
        .I1(DDR3_wrt_data[124]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[124]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[125]_i_1 
       (.I0(DDRPage_dout[125]),
        .I1(DDR3_wrt_data[125]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[125]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[126]_i_1 
       (.I0(DDRPage_dout[126]),
        .I1(DDR3_wrt_data[126]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[126]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[127]_i_1 
       (.I0(DDRPage_dout[127]),
        .I1(DDR3_wrt_data[127]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[127]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[12]_i_1 
       (.I0(DDRPage_dout[12]),
        .I1(DDR3_wrt_data[12]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[13]_i_1 
       (.I0(DDRPage_dout[13]),
        .I1(DDR3_wrt_data[13]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[14]_i_1 
       (.I0(DDRPage_dout[14]),
        .I1(DDR3_wrt_data[14]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[15]_i_1 
       (.I0(DDRPage_dout[15]),
        .I1(DDR3_wrt_data[15]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[16]_i_1 
       (.I0(DDRPage_dout[16]),
        .I1(DDR3_wrt_data[16]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[16]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[17]_i_1 
       (.I0(DDRPage_dout[17]),
        .I1(DDR3_wrt_data[17]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[17]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[18]_i_1 
       (.I0(DDRPage_dout[18]),
        .I1(DDR3_wrt_data[18]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[18]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[19]_i_1 
       (.I0(DDRPage_dout[19]),
        .I1(DDR3_wrt_data[19]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[19]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[1]_i_1 
       (.I0(DDRPage_dout[1]),
        .I1(DDR3_wrt_data[1]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[20]_i_1 
       (.I0(DDRPage_dout[20]),
        .I1(DDR3_wrt_data[20]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[20]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[21]_i_1 
       (.I0(DDRPage_dout[21]),
        .I1(DDR3_wrt_data[21]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[21]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[22]_i_1 
       (.I0(DDRPage_dout[22]),
        .I1(DDR3_wrt_data[22]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[22]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[23]_i_1 
       (.I0(DDRPage_dout[23]),
        .I1(DDR3_wrt_data[23]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[23]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[24]_i_1 
       (.I0(DDRPage_dout[24]),
        .I1(DDR3_wrt_data[24]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[24]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[25]_i_1 
       (.I0(DDRPage_dout[25]),
        .I1(DDR3_wrt_data[25]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[25]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[26]_i_1 
       (.I0(DDRPage_dout[26]),
        .I1(DDR3_wrt_data[26]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[26]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[27]_i_1 
       (.I0(DDRPage_dout[27]),
        .I1(DDR3_wrt_data[27]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[27]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[28]_i_1 
       (.I0(DDRPage_dout[28]),
        .I1(DDR3_wrt_data[28]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[28]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[29]_i_1 
       (.I0(DDRPage_dout[29]),
        .I1(DDR3_wrt_data[29]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[29]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[2]_i_1 
       (.I0(DDRPage_dout[2]),
        .I1(DDR3_wrt_data[2]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[30]_i_1 
       (.I0(DDRPage_dout[30]),
        .I1(DDR3_wrt_data[30]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[30]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[31]_i_1 
       (.I0(DDRPage_dout[31]),
        .I1(DDR3_wrt_data[31]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[31]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[32]_i_1 
       (.I0(DDRPage_dout[32]),
        .I1(DDR3_wrt_data[32]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[32]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[33]_i_1 
       (.I0(DDRPage_dout[33]),
        .I1(DDR3_wrt_data[33]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[33]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[34]_i_1 
       (.I0(DDRPage_dout[34]),
        .I1(DDR3_wrt_data[34]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[34]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[35]_i_1 
       (.I0(DDRPage_dout[35]),
        .I1(DDR3_wrt_data[35]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[35]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[36]_i_1 
       (.I0(DDRPage_dout[36]),
        .I1(DDR3_wrt_data[36]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[36]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[37]_i_1 
       (.I0(DDRPage_dout[37]),
        .I1(DDR3_wrt_data[37]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[37]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[38]_i_1 
       (.I0(DDRPage_dout[38]),
        .I1(DDR3_wrt_data[38]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[38]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[39]_i_1 
       (.I0(DDRPage_dout[39]),
        .I1(DDR3_wrt_data[39]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[39]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[3]_i_1 
       (.I0(DDRPage_dout[3]),
        .I1(DDR3_wrt_data[3]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[40]_i_1 
       (.I0(DDRPage_dout[40]),
        .I1(DDR3_wrt_data[40]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[40]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[41]_i_1 
       (.I0(DDRPage_dout[41]),
        .I1(DDR3_wrt_data[41]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[41]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[42]_i_1 
       (.I0(DDRPage_dout[42]),
        .I1(DDR3_wrt_data[42]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[42]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[43]_i_1 
       (.I0(DDRPage_dout[43]),
        .I1(DDR3_wrt_data[43]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[43]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[44]_i_1 
       (.I0(DDRPage_dout[44]),
        .I1(DDR3_wrt_data[44]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[44]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[45]_i_1 
       (.I0(DDRPage_dout[45]),
        .I1(DDR3_wrt_data[45]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[45]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[46]_i_1 
       (.I0(DDRPage_dout[46]),
        .I1(DDR3_wrt_data[46]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[46]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[47]_i_1 
       (.I0(DDRPage_dout[47]),
        .I1(DDR3_wrt_data[47]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[47]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[48]_i_1 
       (.I0(DDRPage_dout[48]),
        .I1(DDR3_wrt_data[48]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[48]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[49]_i_1 
       (.I0(DDRPage_dout[49]),
        .I1(DDR3_wrt_data[49]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[49]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[4]_i_1 
       (.I0(DDRPage_dout[4]),
        .I1(DDR3_wrt_data[4]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[50]_i_1 
       (.I0(DDRPage_dout[50]),
        .I1(DDR3_wrt_data[50]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[50]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[51]_i_1 
       (.I0(DDRPage_dout[51]),
        .I1(DDR3_wrt_data[51]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[51]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[52]_i_1 
       (.I0(DDRPage_dout[52]),
        .I1(DDR3_wrt_data[52]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[52]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[53]_i_1 
       (.I0(DDRPage_dout[53]),
        .I1(DDR3_wrt_data[53]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[53]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[54]_i_1 
       (.I0(DDRPage_dout[54]),
        .I1(DDR3_wrt_data[54]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[54]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[55]_i_1 
       (.I0(DDRPage_dout[55]),
        .I1(DDR3_wrt_data[55]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[55]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[56]_i_1 
       (.I0(DDRPage_dout[56]),
        .I1(DDR3_wrt_data[56]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[56]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[57]_i_1 
       (.I0(DDRPage_dout[57]),
        .I1(DDR3_wrt_data[57]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[57]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[58]_i_1 
       (.I0(DDRPage_dout[58]),
        .I1(DDR3_wrt_data[58]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[58]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[59]_i_1 
       (.I0(DDRPage_dout[59]),
        .I1(DDR3_wrt_data[59]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[59]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[5]_i_1 
       (.I0(DDRPage_dout[5]),
        .I1(DDR3_wrt_data[5]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[60]_i_1 
       (.I0(DDRPage_dout[60]),
        .I1(DDR3_wrt_data[60]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[60]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[61]_i_1 
       (.I0(DDRPage_dout[61]),
        .I1(DDR3_wrt_data[61]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[61]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[62]_i_1 
       (.I0(DDRPage_dout[62]),
        .I1(DDR3_wrt_data[62]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[62]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[63]_i_1 
       (.I0(DDRPage_dout[63]),
        .I1(DDR3_wrt_data[63]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[63]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[64]_i_1 
       (.I0(DDRPage_dout[64]),
        .I1(DDR3_wrt_data[64]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[64]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[65]_i_1 
       (.I0(DDRPage_dout[65]),
        .I1(DDR3_wrt_data[65]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[65]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[66]_i_1 
       (.I0(DDRPage_dout[66]),
        .I1(DDR3_wrt_data[66]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[66]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[67]_i_1 
       (.I0(DDRPage_dout[67]),
        .I1(DDR3_wrt_data[67]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[67]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[68]_i_1 
       (.I0(DDRPage_dout[68]),
        .I1(DDR3_wrt_data[68]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[68]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[69]_i_1 
       (.I0(DDRPage_dout[69]),
        .I1(DDR3_wrt_data[69]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[69]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[6]_i_1 
       (.I0(DDRPage_dout[6]),
        .I1(DDR3_wrt_data[6]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[70]_i_1 
       (.I0(DDRPage_dout[70]),
        .I1(DDR3_wrt_data[70]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[70]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[71]_i_1 
       (.I0(DDRPage_dout[71]),
        .I1(DDR3_wrt_data[71]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[71]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[72]_i_1 
       (.I0(DDRPage_dout[72]),
        .I1(DDR3_wrt_data[72]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[72]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[73]_i_1 
       (.I0(DDRPage_dout[73]),
        .I1(DDR3_wrt_data[73]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[73]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[74]_i_1 
       (.I0(DDRPage_dout[74]),
        .I1(DDR3_wrt_data[74]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[74]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[75]_i_1 
       (.I0(DDRPage_dout[75]),
        .I1(DDR3_wrt_data[75]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[75]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[76]_i_1 
       (.I0(DDRPage_dout[76]),
        .I1(DDR3_wrt_data[76]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[76]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[77]_i_1 
       (.I0(DDRPage_dout[77]),
        .I1(DDR3_wrt_data[77]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[77]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[78]_i_1 
       (.I0(DDRPage_dout[78]),
        .I1(DDR3_wrt_data[78]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[78]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[79]_i_1 
       (.I0(DDRPage_dout[79]),
        .I1(DDR3_wrt_data[79]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[79]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[7]_i_1 
       (.I0(DDRPage_dout[7]),
        .I1(DDR3_wrt_data[7]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[80]_i_1 
       (.I0(DDRPage_dout[80]),
        .I1(DDR3_wrt_data[80]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[80]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[81]_i_1 
       (.I0(DDRPage_dout[81]),
        .I1(DDR3_wrt_data[81]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[81]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[82]_i_1 
       (.I0(DDRPage_dout[82]),
        .I1(DDR3_wrt_data[82]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[82]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[83]_i_1 
       (.I0(DDRPage_dout[83]),
        .I1(DDR3_wrt_data[83]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[83]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[84]_i_1 
       (.I0(DDRPage_dout[84]),
        .I1(DDR3_wrt_data[84]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[84]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[85]_i_1 
       (.I0(DDRPage_dout[85]),
        .I1(DDR3_wrt_data[85]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[85]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[86]_i_1 
       (.I0(DDRPage_dout[86]),
        .I1(DDR3_wrt_data[86]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[86]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[87]_i_1 
       (.I0(DDRPage_dout[87]),
        .I1(DDR3_wrt_data[87]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[87]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[88]_i_1 
       (.I0(DDRPage_dout[88]),
        .I1(DDR3_wrt_data[88]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[88]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[89]_i_1 
       (.I0(DDRPage_dout[89]),
        .I1(DDR3_wrt_data[89]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[89]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[8]_i_1 
       (.I0(DDRPage_dout[8]),
        .I1(DDR3_wrt_data[8]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[90]_i_1 
       (.I0(DDRPage_dout[90]),
        .I1(DDR3_wrt_data[90]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[90]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[91]_i_1 
       (.I0(DDRPage_dout[91]),
        .I1(DDR3_wrt_data[91]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[91]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[92]_i_1 
       (.I0(DDRPage_dout[92]),
        .I1(DDR3_wrt_data[92]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[92]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[93]_i_1 
       (.I0(DDRPage_dout[93]),
        .I1(DDR3_wrt_data[93]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[93]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[94]_i_1 
       (.I0(DDRPage_dout[94]),
        .I1(DDR3_wrt_data[94]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[94]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[95]_i_1 
       (.I0(DDRPage_dout[95]),
        .I1(DDR3_wrt_data[95]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[95]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[96]_i_1 
       (.I0(DDRPage_dout[96]),
        .I1(DDR3_wrt_data[96]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[96]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[97]_i_1 
       (.I0(DDRPage_dout[97]),
        .I1(DDR3_wrt_data[97]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[97]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[98]_i_1 
       (.I0(DDRPage_dout[98]),
        .I1(DDR3_wrt_data[98]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[98]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[99]_i_1 
       (.I0(DDRPage_dout[99]),
        .I1(DDR3_wrt_data[99]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[99]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DDR3_wrt_data[9]_i_1 
       (.I0(DDRPage_dout[9]),
        .I1(DDR3_wrt_data[9]),
        .I2(DDR3_wrt_rdy),
        .O(p_0_in__0[9]));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[0] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[0]),
        .Q(DDR3_wrt_data[0]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[100] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[100]),
        .Q(DDR3_wrt_data[100]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[101] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[101]),
        .Q(DDR3_wrt_data[101]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[102] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[102]),
        .Q(DDR3_wrt_data[102]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[103] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[103]),
        .Q(DDR3_wrt_data[103]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[104] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[104]),
        .Q(DDR3_wrt_data[104]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[105] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[105]),
        .Q(DDR3_wrt_data[105]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[106] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[106]),
        .Q(DDR3_wrt_data[106]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[107] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[107]),
        .Q(DDR3_wrt_data[107]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[108] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[108]),
        .Q(DDR3_wrt_data[108]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[109] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[109]),
        .Q(DDR3_wrt_data[109]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[10] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[10]),
        .Q(DDR3_wrt_data[10]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[110] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[110]),
        .Q(DDR3_wrt_data[110]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[111] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[111]),
        .Q(DDR3_wrt_data[111]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[112] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[112]),
        .Q(DDR3_wrt_data[112]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[113] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[113]),
        .Q(DDR3_wrt_data[113]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[114] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[114]),
        .Q(DDR3_wrt_data[114]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[115] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[115]),
        .Q(DDR3_wrt_data[115]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[116] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[116]),
        .Q(DDR3_wrt_data[116]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[117] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[117]),
        .Q(DDR3_wrt_data[117]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[118] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[118]),
        .Q(DDR3_wrt_data[118]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[119] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[119]),
        .Q(DDR3_wrt_data[119]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[11] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[11]),
        .Q(DDR3_wrt_data[11]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[120] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[120]),
        .Q(DDR3_wrt_data[120]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[121] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[121]),
        .Q(DDR3_wrt_data[121]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[122] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[122]),
        .Q(DDR3_wrt_data[122]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[123] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[123]),
        .Q(DDR3_wrt_data[123]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[124] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[124]),
        .Q(DDR3_wrt_data[124]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[125] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[125]),
        .Q(DDR3_wrt_data[125]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[126] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[126]),
        .Q(DDR3_wrt_data[126]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[127] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[127]),
        .Q(DDR3_wrt_data[127]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[12] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[12]),
        .Q(DDR3_wrt_data[12]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[13] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[13]),
        .Q(DDR3_wrt_data[13]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[14] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[14]),
        .Q(DDR3_wrt_data[14]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[15] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[15]),
        .Q(DDR3_wrt_data[15]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[16] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[16]),
        .Q(DDR3_wrt_data[16]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[17] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[17]),
        .Q(DDR3_wrt_data[17]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[18] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[18]),
        .Q(DDR3_wrt_data[18]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[19] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[19]),
        .Q(DDR3_wrt_data[19]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[1] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[1]),
        .Q(DDR3_wrt_data[1]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[20] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[20]),
        .Q(DDR3_wrt_data[20]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[21] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[21]),
        .Q(DDR3_wrt_data[21]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[22] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[22]),
        .Q(DDR3_wrt_data[22]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[23] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[23]),
        .Q(DDR3_wrt_data[23]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[24] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[24]),
        .Q(DDR3_wrt_data[24]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[25] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[25]),
        .Q(DDR3_wrt_data[25]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[26] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[26]),
        .Q(DDR3_wrt_data[26]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[27] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[27]),
        .Q(DDR3_wrt_data[27]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[28] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[28]),
        .Q(DDR3_wrt_data[28]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[29] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[29]),
        .Q(DDR3_wrt_data[29]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[2] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[2]),
        .Q(DDR3_wrt_data[2]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[30] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[30]),
        .Q(DDR3_wrt_data[30]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[31] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[31]),
        .Q(DDR3_wrt_data[31]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[32] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[32]),
        .Q(DDR3_wrt_data[32]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[33] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[33]),
        .Q(DDR3_wrt_data[33]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[34] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[34]),
        .Q(DDR3_wrt_data[34]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[35] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[35]),
        .Q(DDR3_wrt_data[35]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[36] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[36]),
        .Q(DDR3_wrt_data[36]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[37] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[37]),
        .Q(DDR3_wrt_data[37]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[38] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[38]),
        .Q(DDR3_wrt_data[38]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[39] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[39]),
        .Q(DDR3_wrt_data[39]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[3] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[3]),
        .Q(DDR3_wrt_data[3]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[40] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[40]),
        .Q(DDR3_wrt_data[40]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[41] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[41]),
        .Q(DDR3_wrt_data[41]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[42] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[42]),
        .Q(DDR3_wrt_data[42]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[43] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[43]),
        .Q(DDR3_wrt_data[43]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[44] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[44]),
        .Q(DDR3_wrt_data[44]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[45] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[45]),
        .Q(DDR3_wrt_data[45]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[46] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[46]),
        .Q(DDR3_wrt_data[46]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[47] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[47]),
        .Q(DDR3_wrt_data[47]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[48] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[48]),
        .Q(DDR3_wrt_data[48]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[49] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[49]),
        .Q(DDR3_wrt_data[49]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[4] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[4]),
        .Q(DDR3_wrt_data[4]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[50] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[50]),
        .Q(DDR3_wrt_data[50]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[51] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[51]),
        .Q(DDR3_wrt_data[51]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[52] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[52]),
        .Q(DDR3_wrt_data[52]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[53] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[53]),
        .Q(DDR3_wrt_data[53]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[54] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[54]),
        .Q(DDR3_wrt_data[54]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[55] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[55]),
        .Q(DDR3_wrt_data[55]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[56] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[56]),
        .Q(DDR3_wrt_data[56]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[57] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[57]),
        .Q(DDR3_wrt_data[57]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[58] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[58]),
        .Q(DDR3_wrt_data[58]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[59] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[59]),
        .Q(DDR3_wrt_data[59]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[5] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[5]),
        .Q(DDR3_wrt_data[5]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[60] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[60]),
        .Q(DDR3_wrt_data[60]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[61] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[61]),
        .Q(DDR3_wrt_data[61]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[62] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[62]),
        .Q(DDR3_wrt_data[62]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[63] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[63]),
        .Q(DDR3_wrt_data[63]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[64] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[64]),
        .Q(DDR3_wrt_data[64]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[65] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[65]),
        .Q(DDR3_wrt_data[65]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[66] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[66]),
        .Q(DDR3_wrt_data[66]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[67] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[67]),
        .Q(DDR3_wrt_data[67]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[68] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[68]),
        .Q(DDR3_wrt_data[68]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[69] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[69]),
        .Q(DDR3_wrt_data[69]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[6] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[6]),
        .Q(DDR3_wrt_data[6]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[70] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[70]),
        .Q(DDR3_wrt_data[70]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[71] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[71]),
        .Q(DDR3_wrt_data[71]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[72] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[72]),
        .Q(DDR3_wrt_data[72]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[73] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[73]),
        .Q(DDR3_wrt_data[73]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[74] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[74]),
        .Q(DDR3_wrt_data[74]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[75] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[75]),
        .Q(DDR3_wrt_data[75]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[76] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[76]),
        .Q(DDR3_wrt_data[76]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[77] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[77]),
        .Q(DDR3_wrt_data[77]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[78] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[78]),
        .Q(DDR3_wrt_data[78]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[79] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[79]),
        .Q(DDR3_wrt_data[79]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[7] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[7]),
        .Q(DDR3_wrt_data[7]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[80] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[80]),
        .Q(DDR3_wrt_data[80]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[81] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[81]),
        .Q(DDR3_wrt_data[81]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[82] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[82]),
        .Q(DDR3_wrt_data[82]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[83] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[83]),
        .Q(DDR3_wrt_data[83]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[84] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[84]),
        .Q(DDR3_wrt_data[84]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[85] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[85]),
        .Q(DDR3_wrt_data[85]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[86] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[86]),
        .Q(DDR3_wrt_data[86]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[87] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[87]),
        .Q(DDR3_wrt_data[87]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[88] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[88]),
        .Q(DDR3_wrt_data[88]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[89] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[89]),
        .Q(DDR3_wrt_data[89]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[8] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[8]),
        .Q(DDR3_wrt_data[8]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[90] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[90]),
        .Q(DDR3_wrt_data[90]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[91] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[91]),
        .Q(DDR3_wrt_data[91]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[92] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[92]),
        .Q(DDR3_wrt_data[92]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[93] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[93]),
        .Q(DDR3_wrt_data[93]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[94] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[94]),
        .Q(DDR3_wrt_data[94]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[95] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[95]),
        .Q(DDR3_wrt_data[95]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[96] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[96]),
        .Q(DDR3_wrt_data[96]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[97] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[97]),
        .Q(DDR3_wrt_data[97]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[98] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[98]),
        .Q(DDR3_wrt_data[98]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[99] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[99]),
        .Q(DDR3_wrt_data[99]),
        .R(DDR3_wrt_data_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_data_reg[9] 
       (.C(rd_clk),
        .CE(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .D(p_0_in__0[9]),
        .Q(DDR3_wrt_data[9]),
        .R(DDR3_wrt_data_reg0));
  LUT2 #(
    .INIT(4'hE)) 
    DDR3_wrt_en_i_1
       (.I0(DDR3_wrt_rdy),
        .I1(DDR3_wrt_en),
        .O(DDR3_wrt_en_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE DDR3_wrt_en_reg
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(DDR3_wrt_en_i_1_n_0),
        .Q(DDR3_wrt_en),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    DDR3_wrt_end_i_1
       (.I0(DDR3_wrt_rdy),
        .I1(DDR3_wrt_end),
        .O(DDR3_wrt_end_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE DDR3_wrt_end_reg
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(DDR3_wrt_end_i_1_n_0),
        .Q(DDR3_wrt_end),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DDR3_wrt_mask[0]_i_1 
       (.I0(DDR3_wrt_mask[0]),
        .I1(DDR3_wrt_rdy),
        .O(in12[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \DDR3_wrt_mask[10]_i_1 
       (.I0(DDR3_wrt_mask[10]),
        .I1(DDR3_wrt_rdy),
        .O(in12[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \DDR3_wrt_mask[11]_i_1 
       (.I0(DDR3_wrt_mask[11]),
        .I1(DDR3_wrt_rdy),
        .O(in12[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \DDR3_wrt_mask[12]_i_1 
       (.I0(DDR3_wrt_mask[12]),
        .I1(DDR3_wrt_rdy),
        .O(in12[12]));
  LUT2 #(
    .INIT(4'h2)) 
    \DDR3_wrt_mask[13]_i_1 
       (.I0(DDR3_wrt_mask[13]),
        .I1(DDR3_wrt_rdy),
        .O(in12[13]));
  LUT2 #(
    .INIT(4'h2)) 
    \DDR3_wrt_mask[14]_i_1 
       (.I0(DDR3_wrt_mask[14]),
        .I1(DDR3_wrt_rdy),
        .O(in12[14]));
  LUT2 #(
    .INIT(4'h2)) 
    \DDR3_wrt_mask[15]_i_1 
       (.I0(DDR3_wrt_mask[15]),
        .I1(DDR3_wrt_rdy),
        .O(in12[15]));
  LUT2 #(
    .INIT(4'h2)) 
    \DDR3_wrt_mask[1]_i_1 
       (.I0(DDR3_wrt_mask[1]),
        .I1(DDR3_wrt_rdy),
        .O(in12[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \DDR3_wrt_mask[2]_i_1 
       (.I0(DDR3_wrt_mask[2]),
        .I1(DDR3_wrt_rdy),
        .O(in12[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \DDR3_wrt_mask[3]_i_1 
       (.I0(DDR3_wrt_mask[3]),
        .I1(DDR3_wrt_rdy),
        .O(in12[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \DDR3_wrt_mask[4]_i_1 
       (.I0(DDR3_wrt_mask[4]),
        .I1(DDR3_wrt_rdy),
        .O(in12[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \DDR3_wrt_mask[5]_i_1 
       (.I0(DDR3_wrt_mask[5]),
        .I1(DDR3_wrt_rdy),
        .O(in12[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \DDR3_wrt_mask[6]_i_1 
       (.I0(DDR3_wrt_mask[6]),
        .I1(DDR3_wrt_rdy),
        .O(in12[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \DDR3_wrt_mask[7]_i_1 
       (.I0(DDR3_wrt_mask[7]),
        .I1(DDR3_wrt_rdy),
        .O(in12[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \DDR3_wrt_mask[8]_i_1 
       (.I0(DDR3_wrt_mask[8]),
        .I1(DDR3_wrt_rdy),
        .O(in12[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \DDR3_wrt_mask[9]_i_1 
       (.I0(DDR3_wrt_mask[9]),
        .I1(DDR3_wrt_rdy),
        .O(in12[9]));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_mask_reg[0] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in12[0]),
        .Q(DDR3_wrt_mask[0]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_mask_reg[10] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in12[10]),
        .Q(DDR3_wrt_mask[10]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_mask_reg[11] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in12[11]),
        .Q(DDR3_wrt_mask[11]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_mask_reg[12] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in12[12]),
        .Q(DDR3_wrt_mask[12]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_mask_reg[13] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in12[13]),
        .Q(DDR3_wrt_mask[13]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_mask_reg[14] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in12[14]),
        .Q(DDR3_wrt_mask[14]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_mask_reg[15] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in12[15]),
        .Q(DDR3_wrt_mask[15]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_mask_reg[1] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in12[1]),
        .Q(DDR3_wrt_mask[1]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_mask_reg[2] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in12[2]),
        .Q(DDR3_wrt_mask[2]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_mask_reg[3] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in12[3]),
        .Q(DDR3_wrt_mask[3]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_mask_reg[4] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in12[4]),
        .Q(DDR3_wrt_mask[4]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_mask_reg[5] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in12[5]),
        .Q(DDR3_wrt_mask[5]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_mask_reg[6] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in12[6]),
        .Q(DDR3_wrt_mask[6]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_mask_reg[7] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in12[7]),
        .Q(DDR3_wrt_mask[7]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_mask_reg[8] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in12[8]),
        .Q(DDR3_wrt_mask[8]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \DDR3_wrt_mask_reg[9] 
       (.C(rd_clk),
        .CE(\DDR3_cmd[2]_i_2_n_0 ),
        .D(in12[9]),
        .Q(DDR3_wrt_mask[9]),
        .R(\DDR3_cmd[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[0]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[0] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[100]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[100] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[100]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[101]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[101] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[101]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[102]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[102] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[102]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[103]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[103] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[103]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[104]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[104] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[104]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[105]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[105] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[105]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[106]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[106] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[106]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[107]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[107] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[107]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[108]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[108] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[108]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[109]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[109] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[109]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[10]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[10] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[110]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[110] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[110]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[111]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[111] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[111]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[112]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[112] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[112]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[113]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[113] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[113]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[114]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[114] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[114]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[115]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[115] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[115]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[116]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[116] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[116]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[117]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[117] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[117]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[118]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[118] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[118]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[119]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[119] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[119]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[11]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[11] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[120]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[120] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[120]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[121]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[121] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[121]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[122]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[122] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[122]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[123]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[123] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[123]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[124]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[124] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[124]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[125]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[125] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[125]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[126]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[126] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[126]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \DDRPage_din[127]_i_1 
       (.I0(current_state[3]),
        .O(\DDRPage_din[127]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[127]_i_2 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[127] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[127]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[12]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[12] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[13]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[13] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[14]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[14] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[15]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[15] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[16]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[16] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[17]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[17] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[18]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[18] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[19]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[19] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[1]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[1] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[20]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[20] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[21]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[21] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[22]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[22] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[23]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[23] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[24]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[24] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[25]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[25] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[26]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[26] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[27]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[27] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[28]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[28] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[29]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[29] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[2]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[2] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[30]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[30] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[31]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[31] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[32]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[32] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[33]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[33] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[34]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[34] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[35]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[35] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[36]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[36] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[37]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[37] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[38]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[38] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[39]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[39] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[39]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[3]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[3] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[40]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[40] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[40]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[41]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[41] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[41]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[42]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[42] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[42]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[43]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[43] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[43]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[44]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[44] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[44]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[45]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[45] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[45]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[46]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[46] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[46]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[47]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[47] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[47]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[48]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[48] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[48]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[49]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[49] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[49]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[4]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[4] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[50]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[50] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[50]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[51]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[51] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[51]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[52]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[52] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[52]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[53]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[53] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[53]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[54]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[54] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[54]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[55]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[55] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[55]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[56]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[56] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[56]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[57]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[57] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[57]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[58]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[58] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[58]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[59]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[59] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[59]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[5]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[5] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[60]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[60] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[60]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[61]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[61] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[61]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[62]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[62] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[62]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[63]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[63] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[63]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[64]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[64] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[64]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[65]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[65] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[65]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[66]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[66] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[66]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[67]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[67] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[67]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[68]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[68] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[68]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[69]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[69] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[69]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[6]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[6] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[70]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[70] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[70]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[71]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[71] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[71]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[72]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[72] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[72]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[73]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[73] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[73]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[74]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[74] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[74]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[75]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[75] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[75]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[76]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[76] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[76]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[77]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[77] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[77]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[78]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[78] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[78]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[79]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[79] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[79]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[7]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[7] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[80]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[80] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[80]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[81]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[81] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[81]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[82]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[82] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[82]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[83]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[83] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[83]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[84]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[84] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[84]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[85]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[85] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[85]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[86]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[86] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[86]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[87]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[87] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[87]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[88]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[88] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[88]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[89]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[89] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[89]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[8]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[8] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[90]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[90] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[90]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[91]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[91] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[91]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[92]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[92] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[92]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[93]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[93] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[93]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[94]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[94] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[94]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[95]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[95] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[95]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[96]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[96] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[96]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[97]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[97] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[97]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[98]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[98] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[98]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[99]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[99] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[99]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \DDRPage_din[9]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\EventData_reg_n_0_[9] ),
        .I4(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I5(\PageWdCnt[3]_i_4_n_0 ),
        .O(\DDRPage_din[9]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[0] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[0]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[0] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[100] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[100]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[100] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[101] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[101]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[101] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[102] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[102]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[102] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[103] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[103]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[103] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[104] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[104]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[104] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[105] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[105]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[105] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[106] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[106]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[106] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[107] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[107]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[107] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[108] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[108]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[108] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[109] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[109]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[109] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[10] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[10]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[10] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[110] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[110]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[110] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[111] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[111]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[111] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[112] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[112]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[112] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[113] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[113]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[113] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[114] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[114]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[114] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[115] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[115]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[115] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[116] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[116]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[116] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[117] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[117]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[117] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[118] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[118]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[118] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[119] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[119]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[119] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[11] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[11]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[11] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[120] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[120]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[120] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[121] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[121]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[121] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[122] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[122]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[122] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[123] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[123]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[123] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[124] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[124]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[124] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[125] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[125]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[125] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[126] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[126]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[126] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[127] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[127]_i_2_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[127] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[12] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[12]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[12] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[13] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[13]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[13] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[14] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[14]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[14] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[15] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[15]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[15] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[16] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[16]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[16] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[17] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[17]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[17] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[18] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[18]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[18] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[19] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[19]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[19] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[1] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[1]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[1] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[20] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[20]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[20] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[21] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[21]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[21] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[22] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[22]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[22] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[23] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[23]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[23] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[24] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[24]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[24] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[25] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[25]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[25] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[26] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[26]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[26] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[27] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[27]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[27] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[28] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[28]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[28] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[29] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[29]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[29] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[2] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[2]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[2] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[30] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[30]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[30] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[31] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[31]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[31] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[32] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[32]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[32] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[33] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[33]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[33] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[34] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[34]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[34] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[35] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[35]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[35] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[36] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[36]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[36] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[37] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[37]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[37] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[38] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[38]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[38] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[39] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[39]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[39] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[3] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[3]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[3] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[40] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[40]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[40] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[41] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[41]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[41] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[42] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[42]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[42] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[43] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[43]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[43] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[44] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[44]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[44] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[45] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[45]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[45] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[46] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[46]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[46] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[47] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[47]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[47] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[48] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[48]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[48] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[49] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[49]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[49] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[4] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[4]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[4] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[50] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[50]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[50] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[51] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[51]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[51] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[52] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[52]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[52] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[53] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[53]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[53] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[54] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[54]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[54] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[55] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[55]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[55] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[56] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[56]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[56] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[57] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[57]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[57] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[58] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[58]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[58] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[59] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[59]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[59] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[5] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[5]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[5] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[60] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[60]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[60] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[61] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[61]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[61] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[62] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[62]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[62] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[63] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[63]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[63] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[64] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[64]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[64] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[65] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[65]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[65] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[66] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[66]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[66] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[67] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[67]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[67] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[68] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[68]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[68] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[69] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[69]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[69] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[6] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[6]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[6] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[70] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[70]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[70] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[71] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[71]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[71] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[72] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[72]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[72] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[73] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[73]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[73] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[74] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[74]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[74] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[75] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[75]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[75] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[76] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[76]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[76] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[77] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[77]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[77] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[78] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[78]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[78] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[79] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[79]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[79] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[7] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[7]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[7] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[80] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[80]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[80] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[81] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[81]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[81] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[82] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[82]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[82] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[83] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[83]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[83] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[84] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[84]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[84] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[85] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[85]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[85] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[86] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[86]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[86] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[87] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[87]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[87] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[88] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[88]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[88] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[89] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[89]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[89] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[8] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[8]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[8] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[90] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[90]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[90] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[91] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[91]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[91] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[92] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[92]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[92] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[93] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[93]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[93] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[94] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[94]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[94] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[95] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[95]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[95] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[96] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[96]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[96] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[97] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[97]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[97] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[98] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[98]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[98] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[99] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[99]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[99] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  FDRE \DDRPage_din_reg[9] 
       (.C(SysClk),
        .CE(1'b1),
        .D(\DDRPage_din[9]_i_1_n_0 ),
        .Q(\DDRPage_din_reg_n_0_[9] ),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAFFFFEFAA0000)) 
    DDRPage_rd_en_i_1
       (.I0(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I1(\RdPageWdCnt_reg_n_0_[1] ),
        .I2(DDRPage_rd_en_i_2_n_0),
        .I3(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .I4(DDRPage_rd_en_i_3_n_0),
        .I5(DDRPage_rd_en_reg_n_0),
        .O(DDRPage_rd_en_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    DDRPage_rd_en_i_2
       (.I0(\RdPageWdCnt_reg_n_0_[3] ),
        .I1(\RdPageWdCnt_reg_n_0_[2] ),
        .O(DDRPage_rd_en_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    DDRPage_rd_en_i_3
       (.I0(DDR3_wrt_data_reg0),
        .I1(setAddr),
        .I2(DDR3_wrt_rdy),
        .I3(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .O(DDRPage_rd_en_i_3_n_0));
  FDRE DDRPage_rd_en_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(DDRPage_rd_en_i_1_n_0),
        .Q(DDRPage_rd_en_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h4444F444)) 
    DDRPage_wr_en_i_1
       (.I0(\PageWdCnt[3]_i_4_n_0 ),
        .I1(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .O(DDRPage_wr_en_i_1_n_0));
  FDRE DDRPage_wr_en_reg
       (.C(SysClk),
        .CE(1'b1),
        .D(DDRPage_wr_en_i_1_n_0),
        .Q(DDRPage_wr_en_reg_n_0),
        .R(\DDRPage_din[127]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \DDRSeqStat[0]_i_1 
       (.I0(setAddr),
        .I1(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .O(\DDRSeqStat[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \DDRSeqStat[1]_i_1 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .O(\DDRSeqStat[1]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \DDRSeqStat_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\DDRSeqStat[0]_i_1_n_0 ),
        .Q(DDRSeqStat[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \DDRSeqStat_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\DDRSeqStat[1]_i_1_n_0 ),
        .Q(DDRSeqStat[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \DDRSeqStat_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .Q(DDRSeqStat[2]),
        .R(1'b0));
  (* syn_black_box = "TRUE" *) 
  TestDDR_TestDDR_top_0_0_DDR3LController DDR_Controller
       (.app_addr(DDR3_addr),
        .app_cmd(DDR3_cmd),
        .app_en(DDR3_en),
        .app_rd_data(DDR3_rd_data),
        .app_rd_data_end(DDR3_rd_data_end),
        .app_rd_data_valid(DDR3_rd_data_valid),
        .app_rdy(DDR3_rdy),
        .app_ref_ack(NLW_DDR_Controller_app_ref_ack_UNCONNECTED),
        .app_ref_req(1'b0),
        .app_sr_active(NLW_DDR_Controller_app_sr_active_UNCONNECTED),
        .app_sr_req(1'b0),
        .app_wdf_data(DDR3_wrt_data),
        .app_wdf_end(DDR3_wrt_end),
        .app_wdf_mask(DDR3_wrt_mask),
        .app_wdf_rdy(DDR3_wrt_rdy),
        .app_wdf_wren(DDR3_wrt_en),
        .app_zq_ack(NLW_DDR_Controller_app_zq_ack_UNCONNECTED),
        .app_zq_req(1'b0),
        .clk_ref_i(Clk_200MHz),
        .ddr3_addr(DDR_ADDR),
        .ddr3_ba(BA),
        .ddr3_cas_n(CAS),
        .ddr3_ck_n(DDR_CLKN),
        .ddr3_ck_p(DDR_CLKP),
        .ddr3_cke(DDR_CKE),
        .ddr3_cs_n(CS),
        .ddr3_dm(DM),
        .ddr3_dq(DDR_DATA),
        .ddr3_dqs_n(ddr3_dqs_n),
        .ddr3_dqs_p(ddr3_dqs_p),
        .ddr3_odt(ODT),
        .ddr3_ras_n(RAS),
        .ddr3_reset_n(RESET_N),
        .ddr3_we_n(DDR_WE),
        .device_temp(NLW_DDR_Controller_device_temp_UNCONNECTED[11:0]),
        .init_calib_complete(NLW_DDR_Controller_init_calib_complete_UNCONNECTED),
        .sys_clk_i(Clk_100MHz),
        .sys_rst(sys_rst),
        .ui_clk(rd_clk),
        .ui_clk_sync_rst(NLW_DDR_Controller_ui_clk_sync_rst_UNCONNECTED));
  LUT6 #(
    .INIT(64'hF2F2F2F20000F200)) 
    \EvBuffDat[0]_i_1 
       (.I0(\EvBuffDat[0]_i_2_n_0 ),
        .I1(\EvBuffDat[6]_i_3_n_0 ),
        .I2(counter_reg[0]),
        .I3(\EvBuffDat[0]_i_3_n_0 ),
        .I4(\EvBuffDat[0]_i_4_n_0 ),
        .I5(counter_reg[7]),
        .O(\EvBuffDat[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \EvBuffDat[0]_i_2 
       (.I0(counter_reg[5]),
        .I1(counter_reg[4]),
        .I2(counter_reg[6]),
        .I3(counter_reg[1]),
        .I4(counter_reg[7]),
        .O(\EvBuffDat[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hDDDDFDDD)) 
    \EvBuffDat[0]_i_3 
       (.I0(counter_reg[6]),
        .I1(counter_reg[0]),
        .I2(counter_reg[4]),
        .I3(counter_reg[1]),
        .I4(counter_reg[5]),
        .O(\EvBuffDat[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \EvBuffDat[0]_i_4 
       (.I0(counter_reg[6]),
        .I1(\EvBuffDat[0]_i_5_n_0 ),
        .I2(counter_reg[3]),
        .I3(counter_reg[2]),
        .I4(\EvBuffDat[0]_i_6_n_0 ),
        .I5(\EvBuffDat[15]_i_7_n_0 ),
        .O(\EvBuffDat[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h6FAA)) 
    \EvBuffDat[0]_i_5 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counter_reg[5]),
        .I3(counter_reg[4]),
        .O(\EvBuffDat[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \EvBuffDat[0]_i_6 
       (.I0(counter_reg[9]),
        .I1(counter_reg[11]),
        .I2(counter_reg[10]),
        .I3(counter_reg[8]),
        .O(\EvBuffDat[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5D55000055550000)) 
    \EvBuffDat[11]_i_1 
       (.I0(\EvBuffDat[11]_i_2_n_0 ),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(counter_reg[4]),
        .I4(\EvBuffDat[15]_i_4_n_0 ),
        .I5(\EvBuffDat[11]_i_3_n_0 ),
        .O(\EvBuffDat[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFDF)) 
    \EvBuffDat[11]_i_2 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counter_reg[7]),
        .I3(counter_reg[4]),
        .I4(counter_reg[6]),
        .I5(counter_reg[5]),
        .O(\EvBuffDat[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \EvBuffDat[11]_i_3 
       (.I0(counter_reg[5]),
        .I1(counter_reg[7]),
        .O(\EvBuffDat[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \EvBuffDat[13]_i_1 
       (.I0(\EvBuffDat[13]_i_2_n_0 ),
        .I1(\EvBuffDat[15]_i_4_n_0 ),
        .O(\EvBuffDat[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEDFDF8FAF)) 
    \EvBuffDat[13]_i_2 
       (.I0(counter_reg[5]),
        .I1(counter_reg[6]),
        .I2(counter_reg[4]),
        .I3(counter_reg[1]),
        .I4(counter_reg[0]),
        .I5(counter_reg[7]),
        .O(\EvBuffDat[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000A002A0)) 
    \EvBuffDat[14]_i_1 
       (.I0(\EvBuffDat[15]_i_4_n_0 ),
        .I1(\EvBuffDat[14]_i_2_n_0 ),
        .I2(counter_reg[4]),
        .I3(counter_reg[7]),
        .I4(\EvBuffDat[14]_i_3_n_0 ),
        .I5(\EvBuffDat[14]_i_4_n_0 ),
        .O(\EvBuffDat[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \EvBuffDat[14]_i_2 
       (.I0(counter_reg[5]),
        .I1(counter_reg[6]),
        .O(\EvBuffDat[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \EvBuffDat[14]_i_3 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .O(\EvBuffDat[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \EvBuffDat[14]_i_4 
       (.I0(counter_reg[5]),
        .I1(counter_reg[6]),
        .I2(counter_reg[1]),
        .I3(counter_reg[0]),
        .O(\EvBuffDat[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \EvBuffDat[15]_i_1 
       (.I0(sw[1]),
        .I1(sw[2]),
        .I2(sw[0]),
        .I3(sw[3]),
        .I4(\EvBuffDat[15]_i_3_n_0 ),
        .O(EvBuffDat));
  LUT6 #(
    .INIT(64'hFFFEFD7DFFFFFFFF)) 
    \EvBuffDat[15]_i_2 
       (.I0(counter_reg[4]),
        .I1(counter_reg[0]),
        .I2(counter_reg[5]),
        .I3(counter_reg[6]),
        .I4(counter_reg[7]),
        .I5(\EvBuffDat[15]_i_4_n_0 ),
        .O(\EvBuffDat[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \EvBuffDat[15]_i_3 
       (.I0(\EvBuffDat[15]_i_5_n_0 ),
        .I1(\EvBuffDat[15]_i_6_n_0 ),
        .I2(\EvBuffDat[15]_i_7_n_0 ),
        .I3(\EvBuffDat[15]_i_8_n_0 ),
        .I4(counter_reg[1]),
        .I5(counter_reg[2]),
        .O(\EvBuffDat[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \EvBuffDat[15]_i_4 
       (.I0(counter_reg[10]),
        .I1(counter_reg[8]),
        .I2(\EvBuffDat[15]_i_7_n_0 ),
        .I3(\EvBuffDat[15]_i_8_n_0 ),
        .I4(counter_reg[3]),
        .I5(counter_reg[2]),
        .O(\EvBuffDat[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \EvBuffDat[15]_i_5 
       (.I0(counter_reg[6]),
        .I1(counter_reg[5]),
        .I2(counter_reg[10]),
        .I3(counter_reg[8]),
        .O(\EvBuffDat[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \EvBuffDat[15]_i_6 
       (.I0(counter_reg[3]),
        .I1(counter_reg[0]),
        .I2(counter_reg[7]),
        .I3(counter_reg[4]),
        .O(\EvBuffDat[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \EvBuffDat[15]_i_7 
       (.I0(counter_reg[15]),
        .I1(counter_reg[12]),
        .I2(counter_reg[14]),
        .I3(counter_reg[13]),
        .O(\EvBuffDat[15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \EvBuffDat[15]_i_8 
       (.I0(counter_reg[11]),
        .I1(counter_reg[9]),
        .O(\EvBuffDat[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h80FFF0F0)) 
    \EvBuffDat[1]_i_1 
       (.I0(counter_reg[7]),
        .I1(\EvBuffDat[1]_i_2_n_0 ),
        .I2(counter_reg[1]),
        .I3(\EvBuffDat[1]_i_3_n_0 ),
        .I4(\EvBuffDat[15]_i_4_n_0 ),
        .O(\EvBuffDat[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \EvBuffDat[1]_i_2 
       (.I0(counter_reg[6]),
        .I1(counter_reg[5]),
        .I2(counter_reg[0]),
        .I3(counter_reg[4]),
        .O(\EvBuffDat[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF31333F33)) 
    \EvBuffDat[1]_i_3 
       (.I0(counter_reg[5]),
        .I1(counter_reg[1]),
        .I2(counter_reg[6]),
        .I3(counter_reg[4]),
        .I4(counter_reg[0]),
        .I5(counter_reg[7]),
        .O(\EvBuffDat[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \EvBuffDat[2]_i_1 
       (.I0(counter_reg[2]),
        .I1(\EvBuffDat[2]_i_2_n_0 ),
        .I2(\EvBuffDat[2]_i_3_n_0 ),
        .O(\EvBuffDat[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFECFBEFFBFFFF)) 
    \EvBuffDat[2]_i_2 
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[5]),
        .I3(counter_reg[4]),
        .I4(counter_reg[1]),
        .I5(counter_reg[0]),
        .O(\EvBuffDat[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \EvBuffDat[2]_i_3 
       (.I0(counter_reg[3]),
        .I1(counter_reg[9]),
        .I2(counter_reg[11]),
        .I3(\EvBuffDat[15]_i_7_n_0 ),
        .I4(counter_reg[8]),
        .I5(counter_reg[10]),
        .O(\EvBuffDat[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \EvBuffDat[3]_i_1 
       (.I0(counter_reg[3]),
        .I1(\EvBuffDat[3]_i_2_n_0 ),
        .I2(\EvBuffDat[3]_i_3_n_0 ),
        .I3(\EvBuffDat[3]_i_4_n_0 ),
        .I4(\EvBuffDat[3]_i_5_n_0 ),
        .O(\EvBuffDat[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \EvBuffDat[3]_i_2 
       (.I0(counter_reg[10]),
        .I1(counter_reg[8]),
        .I2(\EvBuffDat[15]_i_7_n_0 ),
        .I3(counter_reg[11]),
        .I4(counter_reg[9]),
        .O(\EvBuffDat[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hA22A)) 
    \EvBuffDat[3]_i_3 
       (.I0(counter_reg[5]),
        .I1(counter_reg[4]),
        .I2(counter_reg[0]),
        .I3(counter_reg[1]),
        .O(\EvBuffDat[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFDFFFDFF)) 
    \EvBuffDat[3]_i_4 
       (.I0(counter_reg[7]),
        .I1(counter_reg[5]),
        .I2(counter_reg[6]),
        .I3(counter_reg[1]),
        .I4(counter_reg[0]),
        .I5(counter_reg[3]),
        .O(\EvBuffDat[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFCCCFEFFFECF)) 
    \EvBuffDat[3]_i_5 
       (.I0(\EvBuffDat[14]_i_3_n_0 ),
        .I1(counter_reg[2]),
        .I2(counter_reg[7]),
        .I3(counter_reg[4]),
        .I4(counter_reg[6]),
        .I5(counter_reg[5]),
        .O(\EvBuffDat[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \EvBuffDat[4]_i_1 
       (.I0(\EvBuffDat[4]_i_2_n_0 ),
        .I1(\EvBuffDat[15]_i_4_n_0 ),
        .I2(counter_reg[4]),
        .O(\EvBuffDat[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01E600B200)) 
    \EvBuffDat[4]_i_2 
       (.I0(counter_reg[5]),
        .I1(counter_reg[1]),
        .I2(counter_reg[6]),
        .I3(counter_reg[4]),
        .I4(counter_reg[0]),
        .I5(counter_reg[7]),
        .O(\EvBuffDat[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF2F2F200F2F2F2F2)) 
    \EvBuffDat[5]_i_1 
       (.I0(\EvBuffDat[5]_i_2_n_0 ),
        .I1(\EvBuffDat[6]_i_3_n_0 ),
        .I2(counter_reg[5]),
        .I3(counter_reg[7]),
        .I4(\EvBuffDat[5]_i_3_n_0 ),
        .I5(\EvBuffDat[15]_i_4_n_0 ),
        .O(\EvBuffDat[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000430)) 
    \EvBuffDat[5]_i_2 
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[4]),
        .I3(counter_reg[0]),
        .I4(counter_reg[1]),
        .O(\EvBuffDat[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \EvBuffDat[5]_i_3 
       (.I0(counter_reg[0]),
        .I1(counter_reg[6]),
        .I2(counter_reg[5]),
        .I3(counter_reg[4]),
        .O(\EvBuffDat[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF4FF44004400)) 
    \EvBuffDat[6]_i_1 
       (.I0(\EvBuffDat[6]_i_2_n_0 ),
        .I1(\EvBuffDat[15]_i_4_n_0 ),
        .I2(\EvBuffDat[6]_i_3_n_0 ),
        .I3(\EvBuffDat[11]_i_3_n_0 ),
        .I4(\EvBuffDat[6]_i_4_n_0 ),
        .I5(counter_reg[6]),
        .O(\EvBuffDat[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \EvBuffDat[6]_i_2 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counter_reg[4]),
        .O(\EvBuffDat[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \EvBuffDat[6]_i_3 
       (.I0(counter_reg[3]),
        .I1(counter_reg[2]),
        .I2(counter_reg[9]),
        .I3(counter_reg[11]),
        .I4(\EvBuffDat[6]_i_5_n_0 ),
        .I5(\EvBuffDat[15]_i_7_n_0 ),
        .O(\EvBuffDat[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \EvBuffDat[6]_i_4 
       (.I0(counter_reg[0]),
        .I1(counter_reg[4]),
        .O(\EvBuffDat[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \EvBuffDat[6]_i_5 
       (.I0(counter_reg[8]),
        .I1(counter_reg[10]),
        .O(\EvBuffDat[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00FE00FF00)) 
    \EvBuffDat[7]_i_1 
       (.I0(counter_reg[4]),
        .I1(counter_reg[0]),
        .I2(\EvBuffDat[14]_i_2_n_0 ),
        .I3(counter_reg[7]),
        .I4(\EvBuffDat[15]_i_4_n_0 ),
        .I5(\EvBuffDat[7]_i_2_n_0 ),
        .O(\EvBuffDat[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00200820)) 
    \EvBuffDat[7]_i_2 
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .I2(counter_reg[0]),
        .I3(counter_reg[1]),
        .I4(counter_reg[6]),
        .O(\EvBuffDat[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \EvBuffDat[8]_i_1 
       (.I0(counter_reg[5]),
        .I1(counter_reg[7]),
        .I2(\EvBuffDat[15]_i_4_n_0 ),
        .I3(counter_reg[4]),
        .I4(counter_reg[1]),
        .I5(counter_reg[0]),
        .O(\EvBuffDat[8]_i_1_n_0 ));
  FDCE \EvBuffDat_reg[0] 
       (.C(SysClk),
        .CE(EvBuffDat),
        .CLR(EventBuff_i_1_n_0),
        .D(\EvBuffDat[0]_i_1_n_0 ),
        .Q(din[0]));
  FDCE \EvBuffDat_reg[11] 
       (.C(SysClk),
        .CE(EvBuffDat),
        .CLR(EventBuff_i_1_n_0),
        .D(\EvBuffDat[11]_i_1_n_0 ),
        .Q(din[11]));
  FDCE \EvBuffDat_reg[13] 
       (.C(SysClk),
        .CE(EvBuffDat),
        .CLR(EventBuff_i_1_n_0),
        .D(\EvBuffDat[13]_i_1_n_0 ),
        .Q(din[13]));
  FDCE \EvBuffDat_reg[14] 
       (.C(SysClk),
        .CE(EvBuffDat),
        .CLR(EventBuff_i_1_n_0),
        .D(\EvBuffDat[14]_i_1_n_0 ),
        .Q(din[14]));
  FDCE \EvBuffDat_reg[15] 
       (.C(SysClk),
        .CE(EvBuffDat),
        .CLR(EventBuff_i_1_n_0),
        .D(\EvBuffDat[15]_i_2_n_0 ),
        .Q(din[15]));
  FDCE \EvBuffDat_reg[1] 
       (.C(SysClk),
        .CE(EvBuffDat),
        .CLR(EventBuff_i_1_n_0),
        .D(\EvBuffDat[1]_i_1_n_0 ),
        .Q(din[1]));
  FDCE \EvBuffDat_reg[2] 
       (.C(SysClk),
        .CE(EvBuffDat),
        .CLR(EventBuff_i_1_n_0),
        .D(\EvBuffDat[2]_i_1_n_0 ),
        .Q(din[2]));
  FDCE \EvBuffDat_reg[3] 
       (.C(SysClk),
        .CE(EvBuffDat),
        .CLR(EventBuff_i_1_n_0),
        .D(\EvBuffDat[3]_i_1_n_0 ),
        .Q(din[3]));
  FDCE \EvBuffDat_reg[4] 
       (.C(SysClk),
        .CE(EvBuffDat),
        .CLR(EventBuff_i_1_n_0),
        .D(\EvBuffDat[4]_i_1_n_0 ),
        .Q(din[4]));
  FDCE \EvBuffDat_reg[5] 
       (.C(SysClk),
        .CE(EvBuffDat),
        .CLR(EventBuff_i_1_n_0),
        .D(\EvBuffDat[5]_i_1_n_0 ),
        .Q(din[5]));
  FDCE \EvBuffDat_reg[6] 
       (.C(SysClk),
        .CE(EvBuffDat),
        .CLR(EventBuff_i_1_n_0),
        .D(\EvBuffDat[6]_i_1_n_0 ),
        .Q(din[6]));
  FDCE \EvBuffDat_reg[7] 
       (.C(SysClk),
        .CE(EvBuffDat),
        .CLR(EventBuff_i_1_n_0),
        .D(\EvBuffDat[7]_i_1_n_0 ),
        .Q(din[7]));
  FDCE \EvBuffDat_reg[8] 
       (.C(SysClk),
        .CE(EvBuffDat),
        .CLR(EventBuff_i_1_n_0),
        .D(\EvBuffDat[8]_i_1_n_0 ),
        .Q(din[8]));
  LUT6 #(
    .INIT(64'h00FFC6C60000C6C6)) 
    EvBuffRd_i_1
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(\PageWdCnt[3]_i_4_n_0 ),
        .I4(current_state[3]),
        .I5(rd_en),
        .O(EvBuffRd_i_1_n_0));
  FDRE EvBuffRd_reg
       (.C(SysClk),
        .CE(1'b1),
        .D(EvBuffRd_i_1_n_0),
        .Q(rd_en),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFD88)) 
    EvBuffWrt_i_1
       (.I0(eqOp2_in),
        .I1(eqOp),
        .I2(\EvBuffDat[15]_i_3_n_0 ),
        .I3(wr_en),
        .O(EvBuffWrt_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    EvBuffWrt_i_2
       (.I0(\EvBuffDat[15]_i_7_n_0 ),
        .I1(EvBuffWrt_i_3_n_0),
        .I2(\EvBuffDat[6]_i_4_n_0 ),
        .I3(counter_reg[7]),
        .I4(counter_reg[3]),
        .I5(\EvBuffDat[15]_i_5_n_0 ),
        .O(eqOp));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    EvBuffWrt_i_3
       (.I0(counter_reg[9]),
        .I1(counter_reg[11]),
        .I2(counter_reg[1]),
        .I3(counter_reg[2]),
        .O(EvBuffWrt_i_3_n_0));
  FDCE EvBuffWrt_reg
       (.C(SysClk),
        .CE(1'b1),
        .CLR(EventBuff_i_1_n_0),
        .D(EvBuffWrt_i_1_n_0),
        .Q(wr_en));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
  TestDDR_TestDDR_top_0_0_SCFIFO_1Kx16 EventBuff
       (.clk(SysClk),
        .data_count(EvBuffWdsUsed),
        .din({din[15:13],din[14],din[11],din[14],din[11],din[8:0]}),
        .dout(EvBuffOut),
        .empty(empty),
        .full(NLW_EventBuff_full_UNCONNECTED),
        .rd_en(rd_en),
        .srst(EventBuff_i_1_n_0),
        .wr_en(wr_en));
  LUT1 #(
    .INIT(2'h1)) 
    EventBuff_i_1
       (.I0(CpldRst),
        .O(EventBuff_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \EventData[100]_i_1 
       (.I0(EvBuffOut[4]),
        .I1(current_state[0]),
        .O(\EventData[100]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \EventData[101]_i_1 
       (.I0(EvBuffOut[5]),
        .I1(current_state[0]),
        .O(\EventData[101]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \EventData[102]_i_1 
       (.I0(EvBuffOut[6]),
        .I1(current_state[0]),
        .O(\EventData[102]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \EventData[103]_i_1 
       (.I0(EvBuffOut[7]),
        .I1(current_state[0]),
        .O(\EventData[103]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \EventData[104]_i_1 
       (.I0(EvBuffOut[8]),
        .I1(current_state[0]),
        .O(\EventData[104]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \EventData[105]_i_1 
       (.I0(EvBuffOut[9]),
        .I1(current_state[0]),
        .O(\EventData[105]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \EventData[106]_i_1 
       (.I0(EvBuffOut[10]),
        .I1(current_state[0]),
        .O(\EventData[106]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \EventData[107]_i_1 
       (.I0(EvBuffOut[11]),
        .I1(current_state[0]),
        .O(\EventData[107]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \EventData[108]_i_1 
       (.I0(EvBuffOut[12]),
        .I1(current_state[0]),
        .O(\EventData[108]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \EventData[109]_i_1 
       (.I0(EvBuffOut[13]),
        .I1(current_state[0]),
        .O(\EventData[109]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \EventData[110]_i_1 
       (.I0(EvBuffOut[14]),
        .I1(current_state[0]),
        .O(\EventData[110]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0884)) 
    \EventData[111]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .O(EventData[111]));
  LUT2 #(
    .INIT(4'h2)) 
    \EventData[111]_i_2 
       (.I0(EvBuffOut[15]),
        .I1(current_state[0]),
        .O(\EventData[111]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0840)) 
    \EventData[127]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .O(EventData[127]));
  LUT3 #(
    .INIT(8'h20)) 
    \EventData[15]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .O(EventData[15]));
  LUT4 #(
    .INIT(16'h0880)) 
    \EventData[31]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .O(EventData[31]));
  LUT4 #(
    .INIT(16'h0820)) 
    \EventData[47]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .O(EventData[47]));
  LUT3 #(
    .INIT(8'h20)) 
    \EventData[63]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(EventData[63]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \EventData[64]_i_1 
       (.I0(current_state[3]),
        .I1(EvBuffOut[0]),
        .I2(current_state[2]),
        .O(\EventData[64]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \EventData[65]_i_1 
       (.I0(current_state[3]),
        .I1(EvBuffOut[1]),
        .I2(current_state[2]),
        .O(\EventData[65]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \EventData[66]_i_1 
       (.I0(current_state[3]),
        .I1(EvBuffOut[2]),
        .I2(current_state[2]),
        .O(\EventData[66]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \EventData[67]_i_1 
       (.I0(current_state[3]),
        .I1(EvBuffOut[3]),
        .I2(current_state[2]),
        .O(\EventData[67]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \EventData[68]_i_1 
       (.I0(current_state[3]),
        .I1(EvBuffOut[4]),
        .I2(current_state[2]),
        .O(\EventData[68]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \EventData[69]_i_1 
       (.I0(current_state[3]),
        .I1(EvBuffOut[5]),
        .I2(current_state[2]),
        .O(\EventData[69]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \EventData[70]_i_1 
       (.I0(current_state[3]),
        .I1(EvBuffOut[6]),
        .I2(current_state[2]),
        .O(\EventData[70]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \EventData[71]_i_1 
       (.I0(current_state[3]),
        .I1(EvBuffOut[7]),
        .I2(current_state[2]),
        .O(\EventData[71]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \EventData[72]_i_1 
       (.I0(current_state[3]),
        .I1(EvBuffOut[8]),
        .I2(current_state[2]),
        .O(\EventData[72]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \EventData[73]_i_1 
       (.I0(current_state[3]),
        .I1(EvBuffOut[9]),
        .I2(current_state[2]),
        .O(\EventData[73]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \EventData[74]_i_1 
       (.I0(current_state[3]),
        .I1(EvBuffOut[10]),
        .I2(current_state[2]),
        .O(\EventData[74]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \EventData[75]_i_1 
       (.I0(current_state[3]),
        .I1(EvBuffOut[11]),
        .I2(current_state[2]),
        .O(\EventData[75]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \EventData[76]_i_1 
       (.I0(current_state[3]),
        .I1(EvBuffOut[12]),
        .I2(current_state[2]),
        .O(\EventData[76]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \EventData[77]_i_1 
       (.I0(current_state[3]),
        .I1(EvBuffOut[13]),
        .I2(current_state[2]),
        .O(\EventData[77]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \EventData[78]_i_1 
       (.I0(current_state[3]),
        .I1(EvBuffOut[14]),
        .I2(current_state[2]),
        .O(\EventData[78]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2002)) 
    \EventData[79]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .O(EventData[79]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \EventData[79]_i_2 
       (.I0(current_state[3]),
        .I1(EvBuffOut[15]),
        .I2(current_state[2]),
        .O(\EventData[79]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \EventData[80]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(EvBuffOut[0]),
        .O(\EventData[80]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \EventData[81]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(EvBuffOut[1]),
        .O(\EventData[81]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \EventData[82]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(EvBuffOut[2]),
        .O(\EventData[82]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \EventData[83]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(EvBuffOut[3]),
        .O(\EventData[83]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \EventData[84]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(EvBuffOut[4]),
        .O(\EventData[84]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \EventData[85]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(EvBuffOut[5]),
        .O(\EventData[85]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \EventData[86]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(EvBuffOut[6]),
        .O(\EventData[86]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \EventData[87]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(EvBuffOut[7]),
        .O(\EventData[87]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \EventData[88]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(EvBuffOut[8]),
        .O(\EventData[88]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \EventData[89]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(EvBuffOut[9]),
        .O(\EventData[89]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \EventData[90]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(EvBuffOut[10]),
        .O(\EventData[90]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \EventData[91]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(EvBuffOut[11]),
        .O(\EventData[91]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \EventData[92]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(EvBuffOut[12]),
        .O(\EventData[92]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \EventData[93]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(EvBuffOut[13]),
        .O(\EventData[93]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \EventData[94]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(EvBuffOut[14]),
        .O(\EventData[94]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8C00)) 
    \EventData[95]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .O(EventData[95]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \EventData[95]_i_2 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(EvBuffOut[15]),
        .O(\EventData[95]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \EventData[96]_i_1 
       (.I0(EvBuffOut[0]),
        .I1(current_state[0]),
        .O(\EventData[96]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \EventData[97]_i_1 
       (.I0(EvBuffOut[1]),
        .I1(current_state[0]),
        .O(\EventData[97]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \EventData[98]_i_1 
       (.I0(EvBuffOut[2]),
        .I1(current_state[0]),
        .O(\EventData[98]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \EventData[99]_i_1 
       (.I0(EvBuffOut[3]),
        .I1(current_state[0]),
        .O(\EventData[99]_i_1_n_0 ));
  FDRE \EventData_reg[0] 
       (.C(SysClk),
        .CE(EventData[15]),
        .D(\EventData[96]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[0] ),
        .R(EventData0));
  FDRE \EventData_reg[100] 
       (.C(SysClk),
        .CE(EventData[111]),
        .D(\EventData[100]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[100] ),
        .R(EventData0));
  FDRE \EventData_reg[101] 
       (.C(SysClk),
        .CE(EventData[111]),
        .D(\EventData[101]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[101] ),
        .R(EventData0));
  FDRE \EventData_reg[102] 
       (.C(SysClk),
        .CE(EventData[111]),
        .D(\EventData[102]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[102] ),
        .R(EventData0));
  FDRE \EventData_reg[103] 
       (.C(SysClk),
        .CE(EventData[111]),
        .D(\EventData[103]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[103] ),
        .R(EventData0));
  FDRE \EventData_reg[104] 
       (.C(SysClk),
        .CE(EventData[111]),
        .D(\EventData[104]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[104] ),
        .R(EventData0));
  FDRE \EventData_reg[105] 
       (.C(SysClk),
        .CE(EventData[111]),
        .D(\EventData[105]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[105] ),
        .R(EventData0));
  FDRE \EventData_reg[106] 
       (.C(SysClk),
        .CE(EventData[111]),
        .D(\EventData[106]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[106] ),
        .R(EventData0));
  FDRE \EventData_reg[107] 
       (.C(SysClk),
        .CE(EventData[111]),
        .D(\EventData[107]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[107] ),
        .R(EventData0));
  FDRE \EventData_reg[108] 
       (.C(SysClk),
        .CE(EventData[111]),
        .D(\EventData[108]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[108] ),
        .R(EventData0));
  FDRE \EventData_reg[109] 
       (.C(SysClk),
        .CE(EventData[111]),
        .D(\EventData[109]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[109] ),
        .R(EventData0));
  FDRE \EventData_reg[10] 
       (.C(SysClk),
        .CE(EventData[15]),
        .D(\EventData[106]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[10] ),
        .R(EventData0));
  FDRE \EventData_reg[110] 
       (.C(SysClk),
        .CE(EventData[111]),
        .D(\EventData[110]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[110] ),
        .R(EventData0));
  FDRE \EventData_reg[111] 
       (.C(SysClk),
        .CE(EventData[111]),
        .D(\EventData[111]_i_2_n_0 ),
        .Q(\EventData_reg_n_0_[111] ),
        .R(EventData0));
  FDRE \EventData_reg[112] 
       (.C(SysClk),
        .CE(EventData[127]),
        .D(EvBuffOut[0]),
        .Q(\EventData_reg_n_0_[112] ),
        .R(EventData0));
  FDRE \EventData_reg[113] 
       (.C(SysClk),
        .CE(EventData[127]),
        .D(EvBuffOut[1]),
        .Q(\EventData_reg_n_0_[113] ),
        .R(EventData0));
  FDRE \EventData_reg[114] 
       (.C(SysClk),
        .CE(EventData[127]),
        .D(EvBuffOut[2]),
        .Q(\EventData_reg_n_0_[114] ),
        .R(EventData0));
  FDRE \EventData_reg[115] 
       (.C(SysClk),
        .CE(EventData[127]),
        .D(EvBuffOut[3]),
        .Q(\EventData_reg_n_0_[115] ),
        .R(EventData0));
  FDRE \EventData_reg[116] 
       (.C(SysClk),
        .CE(EventData[127]),
        .D(EvBuffOut[4]),
        .Q(\EventData_reg_n_0_[116] ),
        .R(EventData0));
  FDRE \EventData_reg[117] 
       (.C(SysClk),
        .CE(EventData[127]),
        .D(EvBuffOut[5]),
        .Q(\EventData_reg_n_0_[117] ),
        .R(EventData0));
  FDRE \EventData_reg[118] 
       (.C(SysClk),
        .CE(EventData[127]),
        .D(EvBuffOut[6]),
        .Q(\EventData_reg_n_0_[118] ),
        .R(EventData0));
  FDRE \EventData_reg[119] 
       (.C(SysClk),
        .CE(EventData[127]),
        .D(EvBuffOut[7]),
        .Q(\EventData_reg_n_0_[119] ),
        .R(EventData0));
  FDRE \EventData_reg[11] 
       (.C(SysClk),
        .CE(EventData[15]),
        .D(\EventData[107]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[11] ),
        .R(EventData0));
  FDRE \EventData_reg[120] 
       (.C(SysClk),
        .CE(EventData[127]),
        .D(EvBuffOut[8]),
        .Q(\EventData_reg_n_0_[120] ),
        .R(EventData0));
  FDRE \EventData_reg[121] 
       (.C(SysClk),
        .CE(EventData[127]),
        .D(EvBuffOut[9]),
        .Q(\EventData_reg_n_0_[121] ),
        .R(EventData0));
  FDRE \EventData_reg[122] 
       (.C(SysClk),
        .CE(EventData[127]),
        .D(EvBuffOut[10]),
        .Q(\EventData_reg_n_0_[122] ),
        .R(EventData0));
  FDRE \EventData_reg[123] 
       (.C(SysClk),
        .CE(EventData[127]),
        .D(EvBuffOut[11]),
        .Q(\EventData_reg_n_0_[123] ),
        .R(EventData0));
  FDRE \EventData_reg[124] 
       (.C(SysClk),
        .CE(EventData[127]),
        .D(EvBuffOut[12]),
        .Q(\EventData_reg_n_0_[124] ),
        .R(EventData0));
  FDRE \EventData_reg[125] 
       (.C(SysClk),
        .CE(EventData[127]),
        .D(EvBuffOut[13]),
        .Q(\EventData_reg_n_0_[125] ),
        .R(EventData0));
  FDRE \EventData_reg[126] 
       (.C(SysClk),
        .CE(EventData[127]),
        .D(EvBuffOut[14]),
        .Q(\EventData_reg_n_0_[126] ),
        .R(EventData0));
  FDRE \EventData_reg[127] 
       (.C(SysClk),
        .CE(EventData[127]),
        .D(EvBuffOut[15]),
        .Q(\EventData_reg_n_0_[127] ),
        .R(EventData0));
  FDRE \EventData_reg[12] 
       (.C(SysClk),
        .CE(EventData[15]),
        .D(\EventData[108]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[12] ),
        .R(EventData0));
  FDRE \EventData_reg[13] 
       (.C(SysClk),
        .CE(EventData[15]),
        .D(\EventData[109]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[13] ),
        .R(EventData0));
  FDRE \EventData_reg[14] 
       (.C(SysClk),
        .CE(EventData[15]),
        .D(\EventData[110]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[14] ),
        .R(EventData0));
  FDRE \EventData_reg[15] 
       (.C(SysClk),
        .CE(EventData[15]),
        .D(\EventData[111]_i_2_n_0 ),
        .Q(\EventData_reg_n_0_[15] ),
        .R(EventData0));
  FDRE \EventData_reg[16] 
       (.C(SysClk),
        .CE(EventData[31]),
        .D(\EventData[64]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[16] ),
        .R(EventData0));
  FDRE \EventData_reg[17] 
       (.C(SysClk),
        .CE(EventData[31]),
        .D(\EventData[65]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[17] ),
        .R(EventData0));
  FDRE \EventData_reg[18] 
       (.C(SysClk),
        .CE(EventData[31]),
        .D(\EventData[66]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[18] ),
        .R(EventData0));
  FDRE \EventData_reg[19] 
       (.C(SysClk),
        .CE(EventData[31]),
        .D(\EventData[67]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[19] ),
        .R(EventData0));
  FDRE \EventData_reg[1] 
       (.C(SysClk),
        .CE(EventData[15]),
        .D(\EventData[97]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[1] ),
        .R(EventData0));
  FDRE \EventData_reg[20] 
       (.C(SysClk),
        .CE(EventData[31]),
        .D(\EventData[68]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[20] ),
        .R(EventData0));
  FDRE \EventData_reg[21] 
       (.C(SysClk),
        .CE(EventData[31]),
        .D(\EventData[69]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[21] ),
        .R(EventData0));
  FDRE \EventData_reg[22] 
       (.C(SysClk),
        .CE(EventData[31]),
        .D(\EventData[70]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[22] ),
        .R(EventData0));
  FDRE \EventData_reg[23] 
       (.C(SysClk),
        .CE(EventData[31]),
        .D(\EventData[71]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[23] ),
        .R(EventData0));
  FDRE \EventData_reg[24] 
       (.C(SysClk),
        .CE(EventData[31]),
        .D(\EventData[72]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[24] ),
        .R(EventData0));
  FDRE \EventData_reg[25] 
       (.C(SysClk),
        .CE(EventData[31]),
        .D(\EventData[73]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[25] ),
        .R(EventData0));
  FDRE \EventData_reg[26] 
       (.C(SysClk),
        .CE(EventData[31]),
        .D(\EventData[74]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[26] ),
        .R(EventData0));
  FDRE \EventData_reg[27] 
       (.C(SysClk),
        .CE(EventData[31]),
        .D(\EventData[75]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[27] ),
        .R(EventData0));
  FDRE \EventData_reg[28] 
       (.C(SysClk),
        .CE(EventData[31]),
        .D(\EventData[76]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[28] ),
        .R(EventData0));
  FDRE \EventData_reg[29] 
       (.C(SysClk),
        .CE(EventData[31]),
        .D(\EventData[77]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[29] ),
        .R(EventData0));
  FDRE \EventData_reg[2] 
       (.C(SysClk),
        .CE(EventData[15]),
        .D(\EventData[98]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[2] ),
        .R(EventData0));
  FDRE \EventData_reg[30] 
       (.C(SysClk),
        .CE(EventData[31]),
        .D(\EventData[78]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[30] ),
        .R(EventData0));
  FDRE \EventData_reg[31] 
       (.C(SysClk),
        .CE(EventData[31]),
        .D(\EventData[79]_i_2_n_0 ),
        .Q(\EventData_reg_n_0_[31] ),
        .R(EventData0));
  FDRE \EventData_reg[32] 
       (.C(SysClk),
        .CE(EventData[47]),
        .D(\EventData[64]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[32] ),
        .R(EventData0));
  FDRE \EventData_reg[33] 
       (.C(SysClk),
        .CE(EventData[47]),
        .D(\EventData[65]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[33] ),
        .R(EventData0));
  FDRE \EventData_reg[34] 
       (.C(SysClk),
        .CE(EventData[47]),
        .D(\EventData[66]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[34] ),
        .R(EventData0));
  FDRE \EventData_reg[35] 
       (.C(SysClk),
        .CE(EventData[47]),
        .D(\EventData[67]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[35] ),
        .R(EventData0));
  FDRE \EventData_reg[36] 
       (.C(SysClk),
        .CE(EventData[47]),
        .D(\EventData[68]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[36] ),
        .R(EventData0));
  FDRE \EventData_reg[37] 
       (.C(SysClk),
        .CE(EventData[47]),
        .D(\EventData[69]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[37] ),
        .R(EventData0));
  FDRE \EventData_reg[38] 
       (.C(SysClk),
        .CE(EventData[47]),
        .D(\EventData[70]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[38] ),
        .R(EventData0));
  FDRE \EventData_reg[39] 
       (.C(SysClk),
        .CE(EventData[47]),
        .D(\EventData[71]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[39] ),
        .R(EventData0));
  FDRE \EventData_reg[3] 
       (.C(SysClk),
        .CE(EventData[15]),
        .D(\EventData[99]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[3] ),
        .R(EventData0));
  FDRE \EventData_reg[40] 
       (.C(SysClk),
        .CE(EventData[47]),
        .D(\EventData[72]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[40] ),
        .R(EventData0));
  FDRE \EventData_reg[41] 
       (.C(SysClk),
        .CE(EventData[47]),
        .D(\EventData[73]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[41] ),
        .R(EventData0));
  FDRE \EventData_reg[42] 
       (.C(SysClk),
        .CE(EventData[47]),
        .D(\EventData[74]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[42] ),
        .R(EventData0));
  FDRE \EventData_reg[43] 
       (.C(SysClk),
        .CE(EventData[47]),
        .D(\EventData[75]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[43] ),
        .R(EventData0));
  FDRE \EventData_reg[44] 
       (.C(SysClk),
        .CE(EventData[47]),
        .D(\EventData[76]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[44] ),
        .R(EventData0));
  FDRE \EventData_reg[45] 
       (.C(SysClk),
        .CE(EventData[47]),
        .D(\EventData[77]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[45] ),
        .R(EventData0));
  FDRE \EventData_reg[46] 
       (.C(SysClk),
        .CE(EventData[47]),
        .D(\EventData[78]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[46] ),
        .R(EventData0));
  FDRE \EventData_reg[47] 
       (.C(SysClk),
        .CE(EventData[47]),
        .D(\EventData[79]_i_2_n_0 ),
        .Q(\EventData_reg_n_0_[47] ),
        .R(EventData0));
  FDRE \EventData_reg[48] 
       (.C(SysClk),
        .CE(EventData[63]),
        .D(\EventData[64]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[48] ),
        .R(EventData0));
  FDRE \EventData_reg[49] 
       (.C(SysClk),
        .CE(EventData[63]),
        .D(\EventData[65]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[49] ),
        .R(EventData0));
  FDRE \EventData_reg[4] 
       (.C(SysClk),
        .CE(EventData[15]),
        .D(\EventData[100]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[4] ),
        .R(EventData0));
  FDRE \EventData_reg[50] 
       (.C(SysClk),
        .CE(EventData[63]),
        .D(\EventData[66]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[50] ),
        .R(EventData0));
  FDRE \EventData_reg[51] 
       (.C(SysClk),
        .CE(EventData[63]),
        .D(\EventData[67]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[51] ),
        .R(EventData0));
  FDRE \EventData_reg[52] 
       (.C(SysClk),
        .CE(EventData[63]),
        .D(\EventData[68]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[52] ),
        .R(EventData0));
  FDRE \EventData_reg[53] 
       (.C(SysClk),
        .CE(EventData[63]),
        .D(\EventData[69]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[53] ),
        .R(EventData0));
  FDRE \EventData_reg[54] 
       (.C(SysClk),
        .CE(EventData[63]),
        .D(\EventData[70]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[54] ),
        .R(EventData0));
  FDRE \EventData_reg[55] 
       (.C(SysClk),
        .CE(EventData[63]),
        .D(\EventData[71]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[55] ),
        .R(EventData0));
  FDRE \EventData_reg[56] 
       (.C(SysClk),
        .CE(EventData[63]),
        .D(\EventData[72]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[56] ),
        .R(EventData0));
  FDRE \EventData_reg[57] 
       (.C(SysClk),
        .CE(EventData[63]),
        .D(\EventData[73]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[57] ),
        .R(EventData0));
  FDRE \EventData_reg[58] 
       (.C(SysClk),
        .CE(EventData[63]),
        .D(\EventData[74]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[58] ),
        .R(EventData0));
  FDRE \EventData_reg[59] 
       (.C(SysClk),
        .CE(EventData[63]),
        .D(\EventData[75]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[59] ),
        .R(EventData0));
  FDRE \EventData_reg[5] 
       (.C(SysClk),
        .CE(EventData[15]),
        .D(\EventData[101]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[5] ),
        .R(EventData0));
  FDRE \EventData_reg[60] 
       (.C(SysClk),
        .CE(EventData[63]),
        .D(\EventData[76]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[60] ),
        .R(EventData0));
  FDRE \EventData_reg[61] 
       (.C(SysClk),
        .CE(EventData[63]),
        .D(\EventData[77]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[61] ),
        .R(EventData0));
  FDRE \EventData_reg[62] 
       (.C(SysClk),
        .CE(EventData[63]),
        .D(\EventData[78]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[62] ),
        .R(EventData0));
  FDRE \EventData_reg[63] 
       (.C(SysClk),
        .CE(EventData[63]),
        .D(\EventData[79]_i_2_n_0 ),
        .Q(\EventData_reg_n_0_[63] ),
        .R(EventData0));
  FDRE \EventData_reg[64] 
       (.C(SysClk),
        .CE(EventData[79]),
        .D(\EventData[64]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[64] ),
        .R(EventData0));
  FDRE \EventData_reg[65] 
       (.C(SysClk),
        .CE(EventData[79]),
        .D(\EventData[65]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[65] ),
        .R(EventData0));
  FDRE \EventData_reg[66] 
       (.C(SysClk),
        .CE(EventData[79]),
        .D(\EventData[66]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[66] ),
        .R(EventData0));
  FDRE \EventData_reg[67] 
       (.C(SysClk),
        .CE(EventData[79]),
        .D(\EventData[67]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[67] ),
        .R(EventData0));
  FDRE \EventData_reg[68] 
       (.C(SysClk),
        .CE(EventData[79]),
        .D(\EventData[68]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[68] ),
        .R(EventData0));
  FDRE \EventData_reg[69] 
       (.C(SysClk),
        .CE(EventData[79]),
        .D(\EventData[69]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[69] ),
        .R(EventData0));
  FDRE \EventData_reg[6] 
       (.C(SysClk),
        .CE(EventData[15]),
        .D(\EventData[102]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[6] ),
        .R(EventData0));
  FDRE \EventData_reg[70] 
       (.C(SysClk),
        .CE(EventData[79]),
        .D(\EventData[70]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[70] ),
        .R(EventData0));
  FDRE \EventData_reg[71] 
       (.C(SysClk),
        .CE(EventData[79]),
        .D(\EventData[71]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[71] ),
        .R(EventData0));
  FDRE \EventData_reg[72] 
       (.C(SysClk),
        .CE(EventData[79]),
        .D(\EventData[72]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[72] ),
        .R(EventData0));
  FDRE \EventData_reg[73] 
       (.C(SysClk),
        .CE(EventData[79]),
        .D(\EventData[73]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[73] ),
        .R(EventData0));
  FDRE \EventData_reg[74] 
       (.C(SysClk),
        .CE(EventData[79]),
        .D(\EventData[74]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[74] ),
        .R(EventData0));
  FDRE \EventData_reg[75] 
       (.C(SysClk),
        .CE(EventData[79]),
        .D(\EventData[75]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[75] ),
        .R(EventData0));
  FDRE \EventData_reg[76] 
       (.C(SysClk),
        .CE(EventData[79]),
        .D(\EventData[76]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[76] ),
        .R(EventData0));
  FDRE \EventData_reg[77] 
       (.C(SysClk),
        .CE(EventData[79]),
        .D(\EventData[77]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[77] ),
        .R(EventData0));
  FDRE \EventData_reg[78] 
       (.C(SysClk),
        .CE(EventData[79]),
        .D(\EventData[78]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[78] ),
        .R(EventData0));
  FDRE \EventData_reg[79] 
       (.C(SysClk),
        .CE(EventData[79]),
        .D(\EventData[79]_i_2_n_0 ),
        .Q(\EventData_reg_n_0_[79] ),
        .R(EventData0));
  FDRE \EventData_reg[7] 
       (.C(SysClk),
        .CE(EventData[15]),
        .D(\EventData[103]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[7] ),
        .R(EventData0));
  FDRE \EventData_reg[80] 
       (.C(SysClk),
        .CE(EventData[95]),
        .D(\EventData[80]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[80] ),
        .R(EventData0));
  FDRE \EventData_reg[81] 
       (.C(SysClk),
        .CE(EventData[95]),
        .D(\EventData[81]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[81] ),
        .R(EventData0));
  FDRE \EventData_reg[82] 
       (.C(SysClk),
        .CE(EventData[95]),
        .D(\EventData[82]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[82] ),
        .R(EventData0));
  FDRE \EventData_reg[83] 
       (.C(SysClk),
        .CE(EventData[95]),
        .D(\EventData[83]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[83] ),
        .R(EventData0));
  FDRE \EventData_reg[84] 
       (.C(SysClk),
        .CE(EventData[95]),
        .D(\EventData[84]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[84] ),
        .R(EventData0));
  FDRE \EventData_reg[85] 
       (.C(SysClk),
        .CE(EventData[95]),
        .D(\EventData[85]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[85] ),
        .R(EventData0));
  FDRE \EventData_reg[86] 
       (.C(SysClk),
        .CE(EventData[95]),
        .D(\EventData[86]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[86] ),
        .R(EventData0));
  FDRE \EventData_reg[87] 
       (.C(SysClk),
        .CE(EventData[95]),
        .D(\EventData[87]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[87] ),
        .R(EventData0));
  FDRE \EventData_reg[88] 
       (.C(SysClk),
        .CE(EventData[95]),
        .D(\EventData[88]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[88] ),
        .R(EventData0));
  FDRE \EventData_reg[89] 
       (.C(SysClk),
        .CE(EventData[95]),
        .D(\EventData[89]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[89] ),
        .R(EventData0));
  FDRE \EventData_reg[8] 
       (.C(SysClk),
        .CE(EventData[15]),
        .D(\EventData[104]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[8] ),
        .R(EventData0));
  FDRE \EventData_reg[90] 
       (.C(SysClk),
        .CE(EventData[95]),
        .D(\EventData[90]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[90] ),
        .R(EventData0));
  FDRE \EventData_reg[91] 
       (.C(SysClk),
        .CE(EventData[95]),
        .D(\EventData[91]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[91] ),
        .R(EventData0));
  FDRE \EventData_reg[92] 
       (.C(SysClk),
        .CE(EventData[95]),
        .D(\EventData[92]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[92] ),
        .R(EventData0));
  FDRE \EventData_reg[93] 
       (.C(SysClk),
        .CE(EventData[95]),
        .D(\EventData[93]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[93] ),
        .R(EventData0));
  FDRE \EventData_reg[94] 
       (.C(SysClk),
        .CE(EventData[95]),
        .D(\EventData[94]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[94] ),
        .R(EventData0));
  FDRE \EventData_reg[95] 
       (.C(SysClk),
        .CE(EventData[95]),
        .D(\EventData[95]_i_2_n_0 ),
        .Q(\EventData_reg_n_0_[95] ),
        .R(EventData0));
  FDRE \EventData_reg[96] 
       (.C(SysClk),
        .CE(EventData[111]),
        .D(\EventData[96]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[96] ),
        .R(EventData0));
  FDRE \EventData_reg[97] 
       (.C(SysClk),
        .CE(EventData[111]),
        .D(\EventData[97]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[97] ),
        .R(EventData0));
  FDRE \EventData_reg[98] 
       (.C(SysClk),
        .CE(EventData[111]),
        .D(\EventData[98]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[98] ),
        .R(EventData0));
  FDRE \EventData_reg[99] 
       (.C(SysClk),
        .CE(EventData[111]),
        .D(\EventData[99]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[99] ),
        .R(EventData0));
  FDRE \EventData_reg[9] 
       (.C(SysClk),
        .CE(EventData[15]),
        .D(\EventData[105]_i_1_n_0 ),
        .Q(\EventData_reg_n_0_[9] ),
        .R(EventData0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00C0FFEA)) 
    \EventWdCnt[0]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(EvBuffOut[0]),
        .I3(current_state[3]),
        .I4(\EventWdCnt_reg_n_0_[0] ),
        .O(\EventWdCnt[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBEAE)) 
    \EventWdCnt[10]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .O(EventWdCnt));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00C0FFEA)) 
    \EventWdCnt[10]_i_2 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(EvBuffOut[10]),
        .I3(current_state[3]),
        .I4(\EventWdCnt[10]_i_3_n_0 ),
        .O(\EventWdCnt[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \EventWdCnt[10]_i_3 
       (.I0(\EventWdCnt_reg_n_0_[9] ),
        .I1(\EventWdCnt_reg_n_0_[7] ),
        .I2(\EventWdCnt[6]_i_2_n_0 ),
        .I3(\EventWdCnt_reg_n_0_[6] ),
        .I4(\EventWdCnt_reg_n_0_[8] ),
        .I5(\EventWdCnt_reg_n_0_[10] ),
        .O(\EventWdCnt[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFEA00C000C0FFEA)) 
    \EventWdCnt[1]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(EvBuffOut[1]),
        .I3(current_state[3]),
        .I4(\EventWdCnt_reg_n_0_[1] ),
        .I5(\EventWdCnt_reg_n_0_[0] ),
        .O(\EventWdCnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00C0FFEA)) 
    \EventWdCnt[2]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(EvBuffOut[2]),
        .I3(current_state[3]),
        .I4(\EventWdCnt[2]_i_2_n_0 ),
        .O(\EventWdCnt[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \EventWdCnt[2]_i_2 
       (.I0(\EventWdCnt_reg_n_0_[1] ),
        .I1(\EventWdCnt_reg_n_0_[0] ),
        .I2(\EventWdCnt_reg_n_0_[2] ),
        .O(\EventWdCnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00C0FFEA)) 
    \EventWdCnt[3]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(EvBuffOut[3]),
        .I3(current_state[3]),
        .I4(\EventWdCnt[3]_i_2_n_0 ),
        .O(\EventWdCnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \EventWdCnt[3]_i_2 
       (.I0(\EventWdCnt_reg_n_0_[2] ),
        .I1(\EventWdCnt_reg_n_0_[0] ),
        .I2(\EventWdCnt_reg_n_0_[1] ),
        .I3(\EventWdCnt_reg_n_0_[3] ),
        .O(\EventWdCnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00C0FFEA)) 
    \EventWdCnt[4]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(EvBuffOut[4]),
        .I3(current_state[3]),
        .I4(\EventWdCnt[4]_i_2_n_0 ),
        .O(\EventWdCnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \EventWdCnt[4]_i_2 
       (.I0(\EventWdCnt_reg_n_0_[3] ),
        .I1(\EventWdCnt_reg_n_0_[1] ),
        .I2(\EventWdCnt_reg_n_0_[0] ),
        .I3(\EventWdCnt_reg_n_0_[2] ),
        .I4(\EventWdCnt_reg_n_0_[4] ),
        .O(\EventWdCnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00C0FFEA)) 
    \EventWdCnt[5]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(EvBuffOut[5]),
        .I3(current_state[3]),
        .I4(\EventWdCnt[5]_i_2_n_0 ),
        .O(\EventWdCnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \EventWdCnt[5]_i_2 
       (.I0(\EventWdCnt_reg_n_0_[4] ),
        .I1(\EventWdCnt_reg_n_0_[2] ),
        .I2(\EventWdCnt_reg_n_0_[0] ),
        .I3(\EventWdCnt_reg_n_0_[1] ),
        .I4(\EventWdCnt_reg_n_0_[3] ),
        .I5(\EventWdCnt_reg_n_0_[5] ),
        .O(\EventWdCnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEA00C000C0FFEA)) 
    \EventWdCnt[6]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(EvBuffOut[6]),
        .I3(current_state[3]),
        .I4(\EventWdCnt_reg_n_0_[6] ),
        .I5(\EventWdCnt[6]_i_2_n_0 ),
        .O(\EventWdCnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \EventWdCnt[6]_i_2 
       (.I0(\EventWdCnt_reg_n_0_[4] ),
        .I1(\EventWdCnt_reg_n_0_[2] ),
        .I2(\EventWdCnt_reg_n_0_[0] ),
        .I3(\EventWdCnt_reg_n_0_[1] ),
        .I4(\EventWdCnt_reg_n_0_[3] ),
        .I5(\EventWdCnt_reg_n_0_[5] ),
        .O(\EventWdCnt[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00C0FFEA)) 
    \EventWdCnt[7]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(EvBuffOut[7]),
        .I3(current_state[3]),
        .I4(\EventWdCnt[7]_i_2_n_0 ),
        .O(\EventWdCnt[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \EventWdCnt[7]_i_2 
       (.I0(\EventWdCnt_reg_n_0_[6] ),
        .I1(\EventWdCnt[6]_i_2_n_0 ),
        .I2(\EventWdCnt_reg_n_0_[7] ),
        .O(\EventWdCnt[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00C0FFEA)) 
    \EventWdCnt[8]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(EvBuffOut[8]),
        .I3(current_state[3]),
        .I4(\EventWdCnt[8]_i_2_n_0 ),
        .O(\EventWdCnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \EventWdCnt[8]_i_2 
       (.I0(\EventWdCnt_reg_n_0_[7] ),
        .I1(\EventWdCnt[6]_i_2_n_0 ),
        .I2(\EventWdCnt_reg_n_0_[6] ),
        .I3(\EventWdCnt_reg_n_0_[8] ),
        .O(\EventWdCnt[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00C0FFEA)) 
    \EventWdCnt[9]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(EvBuffOut[9]),
        .I3(current_state[3]),
        .I4(\EventWdCnt[9]_i_2_n_0 ),
        .O(\EventWdCnt[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \EventWdCnt[9]_i_2 
       (.I0(\EventWdCnt_reg_n_0_[8] ),
        .I1(\EventWdCnt_reg_n_0_[6] ),
        .I2(\EventWdCnt[6]_i_2_n_0 ),
        .I3(\EventWdCnt_reg_n_0_[7] ),
        .I4(\EventWdCnt_reg_n_0_[9] ),
        .O(\EventWdCnt[9]_i_2_n_0 ));
  FDRE \EventWdCnt_reg[0] 
       (.C(SysClk),
        .CE(EventWdCnt),
        .D(\EventWdCnt[0]_i_1_n_0 ),
        .Q(\EventWdCnt_reg_n_0_[0] ),
        .R(EventData0));
  FDRE \EventWdCnt_reg[10] 
       (.C(SysClk),
        .CE(EventWdCnt),
        .D(\EventWdCnt[10]_i_2_n_0 ),
        .Q(\EventWdCnt_reg_n_0_[10] ),
        .R(EventData0));
  FDRE \EventWdCnt_reg[1] 
       (.C(SysClk),
        .CE(EventWdCnt),
        .D(\EventWdCnt[1]_i_1_n_0 ),
        .Q(\EventWdCnt_reg_n_0_[1] ),
        .R(EventData0));
  FDRE \EventWdCnt_reg[2] 
       (.C(SysClk),
        .CE(EventWdCnt),
        .D(\EventWdCnt[2]_i_1_n_0 ),
        .Q(\EventWdCnt_reg_n_0_[2] ),
        .R(EventData0));
  FDRE \EventWdCnt_reg[3] 
       (.C(SysClk),
        .CE(EventWdCnt),
        .D(\EventWdCnt[3]_i_1_n_0 ),
        .Q(\EventWdCnt_reg_n_0_[3] ),
        .R(EventData0));
  FDRE \EventWdCnt_reg[4] 
       (.C(SysClk),
        .CE(EventWdCnt),
        .D(\EventWdCnt[4]_i_1_n_0 ),
        .Q(\EventWdCnt_reg_n_0_[4] ),
        .R(EventData0));
  FDRE \EventWdCnt_reg[5] 
       (.C(SysClk),
        .CE(EventWdCnt),
        .D(\EventWdCnt[5]_i_1_n_0 ),
        .Q(\EventWdCnt_reg_n_0_[5] ),
        .R(EventData0));
  FDRE \EventWdCnt_reg[6] 
       (.C(SysClk),
        .CE(EventWdCnt),
        .D(\EventWdCnt[6]_i_1_n_0 ),
        .Q(\EventWdCnt_reg_n_0_[6] ),
        .R(EventData0));
  FDRE \EventWdCnt_reg[7] 
       (.C(SysClk),
        .CE(EventWdCnt),
        .D(\EventWdCnt[7]_i_1_n_0 ),
        .Q(\EventWdCnt_reg_n_0_[7] ),
        .R(EventData0));
  FDRE \EventWdCnt_reg[8] 
       (.C(SysClk),
        .CE(EventWdCnt),
        .D(\EventWdCnt[8]_i_1_n_0 ),
        .Q(\EventWdCnt_reg_n_0_[8] ),
        .R(EventData0));
  FDRE \EventWdCnt_reg[9] 
       (.C(SysClk),
        .CE(EventWdCnt),
        .D(\EventWdCnt[9]_i_1_n_0 ),
        .Q(\EventWdCnt_reg_n_0_[9] ),
        .R(EventData0));
  LUT6 #(
    .INIT(64'hEAAAEAAAFFFFEAAA)) 
    \FSM_onehot_prev_state[1]_i_1 
       (.I0(DDR3_wrt_data_reg0),
        .I1(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_prev_state[4]_i_2_n_0 ),
        .I3(DDR3_rdy),
        .I4(setAddr),
        .I5(latched_transferDDR),
        .O(\FSM_onehot_prev_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC0C0FFEA)) 
    \FSM_onehot_prev_state[2]_i_1 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .I1(setAddr),
        .I2(latched_transferDDR),
        .I3(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .I4(DDR3_rdy),
        .O(\FSM_onehot_prev_state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_prev_state[3]_i_1 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .I1(DDR3_rdy),
        .O(\FSM_onehot_prev_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAEAA)) 
    \FSM_onehot_prev_state[4]_i_1 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I1(DDR3_rdy),
        .I2(\FSM_onehot_prev_state[4]_i_2_n_0 ),
        .I3(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .O(\FSM_onehot_prev_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_onehot_prev_state[4]_i_2 
       (.I0(\RdPageWdCnt_reg_n_0_[2] ),
        .I1(\RdPageWdCnt_reg_n_0_[3] ),
        .I2(\RdPageWdCnt_reg_n_0_[0] ),
        .I3(\RdPageWdCnt_reg_n_0_[1] ),
        .O(\FSM_onehot_prev_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "reset:00001,preparedata:01000,waitready:00100,wrtdata:10000,pause:110,rddata:101,idle:00010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_prev_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(EventBuff_i_1_n_0),
        .Q(DDR3_wrt_data_reg0));
  (* FSM_ENCODED_STATES = "reset:00001,preparedata:01000,waitready:00100,wrtdata:10000,pause:110,rddata:101,idle:00010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_prev_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(EventBuff_i_1_n_0),
        .D(\FSM_onehot_prev_state[1]_i_1_n_0 ),
        .Q(setAddr));
  (* FSM_ENCODED_STATES = "reset:00001,preparedata:01000,waitready:00100,wrtdata:10000,pause:110,rddata:101,idle:00010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_prev_state_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(EventBuff_i_1_n_0),
        .D(\FSM_onehot_prev_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_prev_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "reset:00001,preparedata:01000,waitready:00100,wrtdata:10000,pause:110,rddata:101,idle:00010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_prev_state_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(EventBuff_i_1_n_0),
        .D(\FSM_onehot_prev_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_prev_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "reset:00001,preparedata:01000,waitready:00100,wrtdata:10000,pause:110,rddata:101,idle:00010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_prev_state_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(EventBuff_i_1_n_0),
        .D(\FSM_onehot_prev_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_prev_state_reg_n_0_[4] ));
  LUT5 #(
    .INIT(32'h0B08BFBF)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(gtOp),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(empty),
        .I4(current_state[0]),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I1(current_state[0]),
        .O(\FSM_sequential_current_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0074770000777700)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I1(current_state[3]),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(empty),
        .O(DDRPage_Seq[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h07707070)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I1(current_state[3]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .O(DDRPage_Seq[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h74444444)) 
    \FSM_sequential_current_state[3]_i_1 
       (.I0(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I1(current_state[3]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .O(DDRPage_Seq[3]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \FSM_sequential_current_state[3]_i_2 
       (.I0(\FSM_sequential_current_state[3]_i_3_n_0 ),
        .I1(\FSM_sequential_current_state[3]_i_4_n_0 ),
        .I2(\EventWdCnt_reg_n_0_[1] ),
        .I3(\EventWdCnt_reg_n_0_[0] ),
        .I4(\EventWdCnt_reg_n_0_[2] ),
        .O(\FSM_sequential_current_state[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_current_state[3]_i_3 
       (.I0(\EventWdCnt_reg_n_0_[9] ),
        .I1(\EventWdCnt_reg_n_0_[10] ),
        .I2(\EventWdCnt_reg_n_0_[6] ),
        .I3(\EventWdCnt_reg_n_0_[7] ),
        .I4(\EventWdCnt_reg_n_0_[8] ),
        .O(\FSM_sequential_current_state[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_current_state[3]_i_4 
       (.I0(\EventWdCnt_reg_n_0_[4] ),
        .I1(\EventWdCnt_reg_n_0_[3] ),
        .I2(\EventWdCnt_reg_n_0_[5] ),
        .O(\FSM_sequential_current_state[3]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "rdubunchhi:0100,rdwdcount:0011,rdevent6:1010,rdeventbuff:0010,rdevent4:1000,rdevent5:1001,rdevent3:1111,idle:0001,reset:0000,rdevent2:1110,rdevent:0111,rdevent1:1101,waitevent:0110,rdevent8:1100,rdevent7:1011,rdubunchlo:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(SysClk),
        .CE(1'b1),
        .CLR(EventBuff_i_1_n_0),
        .D(DDRPage_Seq[0]),
        .Q(current_state[0]));
  MUXF7 \FSM_sequential_current_state_reg[0]_i_1 
       (.I0(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .O(DDRPage_Seq[0]),
        .S(current_state[3]));
  (* FSM_ENCODED_STATES = "rdubunchhi:0100,rdwdcount:0011,rdevent6:1010,rdeventbuff:0010,rdevent4:1000,rdevent5:1001,rdevent3:1111,idle:0001,reset:0000,rdevent2:1110,rdevent:0111,rdevent1:1101,waitevent:0110,rdevent8:1100,rdevent7:1011,rdubunchlo:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(SysClk),
        .CE(1'b1),
        .CLR(EventBuff_i_1_n_0),
        .D(DDRPage_Seq[1]),
        .Q(current_state[1]));
  (* FSM_ENCODED_STATES = "rdubunchhi:0100,rdwdcount:0011,rdevent6:1010,rdeventbuff:0010,rdevent4:1000,rdevent5:1001,rdevent3:1111,idle:0001,reset:0000,rdevent2:1110,rdevent:0111,rdevent1:1101,waitevent:0110,rdevent8:1100,rdevent7:1011,rdubunchlo:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[2] 
       (.C(SysClk),
        .CE(1'b1),
        .CLR(EventBuff_i_1_n_0),
        .D(DDRPage_Seq[2]),
        .Q(current_state[2]));
  (* FSM_ENCODED_STATES = "rdubunchhi:0100,rdwdcount:0011,rdevent6:1010,rdeventbuff:0010,rdevent4:1000,rdevent5:1001,rdevent3:1111,idle:0001,reset:0000,rdevent2:1110,rdevent:0111,rdevent1:1101,waitevent:0110,rdevent8:1100,rdevent7:1011,rdubunchlo:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[3] 
       (.C(SysClk),
        .CE(1'b1),
        .CLR(EventBuff_i_1_n_0),
        .D(DDRPage_Seq[3]),
        .Q(current_state[3]));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
  TestDDR_TestDDR_top_0_0_FIFO_128x128 OneDDRPage
       (.din({\DDRPage_din_reg_n_0_[127] ,\DDRPage_din_reg_n_0_[126] ,\DDRPage_din_reg_n_0_[125] ,\DDRPage_din_reg_n_0_[124] ,\DDRPage_din_reg_n_0_[123] ,\DDRPage_din_reg_n_0_[122] ,\DDRPage_din_reg_n_0_[121] ,\DDRPage_din_reg_n_0_[120] ,\DDRPage_din_reg_n_0_[119] ,\DDRPage_din_reg_n_0_[118] ,\DDRPage_din_reg_n_0_[117] ,\DDRPage_din_reg_n_0_[116] ,\DDRPage_din_reg_n_0_[115] ,\DDRPage_din_reg_n_0_[114] ,\DDRPage_din_reg_n_0_[113] ,\DDRPage_din_reg_n_0_[112] ,\DDRPage_din_reg_n_0_[111] ,\DDRPage_din_reg_n_0_[110] ,\DDRPage_din_reg_n_0_[109] ,\DDRPage_din_reg_n_0_[108] ,\DDRPage_din_reg_n_0_[107] ,\DDRPage_din_reg_n_0_[106] ,\DDRPage_din_reg_n_0_[105] ,\DDRPage_din_reg_n_0_[104] ,\DDRPage_din_reg_n_0_[103] ,\DDRPage_din_reg_n_0_[102] ,\DDRPage_din_reg_n_0_[101] ,\DDRPage_din_reg_n_0_[100] ,\DDRPage_din_reg_n_0_[99] ,\DDRPage_din_reg_n_0_[98] ,\DDRPage_din_reg_n_0_[97] ,\DDRPage_din_reg_n_0_[96] ,\DDRPage_din_reg_n_0_[95] ,\DDRPage_din_reg_n_0_[94] ,\DDRPage_din_reg_n_0_[93] ,\DDRPage_din_reg_n_0_[92] ,\DDRPage_din_reg_n_0_[91] ,\DDRPage_din_reg_n_0_[90] ,\DDRPage_din_reg_n_0_[89] ,\DDRPage_din_reg_n_0_[88] ,\DDRPage_din_reg_n_0_[87] ,\DDRPage_din_reg_n_0_[86] ,\DDRPage_din_reg_n_0_[85] ,\DDRPage_din_reg_n_0_[84] ,\DDRPage_din_reg_n_0_[83] ,\DDRPage_din_reg_n_0_[82] ,\DDRPage_din_reg_n_0_[81] ,\DDRPage_din_reg_n_0_[80] ,\DDRPage_din_reg_n_0_[79] ,\DDRPage_din_reg_n_0_[78] ,\DDRPage_din_reg_n_0_[77] ,\DDRPage_din_reg_n_0_[76] ,\DDRPage_din_reg_n_0_[75] ,\DDRPage_din_reg_n_0_[74] ,\DDRPage_din_reg_n_0_[73] ,\DDRPage_din_reg_n_0_[72] ,\DDRPage_din_reg_n_0_[71] ,\DDRPage_din_reg_n_0_[70] ,\DDRPage_din_reg_n_0_[69] ,\DDRPage_din_reg_n_0_[68] ,\DDRPage_din_reg_n_0_[67] ,\DDRPage_din_reg_n_0_[66] ,\DDRPage_din_reg_n_0_[65] ,\DDRPage_din_reg_n_0_[64] ,\DDRPage_din_reg_n_0_[63] ,\DDRPage_din_reg_n_0_[62] ,\DDRPage_din_reg_n_0_[61] ,\DDRPage_din_reg_n_0_[60] ,\DDRPage_din_reg_n_0_[59] ,\DDRPage_din_reg_n_0_[58] ,\DDRPage_din_reg_n_0_[57] ,\DDRPage_din_reg_n_0_[56] ,\DDRPage_din_reg_n_0_[55] ,\DDRPage_din_reg_n_0_[54] ,\DDRPage_din_reg_n_0_[53] ,\DDRPage_din_reg_n_0_[52] ,\DDRPage_din_reg_n_0_[51] ,\DDRPage_din_reg_n_0_[50] ,\DDRPage_din_reg_n_0_[49] ,\DDRPage_din_reg_n_0_[48] ,\DDRPage_din_reg_n_0_[47] ,\DDRPage_din_reg_n_0_[46] ,\DDRPage_din_reg_n_0_[45] ,\DDRPage_din_reg_n_0_[44] ,\DDRPage_din_reg_n_0_[43] ,\DDRPage_din_reg_n_0_[42] ,\DDRPage_din_reg_n_0_[41] ,\DDRPage_din_reg_n_0_[40] ,\DDRPage_din_reg_n_0_[39] ,\DDRPage_din_reg_n_0_[38] ,\DDRPage_din_reg_n_0_[37] ,\DDRPage_din_reg_n_0_[36] ,\DDRPage_din_reg_n_0_[35] ,\DDRPage_din_reg_n_0_[34] ,\DDRPage_din_reg_n_0_[33] ,\DDRPage_din_reg_n_0_[32] ,\DDRPage_din_reg_n_0_[31] ,\DDRPage_din_reg_n_0_[30] ,\DDRPage_din_reg_n_0_[29] ,\DDRPage_din_reg_n_0_[28] ,\DDRPage_din_reg_n_0_[27] ,\DDRPage_din_reg_n_0_[26] ,\DDRPage_din_reg_n_0_[25] ,\DDRPage_din_reg_n_0_[24] ,\DDRPage_din_reg_n_0_[23] ,\DDRPage_din_reg_n_0_[22] ,\DDRPage_din_reg_n_0_[21] ,\DDRPage_din_reg_n_0_[20] ,\DDRPage_din_reg_n_0_[19] ,\DDRPage_din_reg_n_0_[18] ,\DDRPage_din_reg_n_0_[17] ,\DDRPage_din_reg_n_0_[16] ,\DDRPage_din_reg_n_0_[15] ,\DDRPage_din_reg_n_0_[14] ,\DDRPage_din_reg_n_0_[13] ,\DDRPage_din_reg_n_0_[12] ,\DDRPage_din_reg_n_0_[11] ,\DDRPage_din_reg_n_0_[10] ,\DDRPage_din_reg_n_0_[9] ,\DDRPage_din_reg_n_0_[8] ,\DDRPage_din_reg_n_0_[7] ,\DDRPage_din_reg_n_0_[6] ,\DDRPage_din_reg_n_0_[5] ,\DDRPage_din_reg_n_0_[4] ,\DDRPage_din_reg_n_0_[3] ,\DDRPage_din_reg_n_0_[2] ,\DDRPage_din_reg_n_0_[1] ,\DDRPage_din_reg_n_0_[0] }),
        .dout(DDRPage_dout),
        .empty(NLW_OneDDRPage_empty_UNCONNECTED),
        .full(NLW_OneDDRPage_full_UNCONNECTED),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_OneDDRPage_rd_data_count_UNCONNECTED[7:0]),
        .rd_en(DDRPage_rd_en_reg_n_0),
        .rd_rst_busy(NLW_OneDDRPage_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .wr_clk(SysClk),
        .wr_data_count(NLW_OneDDRPage_wr_data_count_UNCONNECTED[7:0]),
        .wr_en(DDRPage_wr_en_reg_n_0),
        .wr_rst_busy(NLW_OneDDRPage_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \PageWdCnt[0]_i_1 
       (.I0(\PageWdCnt_reg_n_0_[0] ),
        .O(plusOp_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PageWdCnt[1]_i_1 
       (.I0(\PageWdCnt_reg_n_0_[0] ),
        .I1(\PageWdCnt_reg_n_0_[1] ),
        .O(plusOp_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \PageWdCnt[2]_i_1 
       (.I0(\PageWdCnt_reg_n_0_[0] ),
        .I1(\PageWdCnt_reg_n_0_[1] ),
        .I2(\PageWdCnt_reg_n_0_[2] ),
        .O(plusOp_0[2]));
  LUT3 #(
    .INIT(8'h01)) 
    \PageWdCnt[3]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[3]),
        .O(\PageWdCnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4400F400440044FF)) 
    \PageWdCnt[3]_i_2 
       (.I0(\PageWdCnt[3]_i_4_n_0 ),
        .I1(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I2(current_state[0]),
        .I3(current_state[3]),
        .I4(current_state[1]),
        .I5(current_state[2]),
        .O(PageWdCnt));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \PageWdCnt[3]_i_3 
       (.I0(\PageWdCnt_reg_n_0_[1] ),
        .I1(\PageWdCnt_reg_n_0_[0] ),
        .I2(\PageWdCnt_reg_n_0_[2] ),
        .I3(\PageWdCnt_reg_n_0_[3] ),
        .O(plusOp_0[3]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \PageWdCnt[3]_i_4 
       (.I0(\FSM_sequential_current_state[3]_i_3_n_0 ),
        .I1(\FSM_sequential_current_state[3]_i_4_n_0 ),
        .I2(\EventWdCnt_reg_n_0_[0] ),
        .I3(\EventWdCnt_reg_n_0_[1] ),
        .I4(\EventWdCnt_reg_n_0_[2] ),
        .O(\PageWdCnt[3]_i_4_n_0 ));
  FDRE \PageWdCnt_reg[0] 
       (.C(SysClk),
        .CE(PageWdCnt),
        .D(plusOp_0[0]),
        .Q(\PageWdCnt_reg_n_0_[0] ),
        .R(\PageWdCnt[3]_i_1_n_0 ));
  FDRE \PageWdCnt_reg[1] 
       (.C(SysClk),
        .CE(PageWdCnt),
        .D(plusOp_0[1]),
        .Q(\PageWdCnt_reg_n_0_[1] ),
        .R(\PageWdCnt[3]_i_1_n_0 ));
  FDRE \PageWdCnt_reg[2] 
       (.C(SysClk),
        .CE(PageWdCnt),
        .D(plusOp_0[2]),
        .Q(\PageWdCnt_reg_n_0_[2] ),
        .R(\PageWdCnt[3]_i_1_n_0 ));
  FDRE \PageWdCnt_reg[3] 
       (.C(SysClk),
        .CE(PageWdCnt),
        .D(plusOp_0[3]),
        .Q(\PageWdCnt_reg_n_0_[3] ),
        .R(\PageWdCnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEFEEEFEEEFE)) 
    \RdPageWdCnt[0]_i_1 
       (.I0(setAddr),
        .I1(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .I3(\RdPageWdCnt_reg_n_0_[0] ),
        .I4(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .I5(latched_PageWdCnt[0]),
        .O(\RdPageWdCnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAEEAAEEAAE)) 
    \RdPageWdCnt[1]_i_1 
       (.I0(\RdPageWdCnt[2]_i_2_n_0 ),
        .I1(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .I2(\RdPageWdCnt_reg_n_0_[1] ),
        .I3(\RdPageWdCnt_reg_n_0_[0] ),
        .I4(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .I5(latched_PageWdCnt[1]),
        .O(\RdPageWdCnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAEEAAEEAAE)) 
    \RdPageWdCnt[2]_i_1 
       (.I0(\RdPageWdCnt[2]_i_2_n_0 ),
        .I1(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .I2(\RdPageWdCnt_reg_n_0_[2] ),
        .I3(\RdPageWdCnt[2]_i_3_n_0 ),
        .I4(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .I5(latched_PageWdCnt[2]),
        .O(\RdPageWdCnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RdPageWdCnt[2]_i_2 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I1(setAddr),
        .O(\RdPageWdCnt[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \RdPageWdCnt[2]_i_3 
       (.I0(\RdPageWdCnt_reg_n_0_[0] ),
        .I1(\RdPageWdCnt_reg_n_0_[1] ),
        .O(\RdPageWdCnt[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \RdPageWdCnt[3]_i_1 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .I1(DDR3_wrt_rdy),
        .I2(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .O(RdPageWdCnt));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \RdPageWdCnt[3]_i_2 
       (.I0(setAddr),
        .I1(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I2(\RdPageWdCnt[3]_i_3_n_0 ),
        .I3(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .I4(latched_PageWdCnt[3]),
        .O(\RdPageWdCnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h88888882)) 
    \RdPageWdCnt[3]_i_3 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .I1(\RdPageWdCnt_reg_n_0_[3] ),
        .I2(\RdPageWdCnt_reg_n_0_[1] ),
        .I3(\RdPageWdCnt_reg_n_0_[0] ),
        .I4(\RdPageWdCnt_reg_n_0_[2] ),
        .O(\RdPageWdCnt[3]_i_3_n_0 ));
  FDRE \RdPageWdCnt_reg[0] 
       (.C(rd_clk),
        .CE(RdPageWdCnt),
        .D(\RdPageWdCnt[0]_i_1_n_0 ),
        .Q(\RdPageWdCnt_reg_n_0_[0] ),
        .R(DDR3_wrt_data_reg0));
  FDRE \RdPageWdCnt_reg[1] 
       (.C(rd_clk),
        .CE(RdPageWdCnt),
        .D(\RdPageWdCnt[1]_i_1_n_0 ),
        .Q(\RdPageWdCnt_reg_n_0_[1] ),
        .R(DDR3_wrt_data_reg0));
  FDRE \RdPageWdCnt_reg[2] 
       (.C(rd_clk),
        .CE(RdPageWdCnt),
        .D(\RdPageWdCnt[2]_i_1_n_0 ),
        .Q(\RdPageWdCnt_reg_n_0_[2] ),
        .R(DDR3_wrt_data_reg0));
  FDRE \RdPageWdCnt_reg[3] 
       (.C(rd_clk),
        .CE(RdPageWdCnt),
        .D(\RdPageWdCnt[3]_i_2_n_0 ),
        .Q(\RdPageWdCnt_reg_n_0_[3] ),
        .R(DDR3_wrt_data_reg0));
  LUT1 #(
    .INIT(2'h2)) 
    U0i_0
       (.I0(1'b0),
        .O(DDRSeqStat[3]));
  LUT4 #(
    .INIT(16'h0004)) 
    \counter[0]_i_1 
       (.I0(sw[3]),
        .I1(sw[0]),
        .I2(sw[2]),
        .I3(sw[1]),
        .O(eqOp2_in));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_3 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_3_n_0 ));
  FDCE \counter_reg[0] 
       (.C(SysClk),
        .CE(eqOp2_in),
        .CLR(EventBuff_i_1_n_0),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\counter_reg[0]_i_2_n_1 ,\counter_reg[0]_i_2_n_2 ,\counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_3_n_0 }));
  FDCE \counter_reg[10] 
       (.C(SysClk),
        .CE(eqOp2_in),
        .CLR(EventBuff_i_1_n_0),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]));
  FDCE \counter_reg[11] 
       (.C(SysClk),
        .CE(eqOp2_in),
        .CLR(EventBuff_i_1_n_0),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]));
  FDCE \counter_reg[12] 
       (.C(SysClk),
        .CE(eqOp2_in),
        .CLR(EventBuff_i_1_n_0),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [3],\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDCE \counter_reg[13] 
       (.C(SysClk),
        .CE(eqOp2_in),
        .CLR(EventBuff_i_1_n_0),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]));
  FDCE \counter_reg[14] 
       (.C(SysClk),
        .CE(eqOp2_in),
        .CLR(EventBuff_i_1_n_0),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]));
  FDCE \counter_reg[15] 
       (.C(SysClk),
        .CE(eqOp2_in),
        .CLR(EventBuff_i_1_n_0),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]));
  FDCE \counter_reg[1] 
       (.C(SysClk),
        .CE(eqOp2_in),
        .CLR(EventBuff_i_1_n_0),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]));
  FDCE \counter_reg[2] 
       (.C(SysClk),
        .CE(eqOp2_in),
        .CLR(EventBuff_i_1_n_0),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]));
  FDCE \counter_reg[3] 
       (.C(SysClk),
        .CE(eqOp2_in),
        .CLR(EventBuff_i_1_n_0),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]));
  FDCE \counter_reg[4] 
       (.C(SysClk),
        .CE(eqOp2_in),
        .CLR(EventBuff_i_1_n_0),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDCE \counter_reg[5] 
       (.C(SysClk),
        .CE(eqOp2_in),
        .CLR(EventBuff_i_1_n_0),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]));
  FDCE \counter_reg[6] 
       (.C(SysClk),
        .CE(eqOp2_in),
        .CLR(EventBuff_i_1_n_0),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]));
  FDCE \counter_reg[7] 
       (.C(SysClk),
        .CE(eqOp2_in),
        .CLR(EventBuff_i_1_n_0),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]));
  FDCE \counter_reg[8] 
       (.C(SysClk),
        .CE(eqOp2_in),
        .CLR(EventBuff_i_1_n_0),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDCE \counter_reg[9] 
       (.C(SysClk),
        .CE(eqOp2_in),
        .CLR(EventBuff_i_1_n_0),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]));
  LUT5 #(
    .INIT(32'h7FFF0000)) 
    first_iter_i_1
       (.I0(reset_count_reg[6]),
        .I1(\reset_count[7]_i_2_n_0 ),
        .I2(reset_count_reg[5]),
        .I3(reset_count_reg[7]),
        .I4(rst),
        .O(first_iter_i_1_n_0));
  FDPE first_iter_reg
       (.C(SysClk),
        .CE(1'b1),
        .D(first_iter_i_1_n_0),
        .PRE(EventBuff_i_1_n_0),
        .Q(rst));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "ila,Vivado 2023.1" *) 
  TestDDR_TestDDR_top_0_0_ila_0 \generateILA0.ila 
       (.clk(SysClk),
        .probe0(DDR3_addr),
        .probe1(DDR3_cmd),
        .probe10(DDR3_rdy),
        .probe11(DDR3_wrt_rdy),
        .probe12(DDRSeqStat),
        .probe2(DDR3_en),
        .probe3(DDR3_wrt_data),
        .probe4(DDR3_wrt_end),
        .probe5(DDR3_wrt_mask),
        .probe6(DDR3_wrt_en),
        .probe7(DDR3_rd_data),
        .probe8(DDR3_rd_data_end),
        .probe9(DDR3_rd_data_valid));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 gtOp_carry
       (.CI(1'b0),
        .CO({gtOp_carry_n_0,gtOp_carry_n_1,gtOp_carry_n_2,gtOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp_carry_i_1_n_0,gtOp_carry_i_2_n_0,gtOp_carry_i_3_n_0,gtOp_carry_i_4_n_0}),
        .O(NLW_gtOp_carry_O_UNCONNECTED[3:0]),
        .S({gtOp_carry_i_5_n_0,gtOp_carry_i_6_n_0,gtOp_carry_i_7_n_0,gtOp_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 gtOp_carry__0
       (.CI(gtOp_carry_n_0),
        .CO({NLW_gtOp_carry__0_CO_UNCONNECTED[3:2],gtOp,gtOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,gtOp_carry__0_i_1_n_0,gtOp_carry__0_i_2_n_0}),
        .O(NLW_gtOp_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,gtOp_carry__0_i_3_n_0,gtOp_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    gtOp_carry__0_i_1
       (.I0(EvBuffWdsUsed[10]),
        .I1(\EventWdCnt_reg_n_0_[10] ),
        .O(gtOp_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__0_i_2
       (.I0(EvBuffWdsUsed[8]),
        .I1(\EventWdCnt_reg_n_0_[8] ),
        .I2(\EventWdCnt_reg_n_0_[9] ),
        .I3(EvBuffWdsUsed[9]),
        .O(gtOp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    gtOp_carry__0_i_3
       (.I0(\EventWdCnt_reg_n_0_[10] ),
        .I1(EvBuffWdsUsed[10]),
        .O(gtOp_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_4
       (.I0(EvBuffWdsUsed[8]),
        .I1(\EventWdCnt_reg_n_0_[8] ),
        .I2(EvBuffWdsUsed[9]),
        .I3(\EventWdCnt_reg_n_0_[9] ),
        .O(gtOp_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_1
       (.I0(EvBuffWdsUsed[6]),
        .I1(\EventWdCnt_reg_n_0_[6] ),
        .I2(\EventWdCnt_reg_n_0_[7] ),
        .I3(EvBuffWdsUsed[7]),
        .O(gtOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_2
       (.I0(EvBuffWdsUsed[4]),
        .I1(\EventWdCnt_reg_n_0_[4] ),
        .I2(\EventWdCnt_reg_n_0_[5] ),
        .I3(EvBuffWdsUsed[5]),
        .O(gtOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_3
       (.I0(EvBuffWdsUsed[2]),
        .I1(\EventWdCnt_reg_n_0_[2] ),
        .I2(\EventWdCnt_reg_n_0_[3] ),
        .I3(EvBuffWdsUsed[3]),
        .O(gtOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_4
       (.I0(EvBuffWdsUsed[0]),
        .I1(\EventWdCnt_reg_n_0_[0] ),
        .I2(\EventWdCnt_reg_n_0_[1] ),
        .I3(EvBuffWdsUsed[1]),
        .O(gtOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_5
       (.I0(EvBuffWdsUsed[6]),
        .I1(\EventWdCnt_reg_n_0_[6] ),
        .I2(EvBuffWdsUsed[7]),
        .I3(\EventWdCnt_reg_n_0_[7] ),
        .O(gtOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_6
       (.I0(EvBuffWdsUsed[4]),
        .I1(\EventWdCnt_reg_n_0_[4] ),
        .I2(EvBuffWdsUsed[5]),
        .I3(\EventWdCnt_reg_n_0_[5] ),
        .O(gtOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_7
       (.I0(EvBuffWdsUsed[2]),
        .I1(\EventWdCnt_reg_n_0_[2] ),
        .I2(EvBuffWdsUsed[3]),
        .I3(\EventWdCnt_reg_n_0_[3] ),
        .O(gtOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_8
       (.I0(EvBuffWdsUsed[0]),
        .I1(\EventWdCnt_reg_n_0_[0] ),
        .I2(EvBuffWdsUsed[1]),
        .I3(\EventWdCnt_reg_n_0_[1] ),
        .O(gtOp_carry_i_8_n_0));
  FDCE \latched_PageWdCnt_reg[0] 
       (.C(transferDDR_reg_n_0),
        .CE(1'b1),
        .CLR(rst_transferDDR_reg_inv_n_0),
        .D(\PageWdCnt_reg_n_0_[0] ),
        .Q(latched_PageWdCnt[0]));
  FDCE \latched_PageWdCnt_reg[1] 
       (.C(transferDDR_reg_n_0),
        .CE(1'b1),
        .CLR(rst_transferDDR_reg_inv_n_0),
        .D(\PageWdCnt_reg_n_0_[1] ),
        .Q(latched_PageWdCnt[1]));
  FDCE \latched_PageWdCnt_reg[2] 
       (.C(transferDDR_reg_n_0),
        .CE(1'b1),
        .CLR(rst_transferDDR_reg_inv_n_0),
        .D(\PageWdCnt_reg_n_0_[2] ),
        .Q(latched_PageWdCnt[2]));
  FDCE \latched_PageWdCnt_reg[3] 
       (.C(transferDDR_reg_n_0),
        .CE(1'b1),
        .CLR(rst_transferDDR_reg_inv_n_0),
        .D(\PageWdCnt_reg_n_0_[3] ),
        .Q(latched_PageWdCnt[3]));
  FDCE latched_transferDDR_reg
       (.C(transferDDR_reg_n_0),
        .CE(1'b1),
        .CLR(rst_transferDDR_reg_inv_n_0),
        .D(1'b1),
        .Q(latched_transferDDR));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \led_4bits_tri_o[0]_i_1 
       (.I0(setAddr),
        .I1(DDR3_wrt_data_reg0),
        .I2(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .I3(led_4bits_tri_o[0]),
        .O(\led_4bits_tri_o[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hF1F0)) 
    \led_4bits_tri_o[1]_i_1 
       (.I0(setAddr),
        .I1(DDR3_wrt_data_reg0),
        .I2(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .I3(led_4bits_tri_o[1]),
        .O(\led_4bits_tri_o[1]_i_1_n_0 ));
  FDRE \led_4bits_tri_o_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\led_4bits_tri_o[0]_i_1_n_0 ),
        .Q(led_4bits_tri_o[0]),
        .R(1'b0));
  FDRE \led_4bits_tri_o_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\led_4bits_tri_o[1]_i_1_n_0 ),
        .Q(led_4bits_tri_o[1]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,DDR3_addr[4],1'b0}),
        .O({plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .S({DDR3_addr[6:5],plusOp_carry_i_1_n_0,DDR3_addr[3]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .S(DDR3_addr[10:7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__1_n_4,plusOp_carry__1_n_5,plusOp_carry__1_n_6,plusOp_carry__1_n_7}),
        .S(DDR3_addr[14:11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__2_n_4,plusOp_carry__2_n_5,plusOp_carry__2_n_6,plusOp_carry__2_n_7}),
        .S(DDR3_addr[18:15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__3_n_4,plusOp_carry__3_n_5,plusOp_carry__3_n_6,plusOp_carry__3_n_7}),
        .S(DDR3_addr[22:19]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__4_n_4,plusOp_carry__4_n_5,plusOp_carry__4_n_6,plusOp_carry__4_n_7}),
        .S(DDR3_addr[26:23]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO(NLW_plusOp_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__5_O_UNCONNECTED[3:1],plusOp_carry__5_n_7}),
        .S({1'b0,1'b0,1'b0,DDR3_addr[27]}));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_1
       (.I0(DDR3_addr[4]),
        .O(plusOp_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \reset_count[0]_i_1 
       (.I0(reset_count_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \reset_count[1]_i_1 
       (.I0(reset_count_reg[0]),
        .I1(reset_count_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \reset_count[2]_i_1 
       (.I0(reset_count_reg[2]),
        .I1(reset_count_reg[0]),
        .I2(reset_count_reg[1]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reset_count[3]_i_1 
       (.I0(reset_count_reg[3]),
        .I1(reset_count_reg[1]),
        .I2(reset_count_reg[0]),
        .I3(reset_count_reg[2]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \reset_count[4]_i_1 
       (.I0(reset_count_reg[4]),
        .I1(reset_count_reg[2]),
        .I2(reset_count_reg[0]),
        .I3(reset_count_reg[1]),
        .I4(reset_count_reg[3]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \reset_count[5]_i_1 
       (.I0(reset_count_reg[5]),
        .I1(reset_count_reg[2]),
        .I2(reset_count_reg[0]),
        .I3(reset_count_reg[1]),
        .I4(reset_count_reg[3]),
        .I5(reset_count_reg[4]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \reset_count[6]_i_1 
       (.I0(reset_count_reg[6]),
        .I1(\reset_count[7]_i_2_n_0 ),
        .I2(reset_count_reg[5]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reset_count[7]_i_1 
       (.I0(reset_count_reg[7]),
        .I1(reset_count_reg[5]),
        .I2(\reset_count[7]_i_2_n_0 ),
        .I3(reset_count_reg[6]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \reset_count[7]_i_2 
       (.I0(reset_count_reg[4]),
        .I1(reset_count_reg[3]),
        .I2(reset_count_reg[1]),
        .I3(reset_count_reg[0]),
        .I4(reset_count_reg[2]),
        .O(\reset_count[7]_i_2_n_0 ));
  FDCE \reset_count_reg[0] 
       (.C(SysClk),
        .CE(1'b1),
        .CLR(EventBuff_i_1_n_0),
        .D(plusOp[0]),
        .Q(reset_count_reg[0]));
  FDCE \reset_count_reg[1] 
       (.C(SysClk),
        .CE(1'b1),
        .CLR(EventBuff_i_1_n_0),
        .D(plusOp[1]),
        .Q(reset_count_reg[1]));
  FDCE \reset_count_reg[2] 
       (.C(SysClk),
        .CE(1'b1),
        .CLR(EventBuff_i_1_n_0),
        .D(plusOp[2]),
        .Q(reset_count_reg[2]));
  FDCE \reset_count_reg[3] 
       (.C(SysClk),
        .CE(1'b1),
        .CLR(EventBuff_i_1_n_0),
        .D(plusOp[3]),
        .Q(reset_count_reg[3]));
  FDCE \reset_count_reg[4] 
       (.C(SysClk),
        .CE(1'b1),
        .CLR(EventBuff_i_1_n_0),
        .D(plusOp[4]),
        .Q(reset_count_reg[4]));
  FDCE \reset_count_reg[5] 
       (.C(SysClk),
        .CE(1'b1),
        .CLR(EventBuff_i_1_n_0),
        .D(plusOp[5]),
        .Q(reset_count_reg[5]));
  FDCE \reset_count_reg[6] 
       (.C(SysClk),
        .CE(1'b1),
        .CLR(EventBuff_i_1_n_0),
        .D(plusOp[6]),
        .Q(reset_count_reg[6]));
  FDCE \reset_count_reg[7] 
       (.C(SysClk),
        .CE(1'b1),
        .CLR(EventBuff_i_1_n_0),
        .D(plusOp[7]),
        .Q(reset_count_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hCDCC)) 
    \rgb_led_tri_o[0]_i_1 
       (.I0(setAddr),
        .I1(DDR3_wrt_data_reg0),
        .I2(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .I3(rgb_led_tri_o),
        .O(\rgb_led_tri_o[0]_i_1_n_0 ));
  FDRE \rgb_led_tri_o_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\rgb_led_tri_o[0]_i_1_n_0 ),
        .Q(rgb_led_tri_o),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h01)) 
    rst_transferDDR_inv_i_1
       (.I0(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I1(setAddr),
        .I2(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .O(rst_transferDDR));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    rst_transferDDR_reg_inv
       (.C(rd_clk),
        .CE(1'b1),
        .D(rst_transferDDR),
        .Q(rst_transferDDR_reg_inv_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF1050)) 
    setAddr_i_1
       (.I0(DDR3_wrt_data_reg0),
        .I1(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .I2(setAddr_reg_n_0),
        .I3(DDR3_wrt_rdy),
        .I4(setAddr),
        .O(setAddr_i_1_n_0));
  FDRE setAddr_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(setAddr_i_1_n_0),
        .Q(setAddr_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    sys_rst_i_1
       (.I0(reset_count_reg[7]),
        .I1(reset_count_reg[5]),
        .I2(\reset_count[7]_i_2_n_0 ),
        .I3(reset_count_reg[6]),
        .I4(rst),
        .I5(sys_rst),
        .O(sys_rst_i_1_n_0));
  FDCE sys_rst_reg
       (.C(SysClk),
        .CE(1'b1),
        .CLR(EventBuff_i_1_n_0),
        .D(sys_rst_i_1_n_0),
        .Q(sys_rst));
  LUT6 #(
    .INIT(64'hFFFFFFF020202020)) 
    transferDDR_i_1
       (.I0(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I1(\PageWdCnt[3]_i_4_n_0 ),
        .I2(current_state[3]),
        .I3(current_state[1]),
        .I4(current_state[2]),
        .I5(transferDDR_reg_n_0),
        .O(transferDDR_i_1_n_0));
  FDRE transferDDR_reg
       (.C(SysClk),
        .CE(1'b1),
        .D(transferDDR_i_1_n_0),
        .Q(transferDDR_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0001)) 
    \uBunch[14]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .O(EventData0));
  LUT4 #(
    .INIT(16'h1000)) 
    \uBunch[14]_i_2 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .O(uBunch));
  FDRE \uBunch_reg[0] 
       (.C(SysClk),
        .CE(uBunch),
        .D(EvBuffOut[0]),
        .Q(\uBunch_reg_n_0_[0] ),
        .R(EventData0));
  FDRE \uBunch_reg[10] 
       (.C(SysClk),
        .CE(uBunch),
        .D(EvBuffOut[10]),
        .Q(\uBunch_reg_n_0_[10] ),
        .R(EventData0));
  FDRE \uBunch_reg[11] 
       (.C(SysClk),
        .CE(uBunch),
        .D(EvBuffOut[11]),
        .Q(\uBunch_reg_n_0_[11] ),
        .R(EventData0));
  FDRE \uBunch_reg[12] 
       (.C(SysClk),
        .CE(uBunch),
        .D(EvBuffOut[12]),
        .Q(\uBunch_reg_n_0_[12] ),
        .R(EventData0));
  FDRE \uBunch_reg[13] 
       (.C(SysClk),
        .CE(uBunch),
        .D(EvBuffOut[13]),
        .Q(\uBunch_reg_n_0_[13] ),
        .R(EventData0));
  FDRE \uBunch_reg[14] 
       (.C(SysClk),
        .CE(uBunch),
        .D(EvBuffOut[14]),
        .Q(\uBunch_reg_n_0_[14] ),
        .R(EventData0));
  FDRE \uBunch_reg[1] 
       (.C(SysClk),
        .CE(uBunch),
        .D(EvBuffOut[1]),
        .Q(\uBunch_reg_n_0_[1] ),
        .R(EventData0));
  FDRE \uBunch_reg[2] 
       (.C(SysClk),
        .CE(uBunch),
        .D(EvBuffOut[2]),
        .Q(\uBunch_reg_n_0_[2] ),
        .R(EventData0));
  FDRE \uBunch_reg[3] 
       (.C(SysClk),
        .CE(uBunch),
        .D(EvBuffOut[3]),
        .Q(\uBunch_reg_n_0_[3] ),
        .R(EventData0));
  FDRE \uBunch_reg[4] 
       (.C(SysClk),
        .CE(uBunch),
        .D(EvBuffOut[4]),
        .Q(\uBunch_reg_n_0_[4] ),
        .R(EventData0));
  FDRE \uBunch_reg[5] 
       (.C(SysClk),
        .CE(uBunch),
        .D(EvBuffOut[5]),
        .Q(\uBunch_reg_n_0_[5] ),
        .R(EventData0));
  FDRE \uBunch_reg[6] 
       (.C(SysClk),
        .CE(uBunch),
        .D(EvBuffOut[6]),
        .Q(\uBunch_reg_n_0_[6] ),
        .R(EventData0));
  FDRE \uBunch_reg[7] 
       (.C(SysClk),
        .CE(uBunch),
        .D(EvBuffOut[7]),
        .Q(\uBunch_reg_n_0_[7] ),
        .R(EventData0));
  FDRE \uBunch_reg[8] 
       (.C(SysClk),
        .CE(uBunch),
        .D(EvBuffOut[8]),
        .Q(\uBunch_reg_n_0_[8] ),
        .R(EventData0));
  FDRE \uBunch_reg[9] 
       (.C(SysClk),
        .CE(uBunch),
        .D(EvBuffOut[9]),
        .Q(\uBunch_reg_n_0_[9] ),
        .R(EventData0));
endmodule

(* ORIG_REF_NAME = "ila_0" *) 
module TestDDR_TestDDR_top_0_0_ila_0
   (clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7,
    probe8,
    probe9,
    probe10,
    probe11,
    probe12);
  input clk;
  input [27:0]probe0;
  input [2:0]probe1;
  input [0:0]probe2;
  input [127:0]probe3;
  input [0:0]probe4;
  input [15:0]probe5;
  input [0:0]probe6;
  input [127:0]probe7;
  input [0:0]probe8;
  input [0:0]probe9;
  input [0:0]probe10;
  input [0:0]probe11;
  input [3:0]probe12;


endmodule
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
