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
-- Generated on "02/25/2018 05:31:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux_8to1_mbit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux_8to1_mbit_vhd_vec_tst IS
END mux_8to1_mbit_vhd_vec_tst;
ARCHITECTURE mux_8to1_mbit_arch OF mux_8to1_mbit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL f : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL s : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL w0 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL w1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL w2 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL w3 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL w4 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL w5 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL w6 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL w7 : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT mux_8to1_mbit
	PORT (
	f : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	s : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	w0 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	w1 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	w2 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	w3 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	w4 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	w5 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	w6 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	w7 : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mux_8to1_mbit
	PORT MAP (
-- list connections between master ports and signals
	f => f,
	s => s,
	w0 => w0,
	w1 => w1,
	w2 => w2,
	w3 => w3,
	w4 => w4,
	w5 => w5,
	w6 => w6,
	w7 => w7
	);
-- s[2]
t_prcs_s_2: PROCESS
BEGIN
LOOP
	s(2) <= '0';
	WAIT FOR 1000000 ps;
	s(2) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_s_2;
-- s[1]
t_prcs_s_1: PROCESS
BEGIN
LOOP
	s(1) <= '0';
	WAIT FOR 500000 ps;
	s(1) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_s_1;
-- s[0]
t_prcs_s_0: PROCESS
BEGIN
LOOP
	s(0) <= '0';
	WAIT FOR 250000 ps;
	s(0) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_s_0;
-- w0[1]
t_prcs_w0_1: PROCESS
BEGIN
	w0(1) <= '1';
	WAIT FOR 125000 ps;
	w0(1) <= '0';
	WAIT FOR 250000 ps;
	w0(1) <= '1';
	WAIT FOR 62500 ps;
	w0(1) <= '0';
	WAIT FOR 125000 ps;
	w0(1) <= '1';
	WAIT FOR 375000 ps;
	w0(1) <= '0';
	WAIT FOR 62500 ps;
	w0(1) <= '1';
	WAIT FOR 62500 ps;
	w0(1) <= '0';
	WAIT FOR 500000 ps;
	w0(1) <= '1';
	WAIT FOR 250000 ps;
	w0(1) <= '0';
	WAIT FOR 62500 ps;
	w0(1) <= '1';
	WAIT FOR 62500 ps;
	w0(1) <= '0';
WAIT;
END PROCESS t_prcs_w0_1;
-- w0[0]
t_prcs_w0_0: PROCESS
BEGIN
	w0(0) <= '1';
	WAIT FOR 62500 ps;
	w0(0) <= '0';
	WAIT FOR 187500 ps;
	w0(0) <= '1';
	WAIT FOR 125000 ps;
	w0(0) <= '0';
	WAIT FOR 62500 ps;
	w0(0) <= '1';
	WAIT FOR 125000 ps;
	w0(0) <= '0';
	WAIT FOR 125000 ps;
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
	WAIT FOR 187500 ps;
	w0(0) <= '1';
	WAIT FOR 62500 ps;
	w0(0) <= '0';
	WAIT FOR 62500 ps;
	w0(0) <= '1';
	WAIT FOR 375000 ps;
	w0(0) <= '0';
	WAIT FOR 62500 ps;
	w0(0) <= '1';
	WAIT FOR 62500 ps;
	w0(0) <= '0';
	WAIT FOR 62500 ps;
	w0(0) <= '1';
WAIT;
END PROCESS t_prcs_w0_0;
-- w1[1]
t_prcs_w1_1: PROCESS
BEGIN
	w1(1) <= '1';
	WAIT FOR 125000 ps;
	w1(1) <= '0';
	WAIT FOR 62500 ps;
	w1(1) <= '1';
	WAIT FOR 62500 ps;
	w1(1) <= '0';
	WAIT FOR 375000 ps;
	w1(1) <= '1';
	WAIT FOR 62500 ps;
	w1(1) <= '0';
	WAIT FOR 62500 ps;
	w1(1) <= '1';
	WAIT FOR 375000 ps;
	w1(1) <= '0';
	WAIT FOR 187500 ps;
	w1(1) <= '1';
	WAIT FOR 62500 ps;
	w1(1) <= '0';
	WAIT FOR 62500 ps;
	w1(1) <= '1';
	WAIT FOR 62500 ps;
	w1(1) <= '0';
	WAIT FOR 62500 ps;
	w1(1) <= '1';
	WAIT FOR 62500 ps;
	w1(1) <= '0';
	WAIT FOR 62500 ps;
	w1(1) <= '1';
	WAIT FOR 125000 ps;
	w1(1) <= '0';
	WAIT FOR 62500 ps;
	w1(1) <= '1';
	WAIT FOR 62500 ps;
	w1(1) <= '0';
WAIT;
END PROCESS t_prcs_w1_1;
-- w1[0]
t_prcs_w1_0: PROCESS
BEGIN
	w1(0) <= '1';
	WAIT FOR 125000 ps;
	w1(0) <= '0';
	WAIT FOR 62500 ps;
	w1(0) <= '1';
	WAIT FOR 62500 ps;
	w1(0) <= '0';
	WAIT FOR 62500 ps;
	w1(0) <= '1';
	WAIT FOR 62500 ps;
	w1(0) <= '0';
	WAIT FOR 62500 ps;
	w1(0) <= '1';
	WAIT FOR 62500 ps;
	w1(0) <= '0';
	WAIT FOR 187500 ps;
	w1(0) <= '1';
	WAIT FOR 312500 ps;
	w1(0) <= '0';
	WAIT FOR 62500 ps;
	w1(0) <= '1';
	WAIT FOR 125000 ps;
	w1(0) <= '0';
	WAIT FOR 250000 ps;
	w1(0) <= '1';
	WAIT FOR 125000 ps;
	w1(0) <= '0';
	WAIT FOR 62500 ps;
	w1(0) <= '1';
	WAIT FOR 62500 ps;
	w1(0) <= '0';
WAIT;
END PROCESS t_prcs_w1_0;
-- w2[1]
t_prcs_w2_1: PROCESS
BEGIN
	w2(1) <= '1';
	WAIT FOR 62500 ps;
	w2(1) <= '0';
	WAIT FOR 125000 ps;
	w2(1) <= '1';
	WAIT FOR 125000 ps;
	w2(1) <= '0';
	WAIT FOR 62500 ps;
	w2(1) <= '1';
	WAIT FOR 62500 ps;
	w2(1) <= '0';
	WAIT FOR 125000 ps;
	w2(1) <= '1';
	WAIT FOR 62500 ps;
	w2(1) <= '0';
	WAIT FOR 250000 ps;
	w2(1) <= '1';
	WAIT FOR 125000 ps;
	w2(1) <= '0';
	WAIT FOR 62500 ps;
	w2(1) <= '1';
	WAIT FOR 250000 ps;
	w2(1) <= '0';
	WAIT FOR 125000 ps;
	w2(1) <= '1';
	WAIT FOR 62500 ps;
	w2(1) <= '0';
	WAIT FOR 62500 ps;
	w2(1) <= '1';
	WAIT FOR 125000 ps;
	w2(1) <= '0';
	WAIT FOR 187500 ps;
	w2(1) <= '1';
	WAIT FOR 62500 ps;
	w2(1) <= '0';
WAIT;
END PROCESS t_prcs_w2_1;
-- w2[0]
t_prcs_w2_0: PROCESS
BEGIN
	w2(0) <= '0';
	WAIT FOR 125000 ps;
	w2(0) <= '1';
	WAIT FOR 125000 ps;
	w2(0) <= '0';
	WAIT FOR 125000 ps;
	w2(0) <= '1';
	WAIT FOR 125000 ps;
	w2(0) <= '0';
	WAIT FOR 187500 ps;
	w2(0) <= '1';
	WAIT FOR 62500 ps;
	w2(0) <= '0';
	WAIT FOR 125000 ps;
	w2(0) <= '1';
	WAIT FOR 62500 ps;
	w2(0) <= '0';
	WAIT FOR 125000 ps;
	w2(0) <= '1';
	WAIT FOR 62500 ps;
	w2(0) <= '0';
	WAIT FOR 187500 ps;
	w2(0) <= '1';
	WAIT FOR 125000 ps;
	w2(0) <= '0';
	WAIT FOR 62500 ps;
	w2(0) <= '1';
	WAIT FOR 125000 ps;
	w2(0) <= '0';
	WAIT FOR 125000 ps;
	w2(0) <= '1';
	WAIT FOR 62500 ps;
	w2(0) <= '0';
	WAIT FOR 62500 ps;
	w2(0) <= '1';
	WAIT FOR 62500 ps;
	w2(0) <= '0';
WAIT;
END PROCESS t_prcs_w2_0;
-- w3[1]
t_prcs_w3_1: PROCESS
BEGIN
	w3(1) <= '1';
	WAIT FOR 62500 ps;
	w3(1) <= '0';
	WAIT FOR 125000 ps;
	w3(1) <= '1';
	WAIT FOR 62500 ps;
	w3(1) <= '0';
	WAIT FOR 125000 ps;
	w3(1) <= '1';
	WAIT FOR 250000 ps;
	w3(1) <= '0';
	WAIT FOR 62500 ps;
	w3(1) <= '1';
	WAIT FOR 62500 ps;
	w3(1) <= '0';
	WAIT FOR 62500 ps;
	w3(1) <= '1';
	WAIT FOR 250000 ps;
	w3(1) <= '0';
	WAIT FOR 125000 ps;
	w3(1) <= '1';
	WAIT FOR 125000 ps;
	w3(1) <= '0';
	WAIT FOR 62500 ps;
	w3(1) <= '1';
	WAIT FOR 187500 ps;
	w3(1) <= '0';
	WAIT FOR 250000 ps;
	w3(1) <= '1';
WAIT;
END PROCESS t_prcs_w3_1;
-- w3[0]
t_prcs_w3_0: PROCESS
BEGIN
	w3(0) <= '0';
	WAIT FOR 62500 ps;
	w3(0) <= '1';
	WAIT FOR 62500 ps;
	w3(0) <= '0';
	WAIT FOR 62500 ps;
	w3(0) <= '1';
	WAIT FOR 62500 ps;
	w3(0) <= '0';
	WAIT FOR 125000 ps;
	w3(0) <= '1';
	WAIT FOR 62500 ps;
	w3(0) <= '0';
	WAIT FOR 62500 ps;
	w3(0) <= '1';
	WAIT FOR 62500 ps;
	w3(0) <= '0';
	WAIT FOR 187500 ps;
	w3(0) <= '1';
	WAIT FOR 312500 ps;
	w3(0) <= '0';
	WAIT FOR 62500 ps;
	w3(0) <= '1';
	WAIT FOR 62500 ps;
	w3(0) <= '0';
	WAIT FOR 62500 ps;
	w3(0) <= '1';
	WAIT FOR 125000 ps;
	w3(0) <= '0';
	WAIT FOR 62500 ps;
	w3(0) <= '1';
	WAIT FOR 62500 ps;
	w3(0) <= '0';
	WAIT FOR 62500 ps;
	w3(0) <= '1';
	WAIT FOR 250000 ps;
	w3(0) <= '0';
WAIT;
END PROCESS t_prcs_w3_0;
-- w4[1]
t_prcs_w4_1: PROCESS
BEGIN
	w4(1) <= '1';
	WAIT FOR 125000 ps;
	w4(1) <= '0';
	WAIT FOR 62500 ps;
	w4(1) <= '1';
	WAIT FOR 62500 ps;
	w4(1) <= '0';
	WAIT FOR 312500 ps;
	w4(1) <= '1';
	WAIT FOR 62500 ps;
	w4(1) <= '0';
	WAIT FOR 125000 ps;
	w4(1) <= '1';
	WAIT FOR 187500 ps;
	w4(1) <= '0';
	WAIT FOR 62500 ps;
	w4(1) <= '1';
	WAIT FOR 125000 ps;
	w4(1) <= '0';
	WAIT FOR 125000 ps;
	w4(1) <= '1';
	WAIT FOR 62500 ps;
	w4(1) <= '0';
	WAIT FOR 125000 ps;
	w4(1) <= '1';
	WAIT FOR 187500 ps;
	w4(1) <= '0';
	WAIT FOR 125000 ps;
	w4(1) <= '1';
	WAIT FOR 62500 ps;
	w4(1) <= '0';
	WAIT FOR 62500 ps;
	w4(1) <= '1';
WAIT;
END PROCESS t_prcs_w4_1;
-- w4[0]
t_prcs_w4_0: PROCESS
BEGIN
	w4(0) <= '0';
	WAIT FOR 62500 ps;
	w4(0) <= '1';
	WAIT FOR 62500 ps;
	w4(0) <= '0';
	WAIT FOR 62500 ps;
	w4(0) <= '1';
	WAIT FOR 62500 ps;
	w4(0) <= '0';
	WAIT FOR 62500 ps;
	w4(0) <= '1';
	WAIT FOR 187500 ps;
	w4(0) <= '0';
	WAIT FOR 125000 ps;
	w4(0) <= '1';
	WAIT FOR 187500 ps;
	w4(0) <= '0';
	WAIT FOR 62500 ps;
	w4(0) <= '1';
	WAIT FOR 250000 ps;
	w4(0) <= '0';
	WAIT FOR 62500 ps;
	w4(0) <= '1';
	WAIT FOR 62500 ps;
	w4(0) <= '0';
	WAIT FOR 125000 ps;
	w4(0) <= '1';
	WAIT FOR 62500 ps;
	w4(0) <= '0';
	WAIT FOR 62500 ps;
	w4(0) <= '1';
	WAIT FOR 62500 ps;
	w4(0) <= '0';
	WAIT FOR 250000 ps;
	w4(0) <= '1';
	WAIT FOR 62500 ps;
	w4(0) <= '0';
	WAIT FOR 62500 ps;
	w4(0) <= '1';
WAIT;
END PROCESS t_prcs_w4_0;
-- w5[1]
t_prcs_w5_1: PROCESS
BEGIN
	w5(1) <= '0';
	WAIT FOR 62500 ps;
	w5(1) <= '1';
	WAIT FOR 187500 ps;
	w5(1) <= '0';
	WAIT FOR 62500 ps;
	w5(1) <= '1';
	WAIT FOR 125000 ps;
	w5(1) <= '0';
	WAIT FOR 62500 ps;
	w5(1) <= '1';
	WAIT FOR 62500 ps;
	w5(1) <= '0';
	WAIT FOR 250000 ps;
	w5(1) <= '1';
	WAIT FOR 375000 ps;
	w5(1) <= '0';
	WAIT FOR 62500 ps;
	w5(1) <= '1';
	WAIT FOR 62500 ps;
	w5(1) <= '0';
	WAIT FOR 62500 ps;
	w5(1) <= '1';
	WAIT FOR 62500 ps;
	w5(1) <= '0';
	WAIT FOR 437500 ps;
	w5(1) <= '1';
WAIT;
END PROCESS t_prcs_w5_1;
-- w5[0]
t_prcs_w5_0: PROCESS
BEGIN
	w5(0) <= '0';
	WAIT FOR 62500 ps;
	w5(0) <= '1';
	WAIT FOR 62500 ps;
	w5(0) <= '0';
	WAIT FOR 62500 ps;
	w5(0) <= '1';
	WAIT FOR 187500 ps;
	w5(0) <= '0';
	WAIT FOR 125000 ps;
	w5(0) <= '1';
	WAIT FOR 62500 ps;
	w5(0) <= '0';
	WAIT FOR 62500 ps;
	w5(0) <= '1';
	WAIT FOR 62500 ps;
	w5(0) <= '0';
	WAIT FOR 187500 ps;
	w5(0) <= '1';
	WAIT FOR 62500 ps;
	w5(0) <= '0';
	WAIT FOR 187500 ps;
	w5(0) <= '1';
	WAIT FOR 187500 ps;
	w5(0) <= '0';
	WAIT FOR 62500 ps;
	w5(0) <= '1';
	WAIT FOR 62500 ps;
	w5(0) <= '0';
	WAIT FOR 62500 ps;
	w5(0) <= '1';
	WAIT FOR 125000 ps;
	w5(0) <= '0';
	WAIT FOR 62500 ps;
	w5(0) <= '1';
	WAIT FOR 62500 ps;
	w5(0) <= '0';
	WAIT FOR 62500 ps;
	w5(0) <= '1';
	WAIT FOR 62500 ps;
	w5(0) <= '0';
	WAIT FOR 62500 ps;
	w5(0) <= '1';
WAIT;
END PROCESS t_prcs_w5_0;
-- w6[1]
t_prcs_w6_1: PROCESS
BEGIN
	w6(1) <= '1';
	WAIT FOR 62500 ps;
	w6(1) <= '0';
	WAIT FOR 125000 ps;
	w6(1) <= '1';
	WAIT FOR 125000 ps;
	w6(1) <= '0';
	WAIT FOR 125000 ps;
	w6(1) <= '1';
	WAIT FOR 62500 ps;
	w6(1) <= '0';
	WAIT FOR 62500 ps;
	w6(1) <= '1';
	WAIT FOR 62500 ps;
	w6(1) <= '0';
	WAIT FOR 125000 ps;
	w6(1) <= '1';
	WAIT FOR 125000 ps;
	w6(1) <= '0';
	WAIT FOR 125000 ps;
	w6(1) <= '1';
	WAIT FOR 187500 ps;
	w6(1) <= '0';
	WAIT FOR 62500 ps;
	w6(1) <= '1';
	WAIT FOR 187500 ps;
	w6(1) <= '0';
	WAIT FOR 125000 ps;
	w6(1) <= '1';
	WAIT FOR 312500 ps;
	w6(1) <= '0';
	WAIT FOR 62500 ps;
	w6(1) <= '1';
WAIT;
END PROCESS t_prcs_w6_1;
-- w6[0]
t_prcs_w6_0: PROCESS
BEGIN
	w6(0) <= '0';
	WAIT FOR 62500 ps;
	w6(0) <= '1';
	WAIT FOR 62500 ps;
	w6(0) <= '0';
	WAIT FOR 187500 ps;
	w6(0) <= '1';
	WAIT FOR 62500 ps;
	w6(0) <= '0';
	WAIT FOR 187500 ps;
	w6(0) <= '1';
	WAIT FOR 375000 ps;
	w6(0) <= '0';
	WAIT FOR 250000 ps;
	w6(0) <= '1';
	WAIT FOR 125000 ps;
	w6(0) <= '0';
	WAIT FOR 62500 ps;
	w6(0) <= '1';
	WAIT FOR 187500 ps;
	w6(0) <= '0';
	WAIT FOR 62500 ps;
	w6(0) <= '1';
	WAIT FOR 125000 ps;
	w6(0) <= '0';
	WAIT FOR 62500 ps;
	w6(0) <= '1';
	WAIT FOR 62500 ps;
	w6(0) <= '0';
WAIT;
END PROCESS t_prcs_w6_0;
-- w7[1]
t_prcs_w7_1: PROCESS
BEGIN
	w7(1) <= '0';
	WAIT FOR 62500 ps;
	w7(1) <= '1';
	WAIT FOR 62500 ps;
	w7(1) <= '0';
	WAIT FOR 187500 ps;
	w7(1) <= '1';
	WAIT FOR 62500 ps;
	w7(1) <= '0';
	WAIT FOR 62500 ps;
	w7(1) <= '1';
	WAIT FOR 62500 ps;
	w7(1) <= '0';
	WAIT FOR 62500 ps;
	w7(1) <= '1';
	WAIT FOR 62500 ps;
	w7(1) <= '0';
	WAIT FOR 62500 ps;
	w7(1) <= '1';
	WAIT FOR 62500 ps;
	w7(1) <= '0';
	WAIT FOR 125000 ps;
	w7(1) <= '1';
	WAIT FOR 62500 ps;
	w7(1) <= '0';
	WAIT FOR 62500 ps;
	w7(1) <= '1';
	WAIT FOR 312500 ps;
	w7(1) <= '0';
	WAIT FOR 62500 ps;
	w7(1) <= '1';
	WAIT FOR 62500 ps;
	w7(1) <= '0';
	WAIT FOR 62500 ps;
	w7(1) <= '1';
	WAIT FOR 312500 ps;
	w7(1) <= '0';
	WAIT FOR 125000 ps;
	w7(1) <= '1';
WAIT;
END PROCESS t_prcs_w7_1;
-- w7[0]
t_prcs_w7_0: PROCESS
BEGIN
	w7(0) <= '1';
	WAIT FOR 125000 ps;
	w7(0) <= '0';
	WAIT FOR 125000 ps;
	w7(0) <= '1';
	WAIT FOR 187500 ps;
	w7(0) <= '0';
	WAIT FOR 250000 ps;
	w7(0) <= '1';
	WAIT FOR 187500 ps;
	w7(0) <= '0';
	WAIT FOR 62500 ps;
	w7(0) <= '1';
	WAIT FOR 250000 ps;
	w7(0) <= '0';
	WAIT FOR 125000 ps;
	w7(0) <= '1';
	WAIT FOR 125000 ps;
	w7(0) <= '0';
	WAIT FOR 250000 ps;
	w7(0) <= '1';
	WAIT FOR 250000 ps;
	w7(0) <= '0';
WAIT;
END PROCESS t_prcs_w7_0;
END mux_8to1_mbit_arch;
