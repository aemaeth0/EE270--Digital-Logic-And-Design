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

-- DATE "03/02/2018 19:20:53"

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

ENTITY 	sel_arbiter_nbit IS
    PORT (
	msb : IN std_logic;
	req : IN std_logic_vector(3 DOWNTO 0);
	gnt : OUT std_logic_vector(3 DOWNTO 0);
	zero : OUT std_logic
	);
END sel_arbiter_nbit;

ARCHITECTURE structure OF sel_arbiter_nbit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_msb : std_logic;
SIGNAL ww_req : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_gnt : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL \gnt[0]~output_o\ : std_logic;
SIGNAL \gnt[1]~output_o\ : std_logic;
SIGNAL \gnt[2]~output_o\ : std_logic;
SIGNAL \gnt[3]~output_o\ : std_logic;
SIGNAL \zero~output_o\ : std_logic;
SIGNAL \req[0]~input_o\ : std_logic;
SIGNAL \msb~input_o\ : std_logic;
SIGNAL \req[3]~input_o\ : std_logic;
SIGNAL \req[2]~input_o\ : std_logic;
SIGNAL \req[1]~input_o\ : std_logic;
SIGNAL \a[0]~0_combout\ : std_logic;
SIGNAL \gnt~0_combout\ : std_logic;
SIGNAL \gnt~1_combout\ : std_logic;
SIGNAL \gnt~2_combout\ : std_logic;
SIGNAL \gnt~3_combout\ : std_logic;
SIGNAL \gnt~4_combout\ : std_logic;
SIGNAL \gnt~5_combout\ : std_logic;
SIGNAL \zero~0_combout\ : std_logic;
SIGNAL \ALT_INV_zero~0_combout\ : std_logic;

BEGIN

ww_msb <= msb;
ww_req <= req;
gnt <= ww_gnt;
zero <= ww_zero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_zero~0_combout\ <= NOT \zero~0_combout\;

\gnt[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gnt~0_combout\,
	devoe => ww_devoe,
	o => \gnt[0]~output_o\);

\gnt[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gnt~2_combout\,
	devoe => ww_devoe,
	o => \gnt[1]~output_o\);

\gnt[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gnt~4_combout\,
	devoe => ww_devoe,
	o => \gnt[2]~output_o\);

\gnt[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gnt~5_combout\,
	devoe => ww_devoe,
	o => \gnt[3]~output_o\);

\zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_zero~0_combout\,
	devoe => ww_devoe,
	o => \zero~output_o\);

\req[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_req(0),
	o => \req[0]~input_o\);

\msb~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_msb,
	o => \msb~input_o\);

\req[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_req(3),
	o => \req[3]~input_o\);

\req[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_req(2),
	o => \req[2]~input_o\);

\req[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_req(1),
	o => \req[1]~input_o\);

\a[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[0]~0_combout\ = (!\req[2]~input_o\ & (!\req[1]~input_o\ & ((!\req[3]~input_o\) # (!\msb~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msb~input_o\,
	datab => \req[3]~input_o\,
	datac => \req[2]~input_o\,
	datad => \req[1]~input_o\,
	combout => \a[0]~0_combout\);

\gnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gnt~0_combout\ = (\req[0]~input_o\ & ((\a[0]~0_combout\) # (!\msb~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \req[0]~input_o\,
	datab => \a[0]~0_combout\,
	datad => \msb~input_o\,
	combout => \gnt~0_combout\);

\gnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gnt~1_combout\ = (\msb~input_o\ & (\req[1]~input_o\ & (!\req[3]~input_o\ & !\req[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msb~input_o\,
	datab => \req[1]~input_o\,
	datac => \req[3]~input_o\,
	datad => \req[2]~input_o\,
	combout => \gnt~1_combout\);

\gnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gnt~2_combout\ = (\gnt~1_combout\) # ((\req[1]~input_o\ & (!\msb~input_o\ & !\req[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gnt~1_combout\,
	datab => \req[1]~input_o\,
	datac => \msb~input_o\,
	datad => \req[0]~input_o\,
	combout => \gnt~2_combout\);

\gnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gnt~3_combout\ = (\req[2]~input_o\ & (!\msb~input_o\ & (!\req[0]~input_o\ & !\req[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \req[2]~input_o\,
	datab => \msb~input_o\,
	datac => \req[0]~input_o\,
	datad => \req[1]~input_o\,
	combout => \gnt~3_combout\);

\gnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \gnt~4_combout\ = (\gnt~3_combout\) # ((\msb~input_o\ & (\req[2]~input_o\ & !\req[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gnt~3_combout\,
	datab => \msb~input_o\,
	datac => \req[2]~input_o\,
	datad => \req[3]~input_o\,
	combout => \gnt~4_combout\);

\gnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \gnt~5_combout\ = (\req[3]~input_o\ & ((\msb~input_o\) # ((\a[0]~0_combout\ & !\req[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \req[3]~input_o\,
	datab => \msb~input_o\,
	datac => \a[0]~0_combout\,
	datad => \req[0]~input_o\,
	combout => \gnt~5_combout\);

\zero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \zero~0_combout\ = (\req[0]~input_o\) # (!\a[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \req[0]~input_o\,
	datad => \a[0]~0_combout\,
	combout => \zero~0_combout\);

ww_gnt(0) <= \gnt[0]~output_o\;

ww_gnt(1) <= \gnt[1]~output_o\;

ww_gnt(2) <= \gnt[2]~output_o\;

ww_gnt(3) <= \gnt[3]~output_o\;

ww_zero <= \zero~output_o\;
END structure;


