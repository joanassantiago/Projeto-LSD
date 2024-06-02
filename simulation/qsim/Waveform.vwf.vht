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
-- Generated on "06/01/2024 10:57:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TimerTime
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TimerTime_vhd_vec_tst IS
END TimerTime_vhd_vec_tst;
ARCHITECTURE TimerTime_arch OF TimerTime_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL cook_val : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL cookactive : STD_LOGIC;
SIGNAL cookdone : STD_LOGIC;
SIGNAL disp_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL disp_2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL phactive : STD_LOGIC;
SIGNAL phdone : STD_LOGIC;
SIGNAL preheat_val : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT TimerTime
	PORT (
	clk : IN STD_LOGIC;
	cook_val : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	cookactive : IN STD_LOGIC;
	cookdone : BUFFER STD_LOGIC;
	disp_1 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	disp_2 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	phactive : IN STD_LOGIC;
	phdone : BUFFER STD_LOGIC;
	preheat_val : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : TimerTime
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	cook_val => cook_val,
	cookactive => cookactive,
	cookdone => cookdone,
	disp_1 => disp_1,
	disp_2 => disp_2,
	phactive => phactive,
	phdone => phdone,
	preheat_val => preheat_val,
	reset => reset
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

-- cookactive
t_prcs_cookactive: PROCESS
BEGIN
	cookactive <= '0';
	WAIT FOR 220000 ps;
	cookactive <= '1';
	WAIT FOR 410000 ps;
	cookactive <= '0';
WAIT;
END PROCESS t_prcs_cookactive;
-- cook_val[7]
t_prcs_cook_val_7: PROCESS
BEGIN
	cook_val(7) <= '0';
WAIT;
END PROCESS t_prcs_cook_val_7;
-- cook_val[6]
t_prcs_cook_val_6: PROCESS
BEGIN
	cook_val(6) <= '0';
WAIT;
END PROCESS t_prcs_cook_val_6;
-- cook_val[5]
t_prcs_cook_val_5: PROCESS
BEGIN
	cook_val(5) <= '0';
WAIT;
END PROCESS t_prcs_cook_val_5;
-- cook_val[4]
t_prcs_cook_val_4: PROCESS
BEGIN
	cook_val(4) <= '1';
WAIT;
END PROCESS t_prcs_cook_val_4;
-- cook_val[3]
t_prcs_cook_val_3: PROCESS
BEGIN
	cook_val(3) <= '0';
WAIT;
END PROCESS t_prcs_cook_val_3;
-- cook_val[2]
t_prcs_cook_val_2: PROCESS
BEGIN
	cook_val(2) <= '0';
WAIT;
END PROCESS t_prcs_cook_val_2;
-- cook_val[1]
t_prcs_cook_val_1: PROCESS
BEGIN
	cook_val(1) <= '1';
WAIT;
END PROCESS t_prcs_cook_val_1;
-- cook_val[0]
t_prcs_cook_val_0: PROCESS
BEGIN
	cook_val(0) <= '0';
WAIT;
END PROCESS t_prcs_cook_val_0;

-- phactive
t_prcs_phactive: PROCESS
BEGIN
	phactive <= '0';
	WAIT FOR 70000 ps;
	phactive <= '1';
	WAIT FOR 100000 ps;
	phactive <= '0';
WAIT;
END PROCESS t_prcs_phactive;
-- preheat_val[7]
t_prcs_preheat_val_7: PROCESS
BEGIN
	preheat_val(7) <= '0';
WAIT;
END PROCESS t_prcs_preheat_val_7;
-- preheat_val[6]
t_prcs_preheat_val_6: PROCESS
BEGIN
	preheat_val(6) <= '0';
WAIT;
END PROCESS t_prcs_preheat_val_6;
-- preheat_val[5]
t_prcs_preheat_val_5: PROCESS
BEGIN
	preheat_val(5) <= '0';
WAIT;
END PROCESS t_prcs_preheat_val_5;
-- preheat_val[4]
t_prcs_preheat_val_4: PROCESS
BEGIN
	preheat_val(4) <= '0';
WAIT;
END PROCESS t_prcs_preheat_val_4;
-- preheat_val[3]
t_prcs_preheat_val_3: PROCESS
BEGIN
	preheat_val(3) <= '0';
WAIT;
END PROCESS t_prcs_preheat_val_3;
-- preheat_val[2]
t_prcs_preheat_val_2: PROCESS
BEGIN
	preheat_val(2) <= '0';
WAIT;
END PROCESS t_prcs_preheat_val_2;
-- preheat_val[1]
t_prcs_preheat_val_1: PROCESS
BEGIN
	preheat_val(1) <= '1';
WAIT;
END PROCESS t_prcs_preheat_val_1;
-- preheat_val[0]
t_prcs_preheat_val_0: PROCESS
BEGIN
	preheat_val(0) <= '1';
WAIT;
END PROCESS t_prcs_preheat_val_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 60000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END TimerTime_arch;
