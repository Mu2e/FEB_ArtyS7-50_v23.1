// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Jun  1 16:04:34 2023
// Host        : CD-135239 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Hist_Ram_sim_netlist.v
// Design      : Hist_Ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Hist_Ram,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 32800)
`pragma protect data_block
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
/LAV4FlD2Zm8ZjIKzSOx8cmhLllqjT5RBg==
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
