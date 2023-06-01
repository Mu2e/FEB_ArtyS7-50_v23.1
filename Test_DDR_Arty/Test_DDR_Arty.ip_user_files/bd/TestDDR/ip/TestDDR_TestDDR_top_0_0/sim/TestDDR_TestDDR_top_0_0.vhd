-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2023 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:TestDDR_top:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY TestDDR_TestDDR_top_0_0 IS
  PORT (
    Clk_100MHz : IN STD_LOGIC;
    SysClk : IN STD_LOGIC;
    CpldRst : IN STD_LOGIC;
    Clk_200MHz : IN STD_LOGIC;
    led_4bits_tri_o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rgb_led_tri_o : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    push_buttons_4bits_tri_i : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    DDR_DATA : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    DDR_ADDR : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    BA : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    DDR_CKE : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    ODT : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    CS : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    DM : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    RAS : OUT STD_LOGIC;
    CAS : OUT STD_LOGIC;
    DDR_WE : OUT STD_LOGIC;
    DDR_CLKP : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    DDR_CLKN : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    LDQS_P : INOUT STD_LOGIC;
    LDQS_N : INOUT STD_LOGIC;
    UDQS_P : INOUT STD_LOGIC;
    UDQS_N : INOUT STD_LOGIC;
    RESET_N : OUT STD_LOGIC
  );
END TestDDR_TestDDR_top_0_0;

ARCHITECTURE TestDDR_TestDDR_top_0_0_arch OF TestDDR_TestDDR_top_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF TestDDR_TestDDR_top_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT TestDDR_top IS
    GENERIC (
      DATA_WIDTH : INTEGER;
      DDR3L_ADDR : INTEGER;
      APP_ADDR : INTEGER
    );
    PORT (
      Clk_100MHz : IN STD_LOGIC;
      SysClk : IN STD_LOGIC;
      CpldRst : IN STD_LOGIC;
      Clk_200MHz : IN STD_LOGIC;
      led_4bits_tri_o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      rgb_led_tri_o : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      push_buttons_4bits_tri_i : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      DDR_DATA : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      DDR_ADDR : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      BA : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      DDR_CKE : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      ODT : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      CS : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      DM : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      RAS : OUT STD_LOGIC;
      CAS : OUT STD_LOGIC;
      DDR_WE : OUT STD_LOGIC;
      DDR_CLKP : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      DDR_CLKN : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      LDQS_P : INOUT STD_LOGIC;
      LDQS_N : INOUT STD_LOGIC;
      UDQS_P : INOUT STD_LOGIC;
      UDQS_N : INOUT STD_LOGIC;
      RESET_N : OUT STD_LOGIC
    );
  END COMPONENT TestDDR_top;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF RESET_N: SIGNAL IS "XIL_INTERFACENAME RESET_N, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF RESET_N: SIGNAL IS "xilinx.com:signal:reset:1.0 RESET_N RST";
BEGIN
  U0 : TestDDR_top
    GENERIC MAP (
      DATA_WIDTH => 16,
      DDR3L_ADDR => 14,
      APP_ADDR => 27
    )
    PORT MAP (
      Clk_100MHz => Clk_100MHz,
      SysClk => SysClk,
      CpldRst => CpldRst,
      Clk_200MHz => Clk_200MHz,
      led_4bits_tri_o => led_4bits_tri_o,
      rgb_led_tri_o => rgb_led_tri_o,
      push_buttons_4bits_tri_i => push_buttons_4bits_tri_i,
      DDR_DATA => DDR_DATA,
      DDR_ADDR => DDR_ADDR,
      BA => BA,
      DDR_CKE => DDR_CKE,
      ODT => ODT,
      CS => CS,
      DM => DM,
      RAS => RAS,
      CAS => CAS,
      DDR_WE => DDR_WE,
      DDR_CLKP => DDR_CLKP,
      DDR_CLKN => DDR_CLKN,
      LDQS_P => LDQS_P,
      LDQS_N => LDQS_N,
      UDQS_P => UDQS_P,
      UDQS_N => UDQS_N,
      RESET_N => RESET_N
    );
END TestDDR_TestDDR_top_0_0_arch;
