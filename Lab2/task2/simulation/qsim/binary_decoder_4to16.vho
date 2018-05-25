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

-- DATE "02/13/2018 21:02:43"

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

ENTITY 	binary_decoder_4to16 IS
    PORT (
	w : IN std_logic_vector(3 DOWNTO 0);
	en : IN std_logic;
	y : OUT std_logic_vector(15 DOWNTO 0)
	);
END binary_decoder_4to16;

ARCHITECTURE structure OF binary_decoder_4to16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_w : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_en : std_logic;
SIGNAL ww_y : std_logic_vector(15 DOWNTO 0);
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \y[4]~output_o\ : std_logic;
SIGNAL \y[5]~output_o\ : std_logic;
SIGNAL \y[6]~output_o\ : std_logic;
SIGNAL \y[7]~output_o\ : std_logic;
SIGNAL \y[8]~output_o\ : std_logic;
SIGNAL \y[9]~output_o\ : std_logic;
SIGNAL \y[10]~output_o\ : std_logic;
SIGNAL \y[11]~output_o\ : std_logic;
SIGNAL \y[12]~output_o\ : std_logic;
SIGNAL \y[13]~output_o\ : std_logic;
SIGNAL \y[14]~output_o\ : std_logic;
SIGNAL \y[15]~output_o\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \w[3]~input_o\ : std_logic;
SIGNAL \w[0]~input_o\ : std_logic;
SIGNAL \dec0|y[0]~0_combout\ : std_logic;
SIGNAL \w[1]~input_o\ : std_logic;
SIGNAL \w[2]~input_o\ : std_logic;
SIGNAL \dec0|y[0]~1_combout\ : std_logic;
SIGNAL \dec0|y[1]~2_combout\ : std_logic;
SIGNAL \dec0|y[1]~3_combout\ : std_logic;
SIGNAL \dec0|y[2]~4_combout\ : std_logic;
SIGNAL \dec0|y[3]~5_combout\ : std_logic;
SIGNAL \dec0|y[4]~6_combout\ : std_logic;
SIGNAL \dec0|y[5]~7_combout\ : std_logic;
SIGNAL \dec0|y[6]~8_combout\ : std_logic;
SIGNAL \dec0|y[7]~9_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;

BEGIN

ww_w <= w;
ww_en <= en;
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
	i => \dec0|y[0]~1_combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|y[1]~3_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

\y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|y[2]~4_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

\y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|y[3]~5_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

\y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|y[4]~6_combout\,
	devoe => ww_devoe,
	o => \y[4]~output_o\);

\y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|y[5]~7_combout\,
	devoe => ww_devoe,
	o => \y[5]~output_o\);

\y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|y[6]~8_combout\,
	devoe => ww_devoe,
	o => \y[6]~output_o\);

\y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|y[7]~9_combout\,
	devoe => ww_devoe,
	o => \y[7]~output_o\);

\y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \y[8]~output_o\);

\y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \y[9]~output_o\);

\y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \y[10]~output_o\);

\y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \y[11]~output_o\);

\y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \y[12]~output_o\);

\y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \y[13]~output_o\);

\y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \y[14]~output_o\);

\y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \y[15]~output_o\);

\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

\w[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(3),
	o => \w[3]~input_o\);

\w[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(0),
	o => \w[0]~input_o\);

\dec0|y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|y[0]~0_combout\ = (\en~input_o\ & (!\w[3]~input_o\ & !\w[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datac => \w[3]~input_o\,
	datad => \w[0]~input_o\,
	combout => \dec0|y[0]~0_combout\);

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

\dec0|y[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|y[0]~1_combout\ = (\dec0|y[0]~0_combout\ & (!\w[1]~input_o\ & !\w[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec0|y[0]~0_combout\,
	datac => \w[1]~input_o\,
	datad => \w[2]~input_o\,
	combout => \dec0|y[0]~1_combout\);

\dec0|y[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|y[1]~2_combout\ = (\en~input_o\ & (\w[0]~input_o\ & !\w[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \w[0]~input_o\,
	datad => \w[3]~input_o\,
	combout => \dec0|y[1]~2_combout\);

\dec0|y[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|y[1]~3_combout\ = (\dec0|y[1]~2_combout\ & (!\w[1]~input_o\ & !\w[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec0|y[1]~2_combout\,
	datac => \w[1]~input_o\,
	datad => \w[2]~input_o\,
	combout => \dec0|y[1]~3_combout\);

\dec0|y[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|y[2]~4_combout\ = (\dec0|y[0]~0_combout\ & (\w[1]~input_o\ & !\w[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec0|y[0]~0_combout\,
	datab => \w[1]~input_o\,
	datad => \w[2]~input_o\,
	combout => \dec0|y[2]~4_combout\);

\dec0|y[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|y[3]~5_combout\ = (\w[1]~input_o\ & (\dec0|y[1]~2_combout\ & !\w[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[1]~input_o\,
	datab => \dec0|y[1]~2_combout\,
	datad => \w[2]~input_o\,
	combout => \dec0|y[3]~5_combout\);

\dec0|y[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|y[4]~6_combout\ = (\dec0|y[0]~0_combout\ & (\w[2]~input_o\ & !\w[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec0|y[0]~0_combout\,
	datab => \w[2]~input_o\,
	datad => \w[1]~input_o\,
	combout => \dec0|y[4]~6_combout\);

\dec0|y[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|y[5]~7_combout\ = (\w[2]~input_o\ & (\dec0|y[1]~2_combout\ & !\w[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[2]~input_o\,
	datab => \dec0|y[1]~2_combout\,
	datad => \w[1]~input_o\,
	combout => \dec0|y[5]~7_combout\);

\dec0|y[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|y[6]~8_combout\ = (\dec0|y[0]~0_combout\ & (\w[1]~input_o\ & \w[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec0|y[0]~0_combout\,
	datab => \w[1]~input_o\,
	datac => \w[2]~input_o\,
	combout => \dec0|y[6]~8_combout\);

\dec0|y[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec0|y[7]~9_combout\ = (\w[1]~input_o\ & (\w[2]~input_o\ & \dec0|y[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[1]~input_o\,
	datab => \w[2]~input_o\,
	datac => \dec0|y[1]~2_combout\,
	combout => \dec0|y[7]~9_combout\);

\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\w[3]~input_o\ & (\en~input_o\ & !\w[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[3]~input_o\,
	datab => \en~input_o\,
	datad => \w[0]~input_o\,
	combout => \Mux3~0_combout\);

\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux3~0_combout\ & (!\w[1]~input_o\ & !\w[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datac => \w[1]~input_o\,
	datad => \w[2]~input_o\,
	combout => \Mux7~0_combout\);

\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\w[3]~input_o\ & (\en~input_o\ & \w[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[3]~input_o\,
	datab => \en~input_o\,
	datac => \w[0]~input_o\,
	combout => \Mux6~0_combout\);

\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & (!\w[1]~input_o\ & !\w[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datac => \w[1]~input_o\,
	datad => \w[2]~input_o\,
	combout => \Mux6~1_combout\);

\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\w[1]~input_o\ & (\Mux3~0_combout\ & !\w[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[1]~input_o\,
	datab => \Mux3~0_combout\,
	datad => \w[2]~input_o\,
	combout => \Mux5~0_combout\);

\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\w[1]~input_o\ & (\Mux6~0_combout\ & !\w[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[1]~input_o\,
	datab => \Mux6~0_combout\,
	datad => \w[2]~input_o\,
	combout => \Mux4~0_combout\);

\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\w[2]~input_o\ & (\Mux3~0_combout\ & !\w[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[2]~input_o\,
	datab => \Mux3~0_combout\,
	datad => \w[1]~input_o\,
	combout => \Mux3~1_combout\);

\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\w[2]~input_o\ & (\Mux6~0_combout\ & !\w[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[2]~input_o\,
	datab => \Mux6~0_combout\,
	datad => \w[1]~input_o\,
	combout => \Mux2~0_combout\);

\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\w[1]~input_o\ & (\w[2]~input_o\ & \Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[1]~input_o\,
	datab => \w[2]~input_o\,
	datac => \Mux3~0_combout\,
	combout => \Mux1~0_combout\);

\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\w[1]~input_o\ & (\w[2]~input_o\ & \Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[1]~input_o\,
	datab => \w[2]~input_o\,
	datac => \Mux6~0_combout\,
	combout => \Mux0~0_combout\);

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_y(4) <= \y[4]~output_o\;

ww_y(5) <= \y[5]~output_o\;

ww_y(6) <= \y[6]~output_o\;

ww_y(7) <= \y[7]~output_o\;

ww_y(8) <= \y[8]~output_o\;

ww_y(9) <= \y[9]~output_o\;

ww_y(10) <= \y[10]~output_o\;

ww_y(11) <= \y[11]~output_o\;

ww_y(12) <= \y[12]~output_o\;

ww_y(13) <= \y[13]~output_o\;

ww_y(14) <= \y[14]~output_o\;

ww_y(15) <= \y[15]~output_o\;
END structure;


