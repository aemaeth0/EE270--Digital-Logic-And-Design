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

-- DATE "03/23/2018 21:33:23"

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

ENTITY 	ones_counter_8to4 IS
    PORT (
	x : IN std_logic_vector(7 DOWNTO 0);
	y : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END ones_counter_8to4;

ARCHITECTURE structure OF ones_counter_8to4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \FA1|sum~0_combout\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \FA2|sum~0_combout\ : std_logic;
SIGNAL \FA3|sum~0_combout\ : std_logic;
SIGNAL \FA3|cout~0_combout\ : std_logic;
SIGNAL \FA2|cout~0_combout\ : std_logic;
SIGNAL \FA0|Equal1~0_combout\ : std_logic;
SIGNAL \FA1|cout~0_combout\ : std_logic;
SIGNAL \FA5|sum~0_combout\ : std_logic;
SIGNAL \FA6|sum~0_combout\ : std_logic;
SIGNAL \FA6|Equal1~0_combout\ : std_logic;

BEGIN

ww_x <= x;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA3|sum~0_combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA5|sum~0_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

\y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA6|sum~0_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

\y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA6|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

\x[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

\x[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

\x[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

\FA1|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA1|sum~0_combout\ = \x[2]~input_o\ $ (\x[3]~input_o\ $ (\x[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datac => \x[4]~input_o\,
	combout => \FA1|sum~0_combout\);

\x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

\x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

\x[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

\x[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

\x[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

\FA2|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA2|sum~0_combout\ = \x[5]~input_o\ $ (\x[6]~input_o\ $ (\x[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[5]~input_o\,
	datab => \x[6]~input_o\,
	datac => \x[7]~input_o\,
	combout => \FA2|sum~0_combout\);

\FA3|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA3|sum~0_combout\ = \FA1|sum~0_combout\ $ (\x[0]~input_o\ $ (\x[1]~input_o\ $ (\FA2|sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA1|sum~0_combout\,
	datab => \x[0]~input_o\,
	datac => \x[1]~input_o\,
	datad => \FA2|sum~0_combout\,
	combout => \FA3|sum~0_combout\);

\FA3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA3|cout~0_combout\ = (\FA1|sum~0_combout\ & ((\FA2|sum~0_combout\) # (\x[0]~input_o\ $ (\x[1]~input_o\)))) # (!\FA1|sum~0_combout\ & (\FA2|sum~0_combout\ & (\x[0]~input_o\ $ (\x[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA1|sum~0_combout\,
	datab => \FA2|sum~0_combout\,
	datac => \x[0]~input_o\,
	datad => \x[1]~input_o\,
	combout => \FA3|cout~0_combout\);

\FA2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA2|cout~0_combout\ = (\x[5]~input_o\ & ((\x[6]~input_o\) # (\x[7]~input_o\))) # (!\x[5]~input_o\ & (\x[6]~input_o\ & \x[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[5]~input_o\,
	datab => \x[6]~input_o\,
	datac => \x[7]~input_o\,
	combout => \FA2|cout~0_combout\);

\FA0|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA0|Equal1~0_combout\ = (\x[0]~input_o\ & \x[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \x[1]~input_o\,
	combout => \FA0|Equal1~0_combout\);

\FA1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA1|cout~0_combout\ = (\x[2]~input_o\ & ((\x[3]~input_o\) # (\x[4]~input_o\))) # (!\x[2]~input_o\ & (\x[3]~input_o\ & \x[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datac => \x[4]~input_o\,
	combout => \FA1|cout~0_combout\);

\FA5|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA5|sum~0_combout\ = \FA3|cout~0_combout\ $ (\FA2|cout~0_combout\ $ (\FA0|Equal1~0_combout\ $ (\FA1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA3|cout~0_combout\,
	datab => \FA2|cout~0_combout\,
	datac => \FA0|Equal1~0_combout\,
	datad => \FA1|cout~0_combout\,
	combout => \FA5|sum~0_combout\);

\FA6|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA6|sum~0_combout\ = (\FA3|cout~0_combout\ & ((\FA2|cout~0_combout\ & ((!\FA1|cout~0_combout\) # (!\FA0|Equal1~0_combout\))) # (!\FA2|cout~0_combout\ & ((\FA0|Equal1~0_combout\) # (\FA1|cout~0_combout\))))) # (!\FA3|cout~0_combout\ & 
-- ((\FA2|cout~0_combout\ & ((\FA0|Equal1~0_combout\) # (\FA1|cout~0_combout\))) # (!\FA2|cout~0_combout\ & (\FA0|Equal1~0_combout\ & \FA1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA3|cout~0_combout\,
	datab => \FA2|cout~0_combout\,
	datac => \FA0|Equal1~0_combout\,
	datad => \FA1|cout~0_combout\,
	combout => \FA6|sum~0_combout\);

\FA6|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA6|Equal1~0_combout\ = (\FA3|cout~0_combout\ & (\FA2|cout~0_combout\ & (\FA0|Equal1~0_combout\ & \FA1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA3|cout~0_combout\,
	datab => \FA2|cout~0_combout\,
	datac => \FA0|Equal1~0_combout\,
	datad => \FA1|cout~0_combout\,
	combout => \FA6|Equal1~0_combout\);

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;
END structure;


