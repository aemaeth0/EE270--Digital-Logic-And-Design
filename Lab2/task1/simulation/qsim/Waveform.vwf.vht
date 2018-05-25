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
-- Generated on "02/11/2018 20:50:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          hex_to_7seg_decoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY hex_to_7seg_decoder_vhd_vec_tst IS
END hex_to_7seg_decoder_vhd_vec_tst;
ARCHITECTURE hex_to_7seg_decoder_arch OF hex_to_7seg_decoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL en : STD_LOGIC;
SIGNAL hex : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL leds : STD_LOGIC_VECTOR(0 TO 6);
COMPONENT hex_to_7seg_decoder
	PORT (
	en : IN STD_LOGIC;
	hex : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	leds : BUFFER STD_LOGIC_VECTOR(0 TO 6)
	);
END COMPONENT;
BEGIN
	i1 : hex_to_7seg_decoder
	PORT MAP (
-- list connections between master ports and signals
	en => en,
	hex => hex,
	leds => leds
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
-- hex[3]
t_prcs_hex_3: PROCESS
BEGIN
LOOP
	hex(3) <= '0';
	WAIT FOR 500000 ps;
	hex(3) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_hex_3;
-- hex[2]
t_prcs_hex_2: PROCESS
BEGIN
LOOP
	hex(2) <= '0';
	WAIT FOR 250000 ps;
	hex(2) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_hex_2;
-- hex[1]
t_prcs_hex_1: PROCESS
BEGIN
LOOP
	hex(1) <= '0';
	WAIT FOR 125000 ps;
	hex(1) <= '1';
	WAIT FOR 125000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_hex_1;
-- hex[0]
t_prcs_hex_0: PROCESS
BEGIN
LOOP
	hex(0) <= '0';
	WAIT FOR 62500 ps;
	hex(0) <= '1';
	WAIT FOR 62500 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_hex_0;
END hex_to_7seg_decoder_arch;
