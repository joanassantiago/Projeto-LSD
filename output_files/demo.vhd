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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"
-- CREATED		"Mon May 27 14:47:22 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY demo IS 
	PORT
	(
		CLOCK_50 :  IN  STD_LOGIC;
		KEY :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		SW6 :  IN  STD_LOGIC;
		SW5 :  IN  STD_LOGIC;
		SW4 :  IN  STD_LOGIC;
		SW1 :  IN  STD_LOGIC;
		SW7 :  IN  STD_LOGIC;
		SW0 :  IN  STD_LOGIC;
		HEX0 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX1 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX2 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX4 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX5 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		LEDG :  OUT  STD_LOGIC_VECTOR(0 TO 0);
		LEDR :  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END demo;

ARCHITECTURE bdf_type OF demo IS 

COMPONENT airfryerfsm
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 run : IN STD_LOGIC;
		 open_oven : IN STD_LOGIC;
		 on_off : IN STD_LOGIC;
		 en : IN STD_LOGIC;
		 time_done : IN STD_LOGIC;
		 cool_done : IN STD_LOGIC;
		 program_select : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 user_cook_time : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 user_preheat_time : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 user_temp : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 heating : OUT STD_LOGIC;
		 cooling : OUT STD_LOGIC;
		 food_in : OUT STD_LOGIC;
		 cook_time_set : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 preheat_set : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 state : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		 temp_set : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT timertemperature
	PORT(reset : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 heating : IN STD_LOGIC;
		 cooling : IN STD_LOGIC;
		 timeVal : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 timeExp : OUT STD_LOGIC;
		 disp_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 disp_2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 disp_3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT bin7segdecoder
	PORT(binInput : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 decOut_n : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT temperaturecontrol
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 temp_up : IN STD_LOGIC;
		 temp_down : IN STD_LOGIC;
		 temp_set : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT timecontrol
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 time_up : IN STD_LOGIC;
		 time_down : IN STD_LOGIC;
		 time_cook : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 time_preheat : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT timertime
	PORT(reset : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 cook_time_val : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 preheat_time_val : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 preheat_done : OUT STD_LOGIC;
		 cook_done : OUT STD_LOGIC;
		 disp_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 disp_2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT clkdividern
GENERIC (k : INTEGER
			);
	PORT(clkIn : IN STD_LOGIC;
		 clkOut : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC_VECTOR(7 DOWNTO 0);

SIGNAL	GDFX_TEMP_SIGNAL_0 :  STD_LOGIC_VECTOR(2 DOWNTO 0);

BEGIN 
SYNTHESIZED_WIRE_28 <= '0';
SYNTHESIZED_WIRE_19 <= '1';

GDFX_TEMP_SIGNAL_0 <= (SW6 & SW5 & SW4);


b2v_inst : airfryerfsm
PORT MAP(clk => SYNTHESIZED_WIRE_27,
		 reset => SYNTHESIZED_WIRE_28,
		 run => SW1,
		 on_off => SW0,
		 en => SYNTHESIZED_WIRE_2,
		 time_done => SYNTHESIZED_WIRE_3,
		 cool_done => SYNTHESIZED_WIRE_4,
		 program_select => GDFX_TEMP_SIGNAL_0,
		 user_cook_time => SYNTHESIZED_WIRE_5,
		 user_preheat_time => SYNTHESIZED_WIRE_6,
		 user_temp => SYNTHESIZED_WIRE_7,
		 heating => SYNTHESIZED_WIRE_10,
		 cooling => SYNTHESIZED_WIRE_11,
		 food_in => LEDG(0),
		 cook_time_set => SYNTHESIZED_WIRE_25,
		 preheat_set => SYNTHESIZED_WIRE_26,
		 state => LEDR,
		 temp_set => SYNTHESIZED_WIRE_12);


b2v_inst10 : timertemperature
PORT MAP(reset => SYNTHESIZED_WIRE_28,
		 clk => SYNTHESIZED_WIRE_27,
		 heating => SYNTHESIZED_WIRE_10,
		 cooling => SYNTHESIZED_WIRE_11,
		 timeVal => SYNTHESIZED_WIRE_12,
		 timeExp => SYNTHESIZED_WIRE_4,
		 disp_1 => SYNTHESIZED_WIRE_14,
		 disp_2 => SYNTHESIZED_WIRE_15,
		 disp_3 => SYNTHESIZED_WIRE_16);


b2v_inst11 : bin7segdecoder
PORT MAP(binInput => SYNTHESIZED_WIRE_13,
		 decOut_n => HEX4);


b2v_inst12 : bin7segdecoder
PORT MAP(binInput => SYNTHESIZED_WIRE_14,
		 decOut_n => HEX0);


b2v_inst13 : bin7segdecoder
PORT MAP(binInput => SYNTHESIZED_WIRE_15,
		 decOut_n => HEX1);


b2v_inst14 : bin7segdecoder
PORT MAP(binInput => SYNTHESIZED_WIRE_16,
		 decOut_n => HEX2);


b2v_inst17 : temperaturecontrol
PORT MAP(clk => SYNTHESIZED_WIRE_27,
		 reset => SYNTHESIZED_WIRE_28,
		 enable => SYNTHESIZED_WIRE_19,
		 temp_up => KEY(2),
		 temp_down => KEY(3),
		 temp_set => SYNTHESIZED_WIRE_7);


b2v_inst2 : bin7segdecoder
PORT MAP(binInput => SYNTHESIZED_WIRE_20,
		 decOut_n => HEX5);


b2v_inst22 : timecontrol
PORT MAP(clk => SYNTHESIZED_WIRE_27,
		 reset => SYNTHESIZED_WIRE_28,
		 enable => SW7,
		 time_up => KEY(0),
		 time_down => KEY(1),
		 time_cook => SYNTHESIZED_WIRE_5,
		 time_preheat => SYNTHESIZED_WIRE_6);



b2v_inst25 : timertime
PORT MAP(reset => SYNTHESIZED_WIRE_28,
		 clk => SYNTHESIZED_WIRE_27,
		 cook_time_val => SYNTHESIZED_WIRE_25,
		 preheat_time_val => SYNTHESIZED_WIRE_26,
		 preheat_done => SYNTHESIZED_WIRE_2,
		 cook_done => SYNTHESIZED_WIRE_3,
		 disp_1 => SYNTHESIZED_WIRE_20,
		 disp_2 => SYNTHESIZED_WIRE_13);


b2v_inst3 : clkdividern
GENERIC MAP(k => 50000000
			)
PORT MAP(clkIn => CLOCK_50,
		 clkOut => SYNTHESIZED_WIRE_27);




END bdf_type;