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

-- DATE "03/09/2018 21:45:56"

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

ENTITY 	bin_to_therm_decoder_4to15 IS
    PORT (
	bin : IN std_logic_vector(3 DOWNTO 0);
	therm : BUFFER std_logic_vector(14 DOWNTO 0)
	);
END bin_to_therm_decoder_4to15;

ARCHITECTURE structure OF bin_to_therm_decoder_4to15 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bin : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_therm : std_logic_vector(14 DOWNTO 0);
SIGNAL \therm[0]~output_o\ : std_logic;
SIGNAL \therm[1]~output_o\ : std_logic;
SIGNAL \therm[2]~output_o\ : std_logic;
SIGNAL \therm[3]~output_o\ : std_logic;
SIGNAL \therm[4]~output_o\ : std_logic;
SIGNAL \therm[5]~output_o\ : std_logic;
SIGNAL \therm[6]~output_o\ : std_logic;
SIGNAL \therm[7]~output_o\ : std_logic;
SIGNAL \therm[8]~output_o\ : std_logic;
SIGNAL \therm[9]~output_o\ : std_logic;
SIGNAL \therm[10]~output_o\ : std_logic;
SIGNAL \therm[11]~output_o\ : std_logic;
SIGNAL \therm[12]~output_o\ : std_logic;
SIGNAL \therm[13]~output_o\ : std_logic;
SIGNAL \therm[14]~output_o\ : std_logic;
SIGNAL \bin[3]~input_o\ : std_logic;
SIGNAL \bin[2]~input_o\ : std_logic;
SIGNAL \bin[1]~input_o\ : std_logic;
SIGNAL \bin[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \therm~42_combout\ : std_logic;
SIGNAL \therm~50_combout\ : std_logic;
SIGNAL \therm~51_combout\ : std_logic;
SIGNAL \therm~52_combout\ : std_logic;
SIGNAL \therm~54_combout\ : std_logic;
SIGNAL \therm~53_combout\ : std_logic;
SIGNAL \therm~43_combout\ : std_logic;
SIGNAL \therm~44_combout\ : std_logic;
SIGNAL \therm~48_combout\ : std_logic;
SIGNAL \therm~45_combout\ : std_logic;
SIGNAL \therm~49_combout\ : std_logic;
SIGNAL \therm~46_combout\ : std_logic;
SIGNAL \therm~47_combout\ : std_logic;
SIGNAL \ALT_INV_therm~51_combout\ : std_logic;
SIGNAL \ALT_INV_therm~50_combout\ : std_logic;
SIGNAL \ALT_INV_therm~49_combout\ : std_logic;
SIGNAL \ALT_INV_therm~47_combout\ : std_logic;
SIGNAL \ALT_INV_therm~44_combout\ : std_logic;
SIGNAL \ALT_INV_therm~42_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_bin <= bin;
therm <= ww_therm;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_therm~51_combout\ <= NOT \therm~51_combout\;
\ALT_INV_therm~50_combout\ <= NOT \therm~50_combout\;
\ALT_INV_therm~49_combout\ <= NOT \therm~49_combout\;
\ALT_INV_therm~47_combout\ <= NOT \therm~47_combout\;
\ALT_INV_therm~44_combout\ <= NOT \therm~44_combout\;
\ALT_INV_therm~42_combout\ <= NOT \therm~42_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;

\therm[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \therm[0]~output_o\);

\therm[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_therm~42_combout\,
	devoe => ww_devoe,
	o => \therm[1]~output_o\);

\therm[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_therm~50_combout\,
	devoe => ww_devoe,
	o => \therm[2]~output_o\);

\therm[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_therm~51_combout\,
	devoe => ww_devoe,
	o => \therm[3]~output_o\);

\therm[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \therm~52_combout\,
	devoe => ww_devoe,
	o => \therm[4]~output_o\);

\therm[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \therm~54_combout\,
	devoe => ww_devoe,
	o => \therm[5]~output_o\);

\therm[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \therm~53_combout\,
	devoe => ww_devoe,
	o => \therm[6]~output_o\);

\therm[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin[3]~input_o\,
	devoe => ww_devoe,
	o => \therm[7]~output_o\);

\therm[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \therm~43_combout\,
	devoe => ww_devoe,
	o => \therm[8]~output_o\);

\therm[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_therm~44_combout\,
	devoe => ww_devoe,
	o => \therm[9]~output_o\);

\therm[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \therm~48_combout\,
	devoe => ww_devoe,
	o => \therm[10]~output_o\);

\therm[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \therm~45_combout\,
	devoe => ww_devoe,
	o => \therm[11]~output_o\);

\therm[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_therm~49_combout\,
	devoe => ww_devoe,
	o => \therm[12]~output_o\);

\therm[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \therm~46_combout\,
	devoe => ww_devoe,
	o => \therm[13]~output_o\);

\therm[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_therm~47_combout\,
	devoe => ww_devoe,
	o => \therm[14]~output_o\);

\bin[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(3),
	o => \bin[3]~input_o\);

\bin[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(2),
	o => \bin[2]~input_o\);

\bin[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(1),
	o => \bin[1]~input_o\);

\bin[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(0),
	o => \bin[0]~input_o\);

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\bin[3]~input_o\ & (!\bin[2]~input_o\ & (!\bin[1]~input_o\ & !\bin[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[3]~input_o\,
	datab => \bin[2]~input_o\,
	datac => \bin[1]~input_o\,
	datad => \bin[0]~input_o\,
	combout => \Equal0~0_combout\);

\therm~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \therm~42_combout\ = (!\bin[3]~input_o\ & (!\bin[2]~input_o\ & !\bin[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin[3]~input_o\,
	datac => \bin[2]~input_o\,
	datad => \bin[1]~input_o\,
	combout => \therm~42_combout\);

\therm~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \therm~50_combout\ = (!\bin[2]~input_o\ & (!\bin[3]~input_o\ & ((!\bin[1]~input_o\) # (!\bin[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[0]~input_o\,
	datab => \bin[1]~input_o\,
	datac => \bin[2]~input_o\,
	datad => \bin[3]~input_o\,
	combout => \therm~50_combout\);

\therm~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \therm~51_combout\ = (!\bin[2]~input_o\ & !\bin[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[2]~input_o\,
	datab => \bin[3]~input_o\,
	combout => \therm~51_combout\);

\therm~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \therm~52_combout\ = (\bin[3]~input_o\) # ((\bin[2]~input_o\ & ((\bin[0]~input_o\) # (\bin[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[0]~input_o\,
	datab => \bin[1]~input_o\,
	datac => \bin[2]~input_o\,
	datad => \bin[3]~input_o\,
	combout => \therm~52_combout\);

\therm~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \therm~54_combout\ = (\bin[3]~input_o\) # ((\bin[2]~input_o\ & \bin[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[2]~input_o\,
	datab => \bin[1]~input_o\,
	datac => \bin[3]~input_o\,
	combout => \therm~54_combout\);

\therm~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \therm~53_combout\ = (\bin[3]~input_o\) # ((\bin[2]~input_o\ & (\bin[1]~input_o\ & \bin[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[2]~input_o\,
	datab => \bin[1]~input_o\,
	datac => \bin[0]~input_o\,
	datad => \bin[3]~input_o\,
	combout => \therm~53_combout\);

\therm~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \therm~43_combout\ = (\bin[3]~input_o\ & ((\bin[2]~input_o\) # ((\bin[1]~input_o\) # (\bin[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[3]~input_o\,
	datab => \bin[2]~input_o\,
	datac => \bin[1]~input_o\,
	datad => \bin[0]~input_o\,
	combout => \therm~43_combout\);

\therm~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \therm~44_combout\ = ((!\bin[2]~input_o\ & !\bin[1]~input_o\)) # (!\bin[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin[2]~input_o\,
	datac => \bin[1]~input_o\,
	datad => \bin[3]~input_o\,
	combout => \therm~44_combout\);

\therm~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \therm~48_combout\ = (\bin[3]~input_o\ & ((\bin[2]~input_o\) # ((\bin[1]~input_o\ & \bin[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[3]~input_o\,
	datab => \bin[2]~input_o\,
	datac => \bin[1]~input_o\,
	datad => \bin[0]~input_o\,
	combout => \therm~48_combout\);

\therm~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \therm~45_combout\ = (\bin[3]~input_o\ & \bin[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[3]~input_o\,
	datab => \bin[2]~input_o\,
	combout => \therm~45_combout\);

\therm~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \therm~49_combout\ = (((!\bin[1]~input_o\ & !\bin[0]~input_o\)) # (!\bin[2]~input_o\)) # (!\bin[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[3]~input_o\,
	datab => \bin[2]~input_o\,
	datac => \bin[1]~input_o\,
	datad => \bin[0]~input_o\,
	combout => \therm~49_combout\);

\therm~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \therm~46_combout\ = (\bin[3]~input_o\ & (\bin[2]~input_o\ & \bin[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[3]~input_o\,
	datab => \bin[2]~input_o\,
	datac => \bin[1]~input_o\,
	combout => \therm~46_combout\);

\therm~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \therm~47_combout\ = (((!\bin[0]~input_o\) # (!\bin[1]~input_o\)) # (!\bin[2]~input_o\)) # (!\bin[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[3]~input_o\,
	datab => \bin[2]~input_o\,
	datac => \bin[1]~input_o\,
	datad => \bin[0]~input_o\,
	combout => \therm~47_combout\);

ww_therm(0) <= \therm[0]~output_o\;

ww_therm(1) <= \therm[1]~output_o\;

ww_therm(2) <= \therm[2]~output_o\;

ww_therm(3) <= \therm[3]~output_o\;

ww_therm(4) <= \therm[4]~output_o\;

ww_therm(5) <= \therm[5]~output_o\;

ww_therm(6) <= \therm[6]~output_o\;

ww_therm(7) <= \therm[7]~output_o\;

ww_therm(8) <= \therm[8]~output_o\;

ww_therm(9) <= \therm[9]~output_o\;

ww_therm(10) <= \therm[10]~output_o\;

ww_therm(11) <= \therm[11]~output_o\;

ww_therm(12) <= \therm[12]~output_o\;

ww_therm(13) <= \therm[13]~output_o\;

ww_therm(14) <= \therm[14]~output_o\;
END structure;


