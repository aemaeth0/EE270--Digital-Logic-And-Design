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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "03/23/2018 21:22:02"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	full_adder IS
    PORT (
	x : IN std_logic;
	y : IN std_logic;
	cin : IN std_logic;
	sum : OUT std_logic;
	cout : OUT std_logic
	);
END full_adder;

ARCHITECTURE structure OF full_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL ww_sum : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL \sum~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \y~input_o\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~0_combout\ : std_logic;

BEGIN

ww_x <= x;
ww_y <= y;
ww_cin <= cin;
sum <= ww_sum;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_process_1~0_combout\ <= NOT \process_1~0_combout\;

\sum~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \sum~output_o\);

\cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_process_1~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

\x~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

\y~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y,
	o => \y~input_o\);

\cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = \x~input_o\ $ (\y~input_o\ $ (\cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datab => \y~input_o\,
	datac => \cin~input_o\,
	combout => \Mux0~0_combout\);

\process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\x~input_o\ & (!\y~input_o\ & !\cin~input_o\)) # (!\x~input_o\ & ((!\cin~input_o\) # (!\y~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~input_o\,
	datac => \y~input_o\,
	datad => \cin~input_o\,
	combout => \process_1~0_combout\);

ww_sum <= \sum~output_o\;

ww_cout <= \cout~output_o\;
END structure;


