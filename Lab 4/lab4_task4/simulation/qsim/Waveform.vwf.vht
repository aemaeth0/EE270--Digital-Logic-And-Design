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
-- Generated on "03/02/2018 19:16:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          sel_arbiter_nbit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sel_arbiter_nbit_vhd_vec_tst IS
END sel_arbiter_nbit_vhd_vec_tst;
ARCHITECTURE sel_arbiter_nbit_arch OF sel_arbiter_nbit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL gnt : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL msb : STD_LOGIC;
SIGNAL req : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL zero : STD_LOGIC;
COMPONENT sel_arbiter_nbit
	PORT (
	gnt : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	msb : IN STD_LOGIC;
	req : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	zero : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : sel_arbiter_nbit
	PORT MAP (
-- list connections between master ports and signals
	gnt => gnt,
	msb => msb,
	req => req,
	zero => zero
	);

-- msb
t_prcs_msb: PROCESS
BEGIN
	msb <= '0';
WAIT;
END PROCESS t_prcs_msb;

-- req[2]
t_prcs_req_2: PROCESS
BEGIN
LOOP
	req(2) <= '0';
	WAIT FOR 250000 ps;
	req(2) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_req_2;

-- req[1]
t_prcs_req_1: PROCESS
BEGIN
LOOP
	req(1) <= '0';
	WAIT FOR 125000 ps;
	req(1) <= '1';
	WAIT FOR 125000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_req_1;

-- req[0]
t_prcs_req_0: PROCESS
BEGIN
LOOP
	req(0) <= '0';
	WAIT FOR 62500 ps;
	req(0) <= '1';
	WAIT FOR 62500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_req_0;
END sel_arbiter_nbit_arch;
