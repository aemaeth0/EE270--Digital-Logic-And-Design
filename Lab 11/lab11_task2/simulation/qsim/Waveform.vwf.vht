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
-- Generated on "04/29/2018 18:30:09"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          vending_controller
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY vending_controller_vhd_vec_tst IS
END vending_controller_vhd_vec_tst;
ARCHITECTURE vending_controller_arch OF vending_controller_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dc : STD_LOGIC;
SIGNAL dd : STD_LOGIC;
SIGNAL dn : STD_LOGIC;
SIGNAL m : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
COMPONENT vending_controller
	PORT (
	clk : IN STD_LOGIC;
	dc : OUT STD_LOGIC;
	dd : OUT STD_LOGIC;
	dn : OUT STD_LOGIC;
	m : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : vending_controller
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dc => dc,
	dd => dd,
	dn => dn,
	m => m,
	rst => rst
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 62500 ps;
	clk <= '1';
	WAIT FOR 62500 ps;
	IF (NOW >= 8000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- m[1]
t_prcs_m_1: PROCESS
BEGIN
	m(1) <= '1';
	WAIT FOR 250000 ps;
	m(1) <= '0';
	WAIT FOR 250000 ps;
	m(1) <= '1';
	WAIT FOR 375000 ps;
	m(1) <= '0';
	WAIT FOR 500000 ps;
	m(1) <= '1';
	WAIT FOR 250000 ps;
	m(1) <= '0';
	WAIT FOR 125000 ps;
	m(1) <= '1';
	WAIT FOR 250000 ps;
	m(1) <= '0';
	WAIT FOR 125000 ps;
	m(1) <= '1';
	WAIT FOR 250000 ps;
	m(1) <= '0';
	WAIT FOR 125000 ps;
	m(1) <= '1';
	WAIT FOR 500000 ps;
	m(1) <= '0';
	WAIT FOR 125000 ps;
	m(1) <= '1';
	WAIT FOR 500000 ps;
	m(1) <= '0';
	WAIT FOR 250000 ps;
	m(1) <= '1';
	WAIT FOR 250000 ps;
	m(1) <= '0';
	WAIT FOR 125000 ps;
	m(1) <= '1';
	WAIT FOR 1125000 ps;
	m(1) <= '0';
	WAIT FOR 375000 ps;
	m(1) <= '1';
	WAIT FOR 250000 ps;
	m(1) <= '0';
	WAIT FOR 125000 ps;
	m(1) <= '1';
	WAIT FOR 125000 ps;
	m(1) <= '0';
	WAIT FOR 125000 ps;
	m(1) <= '1';
	WAIT FOR 375000 ps;
	m(1) <= '0';
	WAIT FOR 125000 ps;
	m(1) <= '1';
	WAIT FOR 750000 ps;
	m(1) <= '0';
	WAIT FOR 250000 ps;
	m(1) <= '1';
WAIT;
END PROCESS t_prcs_m_1;
-- m[0]
t_prcs_m_0: PROCESS
BEGIN
	m(0) <= '1';
	WAIT FOR 125000 ps;
	m(0) <= '0';
	WAIT FOR 125000 ps;
	m(0) <= '1';
	WAIT FOR 125000 ps;
	m(0) <= '0';
	WAIT FOR 125000 ps;
	m(0) <= '1';
	WAIT FOR 625000 ps;
	m(0) <= '0';
	WAIT FOR 375000 ps;
	m(0) <= '1';
	WAIT FOR 375000 ps;
	m(0) <= '0';
	WAIT FOR 250000 ps;
	m(0) <= '1';
	WAIT FOR 375000 ps;
	m(0) <= '0';
	WAIT FOR 375000 ps;
	m(0) <= '1';
	WAIT FOR 750000 ps;
	m(0) <= '0';
	WAIT FOR 125000 ps;
	m(0) <= '1';
	WAIT FOR 125000 ps;
	m(0) <= '0';
	WAIT FOR 500000 ps;
	m(0) <= '1';
	WAIT FOR 125000 ps;
	m(0) <= '0';
	WAIT FOR 250000 ps;
	m(0) <= '1';
	WAIT FOR 250000 ps;
	m(0) <= '0';
	WAIT FOR 375000 ps;
	m(0) <= '1';
	WAIT FOR 250000 ps;
	m(0) <= '0';
	WAIT FOR 375000 ps;
	m(0) <= '1';
	WAIT FOR 375000 ps;
	m(0) <= '0';
	WAIT FOR 250000 ps;
	m(0) <= '1';
	WAIT FOR 125000 ps;
	m(0) <= '0';
	WAIT FOR 125000 ps;
	m(0) <= '1';
	WAIT FOR 375000 ps;
	m(0) <= '0';
	WAIT FOR 125000 ps;
	m(0) <= '1';
	WAIT FOR 125000 ps;
	m(0) <= '0';
	WAIT FOR 125000 ps;
	m(0) <= '1';
	WAIT FOR 125000 ps;
	m(0) <= '0';
	WAIT FOR 125000 ps;
	m(0) <= '1';
WAIT;
END PROCESS t_prcs_m_0;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
	WAIT FOR 130000 ps;
	rst <= '0';
	WAIT FOR 6870000 ps;
	rst <= '1';
	WAIT FOR 125000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
END vending_controller_arch;
