-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Standard Edition"

-- DATE "04/04/2018 21:00:07"

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

ENTITY 	log_shifter_4bit IS
    PORT (
	arith : IN std_logic;
	lin : IN std_logic;
	right : IN std_logic;
	A : IN std_logic_vector(3 DOWNTO 0);
	cnt : IN std_logic_vector(1 DOWNTO 0);
	F : OUT std_logic_vector(3 DOWNTO 0)
	);
END log_shifter_4bit;

ARCHITECTURE structure OF log_shifter_4bit IS
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
SIGNAL ww_lin : std_logic;
SIGNAL ww_right : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cnt : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(3 DOWNTO 0);
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \cnt[1]~input_o\ : std_logic;
SIGNAL \right~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \arith~input_o\ : std_logic;
SIGNAL \lin~input_o\ : std_logic;
SIGNAL \mux2[3]~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \cnt[0]~input_o\ : std_logic;
SIGNAL \mux2[3]~4_combout\ : std_logic;
SIGNAL \mux2[3]~5_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \mux1[3]~2_combout\ : std_logic;
SIGNAL \mux2[3]~6_combout\ : std_logic;
SIGNAL \mux1[2]~0_combout\ : std_logic;
SIGNAL \mux1[2]~1_combout\ : std_logic;
SIGNAL \mux2[2]~1_combout\ : std_logic;
SIGNAL \mux2[0]~2_combout\ : std_logic;
SIGNAL \mux2[0]~3_combout\ : std_logic;
SIGNAL \F~6_combout\ : std_logic;
SIGNAL \mux2[1]~7_combout\ : std_logic;
SIGNAL \mux2[1]~8_combout\ : std_logic;
SIGNAL \mux2[2]~9_combout\ : std_logic;
SIGNAL \mux2[2]~10_combout\ : std_logic;
SIGNAL \F~4_combout\ : std_logic;
SIGNAL \F~5_combout\ : std_logic;
SIGNAL \F~7_combout\ : std_logic;

BEGIN

ww_arith <= arith;
ww_lin <= lin;
ww_right <= right;
ww_A <= A;
ww_cnt <= cnt;
F <= ww_F;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\F[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F~6_combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

\F[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F~4_combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

\F[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F~5_combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

\F[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F~7_combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

\cnt[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cnt(1),
	o => \cnt[1]~input_o\);

\right~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_right,
	o => \right~input_o\);

\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\arith~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arith,
	o => \arith~input_o\);

\lin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lin,
	o => \lin~input_o\);

\mux2[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2[3]~0_combout\ = (\right~input_o\ & (\A[3]~input_o\ & (\arith~input_o\ & \lin~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \right~input_o\,
	datab => \A[3]~input_o\,
	datac => \arith~input_o\,
	datad => \lin~input_o\,
	combout => \mux2[3]~0_combout\);

\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\cnt[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cnt(0),
	o => \cnt[0]~input_o\);

\mux2[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2[3]~4_combout\ = (\A[2]~input_o\ & ((\A[1]~input_o\) # (\right~input_o\ $ (!\cnt[0]~input_o\)))) # (!\A[2]~input_o\ & (\A[1]~input_o\ & (\right~input_o\ $ (\cnt[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \right~input_o\,
	datad => \cnt[0]~input_o\,
	combout => \mux2[3]~4_combout\);

\mux2[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2[3]~5_combout\ = (\cnt[1]~input_o\ & ((\mux2[3]~0_combout\) # ((\mux2[3]~4_combout\ & !\lin~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[1]~input_o\,
	datab => \mux2[3]~0_combout\,
	datac => \mux2[3]~4_combout\,
	datad => \lin~input_o\,
	combout => \mux2[3]~5_combout\);

\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\mux1[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1[3]~2_combout\ = \right~input_o\ $ (\cnt[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \right~input_o\,
	datad => \cnt[0]~input_o\,
	combout => \mux1[3]~2_combout\);

\mux2[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2[3]~6_combout\ = (!\cnt[1]~input_o\ & ((\mux1[3]~2_combout\ & (\A[3]~input_o\)) # (!\mux1[3]~2_combout\ & ((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[0]~input_o\,
	datac => \mux1[3]~2_combout\,
	datad => \cnt[1]~input_o\,
	combout => \mux2[3]~6_combout\);

\mux1[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1[2]~0_combout\ = (\cnt[0]~input_o\ & (((\right~input_o\)))) # (!\cnt[0]~input_o\ & ((\right~input_o\ & (\A[2]~input_o\)) # (!\right~input_o\ & ((\A[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[0]~input_o\,
	datab => \A[2]~input_o\,
	datac => \right~input_o\,
	datad => \A[1]~input_o\,
	combout => \mux1[2]~0_combout\);

\mux1[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1[2]~1_combout\ = (\cnt[0]~input_o\ & ((\mux1[2]~0_combout\ & ((\A[3]~input_o\))) # (!\mux1[2]~0_combout\ & (\A[0]~input_o\)))) # (!\cnt[0]~input_o\ & (((\mux1[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \cnt[0]~input_o\,
	datac => \mux1[2]~0_combout\,
	datad => \A[3]~input_o\,
	combout => \mux1[2]~1_combout\);

\mux2[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2[2]~1_combout\ = (\right~input_o\ & (\A[0]~input_o\)) # (!\right~input_o\ & ((\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[3]~input_o\,
	datad => \right~input_o\,
	combout => \mux2[2]~1_combout\);

\mux2[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2[0]~2_combout\ = (\cnt[0]~input_o\ & ((\mux2[3]~0_combout\) # ((\mux2[2]~1_combout\ & !\lin~input_o\)))) # (!\cnt[0]~input_o\ & (((\mux2[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2[3]~0_combout\,
	datab => \mux2[2]~1_combout\,
	datac => \cnt[0]~input_o\,
	datad => \lin~input_o\,
	combout => \mux2[0]~2_combout\);

\mux2[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2[0]~3_combout\ = (\cnt[1]~input_o\ & (\mux1[2]~1_combout\)) # (!\cnt[1]~input_o\ & ((\mux2[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1[2]~1_combout\,
	datab => \mux2[0]~2_combout\,
	datad => \cnt[1]~input_o\,
	combout => \mux2[0]~3_combout\);

\F~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~6_combout\ = (\right~input_o\ & (((\mux2[0]~3_combout\)))) # (!\right~input_o\ & ((\mux2[3]~5_combout\) # ((\mux2[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2[3]~5_combout\,
	datab => \mux2[3]~6_combout\,
	datac => \mux2[0]~3_combout\,
	datad => \right~input_o\,
	combout => \F~6_combout\);

\mux2[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2[1]~7_combout\ = (\cnt[1]~input_o\ & (((\mux1[3]~2_combout\)))) # (!\cnt[1]~input_o\ & ((\mux1[3]~2_combout\ & (\A[1]~input_o\)) # (!\mux1[3]~2_combout\ & ((\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \cnt[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \mux1[3]~2_combout\,
	combout => \mux2[1]~7_combout\);

\mux2[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2[1]~8_combout\ = (\cnt[1]~input_o\ & ((\mux2[1]~7_combout\ & (\A[3]~input_o\)) # (!\mux2[1]~7_combout\ & ((\A[0]~input_o\))))) # (!\cnt[1]~input_o\ & (((\mux2[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[0]~input_o\,
	datac => \cnt[1]~input_o\,
	datad => \mux2[1]~7_combout\,
	combout => \mux2[1]~8_combout\);

\mux2[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2[2]~9_combout\ = (!\lin~input_o\ & ((\right~input_o\ & (\A[0]~input_o\)) # (!\right~input_o\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[3]~input_o\,
	datac => \right~input_o\,
	datad => \lin~input_o\,
	combout => \mux2[2]~9_combout\);

\mux2[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2[2]~10_combout\ = (\cnt[1]~input_o\ & (((\mux2[3]~0_combout\) # (\mux2[2]~9_combout\)))) # (!\cnt[1]~input_o\ & (\mux1[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1[2]~1_combout\,
	datab => \cnt[1]~input_o\,
	datac => \mux2[3]~0_combout\,
	datad => \mux2[2]~9_combout\,
	combout => \mux2[2]~10_combout\);

\F~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~4_combout\ = (\right~input_o\ & (\mux2[1]~8_combout\)) # (!\right~input_o\ & ((\mux2[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2[1]~8_combout\,
	datab => \mux2[2]~10_combout\,
	datad => \right~input_o\,
	combout => \F~4_combout\);

\F~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~5_combout\ = (\right~input_o\ & (\mux2[2]~10_combout\)) # (!\right~input_o\ & ((\mux2[1]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2[2]~10_combout\,
	datab => \mux2[1]~8_combout\,
	datad => \right~input_o\,
	combout => \F~5_combout\);

\F~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \F~7_combout\ = (\right~input_o\ & ((\mux2[3]~5_combout\) # ((\mux2[3]~6_combout\)))) # (!\right~input_o\ & (((\mux2[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2[3]~5_combout\,
	datab => \mux2[3]~6_combout\,
	datac => \mux2[0]~3_combout\,
	datad => \right~input_o\,
	combout => \F~7_combout\);

ww_F(0) <= \F[0]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(3) <= \F[3]~output_o\;
END structure;


