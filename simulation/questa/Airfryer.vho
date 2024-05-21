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

-- DATE "05/21/2024 16:16:42"

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
	start : IN std_logic;
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
	cook_time_set : OUT std_logic_vector(7 DOWNTO 0)
	);
END AirfryerFSM;

-- Design Ports Information
-- user_preheat_time[0]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_preheat_time[1]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_preheat_time[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_preheat_time[3]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_preheat_time[4]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_preheat_time[5]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_preheat_time[6]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_preheat_time[7]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[0]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[2]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- heating	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cooling	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- food_in	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[0]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[1]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[2]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[3]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[4]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[5]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[7]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cook_time_set[0]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cook_time_set[1]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cook_time_set[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cook_time_set[3]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cook_time_set[4]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cook_time_set[5]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cook_time_set[6]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cook_time_set[7]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- open_oven	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_done	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cool_done	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_reached	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_temp[0]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- program_select[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- program_select[1]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- program_select[2]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_temp[1]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_temp[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_temp[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_temp[4]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_temp[5]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_temp[6]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_temp[7]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_cook_time[0]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_cook_time[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_cook_time[2]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_cook_time[3]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_cook_time[4]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_cook_time[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_cook_time[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_cook_time[7]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_start : std_logic;
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
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector0~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \user_preheat_time[0]~input_o\ : std_logic;
SIGNAL \user_preheat_time[1]~input_o\ : std_logic;
SIGNAL \user_preheat_time[2]~input_o\ : std_logic;
SIGNAL \user_preheat_time[3]~input_o\ : std_logic;
SIGNAL \user_preheat_time[4]~input_o\ : std_logic;
SIGNAL \user_preheat_time[5]~input_o\ : std_logic;
SIGNAL \user_preheat_time[6]~input_o\ : std_logic;
SIGNAL \user_preheat_time[7]~input_o\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \temp_reached~input_o\ : std_logic;
SIGNAL \Selector0~7_combout\ : std_logic;
SIGNAL \cool_done~input_o\ : std_logic;
SIGNAL \time_done~input_o\ : std_logic;
SIGNAL \open_oven~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.FINISH~q\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \Selector0~9_combout\ : std_logic;
SIGNAL \current_state.IDLE~q\ : std_logic;
SIGNAL \Selector0~11_combout\ : std_logic;
SIGNAL \Selector0~10_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \current_state.COOK~q\ : std_logic;
SIGNAL \Selector0~8_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \current_state.COOL~q\ : std_logic;
SIGNAL \Selector0~6_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \current_state.PreHEAT~q\ : std_logic;
SIGNAL \program_select[2]~input_o\ : std_logic;
SIGNAL \program_select[1]~input_o\ : std_logic;
SIGNAL \user_temp[0]~input_o\ : std_logic;
SIGNAL \program_select[0]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Selector0~4clkctrl_outclk\ : std_logic;
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
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_start <= start;
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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\Selector0~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector0~4_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y15_N23
\state[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \state[0]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\state[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \state[1]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\state[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \state[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
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

-- Location: IOOBUF_X0_Y34_N16
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

-- Location: IOOBUF_X0_Y34_N2
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

-- Location: IOOBUF_X83_Y73_N16
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

-- Location: IOOBUF_X83_Y73_N9
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

-- Location: IOOBUF_X98_Y73_N16
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

-- Location: IOOBUF_X83_Y73_N23
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

-- Location: IOOBUF_X98_Y73_N23
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

-- Location: IOOBUF_X85_Y73_N2
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

-- Location: IOOBUF_X79_Y73_N9
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

-- Location: IOOBUF_X100_Y73_N23
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

-- Location: IOOBUF_X102_Y73_N9
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

-- Location: IOOBUF_X100_Y73_N16
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

-- Location: IOOBUF_X83_Y73_N2
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

-- Location: IOOBUF_X79_Y73_N2
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

-- Location: IOOBUF_X102_Y73_N2
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

-- Location: IOOBUF_X85_Y73_N9
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

-- Location: IOOBUF_X74_Y73_N23
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

-- Location: IOOBUF_X72_Y73_N9
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

-- Location: IOIBUF_X0_Y33_N22
\temp_reached~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_temp_reached,
	o => \temp_reached~input_o\);

-- Location: LCCOMB_X1_Y36_N10
\Selector0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~7_combout\ = (\temp_reached~input_o\ & \current_state.PreHEAT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temp_reached~input_o\,
	datad => \current_state.PreHEAT~q\,
	combout => \Selector0~7_combout\);

-- Location: IOIBUF_X0_Y35_N15
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

-- Location: IOIBUF_X0_Y35_N8
\open_oven~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_open_oven,
	o => \open_oven~input_o\);

-- Location: LCCOMB_X1_Y36_N18
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\Selector0~6_combout\ & ((\Selector0~11_combout\ & (\current_state.FINISH~q\)) # (!\Selector0~11_combout\ & ((\Selector0~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~11_combout\,
	datab => \Selector0~6_combout\,
	datac => \current_state.FINISH~q\,
	datad => \Selector0~7_combout\,
	combout => \Selector3~0_combout\);

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

-- Location: CLKCTRL_G4
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

-- Location: FF_X1_Y36_N19
\current_state.FINISH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.FINISH~q\);

-- Location: LCCOMB_X1_Y36_N16
\Selector0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = (\open_oven~input_o\ & (!\current_state.FINISH~q\ & ((!\current_state.COOK~q\) # (!\time_done~input_o\)))) # (!\open_oven~input_o\ & (((!\current_state.COOK~q\)) # (!\time_done~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \open_oven~input_o\,
	datab => \time_done~input_o\,
	datac => \current_state.COOK~q\,
	datad => \current_state.FINISH~q\,
	combout => \Selector0~5_combout\);

-- Location: IOIBUF_X0_Y35_N1
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X1_Y36_N26
\Selector0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~9_combout\ = (\cool_done~input_o\ & (!\current_state.COOL~q\ & ((\start~input_o\) # (\current_state.IDLE~q\)))) # (!\cool_done~input_o\ & ((\start~input_o\) # ((\current_state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cool_done~input_o\,
	datab => \start~input_o\,
	datac => \current_state.IDLE~q\,
	datad => \current_state.COOL~q\,
	combout => \Selector0~9_combout\);

-- Location: FF_X1_Y36_N27
\current_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector0~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.IDLE~q\);

-- Location: LCCOMB_X1_Y36_N20
\Selector0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~11_combout\ = (!\Selector0~7_combout\ & (\Selector0~5_combout\ & ((\current_state.IDLE~q\) # (!\start~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~7_combout\,
	datab => \Selector0~5_combout\,
	datac => \start~input_o\,
	datad => \current_state.IDLE~q\,
	combout => \Selector0~11_combout\);

-- Location: LCCOMB_X1_Y36_N12
\Selector0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~10_combout\ = (\open_oven~input_o\ & \current_state.FINISH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \open_oven~input_o\,
	datad => \current_state.FINISH~q\,
	combout => \Selector0~10_combout\);

-- Location: LCCOMB_X1_Y36_N4
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\Selector0~6_combout\ & ((\Selector0~11_combout\ & (\current_state.COOK~q\)) # (!\Selector0~11_combout\ & ((\Selector0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~11_combout\,
	datab => \Selector0~6_combout\,
	datac => \current_state.COOK~q\,
	datad => \Selector0~10_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X1_Y36_N5
\current_state.COOK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.COOK~q\);

-- Location: LCCOMB_X1_Y36_N22
\Selector0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~8_combout\ = (\time_done~input_o\ & \current_state.COOK~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \time_done~input_o\,
	datac => \current_state.COOK~q\,
	combout => \Selector0~8_combout\);

-- Location: LCCOMB_X1_Y36_N24
\Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\Selector0~11_combout\ & (((\current_state.COOL~q\ & !\cool_done~input_o\)))) # (!\Selector0~11_combout\ & (\Selector0~8_combout\ & ((!\cool_done~input_o\) # (!\current_state.COOL~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~8_combout\,
	datab => \Selector0~11_combout\,
	datac => \current_state.COOL~q\,
	datad => \cool_done~input_o\,
	combout => \Selector4~2_combout\);

-- Location: FF_X1_Y36_N25
\current_state.COOL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.COOL~q\);

-- Location: LCCOMB_X1_Y36_N14
\Selector0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~6_combout\ = (\cool_done~input_o\ & \current_state.COOL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cool_done~input_o\,
	datad => \current_state.COOL~q\,
	combout => \Selector0~6_combout\);

-- Location: LCCOMB_X1_Y36_N8
\Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (!\current_state.IDLE~q\ & \start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.IDLE~q\,
	datad => \start~input_o\,
	combout => \Selector0~4_combout\);

-- Location: LCCOMB_X1_Y36_N30
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\Selector0~7_combout\ & (!\Selector0~6_combout\ & (\Selector0~4_combout\ & \Selector0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~7_combout\,
	datab => \Selector0~6_combout\,
	datac => \Selector0~4_combout\,
	datad => \Selector0~5_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X1_Y36_N28
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((\Selector0~11_combout\ & (\current_state.PreHEAT~q\ & !\Selector0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Selector0~11_combout\,
	datac => \current_state.PreHEAT~q\,
	datad => \Selector0~6_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X1_Y36_N29
\current_state.PreHEAT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.PreHEAT~q\);

-- Location: IOIBUF_X74_Y73_N15
\program_select[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_program_select(2),
	o => \program_select[2]~input_o\);

-- Location: IOIBUF_X89_Y73_N8
\program_select[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_program_select(1),
	o => \program_select[1]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\user_temp[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_temp(0),
	o => \user_temp[0]~input_o\);

-- Location: IOIBUF_X87_Y73_N15
\program_select[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_program_select(0),
	o => \program_select[0]~input_o\);

-- Location: LCCOMB_X88_Y72_N24
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\program_select[2]~input_o\ & (!\program_select[1]~input_o\ & (\user_temp[0]~input_o\ & \program_select[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_select[2]~input_o\,
	datab => \program_select[1]~input_o\,
	datac => \user_temp[0]~input_o\,
	datad => \program_select[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: CLKCTRL_G3
\Selector0~4clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector0~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector0~4clkctrl_outclk\);

-- Location: LCCOMB_X87_Y72_N28
\temp_set[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_set[0]$latch~combout\ = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Mux7~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((\temp_set[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~0_combout\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => \temp_set[0]$latch~combout\,
	combout => \temp_set[0]$latch~combout\);

-- Location: IOIBUF_X81_Y73_N15
\user_temp[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_temp(1),
	o => \user_temp[1]~input_o\);

-- Location: LCCOMB_X88_Y72_N2
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\program_select[1]~input_o\ & ((\program_select[2]~input_o\) # ((\user_temp[1]~input_o\ & \program_select[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_temp[1]~input_o\,
	datab => \program_select[0]~input_o\,
	datac => \program_select[2]~input_o\,
	datad => \program_select[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X87_Y72_N10
\temp_set[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_set[1]$latch~combout\ = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Mux6~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((\temp_set[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => \temp_set[1]$latch~combout\,
	combout => \temp_set[1]$latch~combout\);

-- Location: IOIBUF_X87_Y73_N8
\user_temp[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_temp(2),
	o => \user_temp[2]~input_o\);

-- Location: LCCOMB_X88_Y72_N16
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\program_select[2]~input_o\ & ((\program_select[0]~input_o\ & (\user_temp[2]~input_o\ & !\program_select[1]~input_o\)) # (!\program_select[0]~input_o\ & ((\program_select[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_temp[2]~input_o\,
	datab => \program_select[0]~input_o\,
	datac => \program_select[2]~input_o\,
	datad => \program_select[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X95_Y72_N28
\temp_set[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_set[2]$latch~combout\ = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Mux5~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((\temp_set[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => \temp_set[2]$latch~combout\,
	combout => \temp_set[2]$latch~combout\);

-- Location: IOIBUF_X81_Y73_N22
\user_temp[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_temp(3),
	o => \user_temp[3]~input_o\);

-- Location: LCCOMB_X88_Y72_N6
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\program_select[2]~input_o\) # ((\program_select[0]~input_o\ & ((\user_temp[3]~input_o\) # (\program_select[1]~input_o\))) # (!\program_select[0]~input_o\ & ((!\program_select[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_temp[3]~input_o\,
	datab => \program_select[0]~input_o\,
	datac => \program_select[2]~input_o\,
	datad => \program_select[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X87_Y72_N20
\temp_set[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_set[3]$latch~combout\ = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Mux4~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((\temp_set[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => \temp_set[3]$latch~combout\,
	combout => \temp_set[3]$latch~combout\);

-- Location: IOIBUF_X81_Y73_N1
\user_temp[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_temp(4),
	o => \user_temp[4]~input_o\);

-- Location: LCCOMB_X88_Y72_N4
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\program_select[2]~input_o\ & ((\program_select[0]~input_o\ & (\user_temp[4]~input_o\ & !\program_select[1]~input_o\)) # (!\program_select[0]~input_o\ & ((\program_select[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_temp[4]~input_o\,
	datab => \program_select[0]~input_o\,
	datac => \program_select[2]~input_o\,
	datad => \program_select[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X95_Y72_N2
\temp_set[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_set[4]$latch~combout\ = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Mux3~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((\temp_set[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datac => \Selector0~4clkctrl_outclk\,
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

-- Location: LCCOMB_X88_Y72_N14
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\program_select[0]~input_o\ & (!\program_select[1]~input_o\ & ((\user_temp[5]~input_o\) # (\program_select[2]~input_o\)))) # (!\program_select[0]~input_o\ & ((\program_select[2]~input_o\ $ (\program_select[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_temp[5]~input_o\,
	datab => \program_select[0]~input_o\,
	datac => \program_select[2]~input_o\,
	datad => \program_select[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X87_Y72_N18
\temp_set[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_set[5]$latch~combout\ = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Mux2~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((\temp_set[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~0_combout\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => \temp_set[5]$latch~combout\,
	combout => \temp_set[5]$latch~combout\);

-- Location: IOIBUF_X96_Y73_N22
\user_temp[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_temp(6),
	o => \user_temp[6]~input_o\);

-- Location: LCCOMB_X88_Y72_N12
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\program_select[0]~input_o\ & ((\program_select[1]~input_o\) # ((\user_temp[6]~input_o\ & !\program_select[2]~input_o\)))) # (!\program_select[0]~input_o\ & ((\program_select[2]~input_o\ $ (!\program_select[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_temp[6]~input_o\,
	datab => \program_select[0]~input_o\,
	datac => \program_select[2]~input_o\,
	datad => \program_select[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X87_Y72_N12
\temp_set[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_set[6]$latch~combout\ = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Mux1~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((\temp_set[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~0_combout\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => \temp_set[6]$latch~combout\,
	combout => \temp_set[6]$latch~combout\);

-- Location: IOIBUF_X87_Y73_N22
\user_temp[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_temp(7),
	o => \user_temp[7]~input_o\);

-- Location: LCCOMB_X88_Y72_N18
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\user_temp[7]~input_o\) # (((\program_select[2]~input_o\) # (\program_select[1]~input_o\)) # (!\program_select[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_temp[7]~input_o\,
	datab => \program_select[0]~input_o\,
	datac => \program_select[2]~input_o\,
	datad => \program_select[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X96_Y72_N24
\temp_set[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_set[7]$latch~combout\ = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Mux0~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((\temp_set[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => \temp_set[7]$latch~combout\,
	combout => \temp_set[7]$latch~combout\);

-- Location: IOIBUF_X94_Y73_N8
\user_cook_time[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_cook_time(0),
	o => \user_cook_time[0]~input_o\);

-- Location: LCCOMB_X88_Y72_N0
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!\program_select[2]~input_o\ & ((\program_select[0]~input_o\ & (\user_cook_time[0]~input_o\ & !\program_select[1]~input_o\)) # (!\program_select[0]~input_o\ & ((\program_select[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_cook_time[0]~input_o\,
	datab => \program_select[0]~input_o\,
	datac => \program_select[2]~input_o\,
	datad => \program_select[1]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X96_Y72_N10
\cook_time_set[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \cook_time_set[0]$latch~combout\ = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Mux15~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((\cook_time_set[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux15~0_combout\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => \cook_time_set[0]$latch~combout\,
	combout => \cook_time_set[0]$latch~combout\);

-- Location: IOIBUF_X94_Y73_N1
\user_cook_time[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_cook_time(1),
	o => \user_cook_time[1]~input_o\);

-- Location: LCCOMB_X88_Y72_N26
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\program_select[2]~input_o\ & (((\program_select[1]~input_o\)))) # (!\program_select[2]~input_o\ & (((\user_cook_time[1]~input_o\ & !\program_select[1]~input_o\)) # (!\program_select[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_cook_time[1]~input_o\,
	datab => \program_select[0]~input_o\,
	datac => \program_select[2]~input_o\,
	datad => \program_select[1]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X96_Y72_N28
\cook_time_set[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \cook_time_set[1]$latch~combout\ = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Mux14~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((\cook_time_set[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => \cook_time_set[1]$latch~combout\,
	combout => \cook_time_set[1]$latch~combout\);

-- Location: IOIBUF_X91_Y73_N15
\user_cook_time[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_cook_time(2),
	o => \user_cook_time[2]~input_o\);

-- Location: LCCOMB_X88_Y72_N20
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\program_select[2]~input_o\ & (((!\program_select[1]~input_o\)))) # (!\program_select[2]~input_o\ & ((\program_select[1]~input_o\) # ((\user_cook_time[2]~input_o\ & \program_select[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_cook_time[2]~input_o\,
	datab => \program_select[0]~input_o\,
	datac => \program_select[2]~input_o\,
	datad => \program_select[1]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X87_Y72_N2
\cook_time_set[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \cook_time_set[2]$latch~combout\ = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Mux13~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((\cook_time_set[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~0_combout\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => \cook_time_set[2]$latch~combout\,
	combout => \cook_time_set[2]$latch~combout\);

-- Location: IOIBUF_X85_Y73_N15
\user_cook_time[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_cook_time(3),
	o => \user_cook_time[3]~input_o\);

-- Location: LCCOMB_X88_Y72_N30
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\program_select[2]~input_o\ & ((\program_select[0]~input_o\ & (\user_cook_time[3]~input_o\ & !\program_select[1]~input_o\)) # (!\program_select[0]~input_o\ & ((\program_select[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_cook_time[3]~input_o\,
	datab => \program_select[0]~input_o\,
	datac => \program_select[2]~input_o\,
	datad => \program_select[1]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X87_Y72_N0
\cook_time_set[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \cook_time_set[3]$latch~combout\ = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Mux12~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((\cook_time_set[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => \cook_time_set[3]$latch~combout\,
	combout => \cook_time_set[3]$latch~combout\);

-- Location: IOIBUF_X96_Y73_N15
\user_cook_time[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_cook_time(4),
	o => \user_cook_time[4]~input_o\);

-- Location: LCCOMB_X88_Y72_N28
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\program_select[2]~input_o\) # ((\program_select[1]~input_o\ & ((\program_select[0]~input_o\))) # (!\program_select[1]~input_o\ & ((\user_cook_time[4]~input_o\) # (!\program_select[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_cook_time[4]~input_o\,
	datab => \program_select[1]~input_o\,
	datac => \program_select[2]~input_o\,
	datad => \program_select[0]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X96_Y72_N6
\cook_time_set[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \cook_time_set[4]$latch~combout\ = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Mux11~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((\cook_time_set[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => \cook_time_set[4]$latch~combout\,
	combout => \cook_time_set[4]$latch~combout\);

-- Location: IOIBUF_X81_Y73_N8
\user_cook_time[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_cook_time(5),
	o => \user_cook_time[5]~input_o\);

-- Location: LCCOMB_X88_Y72_N10
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\user_cook_time[5]~input_o\ & (\program_select[0]~input_o\ & (!\program_select[2]~input_o\ & !\program_select[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_cook_time[5]~input_o\,
	datab => \program_select[0]~input_o\,
	datac => \program_select[2]~input_o\,
	datad => \program_select[1]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X87_Y72_N6
\cook_time_set[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \cook_time_set[5]$latch~combout\ = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Mux10~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((\cook_time_set[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux10~0_combout\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => \cook_time_set[5]$latch~combout\,
	combout => \cook_time_set[5]$latch~combout\);

-- Location: IOIBUF_X89_Y73_N15
\user_cook_time[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_cook_time(6),
	o => \user_cook_time[6]~input_o\);

-- Location: LCCOMB_X88_Y72_N8
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!\program_select[2]~input_o\ & (\program_select[0]~input_o\ & (\user_cook_time[6]~input_o\ & !\program_select[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_select[2]~input_o\,
	datab => \program_select[0]~input_o\,
	datac => \user_cook_time[6]~input_o\,
	datad => \program_select[1]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X85_Y72_N20
\cook_time_set[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \cook_time_set[6]$latch~combout\ = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Mux9~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((\cook_time_set[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux9~0_combout\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => \cook_time_set[6]$latch~combout\,
	combout => \cook_time_set[6]$latch~combout\);

-- Location: IOIBUF_X85_Y73_N22
\user_cook_time[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_cook_time(7),
	o => \user_cook_time[7]~input_o\);

-- Location: LCCOMB_X88_Y72_N22
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\user_cook_time[7]~input_o\ & (\program_select[0]~input_o\ & (!\program_select[2]~input_o\ & !\program_select[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \user_cook_time[7]~input_o\,
	datab => \program_select[0]~input_o\,
	datac => \program_select[2]~input_o\,
	datad => \program_select[1]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X85_Y72_N6
\cook_time_set[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \cook_time_set[7]$latch~combout\ = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Mux8~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((\cook_time_set[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => \cook_time_set[7]$latch~combout\,
	combout => \cook_time_set[7]$latch~combout\);

-- Location: IOIBUF_X111_Y73_N8
\user_preheat_time[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_preheat_time(0),
	o => \user_preheat_time[0]~input_o\);

-- Location: IOIBUF_X42_Y0_N22
\user_preheat_time[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_preheat_time(1),
	o => \user_preheat_time[1]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\user_preheat_time[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_preheat_time(2),
	o => \user_preheat_time[2]~input_o\);

-- Location: IOIBUF_X115_Y11_N1
\user_preheat_time[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_preheat_time(3),
	o => \user_preheat_time[3]~input_o\);

-- Location: IOIBUF_X67_Y0_N8
\user_preheat_time[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_preheat_time(4),
	o => \user_preheat_time[4]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\user_preheat_time[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_preheat_time(5),
	o => \user_preheat_time[5]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\user_preheat_time[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_preheat_time(6),
	o => \user_preheat_time[6]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\user_preheat_time[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_preheat_time(7),
	o => \user_preheat_time[7]~input_o\);

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
END structure;


