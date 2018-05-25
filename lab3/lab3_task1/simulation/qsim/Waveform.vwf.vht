-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/25/2018 05:00:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          compare_2bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY compare_2bit_vhd_vec_tst IS
END compare_2bit_vhd_vec_tst;
ARCHITECTURE compare_2bit_arch OF compare_2bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL E : STD_LOGIC;
SIGNAL G : STD_LOGIC;
SIGNAL L : STD_LOGIC;
SIGNAL x : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT compare_2bit
	PORT (
	E : BUFFER STD_LOGIC;
	G : BUFFER STD_LOGIC;
	L : BUFFER STD_LOGIC;
	x : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	y : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : compare_2bit
	PORT MAP (
-- list connections between master ports and signals
	E => E,
	G => G,
	L => L,
	x => x,
	y => y
	);
-- x[1]
t_prcs_x_1: PROCESS
BEGIN
LOOP
	x(1) <= '0';
	WAIT FOR 500000 ps;
	x(1) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_1;
-- x[0]
t_prcs_x_0: PROCESS
BEGIN
LOOP
	x(0) <= '0';
	WAIT FOR 250000 ps;
	x(0) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_0;
-- y[1]
t_prcs_y_1: PROCESS
BEGIN
LOOP
	y(1) <= '0';
	WAIT FOR 125000 ps;
	y(1) <= '1';
	WAIT FOR 125000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_y_1;
-- y[0]
t_prcs_y_0: PROCESS
BEGIN
LOOP
	y(0) <= '0';
	WAIT FOR 62500 ps;
	y(0) <= '1';
	WAIT FOR 62500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_y_0;
END compare_2bit_arch;
