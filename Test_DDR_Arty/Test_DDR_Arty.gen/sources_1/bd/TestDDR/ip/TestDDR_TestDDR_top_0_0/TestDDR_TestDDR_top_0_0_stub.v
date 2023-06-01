// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Jun  1 15:44:45 2023
// Host        : CD-135239 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/v23.1/Test_DDR_Arty/Test_DDR_Arty.gen/sources_1/bd/TestDDR/ip/TestDDR_TestDDR_top_0_0/TestDDR_TestDDR_top_0_0_stub.v
// Design      : TestDDR_TestDDR_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "TestDDR_top,Vivado 2023.1" *)
module TestDDR_TestDDR_top_0_0(Clk_100MHz, SysClk, CpldRst, Clk_200MHz, 
  led_4bits_tri_o, rgb_led_tri_o, push_buttons_4bits_tri_i, sw, DDR_DATA, DDR_ADDR, BA, DDR_CKE, 
  ODT, CS, DM, RAS, CAS, DDR_WE, DDR_CLKP, DDR_CLKN, LDQS_P, LDQS_N, UDQS_P, UDQS_N, RESET_N)
/* synthesis syn_black_box black_box_pad_pin="Clk_100MHz,CpldRst,Clk_200MHz,led_4bits_tri_o[3:0],rgb_led_tri_o[5:0],push_buttons_4bits_tri_i[3:0],sw[3:0],DDR_DATA[15:0],DDR_ADDR[13:0],BA[2:0],DDR_CKE[0:0],ODT[0:0],CS[0:0],DM[1:0],RAS,CAS,DDR_WE,DDR_CLKP[0:0],DDR_CLKN[0:0],LDQS_P,LDQS_N,UDQS_P,UDQS_N,RESET_N" */
/* synthesis syn_force_seq_prim="SysClk" */;
  input Clk_100MHz;
  input SysClk /* synthesis syn_isclock = 1 */;
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
  output RESET_N;
endmodule
