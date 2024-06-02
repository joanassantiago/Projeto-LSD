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

-- DATE "06/02/2024 10:56:20"

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

ENTITY 	AifryerController IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW1 : IN std_logic;
	SW2 : IN std_logic;
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
END AifryerController;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW1	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW0	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW4	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW6	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW5	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW7	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AifryerController IS
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
SIGNAL ww_SW2 : std_logic;
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
SIGNAL \inst7|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|preheat_set[7]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|heating~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst7|Add0~0_combout\ : std_logic;
SIGNAL \inst7|Add0~1\ : std_logic;
SIGNAL \inst7|Add0~2_combout\ : std_logic;
SIGNAL \inst7|Add0~3\ : std_logic;
SIGNAL \inst7|Add0~4_combout\ : std_logic;
SIGNAL \inst7|Add0~5\ : std_logic;
SIGNAL \inst7|Add0~6_combout\ : std_logic;
SIGNAL \inst7|Add0~7\ : std_logic;
SIGNAL \inst7|Add0~8_combout\ : std_logic;
SIGNAL \inst7|Add0~9\ : std_logic;
SIGNAL \inst7|Add0~10_combout\ : std_logic;
SIGNAL \inst7|Add0~11\ : std_logic;
SIGNAL \inst7|Add0~12_combout\ : std_logic;
SIGNAL \inst7|Equal0~5_combout\ : std_logic;
SIGNAL \inst7|Add0~33\ : std_logic;
SIGNAL \inst7|Add0~34_combout\ : std_logic;
SIGNAL \inst7|s_divCounter~2_combout\ : std_logic;
SIGNAL \inst7|Add0~35\ : std_logic;
SIGNAL \inst7|Add0~36_combout\ : std_logic;
SIGNAL \inst7|Add0~37\ : std_logic;
SIGNAL \inst7|Add0~38_combout\ : std_logic;
SIGNAL \inst7|s_divCounter~7_combout\ : std_logic;
SIGNAL \inst7|Add0~39\ : std_logic;
SIGNAL \inst7|Add0~40_combout\ : std_logic;
SIGNAL \inst7|s_divCounter~6_combout\ : std_logic;
SIGNAL \inst7|Add0~41\ : std_logic;
SIGNAL \inst7|Add0~42_combout\ : std_logic;
SIGNAL \inst7|s_divCounter~5_combout\ : std_logic;
SIGNAL \inst7|Add0~43\ : std_logic;
SIGNAL \inst7|Add0~44_combout\ : std_logic;
SIGNAL \inst7|s_divCounter~4_combout\ : std_logic;
SIGNAL \inst7|Add0~45\ : std_logic;
SIGNAL \inst7|Add0~46_combout\ : std_logic;
SIGNAL \inst7|s_divCounter~1_combout\ : std_logic;
SIGNAL \inst7|Add0~47\ : std_logic;
SIGNAL \inst7|Add0~48_combout\ : std_logic;
SIGNAL \inst7|Add0~49\ : std_logic;
SIGNAL \inst7|Add0~50_combout\ : std_logic;
SIGNAL \inst7|s_divCounter~0_combout\ : std_logic;
SIGNAL \inst7|Add0~51\ : std_logic;
SIGNAL \inst7|Add0~52_combout\ : std_logic;
SIGNAL \inst7|Add0~53\ : std_logic;
SIGNAL \inst7|Add0~54_combout\ : std_logic;
SIGNAL \inst7|Add0~55\ : std_logic;
SIGNAL \inst7|Add0~56_combout\ : std_logic;
SIGNAL \inst7|Add0~57\ : std_logic;
SIGNAL \inst7|Add0~58_combout\ : std_logic;
SIGNAL \inst7|Add0~59\ : std_logic;
SIGNAL \inst7|Add0~60_combout\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|Equal0~1_combout\ : std_logic;
SIGNAL \inst7|Add0~13\ : std_logic;
SIGNAL \inst7|Add0~14_combout\ : std_logic;
SIGNAL \inst7|s_divCounter~11_combout\ : std_logic;
SIGNAL \inst7|Add0~15\ : std_logic;
SIGNAL \inst7|Add0~16_combout\ : std_logic;
SIGNAL \inst7|Add0~17\ : std_logic;
SIGNAL \inst7|Add0~18_combout\ : std_logic;
SIGNAL \inst7|Add0~19\ : std_logic;
SIGNAL \inst7|Add0~20_combout\ : std_logic;
SIGNAL \inst7|Add0~21\ : std_logic;
SIGNAL \inst7|Add0~22_combout\ : std_logic;
SIGNAL \inst7|Add0~23\ : std_logic;
SIGNAL \inst7|Add0~24_combout\ : std_logic;
SIGNAL \inst7|s_divCounter~10_combout\ : std_logic;
SIGNAL \inst7|Add0~25\ : std_logic;
SIGNAL \inst7|Add0~26_combout\ : std_logic;
SIGNAL \inst7|s_divCounter~9_combout\ : std_logic;
SIGNAL \inst7|Add0~27\ : std_logic;
SIGNAL \inst7|Add0~28_combout\ : std_logic;
SIGNAL \inst7|s_divCounter~8_combout\ : std_logic;
SIGNAL \inst7|Equal0~2_combout\ : std_logic;
SIGNAL \inst7|Equal0~3_combout\ : std_logic;
SIGNAL \inst7|Equal0~4_combout\ : std_logic;
SIGNAL \inst7|Equal0~6_combout\ : std_logic;
SIGNAL \inst7|Add0~29\ : std_logic;
SIGNAL \inst7|Add0~30_combout\ : std_logic;
SIGNAL \inst7|s_divCounter~3_combout\ : std_logic;
SIGNAL \inst7|Add0~31\ : std_logic;
SIGNAL \inst7|Add0~32_combout\ : std_logic;
SIGNAL \inst7|Equal0~8_combout\ : std_logic;
SIGNAL \inst7|Equal0~7_combout\ : std_logic;
SIGNAL \inst7|Equal0~9_combout\ : std_logic;
SIGNAL \inst7|clkOut~0_combout\ : std_logic;
SIGNAL \inst7|clkOut~1_combout\ : std_logic;
SIGNAL \inst7|clkOut~2_combout\ : std_logic;
SIGNAL \inst7|clkOut~3_combout\ : std_logic;
SIGNAL \inst7|clkOut~feeder_combout\ : std_logic;
SIGNAL \inst7|clkOut~q\ : std_logic;
SIGNAL \inst7|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \inst|openOven_last~0_combout\ : std_logic;
SIGNAL \inst|openOven_last~q\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \inst|current_state~29_combout\ : std_logic;
SIGNAL \inst10|s_coolStart~0_combout\ : std_logic;
SIGNAL \inst10|s_coolStart~q\ : std_logic;
SIGNAL \SW5~input_o\ : std_logic;
SIGNAL \SW6~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \inst8|Add0~0_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \inst8|Add0~7\ : std_logic;
SIGNAL \inst8|Add0~8_combout\ : std_logic;
SIGNAL \inst8|temperature[4]~4_combout\ : std_logic;
SIGNAL \inst8|Add0~9\ : std_logic;
SIGNAL \inst8|Add0~10_combout\ : std_logic;
SIGNAL \inst8|Add0~11\ : std_logic;
SIGNAL \inst8|Add0~12_combout\ : std_logic;
SIGNAL \inst8|Add0~13\ : std_logic;
SIGNAL \inst8|Add0~14_combout\ : std_logic;
SIGNAL \inst8|temperature~0_combout\ : std_logic;
SIGNAL \inst8|temperature~1_combout\ : std_logic;
SIGNAL \inst8|temperature~2_combout\ : std_logic;
SIGNAL \inst8|temperature~3_combout\ : std_logic;
SIGNAL \inst8|Add0~1\ : std_logic;
SIGNAL \inst8|Add0~2_combout\ : std_logic;
SIGNAL \inst8|Add0~3\ : std_logic;
SIGNAL \inst8|Add0~4_combout\ : std_logic;
SIGNAL \inst8|temperature[2]~5_combout\ : std_logic;
SIGNAL \inst8|Add0~5\ : std_logic;
SIGNAL \inst8|Add0~6_combout\ : std_logic;
SIGNAL \SW4~input_o\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|heating~0_combout\ : std_logic;
SIGNAL \inst|heating~0clkctrl_outclk\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst10|Add1~0_combout\ : std_logic;
SIGNAL \inst10|s_counter[1]~3_combout\ : std_logic;
SIGNAL \inst10|Add0~0_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst10|Add1~5\ : std_logic;
SIGNAL \inst10|Add1~6_combout\ : std_logic;
SIGNAL \inst10|s_counter[4]~0_combout\ : std_logic;
SIGNAL \inst10|Add0~1\ : std_logic;
SIGNAL \inst10|Add0~3\ : std_logic;
SIGNAL \inst10|Add0~5\ : std_logic;
SIGNAL \inst10|Add0~6_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst10|Add1~7\ : std_logic;
SIGNAL \inst10|Add1~8_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst10|s_counter[5]~15_combout\ : std_logic;
SIGNAL \inst10|Add0~7\ : std_logic;
SIGNAL \inst10|Add0~8_combout\ : std_logic;
SIGNAL \inst10|s_counter[5]~14_combout\ : std_logic;
SIGNAL \inst10|s_counter[5]~16_combout\ : std_logic;
SIGNAL \inst10|Add1~9\ : std_logic;
SIGNAL \inst10|Add1~10_combout\ : std_logic;
SIGNAL \inst10|s_counter[6]~12_combout\ : std_logic;
SIGNAL \inst10|Add0~9\ : std_logic;
SIGNAL \inst10|Add0~10_combout\ : std_logic;
SIGNAL \inst10|s_counter[6]~11_combout\ : std_logic;
SIGNAL \inst10|s_counter[6]~13_combout\ : std_logic;
SIGNAL \inst10|Add1~11\ : std_logic;
SIGNAL \inst10|Add1~12_combout\ : std_logic;
SIGNAL \inst10|s_counter[7]~9_combout\ : std_logic;
SIGNAL \inst10|Add0~11\ : std_logic;
SIGNAL \inst10|Add0~12_combout\ : std_logic;
SIGNAL \inst10|s_counter[7]~8_combout\ : std_logic;
SIGNAL \inst10|s_counter[7]~10_combout\ : std_logic;
SIGNAL \inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst10|LessThan0~1_cout\ : std_logic;
SIGNAL \inst10|LessThan0~3_cout\ : std_logic;
SIGNAL \inst10|LessThan0~5_cout\ : std_logic;
SIGNAL \inst10|LessThan0~7_cout\ : std_logic;
SIGNAL \inst10|LessThan0~9_cout\ : std_logic;
SIGNAL \inst10|LessThan0~11_cout\ : std_logic;
SIGNAL \inst10|LessThan0~13_cout\ : std_logic;
SIGNAL \inst10|LessThan0~14_combout\ : std_logic;
SIGNAL \inst10|s_counter[3]~6_combout\ : std_logic;
SIGNAL \inst10|s_counter[3]~7_combout\ : std_logic;
SIGNAL \inst10|s_coolDone~0_combout\ : std_logic;
SIGNAL \inst10|s_counter[3]~5_combout\ : std_logic;
SIGNAL \inst10|Add1~1\ : std_logic;
SIGNAL \inst10|Add1~2_combout\ : std_logic;
SIGNAL \inst10|s_counter[2]~2_combout\ : std_logic;
SIGNAL \inst10|Add0~2_combout\ : std_logic;
SIGNAL \inst10|Add1~3\ : std_logic;
SIGNAL \inst10|Add1~4_combout\ : std_logic;
SIGNAL \inst10|s_counter[3]~1_combout\ : std_logic;
SIGNAL \inst10|Add0~4_combout\ : std_logic;
SIGNAL \inst10|LessThan1~0_combout\ : std_logic;
SIGNAL \inst10|s_coolDone~1_combout\ : std_logic;
SIGNAL \inst10|s_coolDone~2_combout\ : std_logic;
SIGNAL \inst10|s_coolDone~q\ : std_logic;
SIGNAL \inst|current_state~32_combout\ : std_logic;
SIGNAL \inst|current_state.IDLE~q\ : std_logic;
SIGNAL \inst10|s_heatDone~2_combout\ : std_logic;
SIGNAL \inst10|s_heatDone~q\ : std_logic;
SIGNAL \inst|current_state~16_combout\ : std_logic;
SIGNAL \inst|current_state~30_combout\ : std_logic;
SIGNAL \inst|current_state~17_combout\ : std_logic;
SIGNAL \inst|current_state.PreHEAT~q\ : std_logic;
SIGNAL \inst11|counter[0]~8_combout\ : std_logic;
SIGNAL \inst9|timecook[0]~10_combout\ : std_logic;
SIGNAL \SW7~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \inst9|timecook[0]~11\ : std_logic;
SIGNAL \inst9|timecook[1]~15_combout\ : std_logic;
SIGNAL \inst9|timecook[1]~16\ : std_logic;
SIGNAL \inst9|timecook[2]~17_combout\ : std_logic;
SIGNAL \inst9|timecook[2]~18\ : std_logic;
SIGNAL \inst9|timecook[3]~19_combout\ : std_logic;
SIGNAL \inst9|timecook[3]~20\ : std_logic;
SIGNAL \inst9|timecook[4]~21_combout\ : std_logic;
SIGNAL \inst9|timecook[4]~22\ : std_logic;
SIGNAL \inst9|timecook[5]~23_combout\ : std_logic;
SIGNAL \inst9|timecook[5]~24\ : std_logic;
SIGNAL \inst9|timecook[6]~25_combout\ : std_logic;
SIGNAL \inst9|timecook[6]~26\ : std_logic;
SIGNAL \inst9|timecook[7]~27_combout\ : std_logic;
SIGNAL \inst9|timecook[7]~12_combout\ : std_logic;
SIGNAL \inst9|timecook[7]~13_combout\ : std_logic;
SIGNAL \inst9|timecook[7]~14_combout\ : std_logic;
SIGNAL \inst9|timecook[7]~29_combout\ : std_logic;
SIGNAL \inst|Mux16~0_combout\ : std_logic;
SIGNAL \inst9|timepreheat[0]~10_combout\ : std_logic;
SIGNAL \inst9|timepreheat[0]~11\ : std_logic;
SIGNAL \inst9|timepreheat[1]~15_combout\ : std_logic;
SIGNAL \inst9|timepreheat[1]~16\ : std_logic;
SIGNAL \inst9|timepreheat[2]~17_combout\ : std_logic;
SIGNAL \inst9|timepreheat[2]~18\ : std_logic;
SIGNAL \inst9|timepreheat[3]~19_combout\ : std_logic;
SIGNAL \inst9|timepreheat[3]~20\ : std_logic;
SIGNAL \inst9|timepreheat[4]~21_combout\ : std_logic;
SIGNAL \inst9|timepreheat[4]~22\ : std_logic;
SIGNAL \inst9|timepreheat[5]~23_combout\ : std_logic;
SIGNAL \inst9|timepreheat[5]~24\ : std_logic;
SIGNAL \inst9|timepreheat[6]~25_combout\ : std_logic;
SIGNAL \inst9|timepreheat[6]~26\ : std_logic;
SIGNAL \inst9|timepreheat[7]~27_combout\ : std_logic;
SIGNAL \inst9|timepreheat[7]~12_combout\ : std_logic;
SIGNAL \inst9|timepreheat[7]~13_combout\ : std_logic;
SIGNAL \inst9|timepreheat[7]~14_combout\ : std_logic;
SIGNAL \inst9|timepreheat[7]~29_combout\ : std_logic;
SIGNAL \inst|Mux22~0_combout\ : std_logic;
SIGNAL \inst|preheat_set[7]~0_combout\ : std_logic;
SIGNAL \inst|preheat_set[7]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst11|counter~10_combout\ : std_logic;
SIGNAL \inst11|counter[0]~9\ : std_logic;
SIGNAL \inst11|counter[1]~12_combout\ : std_logic;
SIGNAL \inst|Mux21~0_combout\ : std_logic;
SIGNAL \inst|Mux15~0_combout\ : std_logic;
SIGNAL \inst11|counter~14_combout\ : std_logic;
SIGNAL \inst11|start~0_combout\ : std_logic;
SIGNAL \inst11|counter[3]~11_combout\ : std_logic;
SIGNAL \inst11|counter[1]~13\ : std_logic;
SIGNAL \inst11|counter[2]~15_combout\ : std_logic;
SIGNAL \inst|Mux14~0_combout\ : std_logic;
SIGNAL \inst|Mux20~0_combout\ : std_logic;
SIGNAL \inst11|counter~32_combout\ : std_logic;
SIGNAL \inst11|counter[2]~16\ : std_logic;
SIGNAL \inst11|counter[3]~17_combout\ : std_logic;
SIGNAL \inst|Mux19~0_combout\ : std_logic;
SIGNAL \inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst11|counter~31_combout\ : std_logic;
SIGNAL \inst11|counter[3]~18\ : std_logic;
SIGNAL \inst11|counter[4]~19_combout\ : std_logic;
SIGNAL \inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst11|counter~30_combout\ : std_logic;
SIGNAL \inst11|counter[4]~20\ : std_logic;
SIGNAL \inst11|counter[5]~21_combout\ : std_logic;
SIGNAL \inst|Mux23~0_combout\ : std_logic;
SIGNAL \inst|Mux11~0_combout\ : std_logic;
SIGNAL \inst11|counter~29_combout\ : std_logic;
SIGNAL \inst11|counter[5]~22\ : std_logic;
SIGNAL \inst11|counter[6]~23_combout\ : std_logic;
SIGNAL \inst|Mux24~0_combout\ : std_logic;
SIGNAL \inst|Mux10~0_combout\ : std_logic;
SIGNAL \inst11|counter~28_combout\ : std_logic;
SIGNAL \inst11|counter[6]~24\ : std_logic;
SIGNAL \inst11|counter[7]~25_combout\ : std_logic;
SIGNAL \inst|Mux25~0_combout\ : std_logic;
SIGNAL \inst|Mux9~0_combout\ : std_logic;
SIGNAL \inst11|counter~27_combout\ : std_logic;
SIGNAL \inst11|Equal0~0_combout\ : std_logic;
SIGNAL \inst11|start~1_combout\ : std_logic;
SIGNAL \inst11|start~q\ : std_logic;
SIGNAL \inst11|Equal0~1_combout\ : std_logic;
SIGNAL \inst11|preheat_zero~0_combout\ : std_logic;
SIGNAL \inst11|preheat_zero~1_combout\ : std_logic;
SIGNAL \inst11|preheat_zero~q\ : std_logic;
SIGNAL \inst|current_state~27_combout\ : std_logic;
SIGNAL \inst|current_state~31_combout\ : std_logic;
SIGNAL \inst|current_state~19_combout\ : std_logic;
SIGNAL \inst|current_state~26_combout\ : std_logic;
SIGNAL \inst|current_state~28_combout\ : std_logic;
SIGNAL \inst|current_state.COOK~q\ : std_logic;
SIGNAL \inst|cooking~0_combout\ : std_logic;
SIGNAL \inst11|cook_zero~0_combout\ : std_logic;
SIGNAL \inst11|cook_zero~q\ : std_logic;
SIGNAL \inst|current_state~18_combout\ : std_logic;
SIGNAL \inst|current_state~20_combout\ : std_logic;
SIGNAL \inst|food_in~0_combout\ : std_logic;
SIGNAL \inst|current_state~21_combout\ : std_logic;
SIGNAL \inst|current_state~22_combout\ : std_logic;
SIGNAL \inst|current_state~23_combout\ : std_logic;
SIGNAL \inst|current_state.FINISH~q\ : std_logic;
SIGNAL \inst|current_state~24_combout\ : std_logic;
SIGNAL \inst|current_state~25_combout\ : std_logic;
SIGNAL \inst|current_state.COOL~q\ : std_logic;
SIGNAL \inst10|s_counter[0]~4_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|StageOut[49]~8_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|StageOut[49]~7_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|StageOut[53]~1_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|StageOut[52]~2_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|StageOut[51]~3_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|StageOut[51]~4_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|StageOut[50]~6_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|StageOut[50]~5_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|StageOut[48]~9_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|StageOut[48]~10_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|Mux6~0_combout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ : std_logic;
SIGNAL \inst6|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|Mux1~0_combout\ : std_logic;
SIGNAL \inst6|Mux2~0_combout\ : std_logic;
SIGNAL \inst6|Mux3~0_combout\ : std_logic;
SIGNAL \inst6|Mux4~0_combout\ : std_logic;
SIGNAL \inst6|Mux5~0_combout\ : std_logic;
SIGNAL \inst6|Mux6~0_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst5|Mux2~0_combout\ : std_logic;
SIGNAL \inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst5|Mux6~0_combout\ : std_logic;
SIGNAL \inst|s_states~0_combout\ : std_logic;
SIGNAL \inst|temp_set\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst10|s_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|state\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst11|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|timepreheat\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|preheat_set\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst9|timecook\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|temperature\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|cook_time_set\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst11|ALT_INV_start~q\ : std_logic;
SIGNAL \inst|ALT_INV_s_states~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst10|Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ : std_logic;

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
ww_SW2 <= SW2;
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

\inst7|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|clkOut~q\);

\inst|preheat_set[7]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|preheat_set[7]~0_combout\);

\inst|heating~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|heating~0_combout\);
\inst11|ALT_INV_start~q\ <= NOT \inst11|start~q\;
\inst|ALT_INV_s_states~0_combout\ <= NOT \inst|s_states~0_combout\;
\inst5|ALT_INV_Mux0~0_combout\ <= NOT \inst5|Mux0~0_combout\;
\inst6|ALT_INV_Mux0~0_combout\ <= NOT \inst6|Mux0~0_combout\;
\inst3|ALT_INV_Mux0~0_combout\ <= NOT \inst3|Mux0~0_combout\;
\inst2|ALT_INV_Mux0~0_combout\ <= NOT \inst2|Mux0~0_combout\;
\inst10|Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ <= NOT \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\;
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
	i => \inst2|ALT_INV_Mux0~0_combout\,
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
	i => \inst2|Mux1~0_combout\,
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
	i => \inst2|Mux2~0_combout\,
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
	i => \inst2|Mux3~0_combout\,
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
	i => \inst2|Mux4~0_combout\,
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
	i => \inst2|Mux5~0_combout\,
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
	i => \inst2|Mux6~0_combout\,
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
	i => \inst3|ALT_INV_Mux0~0_combout\,
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
	i => \inst3|Mux1~0_combout\,
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
	i => \inst3|Mux2~0_combout\,
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
	i => \inst3|Mux3~0_combout\,
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
	i => \inst3|Mux4~0_combout\,
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
	i => \inst3|Mux5~0_combout\,
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
	i => \inst3|Mux6~0_combout\,
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
	i => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
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
	i => \inst4|Mux1~0_combout\,
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
	i => \inst10|Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\,
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
	i => \inst4|Mux3~0_combout\,
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
	i => \inst4|Mux4~0_combout\,
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
	i => \inst4|Mux3~0_combout\,
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
	i => \inst6|ALT_INV_Mux0~0_combout\,
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
	i => \inst6|Mux1~0_combout\,
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
	i => \inst6|Mux2~0_combout\,
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
	i => \inst6|Mux3~0_combout\,
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
	i => \inst6|Mux4~0_combout\,
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
	i => \inst6|Mux5~0_combout\,
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
	i => \inst6|Mux6~0_combout\,
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
	i => \inst5|ALT_INV_Mux0~0_combout\,
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
	i => \inst5|Mux1~0_combout\,
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
	i => \inst5|Mux2~0_combout\,
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
	i => \inst5|Mux3~0_combout\,
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
	i => \inst5|Mux4~0_combout\,
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
	i => \inst5|Mux5~0_combout\,
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
	i => \inst5|Mux6~0_combout\,
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
	i => \inst|food_in~0_combout\,
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
	i => \inst|state\(2),
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
	i => \inst|state\(1),
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
	i => \inst|ALT_INV_s_states~0_combout\,
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

-- Location: LCCOMB_X80_Y71_N2
\inst7|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~0_combout\ = \inst7|s_divCounter\(0) $ (VCC)
-- \inst7|Add0~1\ = CARRY(\inst7|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_divCounter\(0),
	datad => VCC,
	combout => \inst7|Add0~0_combout\,
	cout => \inst7|Add0~1\);

-- Location: FF_X80_Y71_N3
\inst7|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(0));

-- Location: LCCOMB_X80_Y71_N4
\inst7|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~2_combout\ = (\inst7|s_divCounter\(1) & (!\inst7|Add0~1\)) # (!\inst7|s_divCounter\(1) & ((\inst7|Add0~1\) # (GND)))
-- \inst7|Add0~3\ = CARRY((!\inst7|Add0~1\) # (!\inst7|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_divCounter\(1),
	datad => VCC,
	cin => \inst7|Add0~1\,
	combout => \inst7|Add0~2_combout\,
	cout => \inst7|Add0~3\);

-- Location: FF_X80_Y71_N5
\inst7|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(1));

-- Location: LCCOMB_X80_Y71_N6
\inst7|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~4_combout\ = (\inst7|s_divCounter\(2) & (\inst7|Add0~3\ $ (GND))) # (!\inst7|s_divCounter\(2) & (!\inst7|Add0~3\ & VCC))
-- \inst7|Add0~5\ = CARRY((\inst7|s_divCounter\(2) & !\inst7|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(2),
	datad => VCC,
	cin => \inst7|Add0~3\,
	combout => \inst7|Add0~4_combout\,
	cout => \inst7|Add0~5\);

-- Location: FF_X80_Y71_N7
\inst7|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(2));

-- Location: LCCOMB_X80_Y71_N8
\inst7|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~6_combout\ = (\inst7|s_divCounter\(3) & (!\inst7|Add0~5\)) # (!\inst7|s_divCounter\(3) & ((\inst7|Add0~5\) # (GND)))
-- \inst7|Add0~7\ = CARRY((!\inst7|Add0~5\) # (!\inst7|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_divCounter\(3),
	datad => VCC,
	cin => \inst7|Add0~5\,
	combout => \inst7|Add0~6_combout\,
	cout => \inst7|Add0~7\);

-- Location: FF_X80_Y71_N9
\inst7|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(3));

-- Location: LCCOMB_X80_Y71_N10
\inst7|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~8_combout\ = (\inst7|s_divCounter\(4) & (\inst7|Add0~7\ $ (GND))) # (!\inst7|s_divCounter\(4) & (!\inst7|Add0~7\ & VCC))
-- \inst7|Add0~9\ = CARRY((\inst7|s_divCounter\(4) & !\inst7|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(4),
	datad => VCC,
	cin => \inst7|Add0~7\,
	combout => \inst7|Add0~8_combout\,
	cout => \inst7|Add0~9\);

-- Location: FF_X80_Y71_N11
\inst7|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(4));

-- Location: LCCOMB_X80_Y71_N12
\inst7|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~10_combout\ = (\inst7|s_divCounter\(5) & (!\inst7|Add0~9\)) # (!\inst7|s_divCounter\(5) & ((\inst7|Add0~9\) # (GND)))
-- \inst7|Add0~11\ = CARRY((!\inst7|Add0~9\) # (!\inst7|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(5),
	datad => VCC,
	cin => \inst7|Add0~9\,
	combout => \inst7|Add0~10_combout\,
	cout => \inst7|Add0~11\);

-- Location: FF_X80_Y71_N13
\inst7|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(5));

-- Location: LCCOMB_X80_Y71_N14
\inst7|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~12_combout\ = (\inst7|s_divCounter\(6) & (\inst7|Add0~11\ $ (GND))) # (!\inst7|s_divCounter\(6) & (!\inst7|Add0~11\ & VCC))
-- \inst7|Add0~13\ = CARRY((\inst7|s_divCounter\(6) & !\inst7|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_divCounter\(6),
	datad => VCC,
	cin => \inst7|Add0~11\,
	combout => \inst7|Add0~12_combout\,
	cout => \inst7|Add0~13\);

-- Location: FF_X80_Y71_N15
\inst7|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(6));

-- Location: LCCOMB_X81_Y71_N12
\inst7|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~5_combout\ = (\inst7|s_divCounter\(5) & (\inst7|s_divCounter\(2) & (\inst7|s_divCounter\(4) & \inst7|s_divCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(5),
	datab => \inst7|s_divCounter\(2),
	datac => \inst7|s_divCounter\(4),
	datad => \inst7|s_divCounter\(3),
	combout => \inst7|Equal0~5_combout\);

-- Location: LCCOMB_X80_Y70_N2
\inst7|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~32_combout\ = (\inst7|s_divCounter\(16) & (\inst7|Add0~31\ $ (GND))) # (!\inst7|s_divCounter\(16) & (!\inst7|Add0~31\ & VCC))
-- \inst7|Add0~33\ = CARRY((\inst7|s_divCounter\(16) & !\inst7|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_divCounter\(16),
	datad => VCC,
	cin => \inst7|Add0~31\,
	combout => \inst7|Add0~32_combout\,
	cout => \inst7|Add0~33\);

-- Location: LCCOMB_X80_Y70_N4
\inst7|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~34_combout\ = (\inst7|s_divCounter\(17) & (!\inst7|Add0~33\)) # (!\inst7|s_divCounter\(17) & ((\inst7|Add0~33\) # (GND)))
-- \inst7|Add0~35\ = CARRY((!\inst7|Add0~33\) # (!\inst7|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(17),
	datad => VCC,
	cin => \inst7|Add0~33\,
	combout => \inst7|Add0~34_combout\,
	cout => \inst7|Add0~35\);

-- Location: LCCOMB_X79_Y70_N14
\inst7|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_divCounter~2_combout\ = (\inst7|Add0~34_combout\ & ((!\inst7|Equal0~6_combout\) # (!\inst7|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~9_combout\,
	datac => \inst7|Equal0~6_combout\,
	datad => \inst7|Add0~34_combout\,
	combout => \inst7|s_divCounter~2_combout\);

-- Location: FF_X79_Y70_N15
\inst7|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(17));

-- Location: LCCOMB_X80_Y70_N6
\inst7|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~36_combout\ = (\inst7|s_divCounter\(18) & (\inst7|Add0~35\ $ (GND))) # (!\inst7|s_divCounter\(18) & (!\inst7|Add0~35\ & VCC))
-- \inst7|Add0~37\ = CARRY((\inst7|s_divCounter\(18) & !\inst7|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(18),
	datad => VCC,
	cin => \inst7|Add0~35\,
	combout => \inst7|Add0~36_combout\,
	cout => \inst7|Add0~37\);

-- Location: FF_X80_Y70_N7
\inst7|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(18));

-- Location: LCCOMB_X80_Y70_N8
\inst7|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~38_combout\ = (\inst7|s_divCounter\(19) & (!\inst7|Add0~37\)) # (!\inst7|s_divCounter\(19) & ((\inst7|Add0~37\) # (GND)))
-- \inst7|Add0~39\ = CARRY((!\inst7|Add0~37\) # (!\inst7|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_divCounter\(19),
	datad => VCC,
	cin => \inst7|Add0~37\,
	combout => \inst7|Add0~38_combout\,
	cout => \inst7|Add0~39\);

-- Location: LCCOMB_X81_Y70_N26
\inst7|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_divCounter~7_combout\ = (\inst7|Add0~38_combout\ & ((!\inst7|Equal0~9_combout\) # (!\inst7|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Equal0~6_combout\,
	datac => \inst7|Equal0~9_combout\,
	datad => \inst7|Add0~38_combout\,
	combout => \inst7|s_divCounter~7_combout\);

-- Location: FF_X81_Y70_N27
\inst7|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(19));

-- Location: LCCOMB_X80_Y70_N10
\inst7|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~40_combout\ = (\inst7|s_divCounter\(20) & (\inst7|Add0~39\ $ (GND))) # (!\inst7|s_divCounter\(20) & (!\inst7|Add0~39\ & VCC))
-- \inst7|Add0~41\ = CARRY((\inst7|s_divCounter\(20) & !\inst7|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(20),
	datad => VCC,
	cin => \inst7|Add0~39\,
	combout => \inst7|Add0~40_combout\,
	cout => \inst7|Add0~41\);

-- Location: LCCOMB_X81_Y70_N30
\inst7|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_divCounter~6_combout\ = (\inst7|Add0~40_combout\ & ((!\inst7|Equal0~9_combout\) # (!\inst7|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Equal0~6_combout\,
	datac => \inst7|Equal0~9_combout\,
	datad => \inst7|Add0~40_combout\,
	combout => \inst7|s_divCounter~6_combout\);

-- Location: FF_X81_Y70_N31
\inst7|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(20));

-- Location: LCCOMB_X80_Y70_N12
\inst7|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~42_combout\ = (\inst7|s_divCounter\(21) & (!\inst7|Add0~41\)) # (!\inst7|s_divCounter\(21) & ((\inst7|Add0~41\) # (GND)))
-- \inst7|Add0~43\ = CARRY((!\inst7|Add0~41\) # (!\inst7|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_divCounter\(21),
	datad => VCC,
	cin => \inst7|Add0~41\,
	combout => \inst7|Add0~42_combout\,
	cout => \inst7|Add0~43\);

-- Location: LCCOMB_X81_Y70_N8
\inst7|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_divCounter~5_combout\ = (\inst7|Add0~42_combout\ & ((!\inst7|Equal0~9_combout\) # (!\inst7|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Equal0~6_combout\,
	datac => \inst7|Equal0~9_combout\,
	datad => \inst7|Add0~42_combout\,
	combout => \inst7|s_divCounter~5_combout\);

-- Location: FF_X81_Y70_N9
\inst7|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(21));

-- Location: LCCOMB_X80_Y70_N14
\inst7|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~44_combout\ = (\inst7|s_divCounter\(22) & (\inst7|Add0~43\ $ (GND))) # (!\inst7|s_divCounter\(22) & (!\inst7|Add0~43\ & VCC))
-- \inst7|Add0~45\ = CARRY((\inst7|s_divCounter\(22) & !\inst7|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(22),
	datad => VCC,
	cin => \inst7|Add0~43\,
	combout => \inst7|Add0~44_combout\,
	cout => \inst7|Add0~45\);

-- Location: LCCOMB_X81_Y70_N2
\inst7|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_divCounter~4_combout\ = (\inst7|Add0~44_combout\ & ((!\inst7|Equal0~9_combout\) # (!\inst7|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Equal0~6_combout\,
	datac => \inst7|Equal0~9_combout\,
	datad => \inst7|Add0~44_combout\,
	combout => \inst7|s_divCounter~4_combout\);

-- Location: FF_X81_Y70_N3
\inst7|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(22));

-- Location: LCCOMB_X80_Y70_N16
\inst7|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~46_combout\ = (\inst7|s_divCounter\(23) & (!\inst7|Add0~45\)) # (!\inst7|s_divCounter\(23) & ((\inst7|Add0~45\) # (GND)))
-- \inst7|Add0~47\ = CARRY((!\inst7|Add0~45\) # (!\inst7|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(23),
	datad => VCC,
	cin => \inst7|Add0~45\,
	combout => \inst7|Add0~46_combout\,
	cout => \inst7|Add0~47\);

-- Location: LCCOMB_X79_Y70_N16
\inst7|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_divCounter~1_combout\ = (\inst7|Add0~46_combout\ & ((!\inst7|Equal0~6_combout\) # (!\inst7|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~9_combout\,
	datac => \inst7|Equal0~6_combout\,
	datad => \inst7|Add0~46_combout\,
	combout => \inst7|s_divCounter~1_combout\);

-- Location: FF_X79_Y70_N17
\inst7|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(23));

-- Location: LCCOMB_X80_Y70_N18
\inst7|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~48_combout\ = (\inst7|s_divCounter\(24) & (\inst7|Add0~47\ $ (GND))) # (!\inst7|s_divCounter\(24) & (!\inst7|Add0~47\ & VCC))
-- \inst7|Add0~49\ = CARRY((\inst7|s_divCounter\(24) & !\inst7|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_divCounter\(24),
	datad => VCC,
	cin => \inst7|Add0~47\,
	combout => \inst7|Add0~48_combout\,
	cout => \inst7|Add0~49\);

-- Location: FF_X80_Y70_N19
\inst7|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(24));

-- Location: LCCOMB_X80_Y70_N20
\inst7|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~50_combout\ = (\inst7|s_divCounter\(25) & (!\inst7|Add0~49\)) # (!\inst7|s_divCounter\(25) & ((\inst7|Add0~49\) # (GND)))
-- \inst7|Add0~51\ = CARRY((!\inst7|Add0~49\) # (!\inst7|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_divCounter\(25),
	datad => VCC,
	cin => \inst7|Add0~49\,
	combout => \inst7|Add0~50_combout\,
	cout => \inst7|Add0~51\);

-- Location: LCCOMB_X79_Y70_N30
\inst7|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_divCounter~0_combout\ = (\inst7|Add0~50_combout\ & ((!\inst7|Equal0~9_combout\) # (!\inst7|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~6_combout\,
	datac => \inst7|Add0~50_combout\,
	datad => \inst7|Equal0~9_combout\,
	combout => \inst7|s_divCounter~0_combout\);

-- Location: FF_X79_Y70_N31
\inst7|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(25));

-- Location: LCCOMB_X80_Y70_N22
\inst7|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~52_combout\ = (\inst7|s_divCounter\(26) & (\inst7|Add0~51\ $ (GND))) # (!\inst7|s_divCounter\(26) & (!\inst7|Add0~51\ & VCC))
-- \inst7|Add0~53\ = CARRY((\inst7|s_divCounter\(26) & !\inst7|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(26),
	datad => VCC,
	cin => \inst7|Add0~51\,
	combout => \inst7|Add0~52_combout\,
	cout => \inst7|Add0~53\);

-- Location: FF_X80_Y70_N23
\inst7|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(26));

-- Location: LCCOMB_X80_Y70_N24
\inst7|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~54_combout\ = (\inst7|s_divCounter\(27) & (!\inst7|Add0~53\)) # (!\inst7|s_divCounter\(27) & ((\inst7|Add0~53\) # (GND)))
-- \inst7|Add0~55\ = CARRY((!\inst7|Add0~53\) # (!\inst7|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_divCounter\(27),
	datad => VCC,
	cin => \inst7|Add0~53\,
	combout => \inst7|Add0~54_combout\,
	cout => \inst7|Add0~55\);

-- Location: FF_X80_Y70_N25
\inst7|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(27));

-- Location: LCCOMB_X80_Y70_N26
\inst7|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~56_combout\ = (\inst7|s_divCounter\(28) & (\inst7|Add0~55\ $ (GND))) # (!\inst7|s_divCounter\(28) & (!\inst7|Add0~55\ & VCC))
-- \inst7|Add0~57\ = CARRY((\inst7|s_divCounter\(28) & !\inst7|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(28),
	datad => VCC,
	cin => \inst7|Add0~55\,
	combout => \inst7|Add0~56_combout\,
	cout => \inst7|Add0~57\);

-- Location: FF_X80_Y70_N27
\inst7|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(28));

-- Location: LCCOMB_X80_Y70_N28
\inst7|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~58_combout\ = (\inst7|s_divCounter\(29) & (!\inst7|Add0~57\)) # (!\inst7|s_divCounter\(29) & ((\inst7|Add0~57\) # (GND)))
-- \inst7|Add0~59\ = CARRY((!\inst7|Add0~57\) # (!\inst7|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_divCounter\(29),
	datad => VCC,
	cin => \inst7|Add0~57\,
	combout => \inst7|Add0~58_combout\,
	cout => \inst7|Add0~59\);

-- Location: FF_X80_Y70_N29
\inst7|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(29));

-- Location: LCCOMB_X80_Y70_N30
\inst7|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~60_combout\ = \inst7|s_divCounter\(30) $ (!\inst7|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(30),
	cin => \inst7|Add0~59\,
	combout => \inst7|Add0~60_combout\);

-- Location: FF_X80_Y70_N31
\inst7|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(30));

-- Location: LCCOMB_X81_Y70_N12
\inst7|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = (!\inst7|s_divCounter\(28) & (!\inst7|s_divCounter\(30) & (!\inst7|s_divCounter\(27) & !\inst7|s_divCounter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(28),
	datab => \inst7|s_divCounter\(30),
	datac => \inst7|s_divCounter\(27),
	datad => \inst7|s_divCounter\(29),
	combout => \inst7|Equal0~0_combout\);

-- Location: LCCOMB_X81_Y70_N24
\inst7|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~1_combout\ = (\inst7|s_divCounter\(20) & (\inst7|s_divCounter\(22) & (\inst7|s_divCounter\(21) & !\inst7|s_divCounter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(20),
	datab => \inst7|s_divCounter\(22),
	datac => \inst7|s_divCounter\(21),
	datad => \inst7|s_divCounter\(26),
	combout => \inst7|Equal0~1_combout\);

-- Location: LCCOMB_X80_Y71_N16
\inst7|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~14_combout\ = (\inst7|s_divCounter\(7) & (!\inst7|Add0~13\)) # (!\inst7|s_divCounter\(7) & ((\inst7|Add0~13\) # (GND)))
-- \inst7|Add0~15\ = CARRY((!\inst7|Add0~13\) # (!\inst7|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_divCounter\(7),
	datad => VCC,
	cin => \inst7|Add0~13\,
	combout => \inst7|Add0~14_combout\,
	cout => \inst7|Add0~15\);

-- Location: LCCOMB_X81_Y70_N10
\inst7|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_divCounter~11_combout\ = (\inst7|Add0~14_combout\ & ((!\inst7|Equal0~9_combout\) # (!\inst7|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Equal0~6_combout\,
	datac => \inst7|Add0~14_combout\,
	datad => \inst7|Equal0~9_combout\,
	combout => \inst7|s_divCounter~11_combout\);

-- Location: FF_X81_Y70_N11
\inst7|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_divCounter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(7));

-- Location: LCCOMB_X80_Y71_N18
\inst7|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~16_combout\ = (\inst7|s_divCounter\(8) & (\inst7|Add0~15\ $ (GND))) # (!\inst7|s_divCounter\(8) & (!\inst7|Add0~15\ & VCC))
-- \inst7|Add0~17\ = CARRY((\inst7|s_divCounter\(8) & !\inst7|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_divCounter\(8),
	datad => VCC,
	cin => \inst7|Add0~15\,
	combout => \inst7|Add0~16_combout\,
	cout => \inst7|Add0~17\);

-- Location: FF_X80_Y71_N19
\inst7|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(8));

-- Location: LCCOMB_X80_Y71_N20
\inst7|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~18_combout\ = (\inst7|s_divCounter\(9) & (!\inst7|Add0~17\)) # (!\inst7|s_divCounter\(9) & ((\inst7|Add0~17\) # (GND)))
-- \inst7|Add0~19\ = CARRY((!\inst7|Add0~17\) # (!\inst7|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_divCounter\(9),
	datad => VCC,
	cin => \inst7|Add0~17\,
	combout => \inst7|Add0~18_combout\,
	cout => \inst7|Add0~19\);

-- Location: FF_X80_Y71_N21
\inst7|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(9));

-- Location: LCCOMB_X80_Y71_N22
\inst7|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~20_combout\ = (\inst7|s_divCounter\(10) & (\inst7|Add0~19\ $ (GND))) # (!\inst7|s_divCounter\(10) & (!\inst7|Add0~19\ & VCC))
-- \inst7|Add0~21\ = CARRY((\inst7|s_divCounter\(10) & !\inst7|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(10),
	datad => VCC,
	cin => \inst7|Add0~19\,
	combout => \inst7|Add0~20_combout\,
	cout => \inst7|Add0~21\);

-- Location: FF_X80_Y71_N23
\inst7|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(10));

-- Location: LCCOMB_X80_Y71_N24
\inst7|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~22_combout\ = (\inst7|s_divCounter\(11) & (!\inst7|Add0~21\)) # (!\inst7|s_divCounter\(11) & ((\inst7|Add0~21\) # (GND)))
-- \inst7|Add0~23\ = CARRY((!\inst7|Add0~21\) # (!\inst7|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_divCounter\(11),
	datad => VCC,
	cin => \inst7|Add0~21\,
	combout => \inst7|Add0~22_combout\,
	cout => \inst7|Add0~23\);

-- Location: FF_X80_Y71_N25
\inst7|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(11));

-- Location: LCCOMB_X80_Y71_N26
\inst7|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~24_combout\ = (\inst7|s_divCounter\(12) & (\inst7|Add0~23\ $ (GND))) # (!\inst7|s_divCounter\(12) & (!\inst7|Add0~23\ & VCC))
-- \inst7|Add0~25\ = CARRY((\inst7|s_divCounter\(12) & !\inst7|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_divCounter\(12),
	datad => VCC,
	cin => \inst7|Add0~23\,
	combout => \inst7|Add0~24_combout\,
	cout => \inst7|Add0~25\);

-- Location: LCCOMB_X80_Y71_N0
\inst7|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_divCounter~10_combout\ = (\inst7|Add0~24_combout\ & ((!\inst7|Equal0~6_combout\) # (!\inst7|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Equal0~9_combout\,
	datac => \inst7|Add0~24_combout\,
	datad => \inst7|Equal0~6_combout\,
	combout => \inst7|s_divCounter~10_combout\);

-- Location: FF_X80_Y71_N1
\inst7|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_divCounter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(12));

-- Location: LCCOMB_X80_Y71_N28
\inst7|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~26_combout\ = (\inst7|s_divCounter\(13) & (!\inst7|Add0~25\)) # (!\inst7|s_divCounter\(13) & ((\inst7|Add0~25\) # (GND)))
-- \inst7|Add0~27\ = CARRY((!\inst7|Add0~25\) # (!\inst7|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_divCounter\(13),
	datad => VCC,
	cin => \inst7|Add0~25\,
	combout => \inst7|Add0~26_combout\,
	cout => \inst7|Add0~27\);

-- Location: LCCOMB_X81_Y70_N22
\inst7|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_divCounter~9_combout\ = (\inst7|Add0~26_combout\ & ((!\inst7|Equal0~9_combout\) # (!\inst7|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Equal0~6_combout\,
	datac => \inst7|Add0~26_combout\,
	datad => \inst7|Equal0~9_combout\,
	combout => \inst7|s_divCounter~9_combout\);

-- Location: FF_X81_Y70_N23
\inst7|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_divCounter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(13));

-- Location: LCCOMB_X80_Y71_N30
\inst7|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~28_combout\ = (\inst7|s_divCounter\(14) & (\inst7|Add0~27\ $ (GND))) # (!\inst7|s_divCounter\(14) & (!\inst7|Add0~27\ & VCC))
-- \inst7|Add0~29\ = CARRY((\inst7|s_divCounter\(14) & !\inst7|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_divCounter\(14),
	datad => VCC,
	cin => \inst7|Add0~27\,
	combout => \inst7|Add0~28_combout\,
	cout => \inst7|Add0~29\);

-- Location: LCCOMB_X81_Y70_N16
\inst7|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_divCounter~8_combout\ = (\inst7|Add0~28_combout\ & ((!\inst7|Equal0~9_combout\) # (!\inst7|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Equal0~6_combout\,
	datac => \inst7|Add0~28_combout\,
	datad => \inst7|Equal0~9_combout\,
	combout => \inst7|s_divCounter~8_combout\);

-- Location: FF_X81_Y70_N17
\inst7|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_divCounter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(14));

-- Location: LCCOMB_X81_Y70_N4
\inst7|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~2_combout\ = (\inst7|s_divCounter\(19) & (\inst7|s_divCounter\(14) & (\inst7|s_divCounter\(13) & \inst7|s_divCounter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(19),
	datab => \inst7|s_divCounter\(14),
	datac => \inst7|s_divCounter\(13),
	datad => \inst7|s_divCounter\(12),
	combout => \inst7|Equal0~2_combout\);

-- Location: LCCOMB_X81_Y70_N28
\inst7|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~3_combout\ = (!\inst7|s_divCounter\(7) & (!\inst7|s_divCounter\(10) & (!\inst7|s_divCounter\(8) & !\inst7|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(7),
	datab => \inst7|s_divCounter\(10),
	datac => \inst7|s_divCounter\(8),
	datad => \inst7|s_divCounter\(9),
	combout => \inst7|Equal0~3_combout\);

-- Location: LCCOMB_X81_Y70_N18
\inst7|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~4_combout\ = (\inst7|Equal0~0_combout\ & (\inst7|Equal0~1_combout\ & (\inst7|Equal0~2_combout\ & \inst7|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~0_combout\,
	datab => \inst7|Equal0~1_combout\,
	datac => \inst7|Equal0~2_combout\,
	datad => \inst7|Equal0~3_combout\,
	combout => \inst7|Equal0~4_combout\);

-- Location: LCCOMB_X81_Y70_N20
\inst7|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~6_combout\ = (\inst7|s_divCounter\(0) & (\inst7|s_divCounter\(1) & (\inst7|Equal0~5_combout\ & \inst7|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(0),
	datab => \inst7|s_divCounter\(1),
	datac => \inst7|Equal0~5_combout\,
	datad => \inst7|Equal0~4_combout\,
	combout => \inst7|Equal0~6_combout\);

-- Location: LCCOMB_X80_Y70_N0
\inst7|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~30_combout\ = (\inst7|s_divCounter\(15) & (!\inst7|Add0~29\)) # (!\inst7|s_divCounter\(15) & ((\inst7|Add0~29\) # (GND)))
-- \inst7|Add0~31\ = CARRY((!\inst7|Add0~29\) # (!\inst7|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(15),
	datad => VCC,
	cin => \inst7|Add0~29\,
	combout => \inst7|Add0~30_combout\,
	cout => \inst7|Add0~31\);

-- Location: LCCOMB_X79_Y70_N8
\inst7|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_divCounter~3_combout\ = (\inst7|Add0~30_combout\ & ((!\inst7|Equal0~9_combout\) # (!\inst7|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~6_combout\,
	datac => \inst7|Add0~30_combout\,
	datad => \inst7|Equal0~9_combout\,
	combout => \inst7|s_divCounter~3_combout\);

-- Location: FF_X79_Y70_N9
\inst7|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(15));

-- Location: FF_X80_Y70_N3
\inst7|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|s_divCounter\(16));

-- Location: LCCOMB_X79_Y70_N22
\inst7|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~8_combout\ = (!\inst7|s_divCounter\(16) & (\inst7|s_divCounter\(15) & (\inst7|s_divCounter\(17) & !\inst7|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(16),
	datab => \inst7|s_divCounter\(15),
	datac => \inst7|s_divCounter\(17),
	datad => \inst7|s_divCounter\(11),
	combout => \inst7|Equal0~8_combout\);

-- Location: LCCOMB_X79_Y70_N18
\inst7|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~7_combout\ = (!\inst7|s_divCounter\(18) & (\inst7|s_divCounter\(23) & (\inst7|s_divCounter\(25) & !\inst7|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(18),
	datab => \inst7|s_divCounter\(23),
	datac => \inst7|s_divCounter\(25),
	datad => \inst7|s_divCounter\(24),
	combout => \inst7|Equal0~7_combout\);

-- Location: LCCOMB_X79_Y70_N10
\inst7|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~9_combout\ = (\inst7|s_divCounter\(6) & (\inst7|Equal0~8_combout\ & \inst7|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_divCounter\(6),
	datac => \inst7|Equal0~8_combout\,
	datad => \inst7|Equal0~7_combout\,
	combout => \inst7|Equal0~9_combout\);

-- Location: LCCOMB_X79_Y70_N26
\inst7|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|clkOut~0_combout\ = (\inst7|s_divCounter\(18) & (!\inst7|s_divCounter\(23) & (!\inst7|s_divCounter\(25) & \inst7|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(18),
	datab => \inst7|s_divCounter\(23),
	datac => \inst7|s_divCounter\(25),
	datad => \inst7|s_divCounter\(24),
	combout => \inst7|clkOut~0_combout\);

-- Location: LCCOMB_X79_Y70_N12
\inst7|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|clkOut~1_combout\ = (\inst7|s_divCounter\(16) & (!\inst7|s_divCounter\(15) & (!\inst7|s_divCounter\(17) & \inst7|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_divCounter\(16),
	datab => \inst7|s_divCounter\(15),
	datac => \inst7|s_divCounter\(17),
	datad => \inst7|s_divCounter\(11),
	combout => \inst7|clkOut~1_combout\);

-- Location: LCCOMB_X79_Y70_N20
\inst7|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|clkOut~2_combout\ = (!\inst7|s_divCounter\(6) & (\inst7|clkOut~0_combout\ & \inst7|clkOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|s_divCounter\(6),
	datac => \inst7|clkOut~0_combout\,
	datad => \inst7|clkOut~1_combout\,
	combout => \inst7|clkOut~2_combout\);

-- Location: LCCOMB_X79_Y70_N24
\inst7|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|clkOut~3_combout\ = (\inst7|Equal0~6_combout\ & (!\inst7|Equal0~9_combout\ & ((\inst7|clkOut~2_combout\) # (\inst7|clkOut~q\)))) # (!\inst7|Equal0~6_combout\ & (((\inst7|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~9_combout\,
	datab => \inst7|clkOut~2_combout\,
	datac => \inst7|clkOut~q\,
	datad => \inst7|Equal0~6_combout\,
	combout => \inst7|clkOut~3_combout\);

-- Location: LCCOMB_X79_Y70_N28
\inst7|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|clkOut~feeder_combout\ = \inst7|clkOut~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|clkOut~3_combout\,
	combout => \inst7|clkOut~feeder_combout\);

-- Location: FF_X79_Y70_N29
\inst7|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst7|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clkOut~q\);

-- Location: CLKCTRL_G11
\inst7|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X85_Y73_N1
\SW0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\SW2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2,
	o => \SW2~input_o\);

-- Location: LCCOMB_X85_Y65_N22
\inst|openOven_last~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|openOven_last~0_combout\ = (\SW2~input_o\ & \SW0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW2~input_o\,
	datad => \SW0~input_o\,
	combout => \inst|openOven_last~0_combout\);

-- Location: FF_X85_Y65_N23
\inst|openOven_last\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst|openOven_last~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|openOven_last~q\);

-- Location: IOIBUF_X85_Y73_N22
\SW1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

-- Location: LCCOMB_X85_Y69_N8
\inst|current_state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|current_state~29_combout\ = ((!\inst|current_state.IDLE~q\ & ((!\inst10|s_heatDone~q\) # (!\SW1~input_o\)))) # (!\SW0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst|current_state.IDLE~q\,
	datac => \SW1~input_o\,
	datad => \inst10|s_heatDone~q\,
	combout => \inst|current_state~29_combout\);

-- Location: LCCOMB_X87_Y68_N10
\inst10|s_coolStart~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_coolStart~0_combout\ = (\inst10|s_coolStart~q\) # (\inst|current_state.COOL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|s_coolStart~q\,
	datad => \inst|current_state.COOL~q\,
	combout => \inst10|s_coolStart~0_combout\);

-- Location: FF_X87_Y68_N11
\inst10|s_coolStart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst10|s_coolStart~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_coolStart~q\);

-- Location: IOIBUF_X83_Y73_N1
\SW5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW5,
	o => \SW5~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\SW6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW6,
	o => \SW6~input_o\);

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

-- Location: LCCOMB_X88_Y68_N2
\inst8|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~0_combout\ = \inst8|temperature\(0) $ (VCC)
-- \inst8|Add0~1\ = CARRY(\inst8|temperature\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|temperature\(0),
	datad => VCC,
	combout => \inst8|Add0~0_combout\,
	cout => \inst8|Add0~1\);

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

-- Location: LCCOMB_X88_Y68_N8
\inst8|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~6_combout\ = (\KEY[2]~input_o\ & ((\inst8|temperature\(3) & (!\inst8|Add0~5\)) # (!\inst8|temperature\(3) & ((\inst8|Add0~5\) # (GND))))) # (!\KEY[2]~input_o\ & ((\inst8|temperature\(3) & (\inst8|Add0~5\ & VCC)) # (!\inst8|temperature\(3) & 
-- (!\inst8|Add0~5\))))
-- \inst8|Add0~7\ = CARRY((\KEY[2]~input_o\ & ((!\inst8|Add0~5\) # (!\inst8|temperature\(3)))) # (!\KEY[2]~input_o\ & (!\inst8|temperature\(3) & !\inst8|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \inst8|temperature\(3),
	datad => VCC,
	cin => \inst8|Add0~5\,
	combout => \inst8|Add0~6_combout\,
	cout => \inst8|Add0~7\);

-- Location: LCCOMB_X88_Y68_N10
\inst8|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~8_combout\ = ((\KEY[2]~input_o\ $ (\inst8|temperature\(4) $ (!\inst8|Add0~7\)))) # (GND)
-- \inst8|Add0~9\ = CARRY((\KEY[2]~input_o\ & (!\inst8|temperature\(4) & !\inst8|Add0~7\)) # (!\KEY[2]~input_o\ & ((!\inst8|Add0~7\) # (!\inst8|temperature\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \inst8|temperature\(4),
	datad => VCC,
	cin => \inst8|Add0~7\,
	combout => \inst8|Add0~8_combout\,
	cout => \inst8|Add0~9\);

-- Location: LCCOMB_X88_Y68_N0
\inst8|temperature[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|temperature[4]~4_combout\ = !\inst8|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|Add0~8_combout\,
	combout => \inst8|temperature[4]~4_combout\);

-- Location: FF_X88_Y68_N1
\inst8|temperature[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst8|temperature[4]~4_combout\,
	ena => \inst8|temperature~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|temperature\(4));

-- Location: LCCOMB_X88_Y68_N12
\inst8|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~10_combout\ = (\KEY[2]~input_o\ & ((\inst8|temperature\(5) & (!\inst8|Add0~9\)) # (!\inst8|temperature\(5) & ((\inst8|Add0~9\) # (GND))))) # (!\KEY[2]~input_o\ & ((\inst8|temperature\(5) & (\inst8|Add0~9\ & VCC)) # (!\inst8|temperature\(5) & 
-- (!\inst8|Add0~9\))))
-- \inst8|Add0~11\ = CARRY((\KEY[2]~input_o\ & ((!\inst8|Add0~9\) # (!\inst8|temperature\(5)))) # (!\KEY[2]~input_o\ & (!\inst8|temperature\(5) & !\inst8|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \inst8|temperature\(5),
	datad => VCC,
	cin => \inst8|Add0~9\,
	combout => \inst8|Add0~10_combout\,
	cout => \inst8|Add0~11\);

-- Location: FF_X88_Y68_N13
\inst8|temperature[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst8|Add0~10_combout\,
	ena => \inst8|temperature~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|temperature\(5));

-- Location: LCCOMB_X88_Y68_N14
\inst8|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~12_combout\ = ((\KEY[2]~input_o\ $ (\inst8|temperature\(6) $ (\inst8|Add0~11\)))) # (GND)
-- \inst8|Add0~13\ = CARRY((\KEY[2]~input_o\ & (\inst8|temperature\(6) & !\inst8|Add0~11\)) # (!\KEY[2]~input_o\ & ((\inst8|temperature\(6)) # (!\inst8|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \inst8|temperature\(6),
	datad => VCC,
	cin => \inst8|Add0~11\,
	combout => \inst8|Add0~12_combout\,
	cout => \inst8|Add0~13\);

-- Location: FF_X88_Y68_N15
\inst8|temperature[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst8|Add0~12_combout\,
	ena => \inst8|temperature~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|temperature\(6));

-- Location: LCCOMB_X88_Y68_N16
\inst8|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~14_combout\ = \inst8|temperature\(7) $ (\inst8|Add0~13\ $ (!\KEY[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|temperature\(7),
	datad => \KEY[2]~input_o\,
	cin => \inst8|Add0~13\,
	combout => \inst8|Add0~14_combout\);

-- Location: FF_X88_Y68_N17
\inst8|temperature[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst8|Add0~14_combout\,
	ena => \inst8|temperature~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|temperature\(7));

-- Location: LCCOMB_X88_Y68_N24
\inst8|temperature~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|temperature~0_combout\ = (\KEY[2]~input_o\ & (\inst8|temperature\(7) & (\inst8|temperature\(6) & \inst8|temperature\(5)))) # (!\KEY[2]~input_o\ & ((\inst8|temperature\(7)) # ((\inst8|temperature\(6)) # (\inst8|temperature\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \inst8|temperature\(7),
	datac => \inst8|temperature\(6),
	datad => \inst8|temperature\(5),
	combout => \inst8|temperature~0_combout\);

-- Location: LCCOMB_X88_Y68_N30
\inst8|temperature~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|temperature~1_combout\ = (\KEY[2]~input_o\ & (\inst8|temperature\(2) & (!\inst8|temperature\(1)))) # (!\KEY[2]~input_o\ & (!\inst8|temperature\(2) & ((\inst8|temperature\(1)) # (\inst8|temperature\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \inst8|temperature\(2),
	datac => \inst8|temperature\(1),
	datad => \inst8|temperature\(0),
	combout => \inst8|temperature~1_combout\);

-- Location: LCCOMB_X88_Y68_N28
\inst8|temperature~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|temperature~2_combout\ = (!\inst8|temperature\(4) & ((\inst8|temperature~1_combout\ & ((!\inst8|temperature~0_combout\))) # (!\inst8|temperature~1_combout\ & (\inst8|temperature\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|temperature\(3),
	datab => \inst8|temperature\(4),
	datac => \inst8|temperature~1_combout\,
	datad => \inst8|temperature~0_combout\,
	combout => \inst8|temperature~2_combout\);

-- Location: LCCOMB_X88_Y68_N18
\inst8|temperature~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|temperature~3_combout\ = (\KEY[2]~input_o\ & (((!\inst8|temperature~2_combout\) # (!\inst8|temperature~0_combout\)))) # (!\KEY[2]~input_o\ & (\KEY[3]~input_o\ & ((\inst8|temperature~0_combout\) # (\inst8|temperature~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \KEY[3]~input_o\,
	datac => \inst8|temperature~0_combout\,
	datad => \inst8|temperature~2_combout\,
	combout => \inst8|temperature~3_combout\);

-- Location: FF_X88_Y68_N3
\inst8|temperature[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst8|Add0~0_combout\,
	ena => \inst8|temperature~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|temperature\(0));

-- Location: LCCOMB_X88_Y68_N4
\inst8|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~2_combout\ = (\KEY[2]~input_o\ & ((\inst8|temperature\(1) & (!\inst8|Add0~1\)) # (!\inst8|temperature\(1) & ((\inst8|Add0~1\) # (GND))))) # (!\KEY[2]~input_o\ & ((\inst8|temperature\(1) & (\inst8|Add0~1\ & VCC)) # (!\inst8|temperature\(1) & 
-- (!\inst8|Add0~1\))))
-- \inst8|Add0~3\ = CARRY((\KEY[2]~input_o\ & ((!\inst8|Add0~1\) # (!\inst8|temperature\(1)))) # (!\KEY[2]~input_o\ & (!\inst8|temperature\(1) & !\inst8|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \inst8|temperature\(1),
	datad => VCC,
	cin => \inst8|Add0~1\,
	combout => \inst8|Add0~2_combout\,
	cout => \inst8|Add0~3\);

-- Location: FF_X88_Y68_N5
\inst8|temperature[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst8|Add0~2_combout\,
	ena => \inst8|temperature~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|temperature\(1));

-- Location: LCCOMB_X88_Y68_N6
\inst8|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~4_combout\ = ((\KEY[2]~input_o\ $ (\inst8|temperature\(2) $ (!\inst8|Add0~3\)))) # (GND)
-- \inst8|Add0~5\ = CARRY((\KEY[2]~input_o\ & (!\inst8|temperature\(2) & !\inst8|Add0~3\)) # (!\KEY[2]~input_o\ & ((!\inst8|Add0~3\) # (!\inst8|temperature\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \inst8|temperature\(2),
	datad => VCC,
	cin => \inst8|Add0~3\,
	combout => \inst8|Add0~4_combout\,
	cout => \inst8|Add0~5\);

-- Location: LCCOMB_X88_Y68_N20
\inst8|temperature[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|temperature[2]~5_combout\ = !\inst8|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|Add0~4_combout\,
	combout => \inst8|temperature[2]~5_combout\);

-- Location: FF_X88_Y68_N21
\inst8|temperature[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst8|temperature[2]~5_combout\,
	ena => \inst8|temperature~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|temperature\(2));

-- Location: FF_X88_Y68_N9
\inst8|temperature[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst8|Add0~6_combout\,
	ena => \inst8|temperature~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|temperature\(3));

-- Location: IOIBUF_X85_Y73_N8
\SW4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW4,
	o => \SW4~input_o\);

-- Location: LCCOMB_X89_Y68_N12
\inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\SW6~input_o\) # ((\SW5~input_o\ & ((\SW4~input_o\))) # (!\SW5~input_o\ & ((\inst8|temperature\(3)) # (!\SW4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW5~input_o\,
	datab => \SW6~input_o\,
	datac => \inst8|temperature\(3),
	datad => \SW4~input_o\,
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X85_Y69_N14
\inst|heating~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|heating~0_combout\ = (\SW1~input_o\ & !\inst|current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW1~input_o\,
	datad => \inst|current_state.IDLE~q\,
	combout => \inst|heating~0_combout\);

-- Location: CLKCTRL_G12
\inst|heating~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|heating~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|heating~0clkctrl_outclk\);

-- Location: LCCOMB_X89_Y68_N10
\inst|temp_set[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp_set\(3) = (GLOBAL(\inst|heating~0clkctrl_outclk\) & ((\inst|Mux5~0_combout\))) # (!GLOBAL(\inst|heating~0clkctrl_outclk\) & (\inst|temp_set\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp_set\(3),
	datac => \inst|Mux5~0_combout\,
	datad => \inst|heating~0clkctrl_outclk\,
	combout => \inst|temp_set\(3));

-- Location: LCCOMB_X88_Y68_N22
\inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (!\SW6~input_o\ & ((\SW5~input_o\ & (!\SW4~input_o\)) # (!\SW5~input_o\ & (\SW4~input_o\ & !\inst8|temperature\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW6~input_o\,
	datab => \SW5~input_o\,
	datac => \SW4~input_o\,
	datad => \inst8|temperature\(2),
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X87_Y68_N4
\inst|temp_set[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp_set\(2) = (GLOBAL(\inst|heating~0clkctrl_outclk\) & (\inst|Mux6~0_combout\)) # (!GLOBAL(\inst|heating~0clkctrl_outclk\) & ((\inst|temp_set\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~0_combout\,
	datac => \inst|temp_set\(2),
	datad => \inst|heating~0clkctrl_outclk\,
	combout => \inst|temp_set\(2));

-- Location: LCCOMB_X89_Y68_N2
\inst|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (!\SW5~input_o\ & ((\SW6~input_o\) # ((\SW4~input_o\ & \inst8|temperature\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW6~input_o\,
	datab => \SW4~input_o\,
	datac => \inst8|temperature\(1),
	datad => \SW5~input_o\,
	combout => \inst|Mux7~0_combout\);

-- Location: LCCOMB_X89_Y68_N8
\inst|temp_set[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp_set\(1) = (GLOBAL(\inst|heating~0clkctrl_outclk\) & (\inst|Mux7~0_combout\)) # (!GLOBAL(\inst|heating~0clkctrl_outclk\) & ((\inst|temp_set\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~0_combout\,
	datac => \inst|temp_set\(1),
	datad => \inst|heating~0clkctrl_outclk\,
	combout => \inst|temp_set\(1));

-- Location: LCCOMB_X87_Y68_N18
\inst10|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add1~0_combout\ = \inst10|s_counter\(1) $ (VCC)
-- \inst10|Add1~1\ = CARRY(\inst10|s_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_counter\(1),
	datad => VCC,
	combout => \inst10|Add1~0_combout\,
	cout => \inst10|Add1~1\);

-- Location: LCCOMB_X86_Y68_N28
\inst10|s_counter[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_counter[1]~3_combout\ = (\inst10|s_coolStart~q\ & ((\inst10|Add1~0_combout\))) # (!\inst10|s_coolStart~q\ & (\inst|temp_set\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp_set\(1),
	datab => \inst10|Add1~0_combout\,
	datad => \inst10|s_coolStart~q\,
	combout => \inst10|s_counter[1]~3_combout\);

-- Location: LCCOMB_X85_Y68_N6
\inst10|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~0_combout\ = \inst10|s_counter\(1) $ (VCC)
-- \inst10|Add0~1\ = CARRY(\inst10|s_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_counter\(1),
	datad => VCC,
	combout => \inst10|Add0~0_combout\,
	cout => \inst10|Add0~1\);

-- Location: LCCOMB_X88_Y68_N26
\inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (!\SW6~input_o\ & ((\SW5~input_o\ & ((!\SW4~input_o\))) # (!\SW5~input_o\ & (!\inst8|temperature\(4) & \SW4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|temperature\(4),
	datab => \SW5~input_o\,
	datac => \SW4~input_o\,
	datad => \SW6~input_o\,
	combout => \inst|Mux4~0_combout\);

-- Location: LCCOMB_X87_Y68_N14
\inst|temp_set[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp_set\(4) = (GLOBAL(\inst|heating~0clkctrl_outclk\) & (\inst|Mux4~0_combout\)) # (!GLOBAL(\inst|heating~0clkctrl_outclk\) & ((\inst|temp_set\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~0_combout\,
	datac => \inst|temp_set\(4),
	datad => \inst|heating~0clkctrl_outclk\,
	combout => \inst|temp_set\(4));

-- Location: LCCOMB_X87_Y68_N22
\inst10|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add1~4_combout\ = (\inst10|s_counter\(3) & (\inst10|Add1~3\ $ (GND))) # (!\inst10|s_counter\(3) & (!\inst10|Add1~3\ & VCC))
-- \inst10|Add1~5\ = CARRY((\inst10|s_counter\(3) & !\inst10|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(3),
	datad => VCC,
	cin => \inst10|Add1~3\,
	combout => \inst10|Add1~4_combout\,
	cout => \inst10|Add1~5\);

-- Location: LCCOMB_X87_Y68_N24
\inst10|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add1~6_combout\ = (\inst10|s_counter\(4) & (\inst10|Add1~5\ & VCC)) # (!\inst10|s_counter\(4) & (!\inst10|Add1~5\))
-- \inst10|Add1~7\ = CARRY((!\inst10|s_counter\(4) & !\inst10|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_counter\(4),
	datad => VCC,
	cin => \inst10|Add1~5\,
	combout => \inst10|Add1~6_combout\,
	cout => \inst10|Add1~7\);

-- Location: LCCOMB_X87_Y68_N0
\inst10|s_counter[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_counter[4]~0_combout\ = (\inst10|s_coolStart~q\ & ((\inst10|Add1~6_combout\))) # (!\inst10|s_coolStart~q\ & (\inst|temp_set\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_coolStart~q\,
	datab => \inst|temp_set\(4),
	datad => \inst10|Add1~6_combout\,
	combout => \inst10|s_counter[4]~0_combout\);

-- Location: LCCOMB_X85_Y68_N8
\inst10|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~2_combout\ = (\inst10|s_counter\(2) & (!\inst10|Add0~1\)) # (!\inst10|s_counter\(2) & ((\inst10|Add0~1\) # (GND)))
-- \inst10|Add0~3\ = CARRY((!\inst10|Add0~1\) # (!\inst10|s_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_counter\(2),
	datad => VCC,
	cin => \inst10|Add0~1\,
	combout => \inst10|Add0~2_combout\,
	cout => \inst10|Add0~3\);

-- Location: LCCOMB_X85_Y68_N10
\inst10|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~4_combout\ = (\inst10|s_counter\(3) & ((GND) # (!\inst10|Add0~3\))) # (!\inst10|s_counter\(3) & (\inst10|Add0~3\ $ (GND)))
-- \inst10|Add0~5\ = CARRY((\inst10|s_counter\(3)) # (!\inst10|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(3),
	datad => VCC,
	cin => \inst10|Add0~3\,
	combout => \inst10|Add0~4_combout\,
	cout => \inst10|Add0~5\);

-- Location: LCCOMB_X85_Y68_N12
\inst10|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~6_combout\ = (\inst10|s_counter\(4) & (!\inst10|Add0~5\)) # (!\inst10|s_counter\(4) & ((\inst10|Add0~5\) # (GND)))
-- \inst10|Add0~7\ = CARRY((!\inst10|Add0~5\) # (!\inst10|s_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(4),
	datad => VCC,
	cin => \inst10|Add0~5\,
	combout => \inst10|Add0~6_combout\,
	cout => \inst10|Add0~7\);

-- Location: LCCOMB_X89_Y68_N28
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\SW5~input_o\) # ((\SW6~input_o\) # ((\inst8|temperature\(7)) # (!\SW4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW5~input_o\,
	datab => \SW6~input_o\,
	datac => \inst8|temperature\(7),
	datad => \SW4~input_o\,
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X89_Y68_N22
\inst|temp_set[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp_set\(7) = (GLOBAL(\inst|heating~0clkctrl_outclk\) & ((\inst|Mux1~0_combout\))) # (!GLOBAL(\inst|heating~0clkctrl_outclk\) & (\inst|temp_set\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp_set\(7),
	datac => \inst|Mux1~0_combout\,
	datad => \inst|heating~0clkctrl_outclk\,
	combout => \inst|temp_set\(7));

-- Location: LCCOMB_X85_Y68_N0
\inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\SW5~input_o\ & ((\SW4~input_o\) # ((\SW6~input_o\)))) # (!\SW5~input_o\ & (!\SW6~input_o\ & ((\inst8|temperature\(6)) # (!\SW4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW5~input_o\,
	datab => \SW4~input_o\,
	datac => \inst8|temperature\(6),
	datad => \SW6~input_o\,
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X85_Y68_N26
\inst|temp_set[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp_set\(6) = (GLOBAL(\inst|heating~0clkctrl_outclk\) & (\inst|Mux2~0_combout\)) # (!GLOBAL(\inst|heating~0clkctrl_outclk\) & ((\inst|temp_set\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~0_combout\,
	datac => \inst|temp_set\(6),
	datad => \inst|heating~0clkctrl_outclk\,
	combout => \inst|temp_set\(6));

-- Location: LCCOMB_X87_Y68_N26
\inst10|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add1~8_combout\ = (\inst10|s_counter\(5) & ((GND) # (!\inst10|Add1~7\))) # (!\inst10|s_counter\(5) & (\inst10|Add1~7\ $ (GND)))
-- \inst10|Add1~9\ = CARRY((\inst10|s_counter\(5)) # (!\inst10|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_counter\(5),
	datad => VCC,
	cin => \inst10|Add1~7\,
	combout => \inst10|Add1~8_combout\,
	cout => \inst10|Add1~9\);

-- Location: LCCOMB_X89_Y68_N30
\inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\SW5~input_o\ & (!\SW4~input_o\ & ((!\SW6~input_o\)))) # (!\SW5~input_o\ & ((\SW6~input_o\) # ((\SW4~input_o\ & \inst8|temperature\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW5~input_o\,
	datab => \SW4~input_o\,
	datac => \inst8|temperature\(5),
	datad => \SW6~input_o\,
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X89_Y68_N4
\inst|temp_set[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp_set\(5) = (GLOBAL(\inst|heating~0clkctrl_outclk\) & ((\inst|Mux3~0_combout\))) # (!GLOBAL(\inst|heating~0clkctrl_outclk\) & (\inst|temp_set\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp_set\(5),
	datac => \inst|Mux3~0_combout\,
	datad => \inst|heating~0clkctrl_outclk\,
	combout => \inst|temp_set\(5));

-- Location: LCCOMB_X87_Y68_N12
\inst10|s_counter[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_counter[5]~15_combout\ = (!\inst10|s_counter[3]~5_combout\ & ((\inst10|s_coolStart~q\ & (\inst10|Add1~8_combout\)) # (!\inst10|s_coolStart~q\ & ((\inst|temp_set\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add1~8_combout\,
	datab => \inst10|s_coolStart~q\,
	datac => \inst|temp_set\(5),
	datad => \inst10|s_counter[3]~5_combout\,
	combout => \inst10|s_counter[5]~15_combout\);

-- Location: LCCOMB_X85_Y68_N14
\inst10|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~8_combout\ = (\inst10|s_counter\(5) & (\inst10|Add0~7\ $ (GND))) # (!\inst10|s_counter\(5) & (!\inst10|Add0~7\ & VCC))
-- \inst10|Add0~9\ = CARRY((\inst10|s_counter\(5) & !\inst10|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(5),
	datad => VCC,
	cin => \inst10|Add0~7\,
	combout => \inst10|Add0~8_combout\,
	cout => \inst10|Add0~9\);

-- Location: LCCOMB_X85_Y68_N24
\inst10|s_counter[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_counter[5]~14_combout\ = (\inst10|Add0~8_combout\ & \inst10|s_counter[3]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Add0~8_combout\,
	datad => \inst10|s_counter[3]~5_combout\,
	combout => \inst10|s_counter[5]~14_combout\);

-- Location: LCCOMB_X87_Y68_N8
\inst10|s_counter[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_counter[5]~16_combout\ = (\inst10|s_counter[3]~7_combout\ & ((\inst10|s_counter[5]~15_combout\) # ((\inst10|s_counter[5]~14_combout\)))) # (!\inst10|s_counter[3]~7_combout\ & (((\inst10|s_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter[5]~15_combout\,
	datab => \inst10|s_counter[3]~7_combout\,
	datac => \inst10|s_counter\(5),
	datad => \inst10|s_counter[5]~14_combout\,
	combout => \inst10|s_counter[5]~16_combout\);

-- Location: FF_X87_Y68_N9
\inst10|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst10|s_counter[5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_counter\(5));

-- Location: LCCOMB_X87_Y68_N28
\inst10|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add1~10_combout\ = (\inst10|s_counter\(6) & (\inst10|Add1~9\ & VCC)) # (!\inst10|s_counter\(6) & (!\inst10|Add1~9\))
-- \inst10|Add1~11\ = CARRY((!\inst10|s_counter\(6) & !\inst10|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_counter\(6),
	datad => VCC,
	cin => \inst10|Add1~9\,
	combout => \inst10|Add1~10_combout\,
	cout => \inst10|Add1~11\);

-- Location: LCCOMB_X85_Y68_N2
\inst10|s_counter[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_counter[6]~12_combout\ = (!\inst10|s_counter[3]~5_combout\ & ((\inst10|s_coolStart~q\ & ((\inst10|Add1~10_combout\))) # (!\inst10|s_coolStart~q\ & (\inst|temp_set\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp_set\(6),
	datab => \inst10|s_coolStart~q\,
	datac => \inst10|s_counter[3]~5_combout\,
	datad => \inst10|Add1~10_combout\,
	combout => \inst10|s_counter[6]~12_combout\);

-- Location: LCCOMB_X85_Y68_N16
\inst10|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~10_combout\ = (\inst10|s_counter\(6) & (!\inst10|Add0~9\)) # (!\inst10|s_counter\(6) & ((\inst10|Add0~9\) # (GND)))
-- \inst10|Add0~11\ = CARRY((!\inst10|Add0~9\) # (!\inst10|s_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_counter\(6),
	datad => VCC,
	cin => \inst10|Add0~9\,
	combout => \inst10|Add0~10_combout\,
	cout => \inst10|Add0~11\);

-- Location: LCCOMB_X85_Y68_N4
\inst10|s_counter[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_counter[6]~11_combout\ = (\inst10|s_counter[3]~5_combout\ & \inst10|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|s_counter[3]~5_combout\,
	datad => \inst10|Add0~10_combout\,
	combout => \inst10|s_counter[6]~11_combout\);

-- Location: LCCOMB_X85_Y68_N28
\inst10|s_counter[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_counter[6]~13_combout\ = (\inst10|s_counter[3]~7_combout\ & ((\inst10|s_counter[6]~12_combout\) # ((\inst10|s_counter[6]~11_combout\)))) # (!\inst10|s_counter[3]~7_combout\ & (((\inst10|s_counter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter[6]~12_combout\,
	datab => \inst10|s_counter[6]~11_combout\,
	datac => \inst10|s_counter\(6),
	datad => \inst10|s_counter[3]~7_combout\,
	combout => \inst10|s_counter[6]~13_combout\);

-- Location: FF_X85_Y68_N29
\inst10|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst10|s_counter[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_counter\(6));

-- Location: LCCOMB_X87_Y68_N30
\inst10|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add1~12_combout\ = \inst10|Add1~11\ $ (\inst10|s_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst10|s_counter\(7),
	cin => \inst10|Add1~11\,
	combout => \inst10|Add1~12_combout\);

-- Location: LCCOMB_X87_Y68_N6
\inst10|s_counter[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_counter[7]~9_combout\ = (!\inst10|s_counter[3]~5_combout\ & ((\inst10|s_coolStart~q\ & ((\inst10|Add1~12_combout\))) # (!\inst10|s_coolStart~q\ & (\inst|temp_set\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp_set\(7),
	datab => \inst10|s_coolStart~q\,
	datac => \inst10|Add1~12_combout\,
	datad => \inst10|s_counter[3]~5_combout\,
	combout => \inst10|s_counter[7]~9_combout\);

-- Location: LCCOMB_X85_Y68_N18
\inst10|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~12_combout\ = \inst10|s_counter\(7) $ (!\inst10|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_counter\(7),
	cin => \inst10|Add0~11\,
	combout => \inst10|Add0~12_combout\);

-- Location: LCCOMB_X85_Y68_N20
\inst10|s_counter[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_counter[7]~8_combout\ = (\inst10|s_counter[3]~5_combout\ & \inst10|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|s_counter[3]~5_combout\,
	datad => \inst10|Add0~12_combout\,
	combout => \inst10|s_counter[7]~8_combout\);

-- Location: LCCOMB_X87_Y68_N2
\inst10|s_counter[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_counter[7]~10_combout\ = (\inst10|s_counter[3]~7_combout\ & ((\inst10|s_counter[7]~9_combout\) # ((\inst10|s_counter[7]~8_combout\)))) # (!\inst10|s_counter[3]~7_combout\ & (((\inst10|s_counter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter[7]~9_combout\,
	datab => \inst10|s_counter[3]~7_combout\,
	datac => \inst10|s_counter\(7),
	datad => \inst10|s_counter[7]~8_combout\,
	combout => \inst10|s_counter[7]~10_combout\);

-- Location: FF_X87_Y68_N3
\inst10|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst10|s_counter[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_counter\(7));

-- Location: LCCOMB_X89_Y68_N24
\inst|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~0_combout\ = (!\SW5~input_o\ & (\inst8|temperature\(0) & (!\SW6~input_o\ & \SW4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW5~input_o\,
	datab => \inst8|temperature\(0),
	datac => \SW6~input_o\,
	datad => \SW4~input_o\,
	combout => \inst|Mux8~0_combout\);

-- Location: LCCOMB_X89_Y68_N26
\inst|temp_set[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp_set\(0) = (GLOBAL(\inst|heating~0clkctrl_outclk\) & ((\inst|Mux8~0_combout\))) # (!GLOBAL(\inst|heating~0clkctrl_outclk\) & (\inst|temp_set\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp_set\(0),
	datac => \inst|Mux8~0_combout\,
	datad => \inst|heating~0clkctrl_outclk\,
	combout => \inst|temp_set\(0));

-- Location: LCCOMB_X86_Y68_N8
\inst10|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~1_cout\ = CARRY((\inst|temp_set\(0) & !\inst10|s_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp_set\(0),
	datab => \inst10|s_counter\(0),
	datad => VCC,
	cout => \inst10|LessThan0~1_cout\);

-- Location: LCCOMB_X86_Y68_N10
\inst10|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~3_cout\ = CARRY((\inst|temp_set\(1) & (\inst10|s_counter\(1) & !\inst10|LessThan0~1_cout\)) # (!\inst|temp_set\(1) & ((\inst10|s_counter\(1)) # (!\inst10|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp_set\(1),
	datab => \inst10|s_counter\(1),
	datad => VCC,
	cin => \inst10|LessThan0~1_cout\,
	cout => \inst10|LessThan0~3_cout\);

-- Location: LCCOMB_X86_Y68_N12
\inst10|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~5_cout\ = CARRY((\inst|temp_set\(2) & ((!\inst10|LessThan0~3_cout\) # (!\inst10|s_counter\(2)))) # (!\inst|temp_set\(2) & (!\inst10|s_counter\(2) & !\inst10|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp_set\(2),
	datab => \inst10|s_counter\(2),
	datad => VCC,
	cin => \inst10|LessThan0~3_cout\,
	cout => \inst10|LessThan0~5_cout\);

-- Location: LCCOMB_X86_Y68_N14
\inst10|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~7_cout\ = CARRY((\inst10|s_counter\(3) & ((!\inst10|LessThan0~5_cout\) # (!\inst|temp_set\(3)))) # (!\inst10|s_counter\(3) & (!\inst|temp_set\(3) & !\inst10|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(3),
	datab => \inst|temp_set\(3),
	datad => VCC,
	cin => \inst10|LessThan0~5_cout\,
	cout => \inst10|LessThan0~7_cout\);

-- Location: LCCOMB_X86_Y68_N16
\inst10|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~9_cout\ = CARRY((\inst|temp_set\(4) & ((!\inst10|LessThan0~7_cout\) # (!\inst10|s_counter\(4)))) # (!\inst|temp_set\(4) & (!\inst10|s_counter\(4) & !\inst10|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp_set\(4),
	datab => \inst10|s_counter\(4),
	datad => VCC,
	cin => \inst10|LessThan0~7_cout\,
	cout => \inst10|LessThan0~9_cout\);

-- Location: LCCOMB_X86_Y68_N18
\inst10|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~11_cout\ = CARRY((\inst|temp_set\(5) & (\inst10|s_counter\(5) & !\inst10|LessThan0~9_cout\)) # (!\inst|temp_set\(5) & ((\inst10|s_counter\(5)) # (!\inst10|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp_set\(5),
	datab => \inst10|s_counter\(5),
	datad => VCC,
	cin => \inst10|LessThan0~9_cout\,
	cout => \inst10|LessThan0~11_cout\);

-- Location: LCCOMB_X86_Y68_N20
\inst10|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~13_cout\ = CARRY((\inst|temp_set\(6) & ((!\inst10|LessThan0~11_cout\) # (!\inst10|s_counter\(6)))) # (!\inst|temp_set\(6) & (!\inst10|s_counter\(6) & !\inst10|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp_set\(6),
	datab => \inst10|s_counter\(6),
	datad => VCC,
	cin => \inst10|LessThan0~11_cout\,
	cout => \inst10|LessThan0~13_cout\);

-- Location: LCCOMB_X86_Y68_N22
\inst10|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~14_combout\ = (\inst|temp_set\(7) & ((\inst10|LessThan0~13_cout\) # (!\inst10|s_counter\(7)))) # (!\inst|temp_set\(7) & (\inst10|LessThan0~13_cout\ & !\inst10|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp_set\(7),
	datad => \inst10|s_counter\(7),
	cin => \inst10|LessThan0~13_cout\,
	combout => \inst10|LessThan0~14_combout\);

-- Location: LCCOMB_X86_Y68_N24
\inst10|s_counter[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_counter[3]~6_combout\ = (\inst10|s_coolDone~1_combout\) # ((!\inst|current_state.COOL~q\ & ((\inst|current_state.IDLE~q\) # (\inst10|s_heatDone~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state.IDLE~q\,
	datab => \inst|current_state.COOL~q\,
	datac => \inst10|s_heatDone~q\,
	datad => \inst10|s_coolDone~1_combout\,
	combout => \inst10|s_counter[3]~6_combout\);

-- Location: LCCOMB_X86_Y68_N30
\inst10|s_counter[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_counter[3]~7_combout\ = (!\inst10|s_counter[3]~6_combout\ & ((\inst|current_state.COOL~q\) # ((\SW1~input_o\ & \inst10|LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state.COOL~q\,
	datab => \SW1~input_o\,
	datac => \inst10|LessThan0~14_combout\,
	datad => \inst10|s_counter[3]~6_combout\,
	combout => \inst10|s_counter[3]~7_combout\);

-- Location: FF_X87_Y68_N1
\inst10|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst10|s_counter[4]~0_combout\,
	asdata => \inst10|Add0~6_combout\,
	sload => \inst10|s_counter[3]~5_combout\,
	ena => \inst10|s_counter[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_counter\(4));

-- Location: LCCOMB_X87_Y68_N16
\inst10|s_coolDone~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_coolDone~0_combout\ = (\inst10|s_coolStart~q\ & (!\inst10|s_counter\(7) & (!\inst10|s_counter\(5) & !\inst10|s_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_coolStart~q\,
	datab => \inst10|s_counter\(7),
	datac => \inst10|s_counter\(5),
	datad => \inst10|s_counter\(6),
	combout => \inst10|s_coolDone~0_combout\);

-- Location: LCCOMB_X85_Y68_N22
\inst10|s_counter[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_counter[3]~5_combout\ = ((\inst10|s_coolDone~0_combout\ & ((!\inst10|LessThan1~0_combout\) # (!\inst10|s_counter\(4))))) # (!\inst|current_state.COOL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(4),
	datab => \inst|current_state.COOL~q\,
	datac => \inst10|LessThan1~0_combout\,
	datad => \inst10|s_coolDone~0_combout\,
	combout => \inst10|s_counter[3]~5_combout\);

-- Location: FF_X86_Y68_N29
\inst10|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst10|s_counter[1]~3_combout\,
	asdata => \inst10|Add0~0_combout\,
	sload => \inst10|s_counter[3]~5_combout\,
	ena => \inst10|s_counter[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_counter\(1));

-- Location: LCCOMB_X87_Y68_N20
\inst10|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add1~2_combout\ = (\inst10|s_counter\(2) & (\inst10|Add1~1\ & VCC)) # (!\inst10|s_counter\(2) & (!\inst10|Add1~1\))
-- \inst10|Add1~3\ = CARRY((!\inst10|s_counter\(2) & !\inst10|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(2),
	datad => VCC,
	cin => \inst10|Add1~1\,
	combout => \inst10|Add1~2_combout\,
	cout => \inst10|Add1~3\);

-- Location: LCCOMB_X86_Y68_N0
\inst10|s_counter[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_counter[2]~2_combout\ = (\inst10|s_coolStart~q\ & ((\inst10|Add1~2_combout\))) # (!\inst10|s_coolStart~q\ & (\inst|temp_set\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp_set\(2),
	datab => \inst10|s_coolStart~q\,
	datad => \inst10|Add1~2_combout\,
	combout => \inst10|s_counter[2]~2_combout\);

-- Location: FF_X86_Y68_N1
\inst10|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst10|s_counter[2]~2_combout\,
	asdata => \inst10|Add0~2_combout\,
	sload => \inst10|s_counter[3]~5_combout\,
	ena => \inst10|s_counter[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_counter\(2));

-- Location: LCCOMB_X86_Y68_N26
\inst10|s_counter[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_counter[3]~1_combout\ = (\inst10|s_coolStart~q\ & ((\inst10|Add1~4_combout\))) # (!\inst10|s_coolStart~q\ & (\inst|temp_set\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_coolStart~q\,
	datab => \inst|temp_set\(3),
	datad => \inst10|Add1~4_combout\,
	combout => \inst10|s_counter[3]~1_combout\);

-- Location: FF_X86_Y68_N27
\inst10|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst10|s_counter[3]~1_combout\,
	asdata => \inst10|Add0~4_combout\,
	sload => \inst10|s_counter[3]~5_combout\,
	ena => \inst10|s_counter[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_counter\(3));

-- Location: LCCOMB_X86_Y68_N4
\inst10|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan1~0_combout\ = (\inst10|s_counter\(3)) # ((\inst10|s_counter\(2) & ((\inst10|s_counter\(0)) # (\inst10|s_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(3),
	datab => \inst10|s_counter\(2),
	datac => \inst10|s_counter\(0),
	datad => \inst10|s_counter\(1),
	combout => \inst10|LessThan1~0_combout\);

-- Location: LCCOMB_X86_Y68_N6
\inst10|s_coolDone~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_coolDone~1_combout\ = (\inst|current_state.COOL~q\ & (\inst10|s_coolDone~0_combout\ & ((!\inst10|s_counter\(4)) # (!\inst10|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state.COOL~q\,
	datab => \inst10|LessThan1~0_combout\,
	datac => \inst10|s_counter\(4),
	datad => \inst10|s_coolDone~0_combout\,
	combout => \inst10|s_coolDone~1_combout\);

-- Location: LCCOMB_X85_Y69_N6
\inst10|s_coolDone~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_coolDone~2_combout\ = (\inst10|s_coolDone~q\) # (\inst10|s_coolDone~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|s_coolDone~q\,
	datad => \inst10|s_coolDone~1_combout\,
	combout => \inst10|s_coolDone~2_combout\);

-- Location: FF_X85_Y69_N7
\inst10|s_coolDone\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst10|s_coolDone~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_coolDone~q\);

-- Location: LCCOMB_X85_Y69_N28
\inst|current_state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|current_state~32_combout\ = (!\inst|current_state~29_combout\ & ((!\inst10|s_coolDone~q\) # (!\inst|current_state.COOL~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|current_state.COOL~q\,
	datac => \inst|current_state~29_combout\,
	datad => \inst10|s_coolDone~q\,
	combout => \inst|current_state~32_combout\);

-- Location: FF_X85_Y69_N29
\inst|current_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~q\,
	d => \inst|current_state~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|current_state.IDLE~q\);

-- Location: LCCOMB_X85_Y69_N0
\inst10|s_heatDone~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_heatDone~2_combout\ = (\inst10|s_heatDone~q\) # ((\SW1~input_o\ & (!\inst|current_state.IDLE~q\ & !\inst10|LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \inst|current_state.IDLE~q\,
	datac => \inst10|s_heatDone~q\,
	datad => \inst10|LessThan0~14_combout\,
	combout => \inst10|s_heatDone~2_combout\);

-- Location: FF_X85_Y69_N1
\inst10|s_heatDone\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst10|s_heatDone~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_heatDone~q\);

-- Location: LCCOMB_X85_Y68_N30
\inst|current_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|current_state~16_combout\ = (\SW5~input_o\ & ((!\SW6~input_o\))) # (!\SW5~input_o\ & ((\SW4~input_o\) # (\SW6~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW5~input_o\,
	datac => \SW4~input_o\,
	datad => \SW6~input_o\,
	combout => \inst|current_state~16_combout\);

-- Location: LCCOMB_X85_Y69_N22
\inst|current_state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|current_state~30_combout\ = (\inst10|s_heatDone~q\ & (!\inst|current_state.IDLE~q\ & (\inst|current_state~16_combout\ & \SW1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_heatDone~q\,
	datab => \inst|current_state.IDLE~q\,
	datac => \inst|current_state~16_combout\,
	datad => \SW1~input_o\,
	combout => \inst|current_state~30_combout\);

-- Location: LCCOMB_X85_Y65_N2
\inst|current_state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|current_state~17_combout\ = (\SW0~input_o\ & ((\inst|current_state~30_combout\) # ((!\inst11|preheat_zero~q\ & \inst|current_state.PreHEAT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|preheat_zero~q\,
	datab => \SW0~input_o\,
	datac => \inst|current_state.PreHEAT~q\,
	datad => \inst|current_state~30_combout\,
	combout => \inst|current_state~17_combout\);

-- Location: FF_X85_Y65_N3
\inst|current_state.PreHEAT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst|current_state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|current_state.PreHEAT~q\);

-- Location: LCCOMB_X84_Y65_N16
\inst11|counter[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter[0]~8_combout\ = \inst11|counter\(0) $ (VCC)
-- \inst11|counter[0]~9\ = CARRY(\inst11|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|counter\(0),
	datad => VCC,
	combout => \inst11|counter[0]~8_combout\,
	cout => \inst11|counter[0]~9\);

-- Location: LCCOMB_X88_Y67_N14
\inst9|timecook[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timecook[0]~10_combout\ = \inst9|timecook\(0) $ (VCC)
-- \inst9|timecook[0]~11\ = CARRY(\inst9|timecook\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|timecook\(0),
	datad => VCC,
	combout => \inst9|timecook[0]~10_combout\,
	cout => \inst9|timecook[0]~11\);

-- Location: IOIBUF_X83_Y73_N15
\SW7~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW7,
	o => \SW7~input_o\);

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

-- Location: LCCOMB_X88_Y67_N16
\inst9|timecook[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timecook[1]~15_combout\ = (\KEY[0]~input_o\ & ((\inst9|timecook\(1) & (!\inst9|timecook[0]~11\)) # (!\inst9|timecook\(1) & ((\inst9|timecook[0]~11\) # (GND))))) # (!\KEY[0]~input_o\ & ((\inst9|timecook\(1) & (\inst9|timecook[0]~11\ & VCC)) # 
-- (!\inst9|timecook\(1) & (!\inst9|timecook[0]~11\))))
-- \inst9|timecook[1]~16\ = CARRY((\KEY[0]~input_o\ & ((!\inst9|timecook[0]~11\) # (!\inst9|timecook\(1)))) # (!\KEY[0]~input_o\ & (!\inst9|timecook\(1) & !\inst9|timecook[0]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst9|timecook\(1),
	datad => VCC,
	cin => \inst9|timecook[0]~11\,
	combout => \inst9|timecook[1]~15_combout\,
	cout => \inst9|timecook[1]~16\);

-- Location: FF_X88_Y67_N17
\inst9|timecook[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst9|timecook[1]~15_combout\,
	ena => \inst9|timecook[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|timecook\(1));

-- Location: LCCOMB_X88_Y67_N18
\inst9|timecook[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timecook[2]~17_combout\ = ((\KEY[0]~input_o\ $ (\inst9|timecook\(2) $ (\inst9|timecook[1]~16\)))) # (GND)
-- \inst9|timecook[2]~18\ = CARRY((\KEY[0]~input_o\ & (\inst9|timecook\(2) & !\inst9|timecook[1]~16\)) # (!\KEY[0]~input_o\ & ((\inst9|timecook\(2)) # (!\inst9|timecook[1]~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst9|timecook\(2),
	datad => VCC,
	cin => \inst9|timecook[1]~16\,
	combout => \inst9|timecook[2]~17_combout\,
	cout => \inst9|timecook[2]~18\);

-- Location: FF_X88_Y67_N19
\inst9|timecook[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst9|timecook[2]~17_combout\,
	ena => \inst9|timecook[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|timecook\(2));

-- Location: LCCOMB_X88_Y67_N20
\inst9|timecook[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timecook[3]~19_combout\ = (\KEY[0]~input_o\ & ((\inst9|timecook\(3) & (!\inst9|timecook[2]~18\)) # (!\inst9|timecook\(3) & ((\inst9|timecook[2]~18\) # (GND))))) # (!\KEY[0]~input_o\ & ((\inst9|timecook\(3) & (\inst9|timecook[2]~18\ & VCC)) # 
-- (!\inst9|timecook\(3) & (!\inst9|timecook[2]~18\))))
-- \inst9|timecook[3]~20\ = CARRY((\KEY[0]~input_o\ & ((!\inst9|timecook[2]~18\) # (!\inst9|timecook\(3)))) # (!\KEY[0]~input_o\ & (!\inst9|timecook\(3) & !\inst9|timecook[2]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst9|timecook\(3),
	datad => VCC,
	cin => \inst9|timecook[2]~18\,
	combout => \inst9|timecook[3]~19_combout\,
	cout => \inst9|timecook[3]~20\);

-- Location: FF_X88_Y67_N21
\inst9|timecook[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst9|timecook[3]~19_combout\,
	ena => \inst9|timecook[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|timecook\(3));

-- Location: LCCOMB_X88_Y67_N22
\inst9|timecook[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timecook[4]~21_combout\ = ((\inst9|timecook\(4) $ (\KEY[0]~input_o\ $ (\inst9|timecook[3]~20\)))) # (GND)
-- \inst9|timecook[4]~22\ = CARRY((\inst9|timecook\(4) & ((!\inst9|timecook[3]~20\) # (!\KEY[0]~input_o\))) # (!\inst9|timecook\(4) & (!\KEY[0]~input_o\ & !\inst9|timecook[3]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|timecook\(4),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \inst9|timecook[3]~20\,
	combout => \inst9|timecook[4]~21_combout\,
	cout => \inst9|timecook[4]~22\);

-- Location: FF_X88_Y67_N23
\inst9|timecook[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst9|timecook[4]~21_combout\,
	ena => \inst9|timecook[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|timecook\(4));

-- Location: LCCOMB_X88_Y67_N24
\inst9|timecook[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timecook[5]~23_combout\ = (\KEY[0]~input_o\ & ((\inst9|timecook\(5) & (!\inst9|timecook[4]~22\)) # (!\inst9|timecook\(5) & ((\inst9|timecook[4]~22\) # (GND))))) # (!\KEY[0]~input_o\ & ((\inst9|timecook\(5) & (\inst9|timecook[4]~22\ & VCC)) # 
-- (!\inst9|timecook\(5) & (!\inst9|timecook[4]~22\))))
-- \inst9|timecook[5]~24\ = CARRY((\KEY[0]~input_o\ & ((!\inst9|timecook[4]~22\) # (!\inst9|timecook\(5)))) # (!\KEY[0]~input_o\ & (!\inst9|timecook\(5) & !\inst9|timecook[4]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst9|timecook\(5),
	datad => VCC,
	cin => \inst9|timecook[4]~22\,
	combout => \inst9|timecook[5]~23_combout\,
	cout => \inst9|timecook[5]~24\);

-- Location: FF_X88_Y67_N25
\inst9|timecook[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst9|timecook[5]~23_combout\,
	ena => \inst9|timecook[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|timecook\(5));

-- Location: LCCOMB_X88_Y67_N26
\inst9|timecook[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timecook[6]~25_combout\ = ((\inst9|timecook\(6) $ (\KEY[0]~input_o\ $ (\inst9|timecook[5]~24\)))) # (GND)
-- \inst9|timecook[6]~26\ = CARRY((\inst9|timecook\(6) & ((!\inst9|timecook[5]~24\) # (!\KEY[0]~input_o\))) # (!\inst9|timecook\(6) & (!\KEY[0]~input_o\ & !\inst9|timecook[5]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|timecook\(6),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \inst9|timecook[5]~24\,
	combout => \inst9|timecook[6]~25_combout\,
	cout => \inst9|timecook[6]~26\);

-- Location: FF_X88_Y67_N27
\inst9|timecook[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst9|timecook[6]~25_combout\,
	ena => \inst9|timecook[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|timecook\(6));

-- Location: LCCOMB_X88_Y67_N28
\inst9|timecook[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timecook[7]~27_combout\ = \KEY[0]~input_o\ $ (\inst9|timecook[6]~26\ $ (!\inst9|timecook\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datad => \inst9|timecook\(7),
	cin => \inst9|timecook[6]~26\,
	combout => \inst9|timecook[7]~27_combout\);

-- Location: FF_X88_Y67_N29
\inst9|timecook[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst9|timecook[7]~27_combout\,
	ena => \inst9|timecook[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|timecook\(7));

-- Location: LCCOMB_X88_Y67_N2
\inst9|timecook[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timecook[7]~12_combout\ = (\inst9|timecook\(1)) # ((\inst9|timecook\(2)) # (\inst9|timecook\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|timecook\(1),
	datac => \inst9|timecook\(2),
	datad => \inst9|timecook\(3),
	combout => \inst9|timecook[7]~12_combout\);

-- Location: LCCOMB_X88_Y67_N12
\inst9|timecook[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timecook[7]~13_combout\ = (\KEY[0]~input_o\ & (\inst9|timecook\(5) & (\inst9|timecook\(4) & \inst9|timecook[7]~12_combout\))) # (!\KEY[0]~input_o\ & ((\inst9|timecook\(5)) # ((\inst9|timecook\(4)) # (\inst9|timecook[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst9|timecook\(5),
	datac => \inst9|timecook\(4),
	datad => \inst9|timecook[7]~12_combout\,
	combout => \inst9|timecook[7]~13_combout\);

-- Location: LCCOMB_X88_Y67_N10
\inst9|timecook[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timecook[7]~14_combout\ = (\inst9|timecook\(7)) # ((\inst9|timecook\(6)) # (\inst9|timecook[7]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|timecook\(7),
	datac => \inst9|timecook\(6),
	datad => \inst9|timecook[7]~13_combout\,
	combout => \inst9|timecook[7]~14_combout\);

-- Location: LCCOMB_X88_Y67_N8
\inst9|timecook[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timecook[7]~29_combout\ = (\SW7~input_o\ & ((\KEY[0]~input_o\ & ((!\inst9|timecook[7]~14_combout\))) # (!\KEY[0]~input_o\ & (\KEY[1]~input_o\ & \inst9|timecook[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW7~input_o\,
	datab => \KEY[0]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \inst9|timecook[7]~14_combout\,
	combout => \inst9|timecook[7]~29_combout\);

-- Location: FF_X88_Y67_N15
\inst9|timecook[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst9|timecook[0]~10_combout\,
	ena => \inst9|timecook[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|timecook\(0));

-- Location: LCCOMB_X88_Y65_N0
\inst|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux16~0_combout\ = (!\SW6~input_o\ & ((\SW5~input_o\ & ((!\SW4~input_o\))) # (!\SW5~input_o\ & (\inst9|timecook\(0) & \SW4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW6~input_o\,
	datab => \SW5~input_o\,
	datac => \inst9|timecook\(0),
	datad => \SW4~input_o\,
	combout => \inst|Mux16~0_combout\);

-- Location: LCCOMB_X88_Y65_N8
\inst|cook_time_set[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cook_time_set\(0) = (GLOBAL(\inst|heating~0clkctrl_outclk\) & (\inst|Mux16~0_combout\)) # (!GLOBAL(\inst|heating~0clkctrl_outclk\) & ((\inst|cook_time_set\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~0_combout\,
	datac => \inst|cook_time_set\(0),
	datad => \inst|heating~0clkctrl_outclk\,
	combout => \inst|cook_time_set\(0));

-- Location: LCCOMB_X83_Y68_N10
\inst9|timepreheat[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timepreheat[0]~10_combout\ = \inst9|timepreheat\(0) $ (VCC)
-- \inst9|timepreheat[0]~11\ = CARRY(\inst9|timepreheat\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|timepreheat\(0),
	datad => VCC,
	combout => \inst9|timepreheat[0]~10_combout\,
	cout => \inst9|timepreheat[0]~11\);

-- Location: LCCOMB_X83_Y68_N12
\inst9|timepreheat[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timepreheat[1]~15_combout\ = (\inst9|timepreheat\(1) & ((\KEY[0]~input_o\ & (!\inst9|timepreheat[0]~11\)) # (!\KEY[0]~input_o\ & (\inst9|timepreheat[0]~11\ & VCC)))) # (!\inst9|timepreheat\(1) & ((\KEY[0]~input_o\ & ((\inst9|timepreheat[0]~11\) # 
-- (GND))) # (!\KEY[0]~input_o\ & (!\inst9|timepreheat[0]~11\))))
-- \inst9|timepreheat[1]~16\ = CARRY((\inst9|timepreheat\(1) & (\KEY[0]~input_o\ & !\inst9|timepreheat[0]~11\)) # (!\inst9|timepreheat\(1) & ((\KEY[0]~input_o\) # (!\inst9|timepreheat[0]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|timepreheat\(1),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \inst9|timepreheat[0]~11\,
	combout => \inst9|timepreheat[1]~15_combout\,
	cout => \inst9|timepreheat[1]~16\);

-- Location: FF_X83_Y68_N13
\inst9|timepreheat[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst9|timepreheat[1]~15_combout\,
	ena => \inst9|timepreheat[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|timepreheat\(1));

-- Location: LCCOMB_X83_Y68_N14
\inst9|timepreheat[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timepreheat[2]~17_combout\ = ((\KEY[0]~input_o\ $ (\inst9|timepreheat\(2) $ (\inst9|timepreheat[1]~16\)))) # (GND)
-- \inst9|timepreheat[2]~18\ = CARRY((\KEY[0]~input_o\ & (\inst9|timepreheat\(2) & !\inst9|timepreheat[1]~16\)) # (!\KEY[0]~input_o\ & ((\inst9|timepreheat\(2)) # (!\inst9|timepreheat[1]~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst9|timepreheat\(2),
	datad => VCC,
	cin => \inst9|timepreheat[1]~16\,
	combout => \inst9|timepreheat[2]~17_combout\,
	cout => \inst9|timepreheat[2]~18\);

-- Location: FF_X83_Y68_N15
\inst9|timepreheat[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst9|timepreheat[2]~17_combout\,
	ena => \inst9|timepreheat[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|timepreheat\(2));

-- Location: LCCOMB_X83_Y68_N16
\inst9|timepreheat[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timepreheat[3]~19_combout\ = (\inst9|timepreheat\(3) & ((\KEY[0]~input_o\ & (!\inst9|timepreheat[2]~18\)) # (!\KEY[0]~input_o\ & (\inst9|timepreheat[2]~18\ & VCC)))) # (!\inst9|timepreheat\(3) & ((\KEY[0]~input_o\ & ((\inst9|timepreheat[2]~18\) # 
-- (GND))) # (!\KEY[0]~input_o\ & (!\inst9|timepreheat[2]~18\))))
-- \inst9|timepreheat[3]~20\ = CARRY((\inst9|timepreheat\(3) & (\KEY[0]~input_o\ & !\inst9|timepreheat[2]~18\)) # (!\inst9|timepreheat\(3) & ((\KEY[0]~input_o\) # (!\inst9|timepreheat[2]~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|timepreheat\(3),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \inst9|timepreheat[2]~18\,
	combout => \inst9|timepreheat[3]~19_combout\,
	cout => \inst9|timepreheat[3]~20\);

-- Location: FF_X83_Y68_N17
\inst9|timepreheat[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst9|timepreheat[3]~19_combout\,
	ena => \inst9|timepreheat[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|timepreheat\(3));

-- Location: LCCOMB_X83_Y68_N18
\inst9|timepreheat[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timepreheat[4]~21_combout\ = ((\inst9|timepreheat\(4) $ (\KEY[0]~input_o\ $ (\inst9|timepreheat[3]~20\)))) # (GND)
-- \inst9|timepreheat[4]~22\ = CARRY((\inst9|timepreheat\(4) & ((!\inst9|timepreheat[3]~20\) # (!\KEY[0]~input_o\))) # (!\inst9|timepreheat\(4) & (!\KEY[0]~input_o\ & !\inst9|timepreheat[3]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|timepreheat\(4),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \inst9|timepreheat[3]~20\,
	combout => \inst9|timepreheat[4]~21_combout\,
	cout => \inst9|timepreheat[4]~22\);

-- Location: FF_X83_Y68_N19
\inst9|timepreheat[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst9|timepreheat[4]~21_combout\,
	ena => \inst9|timepreheat[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|timepreheat\(4));

-- Location: LCCOMB_X83_Y68_N20
\inst9|timepreheat[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timepreheat[5]~23_combout\ = (\KEY[0]~input_o\ & ((\inst9|timepreheat\(5) & (!\inst9|timepreheat[4]~22\)) # (!\inst9|timepreheat\(5) & ((\inst9|timepreheat[4]~22\) # (GND))))) # (!\KEY[0]~input_o\ & ((\inst9|timepreheat\(5) & 
-- (\inst9|timepreheat[4]~22\ & VCC)) # (!\inst9|timepreheat\(5) & (!\inst9|timepreheat[4]~22\))))
-- \inst9|timepreheat[5]~24\ = CARRY((\KEY[0]~input_o\ & ((!\inst9|timepreheat[4]~22\) # (!\inst9|timepreheat\(5)))) # (!\KEY[0]~input_o\ & (!\inst9|timepreheat\(5) & !\inst9|timepreheat[4]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst9|timepreheat\(5),
	datad => VCC,
	cin => \inst9|timepreheat[4]~22\,
	combout => \inst9|timepreheat[5]~23_combout\,
	cout => \inst9|timepreheat[5]~24\);

-- Location: FF_X83_Y68_N21
\inst9|timepreheat[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst9|timepreheat[5]~23_combout\,
	ena => \inst9|timepreheat[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|timepreheat\(5));

-- Location: LCCOMB_X83_Y68_N22
\inst9|timepreheat[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timepreheat[6]~25_combout\ = ((\inst9|timepreheat\(6) $ (\KEY[0]~input_o\ $ (\inst9|timepreheat[5]~24\)))) # (GND)
-- \inst9|timepreheat[6]~26\ = CARRY((\inst9|timepreheat\(6) & ((!\inst9|timepreheat[5]~24\) # (!\KEY[0]~input_o\))) # (!\inst9|timepreheat\(6) & (!\KEY[0]~input_o\ & !\inst9|timepreheat[5]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|timepreheat\(6),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \inst9|timepreheat[5]~24\,
	combout => \inst9|timepreheat[6]~25_combout\,
	cout => \inst9|timepreheat[6]~26\);

-- Location: FF_X83_Y68_N23
\inst9|timepreheat[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst9|timepreheat[6]~25_combout\,
	ena => \inst9|timepreheat[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|timepreheat\(6));

-- Location: LCCOMB_X83_Y68_N24
\inst9|timepreheat[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timepreheat[7]~27_combout\ = \inst9|timepreheat\(7) $ (\inst9|timepreheat[6]~26\ $ (!\KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|timepreheat\(7),
	datad => \KEY[0]~input_o\,
	cin => \inst9|timepreheat[6]~26\,
	combout => \inst9|timepreheat[7]~27_combout\);

-- Location: FF_X83_Y68_N25
\inst9|timepreheat[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst9|timepreheat[7]~27_combout\,
	ena => \inst9|timepreheat[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|timepreheat\(7));

-- Location: LCCOMB_X83_Y68_N0
\inst9|timepreheat[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timepreheat[7]~12_combout\ = (\inst9|timepreheat\(1)) # ((\inst9|timepreheat\(2)) # (\inst9|timepreheat\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|timepreheat\(1),
	datac => \inst9|timepreheat\(2),
	datad => \inst9|timepreheat\(3),
	combout => \inst9|timepreheat[7]~12_combout\);

-- Location: LCCOMB_X83_Y68_N6
\inst9|timepreheat[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timepreheat[7]~13_combout\ = (\KEY[0]~input_o\ & (\inst9|timepreheat\(5) & (\inst9|timepreheat\(4) & \inst9|timepreheat[7]~12_combout\))) # (!\KEY[0]~input_o\ & ((\inst9|timepreheat\(5)) # ((\inst9|timepreheat\(4)) # 
-- (\inst9|timepreheat[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst9|timepreheat\(5),
	datac => \inst9|timepreheat\(4),
	datad => \inst9|timepreheat[7]~12_combout\,
	combout => \inst9|timepreheat[7]~13_combout\);

-- Location: LCCOMB_X83_Y68_N28
\inst9|timepreheat[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timepreheat[7]~14_combout\ = (\inst9|timepreheat\(7)) # ((\inst9|timepreheat\(6)) # (\inst9|timepreheat[7]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|timepreheat\(7),
	datac => \inst9|timepreheat\(6),
	datad => \inst9|timepreheat[7]~13_combout\,
	combout => \inst9|timepreheat[7]~14_combout\);

-- Location: LCCOMB_X83_Y68_N26
\inst9|timepreheat[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|timepreheat[7]~29_combout\ = (!\SW7~input_o\ & ((\KEY[0]~input_o\ & ((!\inst9|timepreheat[7]~14_combout\))) # (!\KEY[0]~input_o\ & (\KEY[1]~input_o\ & \inst9|timepreheat[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \KEY[0]~input_o\,
	datac => \SW7~input_o\,
	datad => \inst9|timepreheat[7]~14_combout\,
	combout => \inst9|timepreheat[7]~29_combout\);

-- Location: FF_X83_Y68_N11
\inst9|timepreheat[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst9|timepreheat[0]~10_combout\,
	ena => \inst9|timepreheat[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|timepreheat\(0));

-- Location: LCCOMB_X84_Y68_N0
\inst|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux22~0_combout\ = (\SW5~input_o\) # ((\SW6~input_o\) # ((\SW4~input_o\ & \inst9|timepreheat\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW4~input_o\,
	datab => \SW5~input_o\,
	datac => \inst9|timepreheat\(0),
	datad => \SW6~input_o\,
	combout => \inst|Mux22~0_combout\);

-- Location: LCCOMB_X85_Y69_N10
\inst|preheat_set[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|preheat_set[7]~0_combout\ = (\SW1~input_o\ & (!\inst|current_state.IDLE~q\ & ((!\SW6~input_o\) # (!\SW5~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW5~input_o\,
	datab => \SW6~input_o\,
	datac => \SW1~input_o\,
	datad => \inst|current_state.IDLE~q\,
	combout => \inst|preheat_set[7]~0_combout\);

-- Location: CLKCTRL_G13
\inst|preheat_set[7]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|preheat_set[7]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|preheat_set[7]~0clkctrl_outclk\);

-- Location: LCCOMB_X84_Y68_N28
\inst|preheat_set[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|preheat_set\(0) = (GLOBAL(\inst|preheat_set[7]~0clkctrl_outclk\) & ((\inst|Mux22~0_combout\))) # (!GLOBAL(\inst|preheat_set[7]~0clkctrl_outclk\) & (\inst|preheat_set\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|preheat_set\(0),
	datac => \inst|Mux22~0_combout\,
	datad => \inst|preheat_set[7]~0clkctrl_outclk\,
	combout => \inst|preheat_set\(0));

-- Location: LCCOMB_X84_Y65_N4
\inst11|counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter~10_combout\ = (\inst|current_state.PreHEAT~q\ & ((\inst|preheat_set\(0)))) # (!\inst|current_state.PreHEAT~q\ & (\inst|cook_time_set\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|current_state.PreHEAT~q\,
	datac => \inst|cook_time_set\(0),
	datad => \inst|preheat_set\(0),
	combout => \inst11|counter~10_combout\);

-- Location: LCCOMB_X84_Y65_N18
\inst11|counter[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter[1]~12_combout\ = (\inst11|counter\(1) & (\inst11|counter[0]~9\ & VCC)) # (!\inst11|counter\(1) & (!\inst11|counter[0]~9\))
-- \inst11|counter[1]~13\ = CARRY((!\inst11|counter\(1) & !\inst11|counter[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|counter\(1),
	datad => VCC,
	cin => \inst11|counter[0]~9\,
	combout => \inst11|counter[1]~12_combout\,
	cout => \inst11|counter[1]~13\);

-- Location: LCCOMB_X84_Y68_N30
\inst|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux21~0_combout\ = (\SW4~input_o\ & (!\SW5~input_o\ & (\inst9|timepreheat\(1) & !\SW6~input_o\))) # (!\SW4~input_o\ & ((\SW5~input_o\) # ((\SW6~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW4~input_o\,
	datab => \SW5~input_o\,
	datac => \inst9|timepreheat\(1),
	datad => \SW6~input_o\,
	combout => \inst|Mux21~0_combout\);

-- Location: LCCOMB_X84_Y68_N22
\inst|preheat_set[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|preheat_set\(1) = (GLOBAL(\inst|preheat_set[7]~0clkctrl_outclk\) & ((\inst|Mux21~0_combout\))) # (!GLOBAL(\inst|preheat_set[7]~0clkctrl_outclk\) & (\inst|preheat_set\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|preheat_set\(1),
	datac => \inst|Mux21~0_combout\,
	datad => \inst|preheat_set[7]~0clkctrl_outclk\,
	combout => \inst|preheat_set\(1));

-- Location: LCCOMB_X87_Y67_N16
\inst|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~0_combout\ = (\SW6~input_o\ & (\SW5~input_o\)) # (!\SW6~input_o\ & (((!\SW5~input_o\ & \inst9|timecook\(1))) # (!\SW4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW5~input_o\,
	datab => \SW4~input_o\,
	datac => \inst9|timecook\(1),
	datad => \SW6~input_o\,
	combout => \inst|Mux15~0_combout\);

-- Location: LCCOMB_X87_Y67_N14
\inst|cook_time_set[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cook_time_set\(1) = (GLOBAL(\inst|heating~0clkctrl_outclk\) & ((\inst|Mux15~0_combout\))) # (!GLOBAL(\inst|heating~0clkctrl_outclk\) & (\inst|cook_time_set\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cook_time_set\(1),
	datac => \inst|Mux15~0_combout\,
	datad => \inst|heating~0clkctrl_outclk\,
	combout => \inst|cook_time_set\(1));

-- Location: LCCOMB_X84_Y65_N14
\inst11|counter~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter~14_combout\ = (\inst|current_state.PreHEAT~q\ & (\inst|preheat_set\(1))) # (!\inst|current_state.PreHEAT~q\ & ((\inst|cook_time_set\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|preheat_set\(1),
	datac => \inst|current_state.PreHEAT~q\,
	datad => \inst|cook_time_set\(1),
	combout => \inst11|counter~14_combout\);

-- Location: LCCOMB_X85_Y65_N24
\inst11|start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|start~0_combout\ = (!\inst|current_state.PreHEAT~q\ & (((\SW2~input_o\) # (!\inst|current_state.COOK~q\)) # (!\inst|openOven_last~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|openOven_last~q\,
	datab => \inst|current_state.PreHEAT~q\,
	datac => \SW2~input_o\,
	datad => \inst|current_state.COOK~q\,
	combout => \inst11|start~0_combout\);

-- Location: LCCOMB_X85_Y65_N14
\inst11|counter[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter[3]~11_combout\ = (!\inst11|start~0_combout\ & ((\inst11|Equal0~0_combout\) # ((\inst11|Equal0~1_combout\) # (!\inst11|start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~0_combout\,
	datab => \inst11|start~q\,
	datac => \inst11|Equal0~1_combout\,
	datad => \inst11|start~0_combout\,
	combout => \inst11|counter[3]~11_combout\);

-- Location: FF_X84_Y65_N19
\inst11|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst11|counter[1]~12_combout\,
	asdata => \inst11|counter~14_combout\,
	sload => \inst11|ALT_INV_start~q\,
	ena => \inst11|counter[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|counter\(1));

-- Location: LCCOMB_X84_Y65_N20
\inst11|counter[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter[2]~15_combout\ = (\inst11|counter\(2) & ((GND) # (!\inst11|counter[1]~13\))) # (!\inst11|counter\(2) & (\inst11|counter[1]~13\ $ (GND)))
-- \inst11|counter[2]~16\ = CARRY((\inst11|counter\(2)) # (!\inst11|counter[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|counter\(2),
	datad => VCC,
	cin => \inst11|counter[1]~13\,
	combout => \inst11|counter[2]~15_combout\,
	cout => \inst11|counter[2]~16\);

-- Location: LCCOMB_X88_Y67_N0
\inst|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~0_combout\ = (\SW6~input_o\ & (((!\SW5~input_o\)))) # (!\SW6~input_o\ & ((\SW5~input_o\) # ((\SW4~input_o\ & \inst9|timecook\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW6~input_o\,
	datab => \SW4~input_o\,
	datac => \SW5~input_o\,
	datad => \inst9|timecook\(2),
	combout => \inst|Mux14~0_combout\);

-- Location: LCCOMB_X85_Y67_N18
\inst|cook_time_set[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cook_time_set\(2) = (GLOBAL(\inst|heating~0clkctrl_outclk\) & ((\inst|Mux14~0_combout\))) # (!GLOBAL(\inst|heating~0clkctrl_outclk\) & (\inst|cook_time_set\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cook_time_set\(2),
	datac => \inst|Mux14~0_combout\,
	datad => \inst|heating~0clkctrl_outclk\,
	combout => \inst|cook_time_set\(2));

-- Location: LCCOMB_X84_Y68_N26
\inst|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux20~0_combout\ = (\SW4~input_o\ & ((\SW5~input_o\) # ((\inst9|timepreheat\(2)) # (\SW6~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW4~input_o\,
	datab => \SW5~input_o\,
	datac => \inst9|timepreheat\(2),
	datad => \SW6~input_o\,
	combout => \inst|Mux20~0_combout\);

-- Location: LCCOMB_X84_Y68_N14
\inst|preheat_set[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|preheat_set\(2) = (GLOBAL(\inst|preheat_set[7]~0clkctrl_outclk\) & ((\inst|Mux20~0_combout\))) # (!GLOBAL(\inst|preheat_set[7]~0clkctrl_outclk\) & (\inst|preheat_set\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|preheat_set\(2),
	datac => \inst|Mux20~0_combout\,
	datad => \inst|preheat_set[7]~0clkctrl_outclk\,
	combout => \inst|preheat_set\(2));

-- Location: LCCOMB_X84_Y65_N10
\inst11|counter~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter~32_combout\ = (\inst|current_state.PreHEAT~q\ & ((\inst|preheat_set\(2)))) # (!\inst|current_state.PreHEAT~q\ & (\inst|cook_time_set\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|current_state.PreHEAT~q\,
	datac => \inst|cook_time_set\(2),
	datad => \inst|preheat_set\(2),
	combout => \inst11|counter~32_combout\);

-- Location: FF_X84_Y65_N21
\inst11|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst11|counter[2]~15_combout\,
	asdata => \inst11|counter~32_combout\,
	sload => \inst11|ALT_INV_start~q\,
	ena => \inst11|counter[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|counter\(2));

-- Location: LCCOMB_X84_Y65_N22
\inst11|counter[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter[3]~17_combout\ = (\inst11|counter\(3) & (\inst11|counter[2]~16\ & VCC)) # (!\inst11|counter\(3) & (!\inst11|counter[2]~16\))
-- \inst11|counter[3]~18\ = CARRY((!\inst11|counter\(3) & !\inst11|counter[2]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|counter\(3),
	datad => VCC,
	cin => \inst11|counter[2]~16\,
	combout => \inst11|counter[3]~17_combout\,
	cout => \inst11|counter[3]~18\);

-- Location: LCCOMB_X84_Y68_N16
\inst|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux19~0_combout\ = (\SW4~input_o\ & (!\SW5~input_o\ & (\inst9|timepreheat\(3) & !\SW6~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW4~input_o\,
	datab => \SW5~input_o\,
	datac => \inst9|timepreheat\(3),
	datad => \SW6~input_o\,
	combout => \inst|Mux19~0_combout\);

-- Location: LCCOMB_X84_Y68_N20
\inst|preheat_set[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|preheat_set\(3) = (GLOBAL(\inst|preheat_set[7]~0clkctrl_outclk\) & (\inst|Mux19~0_combout\)) # (!GLOBAL(\inst|preheat_set[7]~0clkctrl_outclk\) & ((\inst|preheat_set\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux19~0_combout\,
	datac => \inst|preheat_set[7]~0clkctrl_outclk\,
	datad => \inst|preheat_set\(3),
	combout => \inst|preheat_set\(3));

-- Location: LCCOMB_X88_Y67_N30
\inst|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux13~0_combout\ = (!\SW6~input_o\ & ((\SW4~input_o\ & (\inst9|timecook\(3) & !\SW5~input_o\)) # (!\SW4~input_o\ & ((\SW5~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|timecook\(3),
	datab => \SW4~input_o\,
	datac => \SW5~input_o\,
	datad => \SW6~input_o\,
	combout => \inst|Mux13~0_combout\);

-- Location: LCCOMB_X88_Y67_N6
\inst|cook_time_set[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cook_time_set\(3) = (GLOBAL(\inst|heating~0clkctrl_outclk\) & ((\inst|Mux13~0_combout\))) # (!GLOBAL(\inst|heating~0clkctrl_outclk\) & (\inst|cook_time_set\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cook_time_set\(3),
	datab => \inst|Mux13~0_combout\,
	datad => \inst|heating~0clkctrl_outclk\,
	combout => \inst|cook_time_set\(3));

-- Location: LCCOMB_X84_Y65_N8
\inst11|counter~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter~31_combout\ = (\inst|current_state.PreHEAT~q\ & (\inst|preheat_set\(3))) # (!\inst|current_state.PreHEAT~q\ & ((\inst|cook_time_set\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|current_state.PreHEAT~q\,
	datac => \inst|preheat_set\(3),
	datad => \inst|cook_time_set\(3),
	combout => \inst11|counter~31_combout\);

-- Location: FF_X84_Y65_N23
\inst11|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst11|counter[3]~17_combout\,
	asdata => \inst11|counter~31_combout\,
	sload => \inst11|ALT_INV_start~q\,
	ena => \inst11|counter[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|counter\(3));

-- Location: LCCOMB_X84_Y65_N24
\inst11|counter[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter[4]~19_combout\ = (\inst11|counter\(4) & ((GND) # (!\inst11|counter[3]~18\))) # (!\inst11|counter\(4) & (\inst11|counter[3]~18\ $ (GND)))
-- \inst11|counter[4]~20\ = CARRY((\inst11|counter\(4)) # (!\inst11|counter[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|counter\(4),
	datad => VCC,
	cin => \inst11|counter[3]~18\,
	combout => \inst11|counter[4]~19_combout\,
	cout => \inst11|counter[4]~20\);

-- Location: LCCOMB_X88_Y65_N30
\inst|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~0_combout\ = (\SW6~input_o\) # ((\SW5~input_o\ & ((\SW4~input_o\))) # (!\SW5~input_o\ & ((\inst9|timecook\(4)) # (!\SW4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW6~input_o\,
	datab => \inst9|timecook\(4),
	datac => \SW5~input_o\,
	datad => \SW4~input_o\,
	combout => \inst|Mux12~0_combout\);

-- Location: LCCOMB_X88_Y65_N18
\inst|cook_time_set[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cook_time_set\(4) = (GLOBAL(\inst|heating~0clkctrl_outclk\) & ((\inst|Mux12~0_combout\))) # (!GLOBAL(\inst|heating~0clkctrl_outclk\) & (\inst|cook_time_set\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cook_time_set\(4),
	datac => \inst|Mux12~0_combout\,
	datad => \inst|heating~0clkctrl_outclk\,
	combout => \inst|cook_time_set\(4));

-- Location: LCCOMB_X83_Y68_N30
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (!\SW5~input_o\ & (\inst9|timepreheat\(4) & (\SW4~input_o\ & !\SW6~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW5~input_o\,
	datab => \inst9|timepreheat\(4),
	datac => \SW4~input_o\,
	datad => \SW6~input_o\,
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X83_Y68_N2
\inst|preheat_set[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|preheat_set\(4) = (GLOBAL(\inst|preheat_set[7]~0clkctrl_outclk\) & (\inst|Mux0~0_combout\)) # (!GLOBAL(\inst|preheat_set[7]~0clkctrl_outclk\) & ((\inst|preheat_set\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~0_combout\,
	datab => \inst|preheat_set\(4),
	datad => \inst|preheat_set[7]~0clkctrl_outclk\,
	combout => \inst|preheat_set\(4));

-- Location: LCCOMB_X84_Y65_N2
\inst11|counter~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter~30_combout\ = (\inst|current_state.PreHEAT~q\ & ((\inst|preheat_set\(4)))) # (!\inst|current_state.PreHEAT~q\ & (\inst|cook_time_set\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cook_time_set\(4),
	datac => \inst|current_state.PreHEAT~q\,
	datad => \inst|preheat_set\(4),
	combout => \inst11|counter~30_combout\);

-- Location: FF_X84_Y65_N25
\inst11|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst11|counter[4]~19_combout\,
	asdata => \inst11|counter~30_combout\,
	sload => \inst11|ALT_INV_start~q\,
	ena => \inst11|counter[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|counter\(4));

-- Location: LCCOMB_X84_Y65_N26
\inst11|counter[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter[5]~21_combout\ = (\inst11|counter\(5) & (\inst11|counter[4]~20\ & VCC)) # (!\inst11|counter\(5) & (!\inst11|counter[4]~20\))
-- \inst11|counter[5]~22\ = CARRY((!\inst11|counter\(5) & !\inst11|counter[4]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|counter\(5),
	datad => VCC,
	cin => \inst11|counter[4]~20\,
	combout => \inst11|counter[5]~21_combout\,
	cout => \inst11|counter[5]~22\);

-- Location: LCCOMB_X84_Y68_N6
\inst|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux23~0_combout\ = (\SW4~input_o\ & (!\SW5~input_o\ & (\inst9|timepreheat\(5) & !\SW6~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW4~input_o\,
	datab => \SW5~input_o\,
	datac => \inst9|timepreheat\(5),
	datad => \SW6~input_o\,
	combout => \inst|Mux23~0_combout\);

-- Location: LCCOMB_X84_Y68_N10
\inst|preheat_set[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|preheat_set\(5) = (GLOBAL(\inst|preheat_set[7]~0clkctrl_outclk\) & ((\inst|Mux23~0_combout\))) # (!GLOBAL(\inst|preheat_set[7]~0clkctrl_outclk\) & (\inst|preheat_set\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|preheat_set\(5),
	datac => \inst|Mux23~0_combout\,
	datad => \inst|preheat_set[7]~0clkctrl_outclk\,
	combout => \inst|preheat_set\(5));

-- Location: LCCOMB_X88_Y67_N4
\inst|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux11~0_combout\ = (!\SW6~input_o\ & (\inst9|timecook\(5) & (\SW4~input_o\ & !\SW5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW6~input_o\,
	datab => \inst9|timecook\(5),
	datac => \SW4~input_o\,
	datad => \SW5~input_o\,
	combout => \inst|Mux11~0_combout\);

-- Location: LCCOMB_X85_Y67_N8
\inst|cook_time_set[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cook_time_set\(5) = (GLOBAL(\inst|heating~0clkctrl_outclk\) & (\inst|Mux11~0_combout\)) # (!GLOBAL(\inst|heating~0clkctrl_outclk\) & ((\inst|cook_time_set\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux11~0_combout\,
	datac => \inst|cook_time_set\(5),
	datad => \inst|heating~0clkctrl_outclk\,
	combout => \inst|cook_time_set\(5));

-- Location: LCCOMB_X84_Y65_N0
\inst11|counter~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter~29_combout\ = (\inst|current_state.PreHEAT~q\ & (\inst|preheat_set\(5))) # (!\inst|current_state.PreHEAT~q\ & ((\inst|cook_time_set\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|current_state.PreHEAT~q\,
	datac => \inst|preheat_set\(5),
	datad => \inst|cook_time_set\(5),
	combout => \inst11|counter~29_combout\);

-- Location: FF_X84_Y65_N27
\inst11|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst11|counter[5]~21_combout\,
	asdata => \inst11|counter~29_combout\,
	sload => \inst11|ALT_INV_start~q\,
	ena => \inst11|counter[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|counter\(5));

-- Location: LCCOMB_X84_Y65_N28
\inst11|counter[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter[6]~23_combout\ = (\inst11|counter\(6) & ((GND) # (!\inst11|counter[5]~22\))) # (!\inst11|counter\(6) & (\inst11|counter[5]~22\ $ (GND)))
-- \inst11|counter[6]~24\ = CARRY((\inst11|counter\(6)) # (!\inst11|counter[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|counter\(6),
	datad => VCC,
	cin => \inst11|counter[5]~22\,
	combout => \inst11|counter[6]~23_combout\,
	cout => \inst11|counter[6]~24\);

-- Location: LCCOMB_X84_Y68_N8
\inst|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux24~0_combout\ = (\SW4~input_o\ & (!\SW5~input_o\ & (!\SW6~input_o\ & \inst9|timepreheat\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW4~input_o\,
	datab => \SW5~input_o\,
	datac => \SW6~input_o\,
	datad => \inst9|timepreheat\(6),
	combout => \inst|Mux24~0_combout\);

-- Location: LCCOMB_X84_Y68_N4
\inst|preheat_set[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|preheat_set\(6) = (GLOBAL(\inst|preheat_set[7]~0clkctrl_outclk\) & ((\inst|Mux24~0_combout\))) # (!GLOBAL(\inst|preheat_set[7]~0clkctrl_outclk\) & (\inst|preheat_set\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|preheat_set\(6),
	datac => \inst|Mux24~0_combout\,
	datad => \inst|preheat_set[7]~0clkctrl_outclk\,
	combout => \inst|preheat_set\(6));

-- Location: LCCOMB_X87_Y67_N24
\inst|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux10~0_combout\ = (!\SW5~input_o\ & (\SW4~input_o\ & (\inst9|timecook\(6) & !\SW6~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW5~input_o\,
	datab => \SW4~input_o\,
	datac => \inst9|timecook\(6),
	datad => \SW6~input_o\,
	combout => \inst|Mux10~0_combout\);

-- Location: LCCOMB_X87_Y67_N30
\inst|cook_time_set[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cook_time_set\(6) = (GLOBAL(\inst|heating~0clkctrl_outclk\) & ((\inst|Mux10~0_combout\))) # (!GLOBAL(\inst|heating~0clkctrl_outclk\) & (\inst|cook_time_set\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cook_time_set\(6),
	datac => \inst|Mux10~0_combout\,
	datad => \inst|heating~0clkctrl_outclk\,
	combout => \inst|cook_time_set\(6));

-- Location: LCCOMB_X84_Y65_N6
\inst11|counter~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter~28_combout\ = (\inst|current_state.PreHEAT~q\ & (\inst|preheat_set\(6))) # (!\inst|current_state.PreHEAT~q\ & ((\inst|cook_time_set\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|preheat_set\(6),
	datac => \inst|current_state.PreHEAT~q\,
	datad => \inst|cook_time_set\(6),
	combout => \inst11|counter~28_combout\);

-- Location: FF_X84_Y65_N29
\inst11|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst11|counter[6]~23_combout\,
	asdata => \inst11|counter~28_combout\,
	sload => \inst11|ALT_INV_start~q\,
	ena => \inst11|counter[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|counter\(6));

-- Location: LCCOMB_X84_Y65_N30
\inst11|counter[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter[7]~25_combout\ = \inst11|counter\(7) $ (!\inst11|counter[6]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|counter\(7),
	cin => \inst11|counter[6]~24\,
	combout => \inst11|counter[7]~25_combout\);

-- Location: LCCOMB_X83_Y68_N4
\inst|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux25~0_combout\ = (\inst9|timepreheat\(7) & (\SW4~input_o\ & (!\SW5~input_o\ & !\SW6~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|timepreheat\(7),
	datab => \SW4~input_o\,
	datac => \SW5~input_o\,
	datad => \SW6~input_o\,
	combout => \inst|Mux25~0_combout\);

-- Location: LCCOMB_X83_Y68_N8
\inst|preheat_set[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|preheat_set\(7) = (GLOBAL(\inst|preheat_set[7]~0clkctrl_outclk\) & (\inst|Mux25~0_combout\)) # (!GLOBAL(\inst|preheat_set[7]~0clkctrl_outclk\) & ((\inst|preheat_set\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux25~0_combout\,
	datac => \inst|preheat_set\(7),
	datad => \inst|preheat_set[7]~0clkctrl_outclk\,
	combout => \inst|preheat_set\(7));

-- Location: LCCOMB_X87_Y67_N26
\inst|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux9~0_combout\ = (!\SW5~input_o\ & (!\SW6~input_o\ & (\inst9|timecook\(7) & \SW4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW5~input_o\,
	datab => \SW6~input_o\,
	datac => \inst9|timecook\(7),
	datad => \SW4~input_o\,
	combout => \inst|Mux9~0_combout\);

-- Location: LCCOMB_X87_Y67_N12
\inst|cook_time_set[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cook_time_set\(7) = (GLOBAL(\inst|heating~0clkctrl_outclk\) & ((\inst|Mux9~0_combout\))) # (!GLOBAL(\inst|heating~0clkctrl_outclk\) & (\inst|cook_time_set\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cook_time_set\(7),
	datac => \inst|Mux9~0_combout\,
	datad => \inst|heating~0clkctrl_outclk\,
	combout => \inst|cook_time_set\(7));

-- Location: LCCOMB_X84_Y65_N12
\inst11|counter~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter~27_combout\ = (\inst|current_state.PreHEAT~q\ & (\inst|preheat_set\(7))) # (!\inst|current_state.PreHEAT~q\ & ((\inst|cook_time_set\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|preheat_set\(7),
	datab => \inst|current_state.PreHEAT~q\,
	datad => \inst|cook_time_set\(7),
	combout => \inst11|counter~27_combout\);

-- Location: FF_X84_Y65_N31
\inst11|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst11|counter[7]~25_combout\,
	asdata => \inst11|counter~27_combout\,
	sload => \inst11|ALT_INV_start~q\,
	ena => \inst11|counter[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|counter\(7));

-- Location: LCCOMB_X85_Y65_N6
\inst11|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~0_combout\ = (\inst11|counter\(5)) # ((\inst11|counter\(6)) # ((\inst11|counter\(4)) # (\inst11|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|counter\(5),
	datab => \inst11|counter\(6),
	datac => \inst11|counter\(4),
	datad => \inst11|counter\(7),
	combout => \inst11|Equal0~0_combout\);

-- Location: LCCOMB_X85_Y65_N8
\inst11|start~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|start~1_combout\ = (\inst11|start~q\ & ((\inst11|Equal0~0_combout\) # ((\inst11|Equal0~1_combout\) # (\inst11|start~0_combout\)))) # (!\inst11|start~q\ & (((!\inst11|start~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~0_combout\,
	datab => \inst11|Equal0~1_combout\,
	datac => \inst11|start~q\,
	datad => \inst11|start~0_combout\,
	combout => \inst11|start~1_combout\);

-- Location: FF_X85_Y65_N9
\inst11|start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst11|start~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|start~q\);

-- Location: FF_X84_Y65_N17
\inst11|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst11|counter[0]~8_combout\,
	asdata => \inst11|counter~10_combout\,
	sload => \inst11|ALT_INV_start~q\,
	ena => \inst11|counter[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|counter\(0));

-- Location: LCCOMB_X85_Y65_N4
\inst11|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~1_combout\ = (\inst11|counter\(0)) # ((\inst11|counter\(3)) # ((\inst11|counter\(2)) # (\inst11|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|counter\(0),
	datab => \inst11|counter\(3),
	datac => \inst11|counter\(2),
	datad => \inst11|counter\(1),
	combout => \inst11|Equal0~1_combout\);

-- Location: LCCOMB_X85_Y65_N16
\inst11|preheat_zero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|preheat_zero~0_combout\ = ((!\inst11|Equal0~1_combout\ & !\inst11|Equal0~0_combout\)) # (!\inst11|start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Equal0~1_combout\,
	datac => \inst11|start~q\,
	datad => \inst11|Equal0~0_combout\,
	combout => \inst11|preheat_zero~0_combout\);

-- Location: LCCOMB_X85_Y65_N28
\inst11|preheat_zero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|preheat_zero~1_combout\ = (\inst|current_state.PreHEAT~q\ & ((\inst11|preheat_zero~0_combout\ & ((\inst11|start~q\))) # (!\inst11|preheat_zero~0_combout\ & (\inst11|preheat_zero~q\)))) # (!\inst|current_state.PreHEAT~q\ & 
-- (((\inst11|preheat_zero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state.PreHEAT~q\,
	datab => \inst11|preheat_zero~0_combout\,
	datac => \inst11|preheat_zero~q\,
	datad => \inst11|start~q\,
	combout => \inst11|preheat_zero~1_combout\);

-- Location: FF_X85_Y65_N29
\inst11|preheat_zero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst11|preheat_zero~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|preheat_zero~q\);

-- Location: LCCOMB_X85_Y65_N30
\inst|current_state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|current_state~27_combout\ = (\inst|current_state.COOK~q\ & (((\inst|current_state.PreHEAT~q\) # (!\inst11|cook_zero~q\)) # (!\inst|current_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state.IDLE~q\,
	datab => \inst|current_state.PreHEAT~q\,
	datac => \inst11|cook_zero~q\,
	datad => \inst|current_state.COOK~q\,
	combout => \inst|current_state~27_combout\);

-- Location: LCCOMB_X85_Y65_N18
\inst|current_state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|current_state~31_combout\ = (\inst|current_state~27_combout\) # ((\inst11|preheat_zero~q\ & \inst|current_state.PreHEAT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|preheat_zero~q\,
	datac => \inst|current_state~27_combout\,
	datad => \inst|current_state.PreHEAT~q\,
	combout => \inst|current_state~31_combout\);

-- Location: LCCOMB_X85_Y69_N18
\inst|current_state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|current_state~19_combout\ = (!\inst|current_state.IDLE~q\ & (\inst10|s_heatDone~q\ & (!\inst|current_state.PreHEAT~q\ & \SW1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state.IDLE~q\,
	datab => \inst10|s_heatDone~q\,
	datac => \inst|current_state.PreHEAT~q\,
	datad => \SW1~input_o\,
	combout => \inst|current_state~19_combout\);

-- Location: LCCOMB_X85_Y65_N0
\inst|current_state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|current_state~26_combout\ = (\inst|current_state~19_combout\ & ((\SW6~input_o\ & ((\SW5~input_o\))) # (!\SW6~input_o\ & (!\SW4~input_o\ & !\SW5~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW4~input_o\,
	datab => \SW6~input_o\,
	datac => \inst|current_state~19_combout\,
	datad => \SW5~input_o\,
	combout => \inst|current_state~26_combout\);

-- Location: LCCOMB_X85_Y65_N10
\inst|current_state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|current_state~28_combout\ = (!\inst|current_state~30_combout\ & (\SW0~input_o\ & ((\inst|current_state~31_combout\) # (\inst|current_state~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state~31_combout\,
	datab => \inst|current_state~30_combout\,
	datac => \inst|current_state~26_combout\,
	datad => \SW0~input_o\,
	combout => \inst|current_state~28_combout\);

-- Location: FF_X85_Y65_N11
\inst|current_state.COOK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst|current_state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|current_state.COOK~q\);

-- Location: LCCOMB_X85_Y65_N12
\inst|cooking~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cooking~0_combout\ = (\inst|openOven_last~q\ & (!\SW2~input_o\ & \inst|current_state.COOK~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|openOven_last~q\,
	datac => \SW2~input_o\,
	datad => \inst|current_state.COOK~q\,
	combout => \inst|cooking~0_combout\);

-- Location: LCCOMB_X85_Y65_N26
\inst11|cook_zero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|cook_zero~0_combout\ = (\inst|cooking~0_combout\ & ((\inst11|preheat_zero~0_combout\ & ((\inst11|start~q\))) # (!\inst11|preheat_zero~0_combout\ & (\inst11|cook_zero~q\)))) # (!\inst|cooking~0_combout\ & (((\inst11|cook_zero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cooking~0_combout\,
	datab => \inst11|preheat_zero~0_combout\,
	datac => \inst11|cook_zero~q\,
	datad => \inst11|start~q\,
	combout => \inst11|cook_zero~0_combout\);

-- Location: FF_X85_Y65_N27
\inst11|cook_zero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst11|cook_zero~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|cook_zero~q\);

-- Location: LCCOMB_X85_Y69_N12
\inst|current_state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|current_state~18_combout\ = (\inst11|cook_zero~q\ & \inst|current_state.COOK~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|cook_zero~q\,
	datac => \inst|current_state.COOK~q\,
	combout => \inst|current_state~18_combout\);

-- Location: LCCOMB_X86_Y69_N6
\inst|current_state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|current_state~20_combout\ = (\inst10|s_coolDone~q\ & \inst|current_state.COOL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|s_coolDone~q\,
	datad => \inst|current_state.COOL~q\,
	combout => \inst|current_state~20_combout\);

-- Location: LCCOMB_X85_Y65_N20
\inst|food_in~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|food_in~0_combout\ = (\inst|current_state.PreHEAT~q\ & \inst11|preheat_zero~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|current_state.PreHEAT~q\,
	datad => \inst11|preheat_zero~q\,
	combout => \inst|food_in~0_combout\);

-- Location: LCCOMB_X85_Y69_N26
\inst|current_state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|current_state~21_combout\ = (\inst|current_state.FINISH~q\ & ((\SW2~input_o\) # ((\inst|current_state.COOK~q\ & \inst11|cook_zero~q\)))) # (!\inst|current_state.FINISH~q\ & (((\inst|current_state.COOK~q\ & \inst11|cook_zero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state.FINISH~q\,
	datab => \SW2~input_o\,
	datac => \inst|current_state.COOK~q\,
	datad => \inst11|cook_zero~q\,
	combout => \inst|current_state~21_combout\);

-- Location: LCCOMB_X85_Y69_N20
\inst|current_state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|current_state~22_combout\ = (\inst|current_state~20_combout\) # ((\inst|food_in~0_combout\) # ((\inst|current_state~21_combout\) # (\inst|current_state~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state~20_combout\,
	datab => \inst|food_in~0_combout\,
	datac => \inst|current_state~21_combout\,
	datad => \inst|current_state~19_combout\,
	combout => \inst|current_state~22_combout\);

-- Location: LCCOMB_X85_Y69_N30
\inst|current_state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|current_state~23_combout\ = (\SW0~input_o\ & ((\inst|current_state~18_combout\) # ((\inst|current_state.FINISH~q\ & !\inst|current_state~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state~18_combout\,
	datab => \SW0~input_o\,
	datac => \inst|current_state.FINISH~q\,
	datad => \inst|current_state~22_combout\,
	combout => \inst|current_state~23_combout\);

-- Location: FF_X85_Y69_N31
\inst|current_state.FINISH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst|current_state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|current_state.FINISH~q\);

-- Location: LCCOMB_X85_Y69_N2
\inst|current_state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|current_state~24_combout\ = (\inst|current_state.FINISH~q\ & \SW2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state.FINISH~q\,
	datac => \SW2~input_o\,
	combout => \inst|current_state~24_combout\);

-- Location: LCCOMB_X85_Y69_N24
\inst|current_state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|current_state~25_combout\ = (\SW0~input_o\ & ((\inst|current_state~24_combout\) # ((\inst|current_state.COOL~q\ & !\inst|current_state~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst|current_state~24_combout\,
	datac => \inst|current_state.COOL~q\,
	datad => \inst|current_state~22_combout\,
	combout => \inst|current_state~25_combout\);

-- Location: FF_X85_Y69_N25
\inst|current_state.COOL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst|current_state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|current_state.COOL~q\);

-- Location: LCCOMB_X86_Y68_N2
\inst10|s_counter[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|s_counter[0]~4_combout\ = (\inst|current_state.COOL~q\ & ((\inst10|s_coolStart~q\ & ((\inst10|s_counter\(0)))) # (!\inst10|s_coolStart~q\ & (\inst|temp_set\(0))))) # (!\inst|current_state.COOL~q\ & (((\inst10|s_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state.COOL~q\,
	datab => \inst|temp_set\(0),
	datac => \inst10|s_counter\(0),
	datad => \inst10|s_coolStart~q\,
	combout => \inst10|s_counter[0]~4_combout\);

-- Location: FF_X86_Y68_N3
\inst10|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clkOut~clkctrl_outclk\,
	d => \inst10|s_counter[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|s_counter\(0));

-- Location: LCCOMB_X89_Y69_N16
\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst10|s_counter\(5) $ (VCC)
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst10|s_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_counter\(5),
	datad => VCC,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X89_Y69_N18
\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst10|s_counter\(6) & (\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst10|s_counter\(6) & 
-- (!\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst10|s_counter\(6) & !\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(6),
	datad => VCC,
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X89_Y69_N20
\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst10|s_counter\(7) & (\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst10|s_counter\(7) & 
-- (!\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst10|s_counter\(7) & !\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(7),
	datad => VCC,
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X89_Y69_N22
\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X89_Y69_N26
\inst10|Mod0|auto_generated|divider|divider|StageOut[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ = (\inst10|s_counter\(7) & \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(7),
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X89_Y69_N28
\inst10|Mod0|auto_generated|divider|divider|StageOut[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ = (!\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X89_Y69_N12
\inst10|Mod0|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\ = (!\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X89_Y69_N14
\inst10|Mod0|auto_generated|divider|divider|StageOut[26]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\ = (\inst10|s_counter\(6) & \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(6),
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X89_Y69_N30
\inst10|Mod0|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst10|s_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst10|s_counter\(5),
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X89_Y69_N24
\inst10|Mod0|auto_generated|divider|divider|StageOut[25]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ = (!\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X90_Y69_N6
\inst10|Mod0|auto_generated|divider|divider|StageOut[24]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\ = (\inst10|s_counter\(4) & !\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_counter\(4),
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X90_Y69_N0
\inst10|Mod0|auto_generated|divider|divider|StageOut[24]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\ = (\inst10|s_counter\(4) & \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_counter\(4),
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X89_Y69_N0
\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst10|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\) # (\inst10|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\)))
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst10|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\) # (\inst10|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datad => VCC,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X89_Y69_N2
\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst10|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\)))) # (!\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst10|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- (!\inst10|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\)))
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst10|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ & (!\inst10|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ & 
-- !\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datad => VCC,
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X89_Y69_N4
\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst10|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\)))) # (!\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst10|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\)))))
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst10|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datad => VCC,
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X89_Y69_N6
\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\inst10|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\)))) # (!\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\inst10|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- (!\inst10|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\)))
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\inst10|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ & (!\inst10|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- !\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datad => VCC,
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X89_Y69_N8
\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X90_Y69_N16
\inst10|Mod0|auto_generated|divider|divider|StageOut[36]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\inst10|s_counter\(7))) # (!\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst10|s_counter\(7),
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\);

-- Location: LCCOMB_X90_Y69_N4
\inst10|Mod0|auto_generated|divider|divider|StageOut[36]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X90_Y69_N26
\inst10|Mod0|auto_generated|divider|divider|StageOut[35]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X90_Y69_N18
\inst10|Mod0|auto_generated|divider|divider|StageOut[35]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\inst10|s_counter\(6))) # (!\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst10|s_counter\(6),
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\);

-- Location: LCCOMB_X91_Y69_N0
\inst10|Mod0|auto_generated|divider|divider|StageOut[34]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\ = (!\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X90_Y69_N24
\inst10|Mod0|auto_generated|divider|divider|StageOut[34]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\inst10|s_counter\(5))) # (!\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst10|s_counter\(5),
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\);

-- Location: LCCOMB_X90_Y69_N12
\inst10|Mod0|auto_generated|divider|divider|StageOut[33]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ = (\inst10|s_counter\(4) & \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_counter\(4),
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X90_Y69_N22
\inst10|Mod0|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X91_Y69_N22
\inst10|Mod0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\inst10|s_counter\(3) & \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|s_counter\(3),
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X91_Y69_N20
\inst10|Mod0|auto_generated|divider|divider|StageOut[32]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\ = (\inst10|s_counter\(3) & !\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|s_counter\(3),
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X91_Y69_N4
\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst10|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # (\inst10|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\)))
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst10|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # (\inst10|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datad => VCC,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X91_Y69_N6
\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst10|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\)))) # (!\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst10|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- (!\inst10|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\)))
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst10|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ & (!\inst10|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- !\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datad => VCC,
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X91_Y69_N8
\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst10|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\)))) # (!\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst10|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\)))))
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst10|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datad => VCC,
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X91_Y69_N10
\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\inst10|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\)))) # (!\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\inst10|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- (!\inst10|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\)))
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\inst10|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ & (!\inst10|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ & 
-- !\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datad => VCC,
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X91_Y69_N12
\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\inst10|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\))))) # (!\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\inst10|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((\inst10|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\) # (GND))))
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\inst10|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # ((\inst10|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- (!\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datad => VCC,
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X91_Y69_N14
\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X91_Y69_N16
\inst10|Mod0|auto_generated|divider|divider|StageOut[41]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ = (\inst10|s_counter\(3) & \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(3),
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X91_Y69_N26
\inst10|Mod0|auto_generated|divider|divider|StageOut[41]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ = (!\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X90_Y68_N26
\inst10|Mod0|auto_generated|divider|divider|StageOut[40]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\ = (\inst10|s_counter\(2) & \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|s_counter\(2),
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X90_Y68_N0
\inst10|Mod0|auto_generated|divider|divider|StageOut[40]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\ = (\inst10|s_counter\(2) & !\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|s_counter\(2),
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X90_Y68_N12
\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst10|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\) # (\inst10|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\)))
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst10|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\) # (\inst10|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datad => VCC,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X90_Y68_N14
\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst10|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\)))) # (!\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst10|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- (!\inst10|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\)))
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst10|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ & (!\inst10|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- !\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datad => VCC,
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X90_Y69_N20
\inst10|Mod0|auto_generated|divider|divider|StageOut[45]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst10|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((!\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\);

-- Location: LCCOMB_X90_Y68_N8
\inst10|Mod0|auto_generated|divider|divider|StageOut[45]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X90_Y69_N14
\inst10|Mod0|auto_generated|divider|divider|StageOut[44]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst10|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\) # 
-- ((!\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\);

-- Location: LCCOMB_X90_Y69_N28
\inst10|Mod0|auto_generated|divider|divider|StageOut[44]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\ = (!\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X91_Y69_N24
\inst10|Mod0|auto_generated|divider|divider|StageOut[43]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst10|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- ((!\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\);

-- Location: LCCOMB_X91_Y69_N18
\inst10|Mod0|auto_generated|divider|divider|StageOut[43]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ = (!\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X90_Y69_N30
\inst10|Mod0|auto_generated|divider|divider|StageOut[42]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\inst10|s_counter\(4)))) # (!\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \inst10|s_counter\(4),
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\);

-- Location: LCCOMB_X90_Y69_N2
\inst10|Mod0|auto_generated|divider|divider|StageOut[42]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\ = (!\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X90_Y68_N16
\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst10|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\)))) # (!\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst10|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\)))))
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst10|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datad => VCC,
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X90_Y68_N18
\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\inst10|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\)))) # (!\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\inst10|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ & 
-- (!\inst10|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\)))
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\inst10|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ & (!\inst10|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- !\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datad => VCC,
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X90_Y68_N20
\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\inst10|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\))))) # (!\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\inst10|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((\inst10|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # (GND))))
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\inst10|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # ((\inst10|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- (!\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datad => VCC,
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X90_Y68_N22
\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\inst10|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\)))) # (!\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\inst10|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- (!\inst10|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\)))
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\inst10|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ & (!\inst10|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ & 
-- !\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datad => VCC,
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X90_Y68_N24
\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X90_Y68_N2
\inst10|Mod0|auto_generated|divider|divider|StageOut[50]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\);

-- Location: LCCOMB_X91_Y69_N28
\inst10|Mod0|auto_generated|divider|divider|StageOut[50]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\inst10|s_counter\(3))) # (!\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(3),
	datab => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X90_Y68_N10
\inst10|Mod0|auto_generated|divider|divider|StageOut[54]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst10|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\) # 
-- ((!\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\);

-- Location: LCCOMB_X91_Y68_N28
\inst10|Mod0|auto_generated|divider|divider|StageOut[54]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\);

-- Location: LCCOMB_X90_Y69_N8
\inst10|Mod0|auto_generated|divider|divider|StageOut[53]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst10|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((!\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\);

-- Location: LCCOMB_X90_Y68_N6
\inst10|Mod0|auto_generated|divider|divider|StageOut[53]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\);

-- Location: LCCOMB_X91_Y69_N30
\inst10|Mod0|auto_generated|divider|divider|StageOut[52]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst10|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\) # 
-- ((\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\);

-- Location: LCCOMB_X90_Y68_N4
\inst10|Mod0|auto_generated|divider|divider|StageOut[52]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\);

-- Location: LCCOMB_X90_Y69_N10
\inst10|Mod0|auto_generated|divider|divider|StageOut[51]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst10|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- ((!\inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\);

-- Location: LCCOMB_X90_Y68_N30
\inst10|Mod0|auto_generated|divider|divider|StageOut[51]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\);

-- Location: LCCOMB_X92_Y68_N4
\inst10|Mod0|auto_generated|divider|divider|StageOut[49]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ = (\inst10|s_counter\(2) & \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|s_counter\(2),
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\);

-- Location: LCCOMB_X90_Y68_N28
\inst10|Mod0|auto_generated|divider|divider|StageOut[49]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\);

-- Location: LCCOMB_X91_Y68_N26
\inst10|Mod0|auto_generated|divider|divider|StageOut[48]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\ = (!\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst10|s_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst10|s_counter\(1),
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\);

-- Location: LCCOMB_X91_Y68_N4
\inst10|Mod0|auto_generated|divider|divider|StageOut[48]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst10|s_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst10|s_counter\(1),
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\);

-- Location: LCCOMB_X91_Y68_N8
\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\inst10|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\) # (\inst10|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\)))
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\inst10|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\) # (\inst10|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\,
	datad => VCC,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X91_Y68_N10
\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\inst10|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\)))) # (!\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\inst10|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ & 
-- (!\inst10|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\)))
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\inst10|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ & (!\inst10|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ & 
-- !\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datad => VCC,
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X91_Y68_N12
\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\inst10|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # (!\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\inst10|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\)))))
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\inst10|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datad => VCC,
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X91_Y68_N14
\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst10|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\ & (!\inst10|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\ & 
-- !\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\,
	datad => VCC,
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X91_Y68_N16
\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\inst10|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\) # ((\inst10|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\) # 
-- (!\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\,
	datad => VCC,
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X91_Y68_N18
\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\inst10|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\ & (!\inst10|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\ & 
-- !\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\,
	datad => VCC,
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X91_Y68_N20
\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\inst10|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\) # ((\inst10|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\) # 
-- (!\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\,
	datad => VCC,
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X91_Y68_N22
\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X91_Y68_N30
\inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst10|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\) # 
-- ((\inst10|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # (!\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\);

-- Location: LCCOMB_X91_Y68_N6
\inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst10|s_counter\(1)))) # 
-- (!\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \inst10|s_counter\(1),
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\);

-- Location: LCCOMB_X91_Y68_N24
\inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ = (\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\inst10|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\) # 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\)))) # (!\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\,
	combout => \inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\);

-- Location: LCCOMB_X92_Y68_N14
\inst2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst10|s_counter\(0) & ((\inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\) # (\inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ $ 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\)))) # (!\inst10|s_counter\(0) & ((\inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\) # (\inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ $ 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(0),
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X92_Y68_N28
\inst2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\inst10|s_counter\(0) & (\inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ $ (((\inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\) # 
-- (!\inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\))))) # (!\inst10|s_counter\(0) & (!\inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & (\inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- !\inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(0),
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X92_Y68_N26
\inst2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & (\inst10|s_counter\(0) & (!\inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\))) # 
-- (!\inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & ((!\inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\))) # 
-- (!\inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\inst10|s_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(0),
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X92_Y68_N8
\inst2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\inst10|s_counter\(0) & ((\inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\))) # (!\inst10|s_counter\(0) & 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & !\inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\)))) # (!\inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- (!\inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & (\inst10|s_counter\(0) $ (\inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(0),
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X91_Y68_N0
\inst2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & ((\inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\) # 
-- (!\inst10|s_counter\(0))))) # (!\inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (!\inst10|s_counter\(0) & (!\inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- \inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(0),
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X92_Y68_N18
\inst2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & ((\inst10|s_counter\(0) & (\inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\)) # (!\inst10|s_counter\(0) & 
-- ((\inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\))))) # (!\inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & (\inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\inst10|s_counter\(0) $ 
-- (\inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(0),
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X91_Y68_N2
\inst2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (!\inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & (\inst10|s_counter\(0) $ 
-- (!\inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\)))) # (!\inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\inst10|s_counter\(0) & (\inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ $ 
-- (!\inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(0),
	datab => \inst10|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \inst10|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datad => \inst10|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	combout => \inst2|Mux6~0_combout\);

-- Location: LCCOMB_X91_Y65_N12
\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst10|s_counter\(5) $ (VCC)
-- \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst10|s_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_counter\(5),
	datad => VCC,
	combout => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X91_Y65_N14
\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst10|s_counter\(6) & (\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst10|s_counter\(6) & 
-- (!\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst10|s_counter\(6) & !\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_counter\(6),
	datad => VCC,
	cin => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X91_Y65_N16
\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst10|s_counter\(7) & (\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst10|s_counter\(7) & 
-- (!\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst10|s_counter\(7) & !\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_counter\(7),
	datad => VCC,
	cin => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X91_Y65_N18
\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X91_Y65_N22
\inst10|Div0|auto_generated|divider|divider|StageOut[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst10|s_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst10|s_counter\(7),
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X91_Y65_N24
\inst10|Div0|auto_generated|divider|divider|StageOut[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ = (\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X92_Y65_N4
\inst10|Div0|auto_generated|divider|divider|StageOut[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ = (!\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X91_Y65_N30
\inst10|Div0|auto_generated|divider|divider|StageOut[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst10|s_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst10|s_counter\(6),
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X91_Y65_N10
\inst10|Div0|auto_generated|divider|divider|StageOut[16]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X91_Y65_N28
\inst10|Div0|auto_generated|divider|divider|StageOut[16]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst10|s_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst10|s_counter\(5),
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X92_Y65_N2
\inst10|Div0|auto_generated|divider|divider|StageOut[15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\inst10|s_counter\(4) & \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|s_counter\(4),
	datad => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X92_Y65_N16
\inst10|Div0|auto_generated|divider|divider|StageOut[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ = (\inst10|s_counter\(4) & !\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|s_counter\(4),
	datad => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X91_Y65_N0
\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst10|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\inst10|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\)))
-- \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst10|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\inst10|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datab => \inst10|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datad => VCC,
	combout => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X91_Y65_N2
\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst10|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\) # 
-- (\inst10|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\)))) # (!\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst10|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- (!\inst10|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\)))
-- \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst10|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ & (!\inst10|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- !\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datab => \inst10|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datad => VCC,
	cin => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X91_Y65_N4
\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst10|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\inst10|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\)))) # (!\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst10|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\inst10|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\)))))
-- \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst10|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\inst10|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datab => \inst10|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datad => VCC,
	cin => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X91_Y65_N6
\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst10|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ & (!\inst10|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ & 
-- !\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datab => \inst10|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datad => VCC,
	cin => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X91_Y65_N8
\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X91_Y65_N20
\inst10|Div0|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\inst10|s_counter\(6)))) # (!\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst10|s_counter\(6),
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X91_Y66_N28
\inst10|Div0|auto_generated|divider|divider|StageOut[23]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ = (!\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X91_Y66_N6
\inst10|Div0|auto_generated|divider|divider|StageOut[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ = (!\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X91_Y65_N26
\inst10|Div0|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\inst10|s_counter\(5)))) # (!\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst10|s_counter\(5),
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X91_Y66_N12
\inst10|Div0|auto_generated|divider|divider|StageOut[21]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\inst10|s_counter\(4) & \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_counter\(4),
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X91_Y66_N2
\inst10|Div0|auto_generated|divider|divider|StageOut[21]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ = (!\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X92_Y66_N2
\inst10|Div0|auto_generated|divider|divider|StageOut[20]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ = (!\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst10|s_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst10|s_counter\(3),
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X92_Y66_N0
\inst10|Div0|auto_generated|divider|divider|StageOut[20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst10|s_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst10|s_counter\(3),
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X91_Y66_N18
\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst10|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\inst10|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\)))
-- \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst10|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\inst10|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datab => \inst10|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datad => VCC,
	combout => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X91_Y66_N20
\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst10|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\) # 
-- (\inst10|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\)))) # (!\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst10|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- (!\inst10|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\)))
-- \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst10|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ & (!\inst10|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- !\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datab => \inst10|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datad => VCC,
	cin => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X91_Y66_N22
\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst10|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\inst10|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # (!\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst10|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\inst10|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst10|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\inst10|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datab => \inst10|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X91_Y66_N24
\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst10|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ & (!\inst10|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ & 
-- !\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datab => \inst10|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datad => VCC,
	cin => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X91_Y66_N26
\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X92_Y65_N18
\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (GND)
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(!\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => VCC,
	combout => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X92_Y65_N20
\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)) # 
-- (!\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC))
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X92_Y65_N22
\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC)) # 
-- (!\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND)))
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => VCC,
	cin => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X92_Y65_N24
\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = !\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY(!\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X92_Y65_N26
\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ $ (GND)
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY(!\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X92_Y65_N28
\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY(!\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X92_Y65_N30
\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X92_Y65_N0
\inst10|Mod1|auto_generated|divider|divider|StageOut[49]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|StageOut[49]~8_combout\ = (!\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \inst10|Mod1|auto_generated|divider|divider|StageOut[49]~8_combout\);

-- Location: LCCOMB_X94_Y64_N16
\inst10|Mod1|auto_generated|divider|divider|StageOut[49]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|StageOut[49]~7_combout\ = (!\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst10|Mod1|auto_generated|divider|divider|StageOut[49]~7_combout\);

-- Location: LCCOMB_X92_Y65_N14
\inst10|Mod1|auto_generated|divider|divider|StageOut[54]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|StageOut[54]~0_combout\ = (!\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \inst10|Mod1|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X92_Y65_N8
\inst10|Mod1|auto_generated|divider|divider|StageOut[53]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|StageOut[53]~1_combout\ = (\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst10|Mod1|auto_generated|divider|divider|StageOut[53]~1_combout\);

-- Location: LCCOMB_X92_Y65_N6
\inst10|Mod1|auto_generated|divider|divider|StageOut[52]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|StageOut[52]~2_combout\ = (!\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \inst10|Mod1|auto_generated|divider|divider|StageOut[52]~2_combout\);

-- Location: LCCOMB_X92_Y65_N12
\inst10|Mod1|auto_generated|divider|divider|StageOut[51]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|StageOut[51]~3_combout\ = (\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & !\inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst10|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst10|Mod1|auto_generated|divider|divider|StageOut[51]~3_combout\);

-- Location: LCCOMB_X92_Y65_N10
\inst10|Mod1|auto_generated|divider|divider|StageOut[51]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|StageOut[51]~4_combout\ = (\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst10|Mod1|auto_generated|divider|divider|StageOut[51]~4_combout\);

-- Location: LCCOMB_X94_Y65_N16
\inst10|Mod1|auto_generated|divider|divider|StageOut[50]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|StageOut[50]~6_combout\ = (\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst10|Mod1|auto_generated|divider|divider|StageOut[50]~6_combout\);

-- Location: LCCOMB_X94_Y64_N30
\inst10|Mod1|auto_generated|divider|divider|StageOut[50]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|StageOut[50]~5_combout\ = (\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & !\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst10|Mod1|auto_generated|divider|divider|StageOut[50]~5_combout\);

-- Location: LCCOMB_X91_Y66_N16
\inst10|Div0|auto_generated|divider|divider|StageOut[28]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ = (\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst10|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((!\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\);

-- Location: LCCOMB_X92_Y66_N20
\inst10|Div0|auto_generated|divider|divider|StageOut[28]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ = (!\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X91_Y66_N14
\inst10|Div0|auto_generated|divider|divider|StageOut[27]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\inst10|s_counter\(4))) # (!\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst10|s_counter\(4),
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst10|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\);

-- Location: LCCOMB_X92_Y66_N14
\inst10|Div0|auto_generated|divider|divider|StageOut[27]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ = (!\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X92_Y66_N6
\inst10|Div0|auto_generated|divider|divider|StageOut[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ = (!\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X92_Y66_N4
\inst10|Div0|auto_generated|divider|divider|StageOut[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst10|s_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst10|s_counter\(3),
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X92_Y66_N12
\inst10|Div0|auto_generated|divider|divider|StageOut[25]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\inst10|s_counter\(2) & \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(2),
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X92_Y66_N18
\inst10|Div0|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ = (\inst10|s_counter\(2) & !\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(2),
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X92_Y66_N22
\inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst10|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\) # (\inst10|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\)))
-- \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst10|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\) # (\inst10|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datab => \inst10|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => VCC,
	combout => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X92_Y66_N24
\inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst10|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\) # 
-- (\inst10|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\)))) # (!\inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst10|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- (!\inst10|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\)))
-- \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst10|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ & (!\inst10|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- !\inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datab => \inst10|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datad => VCC,
	cin => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X92_Y66_N26
\inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst10|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\inst10|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\)))) # (!\inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst10|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\inst10|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\)))))
-- \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst10|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\inst10|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \inst10|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datad => VCC,
	cin => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X92_Y66_N28
\inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\inst10|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ & (!\inst10|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ & 
-- !\inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datab => \inst10|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datad => VCC,
	cin => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X92_Y66_N30
\inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X94_Y64_N22
\inst10|Mod1|auto_generated|divider|divider|StageOut[48]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|StageOut[48]~9_combout\ = (!\inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst10|Mod1|auto_generated|divider|divider|StageOut[48]~9_combout\);

-- Location: LCCOMB_X94_Y64_N24
\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ = !\inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\);

-- Location: LCCOMB_X94_Y64_N20
\inst10|Mod1|auto_generated|divider|divider|StageOut[48]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|StageOut[48]~10_combout\ = (!\inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst10|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	combout => \inst10|Mod1|auto_generated|divider|divider|StageOut[48]~10_combout\);

-- Location: LCCOMB_X94_Y64_N0
\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ = (((\inst10|Mod1|auto_generated|divider|divider|StageOut[48]~9_combout\) # (\inst10|Mod1|auto_generated|divider|divider|StageOut[48]~10_combout\)))
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ = CARRY((\inst10|Mod1|auto_generated|divider|divider|StageOut[48]~9_combout\) # (\inst10|Mod1|auto_generated|divider|divider|StageOut[48]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod1|auto_generated|divider|divider|StageOut[48]~9_combout\,
	datab => \inst10|Mod1|auto_generated|divider|divider|StageOut[48]~10_combout\,
	datad => VCC,
	combout => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	cout => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\);

-- Location: LCCOMB_X94_Y64_N2
\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ = (\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ & (((\inst10|Mod1|auto_generated|divider|divider|StageOut[49]~8_combout\) # 
-- (\inst10|Mod1|auto_generated|divider|divider|StageOut[49]~7_combout\)))) # (!\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ & (!\inst10|Mod1|auto_generated|divider|divider|StageOut[49]~8_combout\ & 
-- (!\inst10|Mod1|auto_generated|divider|divider|StageOut[49]~7_combout\)))
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ = CARRY((!\inst10|Mod1|auto_generated|divider|divider|StageOut[49]~8_combout\ & (!\inst10|Mod1|auto_generated|divider|divider|StageOut[49]~7_combout\ & 
-- !\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod1|auto_generated|divider|divider|StageOut[49]~8_combout\,
	datab => \inst10|Mod1|auto_generated|divider|divider|StageOut[49]~7_combout\,
	datad => VCC,
	cin => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\,
	combout => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	cout => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\);

-- Location: LCCOMB_X94_Y64_N4
\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ = (\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & (((\inst10|Mod1|auto_generated|divider|divider|StageOut[50]~6_combout\) # 
-- (\inst10|Mod1|auto_generated|divider|divider|StageOut[50]~5_combout\)))) # (!\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & ((((\inst10|Mod1|auto_generated|divider|divider|StageOut[50]~6_combout\) # 
-- (\inst10|Mod1|auto_generated|divider|divider|StageOut[50]~5_combout\)))))
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ = CARRY((!\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & ((\inst10|Mod1|auto_generated|divider|divider|StageOut[50]~6_combout\) # 
-- (\inst10|Mod1|auto_generated|divider|divider|StageOut[50]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod1|auto_generated|divider|divider|StageOut[50]~6_combout\,
	datab => \inst10|Mod1|auto_generated|divider|divider|StageOut[50]~5_combout\,
	datad => VCC,
	cin => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\,
	combout => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	cout => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\);

-- Location: LCCOMB_X94_Y64_N6
\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ = CARRY((!\inst10|Mod1|auto_generated|divider|divider|StageOut[51]~3_combout\ & (!\inst10|Mod1|auto_generated|divider|divider|StageOut[51]~4_combout\ & 
-- !\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod1|auto_generated|divider|divider|StageOut[51]~3_combout\,
	datab => \inst10|Mod1|auto_generated|divider|divider|StageOut[51]~4_combout\,
	datad => VCC,
	cin => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\,
	cout => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\);

-- Location: LCCOMB_X94_Y64_N8
\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ = CARRY((\inst10|Mod1|auto_generated|divider|divider|StageOut[52]~2_combout\) # (!\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Mod1|auto_generated|divider|divider|StageOut[52]~2_combout\,
	datad => VCC,
	cin => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\,
	cout => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\);

-- Location: LCCOMB_X94_Y64_N10
\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ = CARRY((!\inst10|Mod1|auto_generated|divider|divider|StageOut[53]~1_combout\ & !\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod1|auto_generated|divider|divider|StageOut[53]~1_combout\,
	datad => VCC,
	cin => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\,
	cout => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\);

-- Location: LCCOMB_X94_Y64_N12
\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ = CARRY((\inst10|Mod1|auto_generated|divider|divider|StageOut[54]~0_combout\) # (!\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod1|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datad => VCC,
	cin => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\,
	cout => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\);

-- Location: LCCOMB_X94_Y64_N14
\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = !\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\,
	combout => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

-- Location: LCCOMB_X94_Y64_N28
\inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ = (\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\inst10|Mod1|auto_generated|divider|divider|StageOut[49]~8_combout\) # 
-- ((\inst10|Mod1|auto_generated|divider|divider|StageOut[49]~7_combout\)))) # (!\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod1|auto_generated|divider|divider|StageOut[49]~8_combout\,
	datab => \inst10|Mod1|auto_generated|divider|divider|StageOut[49]~7_combout\,
	datac => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	combout => \inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\);

-- Location: LCCOMB_X92_Y66_N10
\inst10|Div0|auto_generated|divider|divider|StageOut[33]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst10|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- ((!\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst10|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\,
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X94_Y66_N24
\inst10|Div0|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ = (!\inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X94_Y66_N22
\inst10|Div0|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ = (!\inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X92_Y66_N8
\inst10|Div0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\inst10|s_counter\(3)))) # (!\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst10|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst10|s_counter\(3),
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X92_Y66_N16
\inst10|Div0|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\inst10|s_counter\(2) & \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(2),
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X94_Y66_N28
\inst10|Div0|auto_generated|divider|divider|StageOut[31]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ = (!\inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\);

-- Location: LCCOMB_X94_Y66_N26
\inst10|Div0|auto_generated|divider|divider|StageOut[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ = (\inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst10|s_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst10|s_counter\(1),
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X94_Y66_N16
\inst10|Div0|auto_generated|divider|divider|StageOut[30]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\ = (!\inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst10|s_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst10|s_counter\(1),
	combout => \inst10|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\);

-- Location: LCCOMB_X94_Y66_N0
\inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\inst10|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\) # (\inst10|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datab => \inst10|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datad => VCC,
	cout => \inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X94_Y66_N2
\inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\inst10|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ & (!\inst10|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ & 
-- !\inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datab => \inst10|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\,
	datad => VCC,
	cin => \inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X94_Y66_N4
\inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\inst10|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\) # 
-- (\inst10|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datab => \inst10|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X94_Y66_N6
\inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst10|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ & (!\inst10|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- !\inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datab => \inst10|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datad => VCC,
	cin => \inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X94_Y66_N8
\inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X94_Y66_N18
\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ = !\inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\);

-- Location: LCCOMB_X94_Y66_N30
\inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\ = (\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (!\inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # 
-- (!\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datac => \inst10|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	combout => \inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\);

-- Location: LCCOMB_X94_Y64_N18
\inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ = (\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\inst10|Mod1|auto_generated|divider|divider|StageOut[50]~5_combout\) # 
-- ((\inst10|Mod1|auto_generated|divider|divider|StageOut[50]~6_combout\)))) # (!\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod1|auto_generated|divider|divider|StageOut[50]~5_combout\,
	datab => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datac => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	datad => \inst10|Mod1|auto_generated|divider|divider|StageOut[50]~6_combout\,
	combout => \inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\);

-- Location: LCCOMB_X94_Y64_N26
\inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ = (\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\inst10|Mod1|auto_generated|divider|divider|StageOut[48]~9_combout\) # 
-- ((\inst10|Mod1|auto_generated|divider|divider|StageOut[48]~10_combout\)))) # (!\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod1|auto_generated|divider|divider|StageOut[48]~9_combout\,
	datab => \inst10|Mod1|auto_generated|divider|divider|StageOut[48]~10_combout\,
	datac => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \inst10|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	combout => \inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\);

-- Location: LCCOMB_X108_Y32_N4
\inst3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (\inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\ & ((\inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\) # (\inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ $ 
-- (\inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\)))) # (!\inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\ & ((\inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\) # 
-- (\inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ $ (\inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\,
	datac => \inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datad => \inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X108_Y32_N2
\inst3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (\inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\ & (\inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ $ 
-- (\inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\)))) # (!\inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (!\inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ & 
-- ((\inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\) # (\inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\,
	datac => \inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datad => \inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	combout => \inst3|Mux1~0_combout\);

-- Location: LCCOMB_X108_Y32_N12
\inst3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = (\inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & (((\inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\ & !\inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\)))) # 
-- (!\inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & ((\inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & ((!\inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\))) # 
-- (!\inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\,
	datac => \inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datad => \inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	combout => \inst3|Mux2~0_combout\);

-- Location: LCCOMB_X108_Y32_N6
\inst3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = (\inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & ((\inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\)) # 
-- (!\inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (!\inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\ & \inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\)))) # 
-- (!\inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & (!\inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ & (\inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ $ 
-- (\inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\,
	datac => \inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datad => \inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	combout => \inst3|Mux3~0_combout\);

-- Location: LCCOMB_X108_Y32_N24
\inst3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux4~0_combout\ = (\inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ & ((\inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\) # 
-- (!\inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\)))) # (!\inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (!\inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\ & 
-- (!\inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ & \inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\,
	datac => \inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datad => \inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	combout => \inst3|Mux4~0_combout\);

-- Location: LCCOMB_X108_Y32_N10
\inst3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux5~0_combout\ = (\inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ & ((\inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\ & ((\inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\))) # 
-- (!\inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\ & (\inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\)))) # (!\inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ & 
-- (\inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\ $ (\inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\,
	datac => \inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datad => \inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	combout => \inst3|Mux5~0_combout\);

-- Location: LCCOMB_X108_Y32_N0
\inst3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux6~0_combout\ = (\inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (!\inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & (\inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\ $ 
-- (!\inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\)))) # (!\inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\ & 
-- (\inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\ $ (!\inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \inst10|Mod1|auto_generated|divider|divider|StageOut[56]~11_combout\,
	datac => \inst10|Mod1|auto_generated|divider|divider|StageOut[59]~14_combout\,
	datad => \inst10|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	combout => \inst3|Mux6~0_combout\);

-- Location: LCCOMB_X91_Y64_N16
\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \inst10|s_counter\(3) $ (VCC)
-- \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\inst10|s_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_counter\(3),
	datad => VCC,
	combout => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X91_Y64_N18
\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\inst10|s_counter\(4) & (\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\inst10|s_counter\(4) & 
-- (!\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\inst10|s_counter\(4) & !\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(4),
	datad => VCC,
	cin => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X91_Y64_N20
\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\inst10|s_counter\(5) & ((GND) # (!\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\inst10|s_counter\(5) & 
-- (\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\inst10|s_counter\(5)) # (!\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_counter\(5),
	datad => VCC,
	cin => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X91_Y64_N22
\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\inst10|s_counter\(6) & (!\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\inst10|s_counter\(6) & 
-- ((\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\inst10|s_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(6),
	datad => VCC,
	cin => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X91_Y64_N24
\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\inst10|s_counter\(7) & (\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\inst10|s_counter\(7) & 
-- (!\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\inst10|s_counter\(7) & !\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_counter\(7),
	datad => VCC,
	cin => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X91_Y64_N26
\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X91_Y64_N2
\inst10|Div1|auto_generated|divider|divider|StageOut[54]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\ = (!\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \inst10|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X91_Y64_N28
\inst10|Div1|auto_generated|divider|divider|StageOut[54]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\inst10|s_counter\(7) & \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_counter\(7),
	datac => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst10|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X91_Y64_N8
\inst10|Div1|auto_generated|divider|divider|StageOut[53]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\inst10|s_counter\(6) & \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(6),
	datac => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst10|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X91_Y64_N6
\inst10|Div1|auto_generated|divider|divider|StageOut[53]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datac => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst10|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X91_Y64_N10
\inst10|Div1|auto_generated|divider|divider|StageOut[52]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\ = (!\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \inst10|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X91_Y64_N12
\inst10|Div1|auto_generated|divider|divider|StageOut[52]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\inst10|s_counter\(5) & \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|s_counter\(5),
	datac => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst10|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X91_Y64_N14
\inst10|Div1|auto_generated|divider|divider|StageOut[51]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\ = (!\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \inst10|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X91_Y64_N4
\inst10|Div1|auto_generated|divider|divider|StageOut[51]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\inst10|s_counter\(4) & \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(4),
	datac => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst10|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X91_Y64_N0
\inst10|Div1|auto_generated|divider|divider|StageOut[50]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst10|s_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst10|s_counter\(3),
	combout => \inst10|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X91_Y64_N30
\inst10|Div1|auto_generated|divider|divider|StageOut[50]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\ = (!\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \inst10|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X92_Y64_N26
\inst10|Div1|auto_generated|divider|divider|StageOut[49]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\ = (\inst10|s_counter\(2) & !\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(2),
	datac => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst10|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X92_Y64_N28
\inst10|Div1|auto_generated|divider|divider|StageOut[49]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\inst10|s_counter\(2) & \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|s_counter\(2),
	datac => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst10|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X92_Y64_N8
\inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\inst10|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\) # (\inst10|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datab => \inst10|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datad => VCC,
	cout => \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X92_Y64_N10
\inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\inst10|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\ & (!\inst10|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\ & 
-- !\inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datab => \inst10|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datad => VCC,
	cin => \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X92_Y64_N12
\inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\inst10|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\) # ((\inst10|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\) # 
-- (!\inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datab => \inst10|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datad => VCC,
	cin => \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X92_Y64_N14
\inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY(((!\inst10|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\ & !\inst10|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\)) # 
-- (!\inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datab => \inst10|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datad => VCC,
	cin => \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X92_Y64_N16
\inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & ((\inst10|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\) # 
-- (\inst10|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datab => \inst10|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datad => VCC,
	cin => \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X92_Y64_N18
\inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\inst10|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\ & (!\inst10|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\ & 
-- !\inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datab => \inst10|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datad => VCC,
	cin => \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X92_Y64_N20
\inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X114_Y20_N4
\inst4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (!\inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\) # (!\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y20_N30
\inst4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & !\inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y20_N8
\inst4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux4~0_combout\ = (!\inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst10|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst4|Mux4~0_combout\);

-- Location: LCCOMB_X83_Y65_N6
\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst11|counter\(5) $ (VCC)
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst11|counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|counter\(5),
	datad => VCC,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X83_Y65_N8
\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst11|counter\(6) & (\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst11|counter\(6) & 
-- (!\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst11|counter\(6) & !\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|counter\(6),
	datad => VCC,
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X83_Y65_N10
\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst11|counter\(7) & (\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst11|counter\(7) & 
-- (!\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst11|counter\(7) & !\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|counter\(7),
	datad => VCC,
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X83_Y65_N12
\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X83_Y63_N6
\inst11|Mod0|auto_generated|divider|divider|StageOut[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X83_Y63_N8
\inst11|Mod0|auto_generated|divider|divider|StageOut[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ = (\inst11|counter\(7) & \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|counter\(7),
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X83_Y65_N28
\inst11|Mod0|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X83_Y63_N24
\inst11|Mod0|auto_generated|divider|divider|StageOut[26]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\ = (\inst11|counter\(6) & \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|counter\(6),
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X83_Y63_N10
\inst11|Mod0|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\inst11|counter\(5) & \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|counter\(5),
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X83_Y65_N22
\inst11|Mod0|auto_generated|divider|divider|StageOut[25]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X83_Y63_N12
\inst11|Mod0|auto_generated|divider|divider|StageOut[24]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst11|counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst11|counter\(4),
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X83_Y63_N2
\inst11|Mod0|auto_generated|divider|divider|StageOut[24]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\ = (!\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst11|counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst11|counter\(4),
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X83_Y63_N14
\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst11|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\) # (\inst11|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\)))
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst11|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\) # (\inst11|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datad => VCC,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X83_Y63_N16
\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst11|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\)))) # (!\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- (!\inst11|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\)))
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst11|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ & 
-- !\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datad => VCC,
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X83_Y63_N18
\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst11|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\)))) # (!\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst11|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\)))))
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst11|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datad => VCC,
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X83_Y63_N20
\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\inst11|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\)))) # (!\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- (!\inst11|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\)))
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\inst11|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- !\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datad => VCC,
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X83_Y63_N22
\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X83_Y63_N4
\inst11|Mod0|auto_generated|divider|divider|StageOut[36]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\inst11|counter\(7)))) # (!\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \inst11|counter\(7),
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\);

-- Location: LCCOMB_X83_Y63_N28
\inst11|Mod0|auto_generated|divider|divider|StageOut[36]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ = (!\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X83_Y65_N20
\inst11|Mod0|auto_generated|divider|divider|StageOut[35]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\inst11|counter\(6))) # (!\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|counter\(6),
	datab => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\);

-- Location: LCCOMB_X83_Y65_N24
\inst11|Mod0|auto_generated|divider|divider|StageOut[35]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ = (!\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X83_Y65_N18
\inst11|Mod0|auto_generated|divider|divider|StageOut[34]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\inst11|counter\(5))) # (!\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst11|counter\(5),
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\);

-- Location: LCCOMB_X83_Y62_N8
\inst11|Mod0|auto_generated|divider|divider|StageOut[34]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\ = (!\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X83_Y62_N10
\inst11|Mod0|auto_generated|divider|divider|StageOut[33]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst11|counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst11|counter\(4),
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X83_Y63_N0
\inst11|Mod0|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ = (!\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X83_Y62_N12
\inst11|Mod0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst11|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst11|counter\(3),
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X83_Y62_N2
\inst11|Mod0|auto_generated|divider|divider|StageOut[32]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\ = (!\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst11|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst11|counter\(3),
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X83_Y62_N14
\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst11|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # (\inst11|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\)))
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst11|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # (\inst11|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datad => VCC,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X83_Y62_N16
\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst11|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\)))) # (!\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- (!\inst11|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\)))
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst11|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- !\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datad => VCC,
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X83_Y62_N18
\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst11|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\)))) # (!\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst11|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\)))))
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst11|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datad => VCC,
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X83_Y62_N20
\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\inst11|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\)))) # (!\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ & 
-- (!\inst11|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\)))
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\inst11|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- !\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datad => VCC,
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X83_Y62_N22
\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\inst11|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\))))) # (!\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\inst11|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((\inst11|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\) # (GND))))
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\inst11|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # ((\inst11|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- (!\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datad => VCC,
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X83_Y62_N24
\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X83_Y63_N30
\inst11|Mod0|auto_generated|divider|divider|StageOut[45]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst11|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((!\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\);

-- Location: LCCOMB_X84_Y62_N8
\inst11|Mod0|auto_generated|divider|divider|StageOut[45]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ = (!\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X83_Y65_N14
\inst11|Mod0|auto_generated|divider|divider|StageOut[44]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst11|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\) # 
-- ((\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\);

-- Location: LCCOMB_X84_Y62_N2
\inst11|Mod0|auto_generated|divider|divider|StageOut[44]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\ = (!\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X83_Y62_N0
\inst11|Mod0|auto_generated|divider|divider|StageOut[43]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ = (!\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X83_Y62_N28
\inst11|Mod0|auto_generated|divider|divider|StageOut[43]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst11|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- ((!\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\);

-- Location: LCCOMB_X83_Y63_N26
\inst11|Mod0|auto_generated|divider|divider|StageOut[42]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\inst11|counter\(4))) # (!\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst11|counter\(4),
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\);

-- Location: LCCOMB_X83_Y62_N6
\inst11|Mod0|auto_generated|divider|divider|StageOut[42]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\ = (!\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X83_Y62_N26
\inst11|Mod0|auto_generated|divider|divider|StageOut[41]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X83_Y62_N4
\inst11|Mod0|auto_generated|divider|divider|StageOut[41]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst11|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst11|counter\(3),
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X83_Y65_N26
\inst11|Mod0|auto_generated|divider|divider|StageOut[40]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst11|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst11|counter\(2),
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X83_Y65_N4
\inst11|Mod0|auto_generated|divider|divider|StageOut[40]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\ = (!\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst11|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst11|counter\(2),
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X84_Y62_N18
\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst11|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\) # (\inst11|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\)))
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst11|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\) # (\inst11|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datad => VCC,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X84_Y62_N20
\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst11|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\)))) # (!\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- (!\inst11|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\)))
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst11|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- !\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datad => VCC,
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X84_Y62_N22
\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst11|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\)))) # (!\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst11|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\)))))
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst11|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datad => VCC,
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X84_Y62_N24
\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\inst11|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\)))) # (!\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- (!\inst11|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\)))
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\inst11|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ & 
-- !\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datad => VCC,
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X84_Y62_N26
\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\inst11|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\))))) # (!\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\inst11|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((\inst11|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # (GND))))
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\inst11|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # ((\inst11|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- (!\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datad => VCC,
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X84_Y62_N28
\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\inst11|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\)))) # (!\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- (!\inst11|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\)))
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\inst11|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ & 
-- !\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datad => VCC,
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X84_Y62_N30
\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X83_Y62_N30
\inst11|Mod0|auto_generated|divider|divider|StageOut[50]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\inst11|counter\(3)))) # (!\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst11|counter\(3),
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X84_Y62_N14
\inst11|Mod0|auto_generated|divider|divider|StageOut[54]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst11|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\) # 
-- ((!\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\);

-- Location: LCCOMB_X84_Y62_N12
\inst11|Mod0|auto_generated|divider|divider|StageOut[54]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\ = (!\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\);

-- Location: LCCOMB_X84_Y62_N16
\inst11|Mod0|auto_generated|divider|divider|StageOut[53]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst11|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((!\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\);

-- Location: LCCOMB_X84_Y61_N0
\inst11|Mod0|auto_generated|divider|divider|StageOut[53]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\);

-- Location: LCCOMB_X84_Y62_N6
\inst11|Mod0|auto_generated|divider|divider|StageOut[52]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst11|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\) # 
-- ((!\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\);

-- Location: LCCOMB_X84_Y61_N2
\inst11|Mod0|auto_generated|divider|divider|StageOut[52]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\);

-- Location: LCCOMB_X84_Y62_N10
\inst11|Mod0|auto_generated|divider|divider|StageOut[51]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\);

-- Location: LCCOMB_X84_Y62_N4
\inst11|Mod0|auto_generated|divider|divider|StageOut[51]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst11|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- ((\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\);

-- Location: LCCOMB_X84_Y61_N28
\inst11|Mod0|auto_generated|divider|divider|StageOut[50]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\ = (!\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\);

-- Location: LCCOMB_X83_Y61_N16
\inst11|Mod0|auto_generated|divider|divider|StageOut[49]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst11|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst11|counter\(2),
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\);

-- Location: LCCOMB_X84_Y62_N0
\inst11|Mod0|auto_generated|divider|divider|StageOut[49]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ = (!\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\);

-- Location: LCCOMB_X84_Y61_N6
\inst11|Mod0|auto_generated|divider|divider|StageOut[48]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\ = (\inst11|counter\(1) & !\inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|counter\(1),
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\);

-- Location: LCCOMB_X84_Y61_N4
\inst11|Mod0|auto_generated|divider|divider|StageOut[48]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\ = (\inst11|counter\(1) & \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|counter\(1),
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\);

-- Location: LCCOMB_X84_Y61_N10
\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\inst11|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\) # (\inst11|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\)))
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\inst11|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\) # (\inst11|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\,
	datad => VCC,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X84_Y61_N12
\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\inst11|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\)))) # (!\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ & 
-- (!\inst11|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\)))
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\inst11|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ & 
-- !\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datad => VCC,
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X84_Y61_N14
\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\inst11|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\)))) # (!\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\inst11|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\)))))
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\inst11|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datad => VCC,
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X84_Y61_N16
\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst11|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\ & 
-- !\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\,
	datad => VCC,
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X84_Y61_N18
\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\inst11|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\) # ((\inst11|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\) # 
-- (!\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\,
	datad => VCC,
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X84_Y61_N20
\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\inst11|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\ & 
-- !\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\,
	datad => VCC,
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X84_Y61_N22
\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\inst11|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\) # ((\inst11|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\) # 
-- (!\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\,
	datad => VCC,
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X84_Y61_N24
\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X84_Y61_N30
\inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst11|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- ((\inst11|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\)))) # (!\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\);

-- Location: LCCOMB_X84_Y61_N8
\inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\inst11|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\) # 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\)))) # (!\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\,
	datad => \inst11|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\,
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\);

-- Location: LCCOMB_X84_Y61_N26
\inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ = (\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst11|counter\(1)))) # 
-- (!\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \inst11|counter\(1),
	combout => \inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\);

-- Location: LCCOMB_X86_Y22_N0
\inst6|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux0~0_combout\ = (\inst11|counter\(0) & ((\inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\) # (\inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ $ 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\)))) # (!\inst11|counter\(0) & ((\inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\) # (\inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ $ 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \inst11|counter\(0),
	combout => \inst6|Mux0~0_combout\);

-- Location: LCCOMB_X86_Y22_N30
\inst6|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux1~0_combout\ = (\inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\inst11|counter\(0) & (\inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ $ 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\)))) # (!\inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- ((\inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\) # (\inst11|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \inst11|counter\(0),
	combout => \inst6|Mux1~0_combout\);

-- Location: LCCOMB_X86_Y22_N4
\inst6|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux2~0_combout\ = (\inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & ((\inst11|counter\(0))))) # 
-- (!\inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\)) # 
-- (!\inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & ((\inst11|counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \inst11|counter\(0),
	combout => \inst6|Mux2~0_combout\);

-- Location: LCCOMB_X86_Y22_N26
\inst6|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux3~0_combout\ = (\inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & ((\inst11|counter\(0)))) # 
-- (!\inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & !\inst11|counter\(0))))) # (!\inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- (!\inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & (\inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ $ (\inst11|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \inst11|counter\(0),
	combout => \inst6|Mux3~0_combout\);

-- Location: LCCOMB_X86_Y22_N24
\inst6|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux4~0_combout\ = (\inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & (\inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & ((\inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\) # 
-- (!\inst11|counter\(0))))) # (!\inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- !\inst11|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \inst11|counter\(0),
	combout => \inst6|Mux4~0_combout\);

-- Location: LCCOMB_X86_Y22_N18
\inst6|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux5~0_combout\ = (\inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & ((\inst11|counter\(0) & ((\inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\))) # (!\inst11|counter\(0) & 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\)))) # (!\inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & (\inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ $ (\inst11|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \inst11|counter\(0),
	combout => \inst6|Mux5~0_combout\);

-- Location: LCCOMB_X86_Y22_N20
\inst6|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux6~0_combout\ = (\inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & (\inst11|counter\(0) & (\inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ $ 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\)))) # (!\inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & (!\inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- (\inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ $ (\inst11|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datab => \inst11|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datac => \inst11|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \inst11|counter\(0),
	combout => \inst6|Mux6~0_combout\);

-- Location: LCCOMB_X81_Y61_N4
\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst11|counter\(5) $ (VCC)
-- \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst11|counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|counter\(5),
	datad => VCC,
	combout => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X81_Y61_N6
\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst11|counter\(6) & (\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst11|counter\(6) & 
-- (!\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst11|counter\(6) & !\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|counter\(6),
	datad => VCC,
	cin => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X81_Y61_N8
\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst11|counter\(7) & (\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst11|counter\(7) & 
-- (!\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst11|counter\(7) & !\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|counter\(7),
	datad => VCC,
	cin => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X81_Y61_N10
\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X80_Y61_N24
\inst11|Div0|auto_generated|divider|divider|StageOut[16]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ = (!\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X81_Y61_N24
\inst11|Div0|auto_generated|divider|divider|StageOut[16]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst11|counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst11|counter\(5),
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X81_Y61_N20
\inst11|Div0|auto_generated|divider|divider|StageOut[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ = (!\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst11|counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst11|counter\(4),
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X81_Y61_N22
\inst11|Div0|auto_generated|divider|divider|StageOut[15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst11|counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst11|counter\(4),
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X80_Y61_N12
\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst11|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\) # (\inst11|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\)))
-- \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst11|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\) # (\inst11|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datad => VCC,
	combout => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X80_Y61_N14
\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst11|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\) # 
-- (\inst11|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\)))) # (!\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst11|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- (!\inst11|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\)))
-- \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst11|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ & (!\inst11|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- !\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datad => VCC,
	cin => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X80_Y61_N28
\inst11|Div0|auto_generated|divider|divider|StageOut[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X81_Y61_N12
\inst11|Div0|auto_generated|divider|divider|StageOut[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst11|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst11|counter\(7),
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X81_Y61_N2
\inst11|Div0|auto_generated|divider|divider|StageOut[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst11|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst11|counter\(6),
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X80_Y61_N2
\inst11|Div0|auto_generated|divider|divider|StageOut[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ = (!\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X80_Y61_N16
\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst11|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\inst11|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\)))) # (!\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst11|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\inst11|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\)))))
-- \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst11|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\inst11|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datad => VCC,
	cin => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X80_Y61_N18
\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst11|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ & (!\inst11|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ & 
-- !\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datad => VCC,
	cin => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X80_Y61_N20
\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X81_Y57_N12
\inst11|Div0|auto_generated|divider|divider|StageOut[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X81_Y61_N26
\inst11|Div0|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\inst11|counter\(5)))) # (!\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst11|counter\(5),
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X81_Y57_N6
\inst11|Div0|auto_generated|divider|divider|StageOut[21]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst11|counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst11|counter\(4),
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X81_Y57_N8
\inst11|Div0|auto_generated|divider|divider|StageOut[21]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X81_Y57_N10
\inst11|Div0|auto_generated|divider|divider|StageOut[20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst11|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst11|counter\(3),
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X81_Y57_N0
\inst11|Div0|auto_generated|divider|divider|StageOut[20]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ = (!\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst11|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst11|counter\(3),
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X81_Y57_N22
\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst11|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\) # (\inst11|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\)))
-- \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst11|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\) # (\inst11|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datad => VCC,
	combout => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X81_Y57_N24
\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst11|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\) # 
-- (\inst11|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\)))) # (!\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst11|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- (!\inst11|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\)))
-- \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst11|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ & (!\inst11|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- !\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datad => VCC,
	cin => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X81_Y57_N26
\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst11|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\inst11|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # (!\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst11|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\inst11|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst11|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\inst11|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X81_Y61_N18
\inst11|Div0|auto_generated|divider|divider|StageOut[23]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X81_Y61_N28
\inst11|Div0|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\inst11|counter\(6)))) # (!\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst11|counter\(6),
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X81_Y57_N28
\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst11|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ & (!\inst11|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ & 
-- !\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datad => VCC,
	cin => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X81_Y57_N30
\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X81_Y57_N2
\inst11|Div0|auto_generated|divider|divider|StageOut[28]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X81_Y57_N16
\inst11|Div0|auto_generated|divider|divider|StageOut[28]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst11|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\);

-- Location: LCCOMB_X80_Y57_N12
\inst11|Div0|auto_generated|divider|divider|StageOut[27]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ = (!\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X81_Y57_N18
\inst11|Div0|auto_generated|divider|divider|StageOut[27]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\inst11|counter\(4)))) # (!\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst11|counter\(4),
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\);

-- Location: LCCOMB_X81_Y57_N4
\inst11|Div0|auto_generated|divider|divider|StageOut[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst11|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst11|counter\(3),
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X81_Y57_N14
\inst11|Div0|auto_generated|divider|divider|StageOut[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X80_Y53_N0
\inst11|Div0|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst11|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst11|counter\(2),
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X80_Y57_N0
\inst11|Div0|auto_generated|divider|divider|StageOut[25]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\inst11|counter\(2) & \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|counter\(2),
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X80_Y57_N18
\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst11|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\inst11|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\)))
-- \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst11|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\inst11|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datad => VCC,
	combout => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X80_Y57_N20
\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst11|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\) # 
-- (\inst11|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\)))) # (!\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst11|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- (!\inst11|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\)))
-- \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst11|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ & (!\inst11|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- !\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datad => VCC,
	cin => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X80_Y57_N22
\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst11|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\inst11|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\)))) # (!\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst11|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\inst11|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\)))))
-- \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst11|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\inst11|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datad => VCC,
	cin => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X80_Y57_N24
\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\inst11|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ & (!\inst11|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ & 
-- !\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datad => VCC,
	cin => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X80_Y57_N26
\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X80_Y57_N30
\inst11|Div0|auto_generated|divider|divider|StageOut[33]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst11|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- ((!\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X80_Y57_N14
\inst11|Div0|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X81_Y57_N20
\inst11|Div0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\inst11|counter\(3)))) # (!\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst11|counter\(3),
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X80_Y57_N16
\inst11|Div0|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ = (!\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X80_Y53_N2
\inst11|Div0|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\inst11|counter\(2) & \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|counter\(2),
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X80_Y57_N28
\inst11|Div0|auto_generated|divider|divider|StageOut[31]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ = (!\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\);

-- Location: LCCOMB_X80_Y53_N10
\inst11|Div0|auto_generated|divider|divider|StageOut[30]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\ = (!\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst11|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst11|counter\(1),
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\);

-- Location: LCCOMB_X80_Y53_N12
\inst11|Div0|auto_generated|divider|divider|StageOut[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst11|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst11|counter\(1),
	combout => \inst11|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X80_Y57_N2
\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\inst11|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\) # (\inst11|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datad => VCC,
	cout => \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X80_Y57_N4
\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\inst11|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ & (!\inst11|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ & 
-- !\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\,
	datad => VCC,
	cin => \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X80_Y57_N6
\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\inst11|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- (\inst11|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datad => VCC,
	cin => \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X80_Y57_N8
\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst11|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ & (!\inst11|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- !\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datad => VCC,
	cin => \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X80_Y57_N10
\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X80_Y53_N8
\inst5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ 
-- (\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst5|Mux0~0_combout\);

-- Location: LCCOMB_X80_Y53_N26
\inst5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (!\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # (!\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # (!\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst5|Mux1~0_combout\);

-- Location: LCCOMB_X80_Y53_N20
\inst5|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux2~0_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((!\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # (!\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # 
-- (!\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst5|Mux2~0_combout\);

-- Location: LCCOMB_X80_Y53_N22
\inst5|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux3~0_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # (!\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (!\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # 
-- (!\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((!\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst5|Mux3~0_combout\);

-- Location: LCCOMB_X80_Y53_N4
\inst5|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux4~0_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # (!\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst5|Mux4~0_combout\);

-- Location: LCCOMB_X80_Y53_N30
\inst5|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # (!\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((!\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # (!\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (!\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst5|Mux5~0_combout\);

-- Location: LCCOMB_X80_Y53_N24
\inst5|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = (\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # (!\inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (\inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst11|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst11|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst11|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst5|Mux6~0_combout\);

-- Location: LCCOMB_X86_Y69_N4
\inst|state[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state\(2) = (\inst|current_state.FINISH~q\) # (\inst|current_state.COOL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|current_state.FINISH~q\,
	datad => \inst|current_state.COOL~q\,
	combout => \inst|state\(2));

-- Location: LCCOMB_X85_Y69_N4
\inst|state[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state\(1) = (\inst|current_state.PreHEAT~q\) # (\inst|current_state.COOK~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|current_state.PreHEAT~q\,
	datac => \inst|current_state.COOK~q\,
	combout => \inst|state\(1));

-- Location: LCCOMB_X85_Y69_N16
\inst|s_states~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_states~0_combout\ = (\inst|current_state.FINISH~q\) # (\inst|current_state.PreHEAT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state.FINISH~q\,
	datac => \inst|current_state.PreHEAT~q\,
	combout => \inst|s_states~0_combout\);

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


