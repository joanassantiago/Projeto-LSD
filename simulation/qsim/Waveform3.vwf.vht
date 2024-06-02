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
-- Generated on "06/01/2024 11:30:34"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TimerTemperature
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TimerTemperature_vhd_vec_tst IS
END TimerTemperature_vhd_vec_tst;
ARCHITECTURE TimerTemperature_arch OF TimerTemperature_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL cooling : STD_LOGIC;
SIGNAL coolingDone : STD_LOGIC;
SIGNAL disp_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL disp_2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL disp_3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL heating : STD_LOGIC;
SIGNAL heatingDone : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL tempVal : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT TimerTemperature
	PORT (
	clk : IN STD_LOGIC;
	cooling : IN STD_LOGIC;
	coolingDone : OUT STD_LOGIC;
	disp_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	disp_2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	disp_3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	heating : IN STD_LOGIC;
	heatingDone : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	tempVal : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : TimerTemperature
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	cooling => cooling,
	coolingDone => coolingDone,
	disp_1 => disp_1,
	disp_2 => disp_2,
	disp_3 => disp_3,
	heating => heating,
	heatingDone => heatingDone,
	reset => reset,
	tempVal => tempVal
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
-- tempVal[7]
t_prcs_tempVal_7: PROCESS
BEGIN
	tempVal(7) <= '0';
WAIT;
END PROCESS t_prcs_tempVal_7;
-- tempVal[6]
t_prcs_tempVal_6: PROCESS
BEGIN
	tempVal(6) <= '1';
WAIT;
END PROCESS t_prcs_tempVal_6;
-- tempVal[5]
t_prcs_tempVal_5: PROCESS
BEGIN
	tempVal(5) <= '0';
WAIT;
END PROCESS t_prcs_tempVal_5;
-- tempVal[4]
t_prcs_tempVal_4: PROCESS
BEGIN
	tempVal(4) <= '1';
WAIT;
END PROCESS t_prcs_tempVal_4;
-- tempVal[3]
t_prcs_tempVal_3: PROCESS
BEGIN
	tempVal(3) <= '0';
WAIT;
END PROCESS t_prcs_tempVal_3;
-- tempVal[2]
t_prcs_tempVal_2: PROCESS
BEGIN
	tempVal(2) <= '0';
WAIT;
END PROCESS t_prcs_tempVal_2;
-- tempVal[1]
t_prcs_tempVal_1: PROCESS
BEGIN
	tempVal(1) <= '0';
WAIT;
END PROCESS t_prcs_tempVal_1;
-- tempVal[0]
t_prcs_tempVal_0: PROCESS
BEGIN
	tempVal(0) <= '0';
WAIT;
END PROCESS t_prcs_tempVal_0;

-- cooling
t_prcs_cooling: PROCESS
BEGIN
	cooling <= '0';
	WAIT FOR 420000 ps;
	cooling <= '1';
	WAIT FOR 400000 ps;
	cooling <= '0';
WAIT;
END PROCESS t_prcs_cooling;

-- heating
t_prcs_heating: PROCESS
BEGIN
	heating <= '0';
	WAIT FOR 90000 ps;
	heating <= '1';
	WAIT FOR 290000 ps;
	heating <= '0';
WAIT;
END PROCESS t_prcs_heating;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 70000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END TimerTemperature_arch;
