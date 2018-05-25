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
-- Generated on "03/09/2018 21:45:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          bin_to_therm_decoder_4to15
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bin_to_therm_decoder_4to15_vhd_vec_tst IS
END bin_to_therm_decoder_4to15_vhd_vec_tst;
ARCHITECTURE bin_to_therm_decoder_4to15_arch OF bin_to_therm_decoder_4to15_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bin : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL therm : STD_LOGIC_VECTOR(14 DOWNTO 0);
COMPONENT bin_to_therm_decoder_4to15
	PORT (
	bin : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	therm : BUFFER STD_LOGIC_VECTOR(14 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : bin_to_therm_decoder_4to15
	PORT MAP (
-- list connections between master ports and signals
	bin => bin,
	therm => therm
	);
-- bin[3]
t_prcs_bin_3: PROCESS
BEGIN
LOOP
	bin(3) <= '0';
	WAIT FOR 500000 ps;
	bin(3) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_bin_3;
-- bin[2]
t_prcs_bin_2: PROCESS
BEGIN
LOOP
	bin(2) <= '0';
	WAIT FOR 250000 ps;
	bin(2) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_bin_2;
-- bin[1]
t_prcs_bin_1: PROCESS
BEGIN
LOOP
	bin(1) <= '0';
	WAIT FOR 125000 ps;
	bin(1) <= '1';
	WAIT FOR 125000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_bin_1;
-- bin[0]
t_prcs_bin_0: PROCESS
BEGIN
LOOP
	bin(0) <= '0';
	WAIT FOR 62500 ps;
	bin(0) <= '1';
	WAIT FOR 62500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_bin_0;
END bin_to_therm_decoder_4to15_arch;
