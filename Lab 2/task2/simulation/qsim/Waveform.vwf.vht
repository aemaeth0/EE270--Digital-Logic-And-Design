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
-- Generated on "02/13/2018 21:02:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          binary_decoder_4to16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY binary_decoder_4to16_vhd_vec_tst IS
END binary_decoder_4to16_vhd_vec_tst;
ARCHITECTURE binary_decoder_4to16_arch OF binary_decoder_4to16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL en : STD_LOGIC;
SIGNAL w : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT binary_decoder_4to16
	PORT (
	en : IN STD_LOGIC;
	w : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	y : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : binary_decoder_4to16
	PORT MAP (
-- list connections between master ports and signals
	en => en,
	w => w,
	y => y
	);

-- en
t_prcs_en: PROCESS
BEGIN
LOOP
	en <= '0';
	WAIT FOR 1000000 ps;
	en <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_en;
-- w[3]
t_prcs_w_3: PROCESS
BEGIN
LOOP
	w(3) <= '0';
	WAIT FOR 500000 ps;
	w(3) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_w_3;
-- w[2]
t_prcs_w_2: PROCESS
BEGIN
LOOP
	w(2) <= '0';
	WAIT FOR 250000 ps;
	w(2) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_w_2;
-- w[1]
t_prcs_w_1: PROCESS
BEGIN
LOOP
	w(1) <= '0';
	WAIT FOR 125000 ps;
	w(1) <= '1';
	WAIT FOR 125000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_w_1;
-- w[0]
t_prcs_w_0: PROCESS
BEGIN
LOOP
	w(0) <= '0';
	WAIT FOR 62500 ps;
	w(0) <= '1';
	WAIT FOR 62500 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_w_0;
END binary_decoder_4to16_arch;
