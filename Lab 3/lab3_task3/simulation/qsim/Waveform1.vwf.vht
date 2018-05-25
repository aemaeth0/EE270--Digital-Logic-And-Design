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
-- Generated on "02/25/2018 05:14:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux_4to1_nbit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux_4to1_nbit_vhd_vec_tst IS
END mux_4to1_nbit_vhd_vec_tst;
ARCHITECTURE mux_4to1_nbit_arch OF mux_4to1_nbit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL f : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL s : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL w0 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL w1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL w2 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL w3 : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT mux_4to1_nbit
	PORT (
	f : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	w0 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	w1 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	w2 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	w3 : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mux_4to1_nbit
	PORT MAP (
-- list connections between master ports and signals
	f => f,
	s => s,
	w0 => w0,
	w1 => w1,
	w2 => w2,
	w3 => w3
	);
-- s[1]
t_prcs_s_1: PROCESS
BEGIN
LOOP
	s(1) <= '0';
	WAIT FOR 1000000 ps;
	s(1) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_s_1;
-- s[0]
t_prcs_s_0: PROCESS
BEGIN
LOOP
	s(0) <= '0';
	WAIT FOR 500000 ps;
	s(0) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_s_0;
-- w0[1]
t_prcs_w0_1: PROCESS
BEGIN
	w0(1) <= '1';
	WAIT FOR 187500 ps;
	w0(1) <= '0';
	WAIT FOR 125000 ps;
	w0(1) <= '1';
	WAIT FOR 62500 ps;
	w0(1) <= '0';
	WAIT FOR 62500 ps;
	w0(1) <= '1';
	WAIT FOR 62500 ps;
	w0(1) <= '0';
	WAIT FOR 187500 ps;
	w0(1) <= '1';
	WAIT FOR 62500 ps;
	w0(1) <= '0';
	WAIT FOR 187500 ps;
	w0(1) <= '1';
	WAIT FOR 62500 ps;
	w0(1) <= '0';
	WAIT FOR 62500 ps;
	w0(1) <= '1';
	WAIT FOR 125000 ps;
	w0(1) <= '0';
	WAIT FOR 62500 ps;
	w0(1) <= '1';
	WAIT FOR 250000 ps;
	w0(1) <= '0';
	WAIT FOR 125000 ps;
	w0(1) <= '1';
	WAIT FOR 125000 ps;
	w0(1) <= '0';
	WAIT FOR 125000 ps;
	w0(1) <= '1';
WAIT;
END PROCESS t_prcs_w0_1;
-- w0[0]
t_prcs_w0_0: PROCESS
BEGIN
	w0(0) <= '0';
	WAIT FOR 375000 ps;
	w0(0) <= '1';
	WAIT FOR 187500 ps;
	w0(0) <= '0';
	WAIT FOR 187500 ps;
	w0(0) <= '1';
	WAIT FOR 187500 ps;
	w0(0) <= '0';
	WAIT FOR 62500 ps;
	w0(0) <= '1';
	WAIT FOR 62500 ps;
	w0(0) <= '0';
	WAIT FOR 62500 ps;
	w0(0) <= '1';
	WAIT FOR 125000 ps;
	w0(0) <= '0';
	WAIT FOR 62500 ps;
	w0(0) <= '1';
	WAIT FOR 62500 ps;
	w0(0) <= '0';
	WAIT FOR 312500 ps;
	w0(0) <= '1';
	WAIT FOR 62500 ps;
	w0(0) <= '0';
	WAIT FOR 62500 ps;
	w0(0) <= '1';
	WAIT FOR 62500 ps;
	w0(0) <= '0';
WAIT;
END PROCESS t_prcs_w0_0;
-- w1[1]
t_prcs_w1_1: PROCESS
BEGIN
	w1(1) <= '1';
	WAIT FOR 62500 ps;
	w1(1) <= '0';
	WAIT FOR 62500 ps;
	w1(1) <= '1';
	WAIT FOR 62500 ps;
	w1(1) <= '0';
	WAIT FOR 62500 ps;
	w1(1) <= '1';
	WAIT FOR 250000 ps;
	w1(1) <= '0';
	WAIT FOR 62500 ps;
	w1(1) <= '1';
	WAIT FOR 62500 ps;
	w1(1) <= '0';
	WAIT FOR 62500 ps;
	w1(1) <= '1';
	WAIT FOR 125000 ps;
	w1(1) <= '0';
	WAIT FOR 187500 ps;
	w1(1) <= '1';
	WAIT FOR 62500 ps;
	w1(1) <= '0';
	WAIT FOR 62500 ps;
	w1(1) <= '1';
	WAIT FOR 125000 ps;
	w1(1) <= '0';
	WAIT FOR 62500 ps;
	w1(1) <= '1';
	WAIT FOR 125000 ps;
	w1(1) <= '0';
	WAIT FOR 187500 ps;
	w1(1) <= '1';
	WAIT FOR 62500 ps;
	w1(1) <= '0';
	WAIT FOR 62500 ps;
	w1(1) <= '1';
	WAIT FOR 187500 ps;
	w1(1) <= '0';
WAIT;
END PROCESS t_prcs_w1_1;
-- w1[0]
t_prcs_w1_0: PROCESS
BEGIN
	w1(0) <= '0';
	WAIT FOR 62500 ps;
	w1(0) <= '1';
	WAIT FOR 187500 ps;
	w1(0) <= '0';
	WAIT FOR 125000 ps;
	w1(0) <= '1';
	WAIT FOR 187500 ps;
	w1(0) <= '0';
	WAIT FOR 62500 ps;
	w1(0) <= '1';
	WAIT FOR 187500 ps;
	w1(0) <= '0';
	WAIT FOR 62500 ps;
	w1(0) <= '1';
	WAIT FOR 62500 ps;
	w1(0) <= '0';
	WAIT FOR 62500 ps;
	w1(0) <= '1';
	WAIT FOR 62500 ps;
	w1(0) <= '0';
	WAIT FOR 125000 ps;
	w1(0) <= '1';
	WAIT FOR 125000 ps;
	w1(0) <= '0';
	WAIT FOR 125000 ps;
	w1(0) <= '1';
	WAIT FOR 187500 ps;
	w1(0) <= '0';
	WAIT FOR 125000 ps;
	w1(0) <= '1';
	WAIT FOR 62500 ps;
	w1(0) <= '0';
WAIT;
END PROCESS t_prcs_w1_0;
-- w2[1]
t_prcs_w2_1: PROCESS
BEGIN
	w2(1) <= '0';
	WAIT FOR 62500 ps;
	w2(1) <= '1';
	WAIT FOR 125000 ps;
	w2(1) <= '0';
	WAIT FOR 62500 ps;
	w2(1) <= '1';
	WAIT FOR 125000 ps;
	w2(1) <= '0';
	WAIT FOR 250000 ps;
	w2(1) <= '1';
	WAIT FOR 125000 ps;
	w2(1) <= '0';
	WAIT FOR 62500 ps;
	w2(1) <= '1';
	WAIT FOR 125000 ps;
	w2(1) <= '0';
	WAIT FOR 187500 ps;
	w2(1) <= '1';
	WAIT FOR 62500 ps;
	w2(1) <= '0';
	WAIT FOR 62500 ps;
	w2(1) <= '1';
	WAIT FOR 62500 ps;
	w2(1) <= '0';
	WAIT FOR 187500 ps;
	w2(1) <= '1';
	WAIT FOR 375000 ps;
	w2(1) <= '0';
	WAIT FOR 62500 ps;
	w2(1) <= '1';
WAIT;
END PROCESS t_prcs_w2_1;
-- w2[0]
t_prcs_w2_0: PROCESS
BEGIN
	w2(0) <= '1';
	WAIT FOR 62500 ps;
	w2(0) <= '0';
	WAIT FOR 62500 ps;
	w2(0) <= '1';
	WAIT FOR 250000 ps;
	w2(0) <= '0';
	WAIT FOR 187500 ps;
	w2(0) <= '1';
	WAIT FOR 62500 ps;
	w2(0) <= '0';
	WAIT FOR 62500 ps;
	w2(0) <= '1';
	WAIT FOR 62500 ps;
	w2(0) <= '0';
	WAIT FOR 62500 ps;
	w2(0) <= '1';
	WAIT FOR 62500 ps;
	w2(0) <= '0';
	WAIT FOR 62500 ps;
	w2(0) <= '1';
	WAIT FOR 125000 ps;
	w2(0) <= '0';
	WAIT FOR 62500 ps;
	w2(0) <= '1';
	WAIT FOR 62500 ps;
	w2(0) <= '0';
	WAIT FOR 62500 ps;
	w2(0) <= '1';
	WAIT FOR 187500 ps;
	w2(0) <= '0';
	WAIT FOR 62500 ps;
	w2(0) <= '1';
	WAIT FOR 62500 ps;
	w2(0) <= '0';
	WAIT FOR 125000 ps;
	w2(0) <= '1';
	WAIT FOR 62500 ps;
	w2(0) <= '0';
	WAIT FOR 187500 ps;
	w2(0) <= '1';
WAIT;
END PROCESS t_prcs_w2_0;
-- w3[1]
t_prcs_w3_1: PROCESS
BEGIN
	w3(1) <= '0';
	WAIT FOR 125000 ps;
	w3(1) <= '1';
	WAIT FOR 187500 ps;
	w3(1) <= '0';
	WAIT FOR 62500 ps;
	w3(1) <= '1';
	WAIT FOR 62500 ps;
	w3(1) <= '0';
	WAIT FOR 187500 ps;
	w3(1) <= '1';
	WAIT FOR 62500 ps;
	w3(1) <= '0';
	WAIT FOR 62500 ps;
	w3(1) <= '1';
	WAIT FOR 62500 ps;
	w3(1) <= '0';
	WAIT FOR 62500 ps;
	w3(1) <= '1';
	WAIT FOR 125000 ps;
	w3(1) <= '0';
	WAIT FOR 62500 ps;
	w3(1) <= '1';
	WAIT FOR 375000 ps;
	w3(1) <= '0';
	WAIT FOR 62500 ps;
	w3(1) <= '1';
	WAIT FOR 62500 ps;
	w3(1) <= '0';
	WAIT FOR 125000 ps;
	w3(1) <= '1';
	WAIT FOR 125000 ps;
	w3(1) <= '0';
	WAIT FOR 62500 ps;
	w3(1) <= '1';
WAIT;
END PROCESS t_prcs_w3_1;
-- w3[0]
t_prcs_w3_0: PROCESS
BEGIN
	w3(0) <= '0';
	WAIT FOR 125000 ps;
	w3(0) <= '1';
	WAIT FOR 125000 ps;
	w3(0) <= '0';
	WAIT FOR 125000 ps;
	w3(0) <= '1';
	WAIT FOR 62500 ps;
	w3(0) <= '0';
	WAIT FOR 62500 ps;
	w3(0) <= '1';
	WAIT FOR 187500 ps;
	w3(0) <= '0';
	WAIT FOR 62500 ps;
	w3(0) <= '1';
	WAIT FOR 62500 ps;
	w3(0) <= '0';
	WAIT FOR 250000 ps;
	w3(0) <= '1';
	WAIT FOR 62500 ps;
	w3(0) <= '0';
	WAIT FOR 62500 ps;
	w3(0) <= '1';
	WAIT FOR 62500 ps;
	w3(0) <= '0';
	WAIT FOR 125000 ps;
	w3(0) <= '1';
	WAIT FOR 125000 ps;
	w3(0) <= '0';
	WAIT FOR 62500 ps;
	w3(0) <= '1';
	WAIT FOR 125000 ps;
	w3(0) <= '0';
	WAIT FOR 62500 ps;
	w3(0) <= '1';
	WAIT FOR 125000 ps;
	w3(0) <= '0';
WAIT;
END PROCESS t_prcs_w3_0;
END mux_4to1_nbit_arch;
