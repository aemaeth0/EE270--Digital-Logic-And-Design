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
-- Generated on "03/09/2018 21:37:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          int_4bit_to_7seg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY int_4bit_to_7seg_vhd_vec_tst IS
END int_4bit_to_7seg_vhd_vec_tst;
ARCHITECTURE int_4bit_to_7seg_arch OF int_4bit_to_7seg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL arith : STD_LOGIC;
SIGNAL en : STD_LOGIC;
SIGNAL mag_leds : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL sign_leds : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL x : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT int_4bit_to_7seg
	PORT (
	arith : IN STD_LOGIC;
	en : IN STD_LOGIC;
	mag_leds : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	sign_leds : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	x : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : int_4bit_to_7seg
	PORT MAP (
-- list connections between master ports and signals
	arith => arith,
	en => en,
	mag_leds => mag_leds,
	sign_leds => sign_leds,
	x => x
	);

-- arith
t_prcs_arith: PROCESS
BEGIN
LOOP
	arith <= '0';
	WAIT FOR 2000000 ps;
	arith <= '1';
	WAIT FOR 2000000 ps;
	IF (NOW >= 4000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_arith;

-- en
t_prcs_en: PROCESS
BEGIN
	en <= '1';
WAIT;
END PROCESS t_prcs_en;
-- x[3]
t_prcs_x_3: PROCESS
BEGIN
LOOP
	x(3) <= '0';
	WAIT FOR 1000000 ps;
	x(3) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 4000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_3;
-- x[2]
t_prcs_x_2: PROCESS
BEGIN
LOOP
	x(2) <= '0';
	WAIT FOR 500000 ps;
	x(2) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 4000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_2;
-- x[1]
t_prcs_x_1: PROCESS
BEGIN
LOOP
	x(1) <= '0';
	WAIT FOR 250000 ps;
	x(1) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 4000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_1;
-- x[0]
t_prcs_x_0: PROCESS
BEGIN
LOOP
	x(0) <= '0';
	WAIT FOR 125000 ps;
	x(0) <= '1';
	WAIT FOR 125000 ps;
	IF (NOW >= 4000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x_0;
END int_4bit_to_7seg_arch;
