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

-- DATE "02/18/2018 03:59:16"

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

ENTITY 	compare_2bit IS
    PORT (
	x : IN std_logic_vector(1 DOWNTO 0);
	y : IN std_logic_vector(1 DOWNTO 0);
	LEG : OUT std_logic_vector(2 DOWNTO 0)
	);
END compare_2bit;

ARCHITECTURE structure OF compare_2bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEG : std_logic_vector(2 DOWNTO 0);
SIGNAL \LEG[0]~output_o\ : std_logic;
SIGNAL \LEG[1]~output_o\ : std_logic;
SIGNAL \LEG[2]~output_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \LEG~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_x <= x;
ww_y <= y;
LEG <= ww_LEG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

\LEG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \LEG[0]~output_o\);

\LEG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \LEG[1]~output_o\);

\LEG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEG~0_combout\,
	devoe => ww_devoe,
	o => \LEG[2]~output_o\);

\y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

\y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

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

\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\y[1]~input_o\ & (!\y[0]~input_o\ & (\x[0]~input_o\ & \x[1]~input_o\))) # (!\y[1]~input_o\ & ((\x[1]~input_o\) # ((!\y[0]~input_o\ & \x[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[1]~input_o\,
	datac => \x[0]~input_o\,
	datad => \x[1]~input_o\,
	combout => \Mux1~0_combout\);

\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\y[0]~input_o\ & ((\y[1]~input_o\ $ (\x[1]~input_o\)) # (!\x[0]~input_o\))) # (!\y[0]~input_o\ & ((\x[0]~input_o\) # (\y[1]~input_o\ $ (\x[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[1]~input_o\,
	datac => \x[0]~input_o\,
	datad => \x[1]~input_o\,
	combout => \Mux0~0_combout\);

\LEG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEG~0_combout\ = (\y[1]~input_o\ & (((\y[0]~input_o\ & !\x[0]~input_o\)) # (!\x[1]~input_o\))) # (!\y[1]~input_o\ & (\y[0]~input_o\ & (!\x[0]~input_o\ & !\x[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[1]~input_o\,
	datab => \y[0]~input_o\,
	datac => \x[0]~input_o\,
	datad => \x[1]~input_o\,
	combout => \LEG~0_combout\);

ww_LEG(0) <= \LEG[0]~output_o\;

ww_LEG(1) <= \LEG[1]~output_o\;

ww_LEG(2) <= \LEG[2]~output_o\;
END structure;


