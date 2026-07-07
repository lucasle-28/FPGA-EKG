-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "07/06/2026 16:57:18"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fpga_ekg_top IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	ADC_CONVST : OUT std_logic;
	ADC_DIN : OUT std_logic;
	ADC_DOUT : IN std_logic;
	ADC_SCLK : OUT std_logic;
	GPIO_0 : INOUT std_logic_vector(35 DOWNTO 0)
	);
END fpga_ekg_top;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ADC_CONVST	=>  Location: PIN_AJ4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ADC_DIN	=>  Location: PIN_AK4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ADC_SCLK	=>  Location: PIN_AK2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[0]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[1]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[2]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[3]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[4]	=>  Location: PIN_AK16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[5]	=>  Location: PIN_AK18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[6]	=>  Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[7]	=>  Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[8]	=>  Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[9]	=>  Location: PIN_AJ16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[10]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[11]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[12]	=>  Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[13]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[14]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[15]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[16]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[17]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[18]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[19]	=>  Location: PIN_AC20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[20]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[21]	=>  Location: PIN_AJ20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[22]	=>  Location: PIN_AH20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[23]	=>  Location: PIN_AK21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[24]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[25]	=>  Location: PIN_AD20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[26]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[27]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[28]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[29]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[30]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[31]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[32]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[33]	=>  Location: PIN_AG20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[34]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[35]	=>  Location: PIN_AJ21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_DOUT	=>  Location: PIN_AK3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF fpga_ekg_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ADC_CONVST : std_logic;
SIGNAL ww_ADC_DIN : std_logic;
SIGNAL ww_ADC_DOUT : std_logic;
SIGNAL ww_ADC_SCLK : std_logic;
SIGNAL \u_dc_block|Mult0~8_AX_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \u_dc_block|Mult0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \u_dc_block|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \u_notch|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_notch|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_notch|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_notch|Mult0~8_AX_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \u_notch|Mult0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \u_notch|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \u_notch|Mult3~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_notch|Mult3~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_notch|Mult3~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_notch|Mult3~8_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u_notch|Mult3~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \u_notch|Mult3~8_BX_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \u_notch|Mult3~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \u_notch|Mult3~8_RESULTB_bus\ : std_logic_vector(36 DOWNTO 0);
SIGNAL \u_notch|Mult1~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_notch|Mult1~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_notch|Mult1~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_notch|Mult1~8_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u_notch|Mult1~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \u_notch|Mult1~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \u_notch|Mult2~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_notch|Mult2~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_notch|Mult2~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_notch|Mult2~8_AX_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \u_notch|Mult2~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \u_notch|Mult2~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \u_dc_block|Mult0~8_resulta\ : std_logic;
SIGNAL \u_dc_block|Mult0~9\ : std_logic;
SIGNAL \u_dc_block|Mult0~10\ : std_logic;
SIGNAL \u_dc_block|Mult0~11\ : std_logic;
SIGNAL \u_dc_block|Mult0~12\ : std_logic;
SIGNAL \u_dc_block|Mult0~13\ : std_logic;
SIGNAL \u_dc_block|Mult0~14\ : std_logic;
SIGNAL \u_dc_block|Mult0~15\ : std_logic;
SIGNAL \u_dc_block|Mult0~16\ : std_logic;
SIGNAL \u_dc_block|Mult0~17\ : std_logic;
SIGNAL \u_dc_block|Mult0~18\ : std_logic;
SIGNAL \u_dc_block|Mult0~19\ : std_logic;
SIGNAL \u_dc_block|Mult0~20\ : std_logic;
SIGNAL \u_dc_block|Mult0~21\ : std_logic;
SIGNAL \u_dc_block|Mult0~22\ : std_logic;
SIGNAL \u_dc_block|Mult0~39\ : std_logic;
SIGNAL \u_dc_block|Mult0~40\ : std_logic;
SIGNAL \u_dc_block|Mult0~41\ : std_logic;
SIGNAL \u_dc_block|Mult0~42\ : std_logic;
SIGNAL \u_dc_block|Mult0~43\ : std_logic;
SIGNAL \u_dc_block|Mult0~44\ : std_logic;
SIGNAL \u_dc_block|Mult0~45\ : std_logic;
SIGNAL \u_dc_block|Mult0~46\ : std_logic;
SIGNAL \u_dc_block|Mult0~47\ : std_logic;
SIGNAL \u_dc_block|Mult0~48\ : std_logic;
SIGNAL \u_dc_block|Mult0~49\ : std_logic;
SIGNAL \u_dc_block|Mult0~50\ : std_logic;
SIGNAL \u_dc_block|Mult0~51\ : std_logic;
SIGNAL \u_dc_block|Mult0~52\ : std_logic;
SIGNAL \u_dc_block|Mult0~53\ : std_logic;
SIGNAL \u_dc_block|Mult0~54\ : std_logic;
SIGNAL \u_dc_block|Mult0~55\ : std_logic;
SIGNAL \u_dc_block|Mult0~56\ : std_logic;
SIGNAL \u_dc_block|Mult0~57\ : std_logic;
SIGNAL \u_dc_block|Mult0~58\ : std_logic;
SIGNAL \u_dc_block|Mult0~59\ : std_logic;
SIGNAL \u_dc_block|Mult0~60\ : std_logic;
SIGNAL \u_dc_block|Mult0~61\ : std_logic;
SIGNAL \u_dc_block|Mult0~62\ : std_logic;
SIGNAL \u_dc_block|Mult0~63\ : std_logic;
SIGNAL \u_dc_block|Mult0~64\ : std_logic;
SIGNAL \u_dc_block|Mult0~65\ : std_logic;
SIGNAL \u_dc_block|Mult0~66\ : std_logic;
SIGNAL \u_dc_block|Mult0~67\ : std_logic;
SIGNAL \u_dc_block|Mult0~68\ : std_logic;
SIGNAL \u_dc_block|Mult0~69\ : std_logic;
SIGNAL \u_dc_block|Mult0~70\ : std_logic;
SIGNAL \u_dc_block|Mult0~71\ : std_logic;
SIGNAL \u_notch|Mult0~39\ : std_logic;
SIGNAL \u_notch|Mult0~40\ : std_logic;
SIGNAL \u_notch|Mult0~41\ : std_logic;
SIGNAL \u_notch|Mult0~42\ : std_logic;
SIGNAL \u_notch|Mult0~43\ : std_logic;
SIGNAL \u_notch|Mult0~44\ : std_logic;
SIGNAL \u_notch|Mult0~45\ : std_logic;
SIGNAL \u_notch|Mult0~46\ : std_logic;
SIGNAL \u_notch|Mult0~47\ : std_logic;
SIGNAL \u_notch|Mult0~48\ : std_logic;
SIGNAL \u_notch|Mult0~49\ : std_logic;
SIGNAL \u_notch|Mult0~50\ : std_logic;
SIGNAL \u_notch|Mult0~51\ : std_logic;
SIGNAL \u_notch|Mult0~52\ : std_logic;
SIGNAL \u_notch|Mult0~53\ : std_logic;
SIGNAL \u_notch|Mult0~54\ : std_logic;
SIGNAL \u_notch|Mult0~55\ : std_logic;
SIGNAL \u_notch|Mult0~56\ : std_logic;
SIGNAL \u_notch|Mult0~57\ : std_logic;
SIGNAL \u_notch|Mult0~58\ : std_logic;
SIGNAL \u_notch|Mult0~59\ : std_logic;
SIGNAL \u_notch|Mult0~60\ : std_logic;
SIGNAL \u_notch|Mult0~61\ : std_logic;
SIGNAL \u_notch|Mult0~62\ : std_logic;
SIGNAL \u_notch|Mult0~63\ : std_logic;
SIGNAL \u_notch|Mult0~64\ : std_logic;
SIGNAL \u_notch|Mult0~65\ : std_logic;
SIGNAL \u_notch|Mult0~66\ : std_logic;
SIGNAL \u_notch|Mult0~67\ : std_logic;
SIGNAL \u_notch|Mult0~68\ : std_logic;
SIGNAL \u_notch|Mult0~69\ : std_logic;
SIGNAL \u_notch|Mult0~70\ : std_logic;
SIGNAL \u_notch|Mult0~71\ : std_logic;
SIGNAL \u_notch|Mult3~40\ : std_logic;
SIGNAL \u_notch|Mult3~41\ : std_logic;
SIGNAL \u_notch|Mult3~42\ : std_logic;
SIGNAL \u_notch|Mult3~43\ : std_logic;
SIGNAL \u_notch|Mult3~44\ : std_logic;
SIGNAL \u_notch|Mult3~45\ : std_logic;
SIGNAL \u_notch|Mult3~46\ : std_logic;
SIGNAL \u_notch|Mult3~47\ : std_logic;
SIGNAL \u_notch|Mult3~48\ : std_logic;
SIGNAL \u_notch|Mult3~49\ : std_logic;
SIGNAL \u_notch|Mult3~50\ : std_logic;
SIGNAL \u_notch|Mult3~51\ : std_logic;
SIGNAL \u_notch|Mult3~52\ : std_logic;
SIGNAL \u_notch|Mult3~53\ : std_logic;
SIGNAL \u_notch|Mult3~54\ : std_logic;
SIGNAL \u_notch|Mult3~55\ : std_logic;
SIGNAL \u_notch|Mult3~56\ : std_logic;
SIGNAL \u_notch|Mult3~57\ : std_logic;
SIGNAL \u_notch|Mult3~58\ : std_logic;
SIGNAL \u_notch|Mult3~59\ : std_logic;
SIGNAL \u_notch|Mult3~60\ : std_logic;
SIGNAL \u_notch|Mult3~61\ : std_logic;
SIGNAL \u_notch|Mult3~62\ : std_logic;
SIGNAL \u_notch|Mult3~63\ : std_logic;
SIGNAL \u_notch|Mult3~64\ : std_logic;
SIGNAL \u_notch|Mult3~65\ : std_logic;
SIGNAL \u_notch|Mult3~66\ : std_logic;
SIGNAL \u_notch|Mult3~67\ : std_logic;
SIGNAL \u_notch|Mult3~68\ : std_logic;
SIGNAL \u_notch|Mult3~69\ : std_logic;
SIGNAL \u_notch|Mult3~70\ : std_logic;
SIGNAL \u_notch|Mult3~71\ : std_logic;
SIGNAL \u_notch|Mult1~40\ : std_logic;
SIGNAL \u_notch|Mult1~41\ : std_logic;
SIGNAL \u_notch|Mult1~42\ : std_logic;
SIGNAL \u_notch|Mult1~43\ : std_logic;
SIGNAL \u_notch|Mult1~44\ : std_logic;
SIGNAL \u_notch|Mult1~45\ : std_logic;
SIGNAL \u_notch|Mult1~46\ : std_logic;
SIGNAL \u_notch|Mult1~47\ : std_logic;
SIGNAL \u_notch|Mult1~48\ : std_logic;
SIGNAL \u_notch|Mult1~49\ : std_logic;
SIGNAL \u_notch|Mult1~50\ : std_logic;
SIGNAL \u_notch|Mult1~51\ : std_logic;
SIGNAL \u_notch|Mult1~52\ : std_logic;
SIGNAL \u_notch|Mult1~53\ : std_logic;
SIGNAL \u_notch|Mult1~54\ : std_logic;
SIGNAL \u_notch|Mult1~55\ : std_logic;
SIGNAL \u_notch|Mult1~56\ : std_logic;
SIGNAL \u_notch|Mult1~57\ : std_logic;
SIGNAL \u_notch|Mult1~58\ : std_logic;
SIGNAL \u_notch|Mult1~59\ : std_logic;
SIGNAL \u_notch|Mult1~60\ : std_logic;
SIGNAL \u_notch|Mult1~61\ : std_logic;
SIGNAL \u_notch|Mult1~62\ : std_logic;
SIGNAL \u_notch|Mult1~63\ : std_logic;
SIGNAL \u_notch|Mult1~64\ : std_logic;
SIGNAL \u_notch|Mult1~65\ : std_logic;
SIGNAL \u_notch|Mult1~66\ : std_logic;
SIGNAL \u_notch|Mult1~67\ : std_logic;
SIGNAL \u_notch|Mult1~68\ : std_logic;
SIGNAL \u_notch|Mult1~69\ : std_logic;
SIGNAL \u_notch|Mult1~70\ : std_logic;
SIGNAL \u_notch|Mult1~71\ : std_logic;
SIGNAL \u_notch|Mult2~39\ : std_logic;
SIGNAL \u_notch|Mult2~40\ : std_logic;
SIGNAL \u_notch|Mult2~41\ : std_logic;
SIGNAL \u_notch|Mult2~42\ : std_logic;
SIGNAL \u_notch|Mult2~43\ : std_logic;
SIGNAL \u_notch|Mult2~44\ : std_logic;
SIGNAL \u_notch|Mult2~45\ : std_logic;
SIGNAL \u_notch|Mult2~46\ : std_logic;
SIGNAL \u_notch|Mult2~47\ : std_logic;
SIGNAL \u_notch|Mult2~48\ : std_logic;
SIGNAL \u_notch|Mult2~49\ : std_logic;
SIGNAL \u_notch|Mult2~50\ : std_logic;
SIGNAL \u_notch|Mult2~51\ : std_logic;
SIGNAL \u_notch|Mult2~52\ : std_logic;
SIGNAL \u_notch|Mult2~53\ : std_logic;
SIGNAL \u_notch|Mult2~54\ : std_logic;
SIGNAL \u_notch|Mult2~55\ : std_logic;
SIGNAL \u_notch|Mult2~56\ : std_logic;
SIGNAL \u_notch|Mult2~57\ : std_logic;
SIGNAL \u_notch|Mult2~58\ : std_logic;
SIGNAL \u_notch|Mult2~59\ : std_logic;
SIGNAL \u_notch|Mult2~60\ : std_logic;
SIGNAL \u_notch|Mult2~61\ : std_logic;
SIGNAL \u_notch|Mult2~62\ : std_logic;
SIGNAL \u_notch|Mult2~63\ : std_logic;
SIGNAL \u_notch|Mult2~64\ : std_logic;
SIGNAL \u_notch|Mult2~65\ : std_logic;
SIGNAL \u_notch|Mult2~66\ : std_logic;
SIGNAL \u_notch|Mult2~67\ : std_logic;
SIGNAL \u_notch|Mult2~68\ : std_logic;
SIGNAL \u_notch|Mult2~69\ : std_logic;
SIGNAL \u_notch|Mult2~70\ : std_logic;
SIGNAL \u_notch|Mult2~71\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \GPIO_0[2]~input_o\ : std_logic;
SIGNAL \GPIO_0[3]~input_o\ : std_logic;
SIGNAL \GPIO_0[4]~input_o\ : std_logic;
SIGNAL \GPIO_0[5]~input_o\ : std_logic;
SIGNAL \GPIO_0[6]~input_o\ : std_logic;
SIGNAL \GPIO_0[7]~input_o\ : std_logic;
SIGNAL \GPIO_0[8]~input_o\ : std_logic;
SIGNAL \GPIO_0[9]~input_o\ : std_logic;
SIGNAL \GPIO_0[10]~input_o\ : std_logic;
SIGNAL \GPIO_0[11]~input_o\ : std_logic;
SIGNAL \GPIO_0[12]~input_o\ : std_logic;
SIGNAL \GPIO_0[13]~input_o\ : std_logic;
SIGNAL \GPIO_0[14]~input_o\ : std_logic;
SIGNAL \GPIO_0[15]~input_o\ : std_logic;
SIGNAL \GPIO_0[16]~input_o\ : std_logic;
SIGNAL \GPIO_0[17]~input_o\ : std_logic;
SIGNAL \GPIO_0[18]~input_o\ : std_logic;
SIGNAL \GPIO_0[19]~input_o\ : std_logic;
SIGNAL \GPIO_0[20]~input_o\ : std_logic;
SIGNAL \GPIO_0[21]~input_o\ : std_logic;
SIGNAL \GPIO_0[22]~input_o\ : std_logic;
SIGNAL \GPIO_0[23]~input_o\ : std_logic;
SIGNAL \GPIO_0[24]~input_o\ : std_logic;
SIGNAL \GPIO_0[25]~input_o\ : std_logic;
SIGNAL \GPIO_0[26]~input_o\ : std_logic;
SIGNAL \GPIO_0[27]~input_o\ : std_logic;
SIGNAL \GPIO_0[28]~input_o\ : std_logic;
SIGNAL \GPIO_0[29]~input_o\ : std_logic;
SIGNAL \GPIO_0[30]~input_o\ : std_logic;
SIGNAL \GPIO_0[31]~input_o\ : std_logic;
SIGNAL \GPIO_0[32]~input_o\ : std_logic;
SIGNAL \GPIO_0[33]~input_o\ : std_logic;
SIGNAL \GPIO_0[34]~input_o\ : std_logic;
SIGNAL \GPIO_0[35]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \blink_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \blink_counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \blink_led~0_combout\ : std_logic;
SIGNAL \blink_led~q\ : std_logic;
SIGNAL \u_sample_clock|Add0~61_sumout\ : std_logic;
SIGNAL \u_sample_clock|counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u_sample_clock|Add0~62\ : std_logic;
SIGNAL \u_sample_clock|Add0~33_sumout\ : std_logic;
SIGNAL \u_sample_clock|Add0~34\ : std_logic;
SIGNAL \u_sample_clock|Add0~57_sumout\ : std_logic;
SIGNAL \u_sample_clock|counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u_sample_clock|Add0~58\ : std_logic;
SIGNAL \u_sample_clock|Add0~65_sumout\ : std_logic;
SIGNAL \u_sample_clock|Add0~66\ : std_logic;
SIGNAL \u_sample_clock|Add0~69_sumout\ : std_logic;
SIGNAL \u_sample_clock|Add0~70\ : std_logic;
SIGNAL \u_sample_clock|Add0~9_sumout\ : std_logic;
SIGNAL \u_sample_clock|Add0~10\ : std_logic;
SIGNAL \u_sample_clock|Add0~13_sumout\ : std_logic;
SIGNAL \u_sample_clock|Add0~14\ : std_logic;
SIGNAL \u_sample_clock|Add0~17_sumout\ : std_logic;
SIGNAL \u_sample_clock|Add0~18\ : std_logic;
SIGNAL \u_sample_clock|Add0~21_sumout\ : std_logic;
SIGNAL \u_sample_clock|Add0~22\ : std_logic;
SIGNAL \u_sample_clock|Add0~29_sumout\ : std_logic;
SIGNAL \u_sample_clock|Add0~30\ : std_logic;
SIGNAL \u_sample_clock|Add0~25_sumout\ : std_logic;
SIGNAL \u_sample_clock|Add0~26\ : std_logic;
SIGNAL \u_sample_clock|Add0~53_sumout\ : std_logic;
SIGNAL \u_sample_clock|counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \u_sample_clock|Equal0~2_combout\ : std_logic;
SIGNAL \u_sample_clock|Add0~54\ : std_logic;
SIGNAL \u_sample_clock|Add0~5_sumout\ : std_logic;
SIGNAL \u_sample_clock|Add0~6\ : std_logic;
SIGNAL \u_sample_clock|Add0~49_sumout\ : std_logic;
SIGNAL \u_sample_clock|Add0~50\ : std_logic;
SIGNAL \u_sample_clock|Add0~45_sumout\ : std_logic;
SIGNAL \u_sample_clock|Add0~46\ : std_logic;
SIGNAL \u_sample_clock|Add0~41_sumout\ : std_logic;
SIGNAL \u_sample_clock|Add0~42\ : std_logic;
SIGNAL \u_sample_clock|Add0~37_sumout\ : std_logic;
SIGNAL \u_sample_clock|Equal0~1_combout\ : std_logic;
SIGNAL \u_sample_clock|Equal0~0_combout\ : std_logic;
SIGNAL \u_sample_clock|Add0~38\ : std_logic;
SIGNAL \u_sample_clock|Add0~1_sumout\ : std_logic;
SIGNAL \u_sample_clock|Equal0~3_combout\ : std_logic;
SIGNAL \u_sample_clock|sample_tick~q\ : std_logic;
SIGNAL \u_adc_driver|Add1~1_sumout\ : std_logic;
SIGNAL \u_adc_driver|Add1~2\ : std_logic;
SIGNAL \u_adc_driver|Add1~25_sumout\ : std_logic;
SIGNAL \u_adc_driver|state.S_IDLE~q\ : std_logic;
SIGNAL \u_adc_driver|Selector12~0_combout\ : std_logic;
SIGNAL \u_adc_driver|state.S_IDLE~DUPLICATE_q\ : std_logic;
SIGNAL \u_adc_driver|conv_cnt[1]~0_combout\ : std_logic;
SIGNAL \u_adc_driver|Selector2~0_combout\ : std_logic;
SIGNAL \u_adc_driver|wait_cnt[6]~0_combout\ : std_logic;
SIGNAL \u_adc_driver|Add1~26\ : std_logic;
SIGNAL \u_adc_driver|Add1~21_sumout\ : std_logic;
SIGNAL \u_adc_driver|Add1~22\ : std_logic;
SIGNAL \u_adc_driver|Add1~17_sumout\ : std_logic;
SIGNAL \u_adc_driver|Add1~18\ : std_logic;
SIGNAL \u_adc_driver|Add1~13_sumout\ : std_logic;
SIGNAL \u_adc_driver|Add1~14\ : std_logic;
SIGNAL \u_adc_driver|Add1~9_sumout\ : std_logic;
SIGNAL \u_adc_driver|Add1~10\ : std_logic;
SIGNAL \u_adc_driver|Add1~5_sumout\ : std_logic;
SIGNAL \u_adc_driver|Equal1~0_combout\ : std_logic;
SIGNAL \u_adc_driver|Selector16~0_combout\ : std_logic;
SIGNAL \u_adc_driver|clk_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u_adc_driver|Selector16~2_combout\ : std_logic;
SIGNAL \u_adc_driver|bit_cnt[0]~3_combout\ : std_logic;
SIGNAL \u_adc_driver|bit_cnt[1]~2_combout\ : std_logic;
SIGNAL \u_adc_driver|Equal2~1_combout\ : std_logic;
SIGNAL \u_adc_driver|bit_cnt[3]~0_combout\ : std_logic;
SIGNAL \u_adc_driver|Selector15~0_combout\ : std_logic;
SIGNAL \u_adc_driver|Selector15~1_combout\ : std_logic;
SIGNAL \u_adc_driver|state.S_SHIFT~q\ : std_logic;
SIGNAL \u_adc_driver|bit_cnt[2]~1_combout\ : std_logic;
SIGNAL \u_adc_driver|Equal2~0_combout\ : std_logic;
SIGNAL \u_adc_driver|Selector13~0_combout\ : std_logic;
SIGNAL \u_adc_driver|Selector13~1_combout\ : std_logic;
SIGNAL \u_adc_driver|state.S_CONVST~q\ : std_logic;
SIGNAL \u_adc_driver|conv_cnt[0]~1_combout\ : std_logic;
SIGNAL \u_adc_driver|Selector14~0_combout\ : std_logic;
SIGNAL \u_adc_driver|Selector14~1_combout\ : std_logic;
SIGNAL \u_adc_driver|state.S_WAIT~q\ : std_logic;
SIGNAL \u_adc_driver|clk_cnt[0]~1_combout\ : std_logic;
SIGNAL \u_adc_driver|clk_cnt[1]~0_combout\ : std_logic;
SIGNAL \u_adc_driver|Selector16~1_combout\ : std_logic;
SIGNAL \u_adc_driver|state.S_DONE~q\ : std_logic;
SIGNAL \u_adc_driver|Selector3~0_combout\ : std_logic;
SIGNAL \u_adc_driver|busy~q\ : std_logic;
SIGNAL \u_adc_driver|sample_valid~q\ : std_logic;
SIGNAL \adc_q15_valid~q\ : std_logic;
SIGNAL \u_notch|acc[24]~0_combout\ : std_logic;
SIGNAL \u_notch|state.S_IDLE~feeder_combout\ : std_logic;
SIGNAL \u_notch|state.S_IDLE~q\ : std_logic;
SIGNAL \u_notch|state~18_combout\ : std_logic;
SIGNAL \u_notch|state.S_MAC1~q\ : std_logic;
SIGNAL \u_notch|state.S_MAC2~q\ : std_logic;
SIGNAL \u_notch|state.S_MAC3~q\ : std_logic;
SIGNAL \u_notch|state.S_MAC4~q\ : std_logic;
SIGNAL \u_notch|state.S_MAC5~q\ : std_logic;
SIGNAL \u_notch|state.S_DONE~q\ : std_logic;
SIGNAL \u_notch|out_valid~feeder_combout\ : std_logic;
SIGNAL \u_notch|out_valid~q\ : std_logic;
SIGNAL \u_dc_block|out_valid~feeder_combout\ : std_logic;
SIGNAL \u_dc_block|out_valid~q\ : std_logic;
SIGNAL \filtered_valid~feeder_combout\ : std_logic;
SIGNAL \filtered_valid~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \GPIO_0[0]~input_o\ : std_logic;
SIGNAL \GPIO_0[1]~input_o\ : std_logic;
SIGNAL \leads_off~0_combout\ : std_logic;
SIGNAL \ADC_DOUT~input_o\ : std_logic;
SIGNAL \u_adc_driver|rx_reg[0]~0_combout\ : std_logic;
SIGNAL \u_adc_driver|rx_reg[2]~feeder_combout\ : std_logic;
SIGNAL \u_adc_driver|sample_data[4]~feeder_combout\ : std_logic;
SIGNAL \u_adc_driver|rx_reg[5]~feeder_combout\ : std_logic;
SIGNAL \u_adc_driver|sample_data[5]~feeder_combout\ : std_logic;
SIGNAL \u_adc_driver|rx_reg[6]~feeder_combout\ : std_logic;
SIGNAL \u_adc_driver|sample_data[6]~feeder_combout\ : std_logic;
SIGNAL \u_adc_driver|sample_data[7]~feeder_combout\ : std_logic;
SIGNAL \u_adc_driver|rx_reg[8]~feeder_combout\ : std_logic;
SIGNAL \u_adc_driver|rx_reg[9]~feeder_combout\ : std_logic;
SIGNAL \u_adc_driver|sample_data[10]~feeder_combout\ : std_logic;
SIGNAL \adc_q15[15]~0_combout\ : std_logic;
SIGNAL \u_notch|Mult0~38\ : std_logic;
SIGNAL \u_notch|x_n[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n1[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n1[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n1[6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \u_notch|x_n1[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n1[7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \u_notch|x_n1[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n1[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n1[9]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \u_notch|x_n1[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n[10]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \u_notch|x_n[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n1[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n[11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \u_notch|x_n[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n1[11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \u_notch|x_n1[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n1[12]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \u_notch|x_n1[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n[13]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \u_notch|x_n[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n1[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n1[14]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \u_notch|x_n1[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n[15]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \u_notch|x_n[15]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|x_n1[15]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \u_notch|x_n1[15]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|Mult2~38\ : std_logic;
SIGNAL \u_notch|Add0~88_combout\ : std_logic;
SIGNAL \u_notch|Add0~89_combout\ : std_logic;
SIGNAL \u_notch|Add0~34\ : std_logic;
SIGNAL \u_notch|Add0~9_sumout\ : std_logic;
SIGNAL \u_notch|Selector6~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~10\ : std_logic;
SIGNAL \u_notch|Add0~29_sumout\ : std_logic;
SIGNAL \u_notch|Selector5~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~30\ : std_logic;
SIGNAL \u_notch|Add0~25_sumout\ : std_logic;
SIGNAL \u_notch|Selector4~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~26\ : std_logic;
SIGNAL \u_notch|Add0~21_sumout\ : std_logic;
SIGNAL \u_notch|Selector3~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~22\ : std_logic;
SIGNAL \u_notch|Add0~17_sumout\ : std_logic;
SIGNAL \u_notch|Selector2~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~18\ : std_logic;
SIGNAL \u_notch|Add0~14\ : std_logic;
SIGNAL \u_notch|Add0~5_sumout\ : std_logic;
SIGNAL \u_notch|Selector0~0_combout\ : std_logic;
SIGNAL \u_notch|Mult0~23\ : std_logic;
SIGNAL \u_notch|LessThan1~0_combout\ : std_logic;
SIGNAL \u_notch|Mult0~37\ : std_logic;
SIGNAL \u_notch|Mult2~26\ : std_logic;
SIGNAL \u_notch|Mult0~28\ : std_logic;
SIGNAL \u_notch|Mult1~28\ : std_logic;
SIGNAL \u_notch|Mult0~30\ : std_logic;
SIGNAL \u_notch|Mult1~30\ : std_logic;
SIGNAL \u_notch|Mult0~32\ : std_logic;
SIGNAL \u_notch|Mult1~32\ : std_logic;
SIGNAL \u_notch|Mult0~33\ : std_logic;
SIGNAL \u_notch|Mult1~33\ : std_logic;
SIGNAL \u_notch|Mult2~33\ : std_logic;
SIGNAL \u_notch|Mult1~34\ : std_logic;
SIGNAL \u_notch|Mult0~35\ : std_logic;
SIGNAL \u_notch|Mult1~35\ : std_logic;
SIGNAL \u_notch|Mult0~36\ : std_logic;
SIGNAL \u_notch|Mult3~36\ : std_logic;
SIGNAL \u_notch|Mult4~36\ : std_logic;
SIGNAL \u_notch|Mult2~36\ : std_logic;
SIGNAL \u_notch|Add0~119_combout\ : std_logic;
SIGNAL \u_notch|Mult1~36\ : std_logic;
SIGNAL \u_notch|Add0~120_combout\ : std_logic;
SIGNAL \u_notch|Mult4~27\ : std_logic;
SIGNAL \u_notch|Mult2~27\ : std_logic;
SIGNAL \u_notch|Add0~101_combout\ : std_logic;
SIGNAL \u_notch|Mult3~27\ : std_logic;
SIGNAL \u_notch|Mult1~27\ : std_logic;
SIGNAL \u_notch|Add0~102_combout\ : std_logic;
SIGNAL \u_notch|Mult0~27\ : std_logic;
SIGNAL \u_notch|Mult2~24\ : std_logic;
SIGNAL \u_notch|Mult4~24\ : std_logic;
SIGNAL \u_notch|Add0~127_combout\ : std_logic;
SIGNAL \u_notch|Mult3~24\ : std_logic;
SIGNAL \u_notch|Mult1~24\ : std_logic;
SIGNAL \u_notch|Add0~128_combout\ : std_logic;
SIGNAL \u_notch|Mult0~24\ : std_logic;
SIGNAL \u_notch|Mult1~22\ : std_logic;
SIGNAL \u_notch|Mult2~22\ : std_logic;
SIGNAL \u_notch|Mult4~22\ : std_logic;
SIGNAL \u_notch|Add0~139_combout\ : std_logic;
SIGNAL \u_notch|Mult3~22\ : std_logic;
SIGNAL \u_notch|Add0~140_combout\ : std_logic;
SIGNAL \u_notch|Mult0~21\ : std_logic;
SIGNAL \u_notch|Mult4~21\ : std_logic;
SIGNAL \u_notch|Mult2~21\ : std_logic;
SIGNAL \u_notch|Add0~145_combout\ : std_logic;
SIGNAL \u_notch|Mult1~21\ : std_logic;
SIGNAL \u_notch|Mult3~21\ : std_logic;
SIGNAL \u_notch|Add0~146_combout\ : std_logic;
SIGNAL \u_notch|Mult3~20\ : std_logic;
SIGNAL \u_notch|Mult2~20\ : std_logic;
SIGNAL \u_notch|Mult4~20\ : std_logic;
SIGNAL \u_notch|Add0~151_combout\ : std_logic;
SIGNAL \u_notch|Mult1~20\ : std_logic;
SIGNAL \u_notch|Add0~152_combout\ : std_logic;
SIGNAL \u_notch|Mult0~20\ : std_logic;
SIGNAL \u_notch|Mult2~19\ : std_logic;
SIGNAL \u_notch|Mult4~19\ : std_logic;
SIGNAL \u_notch|Add0~157_combout\ : std_logic;
SIGNAL \u_notch|Mult1~19\ : std_logic;
SIGNAL \u_notch|Mult3~19\ : std_logic;
SIGNAL \u_notch|Add0~158_combout\ : std_logic;
SIGNAL \u_notch|Mult1~18\ : std_logic;
SIGNAL \u_notch|Mult2~18\ : std_logic;
SIGNAL \u_notch|Mult4~18\ : std_logic;
SIGNAL \u_notch|Add0~163_combout\ : std_logic;
SIGNAL \u_notch|Mult3~18\ : std_logic;
SIGNAL \u_notch|Add0~164_combout\ : std_logic;
SIGNAL \u_notch|Mult0~18\ : std_logic;
SIGNAL \u_notch|Mult1~17\ : std_logic;
SIGNAL \u_notch|Mult4~17\ : std_logic;
SIGNAL \u_notch|Mult2~17\ : std_logic;
SIGNAL \u_notch|Add0~169_combout\ : std_logic;
SIGNAL \u_notch|Mult3~17\ : std_logic;
SIGNAL \u_notch|Add0~170_combout\ : std_logic;
SIGNAL \u_notch|Mult0~17\ : std_logic;
SIGNAL \u_notch|Mult1~16\ : std_logic;
SIGNAL \u_notch|Mult3~16\ : std_logic;
SIGNAL \u_notch|Mult4~16\ : std_logic;
SIGNAL \u_notch|Mult2~16\ : std_logic;
SIGNAL \u_notch|Add0~175_combout\ : std_logic;
SIGNAL \u_notch|Add0~176_combout\ : std_logic;
SIGNAL \u_notch|Mult0~16\ : std_logic;
SIGNAL \u_notch|Mult3~15\ : std_logic;
SIGNAL \u_notch|Mult1~15\ : std_logic;
SIGNAL \u_notch|Mult4~15\ : std_logic;
SIGNAL \u_notch|Mult2~15\ : std_logic;
SIGNAL \u_notch|Add0~181_combout\ : std_logic;
SIGNAL \u_notch|Add0~182_combout\ : std_logic;
SIGNAL \u_notch|Mult3~14\ : std_logic;
SIGNAL \u_notch|Mult1~14\ : std_logic;
SIGNAL \u_notch|Mult4~14\ : std_logic;
SIGNAL \u_notch|Mult2~14\ : std_logic;
SIGNAL \u_notch|Add0~187_combout\ : std_logic;
SIGNAL \u_notch|Add0~188_combout\ : std_logic;
SIGNAL \u_notch|Mult1~13\ : std_logic;
SIGNAL \u_notch|Mult3~13\ : std_logic;
SIGNAL \u_notch|Mult4~13\ : std_logic;
SIGNAL \u_notch|Mult2~13\ : std_logic;
SIGNAL \u_notch|Add0~193_combout\ : std_logic;
SIGNAL \u_notch|Add0~194_combout\ : std_logic;
SIGNAL \u_notch|Mult0~13\ : std_logic;
SIGNAL \u_notch|Mult0~12\ : std_logic;
SIGNAL \u_notch|Mult1~12\ : std_logic;
SIGNAL \u_notch|Mult4~12\ : std_logic;
SIGNAL \u_notch|Mult2~12\ : std_logic;
SIGNAL \u_notch|Add0~199_combout\ : std_logic;
SIGNAL \u_notch|Mult3~12\ : std_logic;
SIGNAL \u_notch|Add0~200_combout\ : std_logic;
SIGNAL \u_notch|Mult1~11\ : std_logic;
SIGNAL \u_notch|Mult3~11\ : std_logic;
SIGNAL \u_notch|Mult2~11\ : std_logic;
SIGNAL \u_notch|Mult4~11\ : std_logic;
SIGNAL \u_notch|Add0~205_combout\ : std_logic;
SIGNAL \u_notch|Add0~206_combout\ : std_logic;
SIGNAL \u_notch|Mult0~11\ : std_logic;
SIGNAL \u_notch|Mult1~10\ : std_logic;
SIGNAL \u_notch|Mult3~10\ : std_logic;
SIGNAL \u_notch|Mult2~10\ : std_logic;
SIGNAL \u_notch|Mult4~10\ : std_logic;
SIGNAL \u_notch|Add0~211_combout\ : std_logic;
SIGNAL \u_notch|Add0~212_combout\ : std_logic;
SIGNAL \u_notch|Mult0~10\ : std_logic;
SIGNAL \u_notch|Mult1~9\ : std_logic;
SIGNAL \u_notch|Mult3~9\ : std_logic;
SIGNAL \u_notch|Mult2~9\ : std_logic;
SIGNAL \u_notch|Mult4~9\ : std_logic;
SIGNAL \u_notch|Add0~217_combout\ : std_logic;
SIGNAL \u_notch|Add0~218_combout\ : std_logic;
SIGNAL \u_notch|Mult4~8\ : std_logic;
SIGNAL \u_notch|Mult2~8_resulta\ : std_logic;
SIGNAL \u_notch|Add0~223_combout\ : std_logic;
SIGNAL \u_notch|Mult3~8_resulta\ : std_logic;
SIGNAL \u_notch|Mult1~8_resulta\ : std_logic;
SIGNAL \u_notch|Add0~224_combout\ : std_logic;
SIGNAL \u_notch|Mult0~8_resulta\ : std_logic;
SIGNAL \u_notch|Add0~229_combout\ : std_logic;
SIGNAL \u_notch|Add0~227_cout\ : std_logic;
SIGNAL \u_notch|Add0~220_sumout\ : std_logic;
SIGNAL \u_notch|Selector39~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~221\ : std_logic;
SIGNAL \u_notch|Add0~214_sumout\ : std_logic;
SIGNAL \u_notch|Mult0~9\ : std_logic;
SIGNAL \u_notch|Selector38~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~215\ : std_logic;
SIGNAL \u_notch|Add0~208_sumout\ : std_logic;
SIGNAL \u_notch|Selector37~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~209\ : std_logic;
SIGNAL \u_notch|Add0~202_sumout\ : std_logic;
SIGNAL \u_notch|Selector36~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~203\ : std_logic;
SIGNAL \u_notch|Add0~196_sumout\ : std_logic;
SIGNAL \u_notch|Selector35~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~197\ : std_logic;
SIGNAL \u_notch|Add0~190_sumout\ : std_logic;
SIGNAL \u_notch|Selector34~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~191\ : std_logic;
SIGNAL \u_notch|Add0~184_sumout\ : std_logic;
SIGNAL \u_notch|Mult0~14\ : std_logic;
SIGNAL \u_notch|Selector33~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~185\ : std_logic;
SIGNAL \u_notch|Add0~178_sumout\ : std_logic;
SIGNAL \u_notch|Mult0~15\ : std_logic;
SIGNAL \u_notch|Selector32~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~179\ : std_logic;
SIGNAL \u_notch|Add0~172_sumout\ : std_logic;
SIGNAL \u_notch|Selector31~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~173\ : std_logic;
SIGNAL \u_notch|Add0~166_sumout\ : std_logic;
SIGNAL \u_notch|Selector30~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~167\ : std_logic;
SIGNAL \u_notch|Add0~160_sumout\ : std_logic;
SIGNAL \u_notch|Selector29~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~161\ : std_logic;
SIGNAL \u_notch|Add0~154_sumout\ : std_logic;
SIGNAL \u_notch|Mult0~19\ : std_logic;
SIGNAL \u_notch|Selector28~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~155\ : std_logic;
SIGNAL \u_notch|Add0~148_sumout\ : std_logic;
SIGNAL \u_notch|Selector27~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~149\ : std_logic;
SIGNAL \u_notch|Add0~142_sumout\ : std_logic;
SIGNAL \u_notch|Selector26~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~143\ : std_logic;
SIGNAL \u_notch|Add0~134_sumout\ : std_logic;
SIGNAL \u_notch|Mult0~22\ : std_logic;
SIGNAL \u_notch|Selector25~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~135\ : std_logic;
SIGNAL \u_notch|Add0~131\ : std_logic;
SIGNAL \u_notch|Add0~124_sumout\ : std_logic;
SIGNAL \u_notch|Selector23~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~125\ : std_logic;
SIGNAL \u_notch|Add0~94\ : std_logic;
SIGNAL \u_notch|Add0~2\ : std_logic;
SIGNAL \u_notch|Add0~49_sumout\ : std_logic;
SIGNAL \u_notch|Selector20~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~50\ : std_logic;
SIGNAL \u_notch|Add0~54\ : std_logic;
SIGNAL \u_notch|Add0~58\ : std_logic;
SIGNAL \u_notch|Add0~62\ : std_logic;
SIGNAL \u_notch|Add0~66\ : std_logic;
SIGNAL \u_notch|Add0~70\ : std_logic;
SIGNAL \u_notch|Add0~74\ : std_logic;
SIGNAL \u_notch|Add0~78\ : std_logic;
SIGNAL \u_notch|Add0~82\ : std_logic;
SIGNAL \u_notch|Add0~85_sumout\ : std_logic;
SIGNAL \u_notch|Selector11~0_combout\ : std_logic;
SIGNAL \u_notch|y_new~10_combout\ : std_logic;
SIGNAL \u_notch|Mult3~35\ : std_logic;
SIGNAL \u_notch|Mult4~35\ : std_logic;
SIGNAL \u_notch|Mult2~35\ : std_logic;
SIGNAL \u_notch|Add0~117_combout\ : std_logic;
SIGNAL \u_notch|Add0~118_combout\ : std_logic;
SIGNAL \u_notch|Add0~81_sumout\ : std_logic;
SIGNAL \u_notch|Selector12~0_combout\ : std_logic;
SIGNAL \u_notch|y_new~9_combout\ : std_logic;
SIGNAL \u_notch|Mult3~34\ : std_logic;
SIGNAL \u_notch|Mult4~34\ : std_logic;
SIGNAL \u_notch|Mult2~34\ : std_logic;
SIGNAL \u_notch|Add0~115_combout\ : std_logic;
SIGNAL \u_notch|Add0~116_combout\ : std_logic;
SIGNAL \u_notch|Add0~77_sumout\ : std_logic;
SIGNAL \u_notch|Mult0~34\ : std_logic;
SIGNAL \u_notch|Selector13~0_combout\ : std_logic;
SIGNAL \u_notch|y_new~8_combout\ : std_logic;
SIGNAL \u_notch|Mult4~33\ : std_logic;
SIGNAL \u_notch|Add0~113_combout\ : std_logic;
SIGNAL \u_notch|Mult3~33\ : std_logic;
SIGNAL \u_notch|Add0~114_combout\ : std_logic;
SIGNAL \u_notch|Add0~73_sumout\ : std_logic;
SIGNAL \u_notch|Selector14~0_combout\ : std_logic;
SIGNAL \u_notch|y_new~7_combout\ : std_logic;
SIGNAL \u_notch|Mult3~32\ : std_logic;
SIGNAL \u_notch|Mult2~32\ : std_logic;
SIGNAL \u_notch|Mult4~32\ : std_logic;
SIGNAL \u_notch|Add0~111_combout\ : std_logic;
SIGNAL \u_notch|Add0~112_combout\ : std_logic;
SIGNAL \u_notch|Add0~69_sumout\ : std_logic;
SIGNAL \u_notch|Selector15~0_combout\ : std_logic;
SIGNAL \u_notch|y_new~6_combout\ : std_logic;
SIGNAL \u_notch|Mult3~31\ : std_logic;
SIGNAL \u_notch|Mult1~31\ : std_logic;
SIGNAL \u_notch|Mult4~31\ : std_logic;
SIGNAL \u_notch|Mult2~31\ : std_logic;
SIGNAL \u_notch|Add0~109_combout\ : std_logic;
SIGNAL \u_notch|Add0~110_combout\ : std_logic;
SIGNAL \u_notch|Add0~65_sumout\ : std_logic;
SIGNAL \u_notch|Mult0~31\ : std_logic;
SIGNAL \u_notch|Selector16~0_combout\ : std_logic;
SIGNAL \u_notch|y_new~5_combout\ : std_logic;
SIGNAL \u_notch|Mult3~30\ : std_logic;
SIGNAL \u_notch|Mult4~30\ : std_logic;
SIGNAL \u_notch|Mult2~30\ : std_logic;
SIGNAL \u_notch|Add0~107_combout\ : std_logic;
SIGNAL \u_notch|Add0~108_combout\ : std_logic;
SIGNAL \u_notch|Add0~61_sumout\ : std_logic;
SIGNAL \u_notch|Selector17~0_combout\ : std_logic;
SIGNAL \u_notch|y_new~4_combout\ : std_logic;
SIGNAL \u_notch|Mult4~29\ : std_logic;
SIGNAL \u_notch|Mult2~29\ : std_logic;
SIGNAL \u_notch|Add0~105_combout\ : std_logic;
SIGNAL \u_notch|Mult3~29\ : std_logic;
SIGNAL \u_notch|Mult1~29\ : std_logic;
SIGNAL \u_notch|Add0~106_combout\ : std_logic;
SIGNAL \u_notch|Add0~57_sumout\ : std_logic;
SIGNAL \u_notch|Mult0~29\ : std_logic;
SIGNAL \u_notch|Selector18~0_combout\ : std_logic;
SIGNAL \u_notch|y_new~3_combout\ : std_logic;
SIGNAL \u_notch|Mult3~28\ : std_logic;
SIGNAL \u_notch|Mult4~28\ : std_logic;
SIGNAL \u_notch|Mult2~28\ : std_logic;
SIGNAL \u_notch|Add0~103_combout\ : std_logic;
SIGNAL \u_notch|Add0~104_combout\ : std_logic;
SIGNAL \u_notch|Add0~53_sumout\ : std_logic;
SIGNAL \u_notch|Selector19~0_combout\ : std_logic;
SIGNAL \u_notch|y_new~2_combout\ : std_logic;
SIGNAL \u_notch|Mult4~26\ : std_logic;
SIGNAL \u_notch|Add0~90_combout\ : std_logic;
SIGNAL \u_notch|Mult1~26\ : std_logic;
SIGNAL \u_notch|Mult3~26\ : std_logic;
SIGNAL \u_notch|Add0~91_combout\ : std_logic;
SIGNAL \u_notch|Add0~1_sumout\ : std_logic;
SIGNAL \u_notch|Mult0~26\ : std_logic;
SIGNAL \u_notch|Selector21~0_combout\ : std_logic;
SIGNAL \u_notch|y_new~0_combout\ : std_logic;
SIGNAL \u_notch|Mult3~25\ : std_logic;
SIGNAL \u_notch|Mult1~25\ : std_logic;
SIGNAL \u_notch|Mult4~25\ : std_logic;
SIGNAL \u_notch|Mult2~25\ : std_logic;
SIGNAL \u_notch|Add0~121_combout\ : std_logic;
SIGNAL \u_notch|Add0~122_combout\ : std_logic;
SIGNAL \u_notch|Add0~93_sumout\ : std_logic;
SIGNAL \u_notch|Mult0~25\ : std_logic;
SIGNAL \u_notch|Selector22~0_combout\ : std_logic;
SIGNAL \u_notch|y_new~11_combout\ : std_logic;
SIGNAL \u_notch|Mult3~37\ : std_logic;
SIGNAL \u_notch|Mult1~37\ : std_logic;
SIGNAL \u_notch|Mult4~37\ : std_logic;
SIGNAL \u_notch|Mult2~37\ : std_logic;
SIGNAL \u_notch|Add0~99_combout\ : std_logic;
SIGNAL \u_notch|Add0~100_combout\ : std_logic;
SIGNAL \u_notch|Add0~86\ : std_logic;
SIGNAL \u_notch|Add0~45_sumout\ : std_logic;
SIGNAL \u_notch|Selector10~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~46\ : std_logic;
SIGNAL \u_notch|Add0~41_sumout\ : std_logic;
SIGNAL \u_notch|Selector9~0_combout\ : std_logic;
SIGNAL \u_notch|LessThan0~1_combout\ : std_logic;
SIGNAL \u_notch|y_new~12_combout\ : std_logic;
SIGNAL \u_notch|Mult3~23\ : std_logic;
SIGNAL \u_notch|Mult1~23\ : std_logic;
SIGNAL \u_notch|Mult2~23\ : std_logic;
SIGNAL \u_notch|Mult4~23\ : std_logic;
SIGNAL \u_notch|Add0~137_combout\ : std_logic;
SIGNAL \u_notch|Add0~138_combout\ : std_logic;
SIGNAL \u_notch|Add0~130_sumout\ : std_logic;
SIGNAL \u_notch|Selector24~0_combout\ : std_logic;
SIGNAL \u_notch|y_new~14_combout\ : std_logic;
SIGNAL \u_notch|Mult3~38\ : std_logic;
SIGNAL \u_notch|Mult1~38\ : std_logic;
SIGNAL \u_notch|Add0~98_combout\ : std_logic;
SIGNAL \u_notch|Add0~42\ : std_logic;
SIGNAL \u_notch|Add0~37_sumout\ : std_logic;
SIGNAL \u_notch|Selector8~0_combout\ : std_logic;
SIGNAL \u_notch|Add0~38\ : std_logic;
SIGNAL \u_notch|Add0~33_sumout\ : std_logic;
SIGNAL \u_notch|Selector7~0_combout\ : std_logic;
SIGNAL \u_notch|LessThan1~1_combout\ : std_logic;
SIGNAL \u_notch|y_new~13_combout\ : std_logic;
SIGNAL \u_notch|Mult4~38\ : std_logic;
SIGNAL \u_notch|Add0~96_combout\ : std_logic;
SIGNAL \u_notch|Mult3~39\ : std_logic;
SIGNAL \u_notch|Mult1~39\ : std_logic;
SIGNAL \u_notch|Add0~97_combout\ : std_logic;
SIGNAL \u_notch|Add0~13_sumout\ : std_logic;
SIGNAL \u_notch|Selector1~0_combout\ : std_logic;
SIGNAL \u_notch|LessThan0~0_combout\ : std_logic;
SIGNAL \u_notch|y_new~1_combout\ : std_logic;
SIGNAL \u_dc_block|x_prev[3]~feeder_combout\ : std_logic;
SIGNAL \u_dc_block|x_prev[13]~feeder_combout\ : std_logic;
SIGNAL \u_notch|sample_out[15]~feeder_combout\ : std_logic;
SIGNAL \u_dc_block|x_prev[14]~feeder_combout\ : std_logic;
SIGNAL \u_dc_block|x_prev[11]~feeder_combout\ : std_logic;
SIGNAL \u_dc_block|x_prev[10]~feeder_combout\ : std_logic;
SIGNAL \u_dc_block|x_prev[4]~feeder_combout\ : std_logic;
SIGNAL \u_dc_block|x_prev[1]~feeder_combout\ : std_logic;
SIGNAL \u_dc_block|Add1~70_cout\ : std_logic;
SIGNAL \u_dc_block|Add1~71\ : std_logic;
SIGNAL \u_dc_block|Add1~62\ : std_logic;
SIGNAL \u_dc_block|Add1~63\ : std_logic;
SIGNAL \u_dc_block|Add1~66\ : std_logic;
SIGNAL \u_dc_block|Add1~67\ : std_logic;
SIGNAL \u_dc_block|Add1~58\ : std_logic;
SIGNAL \u_dc_block|Add1~59\ : std_logic;
SIGNAL \u_dc_block|Add1~54\ : std_logic;
SIGNAL \u_dc_block|Add1~55\ : std_logic;
SIGNAL \u_dc_block|Add1~2\ : std_logic;
SIGNAL \u_dc_block|Add1~3\ : std_logic;
SIGNAL \u_dc_block|Add1~14\ : std_logic;
SIGNAL \u_dc_block|Add1~15\ : std_logic;
SIGNAL \u_dc_block|Add1~18\ : std_logic;
SIGNAL \u_dc_block|Add1~19\ : std_logic;
SIGNAL \u_dc_block|Add1~22\ : std_logic;
SIGNAL \u_dc_block|Add1~23\ : std_logic;
SIGNAL \u_dc_block|Add1~26\ : std_logic;
SIGNAL \u_dc_block|Add1~27\ : std_logic;
SIGNAL \u_dc_block|Add1~30\ : std_logic;
SIGNAL \u_dc_block|Add1~31\ : std_logic;
SIGNAL \u_dc_block|Add1~34\ : std_logic;
SIGNAL \u_dc_block|Add1~35\ : std_logic;
SIGNAL \u_dc_block|Add1~38\ : std_logic;
SIGNAL \u_dc_block|Add1~39\ : std_logic;
SIGNAL \u_dc_block|Add1~42\ : std_logic;
SIGNAL \u_dc_block|Add1~43\ : std_logic;
SIGNAL \u_dc_block|Add1~46\ : std_logic;
SIGNAL \u_dc_block|Add1~47\ : std_logic;
SIGNAL \u_dc_block|Add1~50\ : std_logic;
SIGNAL \u_dc_block|Add1~51\ : std_logic;
SIGNAL \u_dc_block|Add1~9_sumout\ : std_logic;
SIGNAL \u_dc_block|y_prev[15]~feeder_combout\ : std_logic;
SIGNAL \u_dc_block|p_filter~0_combout\ : std_logic;
SIGNAL \u_dc_block|Mult0~37\ : std_logic;
SIGNAL \u_dc_block|Add1~49_sumout\ : std_logic;
SIGNAL \u_dc_block|Mult0~36\ : std_logic;
SIGNAL \u_dc_block|Add1~45_sumout\ : std_logic;
SIGNAL \u_dc_block|Mult0~35\ : std_logic;
SIGNAL \u_dc_block|Add1~41_sumout\ : std_logic;
SIGNAL \u_dc_block|Mult0~34\ : std_logic;
SIGNAL \u_dc_block|Add1~37_sumout\ : std_logic;
SIGNAL \u_dc_block|Mult0~33\ : std_logic;
SIGNAL \u_dc_block|Add1~33_sumout\ : std_logic;
SIGNAL \u_dc_block|Mult0~32\ : std_logic;
SIGNAL \u_dc_block|Add1~29_sumout\ : std_logic;
SIGNAL \u_dc_block|Mult0~31\ : std_logic;
SIGNAL \u_dc_block|Add1~25_sumout\ : std_logic;
SIGNAL \u_dc_block|Mult0~30\ : std_logic;
SIGNAL \u_dc_block|Add1~21_sumout\ : std_logic;
SIGNAL \u_dc_block|Mult0~29\ : std_logic;
SIGNAL \u_dc_block|Add1~17_sumout\ : std_logic;
SIGNAL \u_dc_block|Mult0~38\ : std_logic;
SIGNAL \u_dc_block|Add1~10\ : std_logic;
SIGNAL \u_dc_block|Add1~11\ : std_logic;
SIGNAL \u_dc_block|Add1~5_sumout\ : std_logic;
SIGNAL \u_dc_block|Add1~5_wirecell_combout\ : std_logic;
SIGNAL \u_dc_block|Mult0~27\ : std_logic;
SIGNAL \u_dc_block|Add1~1_sumout\ : std_logic;
SIGNAL \u_dc_block|Mult0~26\ : std_logic;
SIGNAL \u_dc_block|Add1~53_sumout\ : std_logic;
SIGNAL \u_dc_block|Mult0~25\ : std_logic;
SIGNAL \u_dc_block|Add1~57_sumout\ : std_logic;
SIGNAL \u_dc_block|Mult0~24\ : std_logic;
SIGNAL \u_dc_block|Add1~65_sumout\ : std_logic;
SIGNAL \u_dc_block|Mult0~23\ : std_logic;
SIGNAL \u_dc_block|Add1~61_sumout\ : std_logic;
SIGNAL \u_dc_block|Mult0~28\ : std_logic;
SIGNAL \u_dc_block|Add1~13_sumout\ : std_logic;
SIGNAL \u_dc_block|sample_out[5]~feeder_combout\ : std_logic;
SIGNAL \filtered_12bit[1]~feeder_combout\ : std_logic;
SIGNAL \u_dc_block|sample_out[7]~feeder_combout\ : std_logic;
SIGNAL \u_dc_block|sample_out[6]~feeder_combout\ : std_logic;
SIGNAL \filtered_12bit[2]~feeder_combout\ : std_logic;
SIGNAL \u_dc_block|sample_out[4]~feeder_combout\ : std_logic;
SIGNAL \filtered_12bit[0]~feeder_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \u_dc_block|sample_out[11]~feeder_combout\ : std_logic;
SIGNAL \filtered_12bit[7]~DUPLICATE_q\ : std_logic;
SIGNAL \display_data[7]~feeder_combout\ : std_logic;
SIGNAL \u_dc_block|sample_out[9]~feeder_combout\ : std_logic;
SIGNAL \display_data[5]~feeder_combout\ : std_logic;
SIGNAL \u_dc_block|sample_out[10]~feeder_combout\ : std_logic;
SIGNAL \display_data[6]~feeder_combout\ : std_logic;
SIGNAL \u_dc_block|sample_out[8]~feeder_combout\ : std_logic;
SIGNAL \display_data[4]~feeder_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \u_dc_block|sample_out[15]~feeder_combout\ : std_logic;
SIGNAL \filtered_12bit[11]~0_combout\ : std_logic;
SIGNAL \u_dc_block|sample_out[12]~feeder_combout\ : std_logic;
SIGNAL \filtered_12bit[8]~feeder_combout\ : std_logic;
SIGNAL \display_data[8]~feeder_combout\ : std_logic;
SIGNAL \u_dc_block|sample_out[13]~feeder_combout\ : std_logic;
SIGNAL \u_dc_block|sample_out[14]~feeder_combout\ : std_logic;
SIGNAL \display_data[10]~feeder_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \u_adc_driver|Selector1~0_combout\ : std_logic;
SIGNAL \u_adc_driver|adc_convst~q\ : std_logic;
SIGNAL \u_adc_driver|Selector2~2_combout\ : std_logic;
SIGNAL \u_adc_driver|tx_reg[1]~1_combout\ : std_logic;
SIGNAL \u_adc_driver|tx_reg[2]~0_combout\ : std_logic;
SIGNAL \u_adc_driver|Selector7~0_combout\ : std_logic;
SIGNAL \u_adc_driver|Selector6~0_combout\ : std_logic;
SIGNAL \u_adc_driver|Selector5~0_combout\ : std_logic;
SIGNAL \u_adc_driver|Selector4~0_combout\ : std_logic;
SIGNAL \u_adc_driver|state.S_CONVST~DUPLICATE_q\ : std_logic;
SIGNAL \u_adc_driver|Selector2~1_combout\ : std_logic;
SIGNAL \u_adc_driver|Selector2~3_combout\ : std_logic;
SIGNAL \u_adc_driver|adc_din~q\ : std_logic;
SIGNAL \u_adc_driver|Selector0~0_combout\ : std_logic;
SIGNAL \u_adc_driver|sclk_int~q\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]~DUPLICATE_q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~DUPLICATE_q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~DUPLICATE_q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\ : std_logic;
SIGNAL \~QIC_CREATED_GND~I_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal3~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~DUPLICATE_q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[0]~DUPLICATE_q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal3~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~DUPLICATE_q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|tck_t_dav~feeder_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|tck_t_dav~q\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|write_stalled~0_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|count[3]~feeder_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|count[7]~feeder_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|read_req~0_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|state~0_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|state~q\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|count[9]~0_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|count[9]~_wirecell_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|read_req~1_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|write_stalled~q\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|user_saw_rvalid~0_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|user_saw_rvalid~q\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|read~0_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|read~feeder_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|read~q\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|read1~q\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|read2~q\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|read_req~feeder_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|read_req~q\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|rst1~feeder_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|rst1~q\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|rst2~q\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|r_ena1~q\ : std_logic;
SIGNAL \u_jtag_streamer|state.S_IDLE~q\ : std_logic;
SIGNAL \u_jtag_streamer|state.S_SEND_HIGH~q\ : std_logic;
SIGNAL \u_jtag_streamer|state.S_SEND_LOW~0_combout\ : std_logic;
SIGNAL \u_jtag_streamer|state.S_SEND_LOW~q\ : std_logic;
SIGNAL \u_jtag_streamer|Selector0~0_combout\ : std_logic;
SIGNAL \u_jtag_streamer|state.S_IDLE~DUPLICATE_q\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|rvalid0~0_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|rvalid0~1_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|rvalid0~q\ : std_logic;
SIGNAL \u_jtag_streamer|Selector1~0_combout\ : std_logic;
SIGNAL \u_jtag_streamer|state.S_SEND_HIGH~DUPLICATE_q\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|r_ena~0_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|td_shift~4_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|td_shift~0_combout\ : std_logic;
SIGNAL \u_jtag_streamer|latched[4]~feeder_combout\ : std_logic;
SIGNAL \u_jtag_streamer|latched[0]~0_combout\ : std_logic;
SIGNAL \u_jtag_streamer|r_dat[4]~4_combout\ : std_logic;
SIGNAL \u_jtag_streamer|latched[10]~feeder_combout\ : std_logic;
SIGNAL \u_jtag_streamer|r_dat[5]~5_combout\ : std_logic;
SIGNAL \u_jtag_streamer|r_dat[6]~6_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|td_shift~12_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|td_shift~11_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|td_shift~10_combout\ : std_logic;
SIGNAL \u_jtag_streamer|r_dat[3]~3_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|td_shift~9_combout\ : std_logic;
SIGNAL \u_jtag_streamer|latched[7]~feeder_combout\ : std_logic;
SIGNAL \u_jtag_streamer|r_dat[2]~2_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|td_shift~8_combout\ : std_logic;
SIGNAL \u_jtag_streamer|r_dat[1]~1_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|td_shift~7_combout\ : std_logic;
SIGNAL \u_jtag_streamer|latched[5]~feeder_combout\ : std_logic;
SIGNAL \u_jtag_streamer|latched[0]~feeder_combout\ : std_logic;
SIGNAL \u_jtag_streamer|r_dat[0]~0_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|td_shift~6_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|td_shift~5_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|rvalid~q\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|td_shift~1_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|td_shift~2_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|adapted_tdo~feeder_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|adapted_tdo~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL blink_counter : std_logic_vector(24 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_sample_clock|counter\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u_adc_driver|wait_cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u_adc_driver|rx_reg\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_notch|acc\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \u_jtag_streamer|u_atlantic|td_shift\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_dc_block|sample_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_jtag_streamer|u_atlantic|count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_dc_block|y_prev\ : std_logic_vector(15 DOWNTO 0);
SIGNAL display_data : std_logic_vector(11 DOWNTO 0);
SIGNAL filtered_12bit : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_adc_driver|clk_cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_adc_driver|tx_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \u_adc_driver|bit_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_adc_driver|conv_cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_jtag_streamer|u_atlantic|rdata\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_dc_block|x_prev\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_adc_driver|sample_data\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_notch|sample_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_jtag_streamer|latched\ : std_logic_vector(11 DOWNTO 0);
SIGNAL adc_q15 : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_blink_counter : std_logic_vector(24 DOWNTO 0);
SIGNAL \u_adc_driver|ALT_INV_wait_cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u_jtag_streamer|u_atlantic|ALT_INV_td_shift\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_adc_driver|ALT_INV_state.S_SHIFT~q\ : std_logic;
SIGNAL \u_sample_clock|ALT_INV_counter\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u_jtag_streamer|u_atlantic|ALT_INV_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_dc_block|ALT_INV_sample_out\ : std_logic_vector(15 DOWNTO 4);
SIGNAL \u_dc_block|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Mult0~31\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Mult0~38\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Mult0~32\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Mult0~27\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Mult0~36\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Mult0~34\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Mult0~26\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Mult0~33\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Mult0~35\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Mult0~30\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Mult0~29\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Mult0~37\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_Mult0~28\ : std_logic;
SIGNAL \u_notch|ALT_INV_acc\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \u_notch|ALT_INV_Mult0~8_resulta\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~9\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~10\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~11\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~12\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~13\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~14\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~34\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~30\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~33\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~31\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~32\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~16\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~29\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~18\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~15\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~28\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~35\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~17\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~27\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~37\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~26\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~36\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~20\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult0~38\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~9\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~17\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~24\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~25\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~27\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~19\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~12\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~8_resulta\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~18\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~20\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~21\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~22\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~23\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~11\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~26\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~13\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~14\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~15\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~16\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~10\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~17\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~20\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~21\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~22\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~24\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~25\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~19\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~33\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~26\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~23\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~16\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~27\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~18\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~30\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~34\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~39\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~37\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~38\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~29\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~35\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~32\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~28\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~8\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~9\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~10\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~11\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~12\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~36\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~13\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult3~31\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~14\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~15\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~11\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~20\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~32\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~15\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~13\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~31\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~35\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~14\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~24\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~38\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~18\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~10\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~22\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~17\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~23\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~34\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~33\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~29\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~19\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~37\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~16\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~36\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~30\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~38\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~28\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~9\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~31\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~36\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~12\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~33\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~37\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~8_resulta\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~26\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~21\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~27\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~34\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~32\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~35\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~30\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~39\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~29\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult4~28\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult1~25\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~33\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~34\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~8_resulta\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~17\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~9\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~29\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~21\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~23\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~10\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~13\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~16\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~22\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~14\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~27\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~15\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~37\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~18\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~36\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~26\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~28\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~35\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~25\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~38\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~11\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~20\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~19\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~31\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~24\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~32\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~12\ : std_logic;
SIGNAL \u_notch|ALT_INV_Mult2~30\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~202_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~190_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~154_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~208_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~196_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~166_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~160_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~142_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~178_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~184_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~148_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~124_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~130_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~172_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~134_sumout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL ALT_INV_display_data : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_adc_driver|ALT_INV_sclk_int~q\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_state.S_IDLE~q\ : std_logic;
SIGNAL \ALT_INV_blink_led~q\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \u_dc_block|ALT_INV_out_valid~q\ : std_logic;
SIGNAL ALT_INV_filtered_12bit : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_adc_driver|ALT_INV_state.S_DONE~q\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~214_sumout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~220_sumout\ : std_logic;
SIGNAL \ALT_INV_filtered_valid~q\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_adc_din~q\ : std_logic;
SIGNAL \u_sample_clock|ALT_INV_sample_tick~q\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_busy~q\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_adc_convst~q\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|ALT_INV_adapted_tdo~q\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_tx_reg\ : std_logic_vector(5 DOWNTO 1);
SIGNAL \u_adc_driver|ALT_INV_clk_cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_jtag_streamer|u_atlantic|ALT_INV_user_saw_rvalid~q\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_bit_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_sample_clock|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|ALT_INV_rvalid~q\ : std_logic;
SIGNAL \u_notch|ALT_INV_out_valid~q\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|ALT_INV_td_shift~1_combout\ : std_logic;
SIGNAL \u_sample_clock|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_conv_cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_adc_driver|ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_Selector2~2_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|ALT_INV_td_shift~0_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|ALT_INV_tck_t_dav~q\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_state.S_WAIT~q\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_state.S_CONVST~q\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \u_sample_clock|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|ALT_INV_state~q\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_Selector16~2_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_state.S_DONE~q\ : std_logic;
SIGNAL \u_jtag_streamer|ALT_INV_state.S_SEND_HIGH~q\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|ALT_INV_r_ena1~q\ : std_logic;
SIGNAL \u_jtag_streamer|ALT_INV_state.S_IDLE~q\ : std_logic;
SIGNAL \u_notch|ALT_INV_sample_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_dc_block|ALT_INV_x_prev\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_jtag_streamer|u_atlantic|ALT_INV_rdata\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_jtag_streamer|u_atlantic|ALT_INV_rvalid0~0_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|ALT_INV_read_req~q\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|ALT_INV_read1~q\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|ALT_INV_write_stalled~q\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|ALT_INV_read2~q\ : std_logic;
SIGNAL \u_notch|ALT_INV_state.S_MAC5~q\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|ALT_INV_read_req~0_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|ALT_INV_rvalid0~q\ : std_logic;
SIGNAL \u_jtag_streamer|ALT_INV_latched\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_notch|ALT_INV_acc[24]~0_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|ALT_INV_read~q\ : std_logic;
SIGNAL \u_notch|ALT_INV_state.S_MAC1~q\ : std_logic;
SIGNAL \ALT_INV_adc_q15_valid~q\ : std_logic;
SIGNAL \u_notch|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|ALT_INV_rst2~q\ : std_logic;
SIGNAL \u_notch|ALT_INV_state.S_MAC3~q\ : std_logic;
SIGNAL \u_notch|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \u_jtag_streamer|ALT_INV_state.S_SEND_LOW~q\ : std_logic;
SIGNAL \u_notch|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_state.S_MAC4~q\ : std_logic;
SIGNAL \u_notch|ALT_INV_state.S_IDLE~q\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~104_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~96_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~107_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~110_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~103_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~89_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_x_n[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~90_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~101_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_x_n[15]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~108_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~102_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_x_n[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~97_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~109_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_x_n[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|ALT_INV_x_n[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~98_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~113_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~112_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~114_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~115_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~116_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~106_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~105_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_state.S_MAC2~q\ : std_logic;
SIGNAL \u_notch|ALT_INV_x_n[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~119_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~91_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~120_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~99_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~100_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~117_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~118_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~111_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_x_n[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~88_combout\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_rx_reg\ : std_logic_vector(10 DOWNTO 1);
SIGNAL ALT_INV_adc_q15 : std_logic_vector(15 DOWNTO 10);
SIGNAL \u_notch|ALT_INV_Add0~122_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~121_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~127_combout\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_sample_data\ : std_logic_vector(11 DOWNTO 11);
SIGNAL \u_notch|ALT_INV_Add0~128_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~140_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~157_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~139_combout\ : std_logic;
SIGNAL \u_jtag_streamer|u_atlantic|ALT_INV_read~0_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~182_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~151_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~181_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~188_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~205_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~158_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~169_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~206_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~164_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~163_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~194_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~212_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~200_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~175_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~199_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~145_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~217_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~176_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~146_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~170_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~187_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~211_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~218_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~223_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~224_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~229_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~193_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~138_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~137_combout\ : std_logic;
SIGNAL \u_notch|ALT_INV_Add0~152_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_splitter_nodes_receive_0\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~1_combout\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_sldfabric_ident_writedata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg[2]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg[1]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR~4_combout\ : std_logic;
SIGNAL \ALT_INV_~QIC_CREATED_GND~I_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_GPIO_0[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_GPIO_0[1]~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u_jtag_streamer|ALT_INV_state.S_IDLE~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_blink_counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \u_sample_clock|ALT_INV_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u_jtag_streamer|ALT_INV_state.S_SEND_HIGH~DUPLICATE_q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[2]~DUPLICATE_q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[0]~DUPLICATE_q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_blink_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_state.S_IDLE~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_filtered_12bit[7]~DUPLICATE_q\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_clk_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u_sample_clock|ALT_INV_counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \u_sample_clock|ALT_INV_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u_adc_driver|ALT_INV_state.S_CONVST~DUPLICATE_q\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ADC_CONVST <= ww_ADC_CONVST;
ADC_DIN <= ww_ADC_DIN;
ww_ADC_DOUT <= ADC_DOUT;
ADC_SCLK <= ww_ADC_SCLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u_dc_block|Mult0~8_AX_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & gnd & vcc & gnd & vcc & vcc & vcc & gnd & gnd);

\u_dc_block|Mult0~8_AY_bus\ <= (\u_dc_block|y_prev\(15) & \u_dc_block|y_prev\(15) & \u_dc_block|y_prev\(15) & \u_dc_block|y_prev\(15) & \u_dc_block|y_prev\(14) & \u_dc_block|y_prev\(13) & \u_dc_block|y_prev\(12) & \u_dc_block|y_prev\(11) & 
\u_dc_block|y_prev\(10) & \u_dc_block|y_prev\(9) & \u_dc_block|y_prev\(8) & \u_dc_block|y_prev\(7) & \u_dc_block|y_prev\(6) & \u_dc_block|y_prev\(5) & \u_dc_block|y_prev\(4) & \u_dc_block|y_prev\(3) & \u_dc_block|y_prev\(2) & 
\u_dc_block|y_prev\(1) & \u_dc_block|y_prev\(0));

\u_dc_block|Mult0~8_resulta\ <= \u_dc_block|Mult0~8_RESULTA_bus\(0);
\u_dc_block|Mult0~9\ <= \u_dc_block|Mult0~8_RESULTA_bus\(1);
\u_dc_block|Mult0~10\ <= \u_dc_block|Mult0~8_RESULTA_bus\(2);
\u_dc_block|Mult0~11\ <= \u_dc_block|Mult0~8_RESULTA_bus\(3);
\u_dc_block|Mult0~12\ <= \u_dc_block|Mult0~8_RESULTA_bus\(4);
\u_dc_block|Mult0~13\ <= \u_dc_block|Mult0~8_RESULTA_bus\(5);
\u_dc_block|Mult0~14\ <= \u_dc_block|Mult0~8_RESULTA_bus\(6);
\u_dc_block|Mult0~15\ <= \u_dc_block|Mult0~8_RESULTA_bus\(7);
\u_dc_block|Mult0~16\ <= \u_dc_block|Mult0~8_RESULTA_bus\(8);
\u_dc_block|Mult0~17\ <= \u_dc_block|Mult0~8_RESULTA_bus\(9);
\u_dc_block|Mult0~18\ <= \u_dc_block|Mult0~8_RESULTA_bus\(10);
\u_dc_block|Mult0~19\ <= \u_dc_block|Mult0~8_RESULTA_bus\(11);
\u_dc_block|Mult0~20\ <= \u_dc_block|Mult0~8_RESULTA_bus\(12);
\u_dc_block|Mult0~21\ <= \u_dc_block|Mult0~8_RESULTA_bus\(13);
\u_dc_block|Mult0~22\ <= \u_dc_block|Mult0~8_RESULTA_bus\(14);
\u_dc_block|Mult0~23\ <= \u_dc_block|Mult0~8_RESULTA_bus\(15);
\u_dc_block|Mult0~24\ <= \u_dc_block|Mult0~8_RESULTA_bus\(16);
\u_dc_block|Mult0~25\ <= \u_dc_block|Mult0~8_RESULTA_bus\(17);
\u_dc_block|Mult0~26\ <= \u_dc_block|Mult0~8_RESULTA_bus\(18);
\u_dc_block|Mult0~27\ <= \u_dc_block|Mult0~8_RESULTA_bus\(19);
\u_dc_block|Mult0~28\ <= \u_dc_block|Mult0~8_RESULTA_bus\(20);
\u_dc_block|Mult0~29\ <= \u_dc_block|Mult0~8_RESULTA_bus\(21);
\u_dc_block|Mult0~30\ <= \u_dc_block|Mult0~8_RESULTA_bus\(22);
\u_dc_block|Mult0~31\ <= \u_dc_block|Mult0~8_RESULTA_bus\(23);
\u_dc_block|Mult0~32\ <= \u_dc_block|Mult0~8_RESULTA_bus\(24);
\u_dc_block|Mult0~33\ <= \u_dc_block|Mult0~8_RESULTA_bus\(25);
\u_dc_block|Mult0~34\ <= \u_dc_block|Mult0~8_RESULTA_bus\(26);
\u_dc_block|Mult0~35\ <= \u_dc_block|Mult0~8_RESULTA_bus\(27);
\u_dc_block|Mult0~36\ <= \u_dc_block|Mult0~8_RESULTA_bus\(28);
\u_dc_block|Mult0~37\ <= \u_dc_block|Mult0~8_RESULTA_bus\(29);
\u_dc_block|Mult0~38\ <= \u_dc_block|Mult0~8_RESULTA_bus\(30);
\u_dc_block|Mult0~39\ <= \u_dc_block|Mult0~8_RESULTA_bus\(31);
\u_dc_block|Mult0~40\ <= \u_dc_block|Mult0~8_RESULTA_bus\(32);
\u_dc_block|Mult0~41\ <= \u_dc_block|Mult0~8_RESULTA_bus\(33);
\u_dc_block|Mult0~42\ <= \u_dc_block|Mult0~8_RESULTA_bus\(34);
\u_dc_block|Mult0~43\ <= \u_dc_block|Mult0~8_RESULTA_bus\(35);
\u_dc_block|Mult0~44\ <= \u_dc_block|Mult0~8_RESULTA_bus\(36);
\u_dc_block|Mult0~45\ <= \u_dc_block|Mult0~8_RESULTA_bus\(37);
\u_dc_block|Mult0~46\ <= \u_dc_block|Mult0~8_RESULTA_bus\(38);
\u_dc_block|Mult0~47\ <= \u_dc_block|Mult0~8_RESULTA_bus\(39);
\u_dc_block|Mult0~48\ <= \u_dc_block|Mult0~8_RESULTA_bus\(40);
\u_dc_block|Mult0~49\ <= \u_dc_block|Mult0~8_RESULTA_bus\(41);
\u_dc_block|Mult0~50\ <= \u_dc_block|Mult0~8_RESULTA_bus\(42);
\u_dc_block|Mult0~51\ <= \u_dc_block|Mult0~8_RESULTA_bus\(43);
\u_dc_block|Mult0~52\ <= \u_dc_block|Mult0~8_RESULTA_bus\(44);
\u_dc_block|Mult0~53\ <= \u_dc_block|Mult0~8_RESULTA_bus\(45);
\u_dc_block|Mult0~54\ <= \u_dc_block|Mult0~8_RESULTA_bus\(46);
\u_dc_block|Mult0~55\ <= \u_dc_block|Mult0~8_RESULTA_bus\(47);
\u_dc_block|Mult0~56\ <= \u_dc_block|Mult0~8_RESULTA_bus\(48);
\u_dc_block|Mult0~57\ <= \u_dc_block|Mult0~8_RESULTA_bus\(49);
\u_dc_block|Mult0~58\ <= \u_dc_block|Mult0~8_RESULTA_bus\(50);
\u_dc_block|Mult0~59\ <= \u_dc_block|Mult0~8_RESULTA_bus\(51);
\u_dc_block|Mult0~60\ <= \u_dc_block|Mult0~8_RESULTA_bus\(52);
\u_dc_block|Mult0~61\ <= \u_dc_block|Mult0~8_RESULTA_bus\(53);
\u_dc_block|Mult0~62\ <= \u_dc_block|Mult0~8_RESULTA_bus\(54);
\u_dc_block|Mult0~63\ <= \u_dc_block|Mult0~8_RESULTA_bus\(55);
\u_dc_block|Mult0~64\ <= \u_dc_block|Mult0~8_RESULTA_bus\(56);
\u_dc_block|Mult0~65\ <= \u_dc_block|Mult0~8_RESULTA_bus\(57);
\u_dc_block|Mult0~66\ <= \u_dc_block|Mult0~8_RESULTA_bus\(58);
\u_dc_block|Mult0~67\ <= \u_dc_block|Mult0~8_RESULTA_bus\(59);
\u_dc_block|Mult0~68\ <= \u_dc_block|Mult0~8_RESULTA_bus\(60);
\u_dc_block|Mult0~69\ <= \u_dc_block|Mult0~8_RESULTA_bus\(61);
\u_dc_block|Mult0~70\ <= \u_dc_block|Mult0~8_RESULTA_bus\(62);
\u_dc_block|Mult0~71\ <= \u_dc_block|Mult0~8_RESULTA_bus\(63);

\u_notch|Mult0~8_ACLR_bus\ <= (gnd & NOT \KEY[0]~inputCLKENA0_outclk\);

\u_notch|Mult0~8_CLK_bus\ <= (gnd & gnd & \CLOCK_50~inputCLKENA0_outclk\);

\u_notch|Mult0~8_ENA_bus\ <= (vcc & vcc & \u_notch|state~18_combout\);

\u_notch|Mult0~8_AX_bus\ <= (gnd & vcc & vcc & vcc & vcc & vcc & NOT \SW[0]~input_o\ & \SW[0]~input_o\ & \SW[0]~input_o\ & \SW[0]~input_o\ & NOT \SW[0]~input_o\ & gnd & vcc & \SW[0]~input_o\ & vcc);

\u_notch|Mult0~8_AY_bus\ <= (adc_q15(15) & adc_q15(15) & adc_q15(15) & adc_q15(15) & adc_q15(14) & adc_q15(13) & adc_q15(12) & adc_q15(11) & adc_q15(10) & adc_q15(9) & adc_q15(8) & adc_q15(7) & adc_q15(6) & adc_q15(5) & adc_q15(4) & 
gnd & gnd & gnd & gnd);

\u_notch|Mult0~8_resulta\ <= \u_notch|Mult0~8_RESULTA_bus\(0);
\u_notch|Mult0~9\ <= \u_notch|Mult0~8_RESULTA_bus\(1);
\u_notch|Mult0~10\ <= \u_notch|Mult0~8_RESULTA_bus\(2);
\u_notch|Mult0~11\ <= \u_notch|Mult0~8_RESULTA_bus\(3);
\u_notch|Mult0~12\ <= \u_notch|Mult0~8_RESULTA_bus\(4);
\u_notch|Mult0~13\ <= \u_notch|Mult0~8_RESULTA_bus\(5);
\u_notch|Mult0~14\ <= \u_notch|Mult0~8_RESULTA_bus\(6);
\u_notch|Mult0~15\ <= \u_notch|Mult0~8_RESULTA_bus\(7);
\u_notch|Mult0~16\ <= \u_notch|Mult0~8_RESULTA_bus\(8);
\u_notch|Mult0~17\ <= \u_notch|Mult0~8_RESULTA_bus\(9);
\u_notch|Mult0~18\ <= \u_notch|Mult0~8_RESULTA_bus\(10);
\u_notch|Mult0~19\ <= \u_notch|Mult0~8_RESULTA_bus\(11);
\u_notch|Mult0~20\ <= \u_notch|Mult0~8_RESULTA_bus\(12);
\u_notch|Mult0~21\ <= \u_notch|Mult0~8_RESULTA_bus\(13);
\u_notch|Mult0~22\ <= \u_notch|Mult0~8_RESULTA_bus\(14);
\u_notch|Mult0~23\ <= \u_notch|Mult0~8_RESULTA_bus\(15);
\u_notch|Mult0~24\ <= \u_notch|Mult0~8_RESULTA_bus\(16);
\u_notch|Mult0~25\ <= \u_notch|Mult0~8_RESULTA_bus\(17);
\u_notch|Mult0~26\ <= \u_notch|Mult0~8_RESULTA_bus\(18);
\u_notch|Mult0~27\ <= \u_notch|Mult0~8_RESULTA_bus\(19);
\u_notch|Mult0~28\ <= \u_notch|Mult0~8_RESULTA_bus\(20);
\u_notch|Mult0~29\ <= \u_notch|Mult0~8_RESULTA_bus\(21);
\u_notch|Mult0~30\ <= \u_notch|Mult0~8_RESULTA_bus\(22);
\u_notch|Mult0~31\ <= \u_notch|Mult0~8_RESULTA_bus\(23);
\u_notch|Mult0~32\ <= \u_notch|Mult0~8_RESULTA_bus\(24);
\u_notch|Mult0~33\ <= \u_notch|Mult0~8_RESULTA_bus\(25);
\u_notch|Mult0~34\ <= \u_notch|Mult0~8_RESULTA_bus\(26);
\u_notch|Mult0~35\ <= \u_notch|Mult0~8_RESULTA_bus\(27);
\u_notch|Mult0~36\ <= \u_notch|Mult0~8_RESULTA_bus\(28);
\u_notch|Mult0~37\ <= \u_notch|Mult0~8_RESULTA_bus\(29);
\u_notch|Mult0~38\ <= \u_notch|Mult0~8_RESULTA_bus\(30);
\u_notch|Mult0~39\ <= \u_notch|Mult0~8_RESULTA_bus\(31);
\u_notch|Mult0~40\ <= \u_notch|Mult0~8_RESULTA_bus\(32);
\u_notch|Mult0~41\ <= \u_notch|Mult0~8_RESULTA_bus\(33);
\u_notch|Mult0~42\ <= \u_notch|Mult0~8_RESULTA_bus\(34);
\u_notch|Mult0~43\ <= \u_notch|Mult0~8_RESULTA_bus\(35);
\u_notch|Mult0~44\ <= \u_notch|Mult0~8_RESULTA_bus\(36);
\u_notch|Mult0~45\ <= \u_notch|Mult0~8_RESULTA_bus\(37);
\u_notch|Mult0~46\ <= \u_notch|Mult0~8_RESULTA_bus\(38);
\u_notch|Mult0~47\ <= \u_notch|Mult0~8_RESULTA_bus\(39);
\u_notch|Mult0~48\ <= \u_notch|Mult0~8_RESULTA_bus\(40);
\u_notch|Mult0~49\ <= \u_notch|Mult0~8_RESULTA_bus\(41);
\u_notch|Mult0~50\ <= \u_notch|Mult0~8_RESULTA_bus\(42);
\u_notch|Mult0~51\ <= \u_notch|Mult0~8_RESULTA_bus\(43);
\u_notch|Mult0~52\ <= \u_notch|Mult0~8_RESULTA_bus\(44);
\u_notch|Mult0~53\ <= \u_notch|Mult0~8_RESULTA_bus\(45);
\u_notch|Mult0~54\ <= \u_notch|Mult0~8_RESULTA_bus\(46);
\u_notch|Mult0~55\ <= \u_notch|Mult0~8_RESULTA_bus\(47);
\u_notch|Mult0~56\ <= \u_notch|Mult0~8_RESULTA_bus\(48);
\u_notch|Mult0~57\ <= \u_notch|Mult0~8_RESULTA_bus\(49);
\u_notch|Mult0~58\ <= \u_notch|Mult0~8_RESULTA_bus\(50);
\u_notch|Mult0~59\ <= \u_notch|Mult0~8_RESULTA_bus\(51);
\u_notch|Mult0~60\ <= \u_notch|Mult0~8_RESULTA_bus\(52);
\u_notch|Mult0~61\ <= \u_notch|Mult0~8_RESULTA_bus\(53);
\u_notch|Mult0~62\ <= \u_notch|Mult0~8_RESULTA_bus\(54);
\u_notch|Mult0~63\ <= \u_notch|Mult0~8_RESULTA_bus\(55);
\u_notch|Mult0~64\ <= \u_notch|Mult0~8_RESULTA_bus\(56);
\u_notch|Mult0~65\ <= \u_notch|Mult0~8_RESULTA_bus\(57);
\u_notch|Mult0~66\ <= \u_notch|Mult0~8_RESULTA_bus\(58);
\u_notch|Mult0~67\ <= \u_notch|Mult0~8_RESULTA_bus\(59);
\u_notch|Mult0~68\ <= \u_notch|Mult0~8_RESULTA_bus\(60);
\u_notch|Mult0~69\ <= \u_notch|Mult0~8_RESULTA_bus\(61);
\u_notch|Mult0~70\ <= \u_notch|Mult0~8_RESULTA_bus\(62);
\u_notch|Mult0~71\ <= \u_notch|Mult0~8_RESULTA_bus\(63);

\u_notch|Mult3~8_ACLR_bus\ <= (gnd & NOT \KEY[0]~inputCLKENA0_outclk\);

\u_notch|Mult3~8_CLK_bus\ <= (gnd & gnd & \CLOCK_50~inputCLKENA0_outclk\);

\u_notch|Mult3~8_ENA_bus\ <= (vcc & vcc & \u_notch|state.S_DONE~q\);

\u_notch|Mult3~8_AX_bus\ <= (vcc & vcc & vcc & \SW[0]~input_o\ & NOT \SW[0]~input_o\ & gnd & NOT \SW[0]~input_o\ & NOT \SW[0]~input_o\ & NOT \SW[0]~input_o\ & \SW[0]~input_o\ & NOT \SW[0]~input_o\ & NOT \SW[0]~input_o\ & NOT \SW[0]~input_o\ & 
\SW[0]~input_o\ & \SW[0]~input_o\ & NOT \SW[0]~input_o\ & NOT \SW[0]~input_o\ & vcc);

\u_notch|Mult3~8_AY_bus\ <= (\u_notch|acc\(39) & \u_notch|acc\(39) & \u_notch|acc\(39) & \u_notch|acc\(39) & \u_notch|y_new~10_combout\ & \u_notch|y_new~9_combout\ & \u_notch|y_new~8_combout\ & \u_notch|y_new~7_combout\ & \u_notch|y_new~6_combout\ & 
\u_notch|y_new~5_combout\ & \u_notch|y_new~4_combout\ & \u_notch|y_new~3_combout\ & \u_notch|y_new~2_combout\ & \u_notch|y_new~1_combout\ & \u_notch|y_new~0_combout\ & \u_notch|y_new~11_combout\ & \u_notch|y_new~12_combout\ & \u_notch|y_new~14_combout\ & 
\u_notch|y_new~13_combout\);

\u_notch|Mult3~8_BX_bus\ <= (gnd & vcc & vcc & vcc & vcc & NOT \SW[0]~input_o\ & \SW[0]~input_o\ & \SW[0]~input_o\ & \SW[0]~input_o\ & NOT \SW[0]~input_o\ & gnd & vcc & \SW[0]~input_o\ & vcc & gnd);

\u_notch|Mult3~8_resulta\ <= \u_notch|Mult3~8_RESULTA_bus\(0);
\u_notch|Mult3~9\ <= \u_notch|Mult3~8_RESULTA_bus\(1);
\u_notch|Mult3~10\ <= \u_notch|Mult3~8_RESULTA_bus\(2);
\u_notch|Mult3~11\ <= \u_notch|Mult3~8_RESULTA_bus\(3);
\u_notch|Mult3~12\ <= \u_notch|Mult3~8_RESULTA_bus\(4);
\u_notch|Mult3~13\ <= \u_notch|Mult3~8_RESULTA_bus\(5);
\u_notch|Mult3~14\ <= \u_notch|Mult3~8_RESULTA_bus\(6);
\u_notch|Mult3~15\ <= \u_notch|Mult3~8_RESULTA_bus\(7);
\u_notch|Mult3~16\ <= \u_notch|Mult3~8_RESULTA_bus\(8);
\u_notch|Mult3~17\ <= \u_notch|Mult3~8_RESULTA_bus\(9);
\u_notch|Mult3~18\ <= \u_notch|Mult3~8_RESULTA_bus\(10);
\u_notch|Mult3~19\ <= \u_notch|Mult3~8_RESULTA_bus\(11);
\u_notch|Mult3~20\ <= \u_notch|Mult3~8_RESULTA_bus\(12);
\u_notch|Mult3~21\ <= \u_notch|Mult3~8_RESULTA_bus\(13);
\u_notch|Mult3~22\ <= \u_notch|Mult3~8_RESULTA_bus\(14);
\u_notch|Mult3~23\ <= \u_notch|Mult3~8_RESULTA_bus\(15);
\u_notch|Mult3~24\ <= \u_notch|Mult3~8_RESULTA_bus\(16);
\u_notch|Mult3~25\ <= \u_notch|Mult3~8_RESULTA_bus\(17);
\u_notch|Mult3~26\ <= \u_notch|Mult3~8_RESULTA_bus\(18);
\u_notch|Mult3~27\ <= \u_notch|Mult3~8_RESULTA_bus\(19);
\u_notch|Mult3~28\ <= \u_notch|Mult3~8_RESULTA_bus\(20);
\u_notch|Mult3~29\ <= \u_notch|Mult3~8_RESULTA_bus\(21);
\u_notch|Mult3~30\ <= \u_notch|Mult3~8_RESULTA_bus\(22);
\u_notch|Mult3~31\ <= \u_notch|Mult3~8_RESULTA_bus\(23);
\u_notch|Mult3~32\ <= \u_notch|Mult3~8_RESULTA_bus\(24);
\u_notch|Mult3~33\ <= \u_notch|Mult3~8_RESULTA_bus\(25);
\u_notch|Mult3~34\ <= \u_notch|Mult3~8_RESULTA_bus\(26);
\u_notch|Mult3~35\ <= \u_notch|Mult3~8_RESULTA_bus\(27);
\u_notch|Mult3~36\ <= \u_notch|Mult3~8_RESULTA_bus\(28);
\u_notch|Mult3~37\ <= \u_notch|Mult3~8_RESULTA_bus\(29);
\u_notch|Mult3~38\ <= \u_notch|Mult3~8_RESULTA_bus\(30);
\u_notch|Mult3~39\ <= \u_notch|Mult3~8_RESULTA_bus\(31);
\u_notch|Mult3~40\ <= \u_notch|Mult3~8_RESULTA_bus\(32);
\u_notch|Mult3~41\ <= \u_notch|Mult3~8_RESULTA_bus\(33);
\u_notch|Mult3~42\ <= \u_notch|Mult3~8_RESULTA_bus\(34);
\u_notch|Mult3~43\ <= \u_notch|Mult3~8_RESULTA_bus\(35);
\u_notch|Mult3~44\ <= \u_notch|Mult3~8_RESULTA_bus\(36);
\u_notch|Mult3~45\ <= \u_notch|Mult3~8_RESULTA_bus\(37);
\u_notch|Mult3~46\ <= \u_notch|Mult3~8_RESULTA_bus\(38);
\u_notch|Mult3~47\ <= \u_notch|Mult3~8_RESULTA_bus\(39);
\u_notch|Mult3~48\ <= \u_notch|Mult3~8_RESULTA_bus\(40);
\u_notch|Mult3~49\ <= \u_notch|Mult3~8_RESULTA_bus\(41);
\u_notch|Mult3~50\ <= \u_notch|Mult3~8_RESULTA_bus\(42);
\u_notch|Mult3~51\ <= \u_notch|Mult3~8_RESULTA_bus\(43);
\u_notch|Mult3~52\ <= \u_notch|Mult3~8_RESULTA_bus\(44);
\u_notch|Mult3~53\ <= \u_notch|Mult3~8_RESULTA_bus\(45);
\u_notch|Mult3~54\ <= \u_notch|Mult3~8_RESULTA_bus\(46);
\u_notch|Mult3~55\ <= \u_notch|Mult3~8_RESULTA_bus\(47);
\u_notch|Mult3~56\ <= \u_notch|Mult3~8_RESULTA_bus\(48);
\u_notch|Mult3~57\ <= \u_notch|Mult3~8_RESULTA_bus\(49);
\u_notch|Mult3~58\ <= \u_notch|Mult3~8_RESULTA_bus\(50);
\u_notch|Mult3~59\ <= \u_notch|Mult3~8_RESULTA_bus\(51);
\u_notch|Mult3~60\ <= \u_notch|Mult3~8_RESULTA_bus\(52);
\u_notch|Mult3~61\ <= \u_notch|Mult3~8_RESULTA_bus\(53);
\u_notch|Mult3~62\ <= \u_notch|Mult3~8_RESULTA_bus\(54);
\u_notch|Mult3~63\ <= \u_notch|Mult3~8_RESULTA_bus\(55);
\u_notch|Mult3~64\ <= \u_notch|Mult3~8_RESULTA_bus\(56);
\u_notch|Mult3~65\ <= \u_notch|Mult3~8_RESULTA_bus\(57);
\u_notch|Mult3~66\ <= \u_notch|Mult3~8_RESULTA_bus\(58);
\u_notch|Mult3~67\ <= \u_notch|Mult3~8_RESULTA_bus\(59);
\u_notch|Mult3~68\ <= \u_notch|Mult3~8_RESULTA_bus\(60);
\u_notch|Mult3~69\ <= \u_notch|Mult3~8_RESULTA_bus\(61);
\u_notch|Mult3~70\ <= \u_notch|Mult3~8_RESULTA_bus\(62);
\u_notch|Mult3~71\ <= \u_notch|Mult3~8_RESULTA_bus\(63);

\u_notch|Mult4~8\ <= \u_notch|Mult3~8_RESULTB_bus\(0);
\u_notch|Mult4~9\ <= \u_notch|Mult3~8_RESULTB_bus\(1);
\u_notch|Mult4~10\ <= \u_notch|Mult3~8_RESULTB_bus\(2);
\u_notch|Mult4~11\ <= \u_notch|Mult3~8_RESULTB_bus\(3);
\u_notch|Mult4~12\ <= \u_notch|Mult3~8_RESULTB_bus\(4);
\u_notch|Mult4~13\ <= \u_notch|Mult3~8_RESULTB_bus\(5);
\u_notch|Mult4~14\ <= \u_notch|Mult3~8_RESULTB_bus\(6);
\u_notch|Mult4~15\ <= \u_notch|Mult3~8_RESULTB_bus\(7);
\u_notch|Mult4~16\ <= \u_notch|Mult3~8_RESULTB_bus\(8);
\u_notch|Mult4~17\ <= \u_notch|Mult3~8_RESULTB_bus\(9);
\u_notch|Mult4~18\ <= \u_notch|Mult3~8_RESULTB_bus\(10);
\u_notch|Mult4~19\ <= \u_notch|Mult3~8_RESULTB_bus\(11);
\u_notch|Mult4~20\ <= \u_notch|Mult3~8_RESULTB_bus\(12);
\u_notch|Mult4~21\ <= \u_notch|Mult3~8_RESULTB_bus\(13);
\u_notch|Mult4~22\ <= \u_notch|Mult3~8_RESULTB_bus\(14);
\u_notch|Mult4~23\ <= \u_notch|Mult3~8_RESULTB_bus\(15);
\u_notch|Mult4~24\ <= \u_notch|Mult3~8_RESULTB_bus\(16);
\u_notch|Mult4~25\ <= \u_notch|Mult3~8_RESULTB_bus\(17);
\u_notch|Mult4~26\ <= \u_notch|Mult3~8_RESULTB_bus\(18);
\u_notch|Mult4~27\ <= \u_notch|Mult3~8_RESULTB_bus\(19);
\u_notch|Mult4~28\ <= \u_notch|Mult3~8_RESULTB_bus\(20);
\u_notch|Mult4~29\ <= \u_notch|Mult3~8_RESULTB_bus\(21);
\u_notch|Mult4~30\ <= \u_notch|Mult3~8_RESULTB_bus\(22);
\u_notch|Mult4~31\ <= \u_notch|Mult3~8_RESULTB_bus\(23);
\u_notch|Mult4~32\ <= \u_notch|Mult3~8_RESULTB_bus\(24);
\u_notch|Mult4~33\ <= \u_notch|Mult3~8_RESULTB_bus\(25);
\u_notch|Mult4~34\ <= \u_notch|Mult3~8_RESULTB_bus\(26);
\u_notch|Mult4~35\ <= \u_notch|Mult3~8_RESULTB_bus\(27);
\u_notch|Mult4~36\ <= \u_notch|Mult3~8_RESULTB_bus\(28);
\u_notch|Mult4~37\ <= \u_notch|Mult3~8_RESULTB_bus\(29);
\u_notch|Mult4~38\ <= \u_notch|Mult3~8_RESULTB_bus\(30);

\u_notch|Mult1~8_ACLR_bus\ <= (gnd & NOT \KEY[0]~inputCLKENA0_outclk\);

\u_notch|Mult1~8_CLK_bus\ <= (gnd & gnd & \CLOCK_50~inputCLKENA0_outclk\);

\u_notch|Mult1~8_ENA_bus\ <= (vcc & vcc & \u_notch|state.S_DONE~q\);

\u_notch|Mult1~8_AX_bus\ <= (\u_notch|x_n[15]~_Duplicate_1_q\ & \u_notch|x_n[15]~_Duplicate_1_q\ & \u_notch|x_n[15]~_Duplicate_1_q\ & \u_notch|x_n[14]~_Duplicate_1_q\ & \u_notch|x_n[13]~_Duplicate_1_q\ & \u_notch|x_n[12]~_Duplicate_1_q\ & 
\u_notch|x_n[11]~_Duplicate_1_q\ & \u_notch|x_n[10]~_Duplicate_1_q\ & \u_notch|x_n[9]~_Duplicate_1_q\ & \u_notch|x_n[8]~_Duplicate_1_q\ & \u_notch|x_n[7]~_Duplicate_1_q\ & \u_notch|x_n[6]~_Duplicate_1_q\ & \u_notch|x_n[5]~_Duplicate_1_q\ & 
\u_notch|x_n[4]~_Duplicate_1_q\ & gnd & gnd & gnd & gnd);

\u_notch|Mult1~8_AY_bus\ <= (vcc & vcc & vcc & vcc & \SW[0]~input_o\ & NOT \SW[0]~input_o\ & gnd & NOT \SW[0]~input_o\ & NOT \SW[0]~input_o\ & NOT \SW[0]~input_o\ & \SW[0]~input_o\ & NOT \SW[0]~input_o\ & NOT \SW[0]~input_o\ & NOT \SW[0]~input_o\ & 
\SW[0]~input_o\ & \SW[0]~input_o\ & NOT \SW[0]~input_o\ & NOT \SW[0]~input_o\ & vcc);

\u_notch|Mult1~8_resulta\ <= \u_notch|Mult1~8_RESULTA_bus\(0);
\u_notch|Mult1~9\ <= \u_notch|Mult1~8_RESULTA_bus\(1);
\u_notch|Mult1~10\ <= \u_notch|Mult1~8_RESULTA_bus\(2);
\u_notch|Mult1~11\ <= \u_notch|Mult1~8_RESULTA_bus\(3);
\u_notch|Mult1~12\ <= \u_notch|Mult1~8_RESULTA_bus\(4);
\u_notch|Mult1~13\ <= \u_notch|Mult1~8_RESULTA_bus\(5);
\u_notch|Mult1~14\ <= \u_notch|Mult1~8_RESULTA_bus\(6);
\u_notch|Mult1~15\ <= \u_notch|Mult1~8_RESULTA_bus\(7);
\u_notch|Mult1~16\ <= \u_notch|Mult1~8_RESULTA_bus\(8);
\u_notch|Mult1~17\ <= \u_notch|Mult1~8_RESULTA_bus\(9);
\u_notch|Mult1~18\ <= \u_notch|Mult1~8_RESULTA_bus\(10);
\u_notch|Mult1~19\ <= \u_notch|Mult1~8_RESULTA_bus\(11);
\u_notch|Mult1~20\ <= \u_notch|Mult1~8_RESULTA_bus\(12);
\u_notch|Mult1~21\ <= \u_notch|Mult1~8_RESULTA_bus\(13);
\u_notch|Mult1~22\ <= \u_notch|Mult1~8_RESULTA_bus\(14);
\u_notch|Mult1~23\ <= \u_notch|Mult1~8_RESULTA_bus\(15);
\u_notch|Mult1~24\ <= \u_notch|Mult1~8_RESULTA_bus\(16);
\u_notch|Mult1~25\ <= \u_notch|Mult1~8_RESULTA_bus\(17);
\u_notch|Mult1~26\ <= \u_notch|Mult1~8_RESULTA_bus\(18);
\u_notch|Mult1~27\ <= \u_notch|Mult1~8_RESULTA_bus\(19);
\u_notch|Mult1~28\ <= \u_notch|Mult1~8_RESULTA_bus\(20);
\u_notch|Mult1~29\ <= \u_notch|Mult1~8_RESULTA_bus\(21);
\u_notch|Mult1~30\ <= \u_notch|Mult1~8_RESULTA_bus\(22);
\u_notch|Mult1~31\ <= \u_notch|Mult1~8_RESULTA_bus\(23);
\u_notch|Mult1~32\ <= \u_notch|Mult1~8_RESULTA_bus\(24);
\u_notch|Mult1~33\ <= \u_notch|Mult1~8_RESULTA_bus\(25);
\u_notch|Mult1~34\ <= \u_notch|Mult1~8_RESULTA_bus\(26);
\u_notch|Mult1~35\ <= \u_notch|Mult1~8_RESULTA_bus\(27);
\u_notch|Mult1~36\ <= \u_notch|Mult1~8_RESULTA_bus\(28);
\u_notch|Mult1~37\ <= \u_notch|Mult1~8_RESULTA_bus\(29);
\u_notch|Mult1~38\ <= \u_notch|Mult1~8_RESULTA_bus\(30);
\u_notch|Mult1~39\ <= \u_notch|Mult1~8_RESULTA_bus\(31);
\u_notch|Mult1~40\ <= \u_notch|Mult1~8_RESULTA_bus\(32);
\u_notch|Mult1~41\ <= \u_notch|Mult1~8_RESULTA_bus\(33);
\u_notch|Mult1~42\ <= \u_notch|Mult1~8_RESULTA_bus\(34);
\u_notch|Mult1~43\ <= \u_notch|Mult1~8_RESULTA_bus\(35);
\u_notch|Mult1~44\ <= \u_notch|Mult1~8_RESULTA_bus\(36);
\u_notch|Mult1~45\ <= \u_notch|Mult1~8_RESULTA_bus\(37);
\u_notch|Mult1~46\ <= \u_notch|Mult1~8_RESULTA_bus\(38);
\u_notch|Mult1~47\ <= \u_notch|Mult1~8_RESULTA_bus\(39);
\u_notch|Mult1~48\ <= \u_notch|Mult1~8_RESULTA_bus\(40);
\u_notch|Mult1~49\ <= \u_notch|Mult1~8_RESULTA_bus\(41);
\u_notch|Mult1~50\ <= \u_notch|Mult1~8_RESULTA_bus\(42);
\u_notch|Mult1~51\ <= \u_notch|Mult1~8_RESULTA_bus\(43);
\u_notch|Mult1~52\ <= \u_notch|Mult1~8_RESULTA_bus\(44);
\u_notch|Mult1~53\ <= \u_notch|Mult1~8_RESULTA_bus\(45);
\u_notch|Mult1~54\ <= \u_notch|Mult1~8_RESULTA_bus\(46);
\u_notch|Mult1~55\ <= \u_notch|Mult1~8_RESULTA_bus\(47);
\u_notch|Mult1~56\ <= \u_notch|Mult1~8_RESULTA_bus\(48);
\u_notch|Mult1~57\ <= \u_notch|Mult1~8_RESULTA_bus\(49);
\u_notch|Mult1~58\ <= \u_notch|Mult1~8_RESULTA_bus\(50);
\u_notch|Mult1~59\ <= \u_notch|Mult1~8_RESULTA_bus\(51);
\u_notch|Mult1~60\ <= \u_notch|Mult1~8_RESULTA_bus\(52);
\u_notch|Mult1~61\ <= \u_notch|Mult1~8_RESULTA_bus\(53);
\u_notch|Mult1~62\ <= \u_notch|Mult1~8_RESULTA_bus\(54);
\u_notch|Mult1~63\ <= \u_notch|Mult1~8_RESULTA_bus\(55);
\u_notch|Mult1~64\ <= \u_notch|Mult1~8_RESULTA_bus\(56);
\u_notch|Mult1~65\ <= \u_notch|Mult1~8_RESULTA_bus\(57);
\u_notch|Mult1~66\ <= \u_notch|Mult1~8_RESULTA_bus\(58);
\u_notch|Mult1~67\ <= \u_notch|Mult1~8_RESULTA_bus\(59);
\u_notch|Mult1~68\ <= \u_notch|Mult1~8_RESULTA_bus\(60);
\u_notch|Mult1~69\ <= \u_notch|Mult1~8_RESULTA_bus\(61);
\u_notch|Mult1~70\ <= \u_notch|Mult1~8_RESULTA_bus\(62);
\u_notch|Mult1~71\ <= \u_notch|Mult1~8_RESULTA_bus\(63);

\u_notch|Mult2~8_ACLR_bus\ <= (gnd & NOT \KEY[0]~inputCLKENA0_outclk\);

\u_notch|Mult2~8_CLK_bus\ <= (gnd & gnd & \CLOCK_50~inputCLKENA0_outclk\);

\u_notch|Mult2~8_ENA_bus\ <= (vcc & vcc & \u_notch|state.S_DONE~q\);

\u_notch|Mult2~8_AX_bus\ <= (gnd & vcc & vcc & vcc & vcc & vcc & NOT \SW[0]~input_o\ & \SW[0]~input_o\ & \SW[0]~input_o\ & \SW[0]~input_o\ & NOT \SW[0]~input_o\ & gnd & vcc & \SW[0]~input_o\ & vcc);

\u_notch|Mult2~8_AY_bus\ <= (\u_notch|x_n1[15]~_Duplicate_1_q\ & \u_notch|x_n1[15]~_Duplicate_1_q\ & \u_notch|x_n1[15]~_Duplicate_1_q\ & \u_notch|x_n1[15]~_Duplicate_1_q\ & \u_notch|x_n1[14]~_Duplicate_1_q\ & \u_notch|x_n1[13]~_Duplicate_1_q\ & 
\u_notch|x_n1[12]~_Duplicate_1_q\ & \u_notch|x_n1[11]~_Duplicate_1_q\ & \u_notch|x_n1[10]~_Duplicate_1_q\ & \u_notch|x_n1[9]~_Duplicate_1_q\ & \u_notch|x_n1[8]~_Duplicate_1_q\ & \u_notch|x_n1[7]~_Duplicate_1_q\ & \u_notch|x_n1[6]~_Duplicate_1_q\ & 
\u_notch|x_n1[5]~_Duplicate_1_q\ & \u_notch|x_n1[4]~_Duplicate_1_q\ & gnd & gnd & gnd & gnd);

\u_notch|Mult2~8_resulta\ <= \u_notch|Mult2~8_RESULTA_bus\(0);
\u_notch|Mult2~9\ <= \u_notch|Mult2~8_RESULTA_bus\(1);
\u_notch|Mult2~10\ <= \u_notch|Mult2~8_RESULTA_bus\(2);
\u_notch|Mult2~11\ <= \u_notch|Mult2~8_RESULTA_bus\(3);
\u_notch|Mult2~12\ <= \u_notch|Mult2~8_RESULTA_bus\(4);
\u_notch|Mult2~13\ <= \u_notch|Mult2~8_RESULTA_bus\(5);
\u_notch|Mult2~14\ <= \u_notch|Mult2~8_RESULTA_bus\(6);
\u_notch|Mult2~15\ <= \u_notch|Mult2~8_RESULTA_bus\(7);
\u_notch|Mult2~16\ <= \u_notch|Mult2~8_RESULTA_bus\(8);
\u_notch|Mult2~17\ <= \u_notch|Mult2~8_RESULTA_bus\(9);
\u_notch|Mult2~18\ <= \u_notch|Mult2~8_RESULTA_bus\(10);
\u_notch|Mult2~19\ <= \u_notch|Mult2~8_RESULTA_bus\(11);
\u_notch|Mult2~20\ <= \u_notch|Mult2~8_RESULTA_bus\(12);
\u_notch|Mult2~21\ <= \u_notch|Mult2~8_RESULTA_bus\(13);
\u_notch|Mult2~22\ <= \u_notch|Mult2~8_RESULTA_bus\(14);
\u_notch|Mult2~23\ <= \u_notch|Mult2~8_RESULTA_bus\(15);
\u_notch|Mult2~24\ <= \u_notch|Mult2~8_RESULTA_bus\(16);
\u_notch|Mult2~25\ <= \u_notch|Mult2~8_RESULTA_bus\(17);
\u_notch|Mult2~26\ <= \u_notch|Mult2~8_RESULTA_bus\(18);
\u_notch|Mult2~27\ <= \u_notch|Mult2~8_RESULTA_bus\(19);
\u_notch|Mult2~28\ <= \u_notch|Mult2~8_RESULTA_bus\(20);
\u_notch|Mult2~29\ <= \u_notch|Mult2~8_RESULTA_bus\(21);
\u_notch|Mult2~30\ <= \u_notch|Mult2~8_RESULTA_bus\(22);
\u_notch|Mult2~31\ <= \u_notch|Mult2~8_RESULTA_bus\(23);
\u_notch|Mult2~32\ <= \u_notch|Mult2~8_RESULTA_bus\(24);
\u_notch|Mult2~33\ <= \u_notch|Mult2~8_RESULTA_bus\(25);
\u_notch|Mult2~34\ <= \u_notch|Mult2~8_RESULTA_bus\(26);
\u_notch|Mult2~35\ <= \u_notch|Mult2~8_RESULTA_bus\(27);
\u_notch|Mult2~36\ <= \u_notch|Mult2~8_RESULTA_bus\(28);
\u_notch|Mult2~37\ <= \u_notch|Mult2~8_RESULTA_bus\(29);
\u_notch|Mult2~38\ <= \u_notch|Mult2~8_RESULTA_bus\(30);
\u_notch|Mult2~39\ <= \u_notch|Mult2~8_RESULTA_bus\(31);
\u_notch|Mult2~40\ <= \u_notch|Mult2~8_RESULTA_bus\(32);
\u_notch|Mult2~41\ <= \u_notch|Mult2~8_RESULTA_bus\(33);
\u_notch|Mult2~42\ <= \u_notch|Mult2~8_RESULTA_bus\(34);
\u_notch|Mult2~43\ <= \u_notch|Mult2~8_RESULTA_bus\(35);
\u_notch|Mult2~44\ <= \u_notch|Mult2~8_RESULTA_bus\(36);
\u_notch|Mult2~45\ <= \u_notch|Mult2~8_RESULTA_bus\(37);
\u_notch|Mult2~46\ <= \u_notch|Mult2~8_RESULTA_bus\(38);
\u_notch|Mult2~47\ <= \u_notch|Mult2~8_RESULTA_bus\(39);
\u_notch|Mult2~48\ <= \u_notch|Mult2~8_RESULTA_bus\(40);
\u_notch|Mult2~49\ <= \u_notch|Mult2~8_RESULTA_bus\(41);
\u_notch|Mult2~50\ <= \u_notch|Mult2~8_RESULTA_bus\(42);
\u_notch|Mult2~51\ <= \u_notch|Mult2~8_RESULTA_bus\(43);
\u_notch|Mult2~52\ <= \u_notch|Mult2~8_RESULTA_bus\(44);
\u_notch|Mult2~53\ <= \u_notch|Mult2~8_RESULTA_bus\(45);
\u_notch|Mult2~54\ <= \u_notch|Mult2~8_RESULTA_bus\(46);
\u_notch|Mult2~55\ <= \u_notch|Mult2~8_RESULTA_bus\(47);
\u_notch|Mult2~56\ <= \u_notch|Mult2~8_RESULTA_bus\(48);
\u_notch|Mult2~57\ <= \u_notch|Mult2~8_RESULTA_bus\(49);
\u_notch|Mult2~58\ <= \u_notch|Mult2~8_RESULTA_bus\(50);
\u_notch|Mult2~59\ <= \u_notch|Mult2~8_RESULTA_bus\(51);
\u_notch|Mult2~60\ <= \u_notch|Mult2~8_RESULTA_bus\(52);
\u_notch|Mult2~61\ <= \u_notch|Mult2~8_RESULTA_bus\(53);
\u_notch|Mult2~62\ <= \u_notch|Mult2~8_RESULTA_bus\(54);
\u_notch|Mult2~63\ <= \u_notch|Mult2~8_RESULTA_bus\(55);
\u_notch|Mult2~64\ <= \u_notch|Mult2~8_RESULTA_bus\(56);
\u_notch|Mult2~65\ <= \u_notch|Mult2~8_RESULTA_bus\(57);
\u_notch|Mult2~66\ <= \u_notch|Mult2~8_RESULTA_bus\(58);
\u_notch|Mult2~67\ <= \u_notch|Mult2~8_RESULTA_bus\(59);
\u_notch|Mult2~68\ <= \u_notch|Mult2~8_RESULTA_bus\(60);
\u_notch|Mult2~69\ <= \u_notch|Mult2~8_RESULTA_bus\(61);
\u_notch|Mult2~70\ <= \u_notch|Mult2~8_RESULTA_bus\(62);
\u_notch|Mult2~71\ <= \u_notch|Mult2~8_RESULTA_bus\(63);
ALT_INV_blink_counter(3) <= NOT blink_counter(3);
ALT_INV_blink_counter(1) <= NOT blink_counter(1);
ALT_INV_blink_counter(0) <= NOT blink_counter(0);
ALT_INV_blink_counter(24) <= NOT blink_counter(24);
ALT_INV_blink_counter(22) <= NOT blink_counter(22);
ALT_INV_blink_counter(2) <= NOT blink_counter(2);
ALT_INV_blink_counter(23) <= NOT blink_counter(23);
\u_adc_driver|ALT_INV_wait_cnt\(3) <= NOT \u_adc_driver|wait_cnt\(3);
ALT_INV_blink_counter(11) <= NOT blink_counter(11);
ALT_INV_blink_counter(19) <= NOT blink_counter(19);
\u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(0) <= NOT \u_jtag_streamer|u_atlantic|td_shift\(0);
ALT_INV_blink_counter(16) <= NOT blink_counter(16);
ALT_INV_blink_counter(13) <= NOT blink_counter(13);
\u_adc_driver|ALT_INV_wait_cnt\(2) <= NOT \u_adc_driver|wait_cnt\(2);
ALT_INV_blink_counter(8) <= NOT blink_counter(8);
\u_adc_driver|ALT_INV_wait_cnt\(1) <= NOT \u_adc_driver|wait_cnt\(1);
ALT_INV_blink_counter(5) <= NOT blink_counter(5);
\u_adc_driver|ALT_INV_wait_cnt\(6) <= NOT \u_adc_driver|wait_cnt\(6);
ALT_INV_blink_counter(21) <= NOT blink_counter(21);
ALT_INV_blink_counter(6) <= NOT blink_counter(6);
ALT_INV_blink_counter(20) <= NOT blink_counter(20);
\u_adc_driver|ALT_INV_wait_cnt\(5) <= NOT \u_adc_driver|wait_cnt\(5);
\u_adc_driver|ALT_INV_wait_cnt\(4) <= NOT \u_adc_driver|wait_cnt\(4);
ALT_INV_blink_counter(17) <= NOT blink_counter(17);
ALT_INV_blink_counter(9) <= NOT blink_counter(9);
ALT_INV_blink_counter(7) <= NOT blink_counter(7);
ALT_INV_blink_counter(18) <= NOT blink_counter(18);
\u_adc_driver|ALT_INV_wait_cnt\(0) <= NOT \u_adc_driver|wait_cnt\(0);
ALT_INV_blink_counter(15) <= NOT blink_counter(15);
\u_adc_driver|ALT_INV_state.S_SHIFT~q\ <= NOT \u_adc_driver|state.S_SHIFT~q\;
ALT_INV_blink_counter(4) <= NOT blink_counter(4);
ALT_INV_blink_counter(10) <= NOT blink_counter(10);
ALT_INV_blink_counter(14) <= NOT blink_counter(14);
ALT_INV_blink_counter(12) <= NOT blink_counter(12);
\u_sample_clock|ALT_INV_counter\(2) <= NOT \u_sample_clock|counter\(2);
\u_sample_clock|ALT_INV_counter\(8) <= NOT \u_sample_clock|counter\(8);
\u_sample_clock|ALT_INV_counter\(13) <= NOT \u_sample_clock|counter\(13);
\u_sample_clock|ALT_INV_counter\(15) <= NOT \u_sample_clock|counter\(15);
\u_sample_clock|ALT_INV_counter\(14) <= NOT \u_sample_clock|counter\(14);
\u_sample_clock|ALT_INV_counter\(7) <= NOT \u_sample_clock|counter\(7);
\u_jtag_streamer|u_atlantic|ALT_INV_count\(1) <= NOT \u_jtag_streamer|u_atlantic|count\(1);
\u_sample_clock|ALT_INV_counter\(17) <= NOT \u_sample_clock|counter\(17);
\u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(9) <= NOT \u_jtag_streamer|u_atlantic|td_shift\(9);
\u_sample_clock|ALT_INV_counter\(12) <= NOT \u_sample_clock|counter\(12);
\u_sample_clock|ALT_INV_counter\(5) <= NOT \u_sample_clock|counter\(5);
\u_dc_block|ALT_INV_sample_out\(15) <= NOT \u_dc_block|sample_out\(15);
\u_sample_clock|ALT_INV_counter\(10) <= NOT \u_sample_clock|counter\(10);
\u_sample_clock|ALT_INV_counter\(6) <= NOT \u_sample_clock|counter\(6);
\u_dc_block|ALT_INV_sample_out\(12) <= NOT \u_dc_block|sample_out\(12);
\u_sample_clock|ALT_INV_counter\(4) <= NOT \u_sample_clock|counter\(4);
\u_dc_block|ALT_INV_sample_out\(5) <= NOT \u_dc_block|sample_out\(5);
\u_dc_block|ALT_INV_sample_out\(6) <= NOT \u_dc_block|sample_out\(6);
\u_sample_clock|ALT_INV_counter\(0) <= NOT \u_sample_clock|counter\(0);
\u_sample_clock|ALT_INV_counter\(9) <= NOT \u_sample_clock|counter\(9);
\u_sample_clock|ALT_INV_counter\(3) <= NOT \u_sample_clock|counter\(3);
\u_sample_clock|ALT_INV_counter\(1) <= NOT \u_sample_clock|counter\(1);
\u_dc_block|ALT_INV_sample_out\(4) <= NOT \u_dc_block|sample_out\(4);
\u_sample_clock|ALT_INV_counter\(16) <= NOT \u_sample_clock|counter\(16);
\u_sample_clock|ALT_INV_counter\(11) <= NOT \u_sample_clock|counter\(11);
\u_dc_block|ALT_INV_Add1~21_sumout\ <= NOT \u_dc_block|Add1~21_sumout\;
\u_dc_block|ALT_INV_Add1~5_sumout\ <= NOT \u_dc_block|Add1~5_sumout\;
\u_dc_block|ALT_INV_Add1~9_sumout\ <= NOT \u_dc_block|Add1~9_sumout\;
\u_dc_block|ALT_INV_Add1~25_sumout\ <= NOT \u_dc_block|Add1~25_sumout\;
\u_dc_block|ALT_INV_Add1~33_sumout\ <= NOT \u_dc_block|Add1~33_sumout\;
\u_dc_block|ALT_INV_Add1~29_sumout\ <= NOT \u_dc_block|Add1~29_sumout\;
\u_dc_block|ALT_INV_Add1~37_sumout\ <= NOT \u_dc_block|Add1~37_sumout\;
\u_dc_block|ALT_INV_Add1~41_sumout\ <= NOT \u_dc_block|Add1~41_sumout\;
\u_dc_block|ALT_INV_Add1~13_sumout\ <= NOT \u_dc_block|Add1~13_sumout\;
\u_dc_block|ALT_INV_Add1~17_sumout\ <= NOT \u_dc_block|Add1~17_sumout\;
\u_dc_block|ALT_INV_Add1~1_sumout\ <= NOT \u_dc_block|Add1~1_sumout\;
\u_dc_block|ALT_INV_Mult0~31\ <= NOT \u_dc_block|Mult0~31\;
\u_dc_block|ALT_INV_Mult0~38\ <= NOT \u_dc_block|Mult0~38\;
\u_dc_block|ALT_INV_Mult0~32\ <= NOT \u_dc_block|Mult0~32\;
\u_dc_block|ALT_INV_Mult0~27\ <= NOT \u_dc_block|Mult0~27\;
\u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(10) <= NOT \u_jtag_streamer|u_atlantic|td_shift\(10);
\u_jtag_streamer|u_atlantic|ALT_INV_count\(0) <= NOT \u_jtag_streamer|u_atlantic|count\(0);
\u_dc_block|ALT_INV_Mult0~36\ <= NOT \u_dc_block|Mult0~36\;
\u_dc_block|ALT_INV_Add1~49_sumout\ <= NOT \u_dc_block|Add1~49_sumout\;
\u_dc_block|ALT_INV_Mult0~34\ <= NOT \u_dc_block|Mult0~34\;
\u_dc_block|ALT_INV_Add1~45_sumout\ <= NOT \u_dc_block|Add1~45_sumout\;
\u_dc_block|ALT_INV_Mult0~23\ <= NOT \u_dc_block|Mult0~23\;
\u_dc_block|ALT_INV_Mult0~26\ <= NOT \u_dc_block|Mult0~26\;
\u_dc_block|ALT_INV_Mult0~33\ <= NOT \u_dc_block|Mult0~33\;
\u_dc_block|ALT_INV_Mult0~24\ <= NOT \u_dc_block|Mult0~24\;
\u_dc_block|ALT_INV_Mult0~35\ <= NOT \u_dc_block|Mult0~35\;
\u_jtag_streamer|u_atlantic|ALT_INV_count\(8) <= NOT \u_jtag_streamer|u_atlantic|count\(8);
\u_dc_block|ALT_INV_Mult0~25\ <= NOT \u_dc_block|Mult0~25\;
\u_dc_block|ALT_INV_Mult0~30\ <= NOT \u_dc_block|Mult0~30\;
\u_dc_block|ALT_INV_Mult0~29\ <= NOT \u_dc_block|Mult0~29\;
\u_dc_block|ALT_INV_Mult0~37\ <= NOT \u_dc_block|Mult0~37\;
\u_dc_block|ALT_INV_Mult0~28\ <= NOT \u_dc_block|Mult0~28\;
\u_notch|ALT_INV_acc\(21) <= NOT \u_notch|acc\(21);
\u_notch|ALT_INV_acc\(22) <= NOT \u_notch|acc\(22);
\u_notch|ALT_INV_acc\(24) <= NOT \u_notch|acc\(24);
\u_notch|ALT_INV_acc\(26) <= NOT \u_notch|acc\(26);
\u_notch|ALT_INV_acc\(27) <= NOT \u_notch|acc\(27);
\u_notch|ALT_INV_acc\(28) <= NOT \u_notch|acc\(28);
\u_jtag_streamer|u_atlantic|ALT_INV_count\(6) <= NOT \u_jtag_streamer|u_atlantic|count\(6);
\u_notch|ALT_INV_Mult0~8_resulta\ <= NOT \u_notch|Mult0~8_resulta\;
\u_notch|ALT_INV_Mult0~9\ <= NOT \u_notch|Mult0~9\;
\u_notch|ALT_INV_Mult0~10\ <= NOT \u_notch|Mult0~10\;
\u_notch|ALT_INV_acc\(37) <= NOT \u_notch|acc\(37);
\u_notch|ALT_INV_Mult0~11\ <= NOT \u_notch|Mult0~11\;
\u_notch|ALT_INV_acc\(23) <= NOT \u_notch|acc\(23);
\u_notch|ALT_INV_Mult0~12\ <= NOT \u_notch|Mult0~12\;
\u_notch|ALT_INV_Mult0~13\ <= NOT \u_notch|Mult0~13\;
\u_notch|ALT_INV_acc\(36) <= NOT \u_notch|acc\(36);
\u_notch|ALT_INV_acc\(19) <= NOT \u_notch|acc\(19);
\u_notch|ALT_INV_acc\(25) <= NOT \u_notch|acc\(25);
\u_notch|ALT_INV_acc\(32) <= NOT \u_notch|acc\(32);
\u_notch|ALT_INV_Mult0~14\ <= NOT \u_notch|Mult0~14\;
\u_notch|ALT_INV_acc\(39) <= NOT \u_notch|acc\(39);
\u_notch|ALT_INV_acc\(30) <= NOT \u_notch|acc\(30);
\u_notch|ALT_INV_acc\(35) <= NOT \u_notch|acc\(35);
\u_notch|ALT_INV_acc\(33) <= NOT \u_notch|acc\(33);
\u_notch|ALT_INV_acc\(31) <= NOT \u_notch|acc\(31);
\u_notch|ALT_INV_acc\(38) <= NOT \u_notch|acc\(38);
\u_notch|ALT_INV_acc\(34) <= NOT \u_notch|acc\(34);
\u_notch|ALT_INV_acc\(29) <= NOT \u_notch|acc\(29);
\u_notch|ALT_INV_acc\(18) <= NOT \u_notch|acc\(18);
\u_notch|ALT_INV_acc\(20) <= NOT \u_notch|acc\(20);
\u_notch|ALT_INV_Mult0~25\ <= NOT \u_notch|Mult0~25\;
\u_notch|ALT_INV_Add0~1_sumout\ <= NOT \u_notch|Add0~1_sumout\;
\u_notch|ALT_INV_Mult0~34\ <= NOT \u_notch|Mult0~34\;
\u_notch|ALT_INV_Add0~5_sumout\ <= NOT \u_notch|Add0~5_sumout\;
\u_notch|ALT_INV_Add0~9_sumout\ <= NOT \u_notch|Add0~9_sumout\;
\u_notch|ALT_INV_Mult0~23\ <= NOT \u_notch|Mult0~23\;
\u_notch|ALT_INV_Mult0~24\ <= NOT \u_notch|Mult0~24\;
\u_notch|ALT_INV_Add0~13_sumout\ <= NOT \u_notch|Add0~13_sumout\;
\u_notch|ALT_INV_Mult0~22\ <= NOT \u_notch|Mult0~22\;
\u_notch|ALT_INV_Mult0~30\ <= NOT \u_notch|Mult0~30\;
\u_notch|ALT_INV_Mult0~33\ <= NOT \u_notch|Mult0~33\;
\u_notch|ALT_INV_Mult0~31\ <= NOT \u_notch|Mult0~31\;
\u_notch|ALT_INV_Mult0~32\ <= NOT \u_notch|Mult0~32\;
\u_notch|ALT_INV_Mult0~16\ <= NOT \u_notch|Mult0~16\;
\u_notch|ALT_INV_Mult0~29\ <= NOT \u_notch|Mult0~29\;
\u_notch|ALT_INV_Mult0~18\ <= NOT \u_notch|Mult0~18\;
\u_notch|ALT_INV_Mult0~15\ <= NOT \u_notch|Mult0~15\;
\u_notch|ALT_INV_Mult0~19\ <= NOT \u_notch|Mult0~19\;
\u_notch|ALT_INV_Mult0~28\ <= NOT \u_notch|Mult0~28\;
\u_notch|ALT_INV_Mult0~35\ <= NOT \u_notch|Mult0~35\;
\u_notch|ALT_INV_Mult0~17\ <= NOT \u_notch|Mult0~17\;
\u_notch|ALT_INV_Mult0~27\ <= NOT \u_notch|Mult0~27\;
\u_notch|ALT_INV_Mult0~37\ <= NOT \u_notch|Mult0~37\;
\u_notch|ALT_INV_Mult0~26\ <= NOT \u_notch|Mult0~26\;
\u_notch|ALT_INV_Mult0~21\ <= NOT \u_notch|Mult0~21\;
\u_notch|ALT_INV_Mult0~36\ <= NOT \u_notch|Mult0~36\;
\u_notch|ALT_INV_Mult0~20\ <= NOT \u_notch|Mult0~20\;
\u_notch|ALT_INV_Mult0~38\ <= NOT \u_notch|Mult0~38\;
\u_notch|ALT_INV_Add0~81_sumout\ <= NOT \u_notch|Add0~81_sumout\;
\u_notch|ALT_INV_Mult3~9\ <= NOT \u_notch|Mult3~9\;
\u_notch|ALT_INV_Mult3~17\ <= NOT \u_notch|Mult3~17\;
\u_notch|ALT_INV_Mult3~24\ <= NOT \u_notch|Mult3~24\;
\u_notch|ALT_INV_Mult3~25\ <= NOT \u_notch|Mult3~25\;
\u_notch|ALT_INV_Mult3~27\ <= NOT \u_notch|Mult3~27\;
\u_notch|ALT_INV_Add0~41_sumout\ <= NOT \u_notch|Add0~41_sumout\;
\u_notch|ALT_INV_Add0~45_sumout\ <= NOT \u_notch|Add0~45_sumout\;
\u_notch|ALT_INV_Add0~61_sumout\ <= NOT \u_notch|Add0~61_sumout\;
\u_notch|ALT_INV_Add0~17_sumout\ <= NOT \u_notch|Add0~17_sumout\;
\u_notch|ALT_INV_Add0~77_sumout\ <= NOT \u_notch|Add0~77_sumout\;
\u_notch|ALT_INV_Mult3~19\ <= NOT \u_notch|Mult3~19\;
\u_notch|ALT_INV_Add0~73_sumout\ <= NOT \u_notch|Add0~73_sumout\;
\u_notch|ALT_INV_Add0~85_sumout\ <= NOT \u_notch|Add0~85_sumout\;
\u_notch|ALT_INV_Add0~69_sumout\ <= NOT \u_notch|Add0~69_sumout\;
\u_notch|ALT_INV_Mult3~12\ <= NOT \u_notch|Mult3~12\;
\u_notch|ALT_INV_Mult3~8_resulta\ <= NOT \u_notch|Mult3~8_resulta\;
\u_notch|ALT_INV_Mult3~18\ <= NOT \u_notch|Mult3~18\;
\u_notch|ALT_INV_Mult3~20\ <= NOT \u_notch|Mult3~20\;
\u_notch|ALT_INV_Add0~65_sumout\ <= NOT \u_notch|Add0~65_sumout\;
\u_notch|ALT_INV_Mult3~21\ <= NOT \u_notch|Mult3~21\;
\u_notch|ALT_INV_Mult3~22\ <= NOT \u_notch|Mult3~22\;
\u_notch|ALT_INV_Mult3~23\ <= NOT \u_notch|Mult3~23\;
\u_notch|ALT_INV_Mult3~11\ <= NOT \u_notch|Mult3~11\;
\u_notch|ALT_INV_Mult3~26\ <= NOT \u_notch|Mult3~26\;
\u_notch|ALT_INV_Add0~33_sumout\ <= NOT \u_notch|Add0~33_sumout\;
\u_notch|ALT_INV_Add0~49_sumout\ <= NOT \u_notch|Add0~49_sumout\;
\u_notch|ALT_INV_Add0~57_sumout\ <= NOT \u_notch|Add0~57_sumout\;
\u_notch|ALT_INV_Add0~29_sumout\ <= NOT \u_notch|Add0~29_sumout\;
\u_notch|ALT_INV_Mult3~13\ <= NOT \u_notch|Mult3~13\;
\u_notch|ALT_INV_acc\(17) <= NOT \u_notch|acc\(17);
\u_notch|ALT_INV_Add0~21_sumout\ <= NOT \u_notch|Add0~21_sumout\;
\u_notch|ALT_INV_Mult3~14\ <= NOT \u_notch|Mult3~14\;
\u_notch|ALT_INV_Add0~37_sumout\ <= NOT \u_notch|Add0~37_sumout\;
\u_notch|ALT_INV_Mult3~15\ <= NOT \u_notch|Mult3~15\;
\u_notch|ALT_INV_Mult3~16\ <= NOT \u_notch|Mult3~16\;
\u_notch|ALT_INV_Mult3~10\ <= NOT \u_notch|Mult3~10\;
\u_notch|ALT_INV_Add0~25_sumout\ <= NOT \u_notch|Add0~25_sumout\;
\u_notch|ALT_INV_Add0~53_sumout\ <= NOT \u_notch|Add0~53_sumout\;
\u_notch|ALT_INV_Mult4~17\ <= NOT \u_notch|Mult4~17\;
\u_notch|ALT_INV_Mult4~20\ <= NOT \u_notch|Mult4~20\;
\u_notch|ALT_INV_Mult4~21\ <= NOT \u_notch|Mult4~21\;
\u_notch|ALT_INV_Mult4~22\ <= NOT \u_notch|Mult4~22\;
\u_notch|ALT_INV_Mult4~24\ <= NOT \u_notch|Mult4~24\;
\u_notch|ALT_INV_Mult4~25\ <= NOT \u_notch|Mult4~25\;
\u_notch|ALT_INV_Mult4~19\ <= NOT \u_notch|Mult4~19\;
\u_notch|ALT_INV_Mult3~33\ <= NOT \u_notch|Mult3~33\;
\u_notch|ALT_INV_Mult4~26\ <= NOT \u_notch|Mult4~26\;
\u_notch|ALT_INV_Mult4~23\ <= NOT \u_notch|Mult4~23\;
\u_notch|ALT_INV_Mult4~16\ <= NOT \u_notch|Mult4~16\;
\u_notch|ALT_INV_Mult4~27\ <= NOT \u_notch|Mult4~27\;
\u_notch|ALT_INV_Mult4~18\ <= NOT \u_notch|Mult4~18\;
\u_notch|ALT_INV_Mult3~30\ <= NOT \u_notch|Mult3~30\;
\u_notch|ALT_INV_Mult3~34\ <= NOT \u_notch|Mult3~34\;
\u_notch|ALT_INV_Mult3~39\ <= NOT \u_notch|Mult3~39\;
\u_notch|ALT_INV_Mult3~37\ <= NOT \u_notch|Mult3~37\;
\u_notch|ALT_INV_Mult3~38\ <= NOT \u_notch|Mult3~38\;
\u_notch|ALT_INV_Mult3~29\ <= NOT \u_notch|Mult3~29\;
\u_notch|ALT_INV_Mult3~35\ <= NOT \u_notch|Mult3~35\;
\u_notch|ALT_INV_Mult3~32\ <= NOT \u_notch|Mult3~32\;
\u_notch|ALT_INV_Mult3~28\ <= NOT \u_notch|Mult3~28\;
\u_notch|ALT_INV_Mult4~8\ <= NOT \u_notch|Mult4~8\;
\u_notch|ALT_INV_Mult4~9\ <= NOT \u_notch|Mult4~9\;
\u_notch|ALT_INV_Mult4~10\ <= NOT \u_notch|Mult4~10\;
\u_notch|ALT_INV_Mult4~11\ <= NOT \u_notch|Mult4~11\;
\u_notch|ALT_INV_Mult4~12\ <= NOT \u_notch|Mult4~12\;
\u_notch|ALT_INV_Mult3~36\ <= NOT \u_notch|Mult3~36\;
\u_notch|ALT_INV_Mult4~13\ <= NOT \u_notch|Mult4~13\;
\u_notch|ALT_INV_Mult3~31\ <= NOT \u_notch|Mult3~31\;
\u_notch|ALT_INV_Mult4~14\ <= NOT \u_notch|Mult4~14\;
\u_notch|ALT_INV_Mult4~15\ <= NOT \u_notch|Mult4~15\;
\u_notch|ALT_INV_Mult1~11\ <= NOT \u_notch|Mult1~11\;
\u_notch|ALT_INV_Mult1~20\ <= NOT \u_notch|Mult1~20\;
\u_notch|ALT_INV_Mult4~32\ <= NOT \u_notch|Mult4~32\;
\u_notch|ALT_INV_Mult1~15\ <= NOT \u_notch|Mult1~15\;
\u_notch|ALT_INV_Mult1~13\ <= NOT \u_notch|Mult1~13\;
\u_notch|ALT_INV_Mult4~31\ <= NOT \u_notch|Mult4~31\;
\u_notch|ALT_INV_Mult4~35\ <= NOT \u_notch|Mult4~35\;
\u_notch|ALT_INV_Mult1~14\ <= NOT \u_notch|Mult1~14\;
\u_notch|ALT_INV_Mult1~24\ <= NOT \u_notch|Mult1~24\;
\u_notch|ALT_INV_Mult1~38\ <= NOT \u_notch|Mult1~38\;
\u_notch|ALT_INV_Mult1~18\ <= NOT \u_notch|Mult1~18\;
\u_notch|ALT_INV_Mult1~10\ <= NOT \u_notch|Mult1~10\;
\u_notch|ALT_INV_Mult1~22\ <= NOT \u_notch|Mult1~22\;
\u_notch|ALT_INV_Mult1~17\ <= NOT \u_notch|Mult1~17\;
\u_notch|ALT_INV_Mult1~23\ <= NOT \u_notch|Mult1~23\;
\u_notch|ALT_INV_Mult4~34\ <= NOT \u_notch|Mult4~34\;
\u_notch|ALT_INV_Mult1~33\ <= NOT \u_notch|Mult1~33\;
\u_notch|ALT_INV_Mult1~29\ <= NOT \u_notch|Mult1~29\;
\u_notch|ALT_INV_Mult1~19\ <= NOT \u_notch|Mult1~19\;
\u_notch|ALT_INV_Mult1~37\ <= NOT \u_notch|Mult1~37\;
\u_notch|ALT_INV_Mult1~16\ <= NOT \u_notch|Mult1~16\;
\u_notch|ALT_INV_Mult4~36\ <= NOT \u_notch|Mult4~36\;
\u_notch|ALT_INV_Mult1~30\ <= NOT \u_notch|Mult1~30\;
\u_notch|ALT_INV_Mult4~38\ <= NOT \u_notch|Mult4~38\;
\u_notch|ALT_INV_Mult1~28\ <= NOT \u_notch|Mult1~28\;
\u_notch|ALT_INV_Mult1~9\ <= NOT \u_notch|Mult1~9\;
\u_notch|ALT_INV_Mult1~31\ <= NOT \u_notch|Mult1~31\;
\u_notch|ALT_INV_Mult1~36\ <= NOT \u_notch|Mult1~36\;
\u_notch|ALT_INV_Mult1~12\ <= NOT \u_notch|Mult1~12\;
\u_notch|ALT_INV_Mult4~33\ <= NOT \u_notch|Mult4~33\;
\u_notch|ALT_INV_Mult4~37\ <= NOT \u_notch|Mult4~37\;
\u_notch|ALT_INV_Mult1~8_resulta\ <= NOT \u_notch|Mult1~8_resulta\;
\u_notch|ALT_INV_Mult1~26\ <= NOT \u_notch|Mult1~26\;
\u_notch|ALT_INV_Mult1~21\ <= NOT \u_notch|Mult1~21\;
\u_notch|ALT_INV_Mult1~27\ <= NOT \u_notch|Mult1~27\;
\u_notch|ALT_INV_Mult1~34\ <= NOT \u_notch|Mult1~34\;
\u_notch|ALT_INV_Mult1~32\ <= NOT \u_notch|Mult1~32\;
\u_notch|ALT_INV_Mult1~35\ <= NOT \u_notch|Mult1~35\;
\u_notch|ALT_INV_Mult4~30\ <= NOT \u_notch|Mult4~30\;
\u_notch|ALT_INV_Mult1~39\ <= NOT \u_notch|Mult1~39\;
\u_notch|ALT_INV_Mult4~29\ <= NOT \u_notch|Mult4~29\;
\u_notch|ALT_INV_Mult4~28\ <= NOT \u_notch|Mult4~28\;
\u_notch|ALT_INV_Mult1~25\ <= NOT \u_notch|Mult1~25\;
\u_notch|ALT_INV_Mult2~33\ <= NOT \u_notch|Mult2~33\;
\u_notch|ALT_INV_Mult2~34\ <= NOT \u_notch|Mult2~34\;
\u_notch|ALT_INV_Mult2~8_resulta\ <= NOT \u_notch|Mult2~8_resulta\;
\u_notch|ALT_INV_Mult2~17\ <= NOT \u_notch|Mult2~17\;
\u_notch|ALT_INV_Mult2~9\ <= NOT \u_notch|Mult2~9\;
\u_notch|ALT_INV_Mult2~29\ <= NOT \u_notch|Mult2~29\;
\u_notch|ALT_INV_Mult2~21\ <= NOT \u_notch|Mult2~21\;
\u_notch|ALT_INV_Mult2~23\ <= NOT \u_notch|Mult2~23\;
\u_notch|ALT_INV_Mult2~10\ <= NOT \u_notch|Mult2~10\;
\u_notch|ALT_INV_Mult2~13\ <= NOT \u_notch|Mult2~13\;
\u_notch|ALT_INV_Mult2~16\ <= NOT \u_notch|Mult2~16\;
\u_notch|ALT_INV_Mult2~22\ <= NOT \u_notch|Mult2~22\;
\u_notch|ALT_INV_Mult2~14\ <= NOT \u_notch|Mult2~14\;
\u_notch|ALT_INV_Mult2~27\ <= NOT \u_notch|Mult2~27\;
\u_notch|ALT_INV_Mult2~15\ <= NOT \u_notch|Mult2~15\;
\u_notch|ALT_INV_Mult2~37\ <= NOT \u_notch|Mult2~37\;
\u_notch|ALT_INV_Mult2~18\ <= NOT \u_notch|Mult2~18\;
\u_notch|ALT_INV_Mult2~36\ <= NOT \u_notch|Mult2~36\;
\u_notch|ALT_INV_Mult2~26\ <= NOT \u_notch|Mult2~26\;
\u_notch|ALT_INV_Mult2~28\ <= NOT \u_notch|Mult2~28\;
\u_notch|ALT_INV_Mult2~35\ <= NOT \u_notch|Mult2~35\;
\u_notch|ALT_INV_Mult2~25\ <= NOT \u_notch|Mult2~25\;
\u_notch|ALT_INV_Mult2~38\ <= NOT \u_notch|Mult2~38\;
\u_notch|ALT_INV_Mult2~11\ <= NOT \u_notch|Mult2~11\;
\u_notch|ALT_INV_Mult2~20\ <= NOT \u_notch|Mult2~20\;
\u_notch|ALT_INV_Mult2~19\ <= NOT \u_notch|Mult2~19\;
\u_notch|ALT_INV_Mult2~31\ <= NOT \u_notch|Mult2~31\;
\u_notch|ALT_INV_Mult2~24\ <= NOT \u_notch|Mult2~24\;
\u_notch|ALT_INV_Mult2~32\ <= NOT \u_notch|Mult2~32\;
\u_notch|ALT_INV_Mult2~12\ <= NOT \u_notch|Mult2~12\;
\u_notch|ALT_INV_Mult2~30\ <= NOT \u_notch|Mult2~30\;
\u_notch|ALT_INV_acc\(4) <= NOT \u_notch|acc\(4);
\u_notch|ALT_INV_Add0~202_sumout\ <= NOT \u_notch|Add0~202_sumout\;
\u_notch|ALT_INV_acc\(3) <= NOT \u_notch|acc\(3);
\u_notch|ALT_INV_Add0~190_sumout\ <= NOT \u_notch|Add0~190_sumout\;
\u_notch|ALT_INV_Add0~154_sumout\ <= NOT \u_notch|Add0~154_sumout\;
\u_notch|ALT_INV_Add0~208_sumout\ <= NOT \u_notch|Add0~208_sumout\;
\u_notch|ALT_INV_Add0~196_sumout\ <= NOT \u_notch|Add0~196_sumout\;
\u_notch|ALT_INV_acc\(16) <= NOT \u_notch|acc\(16);
\u_notch|ALT_INV_Add0~166_sumout\ <= NOT \u_notch|Add0~166_sumout\;
\u_notch|ALT_INV_Add0~160_sumout\ <= NOT \u_notch|Add0~160_sumout\;
\u_notch|ALT_INV_Add0~142_sumout\ <= NOT \u_notch|Add0~142_sumout\;
\u_notch|ALT_INV_acc\(8) <= NOT \u_notch|acc\(8);
\u_notch|ALT_INV_Add0~178_sumout\ <= NOT \u_notch|Add0~178_sumout\;
\u_notch|ALT_INV_Add0~184_sumout\ <= NOT \u_notch|Add0~184_sumout\;
\u_notch|ALT_INV_acc\(2) <= NOT \u_notch|acc\(2);
\u_notch|ALT_INV_Add0~148_sumout\ <= NOT \u_notch|Add0~148_sumout\;
\u_notch|ALT_INV_Add0~124_sumout\ <= NOT \u_notch|Add0~124_sumout\;
\u_jtag_streamer|u_atlantic|ALT_INV_count\(2) <= NOT \u_jtag_streamer|u_atlantic|count\(2);
\u_notch|ALT_INV_acc\(13) <= NOT \u_notch|acc\(13);
\u_notch|ALT_INV_acc\(12) <= NOT \u_notch|acc\(12);
\u_notch|ALT_INV_acc\(10) <= NOT \u_notch|acc\(10);
\u_notch|ALT_INV_acc\(9) <= NOT \u_notch|acc\(9);
\u_notch|ALT_INV_acc\(11) <= NOT \u_notch|acc\(11);
\u_notch|ALT_INV_Add0~130_sumout\ <= NOT \u_notch|Add0~130_sumout\;
\u_notch|ALT_INV_Add0~172_sumout\ <= NOT \u_notch|Add0~172_sumout\;
\u_notch|ALT_INV_acc\(15) <= NOT \u_notch|acc\(15);
\u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(8) <= NOT \u_jtag_streamer|u_atlantic|td_shift\(8);
\u_notch|ALT_INV_Add0~134_sumout\ <= NOT \u_notch|Add0~134_sumout\;
\u_notch|ALT_INV_acc\(14) <= NOT \u_notch|acc\(14);
\u_notch|ALT_INV_Add0~93_sumout\ <= NOT \u_notch|Add0~93_sumout\;
\u_notch|ALT_INV_acc\(7) <= NOT \u_notch|acc\(7);
\u_notch|ALT_INV_acc\(6) <= NOT \u_notch|acc\(6);
\u_notch|ALT_INV_acc\(5) <= NOT \u_notch|acc\(5);
ALT_INV_display_data(11) <= NOT display_data(11);
\u_adc_driver|ALT_INV_sclk_int~q\ <= NOT \u_adc_driver|sclk_int~q\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\u_adc_driver|ALT_INV_state.S_IDLE~q\ <= NOT \u_adc_driver|state.S_IDLE~q\;
\ALT_INV_blink_led~q\ <= NOT \blink_led~q\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
ALT_INV_display_data(6) <= NOT display_data(6);
ALT_INV_display_data(7) <= NOT display_data(7);
\u_dc_block|ALT_INV_out_valid~q\ <= NOT \u_dc_block|out_valid~q\;
ALT_INV_filtered_12bit(0) <= NOT filtered_12bit(0);
\u_adc_driver|ALT_INV_state.S_DONE~q\ <= NOT \u_adc_driver|state.S_DONE~q\;
\u_notch|ALT_INV_Add0~214_sumout\ <= NOT \u_notch|Add0~214_sumout\;
ALT_INV_display_data(2) <= NOT display_data(2);
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
ALT_INV_display_data(4) <= NOT display_data(4);
ALT_INV_display_data(10) <= NOT display_data(10);
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\u_notch|ALT_INV_Add0~220_sumout\ <= NOT \u_notch|Add0~220_sumout\;
ALT_INV_display_data(8) <= NOT display_data(8);
\ALT_INV_filtered_valid~q\ <= NOT \filtered_valid~q\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\u_adc_driver|ALT_INV_adc_din~q\ <= NOT \u_adc_driver|adc_din~q\;
\u_sample_clock|ALT_INV_sample_tick~q\ <= NOT \u_sample_clock|sample_tick~q\;
\u_notch|ALT_INV_acc\(0) <= NOT \u_notch|acc\(0);
\u_adc_driver|ALT_INV_busy~q\ <= NOT \u_adc_driver|busy~q\;
ALT_INV_display_data(0) <= NOT display_data(0);
ALT_INV_display_data(3) <= NOT display_data(3);
ALT_INV_display_data(1) <= NOT display_data(1);
ALT_INV_display_data(9) <= NOT display_data(9);
\u_adc_driver|ALT_INV_adc_convst~q\ <= NOT \u_adc_driver|adc_convst~q\;
\u_jtag_streamer|u_atlantic|ALT_INV_adapted_tdo~q\ <= NOT \u_jtag_streamer|u_atlantic|adapted_tdo~q\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_display_data(5) <= NOT display_data(5);
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\u_notch|ALT_INV_acc\(1) <= NOT \u_notch|acc\(1);
\u_adc_driver|ALT_INV_tx_reg\(4) <= NOT \u_adc_driver|tx_reg\(4);
\u_adc_driver|ALT_INV_clk_cnt\(0) <= NOT \u_adc_driver|clk_cnt\(0);
\u_jtag_streamer|u_atlantic|ALT_INV_user_saw_rvalid~q\ <= NOT \u_jtag_streamer|u_atlantic|user_saw_rvalid~q\;
\u_adc_driver|ALT_INV_Equal1~0_combout\ <= NOT \u_adc_driver|Equal1~0_combout\;
\u_adc_driver|ALT_INV_bit_cnt\(0) <= NOT \u_adc_driver|bit_cnt\(0);
\u_sample_clock|ALT_INV_Equal0~1_combout\ <= NOT \u_sample_clock|Equal0~1_combout\;
\u_jtag_streamer|u_atlantic|ALT_INV_count\(9) <= NOT \u_jtag_streamer|u_atlantic|count\(9);
\u_adc_driver|ALT_INV_Selector16~0_combout\ <= NOT \u_adc_driver|Selector16~0_combout\;
ALT_INV_filtered_12bit(4) <= NOT filtered_12bit(4);
\u_adc_driver|ALT_INV_bit_cnt\(1) <= NOT \u_adc_driver|bit_cnt\(1);
\u_jtag_streamer|u_atlantic|ALT_INV_rvalid~q\ <= NOT \u_jtag_streamer|u_atlantic|rvalid~q\;
\u_notch|ALT_INV_out_valid~q\ <= NOT \u_notch|out_valid~q\;
\u_jtag_streamer|u_atlantic|ALT_INV_td_shift~1_combout\ <= NOT \u_jtag_streamer|u_atlantic|td_shift~1_combout\;
\u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(1) <= NOT \u_jtag_streamer|u_atlantic|td_shift\(1);
\u_sample_clock|ALT_INV_Equal0~0_combout\ <= NOT \u_sample_clock|Equal0~0_combout\;
\u_adc_driver|ALT_INV_conv_cnt\(0) <= NOT \u_adc_driver|conv_cnt\(0);
\u_adc_driver|ALT_INV_Selector15~0_combout\ <= NOT \u_adc_driver|Selector15~0_combout\;
\u_adc_driver|ALT_INV_Selector2~1_combout\ <= NOT \u_adc_driver|Selector2~1_combout\;
\u_adc_driver|ALT_INV_clk_cnt\(1) <= NOT \u_adc_driver|clk_cnt\(1);
\u_adc_driver|ALT_INV_Selector2~2_combout\ <= NOT \u_adc_driver|Selector2~2_combout\;
\u_jtag_streamer|u_atlantic|ALT_INV_td_shift~0_combout\ <= NOT \u_jtag_streamer|u_atlantic|td_shift~0_combout\;
\u_jtag_streamer|u_atlantic|ALT_INV_tck_t_dav~q\ <= NOT \u_jtag_streamer|u_atlantic|tck_t_dav~q\;
ALT_INV_filtered_12bit(10) <= NOT filtered_12bit(10);
\u_adc_driver|ALT_INV_state.S_WAIT~q\ <= NOT \u_adc_driver|state.S_WAIT~q\;
\u_adc_driver|ALT_INV_Selector2~0_combout\ <= NOT \u_adc_driver|Selector2~0_combout\;
\u_adc_driver|ALT_INV_tx_reg\(5) <= NOT \u_adc_driver|tx_reg\(5);
ALT_INV_filtered_12bit(5) <= NOT filtered_12bit(5);
ALT_INV_filtered_12bit(6) <= NOT filtered_12bit(6);
ALT_INV_filtered_12bit(8) <= NOT filtered_12bit(8);
\u_adc_driver|ALT_INV_state.S_CONVST~q\ <= NOT \u_adc_driver|state.S_CONVST~q\;
\u_adc_driver|ALT_INV_bit_cnt\(3) <= NOT \u_adc_driver|bit_cnt\(3);
\u_adc_driver|ALT_INV_Equal2~0_combout\ <= NOT \u_adc_driver|Equal2~0_combout\;
\u_sample_clock|ALT_INV_Equal0~2_combout\ <= NOT \u_sample_clock|Equal0~2_combout\;
\u_adc_driver|ALT_INV_conv_cnt\(1) <= NOT \u_adc_driver|conv_cnt\(1);
\u_adc_driver|ALT_INV_bit_cnt\(2) <= NOT \u_adc_driver|bit_cnt\(2);
\u_adc_driver|ALT_INV_Selector13~0_combout\ <= NOT \u_adc_driver|Selector13~0_combout\;
\u_adc_driver|ALT_INV_Selector14~0_combout\ <= NOT \u_adc_driver|Selector14~0_combout\;
\u_jtag_streamer|u_atlantic|ALT_INV_state~q\ <= NOT \u_jtag_streamer|u_atlantic|state~q\;
\u_adc_driver|ALT_INV_Selector16~2_combout\ <= NOT \u_adc_driver|Selector16~2_combout\;
ALT_INV_filtered_12bit(7) <= NOT filtered_12bit(7);
\u_notch|ALT_INV_state.S_DONE~q\ <= NOT \u_notch|state.S_DONE~q\;
\u_jtag_streamer|ALT_INV_state.S_SEND_HIGH~q\ <= NOT \u_jtag_streamer|state.S_SEND_HIGH~q\;
\u_jtag_streamer|u_atlantic|ALT_INV_r_ena1~q\ <= NOT \u_jtag_streamer|u_atlantic|r_ena1~q\;
\u_jtag_streamer|ALT_INV_state.S_IDLE~q\ <= NOT \u_jtag_streamer|state.S_IDLE~q\;
\u_notch|ALT_INV_sample_out\(6) <= NOT \u_notch|sample_out\(6);
\u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(3) <= NOT \u_jtag_streamer|u_atlantic|td_shift\(3);
\u_dc_block|ALT_INV_x_prev\(10) <= NOT \u_dc_block|x_prev\(10);
\u_jtag_streamer|u_atlantic|ALT_INV_rdata\(0) <= NOT \u_jtag_streamer|u_atlantic|rdata\(0);
\u_jtag_streamer|u_atlantic|ALT_INV_rvalid0~0_combout\ <= NOT \u_jtag_streamer|u_atlantic|rvalid0~0_combout\;
\u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(2) <= NOT \u_jtag_streamer|u_atlantic|td_shift\(2);
\u_jtag_streamer|u_atlantic|ALT_INV_read_req~q\ <= NOT \u_jtag_streamer|u_atlantic|read_req~q\;
\u_dc_block|ALT_INV_x_prev\(5) <= NOT \u_dc_block|x_prev\(5);
\u_notch|ALT_INV_sample_out\(13) <= NOT \u_notch|sample_out\(13);
\u_jtag_streamer|u_atlantic|ALT_INV_read1~q\ <= NOT \u_jtag_streamer|u_atlantic|read1~q\;
\u_jtag_streamer|u_atlantic|ALT_INV_write_stalled~q\ <= NOT \u_jtag_streamer|u_atlantic|write_stalled~q\;
\u_dc_block|ALT_INV_x_prev\(12) <= NOT \u_dc_block|x_prev\(12);
\u_jtag_streamer|u_atlantic|ALT_INV_read2~q\ <= NOT \u_jtag_streamer|u_atlantic|read2~q\;
\u_notch|ALT_INV_state.S_MAC5~q\ <= NOT \u_notch|state.S_MAC5~q\;
\u_adc_driver|ALT_INV_Equal2~1_combout\ <= NOT \u_adc_driver|Equal2~1_combout\;
\u_dc_block|ALT_INV_x_prev\(6) <= NOT \u_dc_block|x_prev\(6);
\u_dc_block|ALT_INV_x_prev\(8) <= NOT \u_dc_block|x_prev\(8);
\u_jtag_streamer|u_atlantic|ALT_INV_read_req~0_combout\ <= NOT \u_jtag_streamer|u_atlantic|read_req~0_combout\;
\u_notch|ALT_INV_sample_out\(10) <= NOT \u_notch|sample_out\(10);
\u_notch|ALT_INV_sample_out\(9) <= NOT \u_notch|sample_out\(9);
\u_jtag_streamer|u_atlantic|ALT_INV_rvalid0~q\ <= NOT \u_jtag_streamer|u_atlantic|rvalid0~q\;
\u_dc_block|ALT_INV_x_prev\(11) <= NOT \u_dc_block|x_prev\(11);
\u_notch|ALT_INV_sample_out\(12) <= NOT \u_notch|sample_out\(12);
\u_notch|ALT_INV_sample_out\(4) <= NOT \u_notch|sample_out\(4);
\u_notch|ALT_INV_sample_out\(11) <= NOT \u_notch|sample_out\(11);
\u_dc_block|ALT_INV_x_prev\(4) <= NOT \u_dc_block|x_prev\(4);
\u_notch|ALT_INV_sample_out\(5) <= NOT \u_notch|sample_out\(5);
\u_notch|ALT_INV_sample_out\(8) <= NOT \u_notch|sample_out\(8);
\u_dc_block|ALT_INV_x_prev\(13) <= NOT \u_dc_block|x_prev\(13);
\u_adc_driver|ALT_INV_tx_reg\(2) <= NOT \u_adc_driver|tx_reg\(2);
\u_jtag_streamer|u_atlantic|ALT_INV_rdata\(7) <= NOT \u_jtag_streamer|u_atlantic|rdata\(7);
\u_dc_block|ALT_INV_x_prev\(15) <= NOT \u_dc_block|x_prev\(15);
\u_notch|ALT_INV_sample_out\(15) <= NOT \u_notch|sample_out\(15);
\u_dc_block|ALT_INV_x_prev\(7) <= NOT \u_dc_block|x_prev\(7);
\u_notch|ALT_INV_sample_out\(7) <= NOT \u_notch|sample_out\(7);
\u_dc_block|ALT_INV_x_prev\(14) <= NOT \u_dc_block|x_prev\(14);
\u_adc_driver|ALT_INV_tx_reg\(3) <= NOT \u_adc_driver|tx_reg\(3);
\u_dc_block|ALT_INV_x_prev\(9) <= NOT \u_dc_block|x_prev\(9);
\u_notch|ALT_INV_sample_out\(14) <= NOT \u_notch|sample_out\(14);
\u_jtag_streamer|ALT_INV_latched\(5) <= NOT \u_jtag_streamer|latched\(5);
\u_notch|ALT_INV_acc[24]~0_combout\ <= NOT \u_notch|acc[24]~0_combout\;
\u_jtag_streamer|u_atlantic|ALT_INV_read~q\ <= NOT \u_jtag_streamer|u_atlantic|read~q\;
\u_notch|ALT_INV_state.S_MAC1~q\ <= NOT \u_notch|state.S_MAC1~q\;
\ALT_INV_adc_q15_valid~q\ <= NOT \adc_q15_valid~q\;
\u_notch|ALT_INV_sample_out\(3) <= NOT \u_notch|sample_out\(3);
\u_adc_driver|ALT_INV_tx_reg\(1) <= NOT \u_adc_driver|tx_reg\(1);
\u_notch|ALT_INV_LessThan0~1_combout\ <= NOT \u_notch|LessThan0~1_combout\;
\u_notch|ALT_INV_LessThan0~0_combout\ <= NOT \u_notch|LessThan0~0_combout\;
\u_jtag_streamer|u_atlantic|ALT_INV_rdata\(1) <= NOT \u_jtag_streamer|u_atlantic|rdata\(1);
\u_dc_block|ALT_INV_x_prev\(3) <= NOT \u_dc_block|x_prev\(3);
\u_jtag_streamer|u_atlantic|ALT_INV_rst2~q\ <= NOT \u_jtag_streamer|u_atlantic|rst2~q\;
\u_notch|ALT_INV_state.S_MAC3~q\ <= NOT \u_notch|state.S_MAC3~q\;
\u_notch|ALT_INV_LessThan1~1_combout\ <= NOT \u_notch|LessThan1~1_combout\;
\u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(4) <= NOT \u_jtag_streamer|u_atlantic|td_shift\(4);
\u_dc_block|ALT_INV_x_prev\(2) <= NOT \u_dc_block|x_prev\(2);
\u_jtag_streamer|ALT_INV_state.S_SEND_LOW~q\ <= NOT \u_jtag_streamer|state.S_SEND_LOW~q\;
\u_notch|ALT_INV_LessThan1~0_combout\ <= NOT \u_notch|LessThan1~0_combout\;
\u_jtag_streamer|ALT_INV_latched\(0) <= NOT \u_jtag_streamer|latched\(0);
\u_notch|ALT_INV_sample_out\(2) <= NOT \u_notch|sample_out\(2);
\u_notch|ALT_INV_state.S_MAC4~q\ <= NOT \u_notch|state.S_MAC4~q\;
\u_notch|ALT_INV_state.S_IDLE~q\ <= NOT \u_notch|state.S_IDLE~q\;
\u_notch|ALT_INV_sample_out\(1) <= NOT \u_notch|sample_out\(1);
\u_notch|ALT_INV_Add0~104_combout\ <= NOT \u_notch|Add0~104_combout\;
\u_jtag_streamer|ALT_INV_latched\(1) <= NOT \u_jtag_streamer|latched\(1);
\u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(6) <= NOT \u_jtag_streamer|u_atlantic|td_shift\(6);
\u_notch|ALT_INV_Add0~96_combout\ <= NOT \u_notch|Add0~96_combout\;
\u_notch|ALT_INV_Add0~107_combout\ <= NOT \u_notch|Add0~107_combout\;
\u_notch|ALT_INV_Add0~110_combout\ <= NOT \u_notch|Add0~110_combout\;
\u_notch|ALT_INV_Add0~103_combout\ <= NOT \u_notch|Add0~103_combout\;
\u_notch|ALT_INV_Add0~89_combout\ <= NOT \u_notch|Add0~89_combout\;
\u_notch|ALT_INV_x_n[6]~_Duplicate_1_q\ <= NOT \u_notch|x_n[6]~_Duplicate_1_q\;
\u_notch|ALT_INV_Add0~90_combout\ <= NOT \u_notch|Add0~90_combout\;
\u_dc_block|ALT_INV_x_prev\(0) <= NOT \u_dc_block|x_prev\(0);
\u_notch|ALT_INV_Add0~101_combout\ <= NOT \u_notch|Add0~101_combout\;
\u_dc_block|ALT_INV_x_prev\(1) <= NOT \u_dc_block|x_prev\(1);
\u_notch|ALT_INV_sample_out\(0) <= NOT \u_notch|sample_out\(0);
\u_notch|ALT_INV_x_n[15]~_Duplicate_1_q\ <= NOT \u_notch|x_n[15]~_Duplicate_1_q\;
\u_notch|ALT_INV_Add0~108_combout\ <= NOT \u_notch|Add0~108_combout\;
\u_notch|ALT_INV_Add0~102_combout\ <= NOT \u_notch|Add0~102_combout\;
\u_notch|ALT_INV_x_n[11]~_Duplicate_1_q\ <= NOT \u_notch|x_n[11]~_Duplicate_1_q\;
\u_notch|ALT_INV_Add0~97_combout\ <= NOT \u_notch|Add0~97_combout\;
\u_notch|ALT_INV_Add0~109_combout\ <= NOT \u_notch|Add0~109_combout\;
\u_notch|ALT_INV_x_n[7]~_Duplicate_1_q\ <= NOT \u_notch|x_n[7]~_Duplicate_1_q\;
\u_jtag_streamer|ALT_INV_latched\(6) <= NOT \u_jtag_streamer|latched\(6);
\u_notch|ALT_INV_x_n[12]~_Duplicate_1_q\ <= NOT \u_notch|x_n[12]~_Duplicate_1_q\;
\u_notch|ALT_INV_Add0~98_combout\ <= NOT \u_notch|Add0~98_combout\;
\u_notch|ALT_INV_Add0~113_combout\ <= NOT \u_notch|Add0~113_combout\;
\u_notch|ALT_INV_Add0~112_combout\ <= NOT \u_notch|Add0~112_combout\;
\u_notch|ALT_INV_Add0~114_combout\ <= NOT \u_notch|Add0~114_combout\;
\u_notch|ALT_INV_Add0~115_combout\ <= NOT \u_notch|Add0~115_combout\;
\u_notch|ALT_INV_Add0~116_combout\ <= NOT \u_notch|Add0~116_combout\;
\u_jtag_streamer|u_atlantic|ALT_INV_rdata\(2) <= NOT \u_jtag_streamer|u_atlantic|rdata\(2);
\u_notch|ALT_INV_Add0~106_combout\ <= NOT \u_notch|Add0~106_combout\;
\u_notch|ALT_INV_Add0~105_combout\ <= NOT \u_notch|Add0~105_combout\;
\u_notch|ALT_INV_state.S_MAC2~q\ <= NOT \u_notch|state.S_MAC2~q\;
\u_notch|ALT_INV_x_n[9]~_Duplicate_1_q\ <= NOT \u_notch|x_n[9]~_Duplicate_1_q\;
\u_notch|ALT_INV_Add0~119_combout\ <= NOT \u_notch|Add0~119_combout\;
\u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(5) <= NOT \u_jtag_streamer|u_atlantic|td_shift\(5);
\u_notch|ALT_INV_Add0~91_combout\ <= NOT \u_notch|Add0~91_combout\;
\u_notch|ALT_INV_Add0~120_combout\ <= NOT \u_notch|Add0~120_combout\;
\u_notch|ALT_INV_Add0~99_combout\ <= NOT \u_notch|Add0~99_combout\;
\u_notch|ALT_INV_Add0~100_combout\ <= NOT \u_notch|Add0~100_combout\;
\u_notch|ALT_INV_Add0~117_combout\ <= NOT \u_notch|Add0~117_combout\;
\u_notch|ALT_INV_Add0~118_combout\ <= NOT \u_notch|Add0~118_combout\;
\u_jtag_streamer|u_atlantic|ALT_INV_rdata\(3) <= NOT \u_jtag_streamer|u_atlantic|rdata\(3);
\u_jtag_streamer|ALT_INV_latched\(7) <= NOT \u_jtag_streamer|latched\(7);
\u_jtag_streamer|ALT_INV_latched\(2) <= NOT \u_jtag_streamer|latched\(2);
\u_notch|ALT_INV_Add0~111_combout\ <= NOT \u_notch|Add0~111_combout\;
\u_notch|ALT_INV_x_n[14]~_Duplicate_1_q\ <= NOT \u_notch|x_n[14]~_Duplicate_1_q\;
\u_notch|ALT_INV_Add0~88_combout\ <= NOT \u_notch|Add0~88_combout\;
\u_jtag_streamer|u_atlantic|ALT_INV_rdata\(5) <= NOT \u_jtag_streamer|u_atlantic|rdata\(5);
\u_jtag_streamer|ALT_INV_latched\(9) <= NOT \u_jtag_streamer|latched\(9);
\u_jtag_streamer|ALT_INV_latched\(4) <= NOT \u_jtag_streamer|latched\(4);
\u_adc_driver|ALT_INV_rx_reg\(1) <= NOT \u_adc_driver|rx_reg\(1);
\u_adc_driver|ALT_INV_rx_reg\(4) <= NOT \u_adc_driver|rx_reg\(4);
\u_adc_driver|ALT_INV_rx_reg\(5) <= NOT \u_adc_driver|rx_reg\(5);
ALT_INV_adc_q15(10) <= NOT adc_q15(10);
ALT_INV_adc_q15(13) <= NOT adc_q15(13);
\u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(7) <= NOT \u_jtag_streamer|u_atlantic|td_shift\(7);
\u_jtag_streamer|u_atlantic|ALT_INV_rdata\(4) <= NOT \u_jtag_streamer|u_atlantic|rdata\(4);
\u_notch|ALT_INV_Add0~122_combout\ <= NOT \u_notch|Add0~122_combout\;
\u_notch|ALT_INV_Add0~121_combout\ <= NOT \u_notch|Add0~121_combout\;
\u_jtag_streamer|ALT_INV_latched\(8) <= NOT \u_jtag_streamer|latched\(8);
ALT_INV_adc_q15(11) <= NOT adc_q15(11);
\u_jtag_streamer|ALT_INV_latched\(3) <= NOT \u_jtag_streamer|latched\(3);
\u_notch|ALT_INV_Add0~127_combout\ <= NOT \u_notch|Add0~127_combout\;
ALT_INV_adc_q15(15) <= NOT adc_q15(15);
\u_adc_driver|ALT_INV_sample_data\(11) <= NOT \u_adc_driver|sample_data\(11);
\u_notch|ALT_INV_Add0~128_combout\ <= NOT \u_notch|Add0~128_combout\;
\u_notch|ALT_INV_Add0~140_combout\ <= NOT \u_notch|Add0~140_combout\;
\u_notch|ALT_INV_Add0~157_combout\ <= NOT \u_notch|Add0~157_combout\;
\u_notch|ALT_INV_Add0~139_combout\ <= NOT \u_notch|Add0~139_combout\;
\u_adc_driver|ALT_INV_rx_reg\(10) <= NOT \u_adc_driver|rx_reg\(10);
\u_jtag_streamer|u_atlantic|ALT_INV_read~0_combout\ <= NOT \u_jtag_streamer|u_atlantic|read~0_combout\;
\u_notch|ALT_INV_Add0~182_combout\ <= NOT \u_notch|Add0~182_combout\;
\u_adc_driver|ALT_INV_rx_reg\(7) <= NOT \u_adc_driver|rx_reg\(7);
\u_notch|ALT_INV_Add0~151_combout\ <= NOT \u_notch|Add0~151_combout\;
\u_notch|ALT_INV_Add0~181_combout\ <= NOT \u_notch|Add0~181_combout\;
\u_notch|ALT_INV_Add0~188_combout\ <= NOT \u_notch|Add0~188_combout\;
\u_notch|ALT_INV_Add0~205_combout\ <= NOT \u_notch|Add0~205_combout\;
\u_notch|ALT_INV_Add0~158_combout\ <= NOT \u_notch|Add0~158_combout\;
\u_jtag_streamer|ALT_INV_latched\(10) <= NOT \u_jtag_streamer|latched\(10);
\u_jtag_streamer|ALT_INV_latched\(11) <= NOT \u_jtag_streamer|latched\(11);
\u_notch|ALT_INV_Add0~169_combout\ <= NOT \u_notch|Add0~169_combout\;
\u_notch|ALT_INV_Add0~206_combout\ <= NOT \u_notch|Add0~206_combout\;
\u_notch|ALT_INV_Add0~164_combout\ <= NOT \u_notch|Add0~164_combout\;
\u_jtag_streamer|u_atlantic|ALT_INV_rdata\(6) <= NOT \u_jtag_streamer|u_atlantic|rdata\(6);
\u_notch|ALT_INV_Add0~163_combout\ <= NOT \u_notch|Add0~163_combout\;
\u_notch|ALT_INV_Add0~194_combout\ <= NOT \u_notch|Add0~194_combout\;
\u_notch|ALT_INV_Add0~212_combout\ <= NOT \u_notch|Add0~212_combout\;
\u_notch|ALT_INV_Add0~200_combout\ <= NOT \u_notch|Add0~200_combout\;
\u_notch|ALT_INV_Add0~175_combout\ <= NOT \u_notch|Add0~175_combout\;
\u_notch|ALT_INV_Add0~199_combout\ <= NOT \u_notch|Add0~199_combout\;
\u_notch|ALT_INV_Add0~145_combout\ <= NOT \u_notch|Add0~145_combout\;
\u_notch|ALT_INV_Add0~217_combout\ <= NOT \u_notch|Add0~217_combout\;
\u_adc_driver|ALT_INV_rx_reg\(6) <= NOT \u_adc_driver|rx_reg\(6);
\u_notch|ALT_INV_Add0~176_combout\ <= NOT \u_notch|Add0~176_combout\;
\u_notch|ALT_INV_Add0~146_combout\ <= NOT \u_notch|Add0~146_combout\;
\u_adc_driver|ALT_INV_rx_reg\(8) <= NOT \u_adc_driver|rx_reg\(8);
\u_notch|ALT_INV_Add0~170_combout\ <= NOT \u_notch|Add0~170_combout\;
\u_notch|ALT_INV_Add0~187_combout\ <= NOT \u_notch|Add0~187_combout\;
\u_notch|ALT_INV_Add0~211_combout\ <= NOT \u_notch|Add0~211_combout\;
\u_notch|ALT_INV_Add0~218_combout\ <= NOT \u_notch|Add0~218_combout\;
\u_notch|ALT_INV_Add0~223_combout\ <= NOT \u_notch|Add0~223_combout\;
\u_notch|ALT_INV_Add0~224_combout\ <= NOT \u_notch|Add0~224_combout\;
\u_notch|ALT_INV_Add0~229_combout\ <= NOT \u_notch|Add0~229_combout\;
\u_notch|ALT_INV_Add0~193_combout\ <= NOT \u_notch|Add0~193_combout\;
\u_notch|ALT_INV_Add0~138_combout\ <= NOT \u_notch|Add0~138_combout\;
\u_notch|ALT_INV_Add0~137_combout\ <= NOT \u_notch|Add0~137_combout\;
\u_notch|ALT_INV_Add0~152_combout\ <= NOT \u_notch|Add0~152_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(14) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14);
\ALT_INV_altera_internal_jtag~TDIUTAP\ <= NOT \altera_internal_jtag~TDIUTAP\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_node_ena_proc~0_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(12) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_bypass_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(4) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(3) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(6) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_info_reg_ena~0_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~2_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_dr_scan_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(2) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(9) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_tms_cnt\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1);
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(15) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(13) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(11) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~4_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_splitter_nodes_receive_0\(3) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(4) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_Equal3~0_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal3~0_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(10) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~1_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\;
\ALT_INV_altera_internal_jtag~TCKUTAP\ <= NOT \altera_internal_jtag~TCKUTAP\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_node_ena~1_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(2) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~3_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(7) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_tms_cnt\(2) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~0_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_minor_ver_reg\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(2) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_node_ena~0_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(5) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(3) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(4) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_Equal0~0_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_sldfabric_ident_writedata\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg[2]~1_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~1_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_tms_cnt\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(6) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(3) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_Equal3~1_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal3~1_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(9) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_proc~0_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg~4_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_reset_ena_reg_proc~0_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_reset_ena_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(5) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg[1]~0_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~0_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(8) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state~6_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_minor_ver_reg\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state~14_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~14_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~1_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~1_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\(2) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(7) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(2) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(3) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_sldfabric_ident_writedata\(2) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR\(3) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_sldfabric_ident_writedata\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_minor_ver_reg\(2) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg~5_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR\(2) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~4_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_identity_contrib_shift_reg\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(1) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_minor_ver_reg\(3) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_sldfabric_ident_writedata\(3) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~8_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg\(3) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(2) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR~6_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_identity_contrib_shift_reg\(3) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg\(2) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(4) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~6_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR~3_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~3_combout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR~4_combout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\;
\ALT_INV_~QIC_CREATED_GND~I_combout\ <= NOT \~QIC_CREATED_GND~I_combout\;
\ALT_INV_KEY[0]~inputCLKENA0_outclk\ <= NOT \KEY[0]~inputCLKENA0_outclk\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_GPIO_0[0]~input_o\ <= NOT \GPIO_0[0]~input_o\;
\ALT_INV_GPIO_0[1]~input_o\ <= NOT \GPIO_0[1]~input_o\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter[1]~DUPLICATE_q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~DUPLICATE_q\;
\u_jtag_streamer|ALT_INV_state.S_IDLE~DUPLICATE_q\ <= NOT \u_jtag_streamer|state.S_IDLE~DUPLICATE_q\;
\ALT_INV_blink_counter[17]~DUPLICATE_q\ <= NOT \blink_counter[17]~DUPLICATE_q\;
\u_sample_clock|ALT_INV_counter[0]~DUPLICATE_q\ <= NOT \u_sample_clock|counter[0]~DUPLICATE_q\;
\u_jtag_streamer|ALT_INV_state.S_SEND_HIGH~DUPLICATE_q\ <= NOT \u_jtag_streamer|state.S_SEND_HIGH~DUPLICATE_q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[2]~DUPLICATE_q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~DUPLICATE_q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[0]~DUPLICATE_q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~DUPLICATE_q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter[0]~DUPLICATE_q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~DUPLICATE_q\;
\ALT_INV_blink_counter[12]~DUPLICATE_q\ <= NOT \blink_counter[12]~DUPLICATE_q\;
\u_adc_driver|ALT_INV_state.S_IDLE~DUPLICATE_q\ <= NOT \u_adc_driver|state.S_IDLE~DUPLICATE_q\;
\ALT_INV_filtered_12bit[7]~DUPLICATE_q\ <= NOT \filtered_12bit[7]~DUPLICATE_q\;
\u_adc_driver|ALT_INV_clk_cnt[0]~DUPLICATE_q\ <= NOT \u_adc_driver|clk_cnt[0]~DUPLICATE_q\;
\u_sample_clock|ALT_INV_counter[11]~DUPLICATE_q\ <= NOT \u_sample_clock|counter[11]~DUPLICATE_q\;
\u_sample_clock|ALT_INV_counter[2]~DUPLICATE_q\ <= NOT \u_sample_clock|counter[2]~DUPLICATE_q\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[0]~DUPLICATE_q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[0]~DUPLICATE_q\;
\u_adc_driver|ALT_INV_state.S_CONVST~DUPLICATE_q\ <= NOT \u_adc_driver|state.S_CONVST~DUPLICATE_q\;

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \blink_led~q\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc_driver|busy~q\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \filtered_valid~q\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc_driver|sample_valid~q\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \leads_off~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux14~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X22_Y0_N36
\ADC_CONVST~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc_driver|adc_convst~q\,
	devoe => ww_devoe,
	o => ww_ADC_CONVST);

-- Location: IOOBUF_X22_Y0_N53
\ADC_DIN~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc_driver|adc_din~q\,
	devoe => ww_devoe,
	o => ww_ADC_DIN);

-- Location: IOOBUF_X20_Y0_N36
\ADC_SCLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc_driver|sclk_int~q\,
	devoe => ww_devoe,
	o => ww_ADC_SCLK);

-- Location: IOOBUF_X64_Y0_N2
\GPIO_0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(0));

-- Location: IOOBUF_X68_Y0_N2
\GPIO_0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(1));

-- Location: IOOBUF_X64_Y0_N19
\GPIO_0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO_0(2));

-- Location: IOOBUF_X72_Y0_N2
\GPIO_0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(3));

-- Location: IOOBUF_X54_Y0_N53
\GPIO_0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(4));

-- Location: IOOBUF_X58_Y0_N59
\GPIO_0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(5));

-- Location: IOOBUF_X60_Y0_N53
\GPIO_0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(6));

-- Location: IOOBUF_X60_Y0_N36
\GPIO_0[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(7));

-- Location: IOOBUF_X58_Y0_N42
\GPIO_0[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(8));

-- Location: IOOBUF_X54_Y0_N36
\GPIO_0[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(9));

-- Location: IOOBUF_X56_Y0_N53
\GPIO_0[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(10));

-- Location: IOOBUF_X56_Y0_N36
\GPIO_0[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(11));

-- Location: IOOBUF_X50_Y0_N76
\GPIO_0[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(12));

-- Location: IOOBUF_X52_Y0_N36
\GPIO_0[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(13));

-- Location: IOOBUF_X52_Y0_N53
\GPIO_0[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(14));

-- Location: IOOBUF_X50_Y0_N93
\GPIO_0[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(15));

-- Location: IOOBUF_X68_Y0_N19
\GPIO_0[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(16));

-- Location: IOOBUF_X72_Y0_N19
\GPIO_0[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(17));

-- Location: IOOBUF_X50_Y0_N42
\GPIO_0[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(18));

-- Location: IOOBUF_X76_Y0_N2
\GPIO_0[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(19));

-- Location: IOOBUF_X58_Y0_N93
\GPIO_0[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(20));

-- Location: IOOBUF_X62_Y0_N36
\GPIO_0[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(21));

-- Location: IOOBUF_X54_Y0_N19
\GPIO_0[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(22));

-- Location: IOOBUF_X68_Y0_N36
\GPIO_0[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(23));

-- Location: IOOBUF_X76_Y0_N19
\GPIO_0[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(24));

-- Location: IOOBUF_X82_Y0_N42
\GPIO_0[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(25));

-- Location: IOOBUF_X66_Y0_N42
\GPIO_0[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(26));

-- Location: IOOBUF_X66_Y0_N59
\GPIO_0[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(27));

-- Location: IOOBUF_X70_Y0_N2
\GPIO_0[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(28));

-- Location: IOOBUF_X70_Y0_N19
\GPIO_0[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(29));

-- Location: IOOBUF_X62_Y0_N2
\GPIO_0[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(30));

-- Location: IOOBUF_X54_Y0_N2
\GPIO_0[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(31));

-- Location: IOOBUF_X50_Y0_N59
\GPIO_0[32]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(32));

-- Location: IOOBUF_X62_Y0_N19
\GPIO_0[33]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(33));

-- Location: IOOBUF_X58_Y0_N76
\GPIO_0[34]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(34));

-- Location: IOOBUF_X62_Y0_N53
\GPIO_0[35]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(35));

-- Location: IOOBUF_X11_Y0_N2
\altera_reserved_tdo~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altera_internal_jtag~TDO\,
	devoe => ww_devoe,
	o => ww_altera_reserved_tdo);

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X42_Y2_N30
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( blink_counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~18\ = CARRY(( blink_counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_blink_counter(0),
	cin => GND,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G7
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: LABCELL_X42_Y1_N24
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( blink_counter(18) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( blink_counter(18) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_blink_counter(18),
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: LABCELL_X42_Y1_N27
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( blink_counter(19) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( blink_counter(19) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_blink_counter(19),
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X42_Y1_N29
\blink_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(19));

-- Location: LABCELL_X42_Y1_N30
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( blink_counter(20) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( blink_counter(20) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_blink_counter(20),
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X42_Y1_N32
\blink_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(20));

-- Location: LABCELL_X42_Y1_N33
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( blink_counter(21) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~54\ = CARRY(( blink_counter(21) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_blink_counter(21),
	cin => \Add0~58\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X42_Y1_N35
\blink_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(21));

-- Location: LABCELL_X42_Y1_N36
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( blink_counter(22) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~2\ = CARRY(( blink_counter(22) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_blink_counter(22),
	cin => \Add0~54\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X42_Y1_N37
\blink_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(22));

-- Location: LABCELL_X42_Y2_N24
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !blink_counter(9) & ( !blink_counter(6) & ( (!blink_counter(7) & (blink_counter(5) & (!blink_counter(8) & blink_counter(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_blink_counter(7),
	datab => ALT_INV_blink_counter(5),
	datac => ALT_INV_blink_counter(8),
	datad => ALT_INV_blink_counter(4),
	datae => ALT_INV_blink_counter(9),
	dataf => ALT_INV_blink_counter(6),
	combout => \Equal0~1_combout\);

-- Location: FF_X42_Y1_N7
\blink_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(12));

-- Location: LABCELL_X42_Y1_N54
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !blink_counter(10) & ( !blink_counter(15) & ( (blink_counter(12) & (blink_counter(13) & (blink_counter(11) & blink_counter(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_blink_counter(12),
	datab => ALT_INV_blink_counter(13),
	datac => ALT_INV_blink_counter(11),
	datad => ALT_INV_blink_counter(14),
	datae => ALT_INV_blink_counter(10),
	dataf => ALT_INV_blink_counter(15),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X42_Y1_N39
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( blink_counter(23) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~26\ = CARRY(( blink_counter(23) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_blink_counter(23),
	cin => \Add0~2\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X42_Y1_N41
\blink_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(23));

-- Location: LABCELL_X42_Y1_N42
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( blink_counter(24) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_blink_counter(24),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\);

-- Location: FF_X42_Y1_N44
\blink_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(24));

-- Location: LABCELL_X42_Y2_N18
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( blink_counter(2) & ( blink_counter(0) & ( (blink_counter(1) & (blink_counter(3) & (!blink_counter(23) & blink_counter(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_blink_counter(1),
	datab => ALT_INV_blink_counter(3),
	datac => ALT_INV_blink_counter(23),
	datad => ALT_INV_blink_counter(24),
	datae => ALT_INV_blink_counter(2),
	dataf => ALT_INV_blink_counter(0),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X42_Y2_N6
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( \Equal0~0_combout\ & ( (\Equal0~2_combout\ & (blink_counter(22) & (\Equal0~1_combout\ & \Equal0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => ALT_INV_blink_counter(22),
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: FF_X42_Y2_N32
\blink_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(0));

-- Location: LABCELL_X42_Y2_N33
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( blink_counter(1) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( blink_counter(1) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_blink_counter(1),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X42_Y2_N35
\blink_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(1));

-- Location: LABCELL_X42_Y2_N36
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( blink_counter(2) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( blink_counter(2) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_blink_counter(2),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X42_Y2_N38
\blink_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(2));

-- Location: LABCELL_X42_Y2_N39
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( blink_counter(3) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( blink_counter(3) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_blink_counter(3),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X42_Y2_N41
\blink_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(3));

-- Location: LABCELL_X42_Y2_N42
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( blink_counter(4) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~50\ = CARRY(( blink_counter(4) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_blink_counter(4),
	cin => \Add0~6\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X42_Y2_N44
\blink_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(4));

-- Location: LABCELL_X42_Y2_N45
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( blink_counter(5) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~46\ = CARRY(( blink_counter(5) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_blink_counter(5),
	cin => \Add0~50\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X42_Y2_N47
\blink_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(5));

-- Location: LABCELL_X42_Y2_N48
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( blink_counter(6) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( blink_counter(6) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_blink_counter(6),
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X42_Y2_N50
\blink_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(6));

-- Location: LABCELL_X42_Y2_N51
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( blink_counter(7) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~38\ = CARRY(( blink_counter(7) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_blink_counter(7),
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X42_Y2_N53
\blink_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(7));

-- Location: LABCELL_X42_Y2_N54
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( blink_counter(8) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( blink_counter(8) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_blink_counter(8),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X42_Y2_N56
\blink_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(8));

-- Location: LABCELL_X42_Y2_N57
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( blink_counter(9) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( blink_counter(9) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_blink_counter(9),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X42_Y2_N59
\blink_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(9));

-- Location: LABCELL_X42_Y1_N0
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( blink_counter(10) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~98\ = CARRY(( blink_counter(10) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_blink_counter(10),
	cin => \Add0~30\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X42_Y1_N2
\blink_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(10));

-- Location: LABCELL_X42_Y1_N3
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( blink_counter(11) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( blink_counter(11) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_blink_counter(11),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X42_Y1_N5
\blink_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(11));

-- Location: LABCELL_X42_Y1_N6
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( \blink_counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~90\ = CARRY(( \blink_counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_blink_counter[12]~DUPLICATE_q\,
	cin => \Add0~94\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X42_Y1_N8
\blink_counter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink_counter[12]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y1_N9
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( blink_counter(13) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~86\ = CARRY(( blink_counter(13) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_blink_counter(13),
	cin => \Add0~90\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X42_Y1_N11
\blink_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(13));

-- Location: LABCELL_X42_Y1_N12
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( blink_counter(14) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~82\ = CARRY(( blink_counter(14) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_blink_counter(14),
	cin => \Add0~86\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X42_Y1_N14
\blink_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(14));

-- Location: LABCELL_X42_Y1_N15
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( blink_counter(15) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~78\ = CARRY(( blink_counter(15) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_blink_counter(15),
	cin => \Add0~82\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X42_Y1_N17
\blink_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(15));

-- Location: LABCELL_X42_Y1_N18
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( blink_counter(16) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~74\ = CARRY(( blink_counter(16) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_blink_counter(16),
	cin => \Add0~78\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X42_Y1_N20
\blink_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(16));

-- Location: LABCELL_X42_Y1_N21
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( \blink_counter[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( \blink_counter[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_blink_counter[17]~DUPLICATE_q\,
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X42_Y1_N23
\blink_counter[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink_counter[17]~DUPLICATE_q\);

-- Location: FF_X42_Y1_N26
\blink_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(18));

-- Location: FF_X42_Y1_N22
\blink_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_counter(17));

-- Location: LABCELL_X42_Y1_N48
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( blink_counter(19) & ( blink_counter(21) & ( (blink_counter(18) & (blink_counter(20) & (blink_counter(16) & !blink_counter(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_blink_counter(18),
	datab => ALT_INV_blink_counter(20),
	datac => ALT_INV_blink_counter(16),
	datad => ALT_INV_blink_counter(17),
	datae => ALT_INV_blink_counter(19),
	dataf => ALT_INV_blink_counter(21),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X42_Y2_N0
\blink_led~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \blink_led~0_combout\ = ( \blink_led~q\ & ( \Equal0~0_combout\ & ( (!\Equal0~2_combout\) # ((!blink_counter(22)) # ((!\Equal0~1_combout\) # (!\Equal0~3_combout\))) ) ) ) # ( !\blink_led~q\ & ( \Equal0~0_combout\ & ( (\Equal0~2_combout\ & 
-- (blink_counter(22) & (\Equal0~1_combout\ & \Equal0~3_combout\))) ) ) ) # ( \blink_led~q\ & ( !\Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => ALT_INV_blink_counter(22),
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_blink_led~q\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \blink_led~0_combout\);

-- Location: FF_X42_Y2_N1
blink_led : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \blink_led~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink_led~q\);

-- Location: LABCELL_X42_Y4_N0
\u_sample_clock|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_sample_clock|Add0~61_sumout\ = SUM(( \u_sample_clock|counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \u_sample_clock|Add0~62\ = CARRY(( \u_sample_clock|counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_sample_clock|ALT_INV_counter[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \u_sample_clock|Add0~61_sumout\,
	cout => \u_sample_clock|Add0~62\);

-- Location: FF_X42_Y4_N2
\u_sample_clock|counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_sample_clock|Add0~61_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_sample_clock|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sample_clock|counter[0]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y4_N3
\u_sample_clock|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_sample_clock|Add0~33_sumout\ = SUM(( \u_sample_clock|counter\(1) ) + ( GND ) + ( \u_sample_clock|Add0~62\ ))
-- \u_sample_clock|Add0~34\ = CARRY(( \u_sample_clock|counter\(1) ) + ( GND ) + ( \u_sample_clock|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_sample_clock|ALT_INV_counter\(1),
	cin => \u_sample_clock|Add0~62\,
	sumout => \u_sample_clock|Add0~33_sumout\,
	cout => \u_sample_clock|Add0~34\);

-- Location: FF_X42_Y4_N5
\u_sample_clock|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_sample_clock|Add0~33_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_sample_clock|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sample_clock|counter\(1));

-- Location: LABCELL_X42_Y4_N6
\u_sample_clock|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_sample_clock|Add0~57_sumout\ = SUM(( \u_sample_clock|counter[2]~DUPLICATE_q\ ) + ( GND ) + ( \u_sample_clock|Add0~34\ ))
-- \u_sample_clock|Add0~58\ = CARRY(( \u_sample_clock|counter[2]~DUPLICATE_q\ ) + ( GND ) + ( \u_sample_clock|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_sample_clock|ALT_INV_counter[2]~DUPLICATE_q\,
	cin => \u_sample_clock|Add0~34\,
	sumout => \u_sample_clock|Add0~57_sumout\,
	cout => \u_sample_clock|Add0~58\);

-- Location: FF_X42_Y4_N8
\u_sample_clock|counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_sample_clock|Add0~57_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_sample_clock|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sample_clock|counter[2]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y4_N9
\u_sample_clock|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_sample_clock|Add0~65_sumout\ = SUM(( \u_sample_clock|counter\(3) ) + ( GND ) + ( \u_sample_clock|Add0~58\ ))
-- \u_sample_clock|Add0~66\ = CARRY(( \u_sample_clock|counter\(3) ) + ( GND ) + ( \u_sample_clock|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_sample_clock|ALT_INV_counter\(3),
	cin => \u_sample_clock|Add0~58\,
	sumout => \u_sample_clock|Add0~65_sumout\,
	cout => \u_sample_clock|Add0~66\);

-- Location: FF_X42_Y4_N11
\u_sample_clock|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_sample_clock|Add0~65_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_sample_clock|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sample_clock|counter\(3));

-- Location: LABCELL_X42_Y4_N12
\u_sample_clock|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_sample_clock|Add0~69_sumout\ = SUM(( \u_sample_clock|counter\(4) ) + ( GND ) + ( \u_sample_clock|Add0~66\ ))
-- \u_sample_clock|Add0~70\ = CARRY(( \u_sample_clock|counter\(4) ) + ( GND ) + ( \u_sample_clock|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_sample_clock|ALT_INV_counter\(4),
	cin => \u_sample_clock|Add0~66\,
	sumout => \u_sample_clock|Add0~69_sumout\,
	cout => \u_sample_clock|Add0~70\);

-- Location: FF_X42_Y4_N14
\u_sample_clock|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_sample_clock|Add0~69_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_sample_clock|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sample_clock|counter\(4));

-- Location: FF_X42_Y4_N35
\u_sample_clock|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_sample_clock|Add0~53_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_sample_clock|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sample_clock|counter\(11));

-- Location: LABCELL_X42_Y4_N15
\u_sample_clock|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_sample_clock|Add0~9_sumout\ = SUM(( \u_sample_clock|counter\(5) ) + ( GND ) + ( \u_sample_clock|Add0~70\ ))
-- \u_sample_clock|Add0~10\ = CARRY(( \u_sample_clock|counter\(5) ) + ( GND ) + ( \u_sample_clock|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_sample_clock|ALT_INV_counter\(5),
	cin => \u_sample_clock|Add0~70\,
	sumout => \u_sample_clock|Add0~9_sumout\,
	cout => \u_sample_clock|Add0~10\);

-- Location: FF_X42_Y4_N16
\u_sample_clock|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_sample_clock|Add0~9_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_sample_clock|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sample_clock|counter\(5));

-- Location: LABCELL_X42_Y4_N18
\u_sample_clock|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_sample_clock|Add0~13_sumout\ = SUM(( \u_sample_clock|counter\(6) ) + ( GND ) + ( \u_sample_clock|Add0~10\ ))
-- \u_sample_clock|Add0~14\ = CARRY(( \u_sample_clock|counter\(6) ) + ( GND ) + ( \u_sample_clock|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_sample_clock|ALT_INV_counter\(6),
	cin => \u_sample_clock|Add0~10\,
	sumout => \u_sample_clock|Add0~13_sumout\,
	cout => \u_sample_clock|Add0~14\);

-- Location: FF_X42_Y4_N20
\u_sample_clock|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_sample_clock|Add0~13_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_sample_clock|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sample_clock|counter\(6));

-- Location: LABCELL_X42_Y4_N21
\u_sample_clock|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_sample_clock|Add0~17_sumout\ = SUM(( \u_sample_clock|counter\(7) ) + ( GND ) + ( \u_sample_clock|Add0~14\ ))
-- \u_sample_clock|Add0~18\ = CARRY(( \u_sample_clock|counter\(7) ) + ( GND ) + ( \u_sample_clock|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_sample_clock|ALT_INV_counter\(7),
	cin => \u_sample_clock|Add0~14\,
	sumout => \u_sample_clock|Add0~17_sumout\,
	cout => \u_sample_clock|Add0~18\);

-- Location: FF_X42_Y4_N23
\u_sample_clock|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_sample_clock|Add0~17_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_sample_clock|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sample_clock|counter\(7));

-- Location: LABCELL_X42_Y4_N24
\u_sample_clock|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_sample_clock|Add0~21_sumout\ = SUM(( \u_sample_clock|counter\(8) ) + ( GND ) + ( \u_sample_clock|Add0~18\ ))
-- \u_sample_clock|Add0~22\ = CARRY(( \u_sample_clock|counter\(8) ) + ( GND ) + ( \u_sample_clock|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_sample_clock|ALT_INV_counter\(8),
	cin => \u_sample_clock|Add0~18\,
	sumout => \u_sample_clock|Add0~21_sumout\,
	cout => \u_sample_clock|Add0~22\);

-- Location: FF_X42_Y4_N26
\u_sample_clock|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_sample_clock|Add0~21_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_sample_clock|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sample_clock|counter\(8));

-- Location: LABCELL_X42_Y4_N27
\u_sample_clock|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_sample_clock|Add0~29_sumout\ = SUM(( \u_sample_clock|counter\(9) ) + ( GND ) + ( \u_sample_clock|Add0~22\ ))
-- \u_sample_clock|Add0~30\ = CARRY(( \u_sample_clock|counter\(9) ) + ( GND ) + ( \u_sample_clock|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_sample_clock|ALT_INV_counter\(9),
	cin => \u_sample_clock|Add0~22\,
	sumout => \u_sample_clock|Add0~29_sumout\,
	cout => \u_sample_clock|Add0~30\);

-- Location: FF_X42_Y4_N29
\u_sample_clock|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_sample_clock|Add0~29_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_sample_clock|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sample_clock|counter\(9));

-- Location: LABCELL_X42_Y4_N30
\u_sample_clock|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_sample_clock|Add0~25_sumout\ = SUM(( \u_sample_clock|counter\(10) ) + ( GND ) + ( \u_sample_clock|Add0~30\ ))
-- \u_sample_clock|Add0~26\ = CARRY(( \u_sample_clock|counter\(10) ) + ( GND ) + ( \u_sample_clock|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_sample_clock|ALT_INV_counter\(10),
	cin => \u_sample_clock|Add0~30\,
	sumout => \u_sample_clock|Add0~25_sumout\,
	cout => \u_sample_clock|Add0~26\);

-- Location: FF_X42_Y4_N32
\u_sample_clock|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_sample_clock|Add0~25_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_sample_clock|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sample_clock|counter\(10));

-- Location: LABCELL_X42_Y4_N33
\u_sample_clock|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_sample_clock|Add0~53_sumout\ = SUM(( \u_sample_clock|counter\(11) ) + ( GND ) + ( \u_sample_clock|Add0~26\ ))
-- \u_sample_clock|Add0~54\ = CARRY(( \u_sample_clock|counter\(11) ) + ( GND ) + ( \u_sample_clock|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_sample_clock|ALT_INV_counter\(11),
	cin => \u_sample_clock|Add0~26\,
	sumout => \u_sample_clock|Add0~53_sumout\,
	cout => \u_sample_clock|Add0~54\);

-- Location: FF_X42_Y4_N34
\u_sample_clock|counter[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_sample_clock|Add0~53_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_sample_clock|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sample_clock|counter[11]~DUPLICATE_q\);

-- Location: FF_X42_Y4_N1
\u_sample_clock|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_sample_clock|Add0~61_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_sample_clock|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sample_clock|counter\(0));

-- Location: FF_X42_Y4_N7
\u_sample_clock|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_sample_clock|Add0~57_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_sample_clock|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sample_clock|counter\(2));

-- Location: LABCELL_X40_Y4_N36
\u_sample_clock|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_sample_clock|Equal0~2_combout\ = ( !\u_sample_clock|counter\(0) & ( !\u_sample_clock|counter\(2) & ( (!\u_sample_clock|counter\(4) & (\u_sample_clock|counter\(3) & \u_sample_clock|counter[11]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_sample_clock|ALT_INV_counter\(4),
	datab => \u_sample_clock|ALT_INV_counter\(3),
	datac => \u_sample_clock|ALT_INV_counter[11]~DUPLICATE_q\,
	datae => \u_sample_clock|ALT_INV_counter\(0),
	dataf => \u_sample_clock|ALT_INV_counter\(2),
	combout => \u_sample_clock|Equal0~2_combout\);

-- Location: LABCELL_X42_Y4_N36
\u_sample_clock|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_sample_clock|Add0~5_sumout\ = SUM(( \u_sample_clock|counter\(12) ) + ( GND ) + ( \u_sample_clock|Add0~54\ ))
-- \u_sample_clock|Add0~6\ = CARRY(( \u_sample_clock|counter\(12) ) + ( GND ) + ( \u_sample_clock|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_sample_clock|ALT_INV_counter\(12),
	cin => \u_sample_clock|Add0~54\,
	sumout => \u_sample_clock|Add0~5_sumout\,
	cout => \u_sample_clock|Add0~6\);

-- Location: FF_X42_Y4_N37
\u_sample_clock|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_sample_clock|Add0~5_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_sample_clock|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sample_clock|counter\(12));

-- Location: LABCELL_X42_Y4_N39
\u_sample_clock|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_sample_clock|Add0~49_sumout\ = SUM(( \u_sample_clock|counter\(13) ) + ( GND ) + ( \u_sample_clock|Add0~6\ ))
-- \u_sample_clock|Add0~50\ = CARRY(( \u_sample_clock|counter\(13) ) + ( GND ) + ( \u_sample_clock|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_sample_clock|ALT_INV_counter\(13),
	cin => \u_sample_clock|Add0~6\,
	sumout => \u_sample_clock|Add0~49_sumout\,
	cout => \u_sample_clock|Add0~50\);

-- Location: FF_X42_Y4_N40
\u_sample_clock|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_sample_clock|Add0~49_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_sample_clock|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sample_clock|counter\(13));

-- Location: LABCELL_X42_Y4_N42
\u_sample_clock|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_sample_clock|Add0~45_sumout\ = SUM(( \u_sample_clock|counter\(14) ) + ( GND ) + ( \u_sample_clock|Add0~50\ ))
-- \u_sample_clock|Add0~46\ = CARRY(( \u_sample_clock|counter\(14) ) + ( GND ) + ( \u_sample_clock|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_sample_clock|ALT_INV_counter\(14),
	cin => \u_sample_clock|Add0~50\,
	sumout => \u_sample_clock|Add0~45_sumout\,
	cout => \u_sample_clock|Add0~46\);

-- Location: FF_X42_Y4_N43
\u_sample_clock|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_sample_clock|Add0~45_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_sample_clock|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sample_clock|counter\(14));

-- Location: LABCELL_X42_Y4_N45
\u_sample_clock|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_sample_clock|Add0~41_sumout\ = SUM(( \u_sample_clock|counter\(15) ) + ( GND ) + ( \u_sample_clock|Add0~46\ ))
-- \u_sample_clock|Add0~42\ = CARRY(( \u_sample_clock|counter\(15) ) + ( GND ) + ( \u_sample_clock|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_sample_clock|ALT_INV_counter\(15),
	cin => \u_sample_clock|Add0~46\,
	sumout => \u_sample_clock|Add0~41_sumout\,
	cout => \u_sample_clock|Add0~42\);

-- Location: FF_X42_Y4_N46
\u_sample_clock|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_sample_clock|Add0~41_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_sample_clock|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sample_clock|counter\(15));

-- Location: LABCELL_X42_Y4_N48
\u_sample_clock|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_sample_clock|Add0~37_sumout\ = SUM(( \u_sample_clock|counter\(16) ) + ( GND ) + ( \u_sample_clock|Add0~42\ ))
-- \u_sample_clock|Add0~38\ = CARRY(( \u_sample_clock|counter\(16) ) + ( GND ) + ( \u_sample_clock|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_sample_clock|ALT_INV_counter\(16),
	cin => \u_sample_clock|Add0~42\,
	sumout => \u_sample_clock|Add0~37_sumout\,
	cout => \u_sample_clock|Add0~38\);

-- Location: FF_X42_Y4_N49
\u_sample_clock|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_sample_clock|Add0~37_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_sample_clock|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sample_clock|counter\(16));

-- Location: LABCELL_X40_Y4_N6
\u_sample_clock|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_sample_clock|Equal0~1_combout\ = ( !\u_sample_clock|counter\(1) & ( !\u_sample_clock|counter\(14) & ( (!\u_sample_clock|counter\(13) & (!\u_sample_clock|counter\(15) & !\u_sample_clock|counter\(16))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_sample_clock|ALT_INV_counter\(13),
	datab => \u_sample_clock|ALT_INV_counter\(15),
	datac => \u_sample_clock|ALT_INV_counter\(16),
	datae => \u_sample_clock|ALT_INV_counter\(1),
	dataf => \u_sample_clock|ALT_INV_counter\(14),
	combout => \u_sample_clock|Equal0~1_combout\);

-- Location: LABCELL_X42_Y4_N54
\u_sample_clock|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_sample_clock|Equal0~0_combout\ = ( \u_sample_clock|counter\(9) & ( !\u_sample_clock|counter\(6) & ( (\u_sample_clock|counter\(7) & (\u_sample_clock|counter\(10) & !\u_sample_clock|counter\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_sample_clock|ALT_INV_counter\(7),
	datab => \u_sample_clock|ALT_INV_counter\(10),
	datac => \u_sample_clock|ALT_INV_counter\(8),
	datae => \u_sample_clock|ALT_INV_counter\(9),
	dataf => \u_sample_clock|ALT_INV_counter\(6),
	combout => \u_sample_clock|Equal0~0_combout\);

-- Location: LABCELL_X42_Y4_N51
\u_sample_clock|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_sample_clock|Add0~1_sumout\ = SUM(( \u_sample_clock|counter\(17) ) + ( GND ) + ( \u_sample_clock|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_sample_clock|ALT_INV_counter\(17),
	cin => \u_sample_clock|Add0~38\,
	sumout => \u_sample_clock|Add0~1_sumout\);

-- Location: FF_X42_Y4_N52
\u_sample_clock|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_sample_clock|Add0~1_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_sample_clock|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sample_clock|counter\(17));

-- Location: LABCELL_X40_Y4_N45
\u_sample_clock|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_sample_clock|Equal0~3_combout\ = ( \u_sample_clock|Equal0~0_combout\ & ( \u_sample_clock|counter\(17) & ( (\u_sample_clock|Equal0~2_combout\ & (\u_sample_clock|Equal0~1_combout\ & (!\u_sample_clock|counter\(5) & \u_sample_clock|counter\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_sample_clock|ALT_INV_Equal0~2_combout\,
	datab => \u_sample_clock|ALT_INV_Equal0~1_combout\,
	datac => \u_sample_clock|ALT_INV_counter\(5),
	datad => \u_sample_clock|ALT_INV_counter\(12),
	datae => \u_sample_clock|ALT_INV_Equal0~0_combout\,
	dataf => \u_sample_clock|ALT_INV_counter\(17),
	combout => \u_sample_clock|Equal0~3_combout\);

-- Location: FF_X40_Y4_N49
\u_sample_clock|sample_tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_sample_clock|Equal0~3_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_sample_clock|sample_tick~q\);

-- Location: MLABCELL_X39_Y2_N0
\u_adc_driver|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Add1~1_sumout\ = SUM(( \u_adc_driver|wait_cnt\(0) ) + ( VCC ) + ( !VCC ))
-- \u_adc_driver|Add1~2\ = CARRY(( \u_adc_driver|wait_cnt\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_adc_driver|ALT_INV_wait_cnt\(0),
	cin => GND,
	sumout => \u_adc_driver|Add1~1_sumout\,
	cout => \u_adc_driver|Add1~2\);

-- Location: MLABCELL_X39_Y2_N3
\u_adc_driver|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Add1~25_sumout\ = SUM(( \u_adc_driver|wait_cnt\(1) ) + ( GND ) + ( \u_adc_driver|Add1~2\ ))
-- \u_adc_driver|Add1~26\ = CARRY(( \u_adc_driver|wait_cnt\(1) ) + ( GND ) + ( \u_adc_driver|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_adc_driver|ALT_INV_wait_cnt\(1),
	cin => \u_adc_driver|Add1~2\,
	sumout => \u_adc_driver|Add1~25_sumout\,
	cout => \u_adc_driver|Add1~26\);

-- Location: FF_X40_Y2_N11
\u_adc_driver|state.S_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|Selector12~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|state.S_IDLE~q\);

-- Location: LABCELL_X40_Y2_N9
\u_adc_driver|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Selector12~0_combout\ = (!\u_adc_driver|state.S_DONE~q\ & ((\u_adc_driver|state.S_IDLE~q\) # (\u_sample_clock|sample_tick~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010001000101010101000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_state.S_DONE~q\,
	datab => \u_sample_clock|ALT_INV_sample_tick~q\,
	datad => \u_adc_driver|ALT_INV_state.S_IDLE~q\,
	combout => \u_adc_driver|Selector12~0_combout\);

-- Location: FF_X40_Y2_N10
\u_adc_driver|state.S_IDLE~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|Selector12~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|state.S_IDLE~DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N48
\u_adc_driver|conv_cnt[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|conv_cnt[1]~0_combout\ = ( \u_adc_driver|state.S_IDLE~DUPLICATE_q\ & ( ((\u_adc_driver|state.S_CONVST~q\ & \u_adc_driver|conv_cnt\(0))) # (\u_adc_driver|conv_cnt\(1)) ) ) # ( !\u_adc_driver|state.S_IDLE~DUPLICATE_q\ & ( 
-- (!\u_adc_driver|conv_cnt\(1) & (((\u_adc_driver|state.S_CONVST~q\ & \u_adc_driver|conv_cnt\(0))))) # (\u_adc_driver|conv_cnt\(1) & ((!\u_sample_clock|sample_tick~q\) # ((\u_adc_driver|state.S_CONVST~q\ & !\u_adc_driver|conv_cnt\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110111010000000111011101000000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_sample_clock|ALT_INV_sample_tick~q\,
	datab => \u_adc_driver|ALT_INV_state.S_CONVST~q\,
	datac => \u_adc_driver|ALT_INV_conv_cnt\(0),
	datad => \u_adc_driver|ALT_INV_conv_cnt\(1),
	dataf => \u_adc_driver|ALT_INV_state.S_IDLE~DUPLICATE_q\,
	combout => \u_adc_driver|conv_cnt[1]~0_combout\);

-- Location: FF_X40_Y2_N49
\u_adc_driver|conv_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|conv_cnt[1]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|conv_cnt\(1));

-- Location: MLABCELL_X39_Y2_N42
\u_adc_driver|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Selector2~0_combout\ = ( \u_adc_driver|state.S_WAIT~q\ & ( (!\u_adc_driver|wait_cnt\(0)) # (!\u_adc_driver|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_wait_cnt\(0),
	datac => \u_adc_driver|ALT_INV_Equal1~0_combout\,
	dataf => \u_adc_driver|ALT_INV_state.S_WAIT~q\,
	combout => \u_adc_driver|Selector2~0_combout\);

-- Location: LABCELL_X40_Y2_N18
\u_adc_driver|wait_cnt[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|wait_cnt[6]~0_combout\ = ( \u_adc_driver|Selector2~0_combout\ ) # ( !\u_adc_driver|Selector2~0_combout\ & ( (\u_adc_driver|conv_cnt\(0) & (\u_adc_driver|state.S_CONVST~q\ & \u_adc_driver|conv_cnt\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_conv_cnt\(0),
	datab => \u_adc_driver|ALT_INV_state.S_CONVST~q\,
	datad => \u_adc_driver|ALT_INV_conv_cnt\(1),
	dataf => \u_adc_driver|ALT_INV_Selector2~0_combout\,
	combout => \u_adc_driver|wait_cnt[6]~0_combout\);

-- Location: FF_X39_Y2_N5
\u_adc_driver|wait_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|Add1~25_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_adc_driver|ALT_INV_state.S_WAIT~q\,
	ena => \u_adc_driver|wait_cnt[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|wait_cnt\(1));

-- Location: MLABCELL_X39_Y2_N6
\u_adc_driver|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Add1~21_sumout\ = SUM(( \u_adc_driver|wait_cnt\(2) ) + ( GND ) + ( \u_adc_driver|Add1~26\ ))
-- \u_adc_driver|Add1~22\ = CARRY(( \u_adc_driver|wait_cnt\(2) ) + ( GND ) + ( \u_adc_driver|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_adc_driver|ALT_INV_wait_cnt\(2),
	cin => \u_adc_driver|Add1~26\,
	sumout => \u_adc_driver|Add1~21_sumout\,
	cout => \u_adc_driver|Add1~22\);

-- Location: FF_X39_Y2_N7
\u_adc_driver|wait_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|Add1~21_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_adc_driver|ALT_INV_state.S_WAIT~q\,
	ena => \u_adc_driver|wait_cnt[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|wait_cnt\(2));

-- Location: MLABCELL_X39_Y2_N9
\u_adc_driver|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Add1~17_sumout\ = SUM(( \u_adc_driver|wait_cnt\(3) ) + ( GND ) + ( \u_adc_driver|Add1~22\ ))
-- \u_adc_driver|Add1~18\ = CARRY(( \u_adc_driver|wait_cnt\(3) ) + ( GND ) + ( \u_adc_driver|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_adc_driver|ALT_INV_wait_cnt\(3),
	cin => \u_adc_driver|Add1~22\,
	sumout => \u_adc_driver|Add1~17_sumout\,
	cout => \u_adc_driver|Add1~18\);

-- Location: FF_X39_Y2_N10
\u_adc_driver|wait_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|Add1~17_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_adc_driver|ALT_INV_state.S_WAIT~q\,
	ena => \u_adc_driver|wait_cnt[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|wait_cnt\(3));

-- Location: MLABCELL_X39_Y2_N12
\u_adc_driver|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Add1~13_sumout\ = SUM(( \u_adc_driver|wait_cnt\(4) ) + ( GND ) + ( \u_adc_driver|Add1~18\ ))
-- \u_adc_driver|Add1~14\ = CARRY(( \u_adc_driver|wait_cnt\(4) ) + ( GND ) + ( \u_adc_driver|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_adc_driver|ALT_INV_wait_cnt\(4),
	cin => \u_adc_driver|Add1~18\,
	sumout => \u_adc_driver|Add1~13_sumout\,
	cout => \u_adc_driver|Add1~14\);

-- Location: FF_X39_Y2_N14
\u_adc_driver|wait_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|Add1~13_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_adc_driver|ALT_INV_state.S_WAIT~q\,
	ena => \u_adc_driver|wait_cnt[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|wait_cnt\(4));

-- Location: MLABCELL_X39_Y2_N15
\u_adc_driver|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Add1~9_sumout\ = SUM(( \u_adc_driver|wait_cnt\(5) ) + ( GND ) + ( \u_adc_driver|Add1~14\ ))
-- \u_adc_driver|Add1~10\ = CARRY(( \u_adc_driver|wait_cnt\(5) ) + ( GND ) + ( \u_adc_driver|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_adc_driver|ALT_INV_wait_cnt\(5),
	cin => \u_adc_driver|Add1~14\,
	sumout => \u_adc_driver|Add1~9_sumout\,
	cout => \u_adc_driver|Add1~10\);

-- Location: FF_X39_Y2_N17
\u_adc_driver|wait_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|Add1~9_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_adc_driver|ALT_INV_state.S_WAIT~q\,
	ena => \u_adc_driver|wait_cnt[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|wait_cnt\(5));

-- Location: MLABCELL_X39_Y2_N18
\u_adc_driver|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Add1~5_sumout\ = SUM(( \u_adc_driver|wait_cnt\(6) ) + ( GND ) + ( \u_adc_driver|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_adc_driver|ALT_INV_wait_cnt\(6),
	cin => \u_adc_driver|Add1~10\,
	sumout => \u_adc_driver|Add1~5_sumout\);

-- Location: FF_X39_Y2_N20
\u_adc_driver|wait_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|Add1~5_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_adc_driver|ALT_INV_state.S_WAIT~q\,
	ena => \u_adc_driver|wait_cnt[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|wait_cnt\(6));

-- Location: MLABCELL_X39_Y2_N24
\u_adc_driver|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Equal1~0_combout\ = ( \u_adc_driver|wait_cnt\(3) & ( \u_adc_driver|wait_cnt\(6) & ( (\u_adc_driver|wait_cnt\(1) & (!\u_adc_driver|wait_cnt\(5) & (\u_adc_driver|wait_cnt\(2) & !\u_adc_driver|wait_cnt\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_wait_cnt\(1),
	datab => \u_adc_driver|ALT_INV_wait_cnt\(5),
	datac => \u_adc_driver|ALT_INV_wait_cnt\(2),
	datad => \u_adc_driver|ALT_INV_wait_cnt\(4),
	datae => \u_adc_driver|ALT_INV_wait_cnt\(3),
	dataf => \u_adc_driver|ALT_INV_wait_cnt\(6),
	combout => \u_adc_driver|Equal1~0_combout\);

-- Location: MLABCELL_X39_Y2_N45
\u_adc_driver|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Selector16~0_combout\ = ( \u_adc_driver|Equal1~0_combout\ & ( (\u_adc_driver|wait_cnt\(0) & \u_adc_driver|state.S_WAIT~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_wait_cnt\(0),
	datab => \u_adc_driver|ALT_INV_state.S_WAIT~q\,
	dataf => \u_adc_driver|ALT_INV_Equal1~0_combout\,
	combout => \u_adc_driver|Selector16~0_combout\);

-- Location: FF_X39_Y2_N50
\u_adc_driver|clk_cnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|clk_cnt[0]~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|clk_cnt[0]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N0
\u_adc_driver|Selector16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Selector16~2_combout\ = ( \u_adc_driver|clk_cnt\(1) & ( (\u_adc_driver|state.S_SHIFT~q\ & \u_adc_driver|clk_cnt\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_state.S_SHIFT~q\,
	datad => \u_adc_driver|ALT_INV_clk_cnt\(0),
	dataf => \u_adc_driver|ALT_INV_clk_cnt\(1),
	combout => \u_adc_driver|Selector16~2_combout\);

-- Location: LABCELL_X40_Y2_N36
\u_adc_driver|bit_cnt[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|bit_cnt[0]~3_combout\ = ( \u_adc_driver|Selector16~2_combout\ & ( (!\u_adc_driver|bit_cnt\(0) & (\u_adc_driver|state.S_SHIFT~q\ & ((!\u_adc_driver|Equal2~0_combout\) # (\u_adc_driver|Selector16~0_combout\)))) # (\u_adc_driver|bit_cnt\(0) & 
-- (!\u_adc_driver|Selector16~0_combout\ & (\u_adc_driver|Equal2~0_combout\))) ) ) # ( !\u_adc_driver|Selector16~2_combout\ & ( (!\u_adc_driver|Selector16~0_combout\ & ((\u_adc_driver|bit_cnt\(0)))) # (\u_adc_driver|Selector16~0_combout\ & 
-- (\u_adc_driver|state.S_SHIFT~q\ & !\u_adc_driver|bit_cnt\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101010000001011010101000001101001000100000110100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_Selector16~0_combout\,
	datab => \u_adc_driver|ALT_INV_Equal2~0_combout\,
	datac => \u_adc_driver|ALT_INV_state.S_SHIFT~q\,
	datad => \u_adc_driver|ALT_INV_bit_cnt\(0),
	dataf => \u_adc_driver|ALT_INV_Selector16~2_combout\,
	combout => \u_adc_driver|bit_cnt[0]~3_combout\);

-- Location: FF_X40_Y2_N38
\u_adc_driver|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|bit_cnt[0]~3_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|bit_cnt\(0));

-- Location: LABCELL_X40_Y2_N42
\u_adc_driver|bit_cnt[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|bit_cnt[1]~2_combout\ = ( \u_adc_driver|bit_cnt\(1) & ( \u_adc_driver|Selector16~0_combout\ & ( (\u_adc_driver|state.S_SHIFT~q\ & !\u_adc_driver|bit_cnt\(0)) ) ) ) # ( !\u_adc_driver|bit_cnt\(1) & ( \u_adc_driver|Selector16~0_combout\ & ( 
-- (\u_adc_driver|state.S_SHIFT~q\ & \u_adc_driver|bit_cnt\(0)) ) ) ) # ( \u_adc_driver|bit_cnt\(1) & ( !\u_adc_driver|Selector16~0_combout\ & ( ((!\u_adc_driver|Selector16~2_combout\) # ((\u_adc_driver|state.S_SHIFT~q\ & !\u_adc_driver|bit_cnt\(0)))) # 
-- (\u_adc_driver|Equal2~0_combout\) ) ) ) # ( !\u_adc_driver|bit_cnt\(1) & ( !\u_adc_driver|Selector16~0_combout\ & ( (\u_adc_driver|state.S_SHIFT~q\ & (!\u_adc_driver|Equal2~0_combout\ & (\u_adc_driver|bit_cnt\(0) & \u_adc_driver|Selector16~2_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111111110111001100000101000001010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_state.S_SHIFT~q\,
	datab => \u_adc_driver|ALT_INV_Equal2~0_combout\,
	datac => \u_adc_driver|ALT_INV_bit_cnt\(0),
	datad => \u_adc_driver|ALT_INV_Selector16~2_combout\,
	datae => \u_adc_driver|ALT_INV_bit_cnt\(1),
	dataf => \u_adc_driver|ALT_INV_Selector16~0_combout\,
	combout => \u_adc_driver|bit_cnt[1]~2_combout\);

-- Location: FF_X40_Y2_N44
\u_adc_driver|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|bit_cnt[1]~2_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|bit_cnt\(1));

-- Location: LABCELL_X40_Y2_N33
\u_adc_driver|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Equal2~1_combout\ = ( \u_adc_driver|bit_cnt\(1) & ( \u_adc_driver|bit_cnt\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_adc_driver|ALT_INV_bit_cnt\(0),
	dataf => \u_adc_driver|ALT_INV_bit_cnt\(1),
	combout => \u_adc_driver|Equal2~1_combout\);

-- Location: LABCELL_X40_Y2_N24
\u_adc_driver|bit_cnt[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|bit_cnt[3]~0_combout\ = ( \u_adc_driver|bit_cnt\(3) & ( \u_adc_driver|Selector16~0_combout\ & ( (\u_adc_driver|state.S_SHIFT~q\ & ((!\u_adc_driver|Equal2~1_combout\) # (!\u_adc_driver|bit_cnt\(2)))) ) ) ) # ( !\u_adc_driver|bit_cnt\(3) & ( 
-- \u_adc_driver|Selector16~0_combout\ & ( (\u_adc_driver|Equal2~1_combout\ & (\u_adc_driver|state.S_SHIFT~q\ & \u_adc_driver|bit_cnt\(2))) ) ) ) # ( \u_adc_driver|bit_cnt\(3) & ( !\u_adc_driver|Selector16~0_combout\ & ( 
-- (!\u_adc_driver|Selector16~2_combout\) # ((!\u_adc_driver|Equal2~1_combout\ & (\u_adc_driver|state.S_SHIFT~q\)) # (\u_adc_driver|Equal2~1_combout\ & ((!\u_adc_driver|bit_cnt\(2))))) ) ) ) # ( !\u_adc_driver|bit_cnt\(3) & ( 
-- !\u_adc_driver|Selector16~0_combout\ & ( (\u_adc_driver|Equal2~1_combout\ & (\u_adc_driver|Selector16~2_combout\ & (\u_adc_driver|state.S_SHIFT~q\ & \u_adc_driver|bit_cnt\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001110111111100111000000000000001010000111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_Equal2~1_combout\,
	datab => \u_adc_driver|ALT_INV_Selector16~2_combout\,
	datac => \u_adc_driver|ALT_INV_state.S_SHIFT~q\,
	datad => \u_adc_driver|ALT_INV_bit_cnt\(2),
	datae => \u_adc_driver|ALT_INV_bit_cnt\(3),
	dataf => \u_adc_driver|ALT_INV_Selector16~0_combout\,
	combout => \u_adc_driver|bit_cnt[3]~0_combout\);

-- Location: FF_X40_Y2_N26
\u_adc_driver|bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|bit_cnt[3]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|bit_cnt\(3));

-- Location: MLABCELL_X39_Y2_N36
\u_adc_driver|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Selector15~0_combout\ = ( \u_adc_driver|bit_cnt\(0) & ( \u_adc_driver|bit_cnt\(3) & ( (\u_adc_driver|clk_cnt[0]~DUPLICATE_q\ & (!\u_adc_driver|bit_cnt\(2) & (\u_adc_driver|clk_cnt\(1) & \u_adc_driver|bit_cnt\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_clk_cnt[0]~DUPLICATE_q\,
	datab => \u_adc_driver|ALT_INV_bit_cnt\(2),
	datac => \u_adc_driver|ALT_INV_clk_cnt\(1),
	datad => \u_adc_driver|ALT_INV_bit_cnt\(1),
	datae => \u_adc_driver|ALT_INV_bit_cnt\(0),
	dataf => \u_adc_driver|ALT_INV_bit_cnt\(3),
	combout => \u_adc_driver|Selector15~0_combout\);

-- Location: MLABCELL_X39_Y2_N33
\u_adc_driver|Selector15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Selector15~1_combout\ = (!\u_adc_driver|state.S_SHIFT~q\ & ((\u_adc_driver|Selector16~0_combout\))) # (\u_adc_driver|state.S_SHIFT~q\ & (!\u_adc_driver|Selector15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101010000011111010101000001111101010100000111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_Selector15~0_combout\,
	datac => \u_adc_driver|ALT_INV_Selector16~0_combout\,
	datad => \u_adc_driver|ALT_INV_state.S_SHIFT~q\,
	combout => \u_adc_driver|Selector15~1_combout\);

-- Location: FF_X40_Y2_N29
\u_adc_driver|state.S_SHIFT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|Selector15~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_adc_driver|state.S_DONE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|state.S_SHIFT~q\);

-- Location: LABCELL_X40_Y2_N12
\u_adc_driver|bit_cnt[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|bit_cnt[2]~1_combout\ = ( \u_adc_driver|bit_cnt\(2) & ( \u_adc_driver|Selector16~0_combout\ & ( (\u_adc_driver|state.S_SHIFT~q\ & !\u_adc_driver|Equal2~1_combout\) ) ) ) # ( !\u_adc_driver|bit_cnt\(2) & ( \u_adc_driver|Selector16~0_combout\ 
-- & ( (\u_adc_driver|state.S_SHIFT~q\ & \u_adc_driver|Equal2~1_combout\) ) ) ) # ( \u_adc_driver|bit_cnt\(2) & ( !\u_adc_driver|Selector16~0_combout\ & ( (!\u_adc_driver|Selector16~2_combout\) # ((\u_adc_driver|state.S_SHIFT~q\ & 
-- !\u_adc_driver|Equal2~1_combout\)) ) ) ) # ( !\u_adc_driver|bit_cnt\(2) & ( !\u_adc_driver|Selector16~0_combout\ & ( (\u_adc_driver|state.S_SHIFT~q\ & (\u_adc_driver|Selector16~2_combout\ & (!\u_adc_driver|bit_cnt\(3) & \u_adc_driver|Equal2~1_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000110111011100110000000000010101010101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_state.S_SHIFT~q\,
	datab => \u_adc_driver|ALT_INV_Selector16~2_combout\,
	datac => \u_adc_driver|ALT_INV_bit_cnt\(3),
	datad => \u_adc_driver|ALT_INV_Equal2~1_combout\,
	datae => \u_adc_driver|ALT_INV_bit_cnt\(2),
	dataf => \u_adc_driver|ALT_INV_Selector16~0_combout\,
	combout => \u_adc_driver|bit_cnt[2]~1_combout\);

-- Location: FF_X40_Y2_N14
\u_adc_driver|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|bit_cnt[2]~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|bit_cnt\(2));

-- Location: MLABCELL_X39_Y2_N30
\u_adc_driver|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Equal2~0_combout\ = ( \u_adc_driver|bit_cnt\(3) & ( (!\u_adc_driver|bit_cnt\(2) & (\u_adc_driver|bit_cnt\(0) & \u_adc_driver|bit_cnt\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_adc_driver|ALT_INV_bit_cnt\(2),
	datac => \u_adc_driver|ALT_INV_bit_cnt\(0),
	datad => \u_adc_driver|ALT_INV_bit_cnt\(1),
	dataf => \u_adc_driver|ALT_INV_bit_cnt\(3),
	combout => \u_adc_driver|Equal2~0_combout\);

-- Location: LABCELL_X40_Y2_N21
\u_adc_driver|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Selector13~0_combout\ = ( \u_adc_driver|state.S_IDLE~q\ & ( (\u_adc_driver|state.S_CONVST~q\ & ((!\u_adc_driver|conv_cnt\(0)) # (!\u_adc_driver|conv_cnt\(1)))) ) ) # ( !\u_adc_driver|state.S_IDLE~q\ & ( (!\u_adc_driver|state.S_CONVST~q\ & 
-- (((\u_sample_clock|sample_tick~q\)))) # (\u_adc_driver|state.S_CONVST~q\ & ((!\u_adc_driver|conv_cnt\(0)) # ((!\u_adc_driver|conv_cnt\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100101110001111110010111000110011001000100011001100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_conv_cnt\(0),
	datab => \u_adc_driver|ALT_INV_state.S_CONVST~q\,
	datac => \u_sample_clock|ALT_INV_sample_tick~q\,
	datad => \u_adc_driver|ALT_INV_conv_cnt\(1),
	dataf => \u_adc_driver|ALT_INV_state.S_IDLE~q\,
	combout => \u_adc_driver|Selector13~0_combout\);

-- Location: LABCELL_X40_Y2_N39
\u_adc_driver|Selector13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Selector13~1_combout\ = ( !\u_adc_driver|state.S_DONE~q\ & ( (!\u_adc_driver|Selector16~0_combout\ & (\u_adc_driver|Selector13~0_combout\ & ((!\u_adc_driver|Equal2~0_combout\) # (!\u_adc_driver|Selector16~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001000000010100000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_Selector16~0_combout\,
	datab => \u_adc_driver|ALT_INV_Equal2~0_combout\,
	datac => \u_adc_driver|ALT_INV_Selector13~0_combout\,
	datad => \u_adc_driver|ALT_INV_Selector16~2_combout\,
	dataf => \u_adc_driver|ALT_INV_state.S_DONE~q\,
	combout => \u_adc_driver|Selector13~1_combout\);

-- Location: FF_X40_Y2_N41
\u_adc_driver|state.S_CONVST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|Selector13~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|state.S_CONVST~q\);

-- Location: LABCELL_X40_Y2_N51
\u_adc_driver|conv_cnt[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|conv_cnt[0]~1_combout\ = ( \u_adc_driver|state.S_IDLE~DUPLICATE_q\ & ( (!\u_adc_driver|state.S_CONVST~q\ & ((\u_adc_driver|conv_cnt\(0)))) # (\u_adc_driver|state.S_CONVST~q\ & ((!\u_adc_driver|conv_cnt\(0)) # (\u_adc_driver|conv_cnt\(1)))) ) 
-- ) # ( !\u_adc_driver|state.S_IDLE~DUPLICATE_q\ & ( (!\u_adc_driver|conv_cnt\(0) & (((\u_adc_driver|state.S_CONVST~q\)))) # (\u_adc_driver|conv_cnt\(0) & (!\u_sample_clock|sample_tick~q\ & ((!\u_adc_driver|state.S_CONVST~q\) # 
-- (\u_adc_driver|conv_cnt\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110001010001100111000101000110011110011110011001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_sample_clock|ALT_INV_sample_tick~q\,
	datab => \u_adc_driver|ALT_INV_state.S_CONVST~q\,
	datac => \u_adc_driver|ALT_INV_conv_cnt\(1),
	datad => \u_adc_driver|ALT_INV_conv_cnt\(0),
	dataf => \u_adc_driver|ALT_INV_state.S_IDLE~DUPLICATE_q\,
	combout => \u_adc_driver|conv_cnt[0]~1_combout\);

-- Location: FF_X40_Y2_N53
\u_adc_driver|conv_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|conv_cnt[0]~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|conv_cnt\(0));

-- Location: LABCELL_X40_Y2_N57
\u_adc_driver|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Selector14~0_combout\ = ( !\u_adc_driver|state.S_WAIT~q\ & ( (\u_adc_driver|conv_cnt\(0) & (\u_adc_driver|state.S_CONVST~q\ & \u_adc_driver|conv_cnt\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_conv_cnt\(0),
	datac => \u_adc_driver|ALT_INV_state.S_CONVST~q\,
	datad => \u_adc_driver|ALT_INV_conv_cnt\(1),
	dataf => \u_adc_driver|ALT_INV_state.S_WAIT~q\,
	combout => \u_adc_driver|Selector14~0_combout\);

-- Location: LABCELL_X40_Y2_N30
\u_adc_driver|Selector14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Selector14~1_combout\ = ( \u_adc_driver|Selector2~0_combout\ & ( (!\u_adc_driver|state.S_DONE~q\ & ((!\u_adc_driver|Selector16~2_combout\) # (!\u_adc_driver|Equal2~0_combout\))) ) ) # ( !\u_adc_driver|Selector2~0_combout\ & ( 
-- (!\u_adc_driver|state.S_DONE~q\ & (\u_adc_driver|Selector14~0_combout\ & ((!\u_adc_driver|Selector16~2_combout\) # (!\u_adc_driver|Equal2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100000001000100010000010101010101000001010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_state.S_DONE~q\,
	datab => \u_adc_driver|ALT_INV_Selector14~0_combout\,
	datac => \u_adc_driver|ALT_INV_Selector16~2_combout\,
	datad => \u_adc_driver|ALT_INV_Equal2~0_combout\,
	dataf => \u_adc_driver|ALT_INV_Selector2~0_combout\,
	combout => \u_adc_driver|Selector14~1_combout\);

-- Location: FF_X40_Y2_N32
\u_adc_driver|state.S_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|Selector14~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|state.S_WAIT~q\);

-- Location: FF_X39_Y2_N2
\u_adc_driver|wait_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|Add1~1_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_adc_driver|ALT_INV_state.S_WAIT~q\,
	ena => \u_adc_driver|wait_cnt[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|wait_cnt\(0));

-- Location: MLABCELL_X39_Y2_N48
\u_adc_driver|clk_cnt[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|clk_cnt[0]~1_combout\ = ( \u_adc_driver|clk_cnt\(0) & ( \u_adc_driver|state.S_SHIFT~q\ & ( (\u_adc_driver|Selector15~0_combout\ & ((!\u_adc_driver|wait_cnt\(0)) # ((!\u_adc_driver|Equal1~0_combout\) # (!\u_adc_driver|state.S_WAIT~q\)))) ) ) 
-- ) # ( !\u_adc_driver|clk_cnt\(0) & ( \u_adc_driver|state.S_SHIFT~q\ ) ) # ( \u_adc_driver|clk_cnt\(0) & ( !\u_adc_driver|state.S_SHIFT~q\ & ( (!\u_adc_driver|wait_cnt\(0)) # ((!\u_adc_driver|Equal1~0_combout\) # (!\u_adc_driver|state.S_WAIT~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101011111111111111110011001100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_wait_cnt\(0),
	datab => \u_adc_driver|ALT_INV_Selector15~0_combout\,
	datac => \u_adc_driver|ALT_INV_Equal1~0_combout\,
	datad => \u_adc_driver|ALT_INV_state.S_WAIT~q\,
	datae => \u_adc_driver|ALT_INV_clk_cnt\(0),
	dataf => \u_adc_driver|ALT_INV_state.S_SHIFT~q\,
	combout => \u_adc_driver|clk_cnt[0]~1_combout\);

-- Location: FF_X39_Y2_N49
\u_adc_driver|clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|clk_cnt[0]~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|clk_cnt\(0));

-- Location: LABCELL_X37_Y2_N36
\u_adc_driver|clk_cnt[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|clk_cnt[1]~0_combout\ = ( \u_adc_driver|clk_cnt\(1) & ( \u_adc_driver|Selector16~0_combout\ & ( (!\u_adc_driver|clk_cnt\(0) & \u_adc_driver|state.S_SHIFT~q\) ) ) ) # ( !\u_adc_driver|clk_cnt\(1) & ( \u_adc_driver|Selector16~0_combout\ & ( 
-- (\u_adc_driver|clk_cnt\(0) & \u_adc_driver|state.S_SHIFT~q\) ) ) ) # ( \u_adc_driver|clk_cnt\(1) & ( !\u_adc_driver|Selector16~0_combout\ & ( (!\u_adc_driver|clk_cnt\(0)) # ((!\u_adc_driver|state.S_SHIFT~q\) # (\u_adc_driver|Equal2~0_combout\)) ) ) ) # ( 
-- !\u_adc_driver|clk_cnt\(1) & ( !\u_adc_driver|Selector16~0_combout\ & ( (\u_adc_driver|clk_cnt\(0) & \u_adc_driver|state.S_SHIFT~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111110111111101100000101000001010000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_clk_cnt\(0),
	datab => \u_adc_driver|ALT_INV_Equal2~0_combout\,
	datac => \u_adc_driver|ALT_INV_state.S_SHIFT~q\,
	datae => \u_adc_driver|ALT_INV_clk_cnt\(1),
	dataf => \u_adc_driver|ALT_INV_Selector16~0_combout\,
	combout => \u_adc_driver|clk_cnt[1]~0_combout\);

-- Location: FF_X37_Y2_N37
\u_adc_driver|clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|clk_cnt[1]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|clk_cnt\(1));

-- Location: LABCELL_X40_Y2_N54
\u_adc_driver|Selector16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Selector16~1_combout\ = ( \u_adc_driver|Equal2~0_combout\ & ( (\u_adc_driver|clk_cnt\(1) & (\u_adc_driver|state.S_SHIFT~q\ & \u_adc_driver|clk_cnt\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_adc_driver|ALT_INV_clk_cnt\(1),
	datac => \u_adc_driver|ALT_INV_state.S_SHIFT~q\,
	datad => \u_adc_driver|ALT_INV_clk_cnt\(0),
	dataf => \u_adc_driver|ALT_INV_Equal2~0_combout\,
	combout => \u_adc_driver|Selector16~1_combout\);

-- Location: FF_X40_Y2_N56
\u_adc_driver|state.S_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|Selector16~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|state.S_DONE~q\);

-- Location: LABCELL_X40_Y2_N6
\u_adc_driver|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Selector3~0_combout\ = ( \u_adc_driver|state.S_IDLE~DUPLICATE_q\ & ( (!\u_adc_driver|state.S_DONE~q\ & \u_adc_driver|busy~q\) ) ) # ( !\u_adc_driver|state.S_IDLE~DUPLICATE_q\ & ( \u_sample_clock|sample_tick~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_sample_clock|ALT_INV_sample_tick~q\,
	datac => \u_adc_driver|ALT_INV_state.S_DONE~q\,
	datad => \u_adc_driver|ALT_INV_busy~q\,
	dataf => \u_adc_driver|ALT_INV_state.S_IDLE~DUPLICATE_q\,
	combout => \u_adc_driver|Selector3~0_combout\);

-- Location: FF_X40_Y2_N7
\u_adc_driver|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|Selector3~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|busy~q\);

-- Location: FF_X42_Y1_N47
\u_adc_driver|sample_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|state.S_DONE~q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|sample_valid~q\);

-- Location: FF_X42_Y2_N4
adc_q15_valid : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|sample_valid~q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_q15_valid~q\);

-- Location: LABCELL_X50_Y5_N15
\u_notch|acc[24]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|acc[24]~0_combout\ = ( !\u_notch|state.S_DONE~q\ & ( (\adc_q15_valid~q\) # (\u_notch|state.S_IDLE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datac => \ALT_INV_adc_q15_valid~q\,
	dataf => \u_notch|ALT_INV_state.S_DONE~q\,
	combout => \u_notch|acc[24]~0_combout\);

-- Location: LABCELL_X48_Y3_N48
\u_notch|state.S_IDLE~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|state.S_IDLE~feeder_combout\ = ( \u_notch|acc[24]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_notch|ALT_INV_acc[24]~0_combout\,
	combout => \u_notch|state.S_IDLE~feeder_combout\);

-- Location: FF_X48_Y3_N50
\u_notch|state.S_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|state.S_IDLE~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|state.S_IDLE~q\);

-- Location: LABCELL_X48_Y3_N27
\u_notch|state~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|state~18_combout\ = ( !\u_notch|state.S_IDLE~q\ & ( \adc_q15_valid~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_adc_q15_valid~q\,
	dataf => \u_notch|ALT_INV_state.S_IDLE~q\,
	combout => \u_notch|state~18_combout\);

-- Location: FF_X48_Y3_N7
\u_notch|state.S_MAC1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_notch|state~18_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|state.S_MAC1~q\);

-- Location: FF_X51_Y3_N10
\u_notch|state.S_MAC2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_notch|state.S_MAC1~q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|state.S_MAC2~q\);

-- Location: FF_X51_Y4_N2
\u_notch|state.S_MAC3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_notch|state.S_MAC2~q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|state.S_MAC3~q\);

-- Location: FF_X51_Y4_N46
\u_notch|state.S_MAC4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_notch|state.S_MAC3~q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|state.S_MAC4~q\);

-- Location: FF_X51_Y4_N17
\u_notch|state.S_MAC5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_notch|state.S_MAC4~q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|state.S_MAC5~q\);

-- Location: FF_X51_Y4_N14
\u_notch|state.S_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_notch|state.S_MAC5~q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|state.S_DONE~q\);

-- Location: LABCELL_X51_Y7_N9
\u_notch|out_valid~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|out_valid~feeder_combout\ = ( \u_notch|state.S_DONE~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_notch|ALT_INV_state.S_DONE~q\,
	combout => \u_notch|out_valid~feeder_combout\);

-- Location: FF_X51_Y7_N11
\u_notch|out_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|out_valid~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|out_valid~q\);

-- Location: LABCELL_X51_Y7_N15
\u_dc_block|out_valid~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|out_valid~feeder_combout\ = \u_notch|out_valid~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_notch|ALT_INV_out_valid~q\,
	combout => \u_dc_block|out_valid~feeder_combout\);

-- Location: FF_X51_Y7_N17
\u_dc_block|out_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|out_valid~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|out_valid~q\);

-- Location: LABCELL_X56_Y7_N12
\filtered_valid~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \filtered_valid~feeder_combout\ = ( \u_dc_block|out_valid~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_dc_block|ALT_INV_out_valid~q\,
	combout => \filtered_valid~feeder_combout\);

-- Location: FF_X56_Y7_N14
filtered_valid : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \filtered_valid~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filtered_valid~q\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\GPIO_0[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(0),
	o => \GPIO_0[0]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\GPIO_0[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(1),
	o => \GPIO_0[1]~input_o\);

-- Location: MLABCELL_X72_Y2_N36
\leads_off~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \leads_off~0_combout\ = ( \GPIO_0[1]~input_o\ ) # ( !\GPIO_0[1]~input_o\ & ( \GPIO_0[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_GPIO_0[0]~input_o\,
	dataf => \ALT_INV_GPIO_0[1]~input_o\,
	combout => \leads_off~0_combout\);

-- Location: IOIBUF_X20_Y0_N52
\ADC_DOUT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_DOUT,
	o => \ADC_DOUT~input_o\);

-- Location: MLABCELL_X39_Y2_N54
\u_adc_driver|rx_reg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|rx_reg[0]~0_combout\ = ( \u_adc_driver|state.S_SHIFT~q\ & ( \u_adc_driver|clk_cnt[0]~DUPLICATE_q\ & ( !\u_adc_driver|clk_cnt\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_adc_driver|ALT_INV_clk_cnt\(1),
	datae => \u_adc_driver|ALT_INV_state.S_SHIFT~q\,
	dataf => \u_adc_driver|ALT_INV_clk_cnt[0]~DUPLICATE_q\,
	combout => \u_adc_driver|rx_reg[0]~0_combout\);

-- Location: FF_X39_Y2_N29
\u_adc_driver|rx_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ADC_DOUT~input_o\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|rx_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|rx_reg\(0));

-- Location: FF_X42_Y1_N59
\u_adc_driver|sample_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|rx_reg\(0),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|sample_data\(0));

-- Location: FF_X42_Y1_N52
\adc_q15[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|sample_data\(0),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|sample_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adc_q15(4));

-- Location: FF_X39_Y2_N41
\u_adc_driver|rx_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|rx_reg\(0),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|rx_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|rx_reg\(1));

-- Location: FF_X42_Y2_N29
\u_adc_driver|sample_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|rx_reg\(1),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|sample_data\(1));

-- Location: FF_X42_Y2_N22
\adc_q15[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|sample_data\(1),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|sample_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adc_q15(5));

-- Location: LABCELL_X46_Y2_N24
\u_adc_driver|rx_reg[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|rx_reg[2]~feeder_combout\ = ( \u_adc_driver|rx_reg\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_adc_driver|ALT_INV_rx_reg\(1),
	combout => \u_adc_driver|rx_reg[2]~feeder_combout\);

-- Location: FF_X46_Y2_N25
\u_adc_driver|rx_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|rx_reg[2]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_adc_driver|rx_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|rx_reg\(2));

-- Location: FF_X46_Y2_N52
\u_adc_driver|sample_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|rx_reg\(2),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|sample_data\(2));

-- Location: FF_X47_Y2_N49
\adc_q15[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|sample_data\(2),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|sample_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adc_q15(6));

-- Location: FF_X46_Y2_N58
\u_adc_driver|rx_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|rx_reg\(2),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|rx_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|rx_reg\(3));

-- Location: FF_X46_Y2_N19
\u_adc_driver|sample_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|rx_reg\(3),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|sample_data\(3));

-- Location: FF_X47_Y2_N52
\adc_q15[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|sample_data\(3),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|sample_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adc_q15(7));

-- Location: FF_X46_Y2_N56
\u_adc_driver|rx_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|rx_reg\(3),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|rx_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|rx_reg\(4));

-- Location: LABCELL_X46_Y2_N51
\u_adc_driver|sample_data[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|sample_data[4]~feeder_combout\ = \u_adc_driver|rx_reg\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_rx_reg\(4),
	combout => \u_adc_driver|sample_data[4]~feeder_combout\);

-- Location: FF_X46_Y2_N53
\u_adc_driver|sample_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|sample_data[4]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_adc_driver|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|sample_data\(4));

-- Location: FF_X47_Y2_N44
\adc_q15[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|sample_data\(4),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|sample_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adc_q15(8));

-- Location: LABCELL_X46_Y2_N57
\u_adc_driver|rx_reg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|rx_reg[5]~feeder_combout\ = \u_adc_driver|rx_reg\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_rx_reg\(4),
	combout => \u_adc_driver|rx_reg[5]~feeder_combout\);

-- Location: FF_X46_Y2_N59
\u_adc_driver|rx_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|rx_reg[5]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_adc_driver|rx_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|rx_reg\(5));

-- Location: LABCELL_X46_Y2_N39
\u_adc_driver|sample_data[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|sample_data[5]~feeder_combout\ = \u_adc_driver|rx_reg\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_adc_driver|ALT_INV_rx_reg\(5),
	combout => \u_adc_driver|sample_data[5]~feeder_combout\);

-- Location: FF_X46_Y2_N40
\u_adc_driver|sample_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|sample_data[5]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_adc_driver|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|sample_data\(5));

-- Location: FF_X47_Y2_N46
\adc_q15[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|sample_data\(5),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|sample_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adc_q15(9));

-- Location: LABCELL_X46_Y2_N54
\u_adc_driver|rx_reg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|rx_reg[6]~feeder_combout\ = \u_adc_driver|rx_reg\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_adc_driver|ALT_INV_rx_reg\(5),
	combout => \u_adc_driver|rx_reg[6]~feeder_combout\);

-- Location: FF_X46_Y2_N55
\u_adc_driver|rx_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|rx_reg[6]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_adc_driver|rx_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|rx_reg\(6));

-- Location: LABCELL_X46_Y2_N18
\u_adc_driver|sample_data[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|sample_data[6]~feeder_combout\ = \u_adc_driver|rx_reg\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_adc_driver|ALT_INV_rx_reg\(6),
	combout => \u_adc_driver|sample_data[6]~feeder_combout\);

-- Location: FF_X46_Y2_N20
\u_adc_driver|sample_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|sample_data[6]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_adc_driver|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|sample_data\(6));

-- Location: FF_X47_Y2_N13
\adc_q15[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|sample_data\(6),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|sample_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adc_q15(10));

-- Location: FF_X46_Y2_N26
\u_adc_driver|rx_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|rx_reg\(6),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|rx_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|rx_reg\(7));

-- Location: LABCELL_X46_Y2_N48
\u_adc_driver|sample_data[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|sample_data[7]~feeder_combout\ = \u_adc_driver|rx_reg\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_adc_driver|ALT_INV_rx_reg\(7),
	combout => \u_adc_driver|sample_data[7]~feeder_combout\);

-- Location: FF_X46_Y2_N49
\u_adc_driver|sample_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|sample_data[7]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_adc_driver|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|sample_data\(7));

-- Location: FF_X47_Y2_N17
\adc_q15[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|sample_data\(7),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|sample_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adc_q15(11));

-- Location: LABCELL_X46_Y2_N27
\u_adc_driver|rx_reg[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|rx_reg[8]~feeder_combout\ = \u_adc_driver|rx_reg\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_rx_reg\(7),
	combout => \u_adc_driver|rx_reg[8]~feeder_combout\);

-- Location: FF_X46_Y2_N29
\u_adc_driver|rx_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|rx_reg[8]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_adc_driver|rx_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|rx_reg\(8));

-- Location: FF_X46_Y2_N22
\u_adc_driver|sample_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|rx_reg\(8),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|sample_data\(8));

-- Location: FF_X47_Y2_N31
\adc_q15[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|sample_data\(8),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|sample_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adc_q15(12));

-- Location: LABCELL_X46_Y2_N12
\u_adc_driver|rx_reg[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|rx_reg[9]~feeder_combout\ = \u_adc_driver|rx_reg\(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_adc_driver|ALT_INV_rx_reg\(8),
	combout => \u_adc_driver|rx_reg[9]~feeder_combout\);

-- Location: FF_X46_Y2_N14
\u_adc_driver|rx_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|rx_reg[9]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_adc_driver|rx_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|rx_reg\(9));

-- Location: FF_X46_Y2_N31
\u_adc_driver|sample_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|rx_reg\(9),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|sample_data\(9));

-- Location: FF_X47_Y2_N35
\adc_q15[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|sample_data\(9),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|sample_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adc_q15(13));

-- Location: FF_X46_Y2_N17
\u_adc_driver|rx_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|rx_reg\(9),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|rx_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|rx_reg\(10));

-- Location: LABCELL_X46_Y2_N33
\u_adc_driver|sample_data[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|sample_data[10]~feeder_combout\ = \u_adc_driver|rx_reg\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_adc_driver|ALT_INV_rx_reg\(10),
	combout => \u_adc_driver|sample_data[10]~feeder_combout\);

-- Location: FF_X46_Y2_N34
\u_adc_driver|sample_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|sample_data[10]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_adc_driver|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|sample_data\(10));

-- Location: FF_X47_Y2_N25
\adc_q15[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|sample_data\(10),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|sample_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adc_q15(14));

-- Location: FF_X46_Y2_N13
\u_adc_driver|rx_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|rx_reg\(10),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|rx_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|rx_reg\(11));

-- Location: FF_X42_Y2_N13
\u_adc_driver|sample_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_adc_driver|rx_reg\(11),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_adc_driver|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|sample_data\(11));

-- Location: LABCELL_X42_Y2_N9
\adc_q15[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adc_q15[15]~0_combout\ = !\u_adc_driver|sample_data\(11)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_adc_driver|ALT_INV_sample_data\(11),
	combout => \adc_q15[15]~0_combout\);

-- Location: FF_X42_Y2_N10
\adc_q15[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \adc_q15[15]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_adc_driver|sample_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adc_q15(15));

-- Location: DSP_X32_Y4_N0
\u_notch|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 15,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \u_notch|Mult0~8_ACLR_bus\,
	clk => \u_notch|Mult0~8_CLK_bus\,
	ena => \u_notch|Mult0~8_ENA_bus\,
	ax => \u_notch|Mult0~8_AX_bus\,
	ay => \u_notch|Mult0~8_AY_bus\,
	resulta => \u_notch|Mult0~8_RESULTA_bus\);

-- Location: FF_X51_Y3_N4
\u_notch|x_n[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => adc_q15(4),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_notch|state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n[4]~_Duplicate_1_q\);

-- Location: FF_X53_Y4_N43
\u_notch|x_n1[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_notch|x_n[4]~_Duplicate_1_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n1[4]~_Duplicate_1_q\);

-- Location: FF_X48_Y3_N31
\u_notch|x_n[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => adc_q15(5),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_notch|state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n[5]~_Duplicate_1_q\);

-- Location: FF_X53_Y6_N17
\u_notch|x_n1[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_notch|x_n[5]~_Duplicate_1_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n1[5]~_Duplicate_1_q\);

-- Location: FF_X48_Y3_N13
\u_notch|x_n[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => adc_q15(6),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_notch|state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n[6]~_Duplicate_1_q\);

-- Location: LABCELL_X53_Y6_N45
\u_notch|x_n1[6]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|x_n1[6]~_Duplicate_1feeder_combout\ = ( \u_notch|x_n[6]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_notch|ALT_INV_x_n[6]~_Duplicate_1_q\,
	combout => \u_notch|x_n1[6]~_Duplicate_1feeder_combout\);

-- Location: FF_X53_Y6_N46
\u_notch|x_n1[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|x_n1[6]~_Duplicate_1feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n1[6]~_Duplicate_1_q\);

-- Location: FF_X47_Y2_N4
\u_notch|x_n[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => adc_q15(7),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_notch|state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n[7]~_Duplicate_1_q\);

-- Location: LABCELL_X55_Y2_N12
\u_notch|x_n1[7]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|x_n1[7]~_Duplicate_1feeder_combout\ = ( \u_notch|x_n[7]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_notch|ALT_INV_x_n[7]~_Duplicate_1_q\,
	combout => \u_notch|x_n1[7]~_Duplicate_1feeder_combout\);

-- Location: FF_X55_Y2_N13
\u_notch|x_n1[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|x_n1[7]~_Duplicate_1feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n1[7]~_Duplicate_1_q\);

-- Location: FF_X47_Y2_N1
\u_notch|x_n[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => adc_q15(8),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_notch|state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n[8]~_Duplicate_1_q\);

-- Location: FF_X50_Y2_N10
\u_notch|x_n1[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_notch|x_n[8]~_Duplicate_1_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n1[8]~_Duplicate_1_q\);

-- Location: FF_X47_Y2_N19
\u_notch|x_n[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => adc_q15(9),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_notch|state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n[9]~_Duplicate_1_q\);

-- Location: LABCELL_X55_Y2_N30
\u_notch|x_n1[9]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|x_n1[9]~_Duplicate_1feeder_combout\ = ( \u_notch|x_n[9]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_notch|ALT_INV_x_n[9]~_Duplicate_1_q\,
	combout => \u_notch|x_n1[9]~_Duplicate_1feeder_combout\);

-- Location: FF_X55_Y2_N31
\u_notch|x_n1[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|x_n1[9]~_Duplicate_1feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n1[9]~_Duplicate_1_q\);

-- Location: MLABCELL_X47_Y2_N21
\u_notch|x_n[10]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|x_n[10]~_Duplicate_1feeder_combout\ = adc_q15(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_adc_q15(10),
	combout => \u_notch|x_n[10]~_Duplicate_1feeder_combout\);

-- Location: FF_X47_Y2_N22
\u_notch|x_n[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|x_n[10]~_Duplicate_1feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n[10]~_Duplicate_1_q\);

-- Location: FF_X53_Y6_N29
\u_notch|x_n1[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_notch|x_n[10]~_Duplicate_1_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n1[10]~_Duplicate_1_q\);

-- Location: MLABCELL_X47_Y2_N39
\u_notch|x_n[11]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|x_n[11]~_Duplicate_1feeder_combout\ = adc_q15(11)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_adc_q15(11),
	combout => \u_notch|x_n[11]~_Duplicate_1feeder_combout\);

-- Location: FF_X47_Y2_N40
\u_notch|x_n[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|x_n[11]~_Duplicate_1feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n[11]~_Duplicate_1_q\);

-- Location: LABCELL_X53_Y6_N54
\u_notch|x_n1[11]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|x_n1[11]~_Duplicate_1feeder_combout\ = ( \u_notch|x_n[11]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_notch|ALT_INV_x_n[11]~_Duplicate_1_q\,
	combout => \u_notch|x_n1[11]~_Duplicate_1feeder_combout\);

-- Location: FF_X53_Y6_N56
\u_notch|x_n1[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|x_n1[11]~_Duplicate_1feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n1[11]~_Duplicate_1_q\);

-- Location: FF_X47_Y2_N37
\u_notch|x_n[12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => adc_q15(12),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_notch|state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n[12]~_Duplicate_1_q\);

-- Location: LABCELL_X53_Y6_N36
\u_notch|x_n1[12]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|x_n1[12]~_Duplicate_1feeder_combout\ = ( \u_notch|x_n[12]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_notch|ALT_INV_x_n[12]~_Duplicate_1_q\,
	combout => \u_notch|x_n1[12]~_Duplicate_1feeder_combout\);

-- Location: FF_X53_Y6_N38
\u_notch|x_n1[12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|x_n1[12]~_Duplicate_1feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n1[12]~_Duplicate_1_q\);

-- Location: MLABCELL_X47_Y2_N57
\u_notch|x_n[13]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|x_n[13]~_Duplicate_1feeder_combout\ = adc_q15(13)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_adc_q15(13),
	combout => \u_notch|x_n[13]~_Duplicate_1feeder_combout\);

-- Location: FF_X47_Y2_N58
\u_notch|x_n[13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|x_n[13]~_Duplicate_1feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n[13]~_Duplicate_1_q\);

-- Location: FF_X50_Y2_N4
\u_notch|x_n1[13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_notch|x_n[13]~_Duplicate_1_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n1[13]~_Duplicate_1_q\);

-- Location: FF_X47_Y2_N55
\u_notch|x_n[14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => adc_q15(14),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_notch|state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n[14]~_Duplicate_1_q\);

-- Location: LABCELL_X53_Y2_N48
\u_notch|x_n1[14]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|x_n1[14]~_Duplicate_1feeder_combout\ = ( \u_notch|x_n[14]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_notch|ALT_INV_x_n[14]~_Duplicate_1_q\,
	combout => \u_notch|x_n1[14]~_Duplicate_1feeder_combout\);

-- Location: FF_X53_Y2_N49
\u_notch|x_n1[14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|x_n1[14]~_Duplicate_1feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n1[14]~_Duplicate_1_q\);

-- Location: LABCELL_X48_Y3_N45
\u_notch|x_n[15]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|x_n[15]~_Duplicate_1feeder_combout\ = ( adc_q15(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_adc_q15(15),
	combout => \u_notch|x_n[15]~_Duplicate_1feeder_combout\);

-- Location: FF_X48_Y3_N46
\u_notch|x_n[15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|x_n[15]~_Duplicate_1feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n[15]~_Duplicate_1_q\);

-- Location: LABCELL_X53_Y6_N33
\u_notch|x_n1[15]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|x_n1[15]~_Duplicate_1feeder_combout\ = ( \u_notch|x_n[15]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_notch|ALT_INV_x_n[15]~_Duplicate_1_q\,
	combout => \u_notch|x_n1[15]~_Duplicate_1feeder_combout\);

-- Location: FF_X53_Y6_N34
\u_notch|x_n1[15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|x_n1[15]~_Duplicate_1feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|x_n1[15]~_Duplicate_1_q\);

-- Location: DSP_X54_Y6_N0
\u_notch|Mult2~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 15,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \u_notch|Mult2~8_ACLR_bus\,
	clk => \u_notch|Mult2~8_CLK_bus\,
	ena => \u_notch|Mult2~8_ENA_bus\,
	ax => \u_notch|Mult2~8_AX_bus\,
	ay => \u_notch|Mult2~8_AY_bus\,
	resulta => \u_notch|Mult2~8_RESULTA_bus\);

-- Location: LABCELL_X53_Y4_N48
\u_notch|Add0~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~88_combout\ = ( !\u_notch|state.S_MAC4~q\ & ( !\u_notch|state.S_MAC3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_notch|ALT_INV_state.S_MAC3~q\,
	dataf => \u_notch|ALT_INV_state.S_MAC4~q\,
	combout => \u_notch|Add0~88_combout\);

-- Location: LABCELL_X51_Y4_N30
\u_notch|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~89_combout\ = ( \u_notch|state.S_MAC2~q\ & ( (!\u_notch|state.S_MAC5~q\ & (!\u_notch|state.S_DONE~q\ & !\u_notch|state.S_MAC3~q\)) ) ) # ( !\u_notch|state.S_MAC2~q\ & ( (!\u_notch|state.S_MAC5~q\ & (\u_notch|state.S_MAC4~q\ & 
-- (!\u_notch|state.S_DONE~q\ & !\u_notch|state.S_MAC3~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC5~q\,
	datab => \u_notch|ALT_INV_state.S_MAC4~q\,
	datac => \u_notch|ALT_INV_state.S_DONE~q\,
	datad => \u_notch|ALT_INV_state.S_MAC3~q\,
	dataf => \u_notch|ALT_INV_state.S_MAC2~q\,
	combout => \u_notch|Add0~89_combout\);

-- Location: LABCELL_X50_Y3_N39
\u_notch|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~33_sumout\ = SUM(( \u_notch|Add0~97_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(32)))) ) + ( \u_notch|Add0~38\ ))
-- \u_notch|Add0~34\ = CARRY(( \u_notch|Add0~97_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(32)))) ) + ( \u_notch|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~97_combout\,
	dataf => \u_notch|ALT_INV_acc\(32),
	cin => \u_notch|Add0~38\,
	sumout => \u_notch|Add0~33_sumout\,
	cout => \u_notch|Add0~34\);

-- Location: LABCELL_X50_Y3_N42
\u_notch|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~9_sumout\ = SUM(( \u_notch|Add0~97_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(33)))) ) + ( \u_notch|Add0~34\ ))
-- \u_notch|Add0~10\ = CARRY(( \u_notch|Add0~97_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(33)))) ) + ( \u_notch|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~97_combout\,
	dataf => \u_notch|ALT_INV_acc\(33),
	cin => \u_notch|Add0~34\,
	sumout => \u_notch|Add0~9_sumout\,
	cout => \u_notch|Add0~10\);

-- Location: LABCELL_X51_Y3_N39
\u_notch|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector6~0_combout\ = ( \u_notch|Mult0~38\ & ( (\u_notch|Add0~9_sumout\) # (\u_notch|state.S_MAC1~q\) ) ) # ( !\u_notch|Mult0~38\ & ( (!\u_notch|state.S_MAC1~q\ & \u_notch|Add0~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Add0~9_sumout\,
	dataf => \u_notch|ALT_INV_Mult0~38\,
	combout => \u_notch|Selector6~0_combout\);

-- Location: FF_X51_Y3_N41
\u_notch|acc[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector6~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(33));

-- Location: LABCELL_X50_Y3_N45
\u_notch|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~29_sumout\ = SUM(( \u_notch|Add0~97_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(34)))) ) + ( \u_notch|Add0~10\ ))
-- \u_notch|Add0~30\ = CARRY(( \u_notch|Add0~97_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(34)))) ) + ( \u_notch|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~97_combout\,
	dataf => \u_notch|ALT_INV_acc\(34),
	cin => \u_notch|Add0~10\,
	sumout => \u_notch|Add0~29_sumout\,
	cout => \u_notch|Add0~30\);

-- Location: LABCELL_X51_Y3_N18
\u_notch|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector5~0_combout\ = ( \u_notch|Add0~29_sumout\ & ( (!\u_notch|state.S_MAC1~q\) # (\u_notch|Mult0~38\) ) ) # ( !\u_notch|Add0~29_sumout\ & ( (\u_notch|state.S_MAC1~q\ & \u_notch|Mult0~38\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datab => \u_notch|ALT_INV_Mult0~38\,
	dataf => \u_notch|ALT_INV_Add0~29_sumout\,
	combout => \u_notch|Selector5~0_combout\);

-- Location: FF_X51_Y3_N20
\u_notch|acc[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector5~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(34));

-- Location: LABCELL_X50_Y3_N48
\u_notch|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~25_sumout\ = SUM(( \u_notch|Add0~97_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(35)))) ) + ( \u_notch|Add0~30\ ))
-- \u_notch|Add0~26\ = CARRY(( \u_notch|Add0~97_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(35)))) ) + ( \u_notch|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~97_combout\,
	dataf => \u_notch|ALT_INV_acc\(35),
	cin => \u_notch|Add0~30\,
	sumout => \u_notch|Add0~25_sumout\,
	cout => \u_notch|Add0~26\);

-- Location: LABCELL_X51_Y3_N15
\u_notch|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector4~0_combout\ = ( \u_notch|Add0~25_sumout\ & ( (!\u_notch|state.S_MAC1~q\) # (\u_notch|Mult0~38\) ) ) # ( !\u_notch|Add0~25_sumout\ & ( (\u_notch|state.S_MAC1~q\ & \u_notch|Mult0~38\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Mult0~38\,
	dataf => \u_notch|ALT_INV_Add0~25_sumout\,
	combout => \u_notch|Selector4~0_combout\);

-- Location: FF_X51_Y3_N17
\u_notch|acc[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector4~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(35));

-- Location: LABCELL_X50_Y3_N51
\u_notch|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~21_sumout\ = SUM(( \u_notch|Add0~97_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(36)))) ) + ( \u_notch|Add0~26\ ))
-- \u_notch|Add0~22\ = CARRY(( \u_notch|Add0~97_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(36)))) ) + ( \u_notch|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~97_combout\,
	dataf => \u_notch|ALT_INV_acc\(36),
	cin => \u_notch|Add0~26\,
	sumout => \u_notch|Add0~21_sumout\,
	cout => \u_notch|Add0~22\);

-- Location: LABCELL_X51_Y3_N12
\u_notch|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector3~0_combout\ = ( \u_notch|Add0~21_sumout\ & ( (!\u_notch|state.S_MAC1~q\) # (\u_notch|Mult0~38\) ) ) # ( !\u_notch|Add0~21_sumout\ & ( (\u_notch|state.S_MAC1~q\ & \u_notch|Mult0~38\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datab => \u_notch|ALT_INV_Mult0~38\,
	dataf => \u_notch|ALT_INV_Add0~21_sumout\,
	combout => \u_notch|Selector3~0_combout\);

-- Location: FF_X51_Y3_N14
\u_notch|acc[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector3~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(36));

-- Location: LABCELL_X50_Y3_N54
\u_notch|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~17_sumout\ = SUM(( \u_notch|Add0~97_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(37)))) ) + ( \u_notch|Add0~22\ ))
-- \u_notch|Add0~18\ = CARRY(( \u_notch|Add0~97_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(37)))) ) + ( \u_notch|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~97_combout\,
	dataf => \u_notch|ALT_INV_acc\(37),
	cin => \u_notch|Add0~22\,
	sumout => \u_notch|Add0~17_sumout\,
	cout => \u_notch|Add0~18\);

-- Location: LABCELL_X51_Y3_N57
\u_notch|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector2~0_combout\ = ( \u_notch|Add0~17_sumout\ & ( (!\u_notch|state.S_MAC1~q\) # (\u_notch|Mult0~38\) ) ) # ( !\u_notch|Add0~17_sumout\ & ( (\u_notch|state.S_MAC1~q\ & \u_notch|Mult0~38\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Mult0~38\,
	dataf => \u_notch|ALT_INV_Add0~17_sumout\,
	combout => \u_notch|Selector2~0_combout\);

-- Location: FF_X51_Y3_N59
\u_notch|acc[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector2~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(37));

-- Location: LABCELL_X50_Y3_N57
\u_notch|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~13_sumout\ = SUM(( \u_notch|Add0~97_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(38)))) ) + ( \u_notch|Add0~18\ ))
-- \u_notch|Add0~14\ = CARRY(( \u_notch|Add0~97_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(38)))) ) + ( \u_notch|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~97_combout\,
	dataf => \u_notch|ALT_INV_acc\(38),
	cin => \u_notch|Add0~18\,
	sumout => \u_notch|Add0~13_sumout\,
	cout => \u_notch|Add0~14\);

-- Location: LABCELL_X50_Y2_N0
\u_notch|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~5_sumout\ = SUM(( \u_notch|Add0~97_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_MAC1~q\ & (!\u_notch|state.S_DONE~q\ & \u_notch|acc\(39)))) ) + ( \u_notch|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_state.S_DONE~q\,
	datad => \u_notch|ALT_INV_Add0~97_combout\,
	dataf => \u_notch|ALT_INV_acc\(39),
	cin => \u_notch|Add0~14\,
	sumout => \u_notch|Add0~5_sumout\);

-- Location: LABCELL_X50_Y2_N42
\u_notch|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector0~0_combout\ = ( \u_notch|Add0~5_sumout\ & ( \u_notch|Mult0~38\ ) ) # ( !\u_notch|Add0~5_sumout\ & ( \u_notch|Mult0~38\ & ( \u_notch|state.S_MAC1~q\ ) ) ) # ( \u_notch|Add0~5_sumout\ & ( !\u_notch|Mult0~38\ & ( !\u_notch|state.S_MAC1~q\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_notch|ALT_INV_state.S_MAC1~q\,
	datae => \u_notch|ALT_INV_Add0~5_sumout\,
	dataf => \u_notch|ALT_INV_Mult0~38\,
	combout => \u_notch|Selector0~0_combout\);

-- Location: FF_X50_Y2_N44
\u_notch|acc[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector0~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(39));

-- Location: LABCELL_X51_Y3_N0
\u_notch|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|LessThan1~0_combout\ = ( \u_notch|acc\(37) & ( \u_notch|acc\(35) & ( (\u_notch|acc\(38) & (\u_notch|acc\(36) & (\u_notch|acc\(34) & \u_notch|acc\(33)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_acc\(38),
	datab => \u_notch|ALT_INV_acc\(36),
	datac => \u_notch|ALT_INV_acc\(34),
	datad => \u_notch|ALT_INV_acc\(33),
	datae => \u_notch|ALT_INV_acc\(37),
	dataf => \u_notch|ALT_INV_acc\(35),
	combout => \u_notch|LessThan1~0_combout\);

-- Location: DSP_X54_Y2_N0
\u_notch|Mult1~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \u_notch|Mult1~8_ACLR_bus\,
	clk => \u_notch|Mult1~8_CLK_bus\,
	ena => \u_notch|Mult1~8_ENA_bus\,
	ax => \u_notch|Mult1~8_AX_bus\,
	ay => \u_notch|Mult1~8_AY_bus\,
	resulta => \u_notch|Mult1~8_RESULTA_bus\);

-- Location: DSP_X54_Y4_N0
\u_notch|Mult3~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 15,
	by_clock => "0",
	by_use_scan_in => "true",
	by_width => 16,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	result_b_width => 37,
	scan_out_width => 16,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "true",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \u_notch|Mult3~8_ACLR_bus\,
	clk => \u_notch|Mult3~8_CLK_bus\,
	ena => \u_notch|Mult3~8_ENA_bus\,
	ax => \u_notch|Mult3~8_AX_bus\,
	ay => \u_notch|Mult3~8_AY_bus\,
	bx => \u_notch|Mult3~8_BX_bus\,
	resulta => \u_notch|Mult3~8_RESULTA_bus\,
	resultb => \u_notch|Mult3~8_RESULTB_bus\);

-- Location: LABCELL_X55_Y4_N0
\u_notch|Add0~119\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~119_combout\ = ( !\u_notch|state.S_DONE~q\ & ( \u_notch|Mult2~36\ & ( ((\u_notch|state.S_MAC5~q\ & !\u_notch|Mult4~36\)) # (\u_notch|state.S_MAC3~q\) ) ) ) # ( !\u_notch|state.S_DONE~q\ & ( !\u_notch|Mult2~36\ & ( (\u_notch|state.S_MAC5~q\ & 
-- (!\u_notch|Mult4~36\ & !\u_notch|state.S_MAC3~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000000000000000000001001111010011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC5~q\,
	datab => \u_notch|ALT_INV_Mult4~36\,
	datac => \u_notch|ALT_INV_state.S_MAC3~q\,
	datae => \u_notch|ALT_INV_state.S_DONE~q\,
	dataf => \u_notch|ALT_INV_Mult2~36\,
	combout => \u_notch|Add0~119_combout\);

-- Location: LABCELL_X55_Y4_N33
\u_notch|Add0~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~120_combout\ = ( \u_notch|Mult1~36\ & ( ((\u_notch|Add0~89_combout\ & ((!\u_notch|Mult3~36\) # (\u_notch|Add0~88_combout\)))) # (\u_notch|Add0~119_combout\) ) ) # ( !\u_notch|Mult1~36\ & ( ((\u_notch|Add0~89_combout\ & 
-- (!\u_notch|Add0~88_combout\ & !\u_notch|Mult3~36\))) # (\u_notch|Add0~119_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011111111010000001111111101010001111111110101000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~89_combout\,
	datab => \u_notch|ALT_INV_Add0~88_combout\,
	datac => \u_notch|ALT_INV_Mult3~36\,
	datad => \u_notch|ALT_INV_Add0~119_combout\,
	dataf => \u_notch|ALT_INV_Mult1~36\,
	combout => \u_notch|Add0~120_combout\);

-- Location: LABCELL_X53_Y4_N45
\u_notch|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~101_combout\ = ( \u_notch|Mult2~27\ & ( \u_notch|state.S_MAC5~q\ & ( (!\u_notch|state.S_DONE~q\ & ((!\u_notch|Mult4~27\) # (\u_notch|state.S_MAC3~q\))) ) ) ) # ( !\u_notch|Mult2~27\ & ( \u_notch|state.S_MAC5~q\ & ( (!\u_notch|state.S_MAC3~q\ 
-- & (!\u_notch|Mult4~27\ & !\u_notch|state.S_DONE~q\)) ) ) ) # ( \u_notch|Mult2~27\ & ( !\u_notch|state.S_MAC5~q\ & ( (\u_notch|state.S_MAC3~q\ & !\u_notch|state.S_DONE~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000010100000000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC3~q\,
	datac => \u_notch|ALT_INV_Mult4~27\,
	datad => \u_notch|ALT_INV_state.S_DONE~q\,
	datae => \u_notch|ALT_INV_Mult2~27\,
	dataf => \u_notch|ALT_INV_state.S_MAC5~q\,
	combout => \u_notch|Add0~101_combout\);

-- Location: LABCELL_X53_Y4_N51
\u_notch|Add0~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~102_combout\ = ( \u_notch|Mult1~27\ & ( ((\u_notch|Add0~89_combout\ & ((!\u_notch|Mult3~27\) # (\u_notch|Add0~88_combout\)))) # (\u_notch|Add0~101_combout\) ) ) # ( !\u_notch|Mult1~27\ & ( ((!\u_notch|Add0~88_combout\ & 
-- (\u_notch|Add0~89_combout\ & !\u_notch|Mult3~27\))) # (\u_notch|Add0~101_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100110011001110110011001100111111001101110011111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~88_combout\,
	datab => \u_notch|ALT_INV_Add0~101_combout\,
	datac => \u_notch|ALT_INV_Add0~89_combout\,
	datad => \u_notch|ALT_INV_Mult3~27\,
	dataf => \u_notch|ALT_INV_Mult1~27\,
	combout => \u_notch|Add0~102_combout\);

-- Location: LABCELL_X53_Y4_N12
\u_notch|Add0~127\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~127_combout\ = ( \u_notch|Mult4~24\ & ( (\u_notch|state.S_MAC3~q\ & (\u_notch|Mult2~24\ & !\u_notch|state.S_DONE~q\)) ) ) # ( !\u_notch|Mult4~24\ & ( (!\u_notch|state.S_DONE~q\ & ((!\u_notch|state.S_MAC3~q\ & (\u_notch|state.S_MAC5~q\)) # 
-- (\u_notch|state.S_MAC3~q\ & ((\u_notch|Mult2~24\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC3~q\,
	datab => \u_notch|ALT_INV_state.S_MAC5~q\,
	datac => \u_notch|ALT_INV_Mult2~24\,
	datad => \u_notch|ALT_INV_state.S_DONE~q\,
	dataf => \u_notch|ALT_INV_Mult4~24\,
	combout => \u_notch|Add0~127_combout\);

-- Location: LABCELL_X53_Y4_N21
\u_notch|Add0~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~128_combout\ = ( \u_notch|Mult1~24\ & ( ((\u_notch|Add0~89_combout\ & ((!\u_notch|Mult3~24\) # (\u_notch|Add0~88_combout\)))) # (\u_notch|Add0~127_combout\) ) ) # ( !\u_notch|Mult1~24\ & ( ((!\u_notch|Add0~88_combout\ & 
-- (\u_notch|Add0~89_combout\ & !\u_notch|Mult3~24\))) # (\u_notch|Add0~127_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100001111001011110000111100111111000111110011111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~88_combout\,
	datab => \u_notch|ALT_INV_Add0~89_combout\,
	datac => \u_notch|ALT_INV_Add0~127_combout\,
	datad => \u_notch|ALT_INV_Mult3~24\,
	dataf => \u_notch|ALT_INV_Mult1~24\,
	combout => \u_notch|Add0~128_combout\);

-- Location: LABCELL_X53_Y4_N0
\u_notch|Add0~139\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~139_combout\ = ( \u_notch|Mult4~22\ & ( (\u_notch|state.S_MAC3~q\ & (\u_notch|Mult2~22\ & !\u_notch|state.S_DONE~q\)) ) ) # ( !\u_notch|Mult4~22\ & ( (!\u_notch|state.S_DONE~q\ & ((!\u_notch|state.S_MAC3~q\ & (\u_notch|state.S_MAC5~q\)) # 
-- (\u_notch|state.S_MAC3~q\ & ((\u_notch|Mult2~22\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC3~q\,
	datab => \u_notch|ALT_INV_state.S_MAC5~q\,
	datac => \u_notch|ALT_INV_Mult2~22\,
	datad => \u_notch|ALT_INV_state.S_DONE~q\,
	dataf => \u_notch|ALT_INV_Mult4~22\,
	combout => \u_notch|Add0~139_combout\);

-- Location: LABCELL_X53_Y4_N57
\u_notch|Add0~140\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~140_combout\ = ( \u_notch|Mult3~22\ & ( ((\u_notch|Add0~88_combout\ & (\u_notch|Add0~89_combout\ & \u_notch|Mult1~22\))) # (\u_notch|Add0~139_combout\) ) ) # ( !\u_notch|Mult3~22\ & ( ((\u_notch|Add0~89_combout\ & 
-- ((!\u_notch|Add0~88_combout\) # (\u_notch|Mult1~22\)))) # (\u_notch|Add0~139_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001111111111001000111111111100000001111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~88_combout\,
	datab => \u_notch|ALT_INV_Add0~89_combout\,
	datac => \u_notch|ALT_INV_Mult1~22\,
	datad => \u_notch|ALT_INV_Add0~139_combout\,
	dataf => \u_notch|ALT_INV_Mult3~22\,
	combout => \u_notch|Add0~140_combout\);

-- Location: LABCELL_X51_Y4_N27
\u_notch|Add0~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~145_combout\ = ( \u_notch|Mult2~21\ & ( (!\u_notch|state.S_DONE~q\ & (((\u_notch|state.S_MAC5~q\ & !\u_notch|Mult4~21\)) # (\u_notch|state.S_MAC3~q\))) ) ) # ( !\u_notch|Mult2~21\ & ( (!\u_notch|state.S_MAC3~q\ & (\u_notch|state.S_MAC5~q\ & 
-- (!\u_notch|state.S_DONE~q\ & !\u_notch|Mult4~21\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000001110000010100000111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC3~q\,
	datab => \u_notch|ALT_INV_state.S_MAC5~q\,
	datac => \u_notch|ALT_INV_state.S_DONE~q\,
	datad => \u_notch|ALT_INV_Mult4~21\,
	dataf => \u_notch|ALT_INV_Mult2~21\,
	combout => \u_notch|Add0~145_combout\);

-- Location: LABCELL_X51_Y4_N54
\u_notch|Add0~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~146_combout\ = ( \u_notch|Mult3~21\ & ( ((\u_notch|Add0~88_combout\ & (\u_notch|Add0~89_combout\ & \u_notch|Mult1~21\))) # (\u_notch|Add0~145_combout\) ) ) # ( !\u_notch|Mult3~21\ & ( ((\u_notch|Add0~89_combout\ & 
-- ((!\u_notch|Add0~88_combout\) # (\u_notch|Mult1~21\)))) # (\u_notch|Add0~145_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100111111001011110011111100001111000111110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~88_combout\,
	datab => \u_notch|ALT_INV_Add0~89_combout\,
	datac => \u_notch|ALT_INV_Add0~145_combout\,
	datad => \u_notch|ALT_INV_Mult1~21\,
	dataf => \u_notch|ALT_INV_Mult3~21\,
	combout => \u_notch|Add0~146_combout\);

-- Location: LABCELL_X51_Y4_N24
\u_notch|Add0~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~151_combout\ = ( \u_notch|Mult4~20\ & ( (\u_notch|state.S_MAC3~q\ & (!\u_notch|state.S_DONE~q\ & \u_notch|Mult2~20\)) ) ) # ( !\u_notch|Mult4~20\ & ( (!\u_notch|state.S_DONE~q\ & ((!\u_notch|state.S_MAC3~q\ & (\u_notch|state.S_MAC5~q\)) # 
-- (\u_notch|state.S_MAC3~q\ & ((\u_notch|Mult2~20\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001000000111000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC3~q\,
	datab => \u_notch|ALT_INV_state.S_MAC5~q\,
	datac => \u_notch|ALT_INV_state.S_DONE~q\,
	datad => \u_notch|ALT_INV_Mult2~20\,
	dataf => \u_notch|ALT_INV_Mult4~20\,
	combout => \u_notch|Add0~151_combout\);

-- Location: LABCELL_X51_Y4_N57
\u_notch|Add0~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~152_combout\ = ( \u_notch|Mult1~20\ & ( ((\u_notch|Add0~89_combout\ & ((!\u_notch|Mult3~20\) # (\u_notch|Add0~88_combout\)))) # (\u_notch|Add0~151_combout\) ) ) # ( !\u_notch|Mult1~20\ & ( ((!\u_notch|Add0~88_combout\ & 
-- (\u_notch|Add0~89_combout\ & !\u_notch|Mult3~20\))) # (\u_notch|Add0~151_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011111111001000001111111100110001111111110011000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~88_combout\,
	datab => \u_notch|ALT_INV_Add0~89_combout\,
	datac => \u_notch|ALT_INV_Mult3~20\,
	datad => \u_notch|ALT_INV_Add0~151_combout\,
	dataf => \u_notch|ALT_INV_Mult1~20\,
	combout => \u_notch|Add0~152_combout\);

-- Location: LABCELL_X51_Y4_N39
\u_notch|Add0~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~157_combout\ = ( \u_notch|Mult4~19\ & ( (\u_notch|state.S_MAC3~q\ & (!\u_notch|state.S_DONE~q\ & \u_notch|Mult2~19\)) ) ) # ( !\u_notch|Mult4~19\ & ( (!\u_notch|state.S_DONE~q\ & ((!\u_notch|state.S_MAC3~q\ & ((\u_notch|state.S_MAC5~q\))) # 
-- (\u_notch|state.S_MAC3~q\ & (\u_notch|Mult2~19\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC3~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_Mult2~19\,
	datad => \u_notch|ALT_INV_state.S_MAC5~q\,
	dataf => \u_notch|ALT_INV_Mult4~19\,
	combout => \u_notch|Add0~157_combout\);

-- Location: MLABCELL_X52_Y4_N18
\u_notch|Add0~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~158_combout\ = ( \u_notch|Mult1~19\ & ( \u_notch|Mult3~19\ & ( ((\u_notch|Add0~88_combout\ & \u_notch|Add0~89_combout\)) # (\u_notch|Add0~157_combout\) ) ) ) # ( !\u_notch|Mult1~19\ & ( \u_notch|Mult3~19\ & ( \u_notch|Add0~157_combout\ ) ) ) 
-- # ( \u_notch|Mult1~19\ & ( !\u_notch|Mult3~19\ & ( (\u_notch|Add0~89_combout\) # (\u_notch|Add0~157_combout\) ) ) ) # ( !\u_notch|Mult1~19\ & ( !\u_notch|Mult3~19\ & ( ((!\u_notch|Add0~88_combout\ & \u_notch|Add0~89_combout\)) # 
-- (\u_notch|Add0~157_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111110101111101010101010101010101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~157_combout\,
	datab => \u_notch|ALT_INV_Add0~88_combout\,
	datac => \u_notch|ALT_INV_Add0~89_combout\,
	datae => \u_notch|ALT_INV_Mult1~19\,
	dataf => \u_notch|ALT_INV_Mult3~19\,
	combout => \u_notch|Add0~158_combout\);

-- Location: LABCELL_X51_Y4_N36
\u_notch|Add0~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~163_combout\ = ( \u_notch|Mult4~18\ & ( (\u_notch|state.S_MAC3~q\ & (!\u_notch|state.S_DONE~q\ & \u_notch|Mult2~18\)) ) ) # ( !\u_notch|Mult4~18\ & ( (!\u_notch|state.S_DONE~q\ & ((!\u_notch|state.S_MAC3~q\ & ((\u_notch|state.S_MAC5~q\))) # 
-- (\u_notch|state.S_MAC3~q\ & (\u_notch|Mult2~18\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC3~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_Mult2~18\,
	datad => \u_notch|ALT_INV_state.S_MAC5~q\,
	dataf => \u_notch|ALT_INV_Mult4~18\,
	combout => \u_notch|Add0~163_combout\);

-- Location: LABCELL_X51_Y4_N9
\u_notch|Add0~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~164_combout\ = ( \u_notch|Mult3~18\ & ( ((\u_notch|Add0~88_combout\ & (\u_notch|Add0~89_combout\ & \u_notch|Mult1~18\))) # (\u_notch|Add0~163_combout\) ) ) # ( !\u_notch|Mult3~18\ & ( ((\u_notch|Add0~89_combout\ & 
-- ((!\u_notch|Add0~88_combout\) # (\u_notch|Mult1~18\)))) # (\u_notch|Add0~163_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001111111111001000111111111100000001111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~88_combout\,
	datab => \u_notch|ALT_INV_Add0~89_combout\,
	datac => \u_notch|ALT_INV_Mult1~18\,
	datad => \u_notch|ALT_INV_Add0~163_combout\,
	dataf => \u_notch|ALT_INV_Mult3~18\,
	combout => \u_notch|Add0~164_combout\);

-- Location: LABCELL_X51_Y4_N21
\u_notch|Add0~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~169_combout\ = ( \u_notch|Mult2~17\ & ( (!\u_notch|state.S_DONE~q\ & (((\u_notch|state.S_MAC5~q\ & !\u_notch|Mult4~17\)) # (\u_notch|state.S_MAC3~q\))) ) ) # ( !\u_notch|Mult2~17\ & ( (!\u_notch|state.S_MAC3~q\ & (\u_notch|state.S_MAC5~q\ & 
-- (!\u_notch|Mult4~17\ & !\u_notch|state.S_DONE~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000001110101000000000111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC3~q\,
	datab => \u_notch|ALT_INV_state.S_MAC5~q\,
	datac => \u_notch|ALT_INV_Mult4~17\,
	datad => \u_notch|ALT_INV_state.S_DONE~q\,
	dataf => \u_notch|ALT_INV_Mult2~17\,
	combout => \u_notch|Add0~169_combout\);

-- Location: MLABCELL_X52_Y4_N15
\u_notch|Add0~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~170_combout\ = ( \u_notch|Add0~169_combout\ & ( \u_notch|Mult3~17\ ) ) # ( !\u_notch|Add0~169_combout\ & ( \u_notch|Mult3~17\ & ( (\u_notch|Add0~89_combout\ & (\u_notch|Add0~88_combout\ & \u_notch|Mult1~17\)) ) ) ) # ( 
-- \u_notch|Add0~169_combout\ & ( !\u_notch|Mult3~17\ ) ) # ( !\u_notch|Add0~169_combout\ & ( !\u_notch|Mult3~17\ & ( (\u_notch|Add0~89_combout\ & ((!\u_notch|Add0~88_combout\) # (\u_notch|Mult1~17\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000101111111111111111100000001000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~89_combout\,
	datab => \u_notch|ALT_INV_Add0~88_combout\,
	datac => \u_notch|ALT_INV_Mult1~17\,
	datae => \u_notch|ALT_INV_Add0~169_combout\,
	dataf => \u_notch|ALT_INV_Mult3~17\,
	combout => \u_notch|Add0~170_combout\);

-- Location: LABCELL_X51_Y4_N3
\u_notch|Add0~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~175_combout\ = ( \u_notch|Mult2~16\ & ( (!\u_notch|state.S_DONE~q\ & (((\u_notch|state.S_MAC5~q\ & !\u_notch|Mult4~16\)) # (\u_notch|state.S_MAC3~q\))) ) ) # ( !\u_notch|Mult2~16\ & ( (!\u_notch|state.S_DONE~q\ & (\u_notch|state.S_MAC5~q\ & 
-- (!\u_notch|Mult4~16\ & !\u_notch|state.S_MAC3~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000101010100010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_DONE~q\,
	datab => \u_notch|ALT_INV_state.S_MAC5~q\,
	datac => \u_notch|ALT_INV_Mult4~16\,
	datad => \u_notch|ALT_INV_state.S_MAC3~q\,
	dataf => \u_notch|ALT_INV_Mult2~16\,
	combout => \u_notch|Add0~175_combout\);

-- Location: MLABCELL_X52_Y4_N6
\u_notch|Add0~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~176_combout\ = ( \u_notch|Mult3~16\ & ( \u_notch|Add0~175_combout\ ) ) # ( !\u_notch|Mult3~16\ & ( \u_notch|Add0~175_combout\ ) ) # ( \u_notch|Mult3~16\ & ( !\u_notch|Add0~175_combout\ & ( (\u_notch|Mult1~16\ & (\u_notch|Add0~88_combout\ & 
-- \u_notch|Add0~89_combout\)) ) ) ) # ( !\u_notch|Mult3~16\ & ( !\u_notch|Add0~175_combout\ & ( (\u_notch|Add0~89_combout\ & ((!\u_notch|Add0~88_combout\) # (\u_notch|Mult1~16\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000000010000000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Mult1~16\,
	datab => \u_notch|ALT_INV_Add0~88_combout\,
	datac => \u_notch|ALT_INV_Add0~89_combout\,
	datae => \u_notch|ALT_INV_Mult3~16\,
	dataf => \u_notch|ALT_INV_Add0~175_combout\,
	combout => \u_notch|Add0~176_combout\);

-- Location: LABCELL_X53_Y4_N39
\u_notch|Add0~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~181_combout\ = ( \u_notch|Mult4~15\ & ( \u_notch|Mult2~15\ & ( (!\u_notch|state.S_DONE~q\ & \u_notch|state.S_MAC3~q\) ) ) ) # ( !\u_notch|Mult4~15\ & ( \u_notch|Mult2~15\ & ( (!\u_notch|state.S_DONE~q\ & ((\u_notch|state.S_MAC3~q\) # 
-- (\u_notch|state.S_MAC5~q\))) ) ) ) # ( !\u_notch|Mult4~15\ & ( !\u_notch|Mult2~15\ & ( (!\u_notch|state.S_DONE~q\ & (\u_notch|state.S_MAC5~q\ & !\u_notch|state.S_MAC3~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000000000000000000001010101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC5~q\,
	datad => \u_notch|ALT_INV_state.S_MAC3~q\,
	datae => \u_notch|ALT_INV_Mult4~15\,
	dataf => \u_notch|ALT_INV_Mult2~15\,
	combout => \u_notch|Add0~181_combout\);

-- Location: LABCELL_X53_Y4_N54
\u_notch|Add0~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~182_combout\ = ( \u_notch|Add0~181_combout\ ) # ( !\u_notch|Add0~181_combout\ & ( (\u_notch|Add0~89_combout\ & ((!\u_notch|Add0~88_combout\ & (!\u_notch|Mult3~15\)) # (\u_notch|Add0~88_combout\ & ((\u_notch|Mult1~15\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000110001001000000011000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~88_combout\,
	datab => \u_notch|ALT_INV_Add0~89_combout\,
	datac => \u_notch|ALT_INV_Mult3~15\,
	datad => \u_notch|ALT_INV_Mult1~15\,
	dataf => \u_notch|ALT_INV_Add0~181_combout\,
	combout => \u_notch|Add0~182_combout\);

-- Location: LABCELL_X55_Y4_N45
\u_notch|Add0~187\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~187_combout\ = ( !\u_notch|state.S_DONE~q\ & ( \u_notch|Mult2~14\ & ( ((!\u_notch|Mult4~14\ & \u_notch|state.S_MAC5~q\)) # (\u_notch|state.S_MAC3~q\) ) ) ) # ( !\u_notch|state.S_DONE~q\ & ( !\u_notch|Mult2~14\ & ( (!\u_notch|state.S_MAC3~q\ 
-- & (!\u_notch|Mult4~14\ & \u_notch|state.S_MAC5~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000000000000001010101111101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC3~q\,
	datac => \u_notch|ALT_INV_Mult4~14\,
	datad => \u_notch|ALT_INV_state.S_MAC5~q\,
	datae => \u_notch|ALT_INV_state.S_DONE~q\,
	dataf => \u_notch|ALT_INV_Mult2~14\,
	combout => \u_notch|Add0~187_combout\);

-- Location: MLABCELL_X52_Y4_N36
\u_notch|Add0~188\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~188_combout\ = ( \u_notch|Add0~88_combout\ & ( \u_notch|Add0~187_combout\ ) ) # ( !\u_notch|Add0~88_combout\ & ( \u_notch|Add0~187_combout\ ) ) # ( \u_notch|Add0~88_combout\ & ( !\u_notch|Add0~187_combout\ & ( (\u_notch|Add0~89_combout\ & 
-- \u_notch|Mult1~14\) ) ) ) # ( !\u_notch|Add0~88_combout\ & ( !\u_notch|Add0~187_combout\ & ( (!\u_notch|Mult3~14\ & \u_notch|Add0~89_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_notch|ALT_INV_Mult3~14\,
	datac => \u_notch|ALT_INV_Add0~89_combout\,
	datad => \u_notch|ALT_INV_Mult1~14\,
	datae => \u_notch|ALT_INV_Add0~88_combout\,
	dataf => \u_notch|ALT_INV_Add0~187_combout\,
	combout => \u_notch|Add0~188_combout\);

-- Location: LABCELL_X51_Y4_N51
\u_notch|Add0~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~193_combout\ = ( \u_notch|Mult2~13\ & ( (!\u_notch|state.S_DONE~q\ & (((\u_notch|state.S_MAC5~q\ & !\u_notch|Mult4~13\)) # (\u_notch|state.S_MAC3~q\))) ) ) # ( !\u_notch|Mult2~13\ & ( (\u_notch|state.S_MAC5~q\ & (!\u_notch|state.S_MAC3~q\ & 
-- (!\u_notch|state.S_DONE~q\ & !\u_notch|Mult4~13\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001110000001100000111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC5~q\,
	datab => \u_notch|ALT_INV_state.S_MAC3~q\,
	datac => \u_notch|ALT_INV_state.S_DONE~q\,
	datad => \u_notch|ALT_INV_Mult4~13\,
	dataf => \u_notch|ALT_INV_Mult2~13\,
	combout => \u_notch|Add0~193_combout\);

-- Location: MLABCELL_X52_Y4_N33
\u_notch|Add0~194\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~194_combout\ = ( \u_notch|Mult3~13\ & ( \u_notch|Add0~193_combout\ ) ) # ( !\u_notch|Mult3~13\ & ( \u_notch|Add0~193_combout\ ) ) # ( \u_notch|Mult3~13\ & ( !\u_notch|Add0~193_combout\ & ( (\u_notch|Add0~89_combout\ & (\u_notch|Mult1~13\ & 
-- \u_notch|Add0~88_combout\)) ) ) ) # ( !\u_notch|Mult3~13\ & ( !\u_notch|Add0~193_combout\ & ( (\u_notch|Add0~89_combout\ & ((!\u_notch|Add0~88_combout\) # (\u_notch|Mult1~13\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010001000000010000000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~89_combout\,
	datab => \u_notch|ALT_INV_Mult1~13\,
	datac => \u_notch|ALT_INV_Add0~88_combout\,
	datae => \u_notch|ALT_INV_Mult3~13\,
	dataf => \u_notch|ALT_INV_Add0~193_combout\,
	combout => \u_notch|Add0~194_combout\);

-- Location: LABCELL_X53_Y4_N15
\u_notch|Add0~199\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~199_combout\ = ( \u_notch|Mult2~12\ & ( (!\u_notch|state.S_DONE~q\ & (((\u_notch|state.S_MAC5~q\ & !\u_notch|Mult4~12\)) # (\u_notch|state.S_MAC3~q\))) ) ) # ( !\u_notch|Mult2~12\ & ( (!\u_notch|state.S_MAC3~q\ & (\u_notch|state.S_MAC5~q\ & 
-- (!\u_notch|Mult4~12\ & !\u_notch|state.S_DONE~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000001110101000000000111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC3~q\,
	datab => \u_notch|ALT_INV_state.S_MAC5~q\,
	datac => \u_notch|ALT_INV_Mult4~12\,
	datad => \u_notch|ALT_INV_state.S_DONE~q\,
	dataf => \u_notch|ALT_INV_Mult2~12\,
	combout => \u_notch|Add0~199_combout\);

-- Location: MLABCELL_X52_Y4_N51
\u_notch|Add0~200\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~200_combout\ = ( \u_notch|Add0~199_combout\ & ( \u_notch|Mult3~12\ ) ) # ( !\u_notch|Add0~199_combout\ & ( \u_notch|Mult3~12\ & ( (\u_notch|Add0~89_combout\ & (\u_notch|Mult1~12\ & \u_notch|Add0~88_combout\)) ) ) ) # ( 
-- \u_notch|Add0~199_combout\ & ( !\u_notch|Mult3~12\ ) ) # ( !\u_notch|Add0~199_combout\ & ( !\u_notch|Mult3~12\ & ( (\u_notch|Add0~89_combout\ & ((!\u_notch|Add0~88_combout\) # (\u_notch|Mult1~12\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010001111111111111111100000001000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~89_combout\,
	datab => \u_notch|ALT_INV_Mult1~12\,
	datac => \u_notch|ALT_INV_Add0~88_combout\,
	datae => \u_notch|ALT_INV_Add0~199_combout\,
	dataf => \u_notch|ALT_INV_Mult3~12\,
	combout => \u_notch|Add0~200_combout\);

-- Location: LABCELL_X53_Y4_N30
\u_notch|Add0~205\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~205_combout\ = ( \u_notch|Mult4~11\ & ( (\u_notch|state.S_MAC3~q\ & (\u_notch|Mult2~11\ & !\u_notch|state.S_DONE~q\)) ) ) # ( !\u_notch|Mult4~11\ & ( (!\u_notch|state.S_DONE~q\ & ((!\u_notch|state.S_MAC3~q\ & (\u_notch|state.S_MAC5~q\)) # 
-- (\u_notch|state.S_MAC3~q\ & ((\u_notch|Mult2~11\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC3~q\,
	datab => \u_notch|ALT_INV_state.S_MAC5~q\,
	datac => \u_notch|ALT_INV_Mult2~11\,
	datad => \u_notch|ALT_INV_state.S_DONE~q\,
	dataf => \u_notch|ALT_INV_Mult4~11\,
	combout => \u_notch|Add0~205_combout\);

-- Location: MLABCELL_X52_Y4_N45
\u_notch|Add0~206\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~206_combout\ = ( \u_notch|Mult3~11\ & ( \u_notch|Add0~205_combout\ ) ) # ( !\u_notch|Mult3~11\ & ( \u_notch|Add0~205_combout\ ) ) # ( \u_notch|Mult3~11\ & ( !\u_notch|Add0~205_combout\ & ( (\u_notch|Add0~89_combout\ & 
-- (\u_notch|Add0~88_combout\ & \u_notch|Mult1~11\)) ) ) ) # ( !\u_notch|Mult3~11\ & ( !\u_notch|Add0~205_combout\ & ( (\u_notch|Add0~89_combout\ & ((!\u_notch|Add0~88_combout\) # (\u_notch|Mult1~11\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000101000000010000000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~89_combout\,
	datab => \u_notch|ALT_INV_Add0~88_combout\,
	datac => \u_notch|ALT_INV_Mult1~11\,
	datae => \u_notch|ALT_INV_Mult3~11\,
	dataf => \u_notch|ALT_INV_Add0~205_combout\,
	combout => \u_notch|Add0~206_combout\);

-- Location: LABCELL_X53_Y4_N33
\u_notch|Add0~211\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~211_combout\ = ( !\u_notch|state.S_DONE~q\ & ( (!\u_notch|state.S_MAC3~q\ & (\u_notch|state.S_MAC5~q\ & ((!\u_notch|Mult4~10\)))) # (\u_notch|state.S_MAC3~q\ & (((\u_notch|Mult2~10\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000101001001110000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC3~q\,
	datab => \u_notch|ALT_INV_state.S_MAC5~q\,
	datac => \u_notch|ALT_INV_Mult2~10\,
	datad => \u_notch|ALT_INV_Mult4~10\,
	dataf => \u_notch|ALT_INV_state.S_DONE~q\,
	combout => \u_notch|Add0~211_combout\);

-- Location: LABCELL_X53_Y4_N18
\u_notch|Add0~212\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~212_combout\ = ( \u_notch|Add0~211_combout\ ) # ( !\u_notch|Add0~211_combout\ & ( (\u_notch|Add0~89_combout\ & ((!\u_notch|Add0~88_combout\ & ((!\u_notch|Mult3~10\))) # (\u_notch|Add0~88_combout\ & (\u_notch|Mult1~10\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100000001001000110000000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~88_combout\,
	datab => \u_notch|ALT_INV_Add0~89_combout\,
	datac => \u_notch|ALT_INV_Mult1~10\,
	datad => \u_notch|ALT_INV_Mult3~10\,
	dataf => \u_notch|ALT_INV_Add0~211_combout\,
	combout => \u_notch|Add0~212_combout\);

-- Location: LABCELL_X51_Y4_N18
\u_notch|Add0~217\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~217_combout\ = ( \u_notch|Mult4~9\ & ( (\u_notch|state.S_MAC3~q\ & (\u_notch|Mult2~9\ & !\u_notch|state.S_DONE~q\)) ) ) # ( !\u_notch|Mult4~9\ & ( (!\u_notch|state.S_DONE~q\ & ((!\u_notch|state.S_MAC3~q\ & (\u_notch|state.S_MAC5~q\)) # 
-- (\u_notch|state.S_MAC3~q\ & ((\u_notch|Mult2~9\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC3~q\,
	datab => \u_notch|ALT_INV_state.S_MAC5~q\,
	datac => \u_notch|ALT_INV_Mult2~9\,
	datad => \u_notch|ALT_INV_state.S_DONE~q\,
	dataf => \u_notch|ALT_INV_Mult4~9\,
	combout => \u_notch|Add0~217_combout\);

-- Location: MLABCELL_X52_Y4_N3
\u_notch|Add0~218\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~218_combout\ = ( \u_notch|Mult3~9\ & ( \u_notch|Add0~217_combout\ ) ) # ( !\u_notch|Mult3~9\ & ( \u_notch|Add0~217_combout\ ) ) # ( \u_notch|Mult3~9\ & ( !\u_notch|Add0~217_combout\ & ( (\u_notch|Add0~89_combout\ & (\u_notch|Mult1~9\ & 
-- \u_notch|Add0~88_combout\)) ) ) ) # ( !\u_notch|Mult3~9\ & ( !\u_notch|Add0~217_combout\ & ( (\u_notch|Add0~89_combout\ & ((!\u_notch|Add0~88_combout\) # (\u_notch|Mult1~9\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010001000000010000000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~89_combout\,
	datab => \u_notch|ALT_INV_Mult1~9\,
	datac => \u_notch|ALT_INV_Add0~88_combout\,
	datae => \u_notch|ALT_INV_Mult3~9\,
	dataf => \u_notch|ALT_INV_Add0~217_combout\,
	combout => \u_notch|Add0~218_combout\);

-- Location: LABCELL_X51_Y4_N0
\u_notch|Add0~223\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~223_combout\ = ( \u_notch|Mult2~8_resulta\ & ( (!\u_notch|state.S_DONE~q\ & (((\u_notch|state.S_MAC5~q\ & !\u_notch|Mult4~8\)) # (\u_notch|state.S_MAC3~q\))) ) ) # ( !\u_notch|Mult2~8_resulta\ & ( (!\u_notch|state.S_DONE~q\ & 
-- (\u_notch|state.S_MAC5~q\ & (!\u_notch|Mult4~8\ & !\u_notch|state.S_MAC3~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000101010100010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_DONE~q\,
	datab => \u_notch|ALT_INV_state.S_MAC5~q\,
	datac => \u_notch|ALT_INV_Mult4~8\,
	datad => \u_notch|ALT_INV_state.S_MAC3~q\,
	dataf => \u_notch|ALT_INV_Mult2~8_resulta\,
	combout => \u_notch|Add0~223_combout\);

-- Location: LABCELL_X51_Y4_N42
\u_notch|Add0~224\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~224_combout\ = ( \u_notch|Mult3~8_resulta\ & ( \u_notch|Mult1~8_resulta\ & ( ((\u_notch|Add0~88_combout\ & \u_notch|Add0~89_combout\)) # (\u_notch|Add0~223_combout\) ) ) ) # ( !\u_notch|Mult3~8_resulta\ & ( \u_notch|Mult1~8_resulta\ & ( 
-- (\u_notch|Add0~223_combout\) # (\u_notch|Add0~89_combout\) ) ) ) # ( \u_notch|Mult3~8_resulta\ & ( !\u_notch|Mult1~8_resulta\ & ( \u_notch|Add0~223_combout\ ) ) ) # ( !\u_notch|Mult3~8_resulta\ & ( !\u_notch|Mult1~8_resulta\ & ( 
-- ((!\u_notch|Add0~88_combout\ & \u_notch|Add0~89_combout\)) # (\u_notch|Add0~223_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111000011110000111100111111001111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~88_combout\,
	datab => \u_notch|ALT_INV_Add0~89_combout\,
	datac => \u_notch|ALT_INV_Add0~223_combout\,
	datae => \u_notch|ALT_INV_Mult3~8_resulta\,
	dataf => \u_notch|ALT_INV_Mult1~8_resulta\,
	combout => \u_notch|Add0~224_combout\);

-- Location: LABCELL_X51_Y4_N33
\u_notch|Add0~229\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~229_combout\ = ( \u_notch|state.S_MAC5~q\ ) # ( !\u_notch|state.S_MAC5~q\ & ( \u_notch|state.S_MAC4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_notch|ALT_INV_state.S_MAC4~q\,
	dataf => \u_notch|ALT_INV_state.S_MAC5~q\,
	combout => \u_notch|Add0~229_combout\);

-- Location: LABCELL_X50_Y5_N30
\u_notch|Add0~227\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~227_cout\ = CARRY(( VCC ) + ( \u_notch|Add0~229_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_notch|ALT_INV_Add0~229_combout\,
	cin => GND,
	cout => \u_notch|Add0~227_cout\);

-- Location: LABCELL_X50_Y5_N33
\u_notch|Add0~220\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~220_sumout\ = SUM(( \u_notch|Add0~224_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(0)))) ) + ( \u_notch|Add0~227_cout\ ))
-- \u_notch|Add0~221\ = CARRY(( \u_notch|Add0~224_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(0)))) ) + ( \u_notch|Add0~227_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~224_combout\,
	dataf => \u_notch|ALT_INV_acc\(0),
	cin => \u_notch|Add0~227_cout\,
	sumout => \u_notch|Add0~220_sumout\,
	cout => \u_notch|Add0~221\);

-- Location: LABCELL_X50_Y5_N12
\u_notch|Selector39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector39~0_combout\ = ( \u_notch|Add0~220_sumout\ & ( (!\u_notch|state.S_MAC1~q\) # (\u_notch|Mult0~8_resulta\) ) ) # ( !\u_notch|Add0~220_sumout\ & ( (\u_notch|state.S_MAC1~q\ & \u_notch|Mult0~8_resulta\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Mult0~8_resulta\,
	dataf => \u_notch|ALT_INV_Add0~220_sumout\,
	combout => \u_notch|Selector39~0_combout\);

-- Location: FF_X50_Y5_N14
\u_notch|acc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector39~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(0));

-- Location: LABCELL_X50_Y5_N36
\u_notch|Add0~214\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~214_sumout\ = SUM(( \u_notch|Add0~218_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(1)))) ) + ( \u_notch|Add0~221\ ))
-- \u_notch|Add0~215\ = CARRY(( \u_notch|Add0~218_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(1)))) ) + ( \u_notch|Add0~221\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~218_combout\,
	dataf => \u_notch|ALT_INV_acc\(1),
	cin => \u_notch|Add0~221\,
	sumout => \u_notch|Add0~214_sumout\,
	cout => \u_notch|Add0~215\);

-- Location: LABCELL_X50_Y5_N21
\u_notch|Selector38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector38~0_combout\ = ( \u_notch|Mult0~9\ & ( (\u_notch|Add0~214_sumout\) # (\u_notch|state.S_MAC1~q\) ) ) # ( !\u_notch|Mult0~9\ & ( (!\u_notch|state.S_MAC1~q\ & \u_notch|Add0~214_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Add0~214_sumout\,
	dataf => \u_notch|ALT_INV_Mult0~9\,
	combout => \u_notch|Selector38~0_combout\);

-- Location: FF_X50_Y5_N22
\u_notch|acc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector38~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(1));

-- Location: LABCELL_X50_Y5_N39
\u_notch|Add0~208\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~208_sumout\ = SUM(( \u_notch|Add0~212_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(2)))) ) + ( \u_notch|Add0~215\ ))
-- \u_notch|Add0~209\ = CARRY(( \u_notch|Add0~212_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(2)))) ) + ( \u_notch|Add0~215\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~212_combout\,
	dataf => \u_notch|ALT_INV_acc\(2),
	cin => \u_notch|Add0~215\,
	sumout => \u_notch|Add0~208_sumout\,
	cout => \u_notch|Add0~209\);

-- Location: LABCELL_X50_Y5_N18
\u_notch|Selector37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector37~0_combout\ = ( \u_notch|Add0~208_sumout\ & ( (!\u_notch|state.S_MAC1~q\) # (\u_notch|Mult0~10\) ) ) # ( !\u_notch|Add0~208_sumout\ & ( (\u_notch|state.S_MAC1~q\ & \u_notch|Mult0~10\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Mult0~10\,
	dataf => \u_notch|ALT_INV_Add0~208_sumout\,
	combout => \u_notch|Selector37~0_combout\);

-- Location: FF_X50_Y5_N20
\u_notch|acc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector37~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(2));

-- Location: LABCELL_X50_Y5_N42
\u_notch|Add0~202\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~202_sumout\ = SUM(( \u_notch|Add0~206_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(3)))) ) + ( \u_notch|Add0~209\ ))
-- \u_notch|Add0~203\ = CARRY(( \u_notch|Add0~206_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(3)))) ) + ( \u_notch|Add0~209\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~206_combout\,
	dataf => \u_notch|ALT_INV_acc\(3),
	cin => \u_notch|Add0~209\,
	sumout => \u_notch|Add0~202_sumout\,
	cout => \u_notch|Add0~203\);

-- Location: LABCELL_X50_Y5_N3
\u_notch|Selector36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector36~0_combout\ = ( \u_notch|Add0~202_sumout\ & ( (!\u_notch|state.S_MAC1~q\) # (\u_notch|Mult0~11\) ) ) # ( !\u_notch|Add0~202_sumout\ & ( (\u_notch|state.S_MAC1~q\ & \u_notch|Mult0~11\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Mult0~11\,
	dataf => \u_notch|ALT_INV_Add0~202_sumout\,
	combout => \u_notch|Selector36~0_combout\);

-- Location: FF_X50_Y5_N5
\u_notch|acc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector36~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(3));

-- Location: LABCELL_X50_Y5_N45
\u_notch|Add0~196\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~196_sumout\ = SUM(( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(4)))) ) + ( \u_notch|Add0~200_combout\ ) + ( \u_notch|Add0~203\ ))
-- \u_notch|Add0~197\ = CARRY(( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(4)))) ) + ( \u_notch|Add0~200_combout\ ) + ( \u_notch|Add0~203\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_acc\(4),
	dataf => \u_notch|ALT_INV_Add0~200_combout\,
	cin => \u_notch|Add0~203\,
	sumout => \u_notch|Add0~196_sumout\,
	cout => \u_notch|Add0~197\);

-- Location: LABCELL_X50_Y5_N0
\u_notch|Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector35~0_combout\ = (!\u_notch|state.S_MAC1~q\ & ((\u_notch|Add0~196_sumout\))) # (\u_notch|state.S_MAC1~q\ & (\u_notch|Mult0~12\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Mult0~12\,
	datad => \u_notch|ALT_INV_Add0~196_sumout\,
	combout => \u_notch|Selector35~0_combout\);

-- Location: FF_X50_Y5_N2
\u_notch|acc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector35~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(4));

-- Location: LABCELL_X50_Y5_N48
\u_notch|Add0~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~190_sumout\ = SUM(( \u_notch|Add0~194_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(5)))) ) + ( \u_notch|Add0~197\ ))
-- \u_notch|Add0~191\ = CARRY(( \u_notch|Add0~194_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(5)))) ) + ( \u_notch|Add0~197\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~194_combout\,
	dataf => \u_notch|ALT_INV_acc\(5),
	cin => \u_notch|Add0~197\,
	sumout => \u_notch|Add0~190_sumout\,
	cout => \u_notch|Add0~191\);

-- Location: LABCELL_X50_Y5_N9
\u_notch|Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector34~0_combout\ = ( \u_notch|Add0~190_sumout\ & ( (!\u_notch|state.S_MAC1~q\) # (\u_notch|Mult0~13\) ) ) # ( !\u_notch|Add0~190_sumout\ & ( (\u_notch|state.S_MAC1~q\ & \u_notch|Mult0~13\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Mult0~13\,
	dataf => \u_notch|ALT_INV_Add0~190_sumout\,
	combout => \u_notch|Selector34~0_combout\);

-- Location: FF_X50_Y5_N11
\u_notch|acc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector34~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(5));

-- Location: LABCELL_X50_Y5_N51
\u_notch|Add0~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~184_sumout\ = SUM(( \u_notch|Add0~188_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(6)))) ) + ( \u_notch|Add0~191\ ))
-- \u_notch|Add0~185\ = CARRY(( \u_notch|Add0~188_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(6)))) ) + ( \u_notch|Add0~191\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~188_combout\,
	dataf => \u_notch|ALT_INV_acc\(6),
	cin => \u_notch|Add0~191\,
	sumout => \u_notch|Add0~184_sumout\,
	cout => \u_notch|Add0~185\);

-- Location: LABCELL_X50_Y5_N6
\u_notch|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector33~0_combout\ = ( \u_notch|Mult0~14\ & ( (\u_notch|Add0~184_sumout\) # (\u_notch|state.S_MAC1~q\) ) ) # ( !\u_notch|Mult0~14\ & ( (!\u_notch|state.S_MAC1~q\ & \u_notch|Add0~184_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Add0~184_sumout\,
	dataf => \u_notch|ALT_INV_Mult0~14\,
	combout => \u_notch|Selector33~0_combout\);

-- Location: FF_X50_Y5_N8
\u_notch|acc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector33~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(6));

-- Location: LABCELL_X50_Y5_N54
\u_notch|Add0~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~178_sumout\ = SUM(( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(7)))) ) + ( \u_notch|Add0~182_combout\ ) + ( \u_notch|Add0~185\ ))
-- \u_notch|Add0~179\ = CARRY(( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(7)))) ) + ( \u_notch|Add0~182_combout\ ) + ( \u_notch|Add0~185\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_acc\(7),
	dataf => \u_notch|ALT_INV_Add0~182_combout\,
	cin => \u_notch|Add0~185\,
	sumout => \u_notch|Add0~178_sumout\,
	cout => \u_notch|Add0~179\);

-- Location: LABCELL_X50_Y5_N27
\u_notch|Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector32~0_combout\ = ( \u_notch|Mult0~15\ & ( (\u_notch|Add0~178_sumout\) # (\u_notch|state.S_MAC1~q\) ) ) # ( !\u_notch|Mult0~15\ & ( (!\u_notch|state.S_MAC1~q\ & \u_notch|Add0~178_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~178_sumout\,
	dataf => \u_notch|ALT_INV_Mult0~15\,
	combout => \u_notch|Selector32~0_combout\);

-- Location: FF_X50_Y5_N29
\u_notch|acc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector32~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(7));

-- Location: LABCELL_X50_Y5_N57
\u_notch|Add0~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~172_sumout\ = SUM(( \u_notch|Add0~176_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(8)))) ) + ( \u_notch|Add0~179\ ))
-- \u_notch|Add0~173\ = CARRY(( \u_notch|Add0~176_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(8)))) ) + ( \u_notch|Add0~179\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~176_combout\,
	dataf => \u_notch|ALT_INV_acc\(8),
	cin => \u_notch|Add0~179\,
	sumout => \u_notch|Add0~172_sumout\,
	cout => \u_notch|Add0~173\);

-- Location: LABCELL_X50_Y5_N24
\u_notch|Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector31~0_combout\ = ( \u_notch|Add0~172_sumout\ & ( (!\u_notch|state.S_MAC1~q\) # (\u_notch|Mult0~16\) ) ) # ( !\u_notch|Add0~172_sumout\ & ( (\u_notch|state.S_MAC1~q\ & \u_notch|Mult0~16\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Mult0~16\,
	dataf => \u_notch|ALT_INV_Add0~172_sumout\,
	combout => \u_notch|Selector31~0_combout\);

-- Location: FF_X50_Y5_N26
\u_notch|acc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector31~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(8));

-- Location: LABCELL_X50_Y4_N30
\u_notch|Add0~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~166_sumout\ = SUM(( \u_notch|Add0~170_combout\ ) + ( (!\u_notch|state.S_MAC1~q\ & (!\u_notch|state.S_DONE~q\ & (\u_notch|state.S_IDLE~q\ & \u_notch|acc\(9)))) ) + ( \u_notch|Add0~173\ ))
-- \u_notch|Add0~167\ = CARRY(( \u_notch|Add0~170_combout\ ) + ( (!\u_notch|state.S_MAC1~q\ & (!\u_notch|state.S_DONE~q\ & (\u_notch|state.S_IDLE~q\ & \u_notch|acc\(9)))) ) + ( \u_notch|Add0~173\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_IDLE~q\,
	datad => \u_notch|ALT_INV_Add0~170_combout\,
	dataf => \u_notch|ALT_INV_acc\(9),
	cin => \u_notch|Add0~173\,
	sumout => \u_notch|Add0~166_sumout\,
	cout => \u_notch|Add0~167\);

-- Location: LABCELL_X50_Y4_N27
\u_notch|Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector30~0_combout\ = ( \u_notch|Add0~166_sumout\ & ( (!\u_notch|state.S_MAC1~q\) # (\u_notch|Mult0~17\) ) ) # ( !\u_notch|Add0~166_sumout\ & ( (\u_notch|state.S_MAC1~q\ & \u_notch|Mult0~17\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Mult0~17\,
	dataf => \u_notch|ALT_INV_Add0~166_sumout\,
	combout => \u_notch|Selector30~0_combout\);

-- Location: FF_X50_Y4_N28
\u_notch|acc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector30~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(9));

-- Location: LABCELL_X50_Y4_N33
\u_notch|Add0~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~160_sumout\ = SUM(( \u_notch|Add0~164_combout\ ) + ( (!\u_notch|state.S_MAC1~q\ & (!\u_notch|state.S_DONE~q\ & (\u_notch|state.S_IDLE~q\ & \u_notch|acc\(10)))) ) + ( \u_notch|Add0~167\ ))
-- \u_notch|Add0~161\ = CARRY(( \u_notch|Add0~164_combout\ ) + ( (!\u_notch|state.S_MAC1~q\ & (!\u_notch|state.S_DONE~q\ & (\u_notch|state.S_IDLE~q\ & \u_notch|acc\(10)))) ) + ( \u_notch|Add0~167\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_IDLE~q\,
	datad => \u_notch|ALT_INV_Add0~164_combout\,
	dataf => \u_notch|ALT_INV_acc\(10),
	cin => \u_notch|Add0~167\,
	sumout => \u_notch|Add0~160_sumout\,
	cout => \u_notch|Add0~161\);

-- Location: LABCELL_X50_Y4_N24
\u_notch|Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector29~0_combout\ = ( \u_notch|Add0~160_sumout\ & ( (!\u_notch|state.S_MAC1~q\) # (\u_notch|Mult0~18\) ) ) # ( !\u_notch|Add0~160_sumout\ & ( (\u_notch|state.S_MAC1~q\ & \u_notch|Mult0~18\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Mult0~18\,
	dataf => \u_notch|ALT_INV_Add0~160_sumout\,
	combout => \u_notch|Selector29~0_combout\);

-- Location: FF_X50_Y4_N26
\u_notch|acc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector29~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(10));

-- Location: LABCELL_X50_Y4_N36
\u_notch|Add0~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~154_sumout\ = SUM(( \u_notch|Add0~158_combout\ ) + ( (!\u_notch|state.S_MAC1~q\ & (!\u_notch|state.S_DONE~q\ & (\u_notch|state.S_IDLE~q\ & \u_notch|acc\(11)))) ) + ( \u_notch|Add0~161\ ))
-- \u_notch|Add0~155\ = CARRY(( \u_notch|Add0~158_combout\ ) + ( (!\u_notch|state.S_MAC1~q\ & (!\u_notch|state.S_DONE~q\ & (\u_notch|state.S_IDLE~q\ & \u_notch|acc\(11)))) ) + ( \u_notch|Add0~161\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_IDLE~q\,
	datad => \u_notch|ALT_INV_Add0~158_combout\,
	dataf => \u_notch|ALT_INV_acc\(11),
	cin => \u_notch|Add0~161\,
	sumout => \u_notch|Add0~154_sumout\,
	cout => \u_notch|Add0~155\);

-- Location: LABCELL_X50_Y4_N9
\u_notch|Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector28~0_combout\ = ( \u_notch|Mult0~19\ & ( (\u_notch|Add0~154_sumout\) # (\u_notch|state.S_MAC1~q\) ) ) # ( !\u_notch|Mult0~19\ & ( (!\u_notch|state.S_MAC1~q\ & \u_notch|Add0~154_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~154_sumout\,
	dataf => \u_notch|ALT_INV_Mult0~19\,
	combout => \u_notch|Selector28~0_combout\);

-- Location: FF_X50_Y4_N11
\u_notch|acc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector28~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(11));

-- Location: LABCELL_X50_Y4_N39
\u_notch|Add0~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~148_sumout\ = SUM(( \u_notch|Add0~152_combout\ ) + ( (!\u_notch|state.S_MAC1~q\ & (!\u_notch|state.S_DONE~q\ & (\u_notch|state.S_IDLE~q\ & \u_notch|acc\(12)))) ) + ( \u_notch|Add0~155\ ))
-- \u_notch|Add0~149\ = CARRY(( \u_notch|Add0~152_combout\ ) + ( (!\u_notch|state.S_MAC1~q\ & (!\u_notch|state.S_DONE~q\ & (\u_notch|state.S_IDLE~q\ & \u_notch|acc\(12)))) ) + ( \u_notch|Add0~155\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_IDLE~q\,
	datad => \u_notch|ALT_INV_Add0~152_combout\,
	dataf => \u_notch|ALT_INV_acc\(12),
	cin => \u_notch|Add0~155\,
	sumout => \u_notch|Add0~148_sumout\,
	cout => \u_notch|Add0~149\);

-- Location: LABCELL_X50_Y4_N6
\u_notch|Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector27~0_combout\ = ( \u_notch|Add0~148_sumout\ & ( (!\u_notch|state.S_MAC1~q\) # (\u_notch|Mult0~20\) ) ) # ( !\u_notch|Add0~148_sumout\ & ( (\u_notch|state.S_MAC1~q\ & \u_notch|Mult0~20\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Mult0~20\,
	dataf => \u_notch|ALT_INV_Add0~148_sumout\,
	combout => \u_notch|Selector27~0_combout\);

-- Location: FF_X50_Y4_N8
\u_notch|acc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector27~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(12));

-- Location: LABCELL_X50_Y4_N42
\u_notch|Add0~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~142_sumout\ = SUM(( (!\u_notch|state.S_MAC1~q\ & (!\u_notch|state.S_DONE~q\ & (\u_notch|state.S_IDLE~q\ & \u_notch|acc\(13)))) ) + ( \u_notch|Add0~146_combout\ ) + ( \u_notch|Add0~149\ ))
-- \u_notch|Add0~143\ = CARRY(( (!\u_notch|state.S_MAC1~q\ & (!\u_notch|state.S_DONE~q\ & (\u_notch|state.S_IDLE~q\ & \u_notch|acc\(13)))) ) + ( \u_notch|Add0~146_combout\ ) + ( \u_notch|Add0~149\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_IDLE~q\,
	datad => \u_notch|ALT_INV_acc\(13),
	dataf => \u_notch|ALT_INV_Add0~146_combout\,
	cin => \u_notch|Add0~149\,
	sumout => \u_notch|Add0~142_sumout\,
	cout => \u_notch|Add0~143\);

-- Location: LABCELL_X50_Y4_N3
\u_notch|Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector26~0_combout\ = ( \u_notch|Add0~142_sumout\ & ( (!\u_notch|state.S_MAC1~q\) # (\u_notch|Mult0~21\) ) ) # ( !\u_notch|Add0~142_sumout\ & ( (\u_notch|state.S_MAC1~q\ & \u_notch|Mult0~21\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Mult0~21\,
	dataf => \u_notch|ALT_INV_Add0~142_sumout\,
	combout => \u_notch|Selector26~0_combout\);

-- Location: FF_X50_Y4_N5
\u_notch|acc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector26~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(13));

-- Location: LABCELL_X50_Y4_N45
\u_notch|Add0~134\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~134_sumout\ = SUM(( \u_notch|Add0~140_combout\ ) + ( (!\u_notch|state.S_MAC1~q\ & (!\u_notch|state.S_DONE~q\ & (\u_notch|state.S_IDLE~q\ & \u_notch|acc\(14)))) ) + ( \u_notch|Add0~143\ ))
-- \u_notch|Add0~135\ = CARRY(( \u_notch|Add0~140_combout\ ) + ( (!\u_notch|state.S_MAC1~q\ & (!\u_notch|state.S_DONE~q\ & (\u_notch|state.S_IDLE~q\ & \u_notch|acc\(14)))) ) + ( \u_notch|Add0~143\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_IDLE~q\,
	datad => \u_notch|ALT_INV_Add0~140_combout\,
	dataf => \u_notch|ALT_INV_acc\(14),
	cin => \u_notch|Add0~143\,
	sumout => \u_notch|Add0~134_sumout\,
	cout => \u_notch|Add0~135\);

-- Location: LABCELL_X50_Y4_N0
\u_notch|Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector25~0_combout\ = ( \u_notch|Mult0~22\ & ( (\u_notch|Add0~134_sumout\) # (\u_notch|state.S_MAC1~q\) ) ) # ( !\u_notch|Mult0~22\ & ( (!\u_notch|state.S_MAC1~q\ & \u_notch|Add0~134_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~134_sumout\,
	dataf => \u_notch|ALT_INV_Mult0~22\,
	combout => \u_notch|Selector25~0_combout\);

-- Location: FF_X50_Y4_N2
\u_notch|acc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector25~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(14));

-- Location: LABCELL_X50_Y4_N48
\u_notch|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~130_sumout\ = SUM(( (!\u_notch|state.S_MAC1~q\ & (!\u_notch|state.S_DONE~q\ & (\u_notch|state.S_IDLE~q\ & \u_notch|acc\(15)))) ) + ( \u_notch|Add0~138_combout\ ) + ( \u_notch|Add0~135\ ))
-- \u_notch|Add0~131\ = CARRY(( (!\u_notch|state.S_MAC1~q\ & (!\u_notch|state.S_DONE~q\ & (\u_notch|state.S_IDLE~q\ & \u_notch|acc\(15)))) ) + ( \u_notch|Add0~138_combout\ ) + ( \u_notch|Add0~135\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_IDLE~q\,
	datad => \u_notch|ALT_INV_acc\(15),
	dataf => \u_notch|ALT_INV_Add0~138_combout\,
	cin => \u_notch|Add0~135\,
	sumout => \u_notch|Add0~130_sumout\,
	cout => \u_notch|Add0~131\);

-- Location: LABCELL_X50_Y4_N51
\u_notch|Add0~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~124_sumout\ = SUM(( \u_notch|Add0~128_combout\ ) + ( (!\u_notch|state.S_MAC1~q\ & (!\u_notch|state.S_DONE~q\ & (\u_notch|state.S_IDLE~q\ & \u_notch|acc\(16)))) ) + ( \u_notch|Add0~131\ ))
-- \u_notch|Add0~125\ = CARRY(( \u_notch|Add0~128_combout\ ) + ( (!\u_notch|state.S_MAC1~q\ & (!\u_notch|state.S_DONE~q\ & (\u_notch|state.S_IDLE~q\ & \u_notch|acc\(16)))) ) + ( \u_notch|Add0~131\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_IDLE~q\,
	datad => \u_notch|ALT_INV_Add0~128_combout\,
	dataf => \u_notch|ALT_INV_acc\(16),
	cin => \u_notch|Add0~131\,
	sumout => \u_notch|Add0~124_sumout\,
	cout => \u_notch|Add0~125\);

-- Location: LABCELL_X50_Y4_N18
\u_notch|Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector23~0_combout\ = ( \u_notch|Add0~124_sumout\ & ( (!\u_notch|state.S_MAC1~q\) # (\u_notch|Mult0~24\) ) ) # ( !\u_notch|Add0~124_sumout\ & ( (\u_notch|state.S_MAC1~q\ & \u_notch|Mult0~24\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Mult0~24\,
	dataf => \u_notch|ALT_INV_Add0~124_sumout\,
	combout => \u_notch|Selector23~0_combout\);

-- Location: FF_X50_Y4_N20
\u_notch|acc[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector23~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(16));

-- Location: LABCELL_X50_Y4_N54
\u_notch|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~93_sumout\ = SUM(( \u_notch|Add0~122_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(17)))) ) + ( \u_notch|Add0~125\ ))
-- \u_notch|Add0~94\ = CARRY(( \u_notch|Add0~122_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(17)))) ) + ( \u_notch|Add0~125\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~122_combout\,
	dataf => \u_notch|ALT_INV_acc\(17),
	cin => \u_notch|Add0~125\,
	sumout => \u_notch|Add0~93_sumout\,
	cout => \u_notch|Add0~94\);

-- Location: LABCELL_X50_Y4_N57
\u_notch|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~1_sumout\ = SUM(( \u_notch|Add0~91_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(18)))) ) + ( \u_notch|Add0~94\ ))
-- \u_notch|Add0~2\ = CARRY(( \u_notch|Add0~91_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(18)))) ) + ( \u_notch|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~91_combout\,
	dataf => \u_notch|ALT_INV_acc\(18),
	cin => \u_notch|Add0~94\,
	sumout => \u_notch|Add0~1_sumout\,
	cout => \u_notch|Add0~2\);

-- Location: LABCELL_X50_Y3_N0
\u_notch|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~49_sumout\ = SUM(( \u_notch|Add0~102_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(19)))) ) + ( \u_notch|Add0~2\ ))
-- \u_notch|Add0~50\ = CARRY(( \u_notch|Add0~102_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(19)))) ) + ( \u_notch|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~102_combout\,
	dataf => \u_notch|ALT_INV_acc\(19),
	cin => \u_notch|Add0~2\,
	sumout => \u_notch|Add0~49_sumout\,
	cout => \u_notch|Add0~50\);

-- Location: LABCELL_X48_Y3_N54
\u_notch|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector20~0_combout\ = ( \u_notch|state.S_MAC1~q\ & ( \u_notch|Mult0~27\ ) ) # ( !\u_notch|state.S_MAC1~q\ & ( \u_notch|Add0~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_notch|ALT_INV_Mult0~27\,
	datad => \u_notch|ALT_INV_Add0~49_sumout\,
	dataf => \u_notch|ALT_INV_state.S_MAC1~q\,
	combout => \u_notch|Selector20~0_combout\);

-- Location: FF_X48_Y3_N56
\u_notch|acc[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector20~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(19));

-- Location: LABCELL_X50_Y3_N3
\u_notch|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~53_sumout\ = SUM(( \u_notch|Add0~104_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(20)))) ) + ( \u_notch|Add0~50\ ))
-- \u_notch|Add0~54\ = CARRY(( \u_notch|Add0~104_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(20)))) ) + ( \u_notch|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~104_combout\,
	dataf => \u_notch|ALT_INV_acc\(20),
	cin => \u_notch|Add0~50\,
	sumout => \u_notch|Add0~53_sumout\,
	cout => \u_notch|Add0~54\);

-- Location: LABCELL_X50_Y3_N6
\u_notch|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~57_sumout\ = SUM(( \u_notch|Add0~106_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(21)))) ) + ( \u_notch|Add0~54\ ))
-- \u_notch|Add0~58\ = CARRY(( \u_notch|Add0~106_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(21)))) ) + ( \u_notch|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~106_combout\,
	dataf => \u_notch|ALT_INV_acc\(21),
	cin => \u_notch|Add0~54\,
	sumout => \u_notch|Add0~57_sumout\,
	cout => \u_notch|Add0~58\);

-- Location: LABCELL_X50_Y3_N9
\u_notch|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~61_sumout\ = SUM(( \u_notch|Add0~108_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(22)))) ) + ( \u_notch|Add0~58\ ))
-- \u_notch|Add0~62\ = CARRY(( \u_notch|Add0~108_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(22)))) ) + ( \u_notch|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~108_combout\,
	dataf => \u_notch|ALT_INV_acc\(22),
	cin => \u_notch|Add0~58\,
	sumout => \u_notch|Add0~61_sumout\,
	cout => \u_notch|Add0~62\);

-- Location: LABCELL_X50_Y3_N12
\u_notch|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~65_sumout\ = SUM(( \u_notch|Add0~110_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(23)))) ) + ( \u_notch|Add0~62\ ))
-- \u_notch|Add0~66\ = CARRY(( \u_notch|Add0~110_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(23)))) ) + ( \u_notch|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~110_combout\,
	dataf => \u_notch|ALT_INV_acc\(23),
	cin => \u_notch|Add0~62\,
	sumout => \u_notch|Add0~65_sumout\,
	cout => \u_notch|Add0~66\);

-- Location: LABCELL_X50_Y3_N15
\u_notch|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~69_sumout\ = SUM(( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(24)))) ) + ( \u_notch|Add0~112_combout\ ) + ( \u_notch|Add0~66\ ))
-- \u_notch|Add0~70\ = CARRY(( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(24)))) ) + ( \u_notch|Add0~112_combout\ ) + ( \u_notch|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_acc\(24),
	dataf => \u_notch|ALT_INV_Add0~112_combout\,
	cin => \u_notch|Add0~66\,
	sumout => \u_notch|Add0~69_sumout\,
	cout => \u_notch|Add0~70\);

-- Location: LABCELL_X50_Y3_N18
\u_notch|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~73_sumout\ = SUM(( \u_notch|Add0~114_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(25)))) ) + ( \u_notch|Add0~70\ ))
-- \u_notch|Add0~74\ = CARRY(( \u_notch|Add0~114_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(25)))) ) + ( \u_notch|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~114_combout\,
	dataf => \u_notch|ALT_INV_acc\(25),
	cin => \u_notch|Add0~70\,
	sumout => \u_notch|Add0~73_sumout\,
	cout => \u_notch|Add0~74\);

-- Location: LABCELL_X50_Y3_N21
\u_notch|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~77_sumout\ = SUM(( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(26)))) ) + ( \u_notch|Add0~116_combout\ ) + ( \u_notch|Add0~74\ ))
-- \u_notch|Add0~78\ = CARRY(( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(26)))) ) + ( \u_notch|Add0~116_combout\ ) + ( \u_notch|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_acc\(26),
	dataf => \u_notch|ALT_INV_Add0~116_combout\,
	cin => \u_notch|Add0~74\,
	sumout => \u_notch|Add0~77_sumout\,
	cout => \u_notch|Add0~78\);

-- Location: LABCELL_X50_Y3_N24
\u_notch|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~81_sumout\ = SUM(( \u_notch|Add0~118_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(27)))) ) + ( \u_notch|Add0~78\ ))
-- \u_notch|Add0~82\ = CARRY(( \u_notch|Add0~118_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(27)))) ) + ( \u_notch|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~118_combout\,
	dataf => \u_notch|ALT_INV_acc\(27),
	cin => \u_notch|Add0~78\,
	sumout => \u_notch|Add0~81_sumout\,
	cout => \u_notch|Add0~82\);

-- Location: LABCELL_X50_Y3_N27
\u_notch|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~85_sumout\ = SUM(( \u_notch|Add0~120_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(28)))) ) + ( \u_notch|Add0~82\ ))
-- \u_notch|Add0~86\ = CARRY(( \u_notch|Add0~120_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(28)))) ) + ( \u_notch|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~120_combout\,
	dataf => \u_notch|ALT_INV_acc\(28),
	cin => \u_notch|Add0~82\,
	sumout => \u_notch|Add0~85_sumout\,
	cout => \u_notch|Add0~86\);

-- Location: LABCELL_X51_Y3_N54
\u_notch|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector11~0_combout\ = (!\u_notch|state.S_MAC1~q\ & ((\u_notch|Add0~85_sumout\))) # (\u_notch|state.S_MAC1~q\ & (\u_notch|Mult0~36\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Mult0~36\,
	datad => \u_notch|ALT_INV_Add0~85_sumout\,
	combout => \u_notch|Selector11~0_combout\);

-- Location: FF_X51_Y3_N56
\u_notch|acc[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector11~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(28));

-- Location: LABCELL_X50_Y2_N30
\u_notch|y_new~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|y_new~10_combout\ = ( \u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(28) & ( (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~1_combout\ & \u_notch|LessThan1~0_combout\)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(28) & ( 
-- (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~1_combout\ & \u_notch|LessThan1~0_combout\)) ) ) ) # ( \u_notch|LessThan0~1_combout\ & ( !\u_notch|acc\(28) & ( (!\u_notch|LessThan0~0_combout\ & !\u_notch|acc\(39)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( 
-- !\u_notch|acc\(28) & ( !\u_notch|acc\(39) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111100000000000011111111000100011111111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_LessThan1~1_combout\,
	datab => \u_notch|ALT_INV_LessThan1~0_combout\,
	datac => \u_notch|ALT_INV_LessThan0~0_combout\,
	datad => \u_notch|ALT_INV_acc\(39),
	datae => \u_notch|ALT_INV_LessThan0~1_combout\,
	dataf => \u_notch|ALT_INV_acc\(28),
	combout => \u_notch|y_new~10_combout\);

-- Location: LABCELL_X55_Y4_N51
\u_notch|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~117_combout\ = ( \u_notch|state.S_MAC3~q\ & ( \u_notch|Mult2~35\ & ( !\u_notch|state.S_DONE~q\ ) ) ) # ( !\u_notch|state.S_MAC3~q\ & ( \u_notch|Mult2~35\ & ( (!\u_notch|state.S_DONE~q\ & (\u_notch|state.S_MAC5~q\ & !\u_notch|Mult4~35\)) ) ) 
-- ) # ( !\u_notch|state.S_MAC3~q\ & ( !\u_notch|Mult2~35\ & ( (!\u_notch|state.S_DONE~q\ & (\u_notch|state.S_MAC5~q\ & !\u_notch|Mult4~35\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000000000000000000001010000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC5~q\,
	datad => \u_notch|ALT_INV_Mult4~35\,
	datae => \u_notch|ALT_INV_state.S_MAC3~q\,
	dataf => \u_notch|ALT_INV_Mult2~35\,
	combout => \u_notch|Add0~117_combout\);

-- Location: LABCELL_X55_Y4_N57
\u_notch|Add0~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~118_combout\ = ( \u_notch|Mult3~35\ & ( \u_notch|Add0~117_combout\ ) ) # ( !\u_notch|Mult3~35\ & ( \u_notch|Add0~117_combout\ ) ) # ( \u_notch|Mult3~35\ & ( !\u_notch|Add0~117_combout\ & ( (\u_notch|Add0~89_combout\ & 
-- (\u_notch|Add0~88_combout\ & \u_notch|Mult1~35\)) ) ) ) # ( !\u_notch|Mult3~35\ & ( !\u_notch|Add0~117_combout\ & ( (\u_notch|Add0~89_combout\ & ((!\u_notch|Add0~88_combout\) # (\u_notch|Mult1~35\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010101000000000000010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~89_combout\,
	datac => \u_notch|ALT_INV_Add0~88_combout\,
	datad => \u_notch|ALT_INV_Mult1~35\,
	datae => \u_notch|ALT_INV_Mult3~35\,
	dataf => \u_notch|ALT_INV_Add0~117_combout\,
	combout => \u_notch|Add0~118_combout\);

-- Location: LABCELL_X51_Y3_N45
\u_notch|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector12~0_combout\ = ( \u_notch|Add0~81_sumout\ & ( (!\u_notch|state.S_MAC1~q\) # (\u_notch|Mult0~35\) ) ) # ( !\u_notch|Add0~81_sumout\ & ( (\u_notch|state.S_MAC1~q\ & \u_notch|Mult0~35\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Mult0~35\,
	dataf => \u_notch|ALT_INV_Add0~81_sumout\,
	combout => \u_notch|Selector12~0_combout\);

-- Location: FF_X51_Y3_N47
\u_notch|acc[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector12~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(27));

-- Location: LABCELL_X50_Y2_N27
\u_notch|y_new~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|y_new~9_combout\ = ( \u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(27) & ( (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~0_combout\ & \u_notch|LessThan1~1_combout\)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(27) & ( 
-- (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~0_combout\ & \u_notch|LessThan1~1_combout\)) ) ) ) # ( \u_notch|LessThan0~1_combout\ & ( !\u_notch|acc\(27) & ( (!\u_notch|LessThan0~0_combout\ & !\u_notch|acc\(39)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( 
-- !\u_notch|acc\(27) & ( !\u_notch|acc\(39) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100100010001000100011001100110011111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_LessThan0~0_combout\,
	datab => \u_notch|ALT_INV_acc\(39),
	datac => \u_notch|ALT_INV_LessThan1~0_combout\,
	datad => \u_notch|ALT_INV_LessThan1~1_combout\,
	datae => \u_notch|ALT_INV_LessThan0~1_combout\,
	dataf => \u_notch|ALT_INV_acc\(27),
	combout => \u_notch|y_new~9_combout\);

-- Location: LABCELL_X55_Y4_N12
\u_notch|Add0~115\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~115_combout\ = ( \u_notch|state.S_MAC3~q\ & ( \u_notch|Mult2~34\ & ( !\u_notch|state.S_DONE~q\ ) ) ) # ( !\u_notch|state.S_MAC3~q\ & ( \u_notch|Mult2~34\ & ( (\u_notch|state.S_MAC5~q\ & (!\u_notch|state.S_DONE~q\ & !\u_notch|Mult4~34\)) ) ) 
-- ) # ( !\u_notch|state.S_MAC3~q\ & ( !\u_notch|Mult2~34\ & ( (\u_notch|state.S_MAC5~q\ & (!\u_notch|state.S_DONE~q\ & !\u_notch|Mult4~34\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000000000000000001010000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC5~q\,
	datac => \u_notch|ALT_INV_state.S_DONE~q\,
	datad => \u_notch|ALT_INV_Mult4~34\,
	datae => \u_notch|ALT_INV_state.S_MAC3~q\,
	dataf => \u_notch|ALT_INV_Mult2~34\,
	combout => \u_notch|Add0~115_combout\);

-- Location: LABCELL_X55_Y4_N30
\u_notch|Add0~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~116_combout\ = ( \u_notch|Add0~115_combout\ ) # ( !\u_notch|Add0~115_combout\ & ( (\u_notch|Add0~89_combout\ & ((!\u_notch|Add0~88_combout\ & ((!\u_notch|Mult3~34\))) # (\u_notch|Add0~88_combout\ & (\u_notch|Mult1~34\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100000001010001010000000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~89_combout\,
	datab => \u_notch|ALT_INV_Add0~88_combout\,
	datac => \u_notch|ALT_INV_Mult1~34\,
	datad => \u_notch|ALT_INV_Mult3~34\,
	dataf => \u_notch|ALT_INV_Add0~115_combout\,
	combout => \u_notch|Add0~116_combout\);

-- Location: LABCELL_X51_Y3_N42
\u_notch|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector13~0_combout\ = ( \u_notch|Mult0~34\ & ( (\u_notch|Add0~77_sumout\) # (\u_notch|state.S_MAC1~q\) ) ) # ( !\u_notch|Mult0~34\ & ( (!\u_notch|state.S_MAC1~q\ & \u_notch|Add0~77_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Add0~77_sumout\,
	dataf => \u_notch|ALT_INV_Mult0~34\,
	combout => \u_notch|Selector13~0_combout\);

-- Location: FF_X51_Y3_N44
\u_notch|acc[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector13~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(26));

-- Location: LABCELL_X50_Y2_N24
\u_notch|y_new~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|y_new~8_combout\ = ( \u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(26) & ( (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~1_combout\ & \u_notch|LessThan1~0_combout\)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(26) & ( 
-- (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~1_combout\ & \u_notch|LessThan1~0_combout\)) ) ) ) # ( \u_notch|LessThan0~1_combout\ & ( !\u_notch|acc\(26) & ( (!\u_notch|LessThan0~0_combout\ & !\u_notch|acc\(39)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( 
-- !\u_notch|acc\(26) & ( !\u_notch|acc\(39) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100100010001000100011001100110011111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_LessThan0~0_combout\,
	datab => \u_notch|ALT_INV_acc\(39),
	datac => \u_notch|ALT_INV_LessThan1~1_combout\,
	datad => \u_notch|ALT_INV_LessThan1~0_combout\,
	datae => \u_notch|ALT_INV_LessThan0~1_combout\,
	dataf => \u_notch|ALT_INV_acc\(26),
	combout => \u_notch|y_new~8_combout\);

-- Location: LABCELL_X53_Y3_N18
\u_notch|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~113_combout\ = ( \u_notch|Mult2~33\ & ( \u_notch|Mult4~33\ & ( (!\u_notch|state.S_DONE~q\ & \u_notch|state.S_MAC3~q\) ) ) ) # ( \u_notch|Mult2~33\ & ( !\u_notch|Mult4~33\ & ( (!\u_notch|state.S_DONE~q\ & ((\u_notch|state.S_MAC5~q\) # 
-- (\u_notch|state.S_MAC3~q\))) ) ) ) # ( !\u_notch|Mult2~33\ & ( !\u_notch|Mult4~33\ & ( (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC3~q\ & \u_notch|state.S_MAC5~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000001000101010101000000000000000000010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_DONE~q\,
	datab => \u_notch|ALT_INV_state.S_MAC3~q\,
	datad => \u_notch|ALT_INV_state.S_MAC5~q\,
	datae => \u_notch|ALT_INV_Mult2~33\,
	dataf => \u_notch|ALT_INV_Mult4~33\,
	combout => \u_notch|Add0~113_combout\);

-- Location: LABCELL_X53_Y3_N15
\u_notch|Add0~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~114_combout\ = ( \u_notch|Mult3~33\ & ( \u_notch|Add0~88_combout\ & ( ((\u_notch|Add0~89_combout\ & \u_notch|Mult1~33\)) # (\u_notch|Add0~113_combout\) ) ) ) # ( !\u_notch|Mult3~33\ & ( \u_notch|Add0~88_combout\ & ( 
-- ((\u_notch|Add0~89_combout\ & \u_notch|Mult1~33\)) # (\u_notch|Add0~113_combout\) ) ) ) # ( \u_notch|Mult3~33\ & ( !\u_notch|Add0~88_combout\ & ( \u_notch|Add0~113_combout\ ) ) ) # ( !\u_notch|Mult3~33\ & ( !\u_notch|Add0~88_combout\ & ( 
-- (\u_notch|Add0~113_combout\) # (\u_notch|Add0~89_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111000000001111111100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~89_combout\,
	datac => \u_notch|ALT_INV_Mult1~33\,
	datad => \u_notch|ALT_INV_Add0~113_combout\,
	datae => \u_notch|ALT_INV_Mult3~33\,
	dataf => \u_notch|ALT_INV_Add0~88_combout\,
	combout => \u_notch|Add0~114_combout\);

-- Location: LABCELL_X51_Y3_N51
\u_notch|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector14~0_combout\ = ( \u_notch|Mult0~33\ & ( \u_notch|Add0~73_sumout\ ) ) # ( !\u_notch|Mult0~33\ & ( \u_notch|Add0~73_sumout\ & ( !\u_notch|state.S_MAC1~q\ ) ) ) # ( \u_notch|Mult0~33\ & ( !\u_notch|Add0~73_sumout\ & ( 
-- \u_notch|state.S_MAC1~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datae => \u_notch|ALT_INV_Mult0~33\,
	dataf => \u_notch|ALT_INV_Add0~73_sumout\,
	combout => \u_notch|Selector14~0_combout\);

-- Location: FF_X51_Y3_N53
\u_notch|acc[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector14~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(25));

-- Location: LABCELL_X50_Y2_N57
\u_notch|y_new~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|y_new~7_combout\ = ( \u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(25) & ( (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~0_combout\ & \u_notch|LessThan1~1_combout\)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(25) & ( 
-- (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~0_combout\ & \u_notch|LessThan1~1_combout\)) ) ) ) # ( \u_notch|LessThan0~1_combout\ & ( !\u_notch|acc\(25) & ( (!\u_notch|LessThan0~0_combout\ & !\u_notch|acc\(39)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( 
-- !\u_notch|acc\(25) & ( !\u_notch|acc\(39) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000101000001010000011110000111100111111000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_LessThan0~0_combout\,
	datab => \u_notch|ALT_INV_LessThan1~0_combout\,
	datac => \u_notch|ALT_INV_acc\(39),
	datad => \u_notch|ALT_INV_LessThan1~1_combout\,
	datae => \u_notch|ALT_INV_LessThan0~1_combout\,
	dataf => \u_notch|ALT_INV_acc\(25),
	combout => \u_notch|y_new~7_combout\);

-- Location: LABCELL_X53_Y3_N42
\u_notch|Add0~111\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~111_combout\ = ( \u_notch|Mult2~32\ & ( \u_notch|Mult4~32\ & ( (\u_notch|state.S_MAC3~q\ & !\u_notch|state.S_DONE~q\) ) ) ) # ( \u_notch|Mult2~32\ & ( !\u_notch|Mult4~32\ & ( (!\u_notch|state.S_DONE~q\ & ((\u_notch|state.S_MAC5~q\) # 
-- (\u_notch|state.S_MAC3~q\))) ) ) ) # ( !\u_notch|Mult2~32\ & ( !\u_notch|Mult4~32\ & ( (!\u_notch|state.S_MAC3~q\ & (!\u_notch|state.S_DONE~q\ & \u_notch|state.S_MAC5~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000001100001111000000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_notch|ALT_INV_state.S_MAC3~q\,
	datac => \u_notch|ALT_INV_state.S_DONE~q\,
	datad => \u_notch|ALT_INV_state.S_MAC5~q\,
	datae => \u_notch|ALT_INV_Mult2~32\,
	dataf => \u_notch|ALT_INV_Mult4~32\,
	combout => \u_notch|Add0~111_combout\);

-- Location: LABCELL_X53_Y3_N36
\u_notch|Add0~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~112_combout\ = ( \u_notch|Mult3~32\ & ( \u_notch|Add0~111_combout\ ) ) # ( !\u_notch|Mult3~32\ & ( \u_notch|Add0~111_combout\ ) ) # ( \u_notch|Mult3~32\ & ( !\u_notch|Add0~111_combout\ & ( (\u_notch|Mult1~32\ & (\u_notch|Add0~89_combout\ & 
-- \u_notch|Add0~88_combout\)) ) ) ) # ( !\u_notch|Mult3~32\ & ( !\u_notch|Add0~111_combout\ & ( (\u_notch|Add0~89_combout\ & ((!\u_notch|Add0~88_combout\) # (\u_notch|Mult1~32\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000011000000000000001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_notch|ALT_INV_Mult1~32\,
	datac => \u_notch|ALT_INV_Add0~89_combout\,
	datad => \u_notch|ALT_INV_Add0~88_combout\,
	datae => \u_notch|ALT_INV_Mult3~32\,
	dataf => \u_notch|ALT_INV_Add0~111_combout\,
	combout => \u_notch|Add0~112_combout\);

-- Location: LABCELL_X48_Y3_N36
\u_notch|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector15~0_combout\ = ( \u_notch|state.S_MAC1~q\ & ( \u_notch|Mult0~32\ ) ) # ( !\u_notch|state.S_MAC1~q\ & ( \u_notch|Add0~69_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_notch|ALT_INV_Mult0~32\,
	datad => \u_notch|ALT_INV_Add0~69_sumout\,
	dataf => \u_notch|ALT_INV_state.S_MAC1~q\,
	combout => \u_notch|Selector15~0_combout\);

-- Location: FF_X48_Y3_N38
\u_notch|acc[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector15~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(24));

-- Location: LABCELL_X50_Y2_N54
\u_notch|y_new~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|y_new~6_combout\ = ( \u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(24) & ( (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~0_combout\ & \u_notch|LessThan1~1_combout\)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(24) & ( 
-- (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~0_combout\ & \u_notch|LessThan1~1_combout\)) ) ) ) # ( \u_notch|LessThan0~1_combout\ & ( !\u_notch|acc\(24) & ( (!\u_notch|LessThan0~0_combout\ & !\u_notch|acc\(39)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( 
-- !\u_notch|acc\(24) & ( !\u_notch|acc\(39) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000101010100000000011111111000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_LessThan0~0_combout\,
	datab => \u_notch|ALT_INV_LessThan1~0_combout\,
	datac => \u_notch|ALT_INV_LessThan1~1_combout\,
	datad => \u_notch|ALT_INV_acc\(39),
	datae => \u_notch|ALT_INV_LessThan0~1_combout\,
	dataf => \u_notch|ALT_INV_acc\(24),
	combout => \u_notch|y_new~6_combout\);

-- Location: LABCELL_X55_Y4_N39
\u_notch|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~109_combout\ = ( \u_notch|state.S_MAC3~q\ & ( \u_notch|Mult2~31\ & ( !\u_notch|state.S_DONE~q\ ) ) ) # ( !\u_notch|state.S_MAC3~q\ & ( \u_notch|Mult2~31\ & ( (!\u_notch|state.S_DONE~q\ & (!\u_notch|Mult4~31\ & \u_notch|state.S_MAC5~q\)) ) ) 
-- ) # ( !\u_notch|state.S_MAC3~q\ & ( !\u_notch|Mult2~31\ & ( (!\u_notch|state.S_DONE~q\ & (!\u_notch|Mult4~31\ & \u_notch|state.S_MAC5~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000000000000000000000100010001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_DONE~q\,
	datab => \u_notch|ALT_INV_Mult4~31\,
	datad => \u_notch|ALT_INV_state.S_MAC5~q\,
	datae => \u_notch|ALT_INV_state.S_MAC3~q\,
	dataf => \u_notch|ALT_INV_Mult2~31\,
	combout => \u_notch|Add0~109_combout\);

-- Location: LABCELL_X55_Y4_N18
\u_notch|Add0~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~110_combout\ = ( \u_notch|Mult1~31\ & ( \u_notch|Add0~109_combout\ ) ) # ( !\u_notch|Mult1~31\ & ( \u_notch|Add0~109_combout\ ) ) # ( \u_notch|Mult1~31\ & ( !\u_notch|Add0~109_combout\ & ( (\u_notch|Add0~89_combout\ & ((!\u_notch|Mult3~31\) 
-- # (\u_notch|Add0~88_combout\))) ) ) ) # ( !\u_notch|Mult1~31\ & ( !\u_notch|Add0~109_combout\ & ( (!\u_notch|Mult3~31\ & (\u_notch|Add0~89_combout\ & !\u_notch|Add0~88_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_notch|ALT_INV_Mult3~31\,
	datac => \u_notch|ALT_INV_Add0~89_combout\,
	datad => \u_notch|ALT_INV_Add0~88_combout\,
	datae => \u_notch|ALT_INV_Mult1~31\,
	dataf => \u_notch|ALT_INV_Add0~109_combout\,
	combout => \u_notch|Add0~110_combout\);

-- Location: LABCELL_X51_Y3_N33
\u_notch|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector16~0_combout\ = ( \u_notch|Mult0~31\ & ( (\u_notch|Add0~65_sumout\) # (\u_notch|state.S_MAC1~q\) ) ) # ( !\u_notch|Mult0~31\ & ( (!\u_notch|state.S_MAC1~q\ & \u_notch|Add0~65_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~65_sumout\,
	dataf => \u_notch|ALT_INV_Mult0~31\,
	combout => \u_notch|Selector16~0_combout\);

-- Location: FF_X51_Y3_N35
\u_notch|acc[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector16~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(23));

-- Location: LABCELL_X50_Y2_N51
\u_notch|y_new~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|y_new~5_combout\ = ( \u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(23) & ( (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~0_combout\ & \u_notch|LessThan1~1_combout\)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(23) & ( 
-- (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~0_combout\ & \u_notch|LessThan1~1_combout\)) ) ) ) # ( \u_notch|LessThan0~1_combout\ & ( !\u_notch|acc\(23) & ( (!\u_notch|LessThan0~0_combout\ & !\u_notch|acc\(39)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( 
-- !\u_notch|acc\(23) & ( !\u_notch|acc\(39) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000101000001010000011110000111100111111000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_LessThan0~0_combout\,
	datab => \u_notch|ALT_INV_LessThan1~0_combout\,
	datac => \u_notch|ALT_INV_acc\(39),
	datad => \u_notch|ALT_INV_LessThan1~1_combout\,
	datae => \u_notch|ALT_INV_LessThan0~1_combout\,
	dataf => \u_notch|ALT_INV_acc\(23),
	combout => \u_notch|y_new~5_combout\);

-- Location: LABCELL_X55_Y4_N24
\u_notch|Add0~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~107_combout\ = ( \u_notch|Mult2~30\ & ( (!\u_notch|state.S_DONE~q\ & (((\u_notch|state.S_MAC5~q\ & !\u_notch|Mult4~30\)) # (\u_notch|state.S_MAC3~q\))) ) ) # ( !\u_notch|Mult2~30\ & ( (!\u_notch|state.S_MAC3~q\ & (\u_notch|state.S_MAC5~q\ & 
-- (!\u_notch|Mult4~30\ & !\u_notch|state.S_DONE~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000001110101000000000111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC3~q\,
	datab => \u_notch|ALT_INV_state.S_MAC5~q\,
	datac => \u_notch|ALT_INV_Mult4~30\,
	datad => \u_notch|ALT_INV_state.S_DONE~q\,
	dataf => \u_notch|ALT_INV_Mult2~30\,
	combout => \u_notch|Add0~107_combout\);

-- Location: LABCELL_X55_Y4_N6
\u_notch|Add0~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~108_combout\ = ( \u_notch|Add0~88_combout\ & ( \u_notch|Add0~107_combout\ ) ) # ( !\u_notch|Add0~88_combout\ & ( \u_notch|Add0~107_combout\ ) ) # ( \u_notch|Add0~88_combout\ & ( !\u_notch|Add0~107_combout\ & ( (\u_notch|Mult1~30\ & 
-- \u_notch|Add0~89_combout\) ) ) ) # ( !\u_notch|Add0~88_combout\ & ( !\u_notch|Add0~107_combout\ & ( (\u_notch|Add0~89_combout\ & !\u_notch|Mult3~30\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000110000001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_notch|ALT_INV_Mult1~30\,
	datac => \u_notch|ALT_INV_Add0~89_combout\,
	datad => \u_notch|ALT_INV_Mult3~30\,
	datae => \u_notch|ALT_INV_Add0~88_combout\,
	dataf => \u_notch|ALT_INV_Add0~107_combout\,
	combout => \u_notch|Add0~108_combout\);

-- Location: LABCELL_X51_Y3_N30
\u_notch|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector17~0_combout\ = ( \u_notch|Add0~61_sumout\ & ( (!\u_notch|state.S_MAC1~q\) # (\u_notch|Mult0~30\) ) ) # ( !\u_notch|Add0~61_sumout\ & ( (\u_notch|state.S_MAC1~q\ & \u_notch|Mult0~30\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Mult0~30\,
	dataf => \u_notch|ALT_INV_Add0~61_sumout\,
	combout => \u_notch|Selector17~0_combout\);

-- Location: FF_X51_Y3_N32
\u_notch|acc[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector17~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(22));

-- Location: LABCELL_X50_Y2_N48
\u_notch|y_new~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|y_new~4_combout\ = ( \u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(22) & ( (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~0_combout\ & \u_notch|LessThan1~1_combout\)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(22) & ( 
-- (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~0_combout\ & \u_notch|LessThan1~1_combout\)) ) ) ) # ( \u_notch|LessThan0~1_combout\ & ( !\u_notch|acc\(22) & ( (!\u_notch|LessThan0~0_combout\ & !\u_notch|acc\(39)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( 
-- !\u_notch|acc\(22) & ( !\u_notch|acc\(39) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000101010100000000011111111000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_LessThan0~0_combout\,
	datab => \u_notch|ALT_INV_LessThan1~0_combout\,
	datac => \u_notch|ALT_INV_LessThan1~1_combout\,
	datad => \u_notch|ALT_INV_acc\(39),
	datae => \u_notch|ALT_INV_LessThan0~1_combout\,
	dataf => \u_notch|ALT_INV_acc\(22),
	combout => \u_notch|y_new~4_combout\);

-- Location: LABCELL_X53_Y3_N57
\u_notch|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~105_combout\ = ( !\u_notch|state.S_DONE~q\ & ( \u_notch|Mult2~29\ & ( ((\u_notch|state.S_MAC5~q\ & !\u_notch|Mult4~29\)) # (\u_notch|state.S_MAC3~q\) ) ) ) # ( !\u_notch|state.S_DONE~q\ & ( !\u_notch|Mult2~29\ & ( (\u_notch|state.S_MAC5~q\ & 
-- (!\u_notch|state.S_MAC3~q\ & !\u_notch|Mult4~29\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000000111111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_notch|ALT_INV_state.S_MAC5~q\,
	datac => \u_notch|ALT_INV_state.S_MAC3~q\,
	datad => \u_notch|ALT_INV_Mult4~29\,
	datae => \u_notch|ALT_INV_state.S_DONE~q\,
	dataf => \u_notch|ALT_INV_Mult2~29\,
	combout => \u_notch|Add0~105_combout\);

-- Location: LABCELL_X53_Y3_N27
\u_notch|Add0~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~106_combout\ = ( \u_notch|Mult3~29\ & ( \u_notch|Mult1~29\ & ( ((\u_notch|Add0~89_combout\ & \u_notch|Add0~88_combout\)) # (\u_notch|Add0~105_combout\) ) ) ) # ( !\u_notch|Mult3~29\ & ( \u_notch|Mult1~29\ & ( (\u_notch|Add0~105_combout\) # 
-- (\u_notch|Add0~89_combout\) ) ) ) # ( \u_notch|Mult3~29\ & ( !\u_notch|Mult1~29\ & ( \u_notch|Add0~105_combout\ ) ) ) # ( !\u_notch|Mult3~29\ & ( !\u_notch|Mult1~29\ & ( ((\u_notch|Add0~89_combout\ & !\u_notch|Add0~88_combout\)) # 
-- (\u_notch|Add0~105_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111000011110000111101011111010111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~89_combout\,
	datab => \u_notch|ALT_INV_Add0~88_combout\,
	datac => \u_notch|ALT_INV_Add0~105_combout\,
	datae => \u_notch|ALT_INV_Mult3~29\,
	dataf => \u_notch|ALT_INV_Mult1~29\,
	combout => \u_notch|Add0~106_combout\);

-- Location: LABCELL_X51_Y3_N27
\u_notch|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector18~0_combout\ = ( \u_notch|Mult0~29\ & ( (\u_notch|Add0~57_sumout\) # (\u_notch|state.S_MAC1~q\) ) ) # ( !\u_notch|Mult0~29\ & ( (!\u_notch|state.S_MAC1~q\ & \u_notch|Add0~57_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~57_sumout\,
	dataf => \u_notch|ALT_INV_Mult0~29\,
	combout => \u_notch|Selector18~0_combout\);

-- Location: FF_X51_Y3_N29
\u_notch|acc[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector18~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(21));

-- Location: LABCELL_X50_Y2_N21
\u_notch|y_new~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|y_new~3_combout\ = ( \u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(21) & ( (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~0_combout\ & \u_notch|LessThan1~1_combout\)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(21) & ( 
-- (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~0_combout\ & \u_notch|LessThan1~1_combout\)) ) ) ) # ( \u_notch|LessThan0~1_combout\ & ( !\u_notch|acc\(21) & ( (!\u_notch|LessThan0~0_combout\ & !\u_notch|acc\(39)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( 
-- !\u_notch|acc\(21) & ( !\u_notch|acc\(39) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000101000001010000011110000111100111111000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_LessThan0~0_combout\,
	datab => \u_notch|ALT_INV_LessThan1~0_combout\,
	datac => \u_notch|ALT_INV_acc\(39),
	datad => \u_notch|ALT_INV_LessThan1~1_combout\,
	datae => \u_notch|ALT_INV_LessThan0~1_combout\,
	dataf => \u_notch|ALT_INV_acc\(21),
	combout => \u_notch|y_new~3_combout\);

-- Location: MLABCELL_X52_Y3_N3
\u_notch|Add0~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~103_combout\ = ( \u_notch|Mult4~28\ & ( \u_notch|Mult2~28\ & ( (!\u_notch|state.S_DONE~q\ & \u_notch|state.S_MAC3~q\) ) ) ) # ( !\u_notch|Mult4~28\ & ( \u_notch|Mult2~28\ & ( (!\u_notch|state.S_DONE~q\ & ((\u_notch|state.S_MAC5~q\) # 
-- (\u_notch|state.S_MAC3~q\))) ) ) ) # ( !\u_notch|Mult4~28\ & ( !\u_notch|Mult2~28\ & ( (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC3~q\ & \u_notch|state.S_MAC5~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000000000000000001010101010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC3~q\,
	datad => \u_notch|ALT_INV_state.S_MAC5~q\,
	datae => \u_notch|ALT_INV_Mult4~28\,
	dataf => \u_notch|ALT_INV_Mult2~28\,
	combout => \u_notch|Add0~103_combout\);

-- Location: LABCELL_X53_Y3_N48
\u_notch|Add0~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~104_combout\ = ( \u_notch|Add0~89_combout\ & ( \u_notch|Add0~103_combout\ ) ) # ( !\u_notch|Add0~89_combout\ & ( \u_notch|Add0~103_combout\ ) ) # ( \u_notch|Add0~89_combout\ & ( !\u_notch|Add0~103_combout\ & ( (!\u_notch|Add0~88_combout\ & 
-- ((!\u_notch|Mult3~28\))) # (\u_notch|Add0~88_combout\ & (\u_notch|Mult1~28\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_notch|ALT_INV_Mult1~28\,
	datac => \u_notch|ALT_INV_Mult3~28\,
	datad => \u_notch|ALT_INV_Add0~88_combout\,
	datae => \u_notch|ALT_INV_Add0~89_combout\,
	dataf => \u_notch|ALT_INV_Add0~103_combout\,
	combout => \u_notch|Add0~104_combout\);

-- Location: LABCELL_X51_Y3_N24
\u_notch|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector19~0_combout\ = ( \u_notch|Add0~53_sumout\ & ( (!\u_notch|state.S_MAC1~q\) # (\u_notch|Mult0~28\) ) ) # ( !\u_notch|Add0~53_sumout\ & ( (\u_notch|state.S_MAC1~q\ & \u_notch|Mult0~28\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Mult0~28\,
	dataf => \u_notch|ALT_INV_Add0~53_sumout\,
	combout => \u_notch|Selector19~0_combout\);

-- Location: FF_X51_Y3_N26
\u_notch|acc[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector19~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(20));

-- Location: LABCELL_X50_Y2_N18
\u_notch|y_new~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|y_new~2_combout\ = ( \u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(20) & ( (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~0_combout\ & \u_notch|LessThan1~1_combout\)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(20) & ( 
-- (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~0_combout\ & \u_notch|LessThan1~1_combout\)) ) ) ) # ( \u_notch|LessThan0~1_combout\ & ( !\u_notch|acc\(20) & ( (!\u_notch|LessThan0~0_combout\ & !\u_notch|acc\(39)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( 
-- !\u_notch|acc\(20) & ( !\u_notch|acc\(39) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000101010100000000011111111000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_LessThan0~0_combout\,
	datab => \u_notch|ALT_INV_LessThan1~0_combout\,
	datac => \u_notch|ALT_INV_LessThan1~1_combout\,
	datad => \u_notch|ALT_INV_acc\(39),
	datae => \u_notch|ALT_INV_LessThan0~1_combout\,
	dataf => \u_notch|ALT_INV_acc\(20),
	combout => \u_notch|y_new~2_combout\);

-- Location: LABCELL_X55_Y4_N27
\u_notch|Add0~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~90_combout\ = ( \u_notch|Mult4~26\ & ( (\u_notch|state.S_MAC3~q\ & (\u_notch|Mult2~26\ & !\u_notch|state.S_DONE~q\)) ) ) # ( !\u_notch|Mult4~26\ & ( (!\u_notch|state.S_DONE~q\ & ((!\u_notch|state.S_MAC3~q\ & (\u_notch|state.S_MAC5~q\)) # 
-- (\u_notch|state.S_MAC3~q\ & ((\u_notch|Mult2~26\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC3~q\,
	datab => \u_notch|ALT_INV_state.S_MAC5~q\,
	datac => \u_notch|ALT_INV_Mult2~26\,
	datad => \u_notch|ALT_INV_state.S_DONE~q\,
	dataf => \u_notch|ALT_INV_Mult4~26\,
	combout => \u_notch|Add0~90_combout\);

-- Location: MLABCELL_X52_Y4_N24
\u_notch|Add0~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~91_combout\ = ( \u_notch|Mult3~26\ & ( \u_notch|Add0~89_combout\ & ( ((\u_notch|Mult1~26\ & \u_notch|Add0~88_combout\)) # (\u_notch|Add0~90_combout\) ) ) ) # ( !\u_notch|Mult3~26\ & ( \u_notch|Add0~89_combout\ & ( 
-- ((!\u_notch|Add0~88_combout\) # (\u_notch|Mult1~26\)) # (\u_notch|Add0~90_combout\) ) ) ) # ( \u_notch|Mult3~26\ & ( !\u_notch|Add0~89_combout\ & ( \u_notch|Add0~90_combout\ ) ) ) # ( !\u_notch|Mult3~26\ & ( !\u_notch|Add0~89_combout\ & ( 
-- \u_notch|Add0~90_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~90_combout\,
	datac => \u_notch|ALT_INV_Mult1~26\,
	datad => \u_notch|ALT_INV_Add0~88_combout\,
	datae => \u_notch|ALT_INV_Mult3~26\,
	dataf => \u_notch|ALT_INV_Add0~89_combout\,
	combout => \u_notch|Add0~91_combout\);

-- Location: LABCELL_X50_Y4_N15
\u_notch|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector21~0_combout\ = ( \u_notch|Mult0~26\ & ( (\u_notch|Add0~1_sumout\) # (\u_notch|state.S_MAC1~q\) ) ) # ( !\u_notch|Mult0~26\ & ( (!\u_notch|state.S_MAC1~q\ & \u_notch|Add0~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Add0~1_sumout\,
	dataf => \u_notch|ALT_INV_Mult0~26\,
	combout => \u_notch|Selector21~0_combout\);

-- Location: FF_X50_Y4_N17
\u_notch|acc[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector21~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(18));

-- Location: LABCELL_X50_Y2_N36
\u_notch|y_new~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|y_new~0_combout\ = ( \u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(18) & ( (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~1_combout\ & \u_notch|LessThan1~0_combout\)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(18) & ( 
-- (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~1_combout\ & \u_notch|LessThan1~0_combout\)) ) ) ) # ( \u_notch|LessThan0~1_combout\ & ( !\u_notch|acc\(18) & ( (!\u_notch|LessThan0~0_combout\ & !\u_notch|acc\(39)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( 
-- !\u_notch|acc\(18) & ( !\u_notch|acc\(39) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100100010001000100011001100110011111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_LessThan0~0_combout\,
	datab => \u_notch|ALT_INV_acc\(39),
	datac => \u_notch|ALT_INV_LessThan1~1_combout\,
	datad => \u_notch|ALT_INV_LessThan1~0_combout\,
	datae => \u_notch|ALT_INV_LessThan0~1_combout\,
	dataf => \u_notch|ALT_INV_acc\(18),
	combout => \u_notch|y_new~0_combout\);

-- Location: LABCELL_X51_Y4_N48
\u_notch|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~121_combout\ = ( !\u_notch|state.S_DONE~q\ & ( (!\u_notch|state.S_MAC3~q\ & (\u_notch|state.S_MAC5~q\ & (!\u_notch|Mult4~25\))) # (\u_notch|state.S_MAC3~q\ & (((\u_notch|Mult2~25\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110011010000000111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC5~q\,
	datab => \u_notch|ALT_INV_state.S_MAC3~q\,
	datac => \u_notch|ALT_INV_Mult4~25\,
	datad => \u_notch|ALT_INV_Mult2~25\,
	dataf => \u_notch|ALT_INV_state.S_DONE~q\,
	combout => \u_notch|Add0~121_combout\);

-- Location: LABCELL_X51_Y4_N6
\u_notch|Add0~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~122_combout\ = ( \u_notch|Add0~121_combout\ ) # ( !\u_notch|Add0~121_combout\ & ( (\u_notch|Add0~89_combout\ & ((!\u_notch|Add0~88_combout\ & (!\u_notch|Mult3~25\)) # (\u_notch|Add0~88_combout\ & ((\u_notch|Mult1~25\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000110001001000000011000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~88_combout\,
	datab => \u_notch|ALT_INV_Add0~89_combout\,
	datac => \u_notch|ALT_INV_Mult3~25\,
	datad => \u_notch|ALT_INV_Mult1~25\,
	dataf => \u_notch|ALT_INV_Add0~121_combout\,
	combout => \u_notch|Add0~122_combout\);

-- Location: LABCELL_X50_Y4_N12
\u_notch|Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector22~0_combout\ = (!\u_notch|state.S_MAC1~q\ & (\u_notch|Add0~93_sumout\)) # (\u_notch|state.S_MAC1~q\ & ((\u_notch|Mult0~25\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Add0~93_sumout\,
	datad => \u_notch|ALT_INV_Mult0~25\,
	combout => \u_notch|Selector22~0_combout\);

-- Location: FF_X50_Y4_N14
\u_notch|acc[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector22~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(17));

-- Location: LABCELL_X50_Y2_N33
\u_notch|y_new~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|y_new~11_combout\ = ( \u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(17) & ( (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~1_combout\ & \u_notch|LessThan1~0_combout\)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(17) & ( 
-- (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~1_combout\ & \u_notch|LessThan1~0_combout\)) ) ) ) # ( \u_notch|LessThan0~1_combout\ & ( !\u_notch|acc\(17) & ( (!\u_notch|acc\(39) & !\u_notch|LessThan0~0_combout\) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( 
-- !\u_notch|acc\(17) & ( !\u_notch|acc\(39) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100000000000011110001111100011111000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_LessThan1~1_combout\,
	datab => \u_notch|ALT_INV_LessThan1~0_combout\,
	datac => \u_notch|ALT_INV_acc\(39),
	datad => \u_notch|ALT_INV_LessThan0~0_combout\,
	datae => \u_notch|ALT_INV_LessThan0~1_combout\,
	dataf => \u_notch|ALT_INV_acc\(17),
	combout => \u_notch|y_new~11_combout\);

-- Location: LABCELL_X53_Y4_N6
\u_notch|Add0~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~99_combout\ = ( \u_notch|Mult4~37\ & ( \u_notch|Mult2~37\ & ( (!\u_notch|state.S_DONE~q\ & \u_notch|state.S_MAC3~q\) ) ) ) # ( !\u_notch|Mult4~37\ & ( \u_notch|Mult2~37\ & ( (!\u_notch|state.S_DONE~q\ & ((\u_notch|state.S_MAC3~q\) # 
-- (\u_notch|state.S_MAC5~q\))) ) ) ) # ( !\u_notch|Mult4~37\ & ( !\u_notch|Mult2~37\ & ( (!\u_notch|state.S_DONE~q\ & (\u_notch|state.S_MAC5~q\ & !\u_notch|state.S_MAC3~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000000000000000000000101010001010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_DONE~q\,
	datab => \u_notch|ALT_INV_state.S_MAC5~q\,
	datac => \u_notch|ALT_INV_state.S_MAC3~q\,
	datae => \u_notch|ALT_INV_Mult4~37\,
	dataf => \u_notch|ALT_INV_Mult2~37\,
	combout => \u_notch|Add0~99_combout\);

-- Location: LABCELL_X53_Y4_N24
\u_notch|Add0~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~100_combout\ = ( \u_notch|Mult1~37\ & ( \u_notch|Add0~99_combout\ ) ) # ( !\u_notch|Mult1~37\ & ( \u_notch|Add0~99_combout\ ) ) # ( \u_notch|Mult1~37\ & ( !\u_notch|Add0~99_combout\ & ( (\u_notch|Add0~89_combout\ & ((!\u_notch|Mult3~37\) # 
-- (\u_notch|Add0~88_combout\))) ) ) ) # ( !\u_notch|Mult1~37\ & ( !\u_notch|Add0~99_combout\ & ( (!\u_notch|Mult3~37\ & (!\u_notch|Add0~88_combout\ & \u_notch|Add0~89_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_notch|ALT_INV_Mult3~37\,
	datac => \u_notch|ALT_INV_Add0~88_combout\,
	datad => \u_notch|ALT_INV_Add0~89_combout\,
	datae => \u_notch|ALT_INV_Mult1~37\,
	dataf => \u_notch|ALT_INV_Add0~99_combout\,
	combout => \u_notch|Add0~100_combout\);

-- Location: LABCELL_X50_Y3_N30
\u_notch|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~45_sumout\ = SUM(( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(29)))) ) + ( \u_notch|Add0~100_combout\ ) + ( \u_notch|Add0~86\ ))
-- \u_notch|Add0~46\ = CARRY(( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(29)))) ) + ( \u_notch|Add0~100_combout\ ) + ( \u_notch|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_acc\(29),
	dataf => \u_notch|ALT_INV_Add0~100_combout\,
	cin => \u_notch|Add0~86\,
	sumout => \u_notch|Add0~45_sumout\,
	cout => \u_notch|Add0~46\);

-- Location: LABCELL_X48_Y3_N39
\u_notch|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector10~0_combout\ = ( \u_notch|state.S_MAC1~q\ & ( \u_notch|Mult0~37\ ) ) # ( !\u_notch|state.S_MAC1~q\ & ( \u_notch|Add0~45_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_notch|ALT_INV_Mult0~37\,
	datad => \u_notch|ALT_INV_Add0~45_sumout\,
	dataf => \u_notch|ALT_INV_state.S_MAC1~q\,
	combout => \u_notch|Selector10~0_combout\);

-- Location: FF_X48_Y3_N41
\u_notch|acc[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector10~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(29));

-- Location: LABCELL_X50_Y3_N33
\u_notch|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~41_sumout\ = SUM(( \u_notch|Add0~98_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(30)))) ) + ( \u_notch|Add0~46\ ))
-- \u_notch|Add0~42\ = CARRY(( \u_notch|Add0~98_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(30)))) ) + ( \u_notch|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~98_combout\,
	dataf => \u_notch|ALT_INV_acc\(30),
	cin => \u_notch|Add0~46\,
	sumout => \u_notch|Add0~41_sumout\,
	cout => \u_notch|Add0~42\);

-- Location: LABCELL_X48_Y3_N57
\u_notch|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector9~0_combout\ = ( \u_notch|state.S_MAC1~q\ & ( \u_notch|Mult0~38\ ) ) # ( !\u_notch|state.S_MAC1~q\ & ( \u_notch|Add0~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~41_sumout\,
	datad => \u_notch|ALT_INV_Mult0~38\,
	dataf => \u_notch|ALT_INV_state.S_MAC1~q\,
	combout => \u_notch|Selector9~0_combout\);

-- Location: FF_X48_Y3_N59
\u_notch|acc[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector9~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(30));

-- Location: LABCELL_X48_Y3_N3
\u_notch|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|LessThan0~1_combout\ = ( !\u_notch|acc\(30) & ( !\u_notch|acc\(29) & ( (!\u_notch|acc\(32) & !\u_notch|acc\(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_acc\(32),
	datac => \u_notch|ALT_INV_acc\(31),
	datae => \u_notch|ALT_INV_acc\(30),
	dataf => \u_notch|ALT_INV_acc\(29),
	combout => \u_notch|LessThan0~1_combout\);

-- Location: LABCELL_X50_Y2_N12
\u_notch|y_new~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|y_new~12_combout\ = ( \u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(16) & ( (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~1_combout\ & \u_notch|LessThan1~0_combout\)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(16) & ( 
-- (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~1_combout\ & \u_notch|LessThan1~0_combout\)) ) ) ) # ( \u_notch|LessThan0~1_combout\ & ( !\u_notch|acc\(16) & ( (!\u_notch|LessThan0~0_combout\ & !\u_notch|acc\(39)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( 
-- !\u_notch|acc\(16) & ( !\u_notch|acc\(39) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111100000000000011111111000100011111111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_LessThan1~1_combout\,
	datab => \u_notch|ALT_INV_LessThan1~0_combout\,
	datac => \u_notch|ALT_INV_LessThan0~0_combout\,
	datad => \u_notch|ALT_INV_acc\(39),
	datae => \u_notch|ALT_INV_LessThan0~1_combout\,
	dataf => \u_notch|ALT_INV_acc\(16),
	combout => \u_notch|y_new~12_combout\);

-- Location: LABCELL_X53_Y4_N3
\u_notch|Add0~137\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~137_combout\ = ( \u_notch|Mult4~23\ & ( (\u_notch|state.S_MAC3~q\ & (\u_notch|Mult2~23\ & !\u_notch|state.S_DONE~q\)) ) ) # ( !\u_notch|Mult4~23\ & ( (!\u_notch|state.S_DONE~q\ & ((!\u_notch|state.S_MAC3~q\ & (\u_notch|state.S_MAC5~q\)) # 
-- (\u_notch|state.S_MAC3~q\ & ((\u_notch|Mult2~23\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC3~q\,
	datab => \u_notch|ALT_INV_state.S_MAC5~q\,
	datac => \u_notch|ALT_INV_Mult2~23\,
	datad => \u_notch|ALT_INV_state.S_DONE~q\,
	dataf => \u_notch|ALT_INV_Mult4~23\,
	combout => \u_notch|Add0~137_combout\);

-- Location: LABCELL_X51_Y4_N15
\u_notch|Add0~138\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~138_combout\ = ( \u_notch|Add0~137_combout\ ) # ( !\u_notch|Add0~137_combout\ & ( (\u_notch|Add0~89_combout\ & ((!\u_notch|Add0~88_combout\ & (!\u_notch|Mult3~23\)) # (\u_notch|Add0~88_combout\ & ((\u_notch|Mult1~23\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001101000010000000110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~88_combout\,
	datab => \u_notch|ALT_INV_Mult3~23\,
	datac => \u_notch|ALT_INV_Add0~89_combout\,
	datad => \u_notch|ALT_INV_Mult1~23\,
	dataf => \u_notch|ALT_INV_Add0~137_combout\,
	combout => \u_notch|Add0~138_combout\);

-- Location: LABCELL_X50_Y4_N21
\u_notch|Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector24~0_combout\ = ( \u_notch|Add0~130_sumout\ & ( (!\u_notch|state.S_MAC1~q\) # (\u_notch|Mult0~23\) ) ) # ( !\u_notch|Add0~130_sumout\ & ( (\u_notch|state.S_MAC1~q\ & \u_notch|Mult0~23\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Mult0~23\,
	dataf => \u_notch|ALT_INV_Add0~130_sumout\,
	combout => \u_notch|Selector24~0_combout\);

-- Location: FF_X50_Y4_N23
\u_notch|acc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector24~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(15));

-- Location: LABCELL_X50_Y2_N6
\u_notch|y_new~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|y_new~14_combout\ = ( \u_notch|LessThan0~1_combout\ & ( \u_notch|LessThan1~0_combout\ & ( (!\u_notch|acc\(39) & ((!\u_notch|LessThan0~0_combout\) # ((\u_notch|acc\(15))))) # (\u_notch|acc\(39) & (((\u_notch|LessThan1~1_combout\ & 
-- \u_notch|acc\(15))))) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( \u_notch|LessThan1~0_combout\ & ( (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~1_combout\ & \u_notch|acc\(15))) ) ) ) # ( \u_notch|LessThan0~1_combout\ & ( !\u_notch|LessThan1~0_combout\ & 
-- ( (!\u_notch|acc\(39) & ((!\u_notch|LessThan0~0_combout\) # (\u_notch|acc\(15)))) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( !\u_notch|LessThan1~0_combout\ & ( !\u_notch|acc\(39) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100100010001100110011001100110011111000100011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_LessThan0~0_combout\,
	datab => \u_notch|ALT_INV_acc\(39),
	datac => \u_notch|ALT_INV_LessThan1~1_combout\,
	datad => \u_notch|ALT_INV_acc\(15),
	datae => \u_notch|ALT_INV_LessThan0~1_combout\,
	dataf => \u_notch|ALT_INV_LessThan1~0_combout\,
	combout => \u_notch|y_new~14_combout\);

-- Location: LABCELL_X53_Y3_N33
\u_notch|Add0~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~98_combout\ = ( \u_notch|Mult1~38\ & ( ((\u_notch|Add0~89_combout\ & ((!\u_notch|Mult3~38\) # (\u_notch|Add0~88_combout\)))) # (\u_notch|Add0~96_combout\) ) ) # ( !\u_notch|Mult1~38\ & ( ((!\u_notch|Add0~88_combout\ & 
-- (\u_notch|Add0~89_combout\ & !\u_notch|Mult3~38\))) # (\u_notch|Add0~96_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101010101010111010101010101011111010101110101111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~96_combout\,
	datab => \u_notch|ALT_INV_Add0~88_combout\,
	datac => \u_notch|ALT_INV_Add0~89_combout\,
	datad => \u_notch|ALT_INV_Mult3~38\,
	dataf => \u_notch|ALT_INV_Mult1~38\,
	combout => \u_notch|Add0~98_combout\);

-- Location: LABCELL_X50_Y3_N36
\u_notch|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~37_sumout\ = SUM(( \u_notch|Add0~97_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(31)))) ) + ( \u_notch|Add0~42\ ))
-- \u_notch|Add0~38\ = CARRY(( \u_notch|Add0~97_combout\ ) + ( (\u_notch|state.S_IDLE~q\ & (!\u_notch|state.S_DONE~q\ & (!\u_notch|state.S_MAC1~q\ & \u_notch|acc\(31)))) ) + ( \u_notch|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_IDLE~q\,
	datab => \u_notch|ALT_INV_state.S_DONE~q\,
	datac => \u_notch|ALT_INV_state.S_MAC1~q\,
	datad => \u_notch|ALT_INV_Add0~97_combout\,
	dataf => \u_notch|ALT_INV_acc\(31),
	cin => \u_notch|Add0~42\,
	sumout => \u_notch|Add0~37_sumout\,
	cout => \u_notch|Add0~38\);

-- Location: LABCELL_X51_Y3_N21
\u_notch|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector8~0_combout\ = ( \u_notch|Add0~37_sumout\ & ( (!\u_notch|state.S_MAC1~q\) # (\u_notch|Mult0~38\) ) ) # ( !\u_notch|Add0~37_sumout\ & ( (\u_notch|state.S_MAC1~q\ & \u_notch|Mult0~38\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datac => \u_notch|ALT_INV_Mult0~38\,
	dataf => \u_notch|ALT_INV_Add0~37_sumout\,
	combout => \u_notch|Selector8~0_combout\);

-- Location: FF_X51_Y3_N23
\u_notch|acc[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector8~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(31));

-- Location: LABCELL_X48_Y3_N24
\u_notch|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector7~0_combout\ = ( \u_notch|state.S_MAC1~q\ & ( \u_notch|Mult0~38\ ) ) # ( !\u_notch|state.S_MAC1~q\ & ( \u_notch|Add0~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_notch|ALT_INV_Mult0~38\,
	datad => \u_notch|ALT_INV_Add0~33_sumout\,
	dataf => \u_notch|ALT_INV_state.S_MAC1~q\,
	combout => \u_notch|Selector7~0_combout\);

-- Location: FF_X48_Y3_N26
\u_notch|acc[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector7~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(32));

-- Location: LABCELL_X48_Y3_N21
\u_notch|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|LessThan1~1_combout\ = ( \u_notch|acc\(30) & ( \u_notch|acc\(29) & ( (\u_notch|acc\(32) & \u_notch|acc\(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_acc\(32),
	datac => \u_notch|ALT_INV_acc\(31),
	datae => \u_notch|ALT_INV_acc\(30),
	dataf => \u_notch|ALT_INV_acc\(29),
	combout => \u_notch|LessThan1~1_combout\);

-- Location: LABCELL_X50_Y2_N15
\u_notch|y_new~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|y_new~13_combout\ = ( \u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(14) & ( (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~1_combout\ & \u_notch|LessThan1~0_combout\)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(14) & ( 
-- (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~1_combout\ & \u_notch|LessThan1~0_combout\)) ) ) ) # ( \u_notch|LessThan0~1_combout\ & ( !\u_notch|acc\(14) & ( (!\u_notch|acc\(39) & !\u_notch|LessThan0~0_combout\) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( 
-- !\u_notch|acc\(14) & ( !\u_notch|acc\(39) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100000000000011110001111100011111000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_LessThan1~1_combout\,
	datab => \u_notch|ALT_INV_LessThan1~0_combout\,
	datac => \u_notch|ALT_INV_acc\(39),
	datad => \u_notch|ALT_INV_LessThan0~0_combout\,
	datae => \u_notch|ALT_INV_LessThan0~1_combout\,
	dataf => \u_notch|ALT_INV_acc\(14),
	combout => \u_notch|y_new~13_combout\);

-- Location: LABCELL_X53_Y3_N3
\u_notch|Add0~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~96_combout\ = ( \u_notch|Mult2~38\ & ( \u_notch|Mult4~38\ & ( (!\u_notch|state.S_DONE~q\ & \u_notch|state.S_MAC3~q\) ) ) ) # ( \u_notch|Mult2~38\ & ( !\u_notch|Mult4~38\ & ( (!\u_notch|state.S_DONE~q\ & ((\u_notch|state.S_MAC3~q\) # 
-- (\u_notch|state.S_MAC5~q\))) ) ) ) # ( !\u_notch|Mult2~38\ & ( !\u_notch|Mult4~38\ & ( (!\u_notch|state.S_DONE~q\ & (\u_notch|state.S_MAC5~q\ & !\u_notch|state.S_MAC3~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001010100010101000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_DONE~q\,
	datab => \u_notch|ALT_INV_state.S_MAC5~q\,
	datac => \u_notch|ALT_INV_state.S_MAC3~q\,
	datae => \u_notch|ALT_INV_Mult2~38\,
	dataf => \u_notch|ALT_INV_Mult4~38\,
	combout => \u_notch|Add0~96_combout\);

-- Location: LABCELL_X53_Y3_N30
\u_notch|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Add0~97_combout\ = ( \u_notch|Mult1~39\ & ( ((\u_notch|Add0~89_combout\ & ((!\u_notch|Mult3~39\) # (\u_notch|Add0~88_combout\)))) # (\u_notch|Add0~96_combout\) ) ) # ( !\u_notch|Mult1~39\ & ( ((!\u_notch|Add0~88_combout\ & 
-- (\u_notch|Add0~89_combout\ & !\u_notch|Mult3~39\))) # (\u_notch|Add0~96_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101010101010111010101010101011111010101110101111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_Add0~96_combout\,
	datab => \u_notch|ALT_INV_Add0~88_combout\,
	datac => \u_notch|ALT_INV_Add0~89_combout\,
	datad => \u_notch|ALT_INV_Mult3~39\,
	dataf => \u_notch|ALT_INV_Mult1~39\,
	combout => \u_notch|Add0~97_combout\);

-- Location: LABCELL_X51_Y3_N36
\u_notch|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|Selector1~0_combout\ = (!\u_notch|state.S_MAC1~q\ & ((\u_notch|Add0~13_sumout\))) # (\u_notch|state.S_MAC1~q\ & (\u_notch|Mult0~38\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_state.S_MAC1~q\,
	datab => \u_notch|ALT_INV_Mult0~38\,
	datad => \u_notch|ALT_INV_Add0~13_sumout\,
	combout => \u_notch|Selector1~0_combout\);

-- Location: FF_X51_Y3_N38
\u_notch|acc[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|Selector1~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \u_notch|ALT_INV_state.S_IDLE~q\,
	ena => \u_notch|acc[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|acc\(38));

-- Location: LABCELL_X51_Y3_N6
\u_notch|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|LessThan0~0_combout\ = ( !\u_notch|acc\(37) & ( !\u_notch|acc\(35) & ( (!\u_notch|acc\(38) & (!\u_notch|acc\(36) & (!\u_notch|acc\(34) & !\u_notch|acc\(33)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_acc\(38),
	datab => \u_notch|ALT_INV_acc\(36),
	datac => \u_notch|ALT_INV_acc\(34),
	datad => \u_notch|ALT_INV_acc\(33),
	datae => \u_notch|ALT_INV_acc\(37),
	dataf => \u_notch|ALT_INV_acc\(35),
	combout => \u_notch|LessThan0~0_combout\);

-- Location: LABCELL_X50_Y2_N39
\u_notch|y_new~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|y_new~1_combout\ = ( \u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(19) & ( (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~0_combout\ & \u_notch|LessThan1~1_combout\)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( \u_notch|acc\(19) & ( 
-- (!\u_notch|acc\(39)) # ((\u_notch|LessThan1~0_combout\ & \u_notch|LessThan1~1_combout\)) ) ) ) # ( \u_notch|LessThan0~1_combout\ & ( !\u_notch|acc\(19) & ( (!\u_notch|LessThan0~0_combout\ & !\u_notch|acc\(39)) ) ) ) # ( !\u_notch|LessThan0~1_combout\ & ( 
-- !\u_notch|acc\(19) & ( !\u_notch|acc\(39) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100100010001000100011001100110011111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_LessThan0~0_combout\,
	datab => \u_notch|ALT_INV_acc\(39),
	datac => \u_notch|ALT_INV_LessThan1~0_combout\,
	datad => \u_notch|ALT_INV_LessThan1~1_combout\,
	datae => \u_notch|ALT_INV_LessThan0~1_combout\,
	dataf => \u_notch|ALT_INV_acc\(19),
	combout => \u_notch|y_new~1_combout\);

-- Location: FF_X50_Y2_N41
\u_notch|sample_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|y_new~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|sample_out\(5));

-- Location: FF_X55_Y8_N20
\u_dc_block|x_prev[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_notch|sample_out\(5),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|x_prev\(5));

-- Location: FF_X50_Y2_N8
\u_notch|sample_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|y_new~14_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|sample_out\(1));

-- Location: FF_X50_Y2_N14
\u_notch|sample_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|y_new~12_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|sample_out\(2));

-- Location: FF_X52_Y8_N13
\u_dc_block|x_prev[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_notch|sample_out\(2),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|x_prev\(2));

-- Location: FF_X50_Y2_N35
\u_notch|sample_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|y_new~11_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|sample_out\(3));

-- Location: LABCELL_X55_Y8_N27
\u_dc_block|x_prev[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|x_prev[3]~feeder_combout\ = ( \u_notch|sample_out\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_notch|ALT_INV_sample_out\(3),
	combout => \u_dc_block|x_prev[3]~feeder_combout\);

-- Location: FF_X55_Y8_N29
\u_dc_block|x_prev[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|x_prev[3]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|x_prev\(3));

-- Location: FF_X50_Y2_N38
\u_notch|sample_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|y_new~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|sample_out\(4));

-- Location: FF_X50_Y2_N23
\u_notch|sample_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|y_new~3_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|sample_out\(7));

-- Location: FF_X55_Y8_N2
\u_dc_block|x_prev[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_notch|sample_out\(7),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|x_prev\(7));

-- Location: FF_X50_Y2_N50
\u_notch|sample_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|y_new~4_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|sample_out\(8));

-- Location: FF_X55_Y8_N4
\u_dc_block|x_prev[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_notch|sample_out\(8),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|x_prev\(8));

-- Location: FF_X50_Y2_N53
\u_notch|sample_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|y_new~5_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|sample_out\(9));

-- Location: FF_X55_Y7_N5
\u_dc_block|x_prev[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_notch|sample_out\(9),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|x_prev\(9));

-- Location: FF_X50_Y2_N26
\u_notch|sample_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|y_new~8_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|sample_out\(12));

-- Location: FF_X55_Y7_N49
\u_dc_block|x_prev[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_notch|sample_out\(12),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|x_prev\(12));

-- Location: FF_X50_Y2_N29
\u_notch|sample_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|y_new~9_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|sample_out\(13));

-- Location: LABCELL_X55_Y7_N21
\u_dc_block|x_prev[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|x_prev[13]~feeder_combout\ = ( \u_notch|sample_out\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_notch|ALT_INV_sample_out\(13),
	combout => \u_dc_block|x_prev[13]~feeder_combout\);

-- Location: FF_X55_Y7_N23
\u_dc_block|x_prev[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|x_prev[13]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|x_prev\(13));

-- Location: FF_X50_Y2_N32
\u_notch|sample_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|y_new~10_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|sample_out\(14));

-- Location: LABCELL_X55_Y6_N24
\u_notch|sample_out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_notch|sample_out[15]~feeder_combout\ = ( \u_notch|acc\(39) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_notch|ALT_INV_acc\(39),
	combout => \u_notch|sample_out[15]~feeder_combout\);

-- Location: FF_X55_Y6_N26
\u_notch|sample_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|sample_out[15]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|sample_out\(15));

-- Location: FF_X55_Y7_N53
\u_dc_block|x_prev[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_notch|sample_out\(15),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|x_prev\(15));

-- Location: LABCELL_X55_Y7_N18
\u_dc_block|x_prev[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|x_prev[14]~feeder_combout\ = ( \u_notch|sample_out\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_notch|ALT_INV_sample_out\(14),
	combout => \u_dc_block|x_prev[14]~feeder_combout\);

-- Location: FF_X55_Y7_N19
\u_dc_block|x_prev[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|x_prev[14]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|x_prev\(14));

-- Location: FF_X50_Y2_N59
\u_notch|sample_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|y_new~7_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|sample_out\(11));

-- Location: LABCELL_X53_Y7_N54
\u_dc_block|x_prev[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|x_prev[11]~feeder_combout\ = ( \u_notch|sample_out\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_notch|ALT_INV_sample_out\(11),
	combout => \u_dc_block|x_prev[11]~feeder_combout\);

-- Location: FF_X53_Y7_N55
\u_dc_block|x_prev[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|x_prev[11]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|x_prev\(11));

-- Location: FF_X50_Y2_N56
\u_notch|sample_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|y_new~6_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|sample_out\(10));

-- Location: LABCELL_X53_Y7_N15
\u_dc_block|x_prev[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|x_prev[10]~feeder_combout\ = ( \u_notch|sample_out\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_notch|ALT_INV_sample_out\(10),
	combout => \u_dc_block|x_prev[10]~feeder_combout\);

-- Location: FF_X53_Y7_N16
\u_dc_block|x_prev[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|x_prev[10]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|x_prev\(10));

-- Location: FF_X50_Y2_N20
\u_notch|sample_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|y_new~2_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|sample_out\(6));

-- Location: FF_X55_Y8_N22
\u_dc_block|x_prev[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_notch|sample_out\(6),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|x_prev\(6));

-- Location: LABCELL_X51_Y8_N24
\u_dc_block|x_prev[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|x_prev[4]~feeder_combout\ = ( \u_notch|sample_out\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_notch|ALT_INV_sample_out\(4),
	combout => \u_dc_block|x_prev[4]~feeder_combout\);

-- Location: FF_X51_Y8_N25
\u_dc_block|x_prev[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|x_prev[4]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|x_prev\(4));

-- Location: MLABCELL_X52_Y8_N39
\u_dc_block|x_prev[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|x_prev[1]~feeder_combout\ = ( \u_notch|sample_out\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_notch|ALT_INV_sample_out\(1),
	combout => \u_dc_block|x_prev[1]~feeder_combout\);

-- Location: FF_X52_Y8_N40
\u_dc_block|x_prev[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|x_prev[1]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|x_prev\(1));

-- Location: FF_X50_Y2_N17
\u_notch|sample_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_notch|y_new~13_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_notch|state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_notch|sample_out\(0));

-- Location: FF_X52_Y8_N58
\u_dc_block|x_prev[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_notch|sample_out\(0),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|x_prev\(0));

-- Location: LABCELL_X55_Y8_N30
\u_dc_block|Add1~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|Add1~70_cout\ = CARRY(( GND ) + ( !VCC ) + ( !VCC ))
-- \u_dc_block|Add1~71\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => GND,
	sharein => GND,
	cout => \u_dc_block|Add1~70_cout\,
	shareout => \u_dc_block|Add1~71\);

-- Location: LABCELL_X55_Y8_N33
\u_dc_block|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|Add1~61_sumout\ = SUM(( !\u_dc_block|Mult0~23\ $ (!\u_dc_block|x_prev\(0) $ (!\u_notch|sample_out\(0))) ) + ( \u_dc_block|Add1~71\ ) + ( \u_dc_block|Add1~70_cout\ ))
-- \u_dc_block|Add1~62\ = CARRY(( !\u_dc_block|Mult0~23\ $ (!\u_dc_block|x_prev\(0) $ (!\u_notch|sample_out\(0))) ) + ( \u_dc_block|Add1~71\ ) + ( \u_dc_block|Add1~70_cout\ ))
-- \u_dc_block|Add1~63\ = SHARE((!\u_dc_block|Mult0~23\ & (!\u_dc_block|x_prev\(0) & \u_notch|sample_out\(0))) # (\u_dc_block|Mult0~23\ & ((!\u_dc_block|x_prev\(0)) # (\u_notch|sample_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010011010100110100000000000000001001011010010110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \u_dc_block|ALT_INV_Mult0~23\,
	datab => \u_dc_block|ALT_INV_x_prev\(0),
	datac => \u_notch|ALT_INV_sample_out\(0),
	cin => \u_dc_block|Add1~70_cout\,
	sharein => \u_dc_block|Add1~71\,
	sumout => \u_dc_block|Add1~61_sumout\,
	cout => \u_dc_block|Add1~62\,
	shareout => \u_dc_block|Add1~63\);

-- Location: LABCELL_X55_Y8_N36
\u_dc_block|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|Add1~65_sumout\ = SUM(( !\u_notch|sample_out\(1) $ (!\u_dc_block|Mult0~24\ $ (!\u_dc_block|x_prev\(1))) ) + ( \u_dc_block|Add1~63\ ) + ( \u_dc_block|Add1~62\ ))
-- \u_dc_block|Add1~66\ = CARRY(( !\u_notch|sample_out\(1) $ (!\u_dc_block|Mult0~24\ $ (!\u_dc_block|x_prev\(1))) ) + ( \u_dc_block|Add1~63\ ) + ( \u_dc_block|Add1~62\ ))
-- \u_dc_block|Add1~67\ = SHARE((!\u_notch|sample_out\(1) & (\u_dc_block|Mult0~24\ & !\u_dc_block|x_prev\(1))) # (\u_notch|sample_out\(1) & ((!\u_dc_block|x_prev\(1)) # (\u_dc_block|Mult0~24\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110000010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_sample_out\(1),
	datac => \u_dc_block|ALT_INV_Mult0~24\,
	datad => \u_dc_block|ALT_INV_x_prev\(1),
	cin => \u_dc_block|Add1~62\,
	sharein => \u_dc_block|Add1~63\,
	sumout => \u_dc_block|Add1~65_sumout\,
	cout => \u_dc_block|Add1~66\,
	shareout => \u_dc_block|Add1~67\);

-- Location: LABCELL_X55_Y8_N39
\u_dc_block|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|Add1~57_sumout\ = SUM(( !\u_dc_block|x_prev\(2) $ (!\u_dc_block|Mult0~25\ $ (!\u_notch|sample_out\(2))) ) + ( \u_dc_block|Add1~67\ ) + ( \u_dc_block|Add1~66\ ))
-- \u_dc_block|Add1~58\ = CARRY(( !\u_dc_block|x_prev\(2) $ (!\u_dc_block|Mult0~25\ $ (!\u_notch|sample_out\(2))) ) + ( \u_dc_block|Add1~67\ ) + ( \u_dc_block|Add1~66\ ))
-- \u_dc_block|Add1~59\ = SHARE((!\u_dc_block|x_prev\(2) & ((\u_notch|sample_out\(2)) # (\u_dc_block|Mult0~25\))) # (\u_dc_block|x_prev\(2) & (\u_dc_block|Mult0~25\ & \u_notch|sample_out\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011001100111100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \u_dc_block|ALT_INV_x_prev\(2),
	datac => \u_dc_block|ALT_INV_Mult0~25\,
	datad => \u_notch|ALT_INV_sample_out\(2),
	cin => \u_dc_block|Add1~66\,
	sharein => \u_dc_block|Add1~67\,
	sumout => \u_dc_block|Add1~57_sumout\,
	cout => \u_dc_block|Add1~58\,
	shareout => \u_dc_block|Add1~59\);

-- Location: LABCELL_X55_Y8_N42
\u_dc_block|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|Add1~53_sumout\ = SUM(( !\u_dc_block|x_prev\(3) $ (!\u_notch|sample_out\(3) $ (!\u_dc_block|Mult0~26\)) ) + ( \u_dc_block|Add1~59\ ) + ( \u_dc_block|Add1~58\ ))
-- \u_dc_block|Add1~54\ = CARRY(( !\u_dc_block|x_prev\(3) $ (!\u_notch|sample_out\(3) $ (!\u_dc_block|Mult0~26\)) ) + ( \u_dc_block|Add1~59\ ) + ( \u_dc_block|Add1~58\ ))
-- \u_dc_block|Add1~55\ = SHARE((!\u_dc_block|x_prev\(3) & ((\u_dc_block|Mult0~26\) # (\u_notch|sample_out\(3)))) # (\u_dc_block|x_prev\(3) & (\u_notch|sample_out\(3) & \u_dc_block|Mult0~26\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010101010111100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \u_dc_block|ALT_INV_x_prev\(3),
	datac => \u_notch|ALT_INV_sample_out\(3),
	datad => \u_dc_block|ALT_INV_Mult0~26\,
	cin => \u_dc_block|Add1~58\,
	sharein => \u_dc_block|Add1~59\,
	sumout => \u_dc_block|Add1~53_sumout\,
	cout => \u_dc_block|Add1~54\,
	shareout => \u_dc_block|Add1~55\);

-- Location: LABCELL_X55_Y8_N45
\u_dc_block|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|Add1~1_sumout\ = SUM(( !\u_notch|sample_out\(4) $ (!\u_dc_block|Mult0~27\ $ (!\u_dc_block|x_prev\(4))) ) + ( \u_dc_block|Add1~55\ ) + ( \u_dc_block|Add1~54\ ))
-- \u_dc_block|Add1~2\ = CARRY(( !\u_notch|sample_out\(4) $ (!\u_dc_block|Mult0~27\ $ (!\u_dc_block|x_prev\(4))) ) + ( \u_dc_block|Add1~55\ ) + ( \u_dc_block|Add1~54\ ))
-- \u_dc_block|Add1~3\ = SHARE((!\u_notch|sample_out\(4) & (\u_dc_block|Mult0~27\ & !\u_dc_block|x_prev\(4))) # (\u_notch|sample_out\(4) & ((!\u_dc_block|x_prev\(4)) # (\u_dc_block|Mult0~27\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110000001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \u_notch|ALT_INV_sample_out\(4),
	datac => \u_dc_block|ALT_INV_Mult0~27\,
	datad => \u_dc_block|ALT_INV_x_prev\(4),
	cin => \u_dc_block|Add1~54\,
	sharein => \u_dc_block|Add1~55\,
	sumout => \u_dc_block|Add1~1_sumout\,
	cout => \u_dc_block|Add1~2\,
	shareout => \u_dc_block|Add1~3\);

-- Location: LABCELL_X55_Y8_N48
\u_dc_block|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|Add1~13_sumout\ = SUM(( !\u_dc_block|x_prev\(5) $ (!\u_dc_block|Mult0~28\ $ (!\u_notch|sample_out\(5))) ) + ( \u_dc_block|Add1~3\ ) + ( \u_dc_block|Add1~2\ ))
-- \u_dc_block|Add1~14\ = CARRY(( !\u_dc_block|x_prev\(5) $ (!\u_dc_block|Mult0~28\ $ (!\u_notch|sample_out\(5))) ) + ( \u_dc_block|Add1~3\ ) + ( \u_dc_block|Add1~2\ ))
-- \u_dc_block|Add1~15\ = SHARE((!\u_dc_block|x_prev\(5) & ((\u_notch|sample_out\(5)) # (\u_dc_block|Mult0~28\))) # (\u_dc_block|x_prev\(5) & (\u_dc_block|Mult0~28\ & \u_notch|sample_out\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010101010111100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \u_dc_block|ALT_INV_x_prev\(5),
	datac => \u_dc_block|ALT_INV_Mult0~28\,
	datad => \u_notch|ALT_INV_sample_out\(5),
	cin => \u_dc_block|Add1~2\,
	sharein => \u_dc_block|Add1~3\,
	sumout => \u_dc_block|Add1~13_sumout\,
	cout => \u_dc_block|Add1~14\,
	shareout => \u_dc_block|Add1~15\);

-- Location: LABCELL_X55_Y8_N51
\u_dc_block|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|Add1~17_sumout\ = SUM(( !\u_dc_block|Mult0~29\ $ (!\u_dc_block|x_prev\(6) $ (!\u_notch|sample_out\(6))) ) + ( \u_dc_block|Add1~15\ ) + ( \u_dc_block|Add1~14\ ))
-- \u_dc_block|Add1~18\ = CARRY(( !\u_dc_block|Mult0~29\ $ (!\u_dc_block|x_prev\(6) $ (!\u_notch|sample_out\(6))) ) + ( \u_dc_block|Add1~15\ ) + ( \u_dc_block|Add1~14\ ))
-- \u_dc_block|Add1~19\ = SHARE((!\u_dc_block|Mult0~29\ & (!\u_dc_block|x_prev\(6) & \u_notch|sample_out\(6))) # (\u_dc_block|Mult0~29\ & ((!\u_dc_block|x_prev\(6)) # (\u_notch|sample_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100001111001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \u_dc_block|ALT_INV_Mult0~29\,
	datac => \u_dc_block|ALT_INV_x_prev\(6),
	datad => \u_notch|ALT_INV_sample_out\(6),
	cin => \u_dc_block|Add1~14\,
	sharein => \u_dc_block|Add1~15\,
	sumout => \u_dc_block|Add1~17_sumout\,
	cout => \u_dc_block|Add1~18\,
	shareout => \u_dc_block|Add1~19\);

-- Location: LABCELL_X55_Y8_N54
\u_dc_block|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|Add1~21_sumout\ = SUM(( !\u_dc_block|x_prev\(7) $ (!\u_notch|sample_out\(7) $ (!\u_dc_block|Mult0~30\)) ) + ( \u_dc_block|Add1~19\ ) + ( \u_dc_block|Add1~18\ ))
-- \u_dc_block|Add1~22\ = CARRY(( !\u_dc_block|x_prev\(7) $ (!\u_notch|sample_out\(7) $ (!\u_dc_block|Mult0~30\)) ) + ( \u_dc_block|Add1~19\ ) + ( \u_dc_block|Add1~18\ ))
-- \u_dc_block|Add1~23\ = SHARE((!\u_dc_block|x_prev\(7) & ((\u_dc_block|Mult0~30\) # (\u_notch|sample_out\(7)))) # (\u_dc_block|x_prev\(7) & (\u_notch|sample_out\(7) & \u_dc_block|Mult0~30\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010101010111100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \u_dc_block|ALT_INV_x_prev\(7),
	datac => \u_notch|ALT_INV_sample_out\(7),
	datad => \u_dc_block|ALT_INV_Mult0~30\,
	cin => \u_dc_block|Add1~18\,
	sharein => \u_dc_block|Add1~19\,
	sumout => \u_dc_block|Add1~21_sumout\,
	cout => \u_dc_block|Add1~22\,
	shareout => \u_dc_block|Add1~23\);

-- Location: LABCELL_X55_Y8_N57
\u_dc_block|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|Add1~25_sumout\ = SUM(( !\u_dc_block|x_prev\(8) $ (!\u_dc_block|Mult0~31\ $ (!\u_notch|sample_out\(8))) ) + ( \u_dc_block|Add1~23\ ) + ( \u_dc_block|Add1~22\ ))
-- \u_dc_block|Add1~26\ = CARRY(( !\u_dc_block|x_prev\(8) $ (!\u_dc_block|Mult0~31\ $ (!\u_notch|sample_out\(8))) ) + ( \u_dc_block|Add1~23\ ) + ( \u_dc_block|Add1~22\ ))
-- \u_dc_block|Add1~27\ = SHARE((!\u_dc_block|x_prev\(8) & ((\u_notch|sample_out\(8)) # (\u_dc_block|Mult0~31\))) # (\u_dc_block|x_prev\(8) & (\u_dc_block|Mult0~31\ & \u_notch|sample_out\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011001100111100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \u_dc_block|ALT_INV_x_prev\(8),
	datac => \u_dc_block|ALT_INV_Mult0~31\,
	datad => \u_notch|ALT_INV_sample_out\(8),
	cin => \u_dc_block|Add1~22\,
	sharein => \u_dc_block|Add1~23\,
	sumout => \u_dc_block|Add1~25_sumout\,
	cout => \u_dc_block|Add1~26\,
	shareout => \u_dc_block|Add1~27\);

-- Location: LABCELL_X55_Y7_N30
\u_dc_block|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|Add1~29_sumout\ = SUM(( !\u_dc_block|x_prev\(9) $ (!\u_dc_block|Mult0~32\ $ (!\u_notch|sample_out\(9))) ) + ( \u_dc_block|Add1~27\ ) + ( \u_dc_block|Add1~26\ ))
-- \u_dc_block|Add1~30\ = CARRY(( !\u_dc_block|x_prev\(9) $ (!\u_dc_block|Mult0~32\ $ (!\u_notch|sample_out\(9))) ) + ( \u_dc_block|Add1~27\ ) + ( \u_dc_block|Add1~26\ ))
-- \u_dc_block|Add1~31\ = SHARE((!\u_dc_block|x_prev\(9) & ((\u_notch|sample_out\(9)) # (\u_dc_block|Mult0~32\))) # (\u_dc_block|x_prev\(9) & (\u_dc_block|Mult0~32\ & \u_notch|sample_out\(9))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010101010111100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \u_dc_block|ALT_INV_x_prev\(9),
	datac => \u_dc_block|ALT_INV_Mult0~32\,
	datad => \u_notch|ALT_INV_sample_out\(9),
	cin => \u_dc_block|Add1~26\,
	sharein => \u_dc_block|Add1~27\,
	sumout => \u_dc_block|Add1~29_sumout\,
	cout => \u_dc_block|Add1~30\,
	shareout => \u_dc_block|Add1~31\);

-- Location: LABCELL_X55_Y7_N33
\u_dc_block|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|Add1~33_sumout\ = SUM(( !\u_dc_block|Mult0~33\ $ (!\u_dc_block|x_prev\(10) $ (!\u_notch|sample_out\(10))) ) + ( \u_dc_block|Add1~31\ ) + ( \u_dc_block|Add1~30\ ))
-- \u_dc_block|Add1~34\ = CARRY(( !\u_dc_block|Mult0~33\ $ (!\u_dc_block|x_prev\(10) $ (!\u_notch|sample_out\(10))) ) + ( \u_dc_block|Add1~31\ ) + ( \u_dc_block|Add1~30\ ))
-- \u_dc_block|Add1~35\ = SHARE((!\u_dc_block|Mult0~33\ & (!\u_dc_block|x_prev\(10) & \u_notch|sample_out\(10))) # (\u_dc_block|Mult0~33\ & ((!\u_dc_block|x_prev\(10)) # (\u_notch|sample_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100001111001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \u_dc_block|ALT_INV_Mult0~33\,
	datac => \u_dc_block|ALT_INV_x_prev\(10),
	datad => \u_notch|ALT_INV_sample_out\(10),
	cin => \u_dc_block|Add1~30\,
	sharein => \u_dc_block|Add1~31\,
	sumout => \u_dc_block|Add1~33_sumout\,
	cout => \u_dc_block|Add1~34\,
	shareout => \u_dc_block|Add1~35\);

-- Location: LABCELL_X55_Y7_N36
\u_dc_block|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|Add1~37_sumout\ = SUM(( !\u_dc_block|Mult0~34\ $ (!\u_notch|sample_out\(11) $ (!\u_dc_block|x_prev\(11))) ) + ( \u_dc_block|Add1~35\ ) + ( \u_dc_block|Add1~34\ ))
-- \u_dc_block|Add1~38\ = CARRY(( !\u_dc_block|Mult0~34\ $ (!\u_notch|sample_out\(11) $ (!\u_dc_block|x_prev\(11))) ) + ( \u_dc_block|Add1~35\ ) + ( \u_dc_block|Add1~34\ ))
-- \u_dc_block|Add1~39\ = SHARE((!\u_dc_block|Mult0~34\ & (\u_notch|sample_out\(11) & !\u_dc_block|x_prev\(11))) # (\u_dc_block|Mult0~34\ & ((!\u_dc_block|x_prev\(11)) # (\u_notch|sample_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110000001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \u_dc_block|ALT_INV_Mult0~34\,
	datac => \u_notch|ALT_INV_sample_out\(11),
	datad => \u_dc_block|ALT_INV_x_prev\(11),
	cin => \u_dc_block|Add1~34\,
	sharein => \u_dc_block|Add1~35\,
	sumout => \u_dc_block|Add1~37_sumout\,
	cout => \u_dc_block|Add1~38\,
	shareout => \u_dc_block|Add1~39\);

-- Location: LABCELL_X55_Y7_N39
\u_dc_block|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|Add1~41_sumout\ = SUM(( !\u_notch|sample_out\(12) $ (!\u_dc_block|x_prev\(12) $ (!\u_dc_block|Mult0~35\)) ) + ( \u_dc_block|Add1~39\ ) + ( \u_dc_block|Add1~38\ ))
-- \u_dc_block|Add1~42\ = CARRY(( !\u_notch|sample_out\(12) $ (!\u_dc_block|x_prev\(12) $ (!\u_dc_block|Mult0~35\)) ) + ( \u_dc_block|Add1~39\ ) + ( \u_dc_block|Add1~38\ ))
-- \u_dc_block|Add1~43\ = SHARE((!\u_notch|sample_out\(12) & (!\u_dc_block|x_prev\(12) & \u_dc_block|Mult0~35\)) # (\u_notch|sample_out\(12) & ((!\u_dc_block|x_prev\(12)) # (\u_dc_block|Mult0~35\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001111010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \u_notch|ALT_INV_sample_out\(12),
	datac => \u_dc_block|ALT_INV_x_prev\(12),
	datad => \u_dc_block|ALT_INV_Mult0~35\,
	cin => \u_dc_block|Add1~38\,
	sharein => \u_dc_block|Add1~39\,
	sumout => \u_dc_block|Add1~41_sumout\,
	cout => \u_dc_block|Add1~42\,
	shareout => \u_dc_block|Add1~43\);

-- Location: LABCELL_X55_Y7_N42
\u_dc_block|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|Add1~45_sumout\ = SUM(( !\u_dc_block|x_prev\(13) $ (!\u_notch|sample_out\(13) $ (!\u_dc_block|Mult0~36\)) ) + ( \u_dc_block|Add1~43\ ) + ( \u_dc_block|Add1~42\ ))
-- \u_dc_block|Add1~46\ = CARRY(( !\u_dc_block|x_prev\(13) $ (!\u_notch|sample_out\(13) $ (!\u_dc_block|Mult0~36\)) ) + ( \u_dc_block|Add1~43\ ) + ( \u_dc_block|Add1~42\ ))
-- \u_dc_block|Add1~47\ = SHARE((!\u_dc_block|x_prev\(13) & ((\u_dc_block|Mult0~36\) # (\u_notch|sample_out\(13)))) # (\u_dc_block|x_prev\(13) & (\u_notch|sample_out\(13) & \u_dc_block|Mult0~36\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010101010111100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \u_dc_block|ALT_INV_x_prev\(13),
	datac => \u_notch|ALT_INV_sample_out\(13),
	datad => \u_dc_block|ALT_INV_Mult0~36\,
	cin => \u_dc_block|Add1~42\,
	sharein => \u_dc_block|Add1~43\,
	sumout => \u_dc_block|Add1~45_sumout\,
	cout => \u_dc_block|Add1~46\,
	shareout => \u_dc_block|Add1~47\);

-- Location: LABCELL_X55_Y7_N45
\u_dc_block|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|Add1~49_sumout\ = SUM(( !\u_notch|sample_out\(14) $ (!\u_dc_block|Mult0~37\ $ (!\u_dc_block|x_prev\(14))) ) + ( \u_dc_block|Add1~47\ ) + ( \u_dc_block|Add1~46\ ))
-- \u_dc_block|Add1~50\ = CARRY(( !\u_notch|sample_out\(14) $ (!\u_dc_block|Mult0~37\ $ (!\u_dc_block|x_prev\(14))) ) + ( \u_dc_block|Add1~47\ ) + ( \u_dc_block|Add1~46\ ))
-- \u_dc_block|Add1~51\ = SHARE((!\u_notch|sample_out\(14) & (\u_dc_block|Mult0~37\ & !\u_dc_block|x_prev\(14))) # (\u_notch|sample_out\(14) & ((!\u_dc_block|x_prev\(14)) # (\u_dc_block|Mult0~37\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110000001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \u_notch|ALT_INV_sample_out\(14),
	datac => \u_dc_block|ALT_INV_Mult0~37\,
	datad => \u_dc_block|ALT_INV_x_prev\(14),
	cin => \u_dc_block|Add1~46\,
	sharein => \u_dc_block|Add1~47\,
	sumout => \u_dc_block|Add1~49_sumout\,
	cout => \u_dc_block|Add1~50\,
	shareout => \u_dc_block|Add1~51\);

-- Location: LABCELL_X55_Y7_N48
\u_dc_block|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|Add1~9_sumout\ = SUM(( !\u_dc_block|x_prev\(15) $ (!\u_dc_block|Mult0~38\ $ (!\u_notch|sample_out\(15))) ) + ( \u_dc_block|Add1~51\ ) + ( \u_dc_block|Add1~50\ ))
-- \u_dc_block|Add1~10\ = CARRY(( !\u_dc_block|x_prev\(15) $ (!\u_dc_block|Mult0~38\ $ (!\u_notch|sample_out\(15))) ) + ( \u_dc_block|Add1~51\ ) + ( \u_dc_block|Add1~50\ ))
-- \u_dc_block|Add1~11\ = SHARE((!\u_dc_block|x_prev\(15) & ((\u_notch|sample_out\(15)) # (\u_dc_block|Mult0~38\))) # (\u_dc_block|x_prev\(15) & (\u_dc_block|Mult0~38\ & \u_notch|sample_out\(15))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011001100111100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \u_dc_block|ALT_INV_x_prev\(15),
	datac => \u_dc_block|ALT_INV_Mult0~38\,
	datad => \u_notch|ALT_INV_sample_out\(15),
	cin => \u_dc_block|Add1~50\,
	sharein => \u_dc_block|Add1~51\,
	sumout => \u_dc_block|Add1~9_sumout\,
	cout => \u_dc_block|Add1~10\,
	shareout => \u_dc_block|Add1~11\);

-- Location: LABCELL_X55_Y7_N0
\u_dc_block|y_prev[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|y_prev[15]~feeder_combout\ = ( \u_dc_block|Add1~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_dc_block|ALT_INV_Add1~9_sumout\,
	combout => \u_dc_block|y_prev[15]~feeder_combout\);

-- Location: LABCELL_X55_Y7_N54
\u_dc_block|p_filter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|p_filter~0_combout\ = ( \u_dc_block|Add1~5_sumout\ & ( !\u_dc_block|Add1~9_sumout\ ) ) # ( !\u_dc_block|Add1~5_sumout\ & ( \u_dc_block|Add1~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_dc_block|ALT_INV_Add1~9_sumout\,
	dataf => \u_dc_block|ALT_INV_Add1~5_sumout\,
	combout => \u_dc_block|p_filter~0_combout\);

-- Location: FF_X55_Y7_N1
\u_dc_block|y_prev[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|y_prev[15]~feeder_combout\,
	asdata => \u_dc_block|Add1~5_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|y_prev\(15));

-- Location: DSP_X54_Y8_N0
\u_dc_block|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 15,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \u_dc_block|Mult0~8_AX_bus\,
	ay => \u_dc_block|Mult0~8_AY_bus\,
	resulta => \u_dc_block|Mult0~8_RESULTA_bus\);

-- Location: FF_X55_Y7_N47
\u_dc_block|y_prev[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|Add1~49_sumout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|y_prev\(14));

-- Location: FF_X55_Y7_N44
\u_dc_block|y_prev[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|Add1~45_sumout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|y_prev\(13));

-- Location: FF_X55_Y7_N40
\u_dc_block|y_prev[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|Add1~41_sumout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|y_prev\(12));

-- Location: FF_X55_Y7_N37
\u_dc_block|y_prev[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|Add1~37_sumout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|y_prev\(11));

-- Location: FF_X55_Y7_N35
\u_dc_block|y_prev[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|Add1~33_sumout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|y_prev\(10));

-- Location: FF_X55_Y7_N31
\u_dc_block|y_prev[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|Add1~29_sumout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|y_prev\(9));

-- Location: FF_X55_Y8_N59
\u_dc_block|y_prev[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|Add1~25_sumout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|y_prev\(8));

-- Location: FF_X55_Y8_N55
\u_dc_block|y_prev[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|Add1~21_sumout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|y_prev\(7));

-- Location: FF_X55_Y8_N52
\u_dc_block|y_prev[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|Add1~17_sumout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|y_prev\(6));

-- Location: LABCELL_X55_Y7_N51
\u_dc_block|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|Add1~5_sumout\ = SUM(( !\u_dc_block|Mult0~38\ $ (!\u_dc_block|x_prev\(15) $ (!\u_notch|sample_out\(15))) ) + ( \u_dc_block|Add1~11\ ) + ( \u_dc_block|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \u_dc_block|ALT_INV_Mult0~38\,
	datac => \u_dc_block|ALT_INV_x_prev\(15),
	datad => \u_notch|ALT_INV_sample_out\(15),
	cin => \u_dc_block|Add1~10\,
	sharein => \u_dc_block|Add1~11\,
	sumout => \u_dc_block|Add1~5_sumout\);

-- Location: MLABCELL_X52_Y7_N0
\u_dc_block|Add1~5_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|Add1~5_wirecell_combout\ = ( !\u_dc_block|Add1~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_dc_block|ALT_INV_Add1~5_sumout\,
	combout => \u_dc_block|Add1~5_wirecell_combout\);

-- Location: FF_X55_Y8_N50
\u_dc_block|y_prev[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|Add1~13_sumout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|y_prev\(5));

-- Location: FF_X55_Y8_N47
\u_dc_block|y_prev[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|Add1~1_sumout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|y_prev\(4));

-- Location: FF_X55_Y8_N43
\u_dc_block|y_prev[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|Add1~53_sumout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|y_prev\(3));

-- Location: FF_X55_Y8_N40
\u_dc_block|y_prev[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|Add1~57_sumout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|y_prev\(2));

-- Location: FF_X55_Y8_N38
\u_dc_block|y_prev[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|Add1~65_sumout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|y_prev\(1));

-- Location: FF_X55_Y8_N34
\u_dc_block|y_prev[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|Add1~61_sumout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|y_prev\(0));

-- Location: LABCELL_X55_Y8_N9
\u_dc_block|sample_out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|sample_out[5]~feeder_combout\ = ( \u_dc_block|Add1~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_dc_block|ALT_INV_Add1~13_sumout\,
	combout => \u_dc_block|sample_out[5]~feeder_combout\);

-- Location: FF_X55_Y8_N10
\u_dc_block|sample_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|sample_out[5]~feeder_combout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|sample_out\(5));

-- Location: LABCELL_X56_Y7_N0
\filtered_12bit[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \filtered_12bit[1]~feeder_combout\ = ( \u_dc_block|sample_out\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_dc_block|ALT_INV_sample_out\(5),
	combout => \filtered_12bit[1]~feeder_combout\);

-- Location: FF_X56_Y7_N1
\filtered_12bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \filtered_12bit[1]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_dc_block|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filtered_12bit(1));

-- Location: FF_X88_Y9_N35
\display_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => filtered_12bit(1),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \filtered_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_data(1));

-- Location: LABCELL_X55_Y8_N15
\u_dc_block|sample_out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|sample_out[7]~feeder_combout\ = \u_dc_block|Add1~21_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_dc_block|ALT_INV_Add1~21_sumout\,
	combout => \u_dc_block|sample_out[7]~feeder_combout\);

-- Location: FF_X55_Y8_N16
\u_dc_block|sample_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|sample_out[7]~feeder_combout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|sample_out\(7));

-- Location: FF_X56_Y7_N55
\filtered_12bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_dc_block|sample_out\(7),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_dc_block|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filtered_12bit(3));

-- Location: FF_X88_Y9_N8
\display_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => filtered_12bit(3),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \filtered_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_data(3));

-- Location: LABCELL_X55_Y8_N6
\u_dc_block|sample_out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|sample_out[6]~feeder_combout\ = ( \u_dc_block|Add1~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_dc_block|ALT_INV_Add1~17_sumout\,
	combout => \u_dc_block|sample_out[6]~feeder_combout\);

-- Location: FF_X55_Y8_N7
\u_dc_block|sample_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|sample_out[6]~feeder_combout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|sample_out\(6));

-- Location: LABCELL_X56_Y7_N3
\filtered_12bit[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \filtered_12bit[2]~feeder_combout\ = ( \u_dc_block|sample_out\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_dc_block|ALT_INV_sample_out\(6),
	combout => \filtered_12bit[2]~feeder_combout\);

-- Location: FF_X56_Y7_N4
\filtered_12bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \filtered_12bit[2]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_dc_block|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filtered_12bit(2));

-- Location: FF_X88_Y9_N53
\display_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => filtered_12bit(2),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \filtered_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_data(2));

-- Location: LABCELL_X55_Y8_N24
\u_dc_block|sample_out[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|sample_out[4]~feeder_combout\ = \u_dc_block|Add1~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_dc_block|ALT_INV_Add1~1_sumout\,
	combout => \u_dc_block|sample_out[4]~feeder_combout\);

-- Location: FF_X55_Y8_N25
\u_dc_block|sample_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|sample_out[4]~feeder_combout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|sample_out\(4));

-- Location: LABCELL_X56_Y7_N9
\filtered_12bit[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \filtered_12bit[0]~feeder_combout\ = ( \u_dc_block|sample_out\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_dc_block|ALT_INV_sample_out\(4),
	combout => \filtered_12bit[0]~feeder_combout\);

-- Location: FF_X56_Y7_N10
\filtered_12bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \filtered_12bit[0]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_dc_block|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filtered_12bit(0));

-- Location: FF_X88_Y9_N14
\display_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => filtered_12bit(0),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \filtered_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_data(0));

-- Location: LABCELL_X88_Y9_N48
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( display_data(0) & ( (!display_data(1) & (!display_data(3) $ (display_data(2)))) # (display_data(1) & (display_data(3) & !display_data(2))) ) ) # ( !display_data(0) & ( (!display_data(1) & (!display_data(3) & display_data(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010010010100100101001001010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_data(1),
	datab => ALT_INV_display_data(3),
	datac => ALT_INV_display_data(2),
	dataf => ALT_INV_display_data(0),
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X88_Y9_N0
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( display_data(3) & ( (!display_data(0) & ((display_data(2)))) # (display_data(0) & (display_data(1))) ) ) # ( !display_data(3) & ( (display_data(2) & (!display_data(1) $ (!display_data(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_data(1),
	datab => ALT_INV_display_data(0),
	datac => ALT_INV_display_data(2),
	dataf => ALT_INV_display_data(3),
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X88_Y9_N3
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( display_data(2) & ( (display_data(3) & ((!display_data(0)) # (display_data(1)))) ) ) # ( !display_data(2) & ( (display_data(1) & (!display_data(0) & !display_data(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_data(1),
	datab => ALT_INV_display_data(0),
	datac => ALT_INV_display_data(3),
	dataf => ALT_INV_display_data(2),
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X88_Y9_N54
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( display_data(3) & ( (display_data(1) & (!display_data(0) $ (display_data(2)))) ) ) # ( !display_data(3) & ( (!display_data(1) & (!display_data(0) $ (!display_data(2)))) # (display_data(1) & (display_data(0) & display_data(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100101000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_data(1),
	datab => ALT_INV_display_data(0),
	datac => ALT_INV_display_data(2),
	dataf => ALT_INV_display_data(3),
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X88_Y9_N27
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( display_data(2) & ( (!display_data(3) & ((!display_data(1)) # (display_data(0)))) ) ) # ( !display_data(2) & ( (display_data(0) & ((!display_data(1)) # (!display_data(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001100100011001010110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_data(1),
	datab => ALT_INV_display_data(0),
	datac => ALT_INV_display_data(3),
	dataf => ALT_INV_display_data(2),
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X88_Y9_N57
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( display_data(2) & ( (display_data(0) & (!display_data(1) $ (!display_data(3)))) ) ) # ( !display_data(2) & ( (!display_data(3) & ((display_data(0)) # (display_data(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_data(1),
	datab => ALT_INV_display_data(0),
	datac => ALT_INV_display_data(3),
	dataf => ALT_INV_display_data(2),
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X88_Y9_N24
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( display_data(3) & ( ((!display_data(2)) # (display_data(0))) # (display_data(1)) ) ) # ( !display_data(3) & ( (!display_data(1) & ((display_data(2)))) # (display_data(1) & ((!display_data(0)) # (!display_data(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111001011110010111100101111011110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_data(1),
	datab => ALT_INV_display_data(0),
	datac => ALT_INV_display_data(2),
	dataf => ALT_INV_display_data(3),
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X55_Y7_N9
\u_dc_block|sample_out[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|sample_out[11]~feeder_combout\ = \u_dc_block|Add1~37_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_dc_block|ALT_INV_Add1~37_sumout\,
	combout => \u_dc_block|sample_out[11]~feeder_combout\);

-- Location: FF_X55_Y7_N10
\u_dc_block|sample_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|sample_out[11]~feeder_combout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|sample_out\(11));

-- Location: FF_X56_Y7_N43
\filtered_12bit[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_dc_block|sample_out\(11),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_dc_block|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filtered_12bit[7]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y8_N18
\display_data[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_data[7]~feeder_combout\ = ( \filtered_12bit[7]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_filtered_12bit[7]~DUPLICATE_q\,
	combout => \display_data[7]~feeder_combout\);

-- Location: FF_X84_Y8_N20
\display_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \display_data[7]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \filtered_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_data(7));

-- Location: LABCELL_X55_Y7_N24
\u_dc_block|sample_out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|sample_out[9]~feeder_combout\ = \u_dc_block|Add1~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_dc_block|ALT_INV_Add1~29_sumout\,
	combout => \u_dc_block|sample_out[9]~feeder_combout\);

-- Location: FF_X55_Y7_N25
\u_dc_block|sample_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|sample_out[9]~feeder_combout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|sample_out\(9));

-- Location: FF_X56_Y7_N49
\filtered_12bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_dc_block|sample_out\(9),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_dc_block|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filtered_12bit(5));

-- Location: MLABCELL_X84_Y8_N54
\display_data[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_data[5]~feeder_combout\ = ( filtered_12bit(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_filtered_12bit(5),
	combout => \display_data[5]~feeder_combout\);

-- Location: FF_X84_Y8_N55
\display_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \display_data[5]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \filtered_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_data(5));

-- Location: LABCELL_X55_Y7_N6
\u_dc_block|sample_out[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|sample_out[10]~feeder_combout\ = \u_dc_block|Add1~33_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_dc_block|ALT_INV_Add1~33_sumout\,
	combout => \u_dc_block|sample_out[10]~feeder_combout\);

-- Location: FF_X55_Y7_N7
\u_dc_block|sample_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|sample_out[10]~feeder_combout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|sample_out\(10));

-- Location: FF_X56_Y7_N53
\filtered_12bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_dc_block|sample_out\(10),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_dc_block|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filtered_12bit(6));

-- Location: MLABCELL_X84_Y8_N36
\display_data[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_data[6]~feeder_combout\ = ( filtered_12bit(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_filtered_12bit(6),
	combout => \display_data[6]~feeder_combout\);

-- Location: FF_X84_Y8_N38
\display_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \display_data[6]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \filtered_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_data(6));

-- Location: LABCELL_X55_Y8_N12
\u_dc_block|sample_out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|sample_out[8]~feeder_combout\ = \u_dc_block|Add1~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_dc_block|ALT_INV_Add1~25_sumout\,
	combout => \u_dc_block|sample_out[8]~feeder_combout\);

-- Location: FF_X55_Y8_N14
\u_dc_block|sample_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|sample_out[8]~feeder_combout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|sample_out\(8));

-- Location: FF_X56_Y7_N58
\filtered_12bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_dc_block|sample_out\(8),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_dc_block|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filtered_12bit(4));

-- Location: MLABCELL_X84_Y8_N24
\display_data[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_data[4]~feeder_combout\ = ( filtered_12bit(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_filtered_12bit(4),
	combout => \display_data[4]~feeder_combout\);

-- Location: FF_X84_Y8_N26
\display_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \display_data[4]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \filtered_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_data(4));

-- Location: MLABCELL_X84_Y8_N3
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( display_data(6) & ( display_data(4) & ( (display_data(7) & !display_data(5)) ) ) ) # ( !display_data(6) & ( display_data(4) & ( !display_data(7) $ (display_data(5)) ) ) ) # ( display_data(6) & ( !display_data(4) & ( (!display_data(7) 
-- & !display_data(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000010100101101001010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_data(7),
	datac => ALT_INV_display_data(5),
	datae => ALT_INV_display_data(6),
	dataf => ALT_INV_display_data(4),
	combout => \Mux13~0_combout\);

-- Location: MLABCELL_X84_Y8_N6
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( display_data(6) & ( (!display_data(4) & ((display_data(7)) # (display_data(5)))) # (display_data(4) & (!display_data(5) $ (display_data(7)))) ) ) # ( !display_data(6) & ( (display_data(4) & (display_data(5) & display_data(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001011010110110101100000001000000010110101101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_data(4),
	datab => ALT_INV_display_data(5),
	datac => ALT_INV_display_data(7),
	datae => ALT_INV_display_data(6),
	combout => \Mux12~0_combout\);

-- Location: MLABCELL_X84_Y8_N12
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( display_data(6) & ( (display_data(7) & ((!display_data(4)) # (display_data(5)))) ) ) # ( !display_data(6) & ( (!display_data(4) & (display_data(5) & !display_data(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000000010110000101100100000001000000000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_data(4),
	datab => ALT_INV_display_data(5),
	datac => ALT_INV_display_data(7),
	datae => ALT_INV_display_data(6),
	combout => \Mux11~0_combout\);

-- Location: MLABCELL_X84_Y8_N33
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( display_data(6) & ( display_data(4) & ( display_data(5) ) ) ) # ( !display_data(6) & ( display_data(4) & ( (!display_data(7) & !display_data(5)) ) ) ) # ( display_data(6) & ( !display_data(4) & ( (!display_data(7) & !display_data(5)) 
-- ) ) ) # ( !display_data(6) & ( !display_data(4) & ( (display_data(7) & display_data(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101000001010000010100000101000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_data(7),
	datac => ALT_INV_display_data(5),
	datae => ALT_INV_display_data(6),
	dataf => ALT_INV_display_data(4),
	combout => \Mux10~0_combout\);

-- Location: MLABCELL_X84_Y8_N48
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( display_data(6) & ( (!display_data(7) & ((!display_data(5)) # (display_data(4)))) ) ) # ( !display_data(6) & ( (display_data(4) & ((!display_data(5)) # (!display_data(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100110100001101000001010100010101001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_data(4),
	datab => ALT_INV_display_data(5),
	datac => ALT_INV_display_data(7),
	datae => ALT_INV_display_data(6),
	combout => \Mux9~0_combout\);

-- Location: MLABCELL_X84_Y8_N42
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( display_data(7) & ( (display_data(4) & (!display_data(5) & display_data(6))) ) ) # ( !display_data(7) & ( (!display_data(4) & (display_data(5) & !display_data(6))) # (display_data(4) & ((!display_data(6)) # (display_data(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_data(4),
	datab => ALT_INV_display_data(5),
	datac => ALT_INV_display_data(6),
	dataf => ALT_INV_display_data(7),
	combout => \Mux8~0_combout\);

-- Location: MLABCELL_X84_Y8_N45
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( display_data(7) & ( ((!display_data(6)) # (display_data(5))) # (display_data(4)) ) ) # ( !display_data(7) & ( (!display_data(5) & ((display_data(6)))) # (display_data(5) & ((!display_data(4)) # (!display_data(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111101110001100111110111011111111011101111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_data(4),
	datab => ALT_INV_display_data(5),
	datad => ALT_INV_display_data(6),
	dataf => ALT_INV_display_data(7),
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X55_Y7_N57
\u_dc_block|sample_out[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|sample_out[15]~feeder_combout\ = ( \u_dc_block|Add1~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_dc_block|ALT_INV_Add1~9_sumout\,
	combout => \u_dc_block|sample_out[15]~feeder_combout\);

-- Location: FF_X55_Y7_N58
\u_dc_block|sample_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|sample_out[15]~feeder_combout\,
	asdata => \u_dc_block|Add1~5_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|sample_out\(15));

-- Location: LABCELL_X56_Y7_N30
\filtered_12bit[11]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \filtered_12bit[11]~0_combout\ = ( !\u_dc_block|sample_out\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_dc_block|ALT_INV_sample_out\(15),
	combout => \filtered_12bit[11]~0_combout\);

-- Location: FF_X56_Y7_N31
\filtered_12bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \filtered_12bit[11]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_dc_block|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filtered_12bit(11));

-- Location: FF_X88_Y9_N41
\display_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => filtered_12bit(11),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \filtered_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_data(11));

-- Location: LABCELL_X55_Y7_N15
\u_dc_block|sample_out[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|sample_out[12]~feeder_combout\ = \u_dc_block|Add1~41_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_dc_block|ALT_INV_Add1~41_sumout\,
	combout => \u_dc_block|sample_out[12]~feeder_combout\);

-- Location: FF_X55_Y7_N16
\u_dc_block|sample_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|sample_out[12]~feeder_combout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|sample_out\(12));

-- Location: LABCELL_X56_Y7_N24
\filtered_12bit[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \filtered_12bit[8]~feeder_combout\ = \u_dc_block|sample_out\(12)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_dc_block|ALT_INV_sample_out\(12),
	combout => \filtered_12bit[8]~feeder_combout\);

-- Location: FF_X56_Y7_N25
\filtered_12bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \filtered_12bit[8]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_dc_block|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filtered_12bit(8));

-- Location: LABCELL_X88_Y9_N21
\display_data[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_data[8]~feeder_combout\ = ( filtered_12bit(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_filtered_12bit(8),
	combout => \display_data[8]~feeder_combout\);

-- Location: FF_X88_Y9_N23
\display_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \display_data[8]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \filtered_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_data(8));

-- Location: LABCELL_X55_Y7_N12
\u_dc_block|sample_out[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|sample_out[13]~feeder_combout\ = \u_dc_block|Add1~45_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_dc_block|ALT_INV_Add1~45_sumout\,
	combout => \u_dc_block|sample_out[13]~feeder_combout\);

-- Location: FF_X55_Y7_N13
\u_dc_block|sample_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|sample_out[13]~feeder_combout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|sample_out\(13));

-- Location: FF_X56_Y7_N46
\filtered_12bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_dc_block|sample_out\(13),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_dc_block|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filtered_12bit(9));

-- Location: FF_X88_Y9_N38
\display_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => filtered_12bit(9),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \filtered_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_data(9));

-- Location: LABCELL_X55_Y7_N27
\u_dc_block|sample_out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_dc_block|sample_out[14]~feeder_combout\ = \u_dc_block|Add1~49_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_dc_block|ALT_INV_Add1~49_sumout\,
	combout => \u_dc_block|sample_out[14]~feeder_combout\);

-- Location: FF_X55_Y7_N28
\u_dc_block|sample_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_dc_block|sample_out[14]~feeder_combout\,
	asdata => \u_dc_block|Add1~5_wirecell_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \u_dc_block|p_filter~0_combout\,
	ena => \u_notch|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_dc_block|sample_out\(14));

-- Location: FF_X56_Y7_N28
\filtered_12bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_dc_block|sample_out\(14),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_dc_block|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filtered_12bit(10));

-- Location: LABCELL_X88_Y9_N18
\display_data[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \display_data[10]~feeder_combout\ = ( filtered_12bit(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_filtered_12bit(10),
	combout => \display_data[10]~feeder_combout\);

-- Location: FF_X88_Y9_N20
\display_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \display_data[10]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \filtered_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display_data(10));

-- Location: LABCELL_X88_Y9_N42
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( display_data(10) & ( (!display_data(9) & (!display_data(11) $ (display_data(8)))) ) ) # ( !display_data(10) & ( (display_data(8) & (!display_data(11) $ (display_data(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011000011000000001111000011000000001100001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_display_data(11),
	datac => ALT_INV_display_data(8),
	datad => ALT_INV_display_data(9),
	dataf => ALT_INV_display_data(10),
	combout => \Mux20~0_combout\);

-- Location: LABCELL_X88_Y9_N45
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( display_data(10) & ( (!display_data(8) & ((display_data(9)) # (display_data(11)))) # (display_data(8) & (!display_data(11) $ (display_data(9)))) ) ) # ( !display_data(10) & ( (display_data(8) & (display_data(11) & display_data(9))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101100110101110110110011010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_data(8),
	datab => ALT_INV_display_data(11),
	datad => ALT_INV_display_data(9),
	dataf => ALT_INV_display_data(10),
	combout => \Mux19~0_combout\);

-- Location: LABCELL_X88_Y9_N30
\Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( display_data(8) & ( (display_data(9) & (display_data(10) & display_data(11))) ) ) # ( !display_data(8) & ( (!display_data(10) & (display_data(9) & !display_data(11))) # (display_data(10) & ((display_data(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001111000000000000010101010000000011110000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_data(9),
	datac => ALT_INV_display_data(10),
	datad => ALT_INV_display_data(11),
	datae => ALT_INV_display_data(8),
	combout => \Mux18~0_combout\);

-- Location: LABCELL_X88_Y9_N9
\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( display_data(8) & ( display_data(10) & ( display_data(9) ) ) ) # ( !display_data(8) & ( display_data(10) & ( (!display_data(9) & !display_data(11)) ) ) ) # ( display_data(8) & ( !display_data(10) & ( (!display_data(9) & 
-- !display_data(11)) ) ) ) # ( !display_data(8) & ( !display_data(10) & ( (display_data(9) & display_data(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001100010001000100010001000100010000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_data(9),
	datab => ALT_INV_display_data(11),
	datae => ALT_INV_display_data(8),
	dataf => ALT_INV_display_data(10),
	combout => \Mux17~0_combout\);

-- Location: LABCELL_X88_Y9_N36
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( display_data(11) & ( (display_data(8) & (!display_data(10) & !display_data(9))) ) ) # ( !display_data(11) & ( ((display_data(10) & !display_data(9))) # (display_data(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010101010111110101010101010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_data(8),
	datac => ALT_INV_display_data(10),
	datad => ALT_INV_display_data(9),
	dataf => ALT_INV_display_data(11),
	combout => \Mux16~0_combout\);

-- Location: LABCELL_X88_Y9_N15
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( display_data(8) & ( display_data(10) & ( !display_data(9) $ (!display_data(11)) ) ) ) # ( display_data(8) & ( !display_data(10) & ( !display_data(11) ) ) ) # ( !display_data(8) & ( !display_data(10) & ( (display_data(9) & 
-- !display_data(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100110011001100110000000000000000000110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_data(9),
	datab => ALT_INV_display_data(11),
	datae => ALT_INV_display_data(8),
	dataf => ALT_INV_display_data(10),
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X88_Y9_N39
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( display_data(10) & ( (!display_data(8) & ((!display_data(11)) # (display_data(9)))) # (display_data(8) & ((!display_data(9)) # (display_data(11)))) ) ) # ( !display_data(10) & ( (display_data(11)) # (display_data(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111010010111111111101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_display_data(8),
	datac => ALT_INV_display_data(9),
	datad => ALT_INV_display_data(11),
	dataf => ALT_INV_display_data(10),
	combout => \Mux14~0_combout\);

-- Location: LABCELL_X40_Y2_N3
\u_adc_driver|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Selector1~0_combout\ = ( \u_adc_driver|state.S_DONE~q\ & ( (\u_adc_driver|adc_convst~q\) # (\u_adc_driver|state.S_CONVST~q\) ) ) # ( !\u_adc_driver|state.S_DONE~q\ & ( ((\u_adc_driver|state.S_SHIFT~q\ & \u_adc_driver|adc_convst~q\)) # 
-- (\u_adc_driver|state.S_CONVST~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_state.S_SHIFT~q\,
	datac => \u_adc_driver|ALT_INV_state.S_CONVST~q\,
	datad => \u_adc_driver|ALT_INV_adc_convst~q\,
	dataf => \u_adc_driver|ALT_INV_state.S_DONE~q\,
	combout => \u_adc_driver|Selector1~0_combout\);

-- Location: FF_X40_Y2_N4
\u_adc_driver|adc_convst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|Selector1~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|adc_convst~q\);

-- Location: LABCELL_X37_Y2_N21
\u_adc_driver|Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Selector2~2_combout\ = ( !\u_adc_driver|clk_cnt\(0) & ( (\u_adc_driver|state.S_SHIFT~q\ & !\u_adc_driver|clk_cnt\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_state.S_SHIFT~q\,
	datac => \u_adc_driver|ALT_INV_clk_cnt\(1),
	dataf => \u_adc_driver|ALT_INV_clk_cnt\(0),
	combout => \u_adc_driver|Selector2~2_combout\);

-- Location: LABCELL_X37_Y2_N0
\u_adc_driver|tx_reg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|tx_reg[1]~1_combout\ = ( !\u_adc_driver|state.S_SHIFT~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \u_adc_driver|ALT_INV_state.S_SHIFT~q\,
	combout => \u_adc_driver|tx_reg[1]~1_combout\);

-- Location: LABCELL_X37_Y2_N57
\u_adc_driver|tx_reg[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|tx_reg[2]~0_combout\ = ( \u_adc_driver|state.S_SHIFT~q\ & ( \u_sample_clock|sample_tick~q\ & ( (!\u_adc_driver|state.S_IDLE~DUPLICATE_q\) # ((\u_adc_driver|clk_cnt\(0) & \u_adc_driver|clk_cnt\(1))) ) ) ) # ( !\u_adc_driver|state.S_SHIFT~q\ & 
-- ( \u_sample_clock|sample_tick~q\ & ( !\u_adc_driver|state.S_IDLE~DUPLICATE_q\ ) ) ) # ( \u_adc_driver|state.S_SHIFT~q\ & ( !\u_sample_clock|sample_tick~q\ & ( (\u_adc_driver|clk_cnt\(0) & \u_adc_driver|clk_cnt\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000111110000111100001111000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_clk_cnt\(0),
	datab => \u_adc_driver|ALT_INV_clk_cnt\(1),
	datac => \u_adc_driver|ALT_INV_state.S_IDLE~DUPLICATE_q\,
	datae => \u_adc_driver|ALT_INV_state.S_SHIFT~q\,
	dataf => \u_sample_clock|ALT_INV_sample_tick~q\,
	combout => \u_adc_driver|tx_reg[2]~0_combout\);

-- Location: FF_X37_Y2_N2
\u_adc_driver|tx_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|tx_reg[1]~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_adc_driver|tx_reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|tx_reg\(1));

-- Location: LABCELL_X37_Y2_N18
\u_adc_driver|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Selector7~0_combout\ = (\u_adc_driver|state.S_SHIFT~q\ & \u_adc_driver|tx_reg\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_state.S_SHIFT~q\,
	datac => \u_adc_driver|ALT_INV_tx_reg\(1),
	combout => \u_adc_driver|Selector7~0_combout\);

-- Location: FF_X37_Y2_N19
\u_adc_driver|tx_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|Selector7~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_adc_driver|tx_reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|tx_reg\(2));

-- Location: LABCELL_X37_Y2_N27
\u_adc_driver|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Selector6~0_combout\ = ( \u_adc_driver|tx_reg\(2) & ( \u_adc_driver|state.S_SHIFT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_state.S_SHIFT~q\,
	dataf => \u_adc_driver|ALT_INV_tx_reg\(2),
	combout => \u_adc_driver|Selector6~0_combout\);

-- Location: FF_X37_Y2_N29
\u_adc_driver|tx_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|Selector6~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_adc_driver|tx_reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|tx_reg\(3));

-- Location: LABCELL_X37_Y2_N24
\u_adc_driver|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Selector5~0_combout\ = (\u_adc_driver|state.S_SHIFT~q\ & \u_adc_driver|tx_reg\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_state.S_SHIFT~q\,
	datac => \u_adc_driver|ALT_INV_tx_reg\(3),
	combout => \u_adc_driver|Selector5~0_combout\);

-- Location: FF_X37_Y2_N25
\u_adc_driver|tx_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|Selector5~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_adc_driver|tx_reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|tx_reg\(4));

-- Location: LABCELL_X37_Y2_N51
\u_adc_driver|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Selector4~0_combout\ = ( \u_adc_driver|state.S_SHIFT~q\ & ( \u_adc_driver|tx_reg\(4) ) ) # ( !\u_adc_driver|state.S_SHIFT~q\ & ( \u_adc_driver|tx_reg\(4) ) ) # ( !\u_adc_driver|state.S_SHIFT~q\ & ( !\u_adc_driver|tx_reg\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \u_adc_driver|ALT_INV_state.S_SHIFT~q\,
	dataf => \u_adc_driver|ALT_INV_tx_reg\(4),
	combout => \u_adc_driver|Selector4~0_combout\);

-- Location: FF_X37_Y2_N53
\u_adc_driver|tx_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|Selector4~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_adc_driver|tx_reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|tx_reg\(5));

-- Location: FF_X40_Y2_N40
\u_adc_driver|state.S_CONVST~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|Selector13~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|state.S_CONVST~DUPLICATE_q\);

-- Location: LABCELL_X37_Y2_N30
\u_adc_driver|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Selector2~1_combout\ = ( \u_adc_driver|clk_cnt\(0) & ( (!\u_adc_driver|state.S_SHIFT~q\ & !\u_adc_driver|state.S_CONVST~DUPLICATE_q\) ) ) # ( !\u_adc_driver|clk_cnt\(0) & ( (!\u_adc_driver|state.S_CONVST~DUPLICATE_q\ & 
-- ((!\u_adc_driver|state.S_SHIFT~q\) # (!\u_adc_driver|clk_cnt\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_state.S_SHIFT~q\,
	datab => \u_adc_driver|ALT_INV_clk_cnt\(1),
	datac => \u_adc_driver|ALT_INV_state.S_CONVST~DUPLICATE_q\,
	dataf => \u_adc_driver|ALT_INV_clk_cnt\(0),
	combout => \u_adc_driver|Selector2~1_combout\);

-- Location: LABCELL_X37_Y2_N15
\u_adc_driver|Selector2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Selector2~3_combout\ = ( \u_adc_driver|adc_din~q\ & ( \u_adc_driver|Selector2~1_combout\ & ( ((\u_adc_driver|tx_reg\(5) & ((\u_adc_driver|Selector2~2_combout\) # (\u_adc_driver|Selector16~0_combout\)))) # (\u_adc_driver|Selector2~0_combout\) 
-- ) ) ) # ( !\u_adc_driver|adc_din~q\ & ( \u_adc_driver|Selector2~1_combout\ & ( (\u_adc_driver|tx_reg\(5) & ((\u_adc_driver|Selector2~2_combout\) # (\u_adc_driver|Selector16~0_combout\))) ) ) ) # ( \u_adc_driver|adc_din~q\ & ( 
-- !\u_adc_driver|Selector2~1_combout\ ) ) # ( !\u_adc_driver|adc_din~q\ & ( !\u_adc_driver|Selector2~1_combout\ & ( (\u_adc_driver|tx_reg\(5) & ((\u_adc_driver|Selector2~2_combout\) # (\u_adc_driver|Selector16~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111111111111111111100000000011101110000111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_Selector16~0_combout\,
	datab => \u_adc_driver|ALT_INV_Selector2~2_combout\,
	datac => \u_adc_driver|ALT_INV_Selector2~0_combout\,
	datad => \u_adc_driver|ALT_INV_tx_reg\(5),
	datae => \u_adc_driver|ALT_INV_adc_din~q\,
	dataf => \u_adc_driver|ALT_INV_Selector2~1_combout\,
	combout => \u_adc_driver|Selector2~3_combout\);

-- Location: FF_X37_Y2_N16
\u_adc_driver|adc_din\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|Selector2~3_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|adc_din~q\);

-- Location: LABCELL_X37_Y2_N6
\u_adc_driver|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_adc_driver|Selector0~0_combout\ = ( \u_adc_driver|sclk_int~q\ & ( \u_adc_driver|state.S_CONVST~DUPLICATE_q\ ) ) # ( !\u_adc_driver|sclk_int~q\ & ( \u_adc_driver|state.S_CONVST~DUPLICATE_q\ & ( (\u_adc_driver|clk_cnt\(0) & (!\u_adc_driver|clk_cnt\(1) & 
-- \u_adc_driver|state.S_SHIFT~q\)) ) ) ) # ( \u_adc_driver|sclk_int~q\ & ( !\u_adc_driver|state.S_CONVST~DUPLICATE_q\ & ( ((\u_adc_driver|state.S_SHIFT~q\ & (!\u_adc_driver|clk_cnt\(0) $ (!\u_adc_driver|clk_cnt\(1))))) # (\u_adc_driver|state.S_WAIT~q\) ) ) 
-- ) # ( !\u_adc_driver|sclk_int~q\ & ( !\u_adc_driver|state.S_CONVST~DUPLICATE_q\ & ( (\u_adc_driver|clk_cnt\(0) & (!\u_adc_driver|clk_cnt\(1) & \u_adc_driver|state.S_SHIFT~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001101111111100000100000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc_driver|ALT_INV_clk_cnt\(0),
	datab => \u_adc_driver|ALT_INV_clk_cnt\(1),
	datac => \u_adc_driver|ALT_INV_state.S_SHIFT~q\,
	datad => \u_adc_driver|ALT_INV_state.S_WAIT~q\,
	datae => \u_adc_driver|ALT_INV_sclk_int~q\,
	dataf => \u_adc_driver|ALT_INV_state.S_CONVST~DUPLICATE_q\,
	combout => \u_adc_driver|Selector0~0_combout\);

-- Location: FF_X37_Y2_N7
\u_adc_driver|sclk_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_adc_driver|Selector0~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc_driver|sclk_int~q\);

-- Location: IOIBUF_X11_Y0_N7
\altera_reserved_tms~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tms,
	o => \altera_reserved_tms~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\altera_reserved_tck~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tck,
	o => \altera_reserved_tck~input_o\);

-- Location: IOIBUF_X13_Y0_N7
\altera_reserved_tdi~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tdi,
	o => \altera_reserved_tdi~input_o\);

-- Location: JTAG_X0_Y2_N3
altera_internal_jtag : cyclonev_jtag
PORT MAP (
	tms => \altera_reserved_tms~input_o\,
	tck => \altera_reserved_tck~input_o\,
	tdi => \altera_reserved_tdi~input_o\,
	tdouser => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: LABCELL_X2_Y4_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\);

-- Location: FF_X1_Y2_N44
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9));

-- Location: LABCELL_X1_Y4_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(9),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\);

-- Location: FF_X1_Y4_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10));

-- Location: LABCELL_X2_Y4_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111111111111111111101011111010111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(10),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(14),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(11),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\);

-- Location: FF_X2_Y4_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11));

-- Location: LABCELL_X1_Y4_N51
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(11),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(10),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\);

-- Location: FF_X1_Y4_N53
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12));

-- Location: LABCELL_X2_Y4_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(12),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(13),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\);

-- Location: FF_X2_Y4_N44
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13));

-- Location: LABCELL_X1_Y2_N54
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(13),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\);

-- Location: FF_X1_Y2_N56
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14));

-- Location: LABCELL_X1_Y4_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(14),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(12),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\);

-- Location: FF_X1_Y2_N59
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15));

-- Location: LABCELL_X1_Y4_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\);

-- Location: FF_X1_Y4_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0));

-- Location: LABCELL_X2_Y4_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_tms_cnt\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_tms_cnt\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\);

-- Location: FF_X1_Y4_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1));

-- Location: LABCELL_X1_Y4_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_tms_cnt\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_tms_cnt\(1),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_tms_cnt\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\);

-- Location: FF_X1_Y4_N50
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2));

-- Location: LABCELL_X1_Y4_N48
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111100110011001111110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(9),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_tms_cnt\(2),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\);

-- Location: FF_X1_Y4_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0));

-- Location: LABCELL_X2_Y4_N45
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011111110111111111111111111111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(15),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(1),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\);

-- Location: FF_X1_Y2_N41
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1));

-- Location: LABCELL_X2_Y4_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(15),
	dataf => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\);

-- Location: FF_X1_Y2_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2));

-- Location: LABCELL_X2_Y4_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(2),
	datab => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\);

-- Location: FF_X2_Y4_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3));

-- Location: MLABCELL_X8_Y2_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(5),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\);

-- Location: LABCELL_X1_Y2_N39
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state~6_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]~feeder_combout\);

-- Location: FF_X1_Y2_N40
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]~feeder_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6));

-- Location: LABCELL_X1_Y2_N36
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\);

-- Location: FF_X1_Y2_N38
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7));

-- Location: LABCELL_X2_Y4_N36
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(7),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\);

-- Location: FF_X1_Y2_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4));

-- Location: LABCELL_X1_Y2_N45
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000001111111100000000001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datad => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\);

-- Location: FF_X1_Y2_N47
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5));

-- Location: LABCELL_X1_Y2_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(7),
	dataf => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\);

-- Location: FF_X1_Y2_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8));

-- Location: LABCELL_X1_Y4_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\);

-- Location: FF_X1_Y4_N38
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9));

-- Location: LABCELL_X1_Y4_N39
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(9),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]~feeder_combout\);

-- Location: FF_X1_Y4_N40
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]~DUPLICATE_q\);

-- Location: FF_X1_Y4_N43
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]~DUPLICATE_q\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~DUPLICATE_q\);

-- Location: FF_X1_Y4_N46
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~DUPLICATE_q\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~DUPLICATE_q\);

-- Location: FF_X1_Y4_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~DUPLICATE_q\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5));

-- Location: FF_X1_Y4_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4));

-- Location: FF_X1_Y4_N34
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3));

-- Location: LABCELL_X1_Y4_N57
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X1_Y4_N58
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2));

-- Location: FF_X1_Y4_N55
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1));

-- Location: LABCELL_X1_Y4_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X1_Y4_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0));

-- Location: FF_X1_Y4_N47
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~DUPLICATE_q\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6));

-- Location: FF_X1_Y4_N41
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8));

-- Location: FF_X1_Y4_N44
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]~DUPLICATE_q\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7));

-- Location: LABCELL_X1_Y4_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(5),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(6),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(9),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(8),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\);

-- Location: LABCELL_X2_Y4_N48
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_Equal0~0_combout\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(2),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\);

-- Location: FF_X2_Y4_N50
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\);

-- Location: LABCELL_X1_Y2_N57
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~14\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(7),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~14_combout\);

-- Location: LABCELL_X2_Y2_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[2]~DUPLICATE_q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\);

-- Location: MLABCELL_X6_Y2_N24
\~QIC_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):
-- \~QIC_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~QIC_CREATED_GND~I_combout\);

-- Location: MLABCELL_X6_Y2_N57
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000110111010000000000010001111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_altera_internal_jtag~TDIUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(4),
	dataf => \ALT_INV_~QIC_CREATED_GND~I_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\);

-- Location: MLABCELL_X6_Y2_N36
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg~4_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]~feeder_combout\);

-- Location: FF_X6_Y2_N38
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4));

-- Location: MLABCELL_X6_Y2_N51
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011101000011000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\(0),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~1_combout\);

-- Location: FF_X2_Y2_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1));

-- Location: LABCELL_X2_Y2_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal3~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(1),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[2]~DUPLICATE_q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal3~1_combout\);

-- Location: LABCELL_X2_Y2_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111110111111111100000000000000001111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state~14_combout\,
	datac => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_Equal3~1_combout\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\(0),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~3_combout\);

-- Location: FF_X2_Y2_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0));

-- Location: LABCELL_X2_Y2_N45
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001010101000001111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\);

-- Location: MLABCELL_X6_Y2_N42
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~feeder_combout\);

-- Location: FF_X6_Y2_N43
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3));

-- Location: LABCELL_X2_Y2_N54
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~2_combout\);

-- Location: FF_X2_Y2_N55
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~DUPLICATE_q\);

-- Location: LABCELL_X4_Y2_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[2]~DUPLICATE_q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(1),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~1_combout\);

-- Location: FF_X2_Y2_N56
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2));

-- Location: LABCELL_X1_Y2_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(5),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(7),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	dataf => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\);

-- Location: LABCELL_X2_Y2_N48
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101011100000001000101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(1),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_reset_ena_reg_proc~0_combout\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~0_combout\);

-- Location: FF_X2_Y2_N53
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1));

-- Location: FF_X1_Y2_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\);

-- Location: LABCELL_X2_Y2_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011010100000011001101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg[2]~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_reset_ena_reg~q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~2_combout\);

-- Location: FF_X2_Y2_N34
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2));

-- Location: LABCELL_X1_Y4_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\);

-- Location: FF_X1_Y4_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\);

-- Location: FF_X2_Y2_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0));

-- Location: LABCELL_X2_Y2_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110010001101110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(0),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state~14_combout\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\);

-- Location: FF_X2_Y2_N44
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\);

-- Location: LABCELL_X2_Y2_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\);

-- Location: FF_X2_Y2_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[0]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y2_N36
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[2]~DUPLICATE_q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\);

-- Location: LABCELL_X1_Y2_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_bypass_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	dataf => \ALT_INV_altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\);

-- Location: FF_X1_Y2_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\);

-- Location: LABCELL_X1_Y2_N51
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datac => \ALT_INV_altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\);

-- Location: FF_X1_Y2_N52
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3));

-- Location: LABCELL_X1_Y2_N48
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_minor_ver_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\);

-- Location: FF_X1_Y2_N49
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2));

-- Location: LABCELL_X1_Y2_N33
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_minor_ver_reg\(2),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\);

-- Location: FF_X1_Y2_N34
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1));

-- Location: LABCELL_X1_Y2_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_minor_ver_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\);

-- Location: FF_X1_Y2_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0));

-- Location: LABCELL_X1_Y2_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000001010101111111100101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[0]~DUPLICATE_q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~0_combout\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_bypass_reg~q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_minor_ver_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\);

-- Location: LABCELL_X2_Y2_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011110000011100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(2),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\);

-- Location: LABCELL_X2_Y2_N39
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal3~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[2]~DUPLICATE_q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(0),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal3~0_combout\);

-- Location: LABCELL_X2_Y4_N54
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_Equal0~0_combout\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(2),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\);

-- Location: FF_X2_Y4_N56
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\);

-- Location: LABCELL_X4_Y2_N33
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\);

-- Location: MLABCELL_X3_Y3_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\);

-- Location: MLABCELL_X6_Y2_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~4\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[0]~DUPLICATE_q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~4_combout\);

-- Location: LABCELL_X4_Y2_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~1_combout\);

-- Location: FF_X3_Y2_N49
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~4_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y2_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~5\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[0]~DUPLICATE_q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~5_combout\);

-- Location: FF_X3_Y2_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~5_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1));

-- Location: MLABCELL_X6_Y2_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001001110010011100100111001001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[0]~DUPLICATE_q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~2_combout\);

-- Location: FF_X3_Y2_N41
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~2_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2));

-- Location: MLABCELL_X3_Y2_N51
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(1),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[0]~DUPLICATE_q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~3_combout\);

-- Location: FF_X3_Y2_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~3_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3));

-- Location: MLABCELL_X6_Y2_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010111111111010101011111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(2),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[0]~DUPLICATE_q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~0_combout\);

-- Location: FF_X3_Y2_N38
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~0_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4));

-- Location: MLABCELL_X3_Y2_N39
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[0]~DUPLICATE_q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(2),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~0_combout\);

-- Location: MLABCELL_X3_Y2_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010101010100010001000100000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[0]~DUPLICATE_q\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(1),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~1_combout\);

-- Location: LABCELL_X4_Y2_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: LABCELL_X4_Y2_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[0]~DUPLICATE_q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[2]~DUPLICATE_q\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(1),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\);

-- Location: FF_X4_Y2_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3));

-- Location: LABCELL_X4_Y2_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\);

-- Location: FF_X4_Y2_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2));

-- Location: FF_X4_Y2_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1));

-- Location: FF_X4_Y2_N46
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0));

-- Location: LABCELL_X4_Y2_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[0]~DUPLICATE_q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg[2]~1_combout\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\);

-- Location: FF_X4_Y2_N55
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0));

-- Location: FF_X3_Y2_N50
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal~4_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0));

-- Location: MLABCELL_X3_Y2_N36
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010000100011001101000010001111101000000000111110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(4),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\);

-- Location: FF_X4_Y2_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2));

-- Location: MLABCELL_X3_Y2_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101000000001100110100000001101010000000000110101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[0]~DUPLICATE_q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(4),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\);

-- Location: FF_X4_Y2_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3));

-- Location: LABCELL_X4_Y2_N48
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_proc~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg[1]~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~8_combout\,
	datad => \ALT_INV_altera_internal_jtag~TDIUTAP\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_sldfabric_ident_writedata\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\);

-- Location: LABCELL_X2_Y4_N33
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~3_combout\);

-- Location: FF_X4_Y2_N50
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3));

-- Location: LABCELL_X4_Y2_N39
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg[1]~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_sldfabric_ident_writedata\(2),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\);

-- Location: FF_X4_Y2_N40
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2));

-- Location: LABCELL_X4_Y2_N57
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\);

-- Location: FF_X4_Y2_N58
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1));

-- Location: LABCELL_X7_Y2_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011100110110111101101110001000100010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(1),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal[0]~DUPLICATE_q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\);

-- Location: MLABCELL_X6_Y2_N33
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000011001101010101010101011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg[1]~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_sldfabric_ident_writedata\(1),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_proc~0_combout\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~4_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\);

-- Location: FF_X4_Y2_N37
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1));

-- Location: LABCELL_X4_Y2_N51
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_proc~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg[1]~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg~1_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_sldfabric_ident_writedata\(0),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~2_combout\);

-- Location: FF_X4_Y2_N53
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~2_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0));

-- Location: LABCELL_X4_Y2_N42
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[2]~DUPLICATE_q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg[0]~DUPLICATE_q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_design_hash_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\);

-- Location: LABCELL_X7_Y2_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000011111100111111000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter[1]~DUPLICATE_q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter[0]~DUPLICATE_q\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~2_combout\);

-- Location: LABCELL_X4_Y2_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000001111010011110000111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_dr_scan_reg~q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~1_combout\);

-- Location: FF_X3_Y2_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~2_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2));

-- Location: LABCELL_X2_Y2_N57
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~4\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110000000011111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter[1]~DUPLICATE_q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter[0]~DUPLICATE_q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~4_combout\);

-- Location: FF_X3_Y2_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~4_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3));

-- Location: MLABCELL_X3_Y2_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101011000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter[1]~DUPLICATE_q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(3),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter[0]~DUPLICATE_q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~3_combout\);

-- Location: FF_X3_Y2_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~3_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4));

-- Location: FF_X3_Y2_N47
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~5_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0));

-- Location: MLABCELL_X3_Y2_N42
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~5\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(0),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter[1]~DUPLICATE_q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~5_combout\);

-- Location: FF_X3_Y2_N46
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~5_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y2_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010101010100000000000000000101010101010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter[1]~DUPLICATE_q\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter[0]~DUPLICATE_q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~0_combout\);

-- Location: FF_X3_Y2_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~0_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~DUPLICATE_q\);

-- Location: MLABCELL_X3_Y2_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(2),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter[1]~DUPLICATE_q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~3_combout\);

-- Location: FF_X3_Y2_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter~0_combout\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1));

-- Location: MLABCELL_X3_Y2_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000001010101110000000101010111000000010101011100000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\);

-- Location: MLABCELL_X3_Y2_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101010101000001010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(4),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\);

-- Location: MLABCELL_X3_Y2_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110100000101100011010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR~6_combout\,
	datac => \ALT_INV_altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter[0]~DUPLICATE_q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\);

-- Location: LABCELL_X4_Y2_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011000100010011001100011111001111110001111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]~1_combout\);

-- Location: FF_X3_Y2_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3));

-- Location: MLABCELL_X3_Y2_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000010100000000000001111111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR~3_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR~4_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_clear_signal~combout\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter[0]~DUPLICATE_q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\);

-- Location: FF_X3_Y2_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2));

-- Location: MLABCELL_X3_Y2_N54
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000000000000001110111010101010111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter[1]~DUPLICATE_q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_word_counter\(2),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~2_combout\);

-- Location: FF_X3_Y2_N55
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~2_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1));

-- Location: MLABCELL_X3_Y2_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010100000101010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~0_combout\);

-- Location: FF_X3_Y2_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0));

-- Location: LABCELL_X2_Y4_N39
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001110000000000000111000011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(15),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_dr_scan_reg~q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\);

-- Location: LABCELL_X1_Y2_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000001010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(4),
	datac => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	dataf => \ALT_INV_altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\);

-- Location: LABCELL_X2_Y4_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111010001100000011101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_mode_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_splitter_nodes_receive_0\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_node_ena~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_node_ena~1_combout\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_node_ena_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\);

-- Location: FF_X2_Y2_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3));

-- Location: LABCELL_X1_Y3_N27
\u_jtag_streamer|u_atlantic|td_shift[0]~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_splitter_nodes_receive_0\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	combout => \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\);

-- Location: FF_X1_Y3_N2
\u_jtag_streamer|u_atlantic|td_shift[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	sload => VCC,
	ena => \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|td_shift\(10));

-- Location: LABCELL_X1_Y3_N24
\u_jtag_streamer|u_atlantic|tck_t_dav~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \u_jtag_streamer|u_atlantic|tck_t_dav~feeder_combout\);

-- Location: FF_X1_Y3_N25
\u_jtag_streamer|u_atlantic|tck_t_dav\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \u_jtag_streamer|u_atlantic|tck_t_dav~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|tck_t_dav~q\);

-- Location: LABCELL_X2_Y3_N36
\u_jtag_streamer|u_atlantic|write_stalled~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111111000011001111111100001100000011110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_altera_internal_jtag~TDIUTAP\,
	datac => \u_jtag_streamer|u_atlantic|ALT_INV_write_stalled~q\,
	datad => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(10),
	dataf => \u_jtag_streamer|u_atlantic|ALT_INV_tck_t_dav~q\,
	combout => \u_jtag_streamer|u_atlantic|write_stalled~0_combout\);

-- Location: FF_X1_Y3_N14
\u_jtag_streamer|u_atlantic|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \u_jtag_streamer|u_atlantic|count\(1),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	sload => VCC,
	ena => \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|count\(2));

-- Location: LABCELL_X2_Y3_N27
\u_jtag_streamer|u_atlantic|count[3]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_jtag_streamer|u_atlantic|ALT_INV_count\(2),
	combout => \u_jtag_streamer|u_atlantic|count[3]~feeder_combout\);

-- Location: FF_X2_Y3_N28
\u_jtag_streamer|u_atlantic|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \u_jtag_streamer|u_atlantic|count[3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	ena => \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|count\(3));

-- Location: FF_X2_Y3_N7
\u_jtag_streamer|u_atlantic|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \u_jtag_streamer|u_atlantic|count\(3),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	sload => VCC,
	ena => \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|count\(4));

-- Location: FF_X2_Y3_N4
\u_jtag_streamer|u_atlantic|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \u_jtag_streamer|u_atlantic|count\(4),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	sload => VCC,
	ena => \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|count\(5));

-- Location: FF_X2_Y3_N55
\u_jtag_streamer|u_atlantic|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \u_jtag_streamer|u_atlantic|count\(5),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	sload => VCC,
	ena => \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|count\(6));

-- Location: LABCELL_X2_Y3_N57
\u_jtag_streamer|u_atlantic|count[7]~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_jtag_streamer|u_atlantic|ALT_INV_count\(6),
	combout => \u_jtag_streamer|u_atlantic|count[7]~feeder_combout\);

-- Location: FF_X2_Y3_N58
\u_jtag_streamer|u_atlantic|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \u_jtag_streamer|u_atlantic|count[7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	ena => \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|count\(7));

-- Location: FF_X2_Y3_N53
\u_jtag_streamer|u_atlantic|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \u_jtag_streamer|u_atlantic|count\(7),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	sload => VCC,
	ena => \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|count\(8));

-- Location: LABCELL_X1_Y3_N42
\u_jtag_streamer|u_atlantic|read_req~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_splitter_nodes_receive_0\(3),
	combout => \u_jtag_streamer|u_atlantic|read_req~0_combout\);

-- Location: LABCELL_X1_Y3_N6
\u_jtag_streamer|u_atlantic|state~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011110000111100001110111111100000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_splitter_nodes_receive_0\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(3),
	datac => \u_jtag_streamer|u_atlantic|ALT_INV_state~q\,
	datad => \u_jtag_streamer|u_atlantic|ALT_INV_read_req~0_combout\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	dataf => \ALT_INV_altera_internal_jtag~TDIUTAP\,
	combout => \u_jtag_streamer|u_atlantic|state~0_combout\);

-- Location: FF_X1_Y3_N50
\u_jtag_streamer|u_atlantic|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \u_jtag_streamer|u_atlantic|state~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|state~q\);

-- Location: LABCELL_X2_Y3_N30
\u_jtag_streamer|u_atlantic|count[9]~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110011000100010011111111111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	datab => \u_jtag_streamer|u_atlantic|ALT_INV_count\(8),
	datad => \ALT_INV_altera_internal_jtag~TDIUTAP\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	dataf => \u_jtag_streamer|u_atlantic|ALT_INV_state~q\,
	combout => \u_jtag_streamer|u_atlantic|count[9]~0_combout\);

-- Location: FF_X2_Y3_N32
\u_jtag_streamer|u_atlantic|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \u_jtag_streamer|u_atlantic|count[9]~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|count\(9));

-- Location: LABCELL_X2_Y3_N0
\u_jtag_streamer|u_atlantic|count[9]~_wirecell\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_jtag_streamer|u_atlantic|ALT_INV_count\(9),
	combout => \u_jtag_streamer|u_atlantic|count[9]~_wirecell_combout\);

-- Location: FF_X1_Y3_N17
\u_jtag_streamer|u_atlantic|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \u_jtag_streamer|u_atlantic|count[9]~_wirecell_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	sload => VCC,
	ena => \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|count\(0));

-- Location: FF_X1_Y3_N31
\u_jtag_streamer|u_atlantic|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \u_jtag_streamer|u_atlantic|count\(0),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	sload => VCC,
	ena => \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|count\(1));

-- Location: LABCELL_X1_Y3_N0
\u_jtag_streamer|u_atlantic|read_req~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	datab => \u_jtag_streamer|u_atlantic|ALT_INV_count\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_splitter_nodes_receive_0\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	dataf => \u_jtag_streamer|u_atlantic|ALT_INV_state~q\,
	combout => \u_jtag_streamer|u_atlantic|read_req~1_combout\);

-- Location: FF_X1_Y1_N44
\u_jtag_streamer|u_atlantic|write_stalled\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \u_jtag_streamer|u_atlantic|write_stalled~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \u_jtag_streamer|u_atlantic|read_req~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|write_stalled~q\);

-- Location: LABCELL_X1_Y3_N51
\u_jtag_streamer|u_atlantic|user_saw_rvalid~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011010100110011001100110011001100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(0),
	datab => \u_jtag_streamer|u_atlantic|ALT_INV_user_saw_rvalid~q\,
	datac => \u_jtag_streamer|u_atlantic|ALT_INV_read_req~0_combout\,
	datad => \u_jtag_streamer|u_atlantic|ALT_INV_state~q\,
	datae => \u_jtag_streamer|u_atlantic|ALT_INV_count\(0),
	combout => \u_jtag_streamer|u_atlantic|user_saw_rvalid~0_combout\);

-- Location: FF_X1_Y3_N11
\u_jtag_streamer|u_atlantic|user_saw_rvalid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \u_jtag_streamer|u_atlantic|user_saw_rvalid~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|user_saw_rvalid~q\);

-- Location: MLABCELL_X3_Y1_N0
\u_jtag_streamer|u_atlantic|read~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_jtag_streamer|u_atlantic|ALT_INV_read~q\,
	combout => \u_jtag_streamer|u_atlantic|read~0_combout\);

-- Location: LABCELL_X1_Y1_N9
\u_jtag_streamer|u_atlantic|read~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_jtag_streamer|u_atlantic|ALT_INV_read~0_combout\,
	combout => \u_jtag_streamer|u_atlantic|read~feeder_combout\);

-- Location: FF_X1_Y1_N10
\u_jtag_streamer|u_atlantic|read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \u_jtag_streamer|u_atlantic|read~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \u_jtag_streamer|u_atlantic|read_req~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|read~q\);

-- Location: FF_X1_Y3_N20
\u_jtag_streamer|u_atlantic|read1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_jtag_streamer|u_atlantic|read~q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|read1~q\);

-- Location: FF_X1_Y3_N23
\u_jtag_streamer|u_atlantic|read2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_jtag_streamer|u_atlantic|read1~q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|read2~q\);

-- Location: LABCELL_X1_Y1_N12
\u_jtag_streamer|u_atlantic|read_req~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(9),
	combout => \u_jtag_streamer|u_atlantic|read_req~feeder_combout\);

-- Location: FF_X1_Y1_N13
\u_jtag_streamer|u_atlantic|read_req\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \u_jtag_streamer|u_atlantic|read_req~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \u_jtag_streamer|u_atlantic|read_req~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|read_req~q\);

-- Location: LABCELL_X1_Y3_N54
\u_jtag_streamer|u_atlantic|rst1~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \u_jtag_streamer|u_atlantic|rst1~feeder_combout\);

-- Location: FF_X1_Y3_N56
\u_jtag_streamer|u_atlantic|rst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_jtag_streamer|u_atlantic|rst1~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|rst1~q\);

-- Location: FF_X1_Y3_N41
\u_jtag_streamer|u_atlantic|rst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_jtag_streamer|u_atlantic|rst1~q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|rst2~q\);

-- Location: FF_X53_Y5_N8
\u_jtag_streamer|u_atlantic|r_ena1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_jtag_streamer|u_atlantic|rvalid0~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|r_ena1~q\);

-- Location: FF_X53_Y5_N26
\u_jtag_streamer|state.S_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_jtag_streamer|Selector0~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|state.S_IDLE~q\);

-- Location: FF_X53_Y5_N10
\u_jtag_streamer|state.S_SEND_HIGH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_jtag_streamer|Selector1~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|state.S_SEND_HIGH~q\);

-- Location: LABCELL_X53_Y5_N36
\u_jtag_streamer|state.S_SEND_LOW~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_jtag_streamer|state.S_SEND_LOW~0_combout\ = ( \u_jtag_streamer|state.S_SEND_LOW~q\ & ( \u_jtag_streamer|state.S_SEND_HIGH~q\ & ( ((!\filtered_valid~q\) # (!\u_jtag_streamer|u_atlantic|rvalid0~q\)) # (\u_jtag_streamer|state.S_IDLE~q\) ) ) ) # ( 
-- !\u_jtag_streamer|state.S_SEND_LOW~q\ & ( \u_jtag_streamer|state.S_SEND_HIGH~q\ & ( (!\u_jtag_streamer|u_atlantic|rvalid0~q\ & ((!\u_jtag_streamer|state.S_IDLE~q\) # (!\u_jtag_streamer|u_atlantic|r_ena1~q\))) ) ) ) # ( \u_jtag_streamer|state.S_SEND_LOW~q\ 
-- & ( !\u_jtag_streamer|state.S_SEND_HIGH~q\ & ( (!\u_jtag_streamer|state.S_IDLE~q\ & (((!\filtered_valid~q\ & \u_jtag_streamer|u_atlantic|rvalid0~q\)))) # (\u_jtag_streamer|state.S_IDLE~q\ & (((\u_jtag_streamer|u_atlantic|rvalid0~q\)) # 
-- (\u_jtag_streamer|u_atlantic|r_ena1~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011111010111101110000000001111111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_jtag_streamer|ALT_INV_state.S_IDLE~q\,
	datab => \u_jtag_streamer|u_atlantic|ALT_INV_r_ena1~q\,
	datac => \ALT_INV_filtered_valid~q\,
	datad => \u_jtag_streamer|u_atlantic|ALT_INV_rvalid0~q\,
	datae => \u_jtag_streamer|ALT_INV_state.S_SEND_LOW~q\,
	dataf => \u_jtag_streamer|ALT_INV_state.S_SEND_HIGH~q\,
	combout => \u_jtag_streamer|state.S_SEND_LOW~0_combout\);

-- Location: FF_X53_Y5_N38
\u_jtag_streamer|state.S_SEND_LOW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_jtag_streamer|state.S_SEND_LOW~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|state.S_SEND_LOW~q\);

-- Location: LABCELL_X53_Y5_N24
\u_jtag_streamer|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_jtag_streamer|Selector0~0_combout\ = ( \filtered_valid~q\ & ( ((!\u_jtag_streamer|state.S_SEND_LOW~q\) # ((\u_jtag_streamer|u_atlantic|r_ena1~q\ & \u_jtag_streamer|state.S_IDLE~q\))) # (\u_jtag_streamer|u_atlantic|rvalid0~q\) ) ) # ( 
-- !\filtered_valid~q\ & ( (\u_jtag_streamer|state.S_IDLE~q\ & (((!\u_jtag_streamer|state.S_SEND_LOW~q\) # (\u_jtag_streamer|u_atlantic|r_ena1~q\)) # (\u_jtag_streamer|u_atlantic|rvalid0~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000000001111011111110101111101111111010111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_jtag_streamer|u_atlantic|ALT_INV_rvalid0~q\,
	datab => \u_jtag_streamer|u_atlantic|ALT_INV_r_ena1~q\,
	datac => \u_jtag_streamer|ALT_INV_state.S_SEND_LOW~q\,
	datad => \u_jtag_streamer|ALT_INV_state.S_IDLE~q\,
	dataf => \ALT_INV_filtered_valid~q\,
	combout => \u_jtag_streamer|Selector0~0_combout\);

-- Location: FF_X53_Y5_N25
\u_jtag_streamer|state.S_IDLE~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_jtag_streamer|Selector0~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|state.S_IDLE~DUPLICATE_q\);

-- Location: LABCELL_X53_Y5_N6
\u_jtag_streamer|u_atlantic|rvalid0~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_jtag_streamer|u_atlantic|ALT_INV_rvalid0~q\,
	datad => \u_jtag_streamer|u_atlantic|ALT_INV_r_ena1~q\,
	dataf => \u_jtag_streamer|ALT_INV_state.S_IDLE~DUPLICATE_q\,
	combout => \u_jtag_streamer|u_atlantic|rvalid0~0_combout\);

-- Location: LABCELL_X1_Y3_N36
\u_jtag_streamer|u_atlantic|rvalid0~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110000000000000000011111111111111010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_jtag_streamer|u_atlantic|ALT_INV_read2~q\,
	datab => \u_jtag_streamer|u_atlantic|ALT_INV_user_saw_rvalid~q\,
	datac => \u_jtag_streamer|u_atlantic|ALT_INV_read_req~q\,
	datad => \u_jtag_streamer|u_atlantic|ALT_INV_rst2~q\,
	datae => \u_jtag_streamer|u_atlantic|ALT_INV_rvalid0~0_combout\,
	dataf => \u_jtag_streamer|u_atlantic|ALT_INV_read1~q\,
	combout => \u_jtag_streamer|u_atlantic|rvalid0~1_combout\);

-- Location: FF_X1_Y3_N38
\u_jtag_streamer|u_atlantic|rvalid0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_jtag_streamer|u_atlantic|rvalid0~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|rvalid0~q\);

-- Location: LABCELL_X53_Y5_N9
\u_jtag_streamer|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_jtag_streamer|Selector1~0_combout\ = ( \filtered_valid~q\ & ( (!\u_jtag_streamer|state.S_IDLE~DUPLICATE_q\) # ((\u_jtag_streamer|state.S_SEND_HIGH~q\ & ((\u_jtag_streamer|u_atlantic|r_ena1~q\) # (\u_jtag_streamer|u_atlantic|rvalid0~q\)))) ) ) # ( 
-- !\filtered_valid~q\ & ( (\u_jtag_streamer|state.S_IDLE~DUPLICATE_q\ & (\u_jtag_streamer|state.S_SEND_HIGH~q\ & ((\u_jtag_streamer|u_atlantic|r_ena1~q\) # (\u_jtag_streamer|u_atlantic|rvalid0~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001111001100110111111100110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_jtag_streamer|u_atlantic|ALT_INV_rvalid0~q\,
	datab => \u_jtag_streamer|ALT_INV_state.S_IDLE~DUPLICATE_q\,
	datac => \u_jtag_streamer|u_atlantic|ALT_INV_r_ena1~q\,
	datad => \u_jtag_streamer|ALT_INV_state.S_SEND_HIGH~q\,
	dataf => \ALT_INV_filtered_valid~q\,
	combout => \u_jtag_streamer|Selector1~0_combout\);

-- Location: FF_X53_Y5_N11
\u_jtag_streamer|state.S_SEND_HIGH~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_jtag_streamer|Selector1~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|state.S_SEND_HIGH~DUPLICATE_q\);

-- Location: LABCELL_X53_Y5_N27
\u_jtag_streamer|u_atlantic|r_ena~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_jtag_streamer|u_atlantic|ALT_INV_r_ena1~q\,
	dataf => \u_jtag_streamer|ALT_INV_state.S_IDLE~DUPLICATE_q\,
	combout => \u_jtag_streamer|u_atlantic|r_ena~0_combout\);

-- Location: FF_X53_Y5_N5
\u_jtag_streamer|u_atlantic|rdata[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_jtag_streamer|state.S_SEND_HIGH~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_jtag_streamer|u_atlantic|r_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|rdata\(7));

-- Location: LABCELL_X1_Y3_N33
\u_jtag_streamer|u_atlantic|td_shift~4\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_jtag_streamer|u_atlantic|ALT_INV_count\(9),
	datae => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(10),
	dataf => \u_jtag_streamer|u_atlantic|ALT_INV_rdata\(7),
	combout => \u_jtag_streamer|u_atlantic|td_shift~4_combout\);

-- Location: FF_X1_Y3_N35
\u_jtag_streamer|u_atlantic|td_shift[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \u_jtag_streamer|u_atlantic|td_shift~4_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	ena => \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|td_shift\(9));

-- Location: LABCELL_X1_Y3_N15
\u_jtag_streamer|u_atlantic|td_shift~0\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_jtag_streamer|u_atlantic|ALT_INV_user_saw_rvalid~q\,
	datab => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(9),
	datae => \u_jtag_streamer|u_atlantic|ALT_INV_state~q\,
	dataf => \u_jtag_streamer|u_atlantic|ALT_INV_count\(1),
	combout => \u_jtag_streamer|u_atlantic|td_shift~0_combout\);

-- Location: LABCELL_X53_Y5_N18
\u_jtag_streamer|latched[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_jtag_streamer|latched[4]~feeder_combout\ = filtered_12bit(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_filtered_12bit(4),
	combout => \u_jtag_streamer|latched[4]~feeder_combout\);

-- Location: LABCELL_X56_Y7_N39
\u_jtag_streamer|latched[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_jtag_streamer|latched[0]~0_combout\ = ( !\u_jtag_streamer|state.S_IDLE~DUPLICATE_q\ & ( \filtered_valid~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_filtered_valid~q\,
	datae => \u_jtag_streamer|ALT_INV_state.S_IDLE~DUPLICATE_q\,
	combout => \u_jtag_streamer|latched[0]~0_combout\);

-- Location: FF_X53_Y5_N20
\u_jtag_streamer|latched[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_jtag_streamer|latched[4]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_jtag_streamer|latched[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|latched\(4));

-- Location: FF_X56_Y7_N19
\u_jtag_streamer|latched[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => filtered_12bit(9),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_jtag_streamer|latched[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|latched\(9));

-- Location: LABCELL_X53_Y5_N12
\u_jtag_streamer|r_dat[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_jtag_streamer|r_dat[4]~4_combout\ = ( \u_jtag_streamer|state.S_IDLE~DUPLICATE_q\ & ( (!\u_jtag_streamer|state.S_SEND_HIGH~DUPLICATE_q\ & (\u_jtag_streamer|latched\(4))) # (\u_jtag_streamer|state.S_SEND_HIGH~DUPLICATE_q\ & 
-- ((\u_jtag_streamer|latched\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_jtag_streamer|ALT_INV_state.S_SEND_HIGH~DUPLICATE_q\,
	datac => \u_jtag_streamer|ALT_INV_latched\(4),
	datad => \u_jtag_streamer|ALT_INV_latched\(9),
	dataf => \u_jtag_streamer|ALT_INV_state.S_IDLE~DUPLICATE_q\,
	combout => \u_jtag_streamer|r_dat[4]~4_combout\);

-- Location: FF_X53_Y5_N14
\u_jtag_streamer|u_atlantic|rdata[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_jtag_streamer|r_dat[4]~4_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_jtag_streamer|u_atlantic|r_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|rdata\(4));

-- Location: LABCELL_X53_Y5_N21
\u_jtag_streamer|latched[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_jtag_streamer|latched[10]~feeder_combout\ = filtered_12bit(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_filtered_12bit(10),
	combout => \u_jtag_streamer|latched[10]~feeder_combout\);

-- Location: FF_X53_Y5_N22
\u_jtag_streamer|latched[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_jtag_streamer|latched[10]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_jtag_streamer|latched[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|latched\(10));

-- Location: LABCELL_X53_Y5_N15
\u_jtag_streamer|r_dat[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_jtag_streamer|r_dat[5]~5_combout\ = ( \u_jtag_streamer|latched\(10) & ( \u_jtag_streamer|state.S_SEND_HIGH~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_jtag_streamer|ALT_INV_state.S_SEND_HIGH~DUPLICATE_q\,
	dataf => \u_jtag_streamer|ALT_INV_latched\(10),
	combout => \u_jtag_streamer|r_dat[5]~5_combout\);

-- Location: FF_X53_Y5_N16
\u_jtag_streamer|u_atlantic|rdata[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_jtag_streamer|r_dat[5]~5_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_jtag_streamer|u_atlantic|r_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|rdata\(5));

-- Location: FF_X53_Y5_N59
\u_jtag_streamer|latched[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => filtered_12bit(11),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_jtag_streamer|latched[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|latched\(11));

-- Location: LABCELL_X53_Y5_N0
\u_jtag_streamer|r_dat[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_jtag_streamer|r_dat[6]~6_combout\ = (\u_jtag_streamer|latched\(11) & \u_jtag_streamer|state.S_SEND_HIGH~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_jtag_streamer|ALT_INV_latched\(11),
	datad => \u_jtag_streamer|ALT_INV_state.S_SEND_HIGH~DUPLICATE_q\,
	combout => \u_jtag_streamer|r_dat[6]~6_combout\);

-- Location: FF_X53_Y5_N1
\u_jtag_streamer|u_atlantic|rdata[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_jtag_streamer|r_dat[6]~6_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_jtag_streamer|u_atlantic|r_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|rdata\(6));

-- Location: LABCELL_X1_Y3_N45
\u_jtag_streamer|u_atlantic|td_shift~12\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_jtag_streamer|u_atlantic|ALT_INV_count\(9),
	datad => \u_jtag_streamer|u_atlantic|ALT_INV_rdata\(6),
	dataf => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(9),
	combout => \u_jtag_streamer|u_atlantic|td_shift~12_combout\);

-- Location: FF_X1_Y3_N46
\u_jtag_streamer|u_atlantic|td_shift[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \u_jtag_streamer|u_atlantic|td_shift~12_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	ena => \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|td_shift\(8));

-- Location: LABCELL_X2_Y3_N21
\u_jtag_streamer|u_atlantic|td_shift~11\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011100110010001000100010011100110111001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	datac => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift~0_combout\,
	datad => \u_jtag_streamer|u_atlantic|ALT_INV_count\(9),
	datae => \u_jtag_streamer|u_atlantic|ALT_INV_rdata\(5),
	dataf => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(8),
	combout => \u_jtag_streamer|u_atlantic|td_shift~11_combout\);

-- Location: FF_X2_Y3_N22
\u_jtag_streamer|u_atlantic|td_shift[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \u_jtag_streamer|u_atlantic|td_shift~11_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|td_shift\(7));

-- Location: LABCELL_X2_Y3_N18
\u_jtag_streamer|u_atlantic|td_shift~10\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011100100011001000100111001000110111011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	datac => \u_jtag_streamer|u_atlantic|ALT_INV_count\(9),
	datad => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift~0_combout\,
	datae => \u_jtag_streamer|u_atlantic|ALT_INV_rdata\(4),
	dataf => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(7),
	combout => \u_jtag_streamer|u_atlantic|td_shift~10_combout\);

-- Location: FF_X2_Y3_N19
\u_jtag_streamer|u_atlantic|td_shift[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \u_jtag_streamer|u_atlantic|td_shift~10_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|td_shift\(6));

-- Location: FF_X53_Y5_N43
\u_jtag_streamer|latched[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => filtered_12bit(3),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_jtag_streamer|latched[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|latched\(3));

-- Location: FF_X53_Y5_N46
\u_jtag_streamer|latched[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => filtered_12bit(8),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_jtag_streamer|latched[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|latched\(8));

-- Location: LABCELL_X53_Y5_N51
\u_jtag_streamer|r_dat[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_jtag_streamer|r_dat[3]~3_combout\ = ( \u_jtag_streamer|latched\(8) & ( (\u_jtag_streamer|state.S_IDLE~q\ & ((\u_jtag_streamer|latched\(3)) # (\u_jtag_streamer|state.S_SEND_HIGH~DUPLICATE_q\))) ) ) # ( !\u_jtag_streamer|latched\(8) & ( 
-- (\u_jtag_streamer|state.S_IDLE~q\ & (!\u_jtag_streamer|state.S_SEND_HIGH~DUPLICATE_q\ & \u_jtag_streamer|latched\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_jtag_streamer|ALT_INV_state.S_IDLE~q\,
	datac => \u_jtag_streamer|ALT_INV_state.S_SEND_HIGH~DUPLICATE_q\,
	datad => \u_jtag_streamer|ALT_INV_latched\(3),
	dataf => \u_jtag_streamer|ALT_INV_latched\(8),
	combout => \u_jtag_streamer|r_dat[3]~3_combout\);

-- Location: FF_X53_Y5_N52
\u_jtag_streamer|u_atlantic|rdata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_jtag_streamer|r_dat[3]~3_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_jtag_streamer|u_atlantic|r_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|rdata\(3));

-- Location: LABCELL_X2_Y3_N12
\u_jtag_streamer|u_atlantic|td_shift~9\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000000101010000000100000101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	datac => \u_jtag_streamer|u_atlantic|ALT_INV_count\(9),
	datad => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift~0_combout\,
	datae => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(6),
	dataf => \u_jtag_streamer|u_atlantic|ALT_INV_rdata\(3),
	combout => \u_jtag_streamer|u_atlantic|td_shift~9_combout\);

-- Location: FF_X2_Y3_N13
\u_jtag_streamer|u_atlantic|td_shift[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \u_jtag_streamer|u_atlantic|td_shift~9_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|td_shift\(5));

-- Location: FF_X56_Y7_N44
\filtered_12bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_dc_block|sample_out\(11),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_dc_block|out_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filtered_12bit(7));

-- Location: LABCELL_X56_Y7_N21
\u_jtag_streamer|latched[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_jtag_streamer|latched[7]~feeder_combout\ = filtered_12bit(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_filtered_12bit(7),
	combout => \u_jtag_streamer|latched[7]~feeder_combout\);

-- Location: FF_X56_Y7_N22
\u_jtag_streamer|latched[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_jtag_streamer|latched[7]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_jtag_streamer|latched[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|latched\(7));

-- Location: FF_X53_Y5_N19
\u_jtag_streamer|latched[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => filtered_12bit(2),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_jtag_streamer|latched[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|latched\(2));

-- Location: LABCELL_X53_Y5_N48
\u_jtag_streamer|r_dat[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_jtag_streamer|r_dat[2]~2_combout\ = ( \u_jtag_streamer|latched\(2) & ( (\u_jtag_streamer|state.S_IDLE~q\ & ((!\u_jtag_streamer|state.S_SEND_HIGH~DUPLICATE_q\) # (\u_jtag_streamer|latched\(7)))) ) ) # ( !\u_jtag_streamer|latched\(2) & ( 
-- (\u_jtag_streamer|state.S_SEND_HIGH~DUPLICATE_q\ & (\u_jtag_streamer|state.S_IDLE~q\ & \u_jtag_streamer|latched\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001100000011110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_jtag_streamer|ALT_INV_state.S_SEND_HIGH~DUPLICATE_q\,
	datac => \u_jtag_streamer|ALT_INV_state.S_IDLE~q\,
	datad => \u_jtag_streamer|ALT_INV_latched\(7),
	dataf => \u_jtag_streamer|ALT_INV_latched\(2),
	combout => \u_jtag_streamer|r_dat[2]~2_combout\);

-- Location: FF_X53_Y5_N50
\u_jtag_streamer|u_atlantic|rdata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_jtag_streamer|r_dat[2]~2_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_jtag_streamer|u_atlantic|r_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|rdata\(2));

-- Location: LABCELL_X2_Y3_N15
\u_jtag_streamer|u_atlantic|td_shift~8\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101000101010001000000000101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	datac => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift~0_combout\,
	datad => \u_jtag_streamer|u_atlantic|ALT_INV_count\(9),
	datae => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(5),
	dataf => \u_jtag_streamer|u_atlantic|ALT_INV_rdata\(2),
	combout => \u_jtag_streamer|u_atlantic|td_shift~8_combout\);

-- Location: FF_X2_Y3_N16
\u_jtag_streamer|u_atlantic|td_shift[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \u_jtag_streamer|u_atlantic|td_shift~8_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|td_shift\(4));

-- Location: FF_X53_Y5_N23
\u_jtag_streamer|latched[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => filtered_12bit(1),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_jtag_streamer|latched[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|latched\(1));

-- Location: FF_X53_Y5_N55
\u_jtag_streamer|latched[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => filtered_12bit(6),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_jtag_streamer|latched[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|latched\(6));

-- Location: LABCELL_X53_Y5_N33
\u_jtag_streamer|r_dat[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_jtag_streamer|r_dat[1]~1_combout\ = ( \u_jtag_streamer|state.S_IDLE~DUPLICATE_q\ & ( (!\u_jtag_streamer|state.S_SEND_HIGH~DUPLICATE_q\ & (\u_jtag_streamer|latched\(1))) # (\u_jtag_streamer|state.S_SEND_HIGH~DUPLICATE_q\ & 
-- ((\u_jtag_streamer|latched\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_jtag_streamer|ALT_INV_latched\(1),
	datac => \u_jtag_streamer|ALT_INV_state.S_SEND_HIGH~DUPLICATE_q\,
	datad => \u_jtag_streamer|ALT_INV_latched\(6),
	dataf => \u_jtag_streamer|ALT_INV_state.S_IDLE~DUPLICATE_q\,
	combout => \u_jtag_streamer|r_dat[1]~1_combout\);

-- Location: FF_X53_Y5_N34
\u_jtag_streamer|u_atlantic|rdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_jtag_streamer|r_dat[1]~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_jtag_streamer|u_atlantic|r_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|rdata\(1));

-- Location: LABCELL_X2_Y3_N42
\u_jtag_streamer|u_atlantic|td_shift~7\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000000101010000000100000101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	datac => \u_jtag_streamer|u_atlantic|ALT_INV_count\(9),
	datad => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift~0_combout\,
	datae => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(4),
	dataf => \u_jtag_streamer|u_atlantic|ALT_INV_rdata\(1),
	combout => \u_jtag_streamer|u_atlantic|td_shift~7_combout\);

-- Location: FF_X2_Y3_N43
\u_jtag_streamer|u_atlantic|td_shift[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \u_jtag_streamer|u_atlantic|td_shift~7_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|td_shift\(3));

-- Location: LABCELL_X53_Y5_N57
\u_jtag_streamer|latched[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_jtag_streamer|latched[5]~feeder_combout\ = ( filtered_12bit(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_filtered_12bit(5),
	combout => \u_jtag_streamer|latched[5]~feeder_combout\);

-- Location: FF_X53_Y5_N58
\u_jtag_streamer|latched[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_jtag_streamer|latched[5]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_jtag_streamer|latched[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|latched\(5));

-- Location: LABCELL_X53_Y5_N54
\u_jtag_streamer|latched[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_jtag_streamer|latched[0]~feeder_combout\ = filtered_12bit(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_filtered_12bit(0),
	combout => \u_jtag_streamer|latched[0]~feeder_combout\);

-- Location: FF_X53_Y5_N56
\u_jtag_streamer|latched[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_jtag_streamer|latched[0]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_jtag_streamer|latched[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|latched\(0));

-- Location: LABCELL_X53_Y5_N30
\u_jtag_streamer|r_dat[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_jtag_streamer|r_dat[0]~0_combout\ = ( \u_jtag_streamer|state.S_IDLE~DUPLICATE_q\ & ( (!\u_jtag_streamer|state.S_SEND_HIGH~DUPLICATE_q\ & ((\u_jtag_streamer|latched\(0)))) # (\u_jtag_streamer|state.S_SEND_HIGH~DUPLICATE_q\ & 
-- (\u_jtag_streamer|latched\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_jtag_streamer|ALT_INV_state.S_SEND_HIGH~DUPLICATE_q\,
	datac => \u_jtag_streamer|ALT_INV_latched\(5),
	datad => \u_jtag_streamer|ALT_INV_latched\(0),
	dataf => \u_jtag_streamer|ALT_INV_state.S_IDLE~DUPLICATE_q\,
	combout => \u_jtag_streamer|r_dat[0]~0_combout\);

-- Location: FF_X53_Y5_N31
\u_jtag_streamer|u_atlantic|rdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u_jtag_streamer|r_dat[0]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \u_jtag_streamer|u_atlantic|r_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|rdata\(0));

-- Location: LABCELL_X2_Y3_N45
\u_jtag_streamer|u_atlantic|td_shift~6\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101000101010001000000000101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	datac => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift~0_combout\,
	datad => \u_jtag_streamer|u_atlantic|ALT_INV_count\(9),
	datae => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(3),
	dataf => \u_jtag_streamer|u_atlantic|ALT_INV_rdata\(0),
	combout => \u_jtag_streamer|u_atlantic|td_shift~6_combout\);

-- Location: FF_X1_Y3_N44
\u_jtag_streamer|u_atlantic|td_shift[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \u_jtag_streamer|u_atlantic|td_shift~6_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|td_shift\(2));

-- Location: LABCELL_X2_Y3_N48
\u_jtag_streamer|u_atlantic|td_shift~5\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100011001000100010001000100111001000110111011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	datac => \u_jtag_streamer|u_atlantic|ALT_INV_write_stalled~q\,
	datad => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift~0_combout\,
	datae => \u_jtag_streamer|u_atlantic|ALT_INV_count\(9),
	dataf => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(2),
	combout => \u_jtag_streamer|u_atlantic|td_shift~5_combout\);

-- Location: FF_X2_Y3_N50
\u_jtag_streamer|u_atlantic|td_shift[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \u_jtag_streamer|u_atlantic|td_shift~5_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|td_shift\(1));

-- Location: FF_X1_Y3_N58
\u_jtag_streamer|u_atlantic|rvalid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u_jtag_streamer|u_atlantic|rvalid0~q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|rvalid~q\);

-- Location: LABCELL_X2_Y3_N39
\u_jtag_streamer|u_atlantic|td_shift~1\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(1),
	datac => \u_jtag_streamer|u_atlantic|ALT_INV_rvalid~q\,
	dataf => \u_jtag_streamer|u_atlantic|ALT_INV_count\(9),
	combout => \u_jtag_streamer|u_atlantic|td_shift~1_combout\);

-- Location: LABCELL_X2_Y3_N9
\u_jtag_streamer|u_atlantic|td_shift~2\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110111011001100110011001110111011101110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~q\,
	datab => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift~1_combout\,
	datac => \u_jtag_streamer|u_atlantic|ALT_INV_tck_t_dav~q\,
	datad => \ALT_INV_altera_internal_jtag~TDIUTAP\,
	datae => \u_jtag_streamer|u_atlantic|ALT_INV_state~q\,
	dataf => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift~0_combout\,
	combout => \u_jtag_streamer|u_atlantic|td_shift~2_combout\);

-- Location: FF_X1_Y3_N5
\u_jtag_streamer|u_atlantic|td_shift[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	asdata => \u_jtag_streamer|u_atlantic|td_shift~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(4),
	sload => VCC,
	ena => \u_jtag_streamer|u_atlantic|td_shift[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|td_shift\(0));

-- Location: LABCELL_X1_Y1_N24
\u_jtag_streamer|u_atlantic|adapted_tdo~feeder\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_jtag_streamer|u_atlantic|ALT_INV_td_shift\(0),
	combout => \u_jtag_streamer|u_atlantic|adapted_tdo~feeder_combout\);

-- Location: FF_X1_Y1_N26
\u_jtag_streamer|u_atlantic|adapted_tdo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAP\,
	d => \u_jtag_streamer|u_atlantic|adapted_tdo~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_jtag_streamer|u_atlantic|adapted_tdo~q\);

-- Location: LABCELL_X1_Y2_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011001000110011001100110011001100000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_Equal3~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|ALT_INV_WORD_SR\(0),
	datad => \u_jtag_streamer|u_atlantic|ALT_INV_adapted_tdo~q\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irsr_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\);

-- Location: LABCELL_X1_Y2_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101111111111111111111111101010101010111111101110111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_hub_info_reg_ena~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~1_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~4_combout\,
	datae => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_bypass_reg~q\,
	dataf => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_tdo_mux_out~3_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\);

-- Location: FF_X1_Y2_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\);

-- Location: LABCELL_X35_Y68_N0
\auto_hub|~GND\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;

-- Location: LABCELL_X2_Y4_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\);

-- Location: LABCELL_X2_Y4_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell\ : cyclonev_lcell_comb
-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\GPIO_0[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(2),
	o => \GPIO_0[2]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\GPIO_0[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(3),
	o => \GPIO_0[3]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\GPIO_0[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(4),
	o => \GPIO_0[4]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\GPIO_0[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(5),
	o => \GPIO_0[5]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\GPIO_0[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(6),
	o => \GPIO_0[6]~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\GPIO_0[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(7),
	o => \GPIO_0[7]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\GPIO_0[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(8),
	o => \GPIO_0[8]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\GPIO_0[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(9),
	o => \GPIO_0[9]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\GPIO_0[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(10),
	o => \GPIO_0[10]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\GPIO_0[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(11),
	o => \GPIO_0[11]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\GPIO_0[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(12),
	o => \GPIO_0[12]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\GPIO_0[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(13),
	o => \GPIO_0[13]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\GPIO_0[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(14),
	o => \GPIO_0[14]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\GPIO_0[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(15),
	o => \GPIO_0[15]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\GPIO_0[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(16),
	o => \GPIO_0[16]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\GPIO_0[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(17),
	o => \GPIO_0[17]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\GPIO_0[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(18),
	o => \GPIO_0[18]~input_o\);

-- Location: IOIBUF_X76_Y0_N1
\GPIO_0[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(19),
	o => \GPIO_0[19]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\GPIO_0[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(20),
	o => \GPIO_0[20]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\GPIO_0[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(21),
	o => \GPIO_0[21]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\GPIO_0[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(22),
	o => \GPIO_0[22]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\GPIO_0[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(23),
	o => \GPIO_0[23]~input_o\);

-- Location: IOIBUF_X76_Y0_N18
\GPIO_0[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(24),
	o => \GPIO_0[24]~input_o\);

-- Location: IOIBUF_X82_Y0_N41
\GPIO_0[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(25),
	o => \GPIO_0[25]~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\GPIO_0[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(26),
	o => \GPIO_0[26]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\GPIO_0[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(27),
	o => \GPIO_0[27]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\GPIO_0[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(28),
	o => \GPIO_0[28]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\GPIO_0[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(29),
	o => \GPIO_0[29]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\GPIO_0[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(30),
	o => \GPIO_0[30]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\GPIO_0[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(31),
	o => \GPIO_0[31]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\GPIO_0[32]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(32),
	o => \GPIO_0[32]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\GPIO_0[33]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(33),
	o => \GPIO_0[33]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\GPIO_0[34]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(34),
	o => \GPIO_0[34]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\GPIO_0[35]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(35),
	o => \GPIO_0[35]~input_o\);

-- Location: LABCELL_X60_Y26_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


