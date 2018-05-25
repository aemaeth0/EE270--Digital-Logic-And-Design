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

-- DATE "02/25/2018 05:14:37"

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

ENTITY 	mux_4to1_nbit IS
    PORT (
	w3 : IN std_logic_vector(1 DOWNTO 0);
	w2 : IN std_logic_vector(1 DOWNTO 0);
	w1 : IN std_logic_vector(1 DOWNTO 0);
	w0 : IN std_logic_vector(1 DOWNTO 0);
	s : IN std_logic_vector(1 DOWNTO 0);
	f : OUT std_logic_vector(1 DOWNTO 0)
	);
END mux_4to1_nbit;

ARCHITECTURE structure OF mux_4to1_nbit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_w3 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_w2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_w1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_w0 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_f : std_logic_vector(1 DOWNTO 0);
SIGNAL \f[0]~output_o\ : std_logic;
SIGNAL \f[1]~output_o\ : std_logic;
SIGNAL \w2[0]~input_o\ : std_logic;
SIGNAL \s[1]~input_o\ : std_logic;
SIGNAL \w1[0]~input_o\ : std_logic;
SIGNAL \s[0]~input_o\ : std_logic;
SIGNAL \w0[0]~input_o\ : std_logic;
SIGNAL \f~0_combout\ : std_logic;
SIGNAL \w3[0]~input_o\ : std_logic;
SIGNAL \f~1_combout\ : std_logic;
SIGNAL \w1[1]~input_o\ : std_logic;
SIGNAL \w2[1]~input_o\ : std_logic;
SIGNAL \w0[1]~input_o\ : std_logic;
SIGNAL \f~2_combout\ : std_logic;
SIGNAL \w3[1]~input_o\ : std_logic;
SIGNAL \f~3_combout\ : std_logic;

BEGIN

ww_w3 <= w3;
ww_w2 <= w2;
ww_w1 <= w1;
ww_w0 <= w0;
ww_s <= s;
f <= ww_f;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\f[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f~1_combout\,
	devoe => ww_devoe,
	o => \f[0]~output_o\);

\f[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f~3_combout\,
	devoe => ww_devoe,
	o => \f[1]~output_o\);

\w2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w2(0),
	o => \w2[0]~input_o\);

\s[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(1),
	o => \s[1]~input_o\);

\w1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w1(0),
	o => \w1[0]~input_o\);

\s[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(0),
	o => \s[0]~input_o\);

\w0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w0(0),
	o => \w0[0]~input_o\);

\f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f~0_combout\ = (\s[1]~input_o\ & (((\s[0]~input_o\)))) # (!\s[1]~input_o\ & ((\s[0]~input_o\ & (\w1[0]~input_o\)) # (!\s[0]~input_o\ & ((\w0[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[1]~input_o\,
	datab => \w1[0]~input_o\,
	datac => \s[0]~input_o\,
	datad => \w0[0]~input_o\,
	combout => \f~0_combout\);

\w3[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w3(0),
	o => \w3[0]~input_o\);

\f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f~1_combout\ = (\s[1]~input_o\ & ((\f~0_combout\ & ((\w3[0]~input_o\))) # (!\f~0_combout\ & (\w2[0]~input_o\)))) # (!\s[1]~input_o\ & (((\f~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w2[0]~input_o\,
	datab => \s[1]~input_o\,
	datac => \f~0_combout\,
	datad => \w3[0]~input_o\,
	combout => \f~1_combout\);

\w1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w1(1),
	o => \w1[1]~input_o\);

\w2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w2(1),
	o => \w2[1]~input_o\);

\w0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w0(1),
	o => \w0[1]~input_o\);

\f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f~2_combout\ = (\s[0]~input_o\ & (((\s[1]~input_o\)))) # (!\s[0]~input_o\ & ((\s[1]~input_o\ & (\w2[1]~input_o\)) # (!\s[1]~input_o\ & ((\w0[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[0]~input_o\,
	datab => \w2[1]~input_o\,
	datac => \s[1]~input_o\,
	datad => \w0[1]~input_o\,
	combout => \f~2_combout\);

\w3[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w3(1),
	o => \w3[1]~input_o\);

\f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f~3_combout\ = (\s[0]~input_o\ & ((\f~2_combout\ & ((\w3[1]~input_o\))) # (!\f~2_combout\ & (\w1[1]~input_o\)))) # (!\s[0]~input_o\ & (((\f~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1[1]~input_o\,
	datab => \s[0]~input_o\,
	datac => \f~2_combout\,
	datad => \w3[1]~input_o\,
	combout => \f~3_combout\);

ww_f(0) <= \f[0]~output_o\;

ww_f(1) <= \f[1]~output_o\;
END structure;


