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
-- Generated on "03/09/2018 22:05:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          range_extender
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY range_extender_vhd_vec_tst IS
END range_extender_vhd_vec_tst;
ARCHITECTURE range_extender_arch OF range_extender_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL arith : STD_LOGIC;
SIGNAL dim : STD_LOGIC;
SIGNAL x : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT range_extender
	PORT (
	arith : IN STD_LOGIC;
	dim : IN STD_LOGIC;
	x : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	y : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : range_extender
	PORT MAP (
-- list connections between master ports and signals
	arith => arith,
	dim => dim,
	x => x,
	y => y
	);

-- arith
t_prcs_arith: PROCESS
BEGIN
LOOP
	arith <= '0';
	WAIT FOR 4000000 ps;
	arith <= '1';
	WAIT FOR 4000000 ps;
	IF (NOW >= 8000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_arith;

-- dim
t_prcs_dim: PROCESS
BEGIN
LOOP
	dim <= '0';
	WAIT FOR 2000000 ps;
	dim <= '1';
	WAIT FOR 2000000 ps;
	IF (NOW >= 8000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dim;
-- x[1]
t_prcs_x_1: PROCESS
BEGIN
LOOP
	x(1) <= '0';
	WAIT FOR 1000000 ps;
	x(1) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 8000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_1;
-- x[0]
t_prcs_x_0: PROCESS
BEGIN
LOOP
	x(0) <= '0';
	WAIT FOR 500000 ps;
	x(0) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 8000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_0;
END range_extender_arch;
