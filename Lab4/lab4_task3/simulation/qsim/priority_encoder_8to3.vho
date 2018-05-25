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

-- DATE "03/02/2018 18:48:38"

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

ENTITY 	priority_encoder_8to3 IS
    PORT (
	w : IN std_logic_vector(7 DOWNTO 0);
	y : OUT std_logic_vector(2 DOWNTO 0);
	any : OUT std_logic
	);
END priority_encoder_8to3;

ARCHITECTURE structure OF priority_encoder_8to3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_w : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_any : std_logic;
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \any~output_o\ : std_logic;
SIGNAL \w[7]~input_o\ : std_logic;
SIGNAL \w[5]~input_o\ : std_logic;
SIGNAL \w[6]~input_o\ : std_logic;
SIGNAL \w[3]~input_o\ : std_logic;
SIGNAL \w[1]~input_o\ : std_logic;
SIGNAL \w[2]~input_o\ : std_logic;
SIGNAL \w[4]~input_o\ : std_logic;
SIGNAL \mux0|f[0]~0_combout\ : std_logic;
SIGNAL \mux0|f[0]~1_combout\ : std_logic;
SIGNAL \pri_enc2|y[0]~0_combout\ : std_logic;
SIGNAL \pri_enc2|y[0]~1_combout\ : std_logic;
SIGNAL \pri_enc2|process_0~0_combout\ : std_logic;
SIGNAL \w[0]~input_o\ : std_logic;
SIGNAL \pri_enc2|a~0_combout\ : std_logic;
SIGNAL \pri_enc2|a~combout\ : std_logic;

BEGIN

ww_w <= w;
y <= ww_y;
any <= ww_any;
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
	i => \mux0|f[0]~1_combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pri_enc2|y[0]~1_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

\y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pri_enc2|process_0~0_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

\any~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pri_enc2|a~combout\,
	devoe => ww_devoe,
	o => \any~output_o\);

\w[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(7),
	o => \w[7]~input_o\);

\w[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(5),
	o => \w[5]~input_o\);

\w[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(6),
	o => \w[6]~input_o\);

\w[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(3),
	o => \w[3]~input_o\);

\w[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(1),
	o => \w[1]~input_o\);

\w[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(2),
	o => \w[2]~input_o\);

\w[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(4),
	o => \w[4]~input_o\);

\mux0|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux0|f[0]~0_combout\ = (!\w[4]~input_o\ & ((\w[3]~input_o\) # ((\w[1]~input_o\ & !\w[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[3]~input_o\,
	datab => \w[1]~input_o\,
	datac => \w[2]~input_o\,
	datad => \w[4]~input_o\,
	combout => \mux0|f[0]~0_combout\);

\mux0|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux0|f[0]~1_combout\ = (\w[7]~input_o\) # ((!\w[6]~input_o\ & ((\w[5]~input_o\) # (\mux0|f[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[7]~input_o\,
	datab => \w[5]~input_o\,
	datac => \w[6]~input_o\,
	datad => \mux0|f[0]~0_combout\,
	combout => \mux0|f[0]~1_combout\);

\pri_enc2|y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pri_enc2|y[0]~0_combout\ = (!\w[4]~input_o\ & (!\w[5]~input_o\ & ((\w[3]~input_o\) # (\w[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[3]~input_o\,
	datab => \w[2]~input_o\,
	datac => \w[4]~input_o\,
	datad => \w[5]~input_o\,
	combout => \pri_enc2|y[0]~0_combout\);

\pri_enc2|y[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pri_enc2|y[0]~1_combout\ = (\w[6]~input_o\) # ((\w[7]~input_o\) # (\pri_enc2|y[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[6]~input_o\,
	datab => \w[7]~input_o\,
	datac => \pri_enc2|y[0]~0_combout\,
	combout => \pri_enc2|y[0]~1_combout\);

\pri_enc2|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pri_enc2|process_0~0_combout\ = (\w[4]~input_o\) # ((\w[6]~input_o\) # ((\w[7]~input_o\) # (\w[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[4]~input_o\,
	datab => \w[6]~input_o\,
	datac => \w[7]~input_o\,
	datad => \w[5]~input_o\,
	combout => \pri_enc2|process_0~0_combout\);

\w[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(0),
	o => \w[0]~input_o\);

\pri_enc2|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pri_enc2|a~0_combout\ = (\w[3]~input_o\) # ((\w[1]~input_o\) # ((\w[2]~input_o\) # (\w[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[3]~input_o\,
	datab => \w[1]~input_o\,
	datac => \w[2]~input_o\,
	datad => \w[0]~input_o\,
	combout => \pri_enc2|a~0_combout\);

\pri_enc2|a\ : cycloneive_lcell_comb
-- Equation(s):
-- \pri_enc2|a~combout\ = (\pri_enc2|process_0~0_combout\) # (\pri_enc2|a~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pri_enc2|process_0~0_combout\,
	datab => \pri_enc2|a~0_combout\,
	combout => \pri_enc2|a~combout\);

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_any <= \any~output_o\;
END structure;


