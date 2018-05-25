-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/04/2018 21:00:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          log_shifter_4bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY log_shifter_4bit_vhd_vec_tst IS
END log_shifter_4bit_vhd_vec_tst;
ARCHITECTURE log_shifter_4bit_arch OF log_shifter_4bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL arith : STD_LOGIC;
SIGNAL cnt : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL F : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL lin : STD_LOGIC;
SIGNAL right : STD_LOGIC;
COMPONENT log_shifter_4bit
	PORT (
	A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	arith : IN STD_LOGIC;
	cnt : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	F : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	lin : IN STD_LOGIC;
	right : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : log_shifter_4bit
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	arith => arith,
	cnt => cnt,
	F => F,
	lin => lin,
	right => right
	);

-- right
t_prcs_right: PROCESS
BEGIN
LOOP
	right <= '0';
	WAIT FOR 8000000 ps;
	right <= '1';
	WAIT FOR 8000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_right;

-- lin
t_prcs_lin: PROCESS
BEGIN
LOOP
	lin <= '0';
	WAIT FOR 4000000 ps;
	lin <= '1';
	WAIT FOR 4000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_lin;

-- arith
t_prcs_arith: PROCESS
BEGIN
LOOP
	arith <= '0';
	WAIT FOR 2000000 ps;
	arith <= '1';
	WAIT FOR 2000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_arith;
-- cnt[1]
t_prcs_cnt_1: PROCESS
BEGIN
LOOP
	cnt(1) <= '0';
	WAIT FOR 1000000 ps;
	cnt(1) <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_cnt_1;
-- cnt[0]
t_prcs_cnt_0: PROCESS
BEGIN
LOOP
	cnt(0) <= '0';
	WAIT FOR 500000 ps;
	cnt(0) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_cnt_0;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
LOOP
	A(3) <= '0';
	WAIT FOR 250000 ps;
	A(3) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
LOOP
	A(2) <= '0';
	WAIT FOR 125000 ps;
	A(2) <= '1';
	WAIT FOR 125000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
LOOP
	A(1) <= '0';
	WAIT FOR 62500 ps;
	A(1) <= '1';
	WAIT FOR 62500 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
LOOP
	A(0) <= '0';
	WAIT FOR 31250 ps;
	A(0) <= '1';
	WAIT FOR 31250 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_0;
END log_shifter_4bit_arch;
