// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Jun  1 16:04:34 2023
// Host        : CD-135239 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/v23.1/FEB_fabric/FEB_fabric.gen/sources_1/ip/AFEemu/AFEemu_sim_netlist.v
// Design      : AFEemu
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AFEemu,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module AFEemu
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
  AFEemu_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19056)
`pragma protect data_block
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
7KEC5PaxCe/6B670UcvTY2w4
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
