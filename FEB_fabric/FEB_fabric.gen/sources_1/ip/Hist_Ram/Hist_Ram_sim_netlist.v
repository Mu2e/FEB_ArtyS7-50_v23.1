// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Jun  1 16:04:35 2023
// Host        : CD-135239 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/v23.1/FEB_fabric/FEB_fabric.gen/sources_1/ip/Hist_Ram/Hist_Ram_sim_netlist.v
// Design      : Hist_Ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Hist_Ram,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module Hist_Ram
   (clka,
    rsta,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [9:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [15:0]dinb;
  wire [31:0]douta;
  wire [15:0]doutb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.2102 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "Hist_Ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "SR" *) 
  (* C_RST_PRIORITY_B = "SR" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  Hist_Ram_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 32720)
`pragma protect data_block
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
FdE=
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
