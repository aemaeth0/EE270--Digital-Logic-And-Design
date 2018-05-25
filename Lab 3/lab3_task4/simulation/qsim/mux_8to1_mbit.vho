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

-- DATE "02/25/2018 05:31:44"

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

ENTITY 	mux_8to1_mbit IS
    PORT (
	w0 : IN std_logic_vector(1 DOWNTO 0);
	w1 : IN std_logic_vector(1 DOWNTO 0);
	w2 : IN std_logic_vector(1 DOWNTO 0);
	w3 : IN std_logic_vector(1 DOWNTO 0);
	w4 : IN std_logic_vector(1 DOWNTO 0);
	w5 : IN std_logic_vector(1 DOWNTO 0);
	w6 : IN std_logic_vector(1 DOWNTO 0);
	w7 : IN std_logic_vector(1 DOWNTO 0);
	s : IN std_logic_vector(2 DOWNTO 0);
	f : OUT std_logic_vector(1 DOWNTO 0)
	);
END mux_8to1_mbit;

ARCHITECTURE structure OF mux_8to1_mbit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_w0 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_w1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_w2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_w3 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_w4 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_w5 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_w6 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_w7 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_f : std_logic_vector(1 DOWNTO 0);
SIGNAL \f[0]~output_o\ : std_logic;
SIGNAL \f[1]~output_o\ : std_logic;
SIGNAL \w5[0]~input_o\ : std_logic;
SIGNAL \s[0]~input_o\ : std_logic;
SIGNAL \w6[0]~input_o\ : std_logic;
SIGNAL \s[1]~input_o\ : std_logic;
SIGNAL \w4[0]~input_o\ : std_logic;
SIGNAL \f~0_combout\ : std_logic;
SIGNAL \w7[0]~input_o\ : std_logic;
SIGNAL \f~1_combout\ : std_logic;
SIGNAL \w2[0]~input_o\ : std_logic;
SIGNAL \w1[0]~input_o\ : std_logic;
SIGNAL \w0[0]~input_o\ : std_logic;
SIGNAL \f~2_combout\ : std_logic;
SIGNAL \w3[0]~input_o\ : std_logic;
SIGNAL \f~3_combout\ : std_logic;
SIGNAL \s[2]~input_o\ : std_logic;
SIGNAL \f~4_combout\ : std_logic;
SIGNAL \w5[1]~input_o\ : std_logic;
SIGNAL \w6[1]~input_o\ : std_logic;
SIGNAL \w4[1]~input_o\ : std_logic;
SIGNAL \f~5_combout\ : std_logic;
SIGNAL \w7[1]~input_o\ : std_logic;
SIGNAL \f~6_combout\ : std_logic;
SIGNAL \w2[1]~input_o\ : std_logic;
SIGNAL \w1[1]~input_o\ : std_logic;
SIGNAL \w0[1]~input_o\ : std_logic;
SIGNAL \f~7_combout\ : std_logic;
SIGNAL \w3[1]~input_o\ : std_logic;
SIGNAL \f~8_combout\ : std_logic;
SIGNAL \f~9_combout\ : std_logic;

BEGIN

ww_w0 <= w0;
ww_w1 <= w1;
ww_w2 <= w2;
ww_w3 <= w3;
ww_w4 <= w4;
ww_w5 <= w5;
ww_w6 <= w6;
ww_w7 <= w7;
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
	i => \f~4_combout\,
	devoe => ww_devoe,
	o => \f[0]~output_o\);

\f[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f~9_combout\,
	devoe => ww_devoe,
	o => \f[1]~output_o\);

\w5[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w5(0),
	o => \w5[0]~input_o\);

\s[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(0),
	o => \s[0]~input_o\);

\w6[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w6(0),
	o => \w6[0]~input_o\);

\s[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(1),
	o => \s[1]~input_o\);

\w4[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w4(0),
	o => \w4[0]~input_o\);

\f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f~0_combout\ = (\s[0]~input_o\ & (((\s[1]~input_o\)))) # (!\s[0]~input_o\ & ((\s[1]~input_o\ & (\w6[0]~input_o\)) # (!\s[1]~input_o\ & ((\w4[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[0]~input_o\,
	datab => \w6[0]~input_o\,
	datac => \s[1]~input_o\,
	datad => \w4[0]~input_o\,
	combout => \f~0_combout\);

\w7[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w7(0),
	o => \w7[0]~input_o\);

\f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f~1_combout\ = (\s[0]~input_o\ & ((\f~0_combout\ & ((\w7[0]~input_o\))) # (!\f~0_combout\ & (\w5[0]~input_o\)))) # (!\s[0]~input_o\ & (((\f~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w5[0]~input_o\,
	datab => \s[0]~input_o\,
	datac => \f~0_combout\,
	datad => \w7[0]~input_o\,
	combout => \f~1_combout\);

\w2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w2(0),
	o => \w2[0]~input_o\);

\w1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w1(0),
	o => \w1[0]~input_o\);

\w0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w0(0),
	o => \w0[0]~input_o\);

\f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f~2_combout\ = (\s[1]~input_o\ & (((\s[0]~input_o\)))) # (!\s[1]~input_o\ & ((\s[0]~input_o\ & (\w1[0]~input_o\)) # (!\s[0]~input_o\ & ((\w0[0]~input_o\)))))

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
	combout => \f~2_combout\);

\w3[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w3(0),
	o => \w3[0]~input_o\);

\f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f~3_combout\ = (\s[1]~input_o\ & ((\f~2_combout\ & ((\w3[0]~input_o\))) # (!\f~2_combout\ & (\w2[0]~input_o\)))) # (!\s[1]~input_o\ & (((\f~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w2[0]~input_o\,
	datab => \s[1]~input_o\,
	datac => \f~2_combout\,
	datad => \w3[0]~input_o\,
	combout => \f~3_combout\);

\s[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(2),
	o => \s[2]~input_o\);

\f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f~4_combout\ = (\s[2]~input_o\ & (\f~1_combout\)) # (!\s[2]~input_o\ & ((\f~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f~1_combout\,
	datab => \f~3_combout\,
	datad => \s[2]~input_o\,
	combout => \f~4_combout\);

\w5[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w5(1),
	o => \w5[1]~input_o\);

\w6[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w6(1),
	o => \w6[1]~input_o\);

\w4[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w4(1),
	o => \w4[1]~input_o\);

\f~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f~5_combout\ = (\s[0]~input_o\ & (((\s[1]~input_o\)))) # (!\s[0]~input_o\ & ((\s[1]~input_o\ & (\w6[1]~input_o\)) # (!\s[1]~input_o\ & ((\w4[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[0]~input_o\,
	datab => \w6[1]~input_o\,
	datac => \s[1]~input_o\,
	datad => \w4[1]~input_o\,
	combout => \f~5_combout\);

\w7[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w7(1),
	o => \w7[1]~input_o\);

\f~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f~6_combout\ = (\s[0]~input_o\ & ((\f~5_combout\ & ((\w7[1]~input_o\))) # (!\f~5_combout\ & (\w5[1]~input_o\)))) # (!\s[0]~input_o\ & (((\f~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w5[1]~input_o\,
	datab => \s[0]~input_o\,
	datac => \f~5_combout\,
	datad => \w7[1]~input_o\,
	combout => \f~6_combout\);

\w2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w2(1),
	o => \w2[1]~input_o\);

\w1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w1(1),
	o => \w1[1]~input_o\);

\w0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w0(1),
	o => \w0[1]~input_o\);

\f~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f~7_combout\ = (\s[1]~input_o\ & (((\s[0]~input_o\)))) # (!\s[1]~input_o\ & ((\s[0]~input_o\ & (\w1[1]~input_o\)) # (!\s[0]~input_o\ & ((\w0[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[1]~input_o\,
	datab => \w1[1]~input_o\,
	datac => \s[0]~input_o\,
	datad => \w0[1]~input_o\,
	combout => \f~7_combout\);

\w3[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w3(1),
	o => \w3[1]~input_o\);

\f~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f~8_combout\ = (\s[1]~input_o\ & ((\f~7_combout\ & ((\w3[1]~input_o\))) # (!\f~7_combout\ & (\w2[1]~input_o\)))) # (!\s[1]~input_o\ & (((\f~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w2[1]~input_o\,
	datab => \s[1]~input_o\,
	datac => \f~7_combout\,
	datad => \w3[1]~input_o\,
	combout => \f~8_combout\);

\f~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \f~9_combout\ = (\s[2]~input_o\ & (\f~6_combout\)) # (!\s[2]~input_o\ & ((\f~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f~6_combout\,
	datab => \f~8_combout\,
	datad => \s[2]~input_o\,
	combout => \f~9_combout\);

ww_f(0) <= \f[0]~output_o\;

ww_f(1) <= \f[1]~output_o\;
END structure;


