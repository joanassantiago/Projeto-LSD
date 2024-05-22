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

-- DATE "05/21/2024 23:09:18"

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

ENTITY 	AirfryerFSM IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	run : IN std_logic;
	open_oven : IN std_logic;
	temp_reached : IN std_logic;
	time_done : IN std_logic;
	cool_done : IN std_logic;
	program_select : IN std_logic_vector(2 DOWNTO 0);
	user_temp : IN std_logic_vector(7 DOWNTO 0);
	user_preheat_time : IN std_logic_vector(7 DOWNTO 0);
	user_cook_time : IN std_logic_vector(7 DOWNTO 0);
	state : OUT std_logic_vector(2 DOWNTO 0);
	heating : OUT std_logic;
	cooling : OUT std_logic;
	food_in : OUT std_logic;
	temp_set : OUT std_logic_vector(7 DOWNTO 0);
	cook_time_set : OUT std_logic_vector(7 DOWNTO 0);
	preheat_set : OUT std_logic_vector(7 DOWNTO 0)
	);
END AirfryerFSM;

-- Design Ports Information
-- state[0]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- heating	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cooling	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- food_in	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[0]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[2]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[4]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[5]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[6]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[7]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cook_time_set[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cook_time_set[1]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cook_time_set[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cook_time_set[3]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cook_time_set[4]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cook_time_set[5]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cook_time_set[6]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cook_time_set[7]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preheat_set[0]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preheat_set[1]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preheat_set[2]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preheat_set[3]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preheat_set[4]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preheat_set[5]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preheat_set[6]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preheat_set[7]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- run	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- program_select[1]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- program_select[2]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- program_select[0]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_reached	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cool_done	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_done	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- open_oven	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_temp[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_temp[1]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_temp[2]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_temp[3]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_temp[4]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_temp[5]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_temp[6]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_temp[7]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_cook_time[0]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_cook_time[1]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_cook_time[2]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_cook_time[3]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_cook_time[4]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_cook_time[5]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_cook_time[6]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_cook_time[7]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_preheat_time[0]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_preheat_time[1]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_preheat_time[2]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_preheat_time[3]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_preheat_time[4]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_preheat_time[5]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_preheat_time[6]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_preheat_time[7]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AirfryerFSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_run : std_logic;
SIGNAL ww_open_oven : std_logic;
SIGNAL ww_temp_reached : std_logic;
SIGNAL ww_time_done : std_logic;
SIGNAL ww_cool_done : std_logic;
SIGNAL ww_program_select : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_user_temp : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_user_preheat_time : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_user_cook_time : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_state : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_heating : std_logic;
SIGNAL ww_cooling : std_logic;
SIGNAL ww_food_in : std_logic;
SIGNAL ww_temp_set : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cook_time_set : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_preheat_set : std_logic_vector(7 DOWNTO 0);
SIGNAL \preheat_set[7]~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \preheat_set[7]~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \state[0]~output_o\ : std_logic;
SIGNAL \state[1]~output_o\ : std_logic;
SIGNAL \state[2]~output_o\ : std_logic;
SIGNAL \heating~output_o\ : std_logic;
SIGNAL \cooling~output_o\ : std_logic;
SIGNAL \food_in~output_o\ : std_logic;
SIGNAL \temp_set[0]~output_o\ : std_logic;
SIGNAL \temp_set[1]~output_o\ : std_logic;
SIGNAL \temp_set[2]~output_o\ : std_logic;
SIGNAL \temp_set[3]~output_o\ : std_logic;
SIGNAL \temp_set[4]~output_o\ : std_logic;
SIGNAL \temp_set[5]~output_o\ : std_logic;
SIGNAL \temp_set[6]~output_o\ : std_logic;
SIGNAL \temp_set[7]~output_o\ : std_logic;
SIGNAL \cook_time_set[0]~output_o\ : std_logic;
SIGNAL \cook_time_set[1]~output_o\ : std_logic;
SIGNAL \cook_time_set[2]~output_o\ : std_logic;
SIGNAL \cook_time_set[3]~output_o\ : std_logic;
SIGNAL \cook_time_set[4]~output_o\ : std_logic;
SIGNAL \cook_time_set[5]~output_o\ : std_logic;
SIGNAL \cook_time_set[6]~output_o\ : std_logic;
SIGNAL \cook_time_set[7]~output_o\ : std_logic;
SIGNAL \preheat_set[0]~output_o\ : std_logic;
SIGNAL \preheat_set[1]~output_o\ : std_logic;
SIGNAL \preheat_set[2]~output_o\ : std_logic;
SIGNAL \preheat_set[3]~output_o\ : std_logic;
SIGNAL \preheat_set[4]~output_o\ : std_logic;
SIGNAL \preheat_set[5]~output_o\ : std_logic;
SIGNAL \preheat_set[6]~output_o\ : std_logic;
SIGNAL \preheat_set[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \temp_reached~input_o\ : std_logic;
SIGNAL \program_select[1]~input_o\ : std_logic;
SIGNAL \program_select[0]~input_o\ : std_logic;
SIGNAL \program_select[2]~input_o\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \run~input_o\ : std_logic;
SIGNAL \cool_done~input_o\ : std_logic;
SIGNAL \time_done~input_o\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \open_oven~input_o\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector4~3_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.COOL~q\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \current_state.IDLE~q\ : std_logic;
SIGNAL \preheat_set[7]~5_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \current_state.PreHEAT~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \current_state.FINISH~q\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \preheat_set[7]~4_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \current_state.COOK~q\ : std_logic;
SIGNAL \state~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state~1_combout\ : std_logic;
SIGNAL \user_temp[0]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \preheat_set[7]~4clkctrl_outclk\ : std_logic;
SIGNAL \temp_set[0]$latch~combout\ : std_logic;
SIGNAL \user_temp[1]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \temp_set[1]$latch~combout\ : std_logic;
SIGNAL \user_temp[2]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \temp_set[2]$latch~combout\ : std_logic;
SIGNAL \user_temp[3]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \temp_set[3]$latch~combout\ : std_logic;
SIGNAL \user_temp[4]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \temp_set[4]$latch~combout\ : std_logic;
SIGNAL \user_temp[5]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \temp_set[5]$latch~combout\ : std_logic;
SIGNAL \user_temp[6]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \temp_set[6]$latch~combout\ : std_logic;
SIGNAL \user_temp[7]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \temp_set[7]$latch~combout\ : std_logic;
SIGNAL \user_cook_time[0]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \cook_time_set[0]$latch~combout\ : std_logic;
SIGNAL \user_cook_time[1]~input_o\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \cook_time_set[1]$latch~combout\ : std_logic;
SIGNAL \user_cook_time[2]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \cook_time_set[2]$latch~combout\ : std_logic;
SIGNAL \user_cook_time[3]~input_o\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \cook_time_set[3]$latch~combout\ : std_logic;
SIGNAL \user_cook_time[4]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \cook_time_set[4]$latch~combout\ : std_logic;
SIGNAL \user_cook_time[5]~input_o\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \cook_time_set[5]$latch~combout\ : std_logic;
SIGNAL \user_cook_time[6]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \cook_time_set[6]$latch~combout\ : std_logic;
SIGNAL \user_cook_time[7]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \cook_time_set[7]$latch~combout\ : std_logic;
SIGNAL \user_preheat_time[0]~input_o\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \preheat_set[7]~5clkctrl_outclk\ : std_logic;
SIGNAL \preheat_set[0]$latch~combout\ : std_logic;
SIGNAL \user_preheat_time[1]~input_o\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \preheat_set[1]$latch~combout\ : std_logic;
SIGNAL \user_preheat_time[2]~input_o\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \preheat_set[2]$latch~combout\ : std_logic;
SIGNAL \user_preheat_time[3]~input_o\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \preheat_set[3]$latch~combout\ : std_logic;
SIGNAL \user_preheat_time[4]~input_o\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \preheat_set[4]$latch~combout\ : std_logic;
SIGNAL \user_preheat_time[5]~input_o\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \preheat_set[5]$latch~combout\ : std_logic;
SIGNAL \user_preheat_time[6]~input_o\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \preheat_set[6]$latch~combout\ : std_logic;
SIGNAL \user_preheat_time[7]~input_o\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \preheat_set[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_state~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_run <= run;
ww_open_oven <= open_oven;
ww_temp_reached <= temp_reached;
ww_time_done <= time_done;
ww_cool_done <= cool_done;
ww_program_select <= program_select;
ww_user_temp <= user_temp;
ww_user_preheat_time <= user_preheat_time;
ww_user_cook_time <= user_cook_time;
state <= ww_state;
heating <= ww_heating;
cooling <= ww_cooling;
food_in <= ww_food_in;
temp_set <= ww_temp_set;
cook_time_set <= ww_cook_time_set;
preheat_set <= ww_preheat_set;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\preheat_set[7]~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \preheat_set[7]~5_combout\);

\preheat_set[7]~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \preheat_set[7]~4_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
\ALT_INV_state~0_combout\ <= NOT \state~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y35_N2
\state[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state~0_combout\,
	devoe => ww_devoe,
	o => \state[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\state[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Selector1~0_combout\,
	devoe => ww_devoe,
	o => \state[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\state[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state~1_combout\,
	devoe => ww_devoe,
	o => \state[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\heating~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.PreHEAT~q\,
	devoe => ww_devoe,
	o => \heating~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\cooling~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.COOL~q\,
	devoe => ww_devoe,
	o => \cooling~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\food_in~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.FINISH~q\,
	devoe => ww_devoe,
	o => \food_in~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\temp_set[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_set[0]$latch~combout\,
	devoe => ww_devoe,
	o => \temp_set[0]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\temp_set[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_set[1]$latch~combout\,
	devoe => ww_devoe,
	o => \temp_set[1]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\temp_set[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_set[2]$latch~combout\,
	devoe => ww_devoe,
	o => \temp_set[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\temp_set[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_set[3]$latch~combout\,
	devoe => ww_devoe,
	o => \temp_set[3]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\temp_set[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_set[4]$latch~combout\,
	devoe => ww_devoe,
	o => \temp_set[4]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\temp_set[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_set[5]$latch~combout\,
	devoe => ww_devoe,
	o => \temp_set[5]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\temp_set[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_set[6]$latch~combout\,
	devoe => ww_devoe,
	o => \temp_set[6]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\temp_set[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_set[7]$latch~combout\,
	devoe => ww_devoe,
	o => \temp_set[7]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\cook_time_set[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cook_time_set[0]$latch~combout\,
	devoe => ww_devoe,
	o => \cook_time_set[0]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\cook_time_set[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cook_time_set[1]$latch~combout\,
	devoe => ww_devoe,
	o => \cook_time_set[1]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\cook_time_set[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cook_time_set[2]$latch~combout\,
	devoe => ww_devoe,
	o => \cook_time_set[2]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\cook_time_set[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cook_time_set[3]$latch~combout\,
	devoe => ww_devoe,
	o => \cook_time_set[3]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\cook_time_set[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cook_time_set[4]$latch~combout\,
	devoe => ww_devoe,
	o => \cook_time_set[4]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\cook_time_set[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cook_time_set[5]$latch~combout\,
	devoe => ww_devoe,
	o => \cook_time_set[5]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\cook_time_set[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cook_time_set[6]$latch~combout\,
	devoe => ww_devoe,
	o => \cook_time_set[6]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\cook_time_set[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cook_time_set[7]$latch~combout\,
	devoe => ww_devoe,
	o => \cook_time_set[7]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\preheat_set[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \preheat_set[0]$latch~combout\,
	devoe => ww_devoe,
	o => \preheat_set[0]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\preheat_set[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \preheat_set[1]$latch~combout\,
	devoe => ww_devoe,
	o => \preheat_set[1]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\preheat_set[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \preheat_set[2]$latch~combout\,
	devoe => ww_devoe,
	o => \preheat_set[2]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\preheat_set[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \preheat_set[3]$latch~combout\,
	devoe => ww_devoe,
	o => \preheat_set[3]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\preheat_set[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \preheat_set[4]$latch~combout\,
	devoe => ww_devoe,
	o => \preheat_set[4]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\preheat_set[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \preheat_set[5]$latch~combout\,
	devoe => ww_devoe,
	o => \preheat_set[5]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\preheat_set[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \preheat_set[6]$latch~combout\,
	devoe => ww_devoe,
	o => \preheat_set[6]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\preheat_set[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \preheat_set[7]$latch~combout\,
	devoe => ww_devoe,
	o => \preheat_set[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y34_N15
\temp_reached~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_temp_reached,
	o => \temp_reached~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\program_select[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_program_select(1),
	o => \program_select[1]~input_o\);

-- Location: IOIBUF_X115_Y57_N22
\program_select[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_program_select(0),
	o => \program_select[0]~input_o\);

-- Location: IOIBUF_X115_Y55_N15
\program_select[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_program_select(2),
	o => \program_select[2]~input_o\);

-- Location: LCCOMB_X87_Y69_N28
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\program_select[1]~input_o\ & ((\program_select[2]~input_o\))) # (!\program_select[1]~input_o\ & (!\program_select[0]~input_o\ & !\program_select[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \program_select[1]~input_o\,
	datac => \program_select[0]~input_o\,
	datad => \program_select[2]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: IOIBUF_X115_Y37_N8
\run~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_run,
	o => \run~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\cool_done~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cool_done,
	o => \cool_done~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\time_done~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_done,
	o => \time_done~input_o\);

-- Location: LCCOMB_X34_Y37_N4
\Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\time_done~input_o\ & \current_state.COOK~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \time_done~input_o\,
	datac => \current_state.COOK~q\,
	combout => \Selector4~2_combout\);

-- Location: IOIBUF_X0_Y33_N22
\open_oven~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_open_oven,
	o => \open_oven~input_o\);

-- Location: LCCOMB_X34_Y37_N22
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\current_state.FINISH~q\ & (((\open_oven~input_o\)))) # (!\current_state.FINISH~q\ & (\run~input_o\ & ((!\current_state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \run~input_o\,
	datab => \open_oven~input_o\,
	datac => \current_state.IDLE~q\,
	datad => \current_state.FINISH~q\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X34_Y37_N16
\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\Selector3~0_combout\) # ((\Selector0~1_combout\) # ((\time_done~input_o\ & \current_state.COOK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \time_done~input_o\,
	datac => \current_state.COOK~q\,
	datad => \Selector0~1_combout\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X34_Y37_N24
\Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~3_combout\ = (\current_state.COOL~q\ & (!\cool_done~input_o\ & ((\Selector4~2_combout\) # (!\Selector0~2_combout\)))) # (!\current_state.COOL~q\ & (((\Selector4~2_combout\ & \Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cool_done~input_o\,
	datab => \Selector4~2_combout\,
	datac => \current_state.COOL~q\,
	datad => \Selector0~2_combout\,
	combout => \Selector4~3_combout\);

-- Location: IOIBUF_X0_Y36_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G1
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X34_Y37_N25
\current_state.COOL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.COOL~q\);

-- Location: LCCOMB_X34_Y37_N20
\Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (\cool_done~input_o\ & (!\current_state.COOL~q\ & ((\current_state.IDLE~q\) # (\run~input_o\)))) # (!\cool_done~input_o\ & (((\current_state.IDLE~q\) # (\run~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cool_done~input_o\,
	datab => \current_state.COOL~q\,
	datac => \current_state.IDLE~q\,
	datad => \run~input_o\,
	combout => \Selector0~4_combout\);

-- Location: FF_X34_Y37_N21
\current_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector0~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.IDLE~q\);

-- Location: LCCOMB_X34_Y37_N28
\preheat_set[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \preheat_set[7]~5_combout\ = (!\Mux25~0_combout\ & (\run~input_o\ & !\current_state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux25~0_combout\,
	datac => \run~input_o\,
	datad => \current_state.IDLE~q\,
	combout => \preheat_set[7]~5_combout\);

-- Location: LCCOMB_X34_Y37_N10
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\current_state.IDLE~q\ & ((\current_state.COOL~q\ & (\cool_done~input_o\)) # (!\current_state.COOL~q\ & ((\time_done~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cool_done~input_o\,
	datab => \time_done~input_o\,
	datac => \current_state.IDLE~q\,
	datad => \current_state.COOL~q\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X34_Y37_N2
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (!\current_state.FINISH~q\ & (!\current_state.PreHEAT~q\ & \Selector1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.FINISH~q\,
	datab => \current_state.PreHEAT~q\,
	datad => \Selector1~1_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X34_Y37_N0
\Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (\preheat_set[7]~5_combout\) # ((\Selector2~4_combout\ & (\current_state.PreHEAT~q\ & !\Selector1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \preheat_set[7]~5_combout\,
	datab => \Selector2~4_combout\,
	datac => \current_state.PreHEAT~q\,
	datad => \Selector1~2_combout\,
	combout => \Selector1~3_combout\);

-- Location: FF_X34_Y37_N1
\current_state.PreHEAT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.PreHEAT~q\);

-- Location: LCCOMB_X34_Y37_N12
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\temp_reached~input_o\ & \current_state.PreHEAT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_reached~input_o\,
	datad => \current_state.PreHEAT~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X34_Y37_N8
\Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\cool_done~input_o\ & \current_state.COOL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cool_done~input_o\,
	datad => \current_state.COOL~q\,
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X34_Y37_N6
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (!\Selector0~3_combout\ & ((\Selector0~2_combout\ & (\Selector3~0_combout\)) # (!\Selector0~2_combout\ & ((\current_state.FINISH~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \Selector0~3_combout\,
	datac => \current_state.FINISH~q\,
	datad => \Selector0~2_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X34_Y37_N7
\current_state.FINISH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.FINISH~q\);

-- Location: LCCOMB_X34_Y37_N30
\Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (\current_state.IDLE~q\ & ((\current_state.FINISH~q\) # ((!\Selector3~0_combout\)))) # (!\current_state.IDLE~q\ & (((!\run~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.FINISH~q\,
	datab => \current_state.IDLE~q\,
	datac => \run~input_o\,
	datad => \Selector3~0_combout\,
	combout => \Selector2~4_combout\);

-- Location: LCCOMB_X34_Y37_N14
\preheat_set[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \preheat_set[7]~4_combout\ = (\run~input_o\ & !\current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \run~input_o\,
	datad => \current_state.IDLE~q\,
	combout => \preheat_set[7]~4_combout\);

-- Location: LCCOMB_X34_Y37_N18
\Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\open_oven~input_o\ & ((\current_state.FINISH~q\) # ((\Mux25~0_combout\ & \preheat_set[7]~4_combout\)))) # (!\open_oven~input_o\ & (\Mux25~0_combout\ & (\preheat_set[7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \open_oven~input_o\,
	datab => \Mux25~0_combout\,
	datac => \preheat_set[7]~4_combout\,
	datad => \current_state.FINISH~q\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X34_Y37_N26
\Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\Selector2~2_combout\) # ((\Selector2~4_combout\ & (\current_state.COOK~q\ & !\Selector1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~4_combout\,
	datab => \Selector2~2_combout\,
	datac => \current_state.COOK~q\,
	datad => \Selector1~2_combout\,
	combout => \Selector2~3_combout\);

-- Location: FF_X34_Y37_N27
\current_state.COOK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.COOK~q\);

-- Location: LCCOMB_X1_Y35_N16
\state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~0_combout\ = (\current_state.COOK~q\) # (\current_state.PreHEAT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.COOK~q\,
	datad => \current_state.PreHEAT~q\,
	combout => \state~0_combout\);

-- Location: LCCOMB_X1_Y35_N14
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\current_state.FINISH~q\ & !\current_state.PreHEAT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.FINISH~q\,
	datad => \current_state.PreHEAT~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X1_Y35_N4
\state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~1_combout\ = (\current_state.COOL~q\) # (\current_state.COOK~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.COOL~q\,
	datac => \current_state.COOK~q\,
	combout => \state~1_combout\);

-- Location: IOIBUF_X87_Y73_N22
\user_temp[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_temp(0),
	o => \user_temp[0]~input_o\);

-- Location: LCCOMB_X87_Y69_N26
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\user_temp[0]~input_o\ & (!\program_select[1]~input_o\ & (\program_select[0]~input_o\ & !\program_select[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_temp[0]~input_o\,
	datab => \program_select[1]~input_o\,
	datac => \program_select[0]~input_o\,
	datad => \program_select[2]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: CLKCTRL_G0
\preheat_set[7]~4clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \preheat_set[7]~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \preheat_set[7]~4clkctrl_outclk\);

-- Location: LCCOMB_X86_Y69_N8
\temp_set[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_set[0]$latch~combout\ = (GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & (\Mux7~0_combout\)) # (!GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & ((\temp_set[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~0_combout\,
	datac => \temp_set[0]$latch~combout\,
	datad => \preheat_set[7]~4clkctrl_outclk\,
	combout => \temp_set[0]$latch~combout\);

-- Location: IOIBUF_X87_Y73_N15
\user_temp[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_temp(1),
	o => \user_temp[1]~input_o\);

-- Location: LCCOMB_X87_Y69_N12
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\program_select[1]~input_o\ & ((\program_select[2]~input_o\) # ((\user_temp[1]~input_o\ & \program_select[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_select[2]~input_o\,
	datab => \user_temp[1]~input_o\,
	datac => \program_select[0]~input_o\,
	datad => \program_select[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X86_Y69_N18
\temp_set[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_set[1]$latch~combout\ = (GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & (\Mux6~0_combout\)) # (!GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & ((\temp_set[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~0_combout\,
	datac => \preheat_set[7]~4clkctrl_outclk\,
	datad => \temp_set[1]$latch~combout\,
	combout => \temp_set[1]$latch~combout\);

-- Location: IOIBUF_X89_Y73_N22
\user_temp[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_temp(2),
	o => \user_temp[2]~input_o\);

-- Location: LCCOMB_X87_Y69_N30
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\program_select[2]~input_o\ & ((\program_select[1]~input_o\ & ((!\program_select[0]~input_o\))) # (!\program_select[1]~input_o\ & (\user_temp[2]~input_o\ & \program_select[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_temp[2]~input_o\,
	datab => \program_select[1]~input_o\,
	datac => \program_select[0]~input_o\,
	datad => \program_select[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X86_Y69_N12
\temp_set[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_set[2]$latch~combout\ = (GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & (\Mux5~0_combout\)) # (!GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & ((\temp_set[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datac => \preheat_set[7]~4clkctrl_outclk\,
	datad => \temp_set[2]$latch~combout\,
	combout => \temp_set[2]$latch~combout\);

-- Location: IOIBUF_X83_Y73_N22
\user_temp[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_temp(3),
	o => \user_temp[3]~input_o\);

-- Location: LCCOMB_X87_Y69_N8
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\program_select[2]~input_o\) # ((\program_select[0]~input_o\ & ((\user_temp[3]~input_o\) # (\program_select[1]~input_o\))) # (!\program_select[0]~input_o\ & ((!\program_select[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_select[2]~input_o\,
	datab => \user_temp[3]~input_o\,
	datac => \program_select[0]~input_o\,
	datad => \program_select[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X86_Y69_N10
\temp_set[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_set[3]$latch~combout\ = (GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & (\Mux4~0_combout\)) # (!GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & ((\temp_set[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~0_combout\,
	datac => \preheat_set[7]~4clkctrl_outclk\,
	datad => \temp_set[3]$latch~combout\,
	combout => \temp_set[3]$latch~combout\);

-- Location: IOIBUF_X83_Y73_N15
\user_temp[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_temp(4),
	o => \user_temp[4]~input_o\);

-- Location: LCCOMB_X87_Y69_N18
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\program_select[2]~input_o\ & ((\program_select[0]~input_o\ & (\user_temp[4]~input_o\ & !\program_select[1]~input_o\)) # (!\program_select[0]~input_o\ & ((\program_select[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_select[2]~input_o\,
	datab => \user_temp[4]~input_o\,
	datac => \program_select[0]~input_o\,
	datad => \program_select[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X91_Y69_N28
\temp_set[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_set[4]$latch~combout\ = (GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & (\Mux3~0_combout\)) # (!GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & ((\temp_set[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datac => \preheat_set[7]~4clkctrl_outclk\,
	datad => \temp_set[4]$latch~combout\,
	combout => \temp_set[4]$latch~combout\);

-- Location: IOIBUF_X87_Y73_N1
\user_temp[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_temp(5),
	o => \user_temp[5]~input_o\);

-- Location: LCCOMB_X87_Y69_N16
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\program_select[2]~input_o\ & (((!\program_select[1]~input_o\)))) # (!\program_select[2]~input_o\ & ((\program_select[0]~input_o\ & (\user_temp[5]~input_o\ & !\program_select[1]~input_o\)) # (!\program_select[0]~input_o\ & 
-- ((\program_select[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_select[2]~input_o\,
	datab => \user_temp[5]~input_o\,
	datac => \program_select[0]~input_o\,
	datad => \program_select[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X88_Y69_N8
\temp_set[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_set[5]$latch~combout\ = (GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & (\Mux2~0_combout\)) # (!GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & ((\temp_set[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datac => \temp_set[5]$latch~combout\,
	datad => \preheat_set[7]~4clkctrl_outclk\,
	combout => \temp_set[5]$latch~combout\);

-- Location: IOIBUF_X87_Y73_N8
\user_temp[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_temp(6),
	o => \user_temp[6]~input_o\);

-- Location: LCCOMB_X87_Y69_N22
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\program_select[2]~input_o\ & (((\program_select[1]~input_o\)))) # (!\program_select[2]~input_o\ & ((\program_select[0]~input_o\ & ((\user_temp[6]~input_o\) # (\program_select[1]~input_o\))) # (!\program_select[0]~input_o\ & 
-- ((!\program_select[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_select[2]~input_o\,
	datab => \user_temp[6]~input_o\,
	datac => \program_select[0]~input_o\,
	datad => \program_select[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X87_Y69_N14
\temp_set[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_set[6]$latch~combout\ = (GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & (\Mux1~0_combout\)) # (!GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & ((\temp_set[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datac => \temp_set[6]$latch~combout\,
	datad => \preheat_set[7]~4clkctrl_outclk\,
	combout => \temp_set[6]$latch~combout\);

-- Location: IOIBUF_X115_Y68_N15
\user_temp[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_temp(7),
	o => \user_temp[7]~input_o\);

-- Location: LCCOMB_X114_Y69_N12
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\program_select[2]~input_o\) # (((\program_select[1]~input_o\) # (\user_temp[7]~input_o\)) # (!\program_select[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_select[2]~input_o\,
	datab => \program_select[0]~input_o\,
	datac => \program_select[1]~input_o\,
	datad => \user_temp[7]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X114_Y69_N24
\temp_set[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_set[7]$latch~combout\ = (GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & (\Mux0~0_combout\)) # (!GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & ((\temp_set[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datac => \preheat_set[7]~4clkctrl_outclk\,
	datad => \temp_set[7]$latch~combout\,
	combout => \temp_set[7]$latch~combout\);

-- Location: IOIBUF_X115_Y65_N15
\user_cook_time[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_cook_time(0),
	o => \user_cook_time[0]~input_o\);

-- Location: LCCOMB_X114_Y69_N22
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!\program_select[2]~input_o\ & ((\program_select[1]~input_o\ & ((!\program_select[0]~input_o\))) # (!\program_select[1]~input_o\ & (\user_cook_time[0]~input_o\ & \program_select[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_select[2]~input_o\,
	datab => \program_select[1]~input_o\,
	datac => \user_cook_time[0]~input_o\,
	datad => \program_select[0]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X114_Y69_N2
\cook_time_set[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \cook_time_set[0]$latch~combout\ = (GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & (\Mux15~0_combout\)) # (!GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & ((\cook_time_set[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datac => \preheat_set[7]~4clkctrl_outclk\,
	datad => \cook_time_set[0]$latch~combout\,
	combout => \cook_time_set[0]$latch~combout\);

-- Location: IOIBUF_X115_Y66_N22
\user_cook_time[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_cook_time(1),
	o => \user_cook_time[1]~input_o\);

-- Location: LCCOMB_X114_Y69_N8
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\program_select[2]~input_o\ & (((\program_select[1]~input_o\)))) # (!\program_select[2]~input_o\ & (((!\program_select[1]~input_o\ & \user_cook_time[1]~input_o\)) # (!\program_select[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_select[2]~input_o\,
	datab => \program_select[0]~input_o\,
	datac => \program_select[1]~input_o\,
	datad => \user_cook_time[1]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X114_Y69_N20
\cook_time_set[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \cook_time_set[1]$latch~combout\ = (GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & (\Mux14~0_combout\)) # (!GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & ((\cook_time_set[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux14~0_combout\,
	datac => \preheat_set[7]~4clkctrl_outclk\,
	datad => \cook_time_set[1]$latch~combout\,
	combout => \cook_time_set[1]$latch~combout\);

-- Location: IOIBUF_X111_Y73_N8
\user_cook_time[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_cook_time(2),
	o => \user_cook_time[2]~input_o\);

-- Location: LCCOMB_X114_Y69_N14
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\program_select[2]~input_o\ & (!\program_select[1]~input_o\)) # (!\program_select[2]~input_o\ & ((\program_select[1]~input_o\) # ((\user_cook_time[2]~input_o\ & \program_select[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_select[2]~input_o\,
	datab => \program_select[1]~input_o\,
	datac => \user_cook_time[2]~input_o\,
	datad => \program_select[0]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X114_Y69_N10
\cook_time_set[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \cook_time_set[2]$latch~combout\ = (GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & (\Mux13~0_combout\)) # (!GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & ((\cook_time_set[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux13~0_combout\,
	datac => \preheat_set[7]~4clkctrl_outclk\,
	datad => \cook_time_set[2]$latch~combout\,
	combout => \cook_time_set[2]$latch~combout\);

-- Location: IOIBUF_X115_Y65_N22
\user_cook_time[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_cook_time(3),
	o => \user_cook_time[3]~input_o\);

-- Location: LCCOMB_X114_Y69_N4
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\program_select[2]~input_o\ & ((\program_select[0]~input_o\ & (!\program_select[1]~input_o\ & \user_cook_time[3]~input_o\)) # (!\program_select[0]~input_o\ & (\program_select[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_select[2]~input_o\,
	datab => \program_select[0]~input_o\,
	datac => \program_select[1]~input_o\,
	datad => \user_cook_time[3]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X114_Y69_N16
\cook_time_set[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \cook_time_set[3]$latch~combout\ = (GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & (\Mux12~0_combout\)) # (!GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & ((\cook_time_set[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux12~0_combout\,
	datac => \preheat_set[7]~4clkctrl_outclk\,
	datad => \cook_time_set[3]$latch~combout\,
	combout => \cook_time_set[3]$latch~combout\);

-- Location: IOIBUF_X115_Y64_N8
\user_cook_time[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_cook_time(4),
	o => \user_cook_time[4]~input_o\);

-- Location: LCCOMB_X114_Y69_N26
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\program_select[2]~input_o\) # ((\program_select[0]~input_o\ & ((\program_select[1]~input_o\) # (\user_cook_time[4]~input_o\))) # (!\program_select[0]~input_o\ & (!\program_select[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_select[2]~input_o\,
	datab => \program_select[0]~input_o\,
	datac => \program_select[1]~input_o\,
	datad => \user_cook_time[4]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X114_Y69_N18
\cook_time_set[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \cook_time_set[4]$latch~combout\ = (GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & (\Mux11~0_combout\)) # (!GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & ((\cook_time_set[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datac => \preheat_set[7]~4clkctrl_outclk\,
	datad => \cook_time_set[4]$latch~combout\,
	combout => \cook_time_set[4]$latch~combout\);

-- Location: IOIBUF_X111_Y73_N1
\user_cook_time[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_cook_time(5),
	o => \user_cook_time[5]~input_o\);

-- Location: LCCOMB_X114_Y69_N28
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\program_select[2]~input_o\ & (!\program_select[1]~input_o\ & (\user_cook_time[5]~input_o\ & \program_select[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_select[2]~input_o\,
	datab => \program_select[1]~input_o\,
	datac => \user_cook_time[5]~input_o\,
	datad => \program_select[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X114_Y69_N0
\cook_time_set[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \cook_time_set[5]$latch~combout\ = (GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & (\Mux10~0_combout\)) # (!GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & ((\cook_time_set[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux10~0_combout\,
	datac => \preheat_set[7]~4clkctrl_outclk\,
	datad => \cook_time_set[5]$latch~combout\,
	combout => \cook_time_set[5]$latch~combout\);

-- Location: IOIBUF_X89_Y73_N8
\user_cook_time[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_cook_time(6),
	o => \user_cook_time[6]~input_o\);

-- Location: LCCOMB_X87_Y69_N24
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\user_cook_time[6]~input_o\ & (!\program_select[1]~input_o\ & (\program_select[0]~input_o\ & !\program_select[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_cook_time[6]~input_o\,
	datab => \program_select[1]~input_o\,
	datac => \program_select[0]~input_o\,
	datad => \program_select[2]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X87_Y69_N20
\cook_time_set[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \cook_time_set[6]$latch~combout\ = (GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & (\Mux9~0_combout\)) # (!GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & ((\cook_time_set[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux9~0_combout\,
	datac => \preheat_set[7]~4clkctrl_outclk\,
	datad => \cook_time_set[6]$latch~combout\,
	combout => \cook_time_set[6]$latch~combout\);

-- Location: IOIBUF_X115_Y66_N15
\user_cook_time[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_cook_time(7),
	o => \user_cook_time[7]~input_o\);

-- Location: LCCOMB_X114_Y69_N30
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\program_select[2]~input_o\ & (\program_select[0]~input_o\ & (!\program_select[1]~input_o\ & \user_cook_time[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_select[2]~input_o\,
	datab => \program_select[0]~input_o\,
	datac => \program_select[1]~input_o\,
	datad => \user_cook_time[7]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X114_Y69_N6
\cook_time_set[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \cook_time_set[7]$latch~combout\ = (GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & (\Mux8~0_combout\)) # (!GLOBAL(\preheat_set[7]~4clkctrl_outclk\) & ((\cook_time_set[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datac => \preheat_set[7]~4clkctrl_outclk\,
	datad => \cook_time_set[7]$latch~combout\,
	combout => \cook_time_set[7]$latch~combout\);

-- Location: IOIBUF_X115_Y50_N1
\user_preheat_time[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_preheat_time(0),
	o => \user_preheat_time[0]~input_o\);

-- Location: LCCOMB_X114_Y49_N28
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\user_preheat_time[0]~input_o\) # ((\program_select[1]~input_o\) # ((\program_select[2]~input_o\) # (!\program_select[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_preheat_time[0]~input_o\,
	datab => \program_select[1]~input_o\,
	datac => \program_select[2]~input_o\,
	datad => \program_select[0]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: CLKCTRL_G4
\preheat_set[7]~5clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \preheat_set[7]~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \preheat_set[7]~5clkctrl_outclk\);

-- Location: LCCOMB_X114_Y49_N24
\preheat_set[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \preheat_set[0]$latch~combout\ = (GLOBAL(\preheat_set[7]~5clkctrl_outclk\) & (\Mux20~0_combout\)) # (!GLOBAL(\preheat_set[7]~5clkctrl_outclk\) & ((\preheat_set[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux20~0_combout\,
	datac => \preheat_set[7]~5clkctrl_outclk\,
	datad => \preheat_set[0]$latch~combout\,
	combout => \preheat_set[0]$latch~combout\);

-- Location: IOIBUF_X115_Y52_N1
\user_preheat_time[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_preheat_time(1),
	o => \user_preheat_time[1]~input_o\);

-- Location: LCCOMB_X114_Y49_N30
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ((\user_preheat_time[1]~input_o\ & (!\program_select[1]~input_o\ & !\program_select[2]~input_o\))) # (!\program_select[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_preheat_time[1]~input_o\,
	datab => \program_select[1]~input_o\,
	datac => \program_select[2]~input_o\,
	datad => \program_select[0]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X114_Y49_N18
\preheat_set[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \preheat_set[1]$latch~combout\ = (GLOBAL(\preheat_set[7]~5clkctrl_outclk\) & (\Mux19~0_combout\)) # (!GLOBAL(\preheat_set[7]~5clkctrl_outclk\) & ((\preheat_set[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datac => \preheat_set[7]~5clkctrl_outclk\,
	datad => \preheat_set[1]$latch~combout\,
	combout => \preheat_set[1]$latch~combout\);

-- Location: IOIBUF_X115_Y51_N1
\user_preheat_time[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_preheat_time(2),
	o => \user_preheat_time[2]~input_o\);

-- Location: LCCOMB_X114_Y49_N12
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\program_select[0]~input_o\ & ((\program_select[2]~input_o\) # ((\user_preheat_time[2]~input_o\) # (\program_select[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_select[2]~input_o\,
	datab => \user_preheat_time[2]~input_o\,
	datac => \program_select[1]~input_o\,
	datad => \program_select[0]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X114_Y49_N16
\preheat_set[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \preheat_set[2]$latch~combout\ = (GLOBAL(\preheat_set[7]~5clkctrl_outclk\) & (\Mux18~0_combout\)) # (!GLOBAL(\preheat_set[7]~5clkctrl_outclk\) & ((\preheat_set[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datac => \preheat_set[7]~5clkctrl_outclk\,
	datad => \preheat_set[2]$latch~combout\,
	combout => \preheat_set[2]$latch~combout\);

-- Location: IOIBUF_X115_Y50_N8
\user_preheat_time[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_preheat_time(3),
	o => \user_preheat_time[3]~input_o\);

-- Location: LCCOMB_X114_Y49_N22
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (!\program_select[2]~input_o\ & (!\program_select[1]~input_o\ & (\user_preheat_time[3]~input_o\ & \program_select[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_select[2]~input_o\,
	datab => \program_select[1]~input_o\,
	datac => \user_preheat_time[3]~input_o\,
	datad => \program_select[0]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X114_Y49_N2
\preheat_set[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \preheat_set[3]$latch~combout\ = (GLOBAL(\preheat_set[7]~5clkctrl_outclk\) & (\Mux17~0_combout\)) # (!GLOBAL(\preheat_set[7]~5clkctrl_outclk\) & ((\preheat_set[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~0_combout\,
	datac => \preheat_set[7]~5clkctrl_outclk\,
	datad => \preheat_set[3]$latch~combout\,
	combout => \preheat_set[3]$latch~combout\);

-- Location: IOIBUF_X115_Y51_N8
\user_preheat_time[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_preheat_time(4),
	o => \user_preheat_time[4]~input_o\);

-- Location: LCCOMB_X114_Y49_N8
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (!\program_select[2]~input_o\ & (\user_preheat_time[4]~input_o\ & (!\program_select[1]~input_o\ & \program_select[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_select[2]~input_o\,
	datab => \user_preheat_time[4]~input_o\,
	datac => \program_select[1]~input_o\,
	datad => \program_select[0]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X114_Y49_N20
\preheat_set[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \preheat_set[4]$latch~combout\ = (GLOBAL(\preheat_set[7]~5clkctrl_outclk\) & (\Mux21~0_combout\)) # (!GLOBAL(\preheat_set[7]~5clkctrl_outclk\) & ((\preheat_set[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux21~0_combout\,
	datac => \preheat_set[7]~5clkctrl_outclk\,
	datad => \preheat_set[4]$latch~combout\,
	combout => \preheat_set[4]$latch~combout\);

-- Location: IOIBUF_X115_Y52_N8
\user_preheat_time[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_preheat_time(5),
	o => \user_preheat_time[5]~input_o\);

-- Location: LCCOMB_X114_Y49_N14
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\user_preheat_time[5]~input_o\ & (!\program_select[1]~input_o\ & (!\program_select[2]~input_o\ & \program_select[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_preheat_time[5]~input_o\,
	datab => \program_select[1]~input_o\,
	datac => \program_select[2]~input_o\,
	datad => \program_select[0]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X114_Y49_N10
\preheat_set[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \preheat_set[5]$latch~combout\ = (GLOBAL(\preheat_set[7]~5clkctrl_outclk\) & (\Mux22~0_combout\)) # (!GLOBAL(\preheat_set[7]~5clkctrl_outclk\) & ((\preheat_set[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux22~0_combout\,
	datac => \preheat_set[7]~5clkctrl_outclk\,
	datad => \preheat_set[5]$latch~combout\,
	combout => \preheat_set[5]$latch~combout\);

-- Location: IOIBUF_X115_Y49_N8
\user_preheat_time[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_preheat_time(6),
	o => \user_preheat_time[6]~input_o\);

-- Location: LCCOMB_X114_Y49_N4
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\user_preheat_time[6]~input_o\ & (!\program_select[1]~input_o\ & (!\program_select[2]~input_o\ & \program_select[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_preheat_time[6]~input_o\,
	datab => \program_select[1]~input_o\,
	datac => \program_select[2]~input_o\,
	datad => \program_select[0]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X114_Y49_N0
\preheat_set[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \preheat_set[6]$latch~combout\ = (GLOBAL(\preheat_set[7]~5clkctrl_outclk\) & (\Mux23~0_combout\)) # (!GLOBAL(\preheat_set[7]~5clkctrl_outclk\) & ((\preheat_set[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux23~0_combout\,
	datac => \preheat_set[7]~5clkctrl_outclk\,
	datad => \preheat_set[6]$latch~combout\,
	combout => \preheat_set[6]$latch~combout\);

-- Location: IOIBUF_X115_Y49_N1
\user_preheat_time[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_preheat_time(7),
	o => \user_preheat_time[7]~input_o\);

-- Location: LCCOMB_X114_Y49_N26
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (!\program_select[2]~input_o\ & (\user_preheat_time[7]~input_o\ & (!\program_select[1]~input_o\ & \program_select[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_select[2]~input_o\,
	datab => \user_preheat_time[7]~input_o\,
	datac => \program_select[1]~input_o\,
	datad => \program_select[0]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X114_Y49_N6
\preheat_set[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \preheat_set[7]$latch~combout\ = (GLOBAL(\preheat_set[7]~5clkctrl_outclk\) & (\Mux24~0_combout\)) # (!GLOBAL(\preheat_set[7]~5clkctrl_outclk\) & ((\preheat_set[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datac => \preheat_set[7]~5clkctrl_outclk\,
	datad => \preheat_set[7]$latch~combout\,
	combout => \preheat_set[7]$latch~combout\);

ww_state(0) <= \state[0]~output_o\;

ww_state(1) <= \state[1]~output_o\;

ww_state(2) <= \state[2]~output_o\;

ww_heating <= \heating~output_o\;

ww_cooling <= \cooling~output_o\;

ww_food_in <= \food_in~output_o\;

ww_temp_set(0) <= \temp_set[0]~output_o\;

ww_temp_set(1) <= \temp_set[1]~output_o\;

ww_temp_set(2) <= \temp_set[2]~output_o\;

ww_temp_set(3) <= \temp_set[3]~output_o\;

ww_temp_set(4) <= \temp_set[4]~output_o\;

ww_temp_set(5) <= \temp_set[5]~output_o\;

ww_temp_set(6) <= \temp_set[6]~output_o\;

ww_temp_set(7) <= \temp_set[7]~output_o\;

ww_cook_time_set(0) <= \cook_time_set[0]~output_o\;

ww_cook_time_set(1) <= \cook_time_set[1]~output_o\;

ww_cook_time_set(2) <= \cook_time_set[2]~output_o\;

ww_cook_time_set(3) <= \cook_time_set[3]~output_o\;

ww_cook_time_set(4) <= \cook_time_set[4]~output_o\;

ww_cook_time_set(5) <= \cook_time_set[5]~output_o\;

ww_cook_time_set(6) <= \cook_time_set[6]~output_o\;

ww_cook_time_set(7) <= \cook_time_set[7]~output_o\;

ww_preheat_set(0) <= \preheat_set[0]~output_o\;

ww_preheat_set(1) <= \preheat_set[1]~output_o\;

ww_preheat_set(2) <= \preheat_set[2]~output_o\;

ww_preheat_set(3) <= \preheat_set[3]~output_o\;

ww_preheat_set(4) <= \preheat_set[4]~output_o\;

ww_preheat_set(5) <= \preheat_set[5]~output_o\;

ww_preheat_set(6) <= \preheat_set[6]~output_o\;

ww_preheat_set(7) <= \preheat_set[7]~output_o\;
END structure;


