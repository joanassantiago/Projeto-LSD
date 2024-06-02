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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/01/2024 10:36:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TimeControl
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TimeControl_vhd_vec_tst IS
END TimeControl_vhd_vec_tst;
ARCHITECTURE TimeControl_arch OF TimeControl_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL phORcook : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL time_cook : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL time_down : STD_LOGIC;
SIGNAL time_preheat : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL time_up : STD_LOGIC;
COMPONENT TimeControl
	PORT (
	clk : IN STD_LOGIC;
	phORcook : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	time_cook : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	time_down : IN STD_LOGIC;
	time_preheat : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	time_up : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : TimeControl
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	phORcook => phORcook,
	reset => reset,
	time_cook => time_cook,
	time_down => time_down,
	time_preheat => time_preheat,
	time_up => time_up
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- phORcook
t_prcs_phORcook: PROCESS
BEGIN
	phORcook <= '0';
	WAIT FOR 370000 ps;
	phORcook <= '1';
	WAIT FOR 440000 ps;
	phORcook <= '0';
WAIT;
END PROCESS t_prcs_phORcook;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- time_down
t_prcs_time_down: PROCESS
BEGIN
	time_down <= '0';
	WAIT FOR 110000 ps;
	time_down <= '1';
	WAIT FOR 40000 ps;
	time_down <= '0';
	WAIT FOR 160000 ps;
	time_down <= '1';
	WAIT FOR 40000 ps;
	time_down <= '0';
	WAIT FOR 280000 ps;
	time_down <= '1';
	WAIT FOR 170000 ps;
	time_down <= '0';
WAIT;
END PROCESS t_prcs_time_down;

-- time_up
t_prcs_time_up: PROCESS
BEGIN
	time_up <= '0';
	WAIT FOR 10000 ps;
	time_up <= '1';
	WAIT FOR 80000 ps;
	time_up <= '0';
	WAIT FOR 80000 ps;
	time_up <= '1';
	WAIT FOR 120000 ps;
	time_up <= '0';
	WAIT FOR 100000 ps;
	time_up <= '1';
	WAIT FOR 210000 ps;
	time_up <= '0';
WAIT;
END PROCESS t_prcs_time_up;
END TimeControl_arch;
