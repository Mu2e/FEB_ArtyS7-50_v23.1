// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Jun  1 16:04:33 2023
// Host        : CD-135239 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ AFEemu_sim_netlist.v
// Design      : AFEemu
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AFEemu,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [13:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [13:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [13:0]dina;
  wire [13:0]doutb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [13:0]NLW_U0_douta_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.694399 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "AFEemu.mem" *) 
  (* C_INIT_FILE_NAME = "AFEemu.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "14" *) 
  (* C_READ_WIDTH_B = "14" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
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
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "14" *) 
  (* C_WRITE_WIDTH_B = "14" *) 
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
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[13:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[13:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19152)
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
