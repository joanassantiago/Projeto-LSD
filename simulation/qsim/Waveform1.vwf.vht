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
-- Generated on "06/02/2024 10:54:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TemperatureControl
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TemperatureControl_vhd_vec_tst IS
END TemperatureControl_vhd_vec_tst;
ARCHITECTURE TemperatureControl_arch OF TemperatureControl_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL temp_down : STD_LOGIC;
SIGNAL temp_set : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL temp_up : STD_LOGIC;
COMPONENT TemperatureControl
	PORT (
	clk : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	temp_down : IN STD_LOGIC;
	temp_set : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	temp_up : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : TemperatureControl
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	reset => reset,
	temp_down => temp_down,
	temp_set => temp_set,
	temp_up => temp_up
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

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- temp_down
t_prcs_temp_down: PROCESS
BEGIN
	temp_down <= '0';
	WAIT FOR 130000 ps;
	temp_down <= '1';
	WAIT FOR 30000 ps;
	temp_down <= '0';
WAIT;
END PROCESS t_prcs_temp_down;

-- temp_up
t_prcs_temp_up: PROCESS
BEGIN
	temp_up <= '1';
	WAIT FOR 120000 ps;
	temp_up <= '0';
WAIT;
END PROCESS t_prcs_temp_up;
END TemperatureControl_arch;
