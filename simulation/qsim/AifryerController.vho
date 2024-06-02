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

-- DATE "06/02/2024 10:54:47"

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

ENTITY 	TemperatureControl IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	temp_up : IN std_logic;
	temp_down : IN std_logic;
	temp_set : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END TemperatureControl;

-- Design Ports Information
-- temp_set[0]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[1]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[2]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[3]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[4]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[5]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[6]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_set[7]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_down	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp_up	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TemperatureControl IS
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
SIGNAL ww_temp_up : std_logic;
SIGNAL ww_temp_down : std_logic;
SIGNAL ww_temp_set : std_logic_vector(7 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \temp_set[0]~output_o\ : std_logic;
SIGNAL \temp_set[1]~output_o\ : std_logic;
SIGNAL \temp_set[2]~output_o\ : std_logic;
SIGNAL \temp_set[3]~output_o\ : std_logic;
SIGNAL \temp_set[4]~output_o\ : std_logic;
SIGNAL \temp_set[5]~output_o\ : std_logic;
SIGNAL \temp_set[6]~output_o\ : std_logic;
SIGNAL \temp_set[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \temperature[0]~8_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \temp_up~input_o\ : std_logic;
SIGNAL \temp_down~input_o\ : std_logic;
SIGNAL \temperature[0]~9\ : std_logic;
SIGNAL \temperature[1]~14_combout\ : std_logic;
SIGNAL \temperature[1]~15\ : std_logic;
SIGNAL \temperature[2]~16_combout\ : std_logic;
SIGNAL \temperature[2]~17\ : std_logic;
SIGNAL \temperature[3]~18_combout\ : std_logic;
SIGNAL \temperature[3]~19\ : std_logic;
SIGNAL \temperature[4]~20_combout\ : std_logic;
SIGNAL \temperature[4]~21\ : std_logic;
SIGNAL \temperature[5]~22_combout\ : std_logic;
SIGNAL \temperature[5]~23\ : std_logic;
SIGNAL \temperature[6]~24_combout\ : std_logic;
SIGNAL \temperature[6]~25\ : std_logic;
SIGNAL \temperature[7]~26_combout\ : std_logic;
SIGNAL \temperature~10_combout\ : std_logic;
SIGNAL \temperature~11_combout\ : std_logic;
SIGNAL \temperature~12_combout\ : std_logic;
SIGNAL \temperature~13_combout\ : std_logic;
SIGNAL temperature : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL ALT_INV_temperature : std_logic_vector(4 DOWNTO 2);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_temp_up <= temp_up;
ww_temp_down <= temp_down;
temp_set <= ww_temp_set;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
ALT_INV_temperature(4) <= NOT temperature(4);
ALT_INV_temperature(2) <= NOT temperature(2);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y25_N23
\temp_set[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temperature(0),
	devoe => ww_devoe,
	o => \temp_set[0]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\temp_set[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temperature(1),
	devoe => ww_devoe,
	o => \temp_set[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\temp_set[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_temperature(2),
	devoe => ww_devoe,
	o => \temp_set[2]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\temp_set[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temperature(3),
	devoe => ww_devoe,
	o => \temp_set[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\temp_set[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_temperature(4),
	devoe => ww_devoe,
	o => \temp_set[4]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\temp_set[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temperature(5),
	devoe => ww_devoe,
	o => \temp_set[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\temp_set[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temperature(6),
	devoe => ww_devoe,
	o => \temp_set[6]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\temp_set[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temperature(7),
	devoe => ww_devoe,
	o => \temp_set[7]~output_o\);

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

-- Location: LCCOMB_X1_Y24_N12
\temperature[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \temperature[0]~8_combout\ = temperature(0) $ (VCC)
-- \temperature[0]~9\ = CARRY(temperature(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temperature(0),
	datad => VCC,
	combout => \temperature[0]~8_combout\,
	cout => \temperature[0]~9\);

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

-- Location: IOIBUF_X0_Y22_N22
\temp_up~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_temp_up,
	o => \temp_up~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\temp_down~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_temp_down,
	o => \temp_down~input_o\);

-- Location: LCCOMB_X1_Y24_N14
\temperature[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \temperature[1]~14_combout\ = (temperature(1) & ((\temp_up~input_o\ & (!\temperature[0]~9\)) # (!\temp_up~input_o\ & (\temperature[0]~9\ & VCC)))) # (!temperature(1) & ((\temp_up~input_o\ & ((\temperature[0]~9\) # (GND))) # (!\temp_up~input_o\ & 
-- (!\temperature[0]~9\))))
-- \temperature[1]~15\ = CARRY((temperature(1) & (\temp_up~input_o\ & !\temperature[0]~9\)) # (!temperature(1) & ((\temp_up~input_o\) # (!\temperature[0]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temperature(1),
	datab => \temp_up~input_o\,
	datad => VCC,
	cin => \temperature[0]~9\,
	combout => \temperature[1]~14_combout\,
	cout => \temperature[1]~15\);

-- Location: FF_X1_Y24_N15
\temperature[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temperature[1]~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \temperature~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperature(1));

-- Location: LCCOMB_X1_Y24_N16
\temperature[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \temperature[2]~16_combout\ = (\temp_up~input_o\ & ((temperature(2) & (\temperature[1]~15\ & VCC)) # (!temperature(2) & (!\temperature[1]~15\)))) # (!\temp_up~input_o\ & ((temperature(2) & (!\temperature[1]~15\)) # (!temperature(2) & 
-- ((\temperature[1]~15\) # (GND)))))
-- \temperature[2]~17\ = CARRY((\temp_up~input_o\ & (!temperature(2) & !\temperature[1]~15\)) # (!\temp_up~input_o\ & ((!\temperature[1]~15\) # (!temperature(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_up~input_o\,
	datab => temperature(2),
	datad => VCC,
	cin => \temperature[1]~15\,
	combout => \temperature[2]~16_combout\,
	cout => \temperature[2]~17\);

-- Location: FF_X1_Y24_N17
\temperature[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temperature[2]~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \temperature~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperature(2));

-- Location: LCCOMB_X1_Y24_N18
\temperature[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \temperature[3]~18_combout\ = (temperature(3) & ((\temp_up~input_o\ & (!\temperature[2]~17\)) # (!\temp_up~input_o\ & (\temperature[2]~17\ & VCC)))) # (!temperature(3) & ((\temp_up~input_o\ & ((\temperature[2]~17\) # (GND))) # (!\temp_up~input_o\ & 
-- (!\temperature[2]~17\))))
-- \temperature[3]~19\ = CARRY((temperature(3) & (\temp_up~input_o\ & !\temperature[2]~17\)) # (!temperature(3) & ((\temp_up~input_o\) # (!\temperature[2]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temperature(3),
	datab => \temp_up~input_o\,
	datad => VCC,
	cin => \temperature[2]~17\,
	combout => \temperature[3]~18_combout\,
	cout => \temperature[3]~19\);

-- Location: FF_X1_Y24_N19
\temperature[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temperature[3]~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \temperature~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperature(3));

-- Location: LCCOMB_X1_Y24_N20
\temperature[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \temperature[4]~20_combout\ = (\temp_up~input_o\ & ((temperature(4) & (\temperature[3]~19\ & VCC)) # (!temperature(4) & (!\temperature[3]~19\)))) # (!\temp_up~input_o\ & ((temperature(4) & (!\temperature[3]~19\)) # (!temperature(4) & 
-- ((\temperature[3]~19\) # (GND)))))
-- \temperature[4]~21\ = CARRY((\temp_up~input_o\ & (!temperature(4) & !\temperature[3]~19\)) # (!\temp_up~input_o\ & ((!\temperature[3]~19\) # (!temperature(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_up~input_o\,
	datab => temperature(4),
	datad => VCC,
	cin => \temperature[3]~19\,
	combout => \temperature[4]~20_combout\,
	cout => \temperature[4]~21\);

-- Location: FF_X1_Y24_N21
\temperature[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temperature[4]~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \temperature~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperature(4));

-- Location: LCCOMB_X1_Y24_N22
\temperature[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \temperature[5]~22_combout\ = (temperature(5) & ((\temp_up~input_o\ & (!\temperature[4]~21\)) # (!\temp_up~input_o\ & (\temperature[4]~21\ & VCC)))) # (!temperature(5) & ((\temp_up~input_o\ & ((\temperature[4]~21\) # (GND))) # (!\temp_up~input_o\ & 
-- (!\temperature[4]~21\))))
-- \temperature[5]~23\ = CARRY((temperature(5) & (\temp_up~input_o\ & !\temperature[4]~21\)) # (!temperature(5) & ((\temp_up~input_o\) # (!\temperature[4]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temperature(5),
	datab => \temp_up~input_o\,
	datad => VCC,
	cin => \temperature[4]~21\,
	combout => \temperature[5]~22_combout\,
	cout => \temperature[5]~23\);

-- Location: FF_X1_Y24_N23
\temperature[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temperature[5]~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \temperature~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperature(5));

-- Location: LCCOMB_X1_Y24_N24
\temperature[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \temperature[6]~24_combout\ = ((\temp_up~input_o\ $ (temperature(6) $ (\temperature[5]~23\)))) # (GND)
-- \temperature[6]~25\ = CARRY((\temp_up~input_o\ & (temperature(6) & !\temperature[5]~23\)) # (!\temp_up~input_o\ & ((temperature(6)) # (!\temperature[5]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_up~input_o\,
	datab => temperature(6),
	datad => VCC,
	cin => \temperature[5]~23\,
	combout => \temperature[6]~24_combout\,
	cout => \temperature[6]~25\);

-- Location: FF_X1_Y24_N25
\temperature[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temperature[6]~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \temperature~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperature(6));

-- Location: LCCOMB_X1_Y24_N26
\temperature[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \temperature[7]~26_combout\ = temperature(7) $ (\temperature[6]~25\ $ (!\temp_up~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temperature(7),
	datad => \temp_up~input_o\,
	cin => \temperature[6]~25\,
	combout => \temperature[7]~26_combout\);

-- Location: FF_X1_Y24_N27
\temperature[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temperature[7]~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \temperature~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperature(7));

-- Location: LCCOMB_X1_Y24_N4
\temperature~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \temperature~10_combout\ = (temperature(7) & (((temperature(5) & temperature(6))) # (!\temp_up~input_o\))) # (!temperature(7) & (!\temp_up~input_o\ & ((temperature(5)) # (temperature(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temperature(7),
	datab => \temp_up~input_o\,
	datac => temperature(5),
	datad => temperature(6),
	combout => \temperature~10_combout\);

-- Location: LCCOMB_X1_Y24_N6
\temperature~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \temperature~11_combout\ = (temperature(3) & (((!temperature(1) & temperature(2))))) # (!temperature(3) & (!temperature(2) & ((temperature(0)) # (temperature(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temperature(0),
	datab => temperature(3),
	datac => temperature(1),
	datad => temperature(2),
	combout => \temperature~11_combout\);

-- Location: LCCOMB_X1_Y24_N28
\temperature~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \temperature~12_combout\ = (!temperature(4) & ((\temperature~11_combout\ & (!\temp_up~input_o\)) # (!\temperature~11_combout\ & ((temperature(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_up~input_o\,
	datab => temperature(4),
	datac => temperature(3),
	datad => \temperature~11_combout\,
	combout => \temperature~12_combout\);

-- Location: LCCOMB_X1_Y24_N2
\temperature~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \temperature~13_combout\ = (\temp_up~input_o\ & (((!\temperature~12_combout\) # (!\temperature~10_combout\)))) # (!\temp_up~input_o\ & (\temp_down~input_o\ & ((\temperature~10_combout\) # (\temperature~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_up~input_o\,
	datab => \temp_down~input_o\,
	datac => \temperature~10_combout\,
	datad => \temperature~12_combout\,
	combout => \temperature~13_combout\);

-- Location: FF_X1_Y24_N13
\temperature[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temperature[0]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \temperature~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temperature(0));

ww_temp_set(0) <= \temp_set[0]~output_o\;

ww_temp_set(1) <= \temp_set[1]~output_o\;

ww_temp_set(2) <= \temp_set[2]~output_o\;

ww_temp_set(3) <= \temp_set[3]~output_o\;

ww_temp_set(4) <= \temp_set[4]~output_o\;

ww_temp_set(5) <= \temp_set[5]~output_o\;

ww_temp_set(6) <= \temp_set[6]~output_o\;

ww_temp_set(7) <= \temp_set[7]~output_o\;
END structure;


