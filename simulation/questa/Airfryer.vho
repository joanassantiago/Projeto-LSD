-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "05/29/2024 19:04:31"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	demo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW1 : IN std_logic;
	SW0 : IN std_logic;
	SW6 : IN std_logic;
	SW5 : IN std_logic;
	SW4 : IN std_logic;
	SW7 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(2 DOWNTO 0)
	);
END demo;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW6	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW5	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW4	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW7	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW0	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_SW6 : std_logic;
SIGNAL ww_SW5 : std_logic;
SIGNAL ww_SW4 : std_logic;
SIGNAL ww_SW7 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(2 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \SW6~input_o\ : std_logic;
SIGNAL \SW5~input_o\ : std_logic;
SIGNAL \SW4~input_o\ : std_logic;
SIGNAL \SW7~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|Equal0~5_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|s_divCounter~11_combout\ : std_logic;
SIGNAL \inst3|Add0~15\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|Add0~17\ : std_logic;
SIGNAL \inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst3|Add0~19\ : std_logic;
SIGNAL \inst3|Add0~20_combout\ : std_logic;
SIGNAL \inst3|Add0~21\ : std_logic;
SIGNAL \inst3|Add0~22_combout\ : std_logic;
SIGNAL \inst3|Add0~23\ : std_logic;
SIGNAL \inst3|Add0~24_combout\ : std_logic;
SIGNAL \inst3|s_divCounter~10_combout\ : std_logic;
SIGNAL \inst3|Add0~25\ : std_logic;
SIGNAL \inst3|Add0~26_combout\ : std_logic;
SIGNAL \inst3|s_divCounter~9_combout\ : std_logic;
SIGNAL \inst3|Add0~27\ : std_logic;
SIGNAL \inst3|Add0~28_combout\ : std_logic;
SIGNAL \inst3|s_divCounter~8_combout\ : std_logic;
SIGNAL \inst3|Add0~29\ : std_logic;
SIGNAL \inst3|Add0~30_combout\ : std_logic;
SIGNAL \inst3|s_divCounter~3_combout\ : std_logic;
SIGNAL \inst3|Add0~31\ : std_logic;
SIGNAL \inst3|Add0~32_combout\ : std_logic;
SIGNAL \inst3|Add0~33\ : std_logic;
SIGNAL \inst3|Add0~34_combout\ : std_logic;
SIGNAL \inst3|s_divCounter~2_combout\ : std_logic;
SIGNAL \inst3|Add0~35\ : std_logic;
SIGNAL \inst3|Add0~36_combout\ : std_logic;
SIGNAL \inst3|Add0~37\ : std_logic;
SIGNAL \inst3|Add0~38_combout\ : std_logic;
SIGNAL \inst3|s_divCounter~7_combout\ : std_logic;
SIGNAL \inst3|Add0~39\ : std_logic;
SIGNAL \inst3|Add0~40_combout\ : std_logic;
SIGNAL \inst3|s_divCounter~6_combout\ : std_logic;
SIGNAL \inst3|Add0~41\ : std_logic;
SIGNAL \inst3|Add0~42_combout\ : std_logic;
SIGNAL \inst3|s_divCounter~5_combout\ : std_logic;
SIGNAL \inst3|Add0~49\ : std_logic;
SIGNAL \inst3|Add0~50_combout\ : std_logic;
SIGNAL \inst3|s_divCounter~0_combout\ : std_logic;
SIGNAL \inst3|Add0~51\ : std_logic;
SIGNAL \inst3|Add0~52_combout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|Add0~53\ : std_logic;
SIGNAL \inst3|Add0~54_combout\ : std_logic;
SIGNAL \inst3|Add0~55\ : std_logic;
SIGNAL \inst3|Add0~56_combout\ : std_logic;
SIGNAL \inst3|Add0~57\ : std_logic;
SIGNAL \inst3|Add0~58_combout\ : std_logic;
SIGNAL \inst3|Add0~59\ : std_logic;
SIGNAL \inst3|Add0~60_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~3_combout\ : std_logic;
SIGNAL \inst3|Equal0~4_combout\ : std_logic;
SIGNAL \inst3|Equal0~6_combout\ : std_logic;
SIGNAL \inst3|Add0~43\ : std_logic;
SIGNAL \inst3|Add0~44_combout\ : std_logic;
SIGNAL \inst3|s_divCounter~4_combout\ : std_logic;
SIGNAL \inst3|Add0~45\ : std_logic;
SIGNAL \inst3|Add0~46_combout\ : std_logic;
SIGNAL \inst3|s_divCounter~1_combout\ : std_logic;
SIGNAL \inst3|Add0~47\ : std_logic;
SIGNAL \inst3|Add0~48_combout\ : std_logic;
SIGNAL \inst3|Equal0~7_combout\ : std_logic;
SIGNAL \inst3|Equal0~8_combout\ : std_logic;
SIGNAL \inst3|Equal0~9_combout\ : std_logic;
SIGNAL \inst3|clkOut~1_combout\ : std_logic;
SIGNAL \inst3|clkOut~0_combout\ : std_logic;
SIGNAL \inst3|clkOut~2_combout\ : std_logic;
SIGNAL \inst3|clkOut~3_combout\ : std_logic;
SIGNAL \inst3|clkOut~feeder_combout\ : std_logic;
SIGNAL \inst3|clkOut~q\ : std_logic;
SIGNAL \inst3|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \inst25|counter[0]~8_combout\ : std_logic;
SIGNAL \inst25|preheat_active~feeder_combout\ : std_logic;
SIGNAL \inst25|counter[1]~12\ : std_logic;
SIGNAL \inst25|counter[2]~13_combout\ : std_logic;
SIGNAL \inst25|counter[2]~14\ : std_logic;
SIGNAL \inst25|counter[3]~15_combout\ : std_logic;
SIGNAL \inst25|counter[3]~16\ : std_logic;
SIGNAL \inst25|counter[4]~17_combout\ : std_logic;
SIGNAL \inst25|counter[4]~18\ : std_logic;
SIGNAL \inst25|counter[5]~19_combout\ : std_logic;
SIGNAL \inst25|counter[5]~20\ : std_logic;
SIGNAL \inst25|counter[6]~21_combout\ : std_logic;
SIGNAL \inst25|counter[6]~22\ : std_logic;
SIGNAL \inst25|counter[7]~23_combout\ : std_logic;
SIGNAL \inst25|Equal0~1_combout\ : std_logic;
SIGNAL \inst25|Equal0~0_combout\ : std_logic;
SIGNAL \inst25|Equal0~2_combout\ : std_logic;
SIGNAL \inst25|preheat_active~q\ : std_logic;
SIGNAL \inst25|cook_active~0_combout\ : std_logic;
SIGNAL \inst25|cook_active~q\ : std_logic;
SIGNAL \inst25|counter[7]~10_combout\ : std_logic;
SIGNAL \inst25|counter[0]~9\ : std_logic;
SIGNAL \inst25|counter[1]~11_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ : std_logic;
SIGNAL \inst11|Mux0~0_combout\ : std_logic;
SIGNAL \inst11|Mux1~0_combout\ : std_logic;
SIGNAL \inst11|Mux2~0_combout\ : std_logic;
SIGNAL \inst11|Mux3~0_combout\ : std_logic;
SIGNAL \inst11|Mux4~0_combout\ : std_logic;
SIGNAL \inst11|Mux5~0_combout\ : std_logic;
SIGNAL \inst11|Mux6~0_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[60]~66_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[61]~65_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[15]~47_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[18]~60_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[18]~44_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[17]~45_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[17]~61_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[16]~46_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[16]~62_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[21]~50_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[59]~67_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[20]~67_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[20]~51_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[22]~49_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[23]~48_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[28]~68_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[27]~53_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[26]~70_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[26]~54_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[33]~71_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[32]~72_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[31]~73_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[30]~75_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\ : std_logic;
SIGNAL \inst25|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \inst25|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \ALT_INV_SW0~input_o\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_CLOCK_50 <= CLOCK_50;
ww_SW1 <= SW1;
ww_SW0 <= SW0;
ww_SW6 <= SW6;
ww_SW5 <= SW5;
ww_SW4 <= SW4;
ww_SW7 <= SW7;
ww_KEY <= KEY;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst3|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|clkOut~q\);
\ALT_INV_SW0~input_o\ <= NOT \SW0~input_o\;
\inst2|ALT_INV_Mux0~0_combout\ <= NOT \inst2|Mux0~0_combout\;
\inst11|ALT_INV_Mux0~0_combout\ <= NOT \inst11|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW0~input_o\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW0~input_o\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW0~input_o\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X55_Y64_N2
\inst3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = \inst3|s_divCounter\(0) $ (VCC)
-- \inst3|Add0~1\ = CARRY(\inst3|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(0),
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

-- Location: FF_X55_Y64_N3
\inst3|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(0));

-- Location: LCCOMB_X55_Y64_N4
\inst3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst3|s_divCounter\(1) & (!\inst3|Add0~1\)) # (!\inst3|s_divCounter\(1) & ((\inst3|Add0~1\) # (GND)))
-- \inst3|Add0~3\ = CARRY((!\inst3|Add0~1\) # (!\inst3|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(1),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: FF_X55_Y64_N5
\inst3|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(1));

-- Location: LCCOMB_X55_Y64_N6
\inst3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst3|s_divCounter\(2) & (\inst3|Add0~3\ $ (GND))) # (!\inst3|s_divCounter\(2) & (!\inst3|Add0~3\ & VCC))
-- \inst3|Add0~5\ = CARRY((\inst3|s_divCounter\(2) & !\inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(2),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: FF_X55_Y64_N7
\inst3|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(2));

-- Location: LCCOMB_X55_Y64_N8
\inst3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst3|s_divCounter\(3) & (!\inst3|Add0~5\)) # (!\inst3|s_divCounter\(3) & ((\inst3|Add0~5\) # (GND)))
-- \inst3|Add0~7\ = CARRY((!\inst3|Add0~5\) # (!\inst3|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(3),
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: FF_X55_Y64_N9
\inst3|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(3));

-- Location: LCCOMB_X55_Y64_N10
\inst3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = (\inst3|s_divCounter\(4) & (\inst3|Add0~7\ $ (GND))) # (!\inst3|s_divCounter\(4) & (!\inst3|Add0~7\ & VCC))
-- \inst3|Add0~9\ = CARRY((\inst3|s_divCounter\(4) & !\inst3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(4),
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: FF_X55_Y64_N11
\inst3|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(4));

-- Location: LCCOMB_X55_Y64_N12
\inst3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst3|s_divCounter\(5) & (!\inst3|Add0~9\)) # (!\inst3|s_divCounter\(5) & ((\inst3|Add0~9\) # (GND)))
-- \inst3|Add0~11\ = CARRY((!\inst3|Add0~9\) # (!\inst3|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(5),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: FF_X55_Y64_N13
\inst3|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(5));

-- Location: LCCOMB_X54_Y64_N30
\inst3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~5_combout\ = (\inst3|s_divCounter\(2) & (\inst3|s_divCounter\(3) & (\inst3|s_divCounter\(4) & \inst3|s_divCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(2),
	datab => \inst3|s_divCounter\(3),
	datac => \inst3|s_divCounter\(4),
	datad => \inst3|s_divCounter\(5),
	combout => \inst3|Equal0~5_combout\);

-- Location: LCCOMB_X55_Y64_N14
\inst3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = (\inst3|s_divCounter\(6) & (\inst3|Add0~11\ $ (GND))) # (!\inst3|s_divCounter\(6) & (!\inst3|Add0~11\ & VCC))
-- \inst3|Add0~13\ = CARRY((\inst3|s_divCounter\(6) & !\inst3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(6),
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: FF_X55_Y64_N15
\inst3|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(6));

-- Location: LCCOMB_X55_Y64_N16
\inst3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = (\inst3|s_divCounter\(7) & (!\inst3|Add0~13\)) # (!\inst3|s_divCounter\(7) & ((\inst3|Add0~13\) # (GND)))
-- \inst3|Add0~15\ = CARRY((!\inst3|Add0~13\) # (!\inst3|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(7),
	datad => VCC,
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\,
	cout => \inst3|Add0~15\);

-- Location: LCCOMB_X55_Y64_N0
\inst3|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter~11_combout\ = (\inst3|Add0~14_combout\ & ((!\inst3|Equal0~9_combout\) # (!\inst3|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~14_combout\,
	datac => \inst3|Equal0~6_combout\,
	datad => \inst3|Equal0~9_combout\,
	combout => \inst3|s_divCounter~11_combout\);

-- Location: FF_X55_Y64_N1
\inst3|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(7));

-- Location: LCCOMB_X55_Y64_N18
\inst3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = (\inst3|s_divCounter\(8) & (\inst3|Add0~15\ $ (GND))) # (!\inst3|s_divCounter\(8) & (!\inst3|Add0~15\ & VCC))
-- \inst3|Add0~17\ = CARRY((\inst3|s_divCounter\(8) & !\inst3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(8),
	datad => VCC,
	cin => \inst3|Add0~15\,
	combout => \inst3|Add0~16_combout\,
	cout => \inst3|Add0~17\);

-- Location: FF_X55_Y64_N19
\inst3|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(8));

-- Location: LCCOMB_X55_Y64_N20
\inst3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~18_combout\ = (\inst3|s_divCounter\(9) & (!\inst3|Add0~17\)) # (!\inst3|s_divCounter\(9) & ((\inst3|Add0~17\) # (GND)))
-- \inst3|Add0~19\ = CARRY((!\inst3|Add0~17\) # (!\inst3|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(9),
	datad => VCC,
	cin => \inst3|Add0~17\,
	combout => \inst3|Add0~18_combout\,
	cout => \inst3|Add0~19\);

-- Location: FF_X55_Y64_N21
\inst3|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(9));

-- Location: LCCOMB_X55_Y64_N22
\inst3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~20_combout\ = (\inst3|s_divCounter\(10) & (\inst3|Add0~19\ $ (GND))) # (!\inst3|s_divCounter\(10) & (!\inst3|Add0~19\ & VCC))
-- \inst3|Add0~21\ = CARRY((\inst3|s_divCounter\(10) & !\inst3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(10),
	datad => VCC,
	cin => \inst3|Add0~19\,
	combout => \inst3|Add0~20_combout\,
	cout => \inst3|Add0~21\);

-- Location: FF_X55_Y64_N23
\inst3|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(10));

-- Location: LCCOMB_X55_Y64_N24
\inst3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~22_combout\ = (\inst3|s_divCounter\(11) & (!\inst3|Add0~21\)) # (!\inst3|s_divCounter\(11) & ((\inst3|Add0~21\) # (GND)))
-- \inst3|Add0~23\ = CARRY((!\inst3|Add0~21\) # (!\inst3|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(11),
	datad => VCC,
	cin => \inst3|Add0~21\,
	combout => \inst3|Add0~22_combout\,
	cout => \inst3|Add0~23\);

-- Location: FF_X55_Y64_N25
\inst3|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(11));

-- Location: LCCOMB_X55_Y64_N26
\inst3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~24_combout\ = (\inst3|s_divCounter\(12) & (\inst3|Add0~23\ $ (GND))) # (!\inst3|s_divCounter\(12) & (!\inst3|Add0~23\ & VCC))
-- \inst3|Add0~25\ = CARRY((\inst3|s_divCounter\(12) & !\inst3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(12),
	datad => VCC,
	cin => \inst3|Add0~23\,
	combout => \inst3|Add0~24_combout\,
	cout => \inst3|Add0~25\);

-- Location: LCCOMB_X54_Y63_N24
\inst3|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter~10_combout\ = (\inst3|Add0~24_combout\ & ((!\inst3|Equal0~9_combout\) # (!\inst3|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~6_combout\,
	datac => \inst3|Equal0~9_combout\,
	datad => \inst3|Add0~24_combout\,
	combout => \inst3|s_divCounter~10_combout\);

-- Location: FF_X54_Y63_N25
\inst3|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(12));

-- Location: LCCOMB_X55_Y64_N28
\inst3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~26_combout\ = (\inst3|s_divCounter\(13) & (!\inst3|Add0~25\)) # (!\inst3|s_divCounter\(13) & ((\inst3|Add0~25\) # (GND)))
-- \inst3|Add0~27\ = CARRY((!\inst3|Add0~25\) # (!\inst3|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(13),
	datad => VCC,
	cin => \inst3|Add0~25\,
	combout => \inst3|Add0~26_combout\,
	cout => \inst3|Add0~27\);

-- Location: LCCOMB_X54_Y63_N14
\inst3|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter~9_combout\ = (\inst3|Add0~26_combout\ & ((!\inst3|Equal0~9_combout\) # (!\inst3|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~6_combout\,
	datac => \inst3|Equal0~9_combout\,
	datad => \inst3|Add0~26_combout\,
	combout => \inst3|s_divCounter~9_combout\);

-- Location: FF_X54_Y63_N15
\inst3|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(13));

-- Location: LCCOMB_X55_Y64_N30
\inst3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~28_combout\ = (\inst3|s_divCounter\(14) & (\inst3|Add0~27\ $ (GND))) # (!\inst3|s_divCounter\(14) & (!\inst3|Add0~27\ & VCC))
-- \inst3|Add0~29\ = CARRY((\inst3|s_divCounter\(14) & !\inst3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(14),
	datad => VCC,
	cin => \inst3|Add0~27\,
	combout => \inst3|Add0~28_combout\,
	cout => \inst3|Add0~29\);

-- Location: LCCOMB_X54_Y63_N0
\inst3|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter~8_combout\ = (\inst3|Add0~28_combout\ & ((!\inst3|Equal0~9_combout\) # (!\inst3|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~6_combout\,
	datab => \inst3|Equal0~9_combout\,
	datac => \inst3|Add0~28_combout\,
	combout => \inst3|s_divCounter~8_combout\);

-- Location: FF_X54_Y63_N1
\inst3|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(14));

-- Location: LCCOMB_X55_Y63_N0
\inst3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~30_combout\ = (\inst3|s_divCounter\(15) & (!\inst3|Add0~29\)) # (!\inst3|s_divCounter\(15) & ((\inst3|Add0~29\) # (GND)))
-- \inst3|Add0~31\ = CARRY((!\inst3|Add0~29\) # (!\inst3|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(15),
	datad => VCC,
	cin => \inst3|Add0~29\,
	combout => \inst3|Add0~30_combout\,
	cout => \inst3|Add0~31\);

-- Location: LCCOMB_X56_Y63_N30
\inst3|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter~3_combout\ = (\inst3|Add0~30_combout\ & ((!\inst3|Equal0~6_combout\) # (!\inst3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal0~9_combout\,
	datac => \inst3|Add0~30_combout\,
	datad => \inst3|Equal0~6_combout\,
	combout => \inst3|s_divCounter~3_combout\);

-- Location: FF_X56_Y63_N31
\inst3|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(15));

-- Location: LCCOMB_X55_Y63_N2
\inst3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~32_combout\ = (\inst3|s_divCounter\(16) & (\inst3|Add0~31\ $ (GND))) # (!\inst3|s_divCounter\(16) & (!\inst3|Add0~31\ & VCC))
-- \inst3|Add0~33\ = CARRY((\inst3|s_divCounter\(16) & !\inst3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(16),
	datad => VCC,
	cin => \inst3|Add0~31\,
	combout => \inst3|Add0~32_combout\,
	cout => \inst3|Add0~33\);

-- Location: FF_X55_Y63_N3
\inst3|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(16));

-- Location: LCCOMB_X55_Y63_N4
\inst3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~34_combout\ = (\inst3|s_divCounter\(17) & (!\inst3|Add0~33\)) # (!\inst3|s_divCounter\(17) & ((\inst3|Add0~33\) # (GND)))
-- \inst3|Add0~35\ = CARRY((!\inst3|Add0~33\) # (!\inst3|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(17),
	datad => VCC,
	cin => \inst3|Add0~33\,
	combout => \inst3|Add0~34_combout\,
	cout => \inst3|Add0~35\);

-- Location: LCCOMB_X56_Y63_N22
\inst3|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter~2_combout\ = (\inst3|Add0~34_combout\ & ((!\inst3|Equal0~6_combout\) # (!\inst3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal0~9_combout\,
	datac => \inst3|Add0~34_combout\,
	datad => \inst3|Equal0~6_combout\,
	combout => \inst3|s_divCounter~2_combout\);

-- Location: FF_X56_Y63_N23
\inst3|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(17));

-- Location: LCCOMB_X55_Y63_N6
\inst3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~36_combout\ = (\inst3|s_divCounter\(18) & (\inst3|Add0~35\ $ (GND))) # (!\inst3|s_divCounter\(18) & (!\inst3|Add0~35\ & VCC))
-- \inst3|Add0~37\ = CARRY((\inst3|s_divCounter\(18) & !\inst3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(18),
	datad => VCC,
	cin => \inst3|Add0~35\,
	combout => \inst3|Add0~36_combout\,
	cout => \inst3|Add0~37\);

-- Location: FF_X55_Y63_N7
\inst3|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(18));

-- Location: LCCOMB_X55_Y63_N8
\inst3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~38_combout\ = (\inst3|s_divCounter\(19) & (!\inst3|Add0~37\)) # (!\inst3|s_divCounter\(19) & ((\inst3|Add0~37\) # (GND)))
-- \inst3|Add0~39\ = CARRY((!\inst3|Add0~37\) # (!\inst3|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(19),
	datad => VCC,
	cin => \inst3|Add0~37\,
	combout => \inst3|Add0~38_combout\,
	cout => \inst3|Add0~39\);

-- Location: LCCOMB_X54_Y63_N30
\inst3|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter~7_combout\ = (\inst3|Add0~38_combout\ & ((!\inst3|Equal0~9_combout\) # (!\inst3|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~6_combout\,
	datab => \inst3|Equal0~9_combout\,
	datac => \inst3|Add0~38_combout\,
	combout => \inst3|s_divCounter~7_combout\);

-- Location: FF_X54_Y63_N31
\inst3|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(19));

-- Location: LCCOMB_X55_Y63_N10
\inst3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~40_combout\ = (\inst3|s_divCounter\(20) & (\inst3|Add0~39\ $ (GND))) # (!\inst3|s_divCounter\(20) & (!\inst3|Add0~39\ & VCC))
-- \inst3|Add0~41\ = CARRY((\inst3|s_divCounter\(20) & !\inst3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(20),
	datad => VCC,
	cin => \inst3|Add0~39\,
	combout => \inst3|Add0~40_combout\,
	cout => \inst3|Add0~41\);

-- Location: LCCOMB_X54_Y63_N22
\inst3|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter~6_combout\ = (\inst3|Add0~40_combout\ & ((!\inst3|Equal0~9_combout\) # (!\inst3|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~6_combout\,
	datab => \inst3|Equal0~9_combout\,
	datac => \inst3|Add0~40_combout\,
	combout => \inst3|s_divCounter~6_combout\);

-- Location: FF_X54_Y63_N23
\inst3|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(20));

-- Location: LCCOMB_X55_Y63_N12
\inst3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~42_combout\ = (\inst3|s_divCounter\(21) & (!\inst3|Add0~41\)) # (!\inst3|s_divCounter\(21) & ((\inst3|Add0~41\) # (GND)))
-- \inst3|Add0~43\ = CARRY((!\inst3|Add0~41\) # (!\inst3|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(21),
	datad => VCC,
	cin => \inst3|Add0~41\,
	combout => \inst3|Add0~42_combout\,
	cout => \inst3|Add0~43\);

-- Location: LCCOMB_X54_Y63_N16
\inst3|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter~5_combout\ = (\inst3|Add0~42_combout\ & ((!\inst3|Equal0~9_combout\) # (!\inst3|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~6_combout\,
	datab => \inst3|Equal0~9_combout\,
	datac => \inst3|Add0~42_combout\,
	combout => \inst3|s_divCounter~5_combout\);

-- Location: FF_X54_Y63_N17
\inst3|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(21));

-- Location: LCCOMB_X55_Y63_N18
\inst3|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~48_combout\ = (\inst3|s_divCounter\(24) & (\inst3|Add0~47\ $ (GND))) # (!\inst3|s_divCounter\(24) & (!\inst3|Add0~47\ & VCC))
-- \inst3|Add0~49\ = CARRY((\inst3|s_divCounter\(24) & !\inst3|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(24),
	datad => VCC,
	cin => \inst3|Add0~47\,
	combout => \inst3|Add0~48_combout\,
	cout => \inst3|Add0~49\);

-- Location: LCCOMB_X55_Y63_N20
\inst3|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~50_combout\ = (\inst3|s_divCounter\(25) & (!\inst3|Add0~49\)) # (!\inst3|s_divCounter\(25) & ((\inst3|Add0~49\) # (GND)))
-- \inst3|Add0~51\ = CARRY((!\inst3|Add0~49\) # (!\inst3|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(25),
	datad => VCC,
	cin => \inst3|Add0~49\,
	combout => \inst3|Add0~50_combout\,
	cout => \inst3|Add0~51\);

-- Location: LCCOMB_X56_Y63_N2
\inst3|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter~0_combout\ = (\inst3|Add0~50_combout\ & ((!\inst3|Equal0~6_combout\) # (!\inst3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal0~9_combout\,
	datac => \inst3|Equal0~6_combout\,
	datad => \inst3|Add0~50_combout\,
	combout => \inst3|s_divCounter~0_combout\);

-- Location: FF_X56_Y63_N3
\inst3|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(25));

-- Location: LCCOMB_X55_Y63_N22
\inst3|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~52_combout\ = (\inst3|s_divCounter\(26) & (\inst3|Add0~51\ $ (GND))) # (!\inst3|s_divCounter\(26) & (!\inst3|Add0~51\ & VCC))
-- \inst3|Add0~53\ = CARRY((\inst3|s_divCounter\(26) & !\inst3|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(26),
	datad => VCC,
	cin => \inst3|Add0~51\,
	combout => \inst3|Add0~52_combout\,
	cout => \inst3|Add0~53\);

-- Location: FF_X55_Y63_N23
\inst3|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(26));

-- Location: LCCOMB_X54_Y63_N12
\inst3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = (\inst3|s_divCounter\(22) & (\inst3|s_divCounter\(21) & (\inst3|s_divCounter\(20) & !\inst3|s_divCounter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(22),
	datab => \inst3|s_divCounter\(21),
	datac => \inst3|s_divCounter\(20),
	datad => \inst3|s_divCounter\(26),
	combout => \inst3|Equal0~1_combout\);

-- Location: LCCOMB_X54_Y63_N18
\inst3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~2_combout\ = (\inst3|s_divCounter\(19) & (\inst3|s_divCounter\(12) & (\inst3|s_divCounter\(13) & \inst3|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(19),
	datab => \inst3|s_divCounter\(12),
	datac => \inst3|s_divCounter\(13),
	datad => \inst3|s_divCounter\(14),
	combout => \inst3|Equal0~2_combout\);

-- Location: LCCOMB_X55_Y63_N24
\inst3|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~54_combout\ = (\inst3|s_divCounter\(27) & (!\inst3|Add0~53\)) # (!\inst3|s_divCounter\(27) & ((\inst3|Add0~53\) # (GND)))
-- \inst3|Add0~55\ = CARRY((!\inst3|Add0~53\) # (!\inst3|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(27),
	datad => VCC,
	cin => \inst3|Add0~53\,
	combout => \inst3|Add0~54_combout\,
	cout => \inst3|Add0~55\);

-- Location: FF_X55_Y63_N25
\inst3|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(27));

-- Location: LCCOMB_X55_Y63_N26
\inst3|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~56_combout\ = (\inst3|s_divCounter\(28) & (\inst3|Add0~55\ $ (GND))) # (!\inst3|s_divCounter\(28) & (!\inst3|Add0~55\ & VCC))
-- \inst3|Add0~57\ = CARRY((\inst3|s_divCounter\(28) & !\inst3|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(28),
	datad => VCC,
	cin => \inst3|Add0~55\,
	combout => \inst3|Add0~56_combout\,
	cout => \inst3|Add0~57\);

-- Location: FF_X55_Y63_N27
\inst3|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(28));

-- Location: LCCOMB_X55_Y63_N28
\inst3|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~58_combout\ = (\inst3|s_divCounter\(29) & (!\inst3|Add0~57\)) # (!\inst3|s_divCounter\(29) & ((\inst3|Add0~57\) # (GND)))
-- \inst3|Add0~59\ = CARRY((!\inst3|Add0~57\) # (!\inst3|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(29),
	datad => VCC,
	cin => \inst3|Add0~57\,
	combout => \inst3|Add0~58_combout\,
	cout => \inst3|Add0~59\);

-- Location: FF_X55_Y63_N29
\inst3|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(29));

-- Location: LCCOMB_X55_Y63_N30
\inst3|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~60_combout\ = \inst3|s_divCounter\(30) $ (!\inst3|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(30),
	cin => \inst3|Add0~59\,
	combout => \inst3|Add0~60_combout\);

-- Location: FF_X55_Y63_N31
\inst3|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(30));

-- Location: LCCOMB_X54_Y63_N4
\inst3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (!\inst3|s_divCounter\(30) & (!\inst3|s_divCounter\(29) & (!\inst3|s_divCounter\(27) & !\inst3|s_divCounter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(30),
	datab => \inst3|s_divCounter\(29),
	datac => \inst3|s_divCounter\(27),
	datad => \inst3|s_divCounter\(28),
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X54_Y64_N16
\inst3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~3_combout\ = (!\inst3|s_divCounter\(9) & (!\inst3|s_divCounter\(8) & (!\inst3|s_divCounter\(7) & !\inst3|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(9),
	datab => \inst3|s_divCounter\(8),
	datac => \inst3|s_divCounter\(7),
	datad => \inst3|s_divCounter\(10),
	combout => \inst3|Equal0~3_combout\);

-- Location: LCCOMB_X54_Y63_N20
\inst3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~4_combout\ = (\inst3|Equal0~1_combout\ & (\inst3|Equal0~2_combout\ & (\inst3|Equal0~0_combout\ & \inst3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~1_combout\,
	datab => \inst3|Equal0~2_combout\,
	datac => \inst3|Equal0~0_combout\,
	datad => \inst3|Equal0~3_combout\,
	combout => \inst3|Equal0~4_combout\);

-- Location: LCCOMB_X54_Y63_N26
\inst3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~6_combout\ = (\inst3|s_divCounter\(1) & (\inst3|s_divCounter\(0) & (\inst3|Equal0~5_combout\ & \inst3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(1),
	datab => \inst3|s_divCounter\(0),
	datac => \inst3|Equal0~5_combout\,
	datad => \inst3|Equal0~4_combout\,
	combout => \inst3|Equal0~6_combout\);

-- Location: LCCOMB_X55_Y63_N14
\inst3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~44_combout\ = (\inst3|s_divCounter\(22) & (\inst3|Add0~43\ $ (GND))) # (!\inst3|s_divCounter\(22) & (!\inst3|Add0~43\ & VCC))
-- \inst3|Add0~45\ = CARRY((\inst3|s_divCounter\(22) & !\inst3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(22),
	datad => VCC,
	cin => \inst3|Add0~43\,
	combout => \inst3|Add0~44_combout\,
	cout => \inst3|Add0~45\);

-- Location: LCCOMB_X54_Y63_N6
\inst3|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter~4_combout\ = (\inst3|Add0~44_combout\ & ((!\inst3|Equal0~9_combout\) # (!\inst3|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~6_combout\,
	datab => \inst3|Equal0~9_combout\,
	datac => \inst3|Add0~44_combout\,
	combout => \inst3|s_divCounter~4_combout\);

-- Location: FF_X54_Y63_N7
\inst3|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(22));

-- Location: LCCOMB_X55_Y63_N16
\inst3|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~46_combout\ = (\inst3|s_divCounter\(23) & (!\inst3|Add0~45\)) # (!\inst3|s_divCounter\(23) & ((\inst3|Add0~45\) # (GND)))
-- \inst3|Add0~47\ = CARRY((!\inst3|Add0~45\) # (!\inst3|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(23),
	datad => VCC,
	cin => \inst3|Add0~45\,
	combout => \inst3|Add0~46_combout\,
	cout => \inst3|Add0~47\);

-- Location: LCCOMB_X56_Y63_N24
\inst3|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter~1_combout\ = (\inst3|Add0~46_combout\ & ((!\inst3|Equal0~6_combout\) # (!\inst3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal0~9_combout\,
	datac => \inst3|Add0~46_combout\,
	datad => \inst3|Equal0~6_combout\,
	combout => \inst3|s_divCounter~1_combout\);

-- Location: FF_X56_Y63_N25
\inst3|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(23));

-- Location: FF_X55_Y63_N19
\inst3|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(24));

-- Location: LCCOMB_X56_Y63_N10
\inst3|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~7_combout\ = (!\inst3|s_divCounter\(24) & (\inst3|s_divCounter\(23) & (!\inst3|s_divCounter\(18) & \inst3|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(24),
	datab => \inst3|s_divCounter\(23),
	datac => \inst3|s_divCounter\(18),
	datad => \inst3|s_divCounter\(25),
	combout => \inst3|Equal0~7_combout\);

-- Location: LCCOMB_X56_Y63_N20
\inst3|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~8_combout\ = (\inst3|s_divCounter\(15) & (\inst3|s_divCounter\(17) & (!\inst3|s_divCounter\(11) & !\inst3|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(15),
	datab => \inst3|s_divCounter\(17),
	datac => \inst3|s_divCounter\(11),
	datad => \inst3|s_divCounter\(16),
	combout => \inst3|Equal0~8_combout\);

-- Location: LCCOMB_X56_Y63_N0
\inst3|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~9_combout\ = (\inst3|Equal0~7_combout\ & (\inst3|s_divCounter\(6) & \inst3|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~7_combout\,
	datac => \inst3|s_divCounter\(6),
	datad => \inst3|Equal0~8_combout\,
	combout => \inst3|Equal0~9_combout\);

-- Location: LCCOMB_X56_Y63_N12
\inst3|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~1_combout\ = (!\inst3|s_divCounter\(15) & (!\inst3|s_divCounter\(17) & (\inst3|s_divCounter\(11) & \inst3|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(15),
	datab => \inst3|s_divCounter\(17),
	datac => \inst3|s_divCounter\(11),
	datad => \inst3|s_divCounter\(16),
	combout => \inst3|clkOut~1_combout\);

-- Location: LCCOMB_X56_Y63_N18
\inst3|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~0_combout\ = (\inst3|s_divCounter\(24) & (!\inst3|s_divCounter\(25) & (\inst3|s_divCounter\(18) & !\inst3|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(24),
	datab => \inst3|s_divCounter\(25),
	datac => \inst3|s_divCounter\(18),
	datad => \inst3|s_divCounter\(23),
	combout => \inst3|clkOut~0_combout\);

-- Location: LCCOMB_X56_Y63_N8
\inst3|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~2_combout\ = (\inst3|clkOut~1_combout\ & (\inst3|clkOut~0_combout\ & !\inst3|s_divCounter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clkOut~1_combout\,
	datab => \inst3|clkOut~0_combout\,
	datac => \inst3|s_divCounter\(6),
	combout => \inst3|clkOut~2_combout\);

-- Location: LCCOMB_X56_Y63_N26
\inst3|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~3_combout\ = (\inst3|Equal0~6_combout\ & (!\inst3|Equal0~9_combout\ & ((\inst3|clkOut~q\) # (\inst3|clkOut~2_combout\)))) # (!\inst3|Equal0~6_combout\ & (\inst3|clkOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clkOut~q\,
	datab => \inst3|Equal0~9_combout\,
	datac => \inst3|clkOut~2_combout\,
	datad => \inst3|Equal0~6_combout\,
	combout => \inst3|clkOut~3_combout\);

-- Location: LCCOMB_X56_Y63_N14
\inst3|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~feeder_combout\ = \inst3|clkOut~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|clkOut~3_combout\,
	combout => \inst3|clkOut~feeder_combout\);

-- Location: FF_X56_Y63_N15
\inst3|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clkOut~q\);

-- Location: CLKCTRL_G14
\inst3|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X86_Y3_N12
\inst25|counter[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|counter[0]~8_combout\ = \inst25|counter\(0) $ (VCC)
-- \inst25|counter[0]~9\ = CARRY(\inst25|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(0),
	datad => VCC,
	combout => \inst25|counter[0]~8_combout\,
	cout => \inst25|counter[0]~9\);

-- Location: LCCOMB_X86_Y3_N30
\inst25|preheat_active~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|preheat_active~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst25|preheat_active~feeder_combout\);

-- Location: LCCOMB_X86_Y3_N14
\inst25|counter[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|counter[1]~11_combout\ = (\inst25|counter\(1) & (\inst25|counter[0]~9\ & VCC)) # (!\inst25|counter\(1) & (!\inst25|counter[0]~9\))
-- \inst25|counter[1]~12\ = CARRY((!\inst25|counter\(1) & !\inst25|counter[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|counter\(1),
	datad => VCC,
	cin => \inst25|counter[0]~9\,
	combout => \inst25|counter[1]~11_combout\,
	cout => \inst25|counter[1]~12\);

-- Location: LCCOMB_X86_Y3_N16
\inst25|counter[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|counter[2]~13_combout\ = (\inst25|counter\(2) & ((GND) # (!\inst25|counter[1]~12\))) # (!\inst25|counter\(2) & (\inst25|counter[1]~12\ $ (GND)))
-- \inst25|counter[2]~14\ = CARRY((\inst25|counter\(2)) # (!\inst25|counter[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|counter\(2),
	datad => VCC,
	cin => \inst25|counter[1]~12\,
	combout => \inst25|counter[2]~13_combout\,
	cout => \inst25|counter[2]~14\);

-- Location: FF_X86_Y3_N17
\inst25|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkOut~clkctrl_outclk\,
	d => \inst25|counter[2]~13_combout\,
	ena => \inst25|counter[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|counter\(2));

-- Location: LCCOMB_X86_Y3_N18
\inst25|counter[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|counter[3]~15_combout\ = (\inst25|counter\(3) & (\inst25|counter[2]~14\ & VCC)) # (!\inst25|counter\(3) & (!\inst25|counter[2]~14\))
-- \inst25|counter[3]~16\ = CARRY((!\inst25|counter\(3) & !\inst25|counter[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|counter\(3),
	datad => VCC,
	cin => \inst25|counter[2]~14\,
	combout => \inst25|counter[3]~15_combout\,
	cout => \inst25|counter[3]~16\);

-- Location: FF_X86_Y3_N19
\inst25|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkOut~clkctrl_outclk\,
	d => \inst25|counter[3]~15_combout\,
	ena => \inst25|counter[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|counter\(3));

-- Location: LCCOMB_X86_Y3_N20
\inst25|counter[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|counter[4]~17_combout\ = (\inst25|counter\(4) & ((GND) # (!\inst25|counter[3]~16\))) # (!\inst25|counter\(4) & (\inst25|counter[3]~16\ $ (GND)))
-- \inst25|counter[4]~18\ = CARRY((\inst25|counter\(4)) # (!\inst25|counter[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|counter\(4),
	datad => VCC,
	cin => \inst25|counter[3]~16\,
	combout => \inst25|counter[4]~17_combout\,
	cout => \inst25|counter[4]~18\);

-- Location: FF_X86_Y3_N21
\inst25|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkOut~clkctrl_outclk\,
	d => \inst25|counter[4]~17_combout\,
	ena => \inst25|counter[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|counter\(4));

-- Location: LCCOMB_X86_Y3_N22
\inst25|counter[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|counter[5]~19_combout\ = (\inst25|counter\(5) & (\inst25|counter[4]~18\ & VCC)) # (!\inst25|counter\(5) & (!\inst25|counter[4]~18\))
-- \inst25|counter[5]~20\ = CARRY((!\inst25|counter\(5) & !\inst25|counter[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(5),
	datad => VCC,
	cin => \inst25|counter[4]~18\,
	combout => \inst25|counter[5]~19_combout\,
	cout => \inst25|counter[5]~20\);

-- Location: FF_X86_Y3_N23
\inst25|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkOut~clkctrl_outclk\,
	d => \inst25|counter[5]~19_combout\,
	ena => \inst25|counter[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|counter\(5));

-- Location: LCCOMB_X86_Y3_N24
\inst25|counter[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|counter[6]~21_combout\ = (\inst25|counter\(6) & ((GND) # (!\inst25|counter[5]~20\))) # (!\inst25|counter\(6) & (\inst25|counter[5]~20\ $ (GND)))
-- \inst25|counter[6]~22\ = CARRY((\inst25|counter\(6)) # (!\inst25|counter[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|counter\(6),
	datad => VCC,
	cin => \inst25|counter[5]~20\,
	combout => \inst25|counter[6]~21_combout\,
	cout => \inst25|counter[6]~22\);

-- Location: FF_X86_Y3_N25
\inst25|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkOut~clkctrl_outclk\,
	d => \inst25|counter[6]~21_combout\,
	ena => \inst25|counter[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|counter\(6));

-- Location: LCCOMB_X86_Y3_N26
\inst25|counter[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|counter[7]~23_combout\ = \inst25|counter\(7) $ (!\inst25|counter[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(7),
	cin => \inst25|counter[6]~22\,
	combout => \inst25|counter[7]~23_combout\);

-- Location: FF_X86_Y3_N27
\inst25|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkOut~clkctrl_outclk\,
	d => \inst25|counter[7]~23_combout\,
	ena => \inst25|counter[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|counter\(7));

-- Location: LCCOMB_X86_Y3_N8
\inst25|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Equal0~1_combout\ = (!\inst25|counter\(5) & !\inst25|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|counter\(5),
	datad => \inst25|counter\(6),
	combout => \inst25|Equal0~1_combout\);

-- Location: LCCOMB_X86_Y3_N10
\inst25|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Equal0~0_combout\ = (!\inst25|counter\(0) & (!\inst25|counter\(3) & (!\inst25|counter\(1) & !\inst25|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(0),
	datab => \inst25|counter\(3),
	datac => \inst25|counter\(1),
	datad => \inst25|counter\(2),
	combout => \inst25|Equal0~0_combout\);

-- Location: LCCOMB_X86_Y3_N2
\inst25|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Equal0~2_combout\ = (!\inst25|counter\(7) & (!\inst25|counter\(4) & (\inst25|Equal0~1_combout\ & \inst25|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(7),
	datab => \inst25|counter\(4),
	datac => \inst25|Equal0~1_combout\,
	datad => \inst25|Equal0~0_combout\,
	combout => \inst25|Equal0~2_combout\);

-- Location: FF_X86_Y3_N31
\inst25|preheat_active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkOut~clkctrl_outclk\,
	d => \inst25|preheat_active~feeder_combout\,
	ena => \inst25|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|preheat_active~q\);

-- Location: LCCOMB_X86_Y3_N4
\inst25|cook_active~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|cook_active~0_combout\ = !\inst25|preheat_active~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|preheat_active~q\,
	combout => \inst25|cook_active~0_combout\);

-- Location: FF_X86_Y3_N5
\inst25|cook_active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkOut~clkctrl_outclk\,
	d => \inst25|cook_active~0_combout\,
	ena => \inst25|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|cook_active~q\);

-- Location: LCCOMB_X86_Y3_N28
\inst25|counter[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|counter[7]~10_combout\ = (\inst25|cook_active~q\) # (!\inst25|preheat_active~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|preheat_active~q\,
	datac => \inst25|cook_active~q\,
	combout => \inst25|counter[7]~10_combout\);

-- Location: FF_X86_Y3_N13
\inst25|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkOut~clkctrl_outclk\,
	d => \inst25|counter[0]~8_combout\,
	ena => \inst25|counter[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|counter\(0));

-- Location: FF_X86_Y3_N15
\inst25|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkOut~clkctrl_outclk\,
	d => \inst25|counter[1]~11_combout\,
	ena => \inst25|counter[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|counter\(1));

-- Location: LCCOMB_X85_Y3_N12
\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst25|counter\(5) $ (VCC)
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst25|counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|counter\(5),
	datad => VCC,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X85_Y3_N14
\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst25|counter\(6) & (\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst25|counter\(6) & 
-- (!\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst25|counter\(6) & !\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(6),
	datad => VCC,
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X85_Y3_N16
\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst25|counter\(7) & (\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst25|counter\(7) & 
-- (!\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst25|counter\(7) & !\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(7),
	datad => VCC,
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X85_Y3_N18
\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X84_Y3_N6
\inst25|Mod1|auto_generated|divider|divider|StageOut[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X84_Y3_N8
\inst25|Mod1|auto_generated|divider|divider|StageOut[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst25|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst25|counter\(7),
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X84_Y3_N22
\inst25|Mod1|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X84_Y3_N24
\inst25|Mod1|auto_generated|divider|divider|StageOut[26]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\ = (\inst25|counter\(6) & \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|counter\(6),
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X84_Y3_N28
\inst25|Mod1|auto_generated|divider|divider|StageOut[25]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X84_Y3_N20
\inst25|Mod1|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\inst25|counter\(5) & \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|counter\(5),
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X85_Y3_N20
\inst25|Mod1|auto_generated|divider|divider|StageOut[24]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\ = (\inst25|counter\(4) & \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|counter\(4),
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X85_Y3_N26
\inst25|Mod1|auto_generated|divider|divider|StageOut[24]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\ = (\inst25|counter\(4) & !\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|counter\(4),
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X84_Y3_N10
\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst25|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\) # (\inst25|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\)))
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst25|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\) # (\inst25|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datad => VCC,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X84_Y3_N12
\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst25|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\)))) # (!\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst25|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ & 
-- (!\inst25|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\)))
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst25|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ & (!\inst25|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- !\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datad => VCC,
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X84_Y3_N14
\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst25|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\)))) # (!\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst25|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\)))))
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst25|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datad => VCC,
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X84_Y3_N16
\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\inst25|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\)))) # (!\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\inst25|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- (!\inst25|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\)))
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\inst25|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ & (!\inst25|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- !\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datad => VCC,
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X84_Y3_N18
\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X84_Y3_N4
\inst25|Mod1|auto_generated|divider|divider|StageOut[36]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\inst25|counter\(7)))) # (!\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \inst25|counter\(7),
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\);

-- Location: LCCOMB_X83_Y3_N24
\inst25|Mod1|auto_generated|divider|divider|StageOut[36]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X84_Y3_N30
\inst25|Mod1|auto_generated|divider|divider|StageOut[35]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\inst25|counter\(6))) # (!\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(6),
	datab => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\);

-- Location: LCCOMB_X83_Y3_N2
\inst25|Mod1|auto_generated|divider|divider|StageOut[35]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X83_Y3_N0
\inst25|Mod1|auto_generated|divider|divider|StageOut[34]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X84_Y3_N0
\inst25|Mod1|auto_generated|divider|divider|StageOut[34]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\inst25|counter\(5))) # (!\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(5),
	datab => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\);

-- Location: LCCOMB_X84_Y3_N2
\inst25|Mod1|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X83_Y3_N26
\inst25|Mod1|auto_generated|divider|divider|StageOut[33]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ = (\inst25|counter\(4) & \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|counter\(4),
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X83_Y3_N10
\inst25|Mod1|auto_generated|divider|divider|StageOut[32]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\ = (\inst25|counter\(3) & !\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(3),
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X83_Y3_N8
\inst25|Mod1|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\inst25|counter\(3) & \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(3),
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X83_Y3_N12
\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst25|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\) # (\inst25|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\)))
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst25|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\) # (\inst25|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X83_Y3_N14
\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst25|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\)))) # (!\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst25|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- (!\inst25|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\)))
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst25|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ & (!\inst25|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- !\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datad => VCC,
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X83_Y3_N16
\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst25|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\)))) # (!\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst25|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\)))))
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst25|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datad => VCC,
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X83_Y3_N18
\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\inst25|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\)))) # (!\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\inst25|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ & 
-- (!\inst25|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\)))
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\inst25|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ & (!\inst25|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- !\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datad => VCC,
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X83_Y3_N20
\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\inst25|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\))))) # (!\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\inst25|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((\inst25|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\) # (GND))))
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\inst25|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # ((\inst25|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- (!\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datad => VCC,
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X83_Y3_N22
\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X83_Y3_N4
\inst25|Mod1|auto_generated|divider|divider|StageOut[45]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst25|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\);

-- Location: LCCOMB_X81_Y3_N16
\inst25|Mod1|auto_generated|divider|divider|StageOut[45]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X83_Y3_N6
\inst25|Mod1|auto_generated|divider|divider|StageOut[44]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst25|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\) # 
-- ((\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \inst25|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\);

-- Location: LCCOMB_X82_Y3_N24
\inst25|Mod1|auto_generated|divider|divider|StageOut[44]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X82_Y3_N2
\inst25|Mod1|auto_generated|divider|divider|StageOut[43]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X83_Y3_N28
\inst25|Mod1|auto_generated|divider|divider|StageOut[43]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst25|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- ((\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\);

-- Location: LCCOMB_X83_Y3_N30
\inst25|Mod1|auto_generated|divider|divider|StageOut[42]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\inst25|counter\(4))) # (!\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(4),
	datab => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\);

-- Location: LCCOMB_X81_Y3_N14
\inst25|Mod1|auto_generated|divider|divider|StageOut[42]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X82_Y3_N6
\inst25|Mod1|auto_generated|divider|divider|StageOut[41]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X82_Y3_N12
\inst25|Mod1|auto_generated|divider|divider|StageOut[41]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ = (\inst25|counter\(3) & \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(3),
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X82_Y3_N20
\inst25|Mod1|auto_generated|divider|divider|StageOut[40]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\ = (\inst25|counter\(2) & \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(2),
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X81_Y3_N0
\inst25|Mod1|auto_generated|divider|divider|StageOut[40]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\ = (\inst25|counter\(2) & !\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|counter\(2),
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X81_Y3_N18
\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst25|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\) # (\inst25|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\)))
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst25|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\) # (\inst25|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datad => VCC,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X81_Y3_N20
\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst25|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\)))) # (!\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst25|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- (!\inst25|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\)))
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst25|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ & (!\inst25|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- !\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datad => VCC,
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X81_Y3_N22
\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst25|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\)))) # (!\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst25|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\)))))
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst25|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datad => VCC,
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X81_Y3_N24
\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\inst25|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\)))) # (!\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\inst25|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- (!\inst25|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\)))
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\inst25|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ & (!\inst25|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ & 
-- !\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datad => VCC,
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X81_Y3_N26
\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\inst25|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\))))) # (!\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\inst25|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((\inst25|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\) # (GND))))
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\inst25|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # ((\inst25|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- (!\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datad => VCC,
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X81_Y3_N28
\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\inst25|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\)))) # (!\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\inst25|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- (!\inst25|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\)))
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\inst25|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ & (!\inst25|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ & 
-- !\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datad => VCC,
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X81_Y3_N30
\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X80_Y3_N30
\inst25|Mod1|auto_generated|divider|divider|StageOut[48]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\ = (\inst25|counter\(1) & !\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(1),
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\);

-- Location: LCCOMB_X80_Y3_N20
\inst25|Mod1|auto_generated|divider|divider|StageOut[48]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ = (\inst25|counter\(1) & \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(1),
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\);

-- Location: LCCOMB_X80_Y3_N4
\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\inst25|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\) # (\inst25|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\)))
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\inst25|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\) # (\inst25|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[48]~78_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\,
	datad => VCC,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X81_Y3_N2
\inst25|Mod1|auto_generated|divider|divider|StageOut[54]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\ = (!\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\);

-- Location: LCCOMB_X81_Y3_N10
\inst25|Mod1|auto_generated|divider|divider|StageOut[54]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst25|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\) # 
-- ((\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\);

-- Location: LCCOMB_X82_Y3_N10
\inst25|Mod1|auto_generated|divider|divider|StageOut[53]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst25|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((!\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \inst25|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\);

-- Location: LCCOMB_X80_Y3_N0
\inst25|Mod1|auto_generated|divider|divider|StageOut[53]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\ = (!\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\);

-- Location: LCCOMB_X81_Y3_N4
\inst25|Mod1|auto_generated|divider|divider|StageOut[52]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\ = (!\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\);

-- Location: LCCOMB_X82_Y3_N8
\inst25|Mod1|auto_generated|divider|divider|StageOut[52]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst25|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\) # 
-- ((!\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \inst25|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\);

-- Location: LCCOMB_X81_Y3_N6
\inst25|Mod1|auto_generated|divider|divider|StageOut[51]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\);

-- Location: LCCOMB_X81_Y3_N12
\inst25|Mod1|auto_generated|divider|divider|StageOut[51]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst25|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- ((\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\);

-- Location: LCCOMB_X80_Y3_N22
\inst25|Mod1|auto_generated|divider|divider|StageOut[50]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\ = (!\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\);

-- Location: LCCOMB_X82_Y3_N22
\inst25|Mod1|auto_generated|divider|divider|StageOut[50]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\inst25|counter\(3))) # (!\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(3),
	datab => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X80_Y3_N24
\inst25|Mod1|auto_generated|divider|divider|StageOut[49]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\ = (!\inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\);

-- Location: LCCOMB_X81_Y3_N8
\inst25|Mod1|auto_generated|divider|divider|StageOut[49]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\ = (\inst25|counter\(2) & \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|counter\(2),
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\);

-- Location: LCCOMB_X80_Y3_N6
\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\inst25|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\)))) # (!\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\inst25|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\ & 
-- (!\inst25|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\)))
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\inst25|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\ & (!\inst25|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\ & 
-- !\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\,
	datad => VCC,
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X80_Y3_N8
\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\inst25|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # (!\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\inst25|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\)))))
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\inst25|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datad => VCC,
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X80_Y3_N10
\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst25|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\ & (!\inst25|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ & 
-- !\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[51]~82_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\,
	datad => VCC,
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X80_Y3_N12
\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\inst25|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\) # ((\inst25|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\) # 
-- (!\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[52]~81_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\,
	datad => VCC,
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X80_Y3_N14
\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\inst25|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ & (!\inst25|Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\ & 
-- !\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[53]~80_combout\,
	datad => VCC,
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X80_Y3_N16
\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\inst25|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\) # ((\inst25|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\) # 
-- (!\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[54]~79_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\,
	datad => VCC,
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X80_Y3_N18
\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X80_Y3_N26
\inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\inst25|counter\(1))) # 
-- (!\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(1),
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\);

-- Location: LCCOMB_X80_Y3_N28
\inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\inst25|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\) # 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\)))) # (!\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datac => \inst25|Mod1|auto_generated|divider|divider|StageOut[49]~84_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\);

-- Location: LCCOMB_X80_Y3_N2
\inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ = (\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst25|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\) # 
-- ((\inst25|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # (!\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \inst25|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \inst25|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	combout => \inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\);

-- Location: LCCOMB_X80_Y1_N20
\inst11|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux0~0_combout\ = (\inst25|counter\(0) & ((\inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\) # (\inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ $ 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\)))) # (!\inst25|counter\(0) & ((\inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\) # (\inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ $ 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \inst25|counter\(0),
	datad => \inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	combout => \inst11|Mux0~0_combout\);

-- Location: LCCOMB_X80_Y1_N6
\inst11|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux1~0_combout\ = (\inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & (!\inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & ((\inst25|counter\(0)) # 
-- (!\inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\)))) # (!\inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & (\inst25|counter\(0) & (\inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ $ 
-- (!\inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \inst25|counter\(0),
	datad => \inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	combout => \inst11|Mux1~0_combout\);

-- Location: LCCOMB_X80_Y1_N0
\inst11|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux2~0_combout\ = (\inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & (((\inst25|counter\(0) & !\inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\)))) # 
-- (!\inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & ((!\inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\))) # 
-- (!\inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\inst25|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \inst25|counter\(0),
	datad => \inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	combout => \inst11|Mux2~0_combout\);

-- Location: LCCOMB_X80_Y1_N26
\inst11|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux3~0_combout\ = (\inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\inst25|counter\(0))) # 
-- (!\inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (!\inst25|counter\(0) & \inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\)))) # (!\inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- (!\inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & (\inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ $ (\inst25|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \inst25|counter\(0),
	datad => \inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	combout => \inst11|Mux3~0_combout\);

-- Location: LCCOMB_X80_Y1_N4
\inst11|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux4~0_combout\ = (\inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & ((\inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\) # 
-- (!\inst25|counter\(0))))) # (!\inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & (!\inst25|counter\(0) & 
-- !\inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \inst25|counter\(0),
	datad => \inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	combout => \inst11|Mux4~0_combout\);

-- Location: LCCOMB_X80_Y1_N14
\inst11|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux5~0_combout\ = (\inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\inst25|counter\(0) & ((\inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\))) # (!\inst25|counter\(0) & 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\)))) # (!\inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & (\inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\inst25|counter\(0) $ 
-- (\inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \inst25|counter\(0),
	datad => \inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	combout => \inst11|Mux5~0_combout\);

-- Location: LCCOMB_X80_Y1_N12
\inst11|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux6~0_combout\ = (\inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (!\inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & (\inst25|counter\(0) $ 
-- (!\inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\)))) # (!\inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\inst25|counter\(0) & (\inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ $ 
-- (!\inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \inst25|Mod1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \inst25|counter\(0),
	datad => \inst25|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	combout => \inst11|Mux6~0_combout\);

-- Location: LCCOMB_X87_Y4_N12
\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \inst25|counter\(3) $ (VCC)
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\inst25|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(3),
	datad => VCC,
	combout => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X87_Y4_N14
\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\inst25|counter\(4) & (\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\inst25|counter\(4) & 
-- (!\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\inst25|counter\(4) & !\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(4),
	datad => VCC,
	cin => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X87_Y4_N16
\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\inst25|counter\(5) & ((GND) # (!\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\inst25|counter\(5) & 
-- (\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\inst25|counter\(5)) # (!\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(5),
	datad => VCC,
	cin => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X87_Y4_N18
\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\inst25|counter\(6) & (!\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\inst25|counter\(6) & 
-- ((\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\inst25|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(6),
	datad => VCC,
	cin => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X87_Y4_N20
\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\inst25|counter\(7) & (\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\inst25|counter\(7) & 
-- (!\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\inst25|counter\(7) & !\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|counter\(7),
	datad => VCC,
	cin => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X87_Y4_N22
\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X87_Y4_N24
\inst25|Mod0|auto_generated|divider|divider|StageOut[54]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ = (!\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\);

-- Location: LCCOMB_X86_Y4_N28
\inst25|Mod0|auto_generated|divider|divider|StageOut[54]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ = (\inst25|counter\(7) & \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|counter\(7),
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\);

-- Location: LCCOMB_X87_Y4_N2
\inst25|Mod0|auto_generated|divider|divider|StageOut[53]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\ = (\inst25|counter\(6) & \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(6),
	datac => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\);

-- Location: LCCOMB_X86_Y4_N26
\inst25|Mod0|auto_generated|divider|divider|StageOut[53]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\ = (\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\);

-- Location: LCCOMB_X87_Y4_N4
\inst25|Mod0|auto_generated|divider|divider|StageOut[52]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ = (\inst25|counter\(5) & \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(5),
	datac => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\);

-- Location: LCCOMB_X87_Y4_N6
\inst25|Mod0|auto_generated|divider|divider|StageOut[52]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ = (!\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\);

-- Location: LCCOMB_X86_Y4_N24
\inst25|Mod0|auto_generated|divider|divider|StageOut[51]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\ = (\inst25|counter\(4) & \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(4),
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\);

-- Location: LCCOMB_X87_Y4_N8
\inst25|Mod0|auto_generated|divider|divider|StageOut[51]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\ = (\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datac => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\);

-- Location: LCCOMB_X86_Y4_N6
\inst25|Mod0|auto_generated|divider|divider|StageOut[50]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ = (\inst25|counter\(3) & \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|counter\(3),
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\);

-- Location: LCCOMB_X87_Y4_N10
\inst25|Mod0|auto_generated|divider|divider|StageOut[50]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\ = (!\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\);

-- Location: LCCOMB_X86_Y4_N22
\inst25|Mod0|auto_generated|divider|divider|StageOut[49]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\ = (\inst25|counter\(2) & \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(2),
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\);

-- Location: LCCOMB_X86_Y4_N0
\inst25|Mod0|auto_generated|divider|divider|StageOut[49]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\ = (\inst25|counter\(2) & !\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(2),
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\);

-- Location: LCCOMB_X86_Y4_N8
\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\inst25|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\) # (\inst25|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\)))
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\inst25|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\) # (\inst25|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\,
	datab => \inst25|Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\,
	datad => VCC,
	combout => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X86_Y4_N10
\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\inst25|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\) # 
-- (\inst25|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\)))) # (!\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\inst25|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ & 
-- (!\inst25|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\)))
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\inst25|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ & (!\inst25|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\ & 
-- !\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\,
	datab => \inst25|Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\,
	datad => VCC,
	cin => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X86_Y4_N12
\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\inst25|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\) # 
-- (\inst25|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\))))) # (!\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\inst25|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\) # 
-- ((\inst25|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\) # (GND))))
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\inst25|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\) # ((\inst25|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\) # 
-- (!\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\,
	datab => \inst25|Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\,
	datad => VCC,
	cin => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X86_Y4_N14
\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\inst25|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ & (((!\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\inst25|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ & ((\inst25|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ & (!\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\inst25|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ & ((\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\inst25|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ & !\inst25|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\)) # 
-- (!\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\,
	datab => \inst25|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\,
	datad => VCC,
	cin => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X86_Y4_N16
\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\inst25|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\) # 
-- (\inst25|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\)))) # (!\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\inst25|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\) # 
-- (\inst25|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\)))))
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\inst25|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\) # 
-- (\inst25|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\,
	datab => \inst25|Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\,
	datad => VCC,
	cin => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X86_Y4_N18
\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = (\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (((\inst25|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\) # 
-- (\inst25|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\)))) # (!\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (!\inst25|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ & 
-- (!\inst25|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\)))
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ = CARRY((!\inst25|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ & (!\inst25|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ & 
-- !\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\,
	datab => \inst25|Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\,
	datad => VCC,
	cin => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	combout => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	cout => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\);

-- Location: LCCOMB_X86_Y4_N20
\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\,
	combout => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X87_Y4_N28
\inst25|Mod0|auto_generated|divider|divider|StageOut[60]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[60]~66_combout\ = (\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\inst25|counter\(4))) # (!\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(4),
	datab => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datac => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[60]~66_combout\);

-- Location: LCCOMB_X84_Y4_N8
\inst25|Mod0|auto_generated|divider|divider|StageOut[60]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\ = (\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\);

-- Location: LCCOMB_X84_Y4_N16
\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\inst25|Mod0|auto_generated|divider|divider|StageOut[60]~66_combout\) # (\inst25|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod0|auto_generated|divider|divider|StageOut[60]~66_combout\,
	datac => \inst25|Mod0|auto_generated|divider|divider|StageOut[60]~55_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X86_Y4_N30
\inst25|Mod0|auto_generated|divider|divider|StageOut[63]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\ = (\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\inst25|counter\(7))) # (!\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst25|counter\(7),
	datac => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\);

-- Location: LCCOMB_X85_Y4_N2
\inst25|Mod0|auto_generated|divider|divider|StageOut[63]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\ = (!\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\);

-- Location: LCCOMB_X86_Y4_N4
\inst25|Mod0|auto_generated|divider|divider|StageOut[62]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ = (\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\inst25|counter\(6)))) # (!\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datac => \inst25|counter\(6),
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\);

-- Location: LCCOMB_X85_Y4_N24
\inst25|Mod0|auto_generated|divider|divider|StageOut[62]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ = (!\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\);

-- Location: LCCOMB_X86_Y4_N2
\inst25|Mod0|auto_generated|divider|divider|StageOut[61]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[61]~65_combout\ = (\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\inst25|counter\(5))) # (!\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(5),
	datab => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[61]~65_combout\);

-- Location: LCCOMB_X85_Y4_N22
\inst25|Mod0|auto_generated|divider|divider|StageOut[61]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\ = (\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\);

-- Location: LCCOMB_X85_Y4_N12
\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\inst25|Mod0|auto_generated|divider|divider|StageOut[61]~65_combout\) # (\inst25|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\)))
-- \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\inst25|Mod0|auto_generated|divider|divider|StageOut[61]~65_combout\) # (\inst25|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod0|auto_generated|divider|divider|StageOut[61]~65_combout\,
	datab => \inst25|Mod0|auto_generated|divider|divider|StageOut[61]~54_combout\,
	datad => VCC,
	combout => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X85_Y4_N14
\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\inst25|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\) # 
-- (\inst25|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\)))) # (!\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\inst25|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & 
-- (!\inst25|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\)))
-- \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst25|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\ & (!\inst25|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\ & 
-- !\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datab => \inst25|Mod0|auto_generated|divider|divider|StageOut[62]~53_combout\,
	datad => VCC,
	cin => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X85_Y4_N16
\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\inst25|Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\) # 
-- (\inst25|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\)))) # (!\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\inst25|Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\) # 
-- (\inst25|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\)))))
-- \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\inst25|Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\) # 
-- (\inst25|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\,
	datab => \inst25|Mod0|auto_generated|divider|divider|StageOut[63]~52_combout\,
	datad => VCC,
	cin => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X85_Y4_N18
\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X84_Y4_N10
\inst25|Div0|auto_generated|divider|divider|StageOut[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[15]~47_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[15]~47_combout\);

-- Location: LCCOMB_X84_Y4_N4
\inst25|Div0|auto_generated|divider|divider|StageOut[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[15]~63_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst25|Mod0|auto_generated|divider|divider|StageOut[60]~66_combout\) # 
-- ((\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod0|auto_generated|divider|divider|StageOut[60]~66_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X84_Y4_N18
\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst25|Div0|auto_generated|divider|divider|StageOut[15]~47_combout\) # (\inst25|Div0|auto_generated|divider|divider|StageOut[15]~63_combout\)))
-- \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst25|Div0|auto_generated|divider|divider|StageOut[15]~47_combout\) # (\inst25|Div0|auto_generated|divider|divider|StageOut[15]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|StageOut[15]~47_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datad => VCC,
	combout => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X85_Y4_N6
\inst25|Div0|auto_generated|divider|divider|StageOut[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[18]~60_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst25|Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\) # 
-- ((\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\,
	datab => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[18]~60_combout\);

-- Location: LCCOMB_X84_Y4_N14
\inst25|Div0|auto_generated|divider|divider|StageOut[18]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[18]~44_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[18]~44_combout\);

-- Location: LCCOMB_X84_Y4_N12
\inst25|Div0|auto_generated|divider|divider|StageOut[17]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[17]~45_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[17]~45_combout\);

-- Location: LCCOMB_X85_Y4_N8
\inst25|Div0|auto_generated|divider|divider|StageOut[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[17]~61_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst25|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\) # 
-- ((\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod0|auto_generated|divider|divider|StageOut[62]~64_combout\,
	datab => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[17]~61_combout\);

-- Location: LCCOMB_X84_Y4_N30
\inst25|Div0|auto_generated|divider|divider|StageOut[16]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[16]~46_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[16]~46_combout\);

-- Location: LCCOMB_X85_Y4_N26
\inst25|Div0|auto_generated|divider|divider|StageOut[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[16]~62_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst25|Mod0|auto_generated|divider|divider|StageOut[61]~65_combout\) # 
-- ((\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod0|auto_generated|divider|divider|StageOut[61]~65_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[16]~62_combout\);

-- Location: LCCOMB_X84_Y4_N20
\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst25|Div0|auto_generated|divider|divider|StageOut[16]~46_combout\) # 
-- (\inst25|Div0|auto_generated|divider|divider|StageOut[16]~62_combout\)))) # (!\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst25|Div0|auto_generated|divider|divider|StageOut[16]~46_combout\ & 
-- (!\inst25|Div0|auto_generated|divider|divider|StageOut[16]~62_combout\)))
-- \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst25|Div0|auto_generated|divider|divider|StageOut[16]~46_combout\ & (!\inst25|Div0|auto_generated|divider|divider|StageOut[16]~62_combout\ & 
-- !\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|StageOut[16]~46_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|StageOut[16]~62_combout\,
	datad => VCC,
	cin => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X84_Y4_N22
\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst25|Div0|auto_generated|divider|divider|StageOut[17]~45_combout\) # 
-- (\inst25|Div0|auto_generated|divider|divider|StageOut[17]~61_combout\)))) # (!\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst25|Div0|auto_generated|divider|divider|StageOut[17]~45_combout\) # 
-- (\inst25|Div0|auto_generated|divider|divider|StageOut[17]~61_combout\)))))
-- \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst25|Div0|auto_generated|divider|divider|StageOut[17]~45_combout\) # 
-- (\inst25|Div0|auto_generated|divider|divider|StageOut[17]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|StageOut[17]~45_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|StageOut[17]~61_combout\,
	datad => VCC,
	cin => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X84_Y4_N24
\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst25|Div0|auto_generated|divider|divider|StageOut[18]~60_combout\ & (!\inst25|Div0|auto_generated|divider|divider|StageOut[18]~44_combout\ & 
-- !\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|StageOut[18]~60_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|StageOut[18]~44_combout\,
	datad => VCC,
	cin => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X84_Y4_N26
\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X83_Y4_N6
\inst25|Div0|auto_generated|divider|divider|StageOut[21]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[21]~50_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[21]~50_combout\);

-- Location: LCCOMB_X84_Y4_N28
\inst25|Div0|auto_generated|divider|divider|StageOut[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst25|Div0|auto_generated|divider|divider|StageOut[15]~63_combout\) # 
-- ((\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datac => \inst25|Div0|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X87_Y4_N26
\inst25|Mod0|auto_generated|divider|divider|StageOut[59]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[59]~67_combout\ = (\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\inst25|counter\(3))) # (!\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(3),
	datab => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[59]~67_combout\);

-- Location: LCCOMB_X83_Y4_N10
\inst25|Div0|auto_generated|divider|divider|StageOut[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[20]~67_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst25|Mod0|auto_generated|divider|divider|StageOut[59]~67_combout\) # 
-- ((!\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|StageOut[59]~67_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[20]~67_combout\);

-- Location: LCCOMB_X83_Y4_N8
\inst25|Mod0|auto_generated|divider|divider|StageOut[59]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\ = (!\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\);

-- Location: LCCOMB_X83_Y4_N0
\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\inst25|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\) # (\inst25|Mod0|auto_generated|divider|divider|StageOut[59]~67_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Mod0|auto_generated|divider|divider|StageOut[59]~56_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|StageOut[59]~67_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X83_Y4_N14
\inst25|Div0|auto_generated|divider|divider|StageOut[20]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[20]~51_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[20]~51_combout\);

-- Location: LCCOMB_X83_Y4_N22
\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst25|Div0|auto_generated|divider|divider|StageOut[20]~67_combout\) # (\inst25|Div0|auto_generated|divider|divider|StageOut[20]~51_combout\)))
-- \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst25|Div0|auto_generated|divider|divider|StageOut[20]~67_combout\) # (\inst25|Div0|auto_generated|divider|divider|StageOut[20]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|StageOut[20]~67_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|StageOut[20]~51_combout\,
	datad => VCC,
	combout => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X83_Y4_N24
\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst25|Div0|auto_generated|divider|divider|StageOut[21]~50_combout\) # 
-- (\inst25|Div0|auto_generated|divider|divider|StageOut[21]~66_combout\)))) # (!\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst25|Div0|auto_generated|divider|divider|StageOut[21]~50_combout\ & 
-- (!\inst25|Div0|auto_generated|divider|divider|StageOut[21]~66_combout\)))
-- \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst25|Div0|auto_generated|divider|divider|StageOut[21]~50_combout\ & (!\inst25|Div0|auto_generated|divider|divider|StageOut[21]~66_combout\ & 
-- !\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|StageOut[21]~50_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datad => VCC,
	cin => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X83_Y4_N12
\inst25|Div0|auto_generated|divider|divider|StageOut[22]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[22]~49_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[22]~49_combout\);

-- Location: LCCOMB_X84_Y4_N0
\inst25|Div0|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst25|Div0|auto_generated|divider|divider|StageOut[16]~62_combout\) # 
-- ((\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|StageOut[16]~62_combout\,
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X83_Y4_N26
\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst25|Div0|auto_generated|divider|divider|StageOut[22]~49_combout\) # 
-- (\inst25|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # (!\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst25|Div0|auto_generated|divider|divider|StageOut[22]~49_combout\) # 
-- (\inst25|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst25|Div0|auto_generated|divider|divider|StageOut[22]~49_combout\) # 
-- (\inst25|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|StageOut[22]~49_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X84_Y4_N2
\inst25|Div0|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst25|Div0|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- ((\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|StageOut[17]~61_combout\,
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X83_Y4_N2
\inst25|Div0|auto_generated|divider|divider|StageOut[23]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[23]~48_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[23]~48_combout\);

-- Location: LCCOMB_X83_Y4_N28
\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst25|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ & (!\inst25|Div0|auto_generated|divider|divider|StageOut[23]~48_combout\ & 
-- !\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|StageOut[23]~48_combout\,
	datad => VCC,
	cin => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X83_Y4_N30
\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X83_Y4_N4
\inst25|Div0|auto_generated|divider|divider|StageOut[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[28]~52_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X83_Y4_N16
\inst25|Div0|auto_generated|divider|divider|StageOut[28]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[28]~68_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst25|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[28]~68_combout\);

-- Location: LCCOMB_X82_Y4_N30
\inst25|Div0|auto_generated|divider|divider|StageOut[27]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[27]~53_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[27]~53_combout\);

-- Location: LCCOMB_X83_Y4_N18
\inst25|Div0|auto_generated|divider|divider|StageOut[27]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst25|Div0|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- ((\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X83_Y4_N20
\inst25|Div0|auto_generated|divider|divider|StageOut[26]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[26]~70_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst25|Div0|auto_generated|divider|divider|StageOut[20]~67_combout\) # 
-- ((\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|StageOut[20]~67_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[26]~70_combout\);

-- Location: LCCOMB_X82_Y4_N16
\inst25|Div0|auto_generated|divider|divider|StageOut[26]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[26]~54_combout\ = (!\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[26]~54_combout\);

-- Location: LCCOMB_X85_Y4_N10
\inst25|Div0|auto_generated|divider|divider|StageOut[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\inst25|counter\(2))) # (!\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|counter\(2),
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X85_Y4_N30
\inst25|Mod0|auto_generated|divider|divider|StageOut[58]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\ = (\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & !\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\);

-- Location: LCCOMB_X85_Y4_N20
\inst25|Mod0|auto_generated|divider|divider|StageOut[58]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\ = (\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst25|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst25|counter\(2),
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\);

-- Location: LCCOMB_X85_Y4_N0
\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ = (\inst25|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\) # (\inst25|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Mod0|auto_generated|divider|divider|StageOut[58]~58_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|StageOut[58]~57_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\);

-- Location: LCCOMB_X85_Y4_N4
\inst25|Div0|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X82_Y4_N0
\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst25|Div0|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\inst25|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\)))
-- \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst25|Div0|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\inst25|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => VCC,
	combout => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X82_Y4_N2
\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst25|Div0|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- (\inst25|Div0|auto_generated|divider|divider|StageOut[26]~54_combout\)))) # (!\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst25|Div0|auto_generated|divider|divider|StageOut[26]~70_combout\ & 
-- (!\inst25|Div0|auto_generated|divider|divider|StageOut[26]~54_combout\)))
-- \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst25|Div0|auto_generated|divider|divider|StageOut[26]~70_combout\ & (!\inst25|Div0|auto_generated|divider|divider|StageOut[26]~54_combout\ & 
-- !\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|StageOut[26]~54_combout\,
	datad => VCC,
	cin => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X82_Y4_N4
\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst25|Div0|auto_generated|divider|divider|StageOut[27]~53_combout\) # 
-- (\inst25|Div0|auto_generated|divider|divider|StageOut[27]~69_combout\)))) # (!\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst25|Div0|auto_generated|divider|divider|StageOut[27]~53_combout\) # 
-- (\inst25|Div0|auto_generated|divider|divider|StageOut[27]~69_combout\)))))
-- \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst25|Div0|auto_generated|divider|divider|StageOut[27]~53_combout\) # 
-- (\inst25|Div0|auto_generated|divider|divider|StageOut[27]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|StageOut[27]~53_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datad => VCC,
	cin => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X82_Y4_N6
\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\inst25|Div0|auto_generated|divider|divider|StageOut[28]~52_combout\ & (!\inst25|Div0|auto_generated|divider|divider|StageOut[28]~68_combout\ & 
-- !\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|StageOut[28]~68_combout\,
	datad => VCC,
	cin => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X82_Y4_N8
\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X82_Y4_N12
\inst25|Div0|auto_generated|divider|divider|StageOut[33]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[33]~71_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst25|Div0|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- ((\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|StageOut[27]~69_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[33]~71_combout\);

-- Location: LCCOMB_X82_Y4_N18
\inst25|Div0|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X82_Y4_N20
\inst25|Div0|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ = (!\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X82_Y4_N26
\inst25|Div0|auto_generated|divider|divider|StageOut[32]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[32]~72_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst25|Div0|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- ((!\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[32]~72_combout\);

-- Location: LCCOMB_X85_Y4_N28
\inst25|Div0|auto_generated|divider|divider|StageOut[31]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[31]~73_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst25|Div0|auto_generated|divider|divider|StageOut[25]~74_combout\) # 
-- ((!\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[31]~73_combout\);

-- Location: LCCOMB_X82_Y4_N10
\inst25|Div0|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ = (!\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X81_Y4_N4
\inst25|Mod0|auto_generated|divider|divider|StageOut[48]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\ = (\inst25|counter\(1) & !\inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|counter\(1),
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\);

-- Location: LCCOMB_X81_Y4_N10
\inst25|Mod0|auto_generated|divider|divider|StageOut[48]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\ = (\inst25|counter\(1) & \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|counter\(1),
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\);

-- Location: LCCOMB_X81_Y4_N16
\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\inst25|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\) # (\inst25|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X81_Y4_N12
\inst25|Div0|auto_generated|divider|divider|StageOut[30]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[30]~75_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\inst25|counter\(1))) # (!\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst25|counter\(1),
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[30]~75_combout\);

-- Location: LCCOMB_X81_Y4_N0
\inst25|Mod0|auto_generated|divider|divider|StageOut[57]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\ = (\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst25|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst25|counter\(1),
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\);

-- Location: LCCOMB_X81_Y4_N6
\inst25|Mod0|auto_generated|divider|divider|StageOut[57]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\ = (\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ & !\inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => \inst25|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst25|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\);

-- Location: LCCOMB_X81_Y4_N2
\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ = (\inst25|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\) # (\inst25|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|Mod0|auto_generated|divider|divider|StageOut[57]~59_combout\,
	datad => \inst25|Mod0|auto_generated|divider|divider|StageOut[57]~62_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\);

-- Location: LCCOMB_X81_Y4_N20
\inst25|Div0|auto_generated|divider|divider|StageOut[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\ = (!\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	combout => \inst25|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\);

-- Location: LCCOMB_X81_Y4_N22
\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\inst25|Div0|auto_generated|divider|divider|StageOut[30]~75_combout\) # (\inst25|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|StageOut[30]~75_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datad => VCC,
	cout => \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X81_Y4_N24
\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\inst25|Div0|auto_generated|divider|divider|StageOut[31]~73_combout\ & (!\inst25|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ & 
-- !\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|StageOut[31]~73_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X81_Y4_N26
\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\inst25|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\) # 
-- (\inst25|Div0|auto_generated|divider|divider|StageOut[32]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|StageOut[32]~72_combout\,
	datad => VCC,
	cin => \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X81_Y4_N28
\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst25|Div0|auto_generated|divider|divider|StageOut[33]~71_combout\ & (!\inst25|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- !\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|StageOut[33]~71_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datad => VCC,
	cin => \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X81_Y4_N30
\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X81_Y4_N18
\inst2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X82_Y4_N24
\inst2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((!\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # (!\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X81_Y4_N8
\inst2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # 
-- (!\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X81_Y4_N14
\inst2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # (!\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # 
-- (!\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (!\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X82_Y4_N22
\inst2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (!\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # (!\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X82_Y4_N28
\inst2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # (!\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (!\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((!\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X82_Y4_N14
\inst2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (!\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # (!\inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (!\inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst25|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \inst25|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst25|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Mux6~0_combout\);

-- Location: IOIBUF_X72_Y73_N22
\SW0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

-- Location: IOIBUF_X115_Y47_N22
\SW1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\SW6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW6,
	o => \SW6~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\SW5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW5,
	o => \SW5~input_o\);

-- Location: IOIBUF_X115_Y29_N8
\SW4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW4,
	o => \SW4~input_o\);

-- Location: IOIBUF_X89_Y0_N15
\SW7~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW7,
	o => \SW7~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


