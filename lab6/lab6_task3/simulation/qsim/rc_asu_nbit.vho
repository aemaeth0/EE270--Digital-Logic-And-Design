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

-- DATE "03/23/2018 21:50:09"

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

ENTITY 	rc_asu_nbit IS
    PORT (
	arith : IN std_logic;
	sub : IN std_logic;
	x : IN std_logic_vector(1 DOWNTO 0);
	y : IN std_logic_vector(1 DOWNTO 0);
	ovf : OUT std_logic;
	r : OUT std_logic_vector(1 DOWNTO 0)
	);
END rc_asu_nbit;

ARCHITECTURE structure OF rc_asu_nbit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_arith : std_logic;
SIGNAL ww_sub : std_logic;
SIGNAL ww_x : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ovf : std_logic;
SIGNAL ww_r : std_logic_vector(1 DOWNTO 0);
SIGNAL \ovf~output_o\ : std_logic;
SIGNAL \r[0]~output_o\ : std_logic;
SIGNAL \r[1]~output_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \sub~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \FA|cout~0_combout\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \arith~input_o\ : std_logic;
SIGNAL \ovf~0_combout\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \ovf~1_combout\ : std_logic;
SIGNAL \FA|sum~0_combout\ : std_logic;
SIGNAL \RCA:1:FA|sum~combout\ : std_logic;

BEGIN

ww_arith <= arith;
ww_sub <= sub;
ww_x <= x;
ww_y <= y;
ovf <= ww_ovf;
r <= ww_r;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ovf~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ovf~1_combout\,
	devoe => ww_devoe,
	o => \ovf~output_o\);

\r[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA|sum~0_combout\,
	devoe => ww_devoe,
	o => \r[0]~output_o\);

\r[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RCA:1:FA|sum~combout\,
	devoe => ww_devoe,
	o => \r[1]~output_o\);

\x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

\sub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sub,
	o => \sub~input_o\);

\y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

\FA|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA|cout~0_combout\ = (\y[0]~input_o\ & (\x[0]~input_o\)) # (!\y[0]~input_o\ & ((\sub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \sub~input_o\,
	datad => \y[0]~input_o\,
	combout => \FA|cout~0_combout\);

\x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

\arith~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arith,
	o => \arith~input_o\);

\ovf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ovf~0_combout\ = (\FA|cout~0_combout\ & (!\arith~input_o\ & ((!\sub~input_o\) # (!\x[1]~input_o\)))) # (!\FA|cout~0_combout\ & (\sub~input_o\ & (\x[1]~input_o\ $ (!\arith~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA|cout~0_combout\,
	datab => \x[1]~input_o\,
	datac => \sub~input_o\,
	datad => \arith~input_o\,
	combout => \ovf~0_combout\);

\y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

\ovf~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ovf~1_combout\ = (\FA|cout~0_combout\ & (\ovf~0_combout\ & ((\x[1]~input_o\) # (\y[1]~input_o\)))) # (!\FA|cout~0_combout\ & (\ovf~0_combout\ $ (((\x[1]~input_o\ & \y[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA|cout~0_combout\,
	datab => \ovf~0_combout\,
	datac => \x[1]~input_o\,
	datad => \y[1]~input_o\,
	combout => \ovf~1_combout\);

\FA|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA|sum~0_combout\ = \x[0]~input_o\ $ (\y[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[0]~input_o\,
	datad => \y[0]~input_o\,
	combout => \FA|sum~0_combout\);

\RCA:1:FA|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \RCA:1:FA|sum~combout\ = \sub~input_o\ $ (\y[1]~input_o\ $ (\x[1]~input_o\ $ (\FA|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub~input_o\,
	datab => \y[1]~input_o\,
	datac => \x[1]~input_o\,
	datad => \FA|cout~0_combout\,
	combout => \RCA:1:FA|sum~combout\);

ww_ovf <= \ovf~output_o\;

ww_r(0) <= \r[0]~output_o\;

ww_r(1) <= \r[1]~output_o\;
END structure;


