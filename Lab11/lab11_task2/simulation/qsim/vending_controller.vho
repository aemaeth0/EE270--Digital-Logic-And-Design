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

-- DATE "04/29/2018 18:30:10"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vending_controller IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	m : IN std_logic_vector(1 DOWNTO 0);
	dc : OUT std_logic;
	dd : OUT std_logic;
	dn : OUT std_logic
	);
END vending_controller;

ARCHITECTURE structure OF vending_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_m : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_dc : std_logic;
SIGNAL ww_dd : std_logic;
SIGNAL ww_dn : std_logic;
SIGNAL \dc~output_o\ : std_logic;
SIGNAL \dd~output_o\ : std_logic;
SIGNAL \dn~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \m[0]~input_o\ : std_logic;
SIGNAL \m[1]~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \presentState.GOT_10C~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \presentState.GOT_20C~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \presentState.GOT_25C~q\ : std_logic;
SIGNAL \nextState.RTN_20C~0_combout\ : std_logic;
SIGNAL \presentState.RTN_20C~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \presentState.RTN_10C~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \presentState.RTN_15C~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \presentState.RTN_5C~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \presentState.IDLE~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \presentState.GOT_5C~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \presentState.GOT_15C~q\ : std_logic;
SIGNAL \dc~0_combout\ : std_logic;
SIGNAL \dc~1_combout\ : std_logic;
SIGNAL \dc~2_combout\ : std_logic;
SIGNAL \dc~3_combout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
ww_m <= m;
dc <= ww_dc;
dd <= ww_dd;
dn <= ww_dn;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

\dc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dc~3_combout\,
	devoe => ww_devoe,
	o => \dc~output_o\);

\dd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideNor0~0_combout\,
	devoe => ww_devoe,
	o => \dd~output_o\);

\dn~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \presentState.RTN_5C~q\,
	devoe => ww_devoe,
	o => \dn~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\m[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(0),
	o => \m[0]~input_o\);

\m[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(1),
	o => \m[1]~input_o\);

\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\m[0]~input_o\ & (\presentState.GOT_5C~q\ & ((!\m[1]~input_o\)))) # (!\m[0]~input_o\ & (((!\presentState.IDLE~q\ & \m[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \presentState.GOT_5C~q\,
	datab => \m[0]~input_o\,
	datac => \presentState.IDLE~q\,
	datad => \m[1]~input_o\,
	combout => \Selector2~0_combout\);

\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((\presentState.GOT_10C~q\ & (!\m[0]~input_o\ & !\m[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \presentState.GOT_10C~q\,
	datac => \m[0]~input_o\,
	datad => \m[1]~input_o\,
	combout => \Selector2~1_combout\);

\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

\presentState.GOT_10C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector2~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.GOT_10C~q\);

\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\m[1]~input_o\ & (((\presentState.GOT_10C~q\ & !\m[0]~input_o\)))) # (!\m[1]~input_o\ & (\presentState.GOT_15C~q\ & ((\m[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \presentState.GOT_15C~q\,
	datab => \presentState.GOT_10C~q\,
	datac => \m[1]~input_o\,
	datad => \m[0]~input_o\,
	combout => \Selector4~0_combout\);

\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((\presentState.GOT_20C~q\ & !\m[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \presentState.GOT_20C~q\,
	datad => \m[0]~input_o\,
	combout => \Selector4~1_combout\);

\presentState.GOT_20C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector4~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.GOT_20C~q\);

\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\m[0]~input_o\ & ((\presentState.GOT_20C~q\) # ((\m[1]~input_o\)))) # (!\m[0]~input_o\ & (((!\m[1]~input_o\ & \presentState.GOT_25C~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \presentState.GOT_20C~q\,
	datab => \m[0]~input_o\,
	datac => \m[1]~input_o\,
	datad => \presentState.GOT_25C~q\,
	combout => \Selector5~0_combout\);

\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\m[1]~input_o\ & ((\Selector5~0_combout\ & ((!\presentState.IDLE~q\))) # (!\Selector5~0_combout\ & (\presentState.GOT_15C~q\)))) # (!\m[1]~input_o\ & (((\Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \presentState.GOT_15C~q\,
	datab => \presentState.IDLE~q\,
	datac => \m[1]~input_o\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

\presentState.GOT_25C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector5~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.GOT_25C~q\);

\nextState.RTN_20C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextState.RTN_20C~0_combout\ = (\m[0]~input_o\ & (\m[1]~input_o\ & \presentState.GOT_25C~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \m[1]~input_o\,
	datac => \presentState.GOT_25C~q\,
	combout => \nextState.RTN_20C~0_combout\);

\presentState.RTN_20C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \nextState.RTN_20C~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.RTN_20C~q\);

\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\presentState.RTN_20C~q\) # ((\presentState.GOT_15C~q\ & (\m[0]~input_o\ & \m[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \presentState.RTN_20C~q\,
	datab => \presentState.GOT_15C~q\,
	datac => \m[0]~input_o\,
	datad => \m[1]~input_o\,
	combout => \Selector7~0_combout\);

\presentState.RTN_10C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector7~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.RTN_10C~q\);

\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\m[1]~input_o\ & ((\m[0]~input_o\ & (\presentState.GOT_20C~q\)) # (!\m[0]~input_o\ & ((\presentState.GOT_25C~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[1]~input_o\,
	datab => \presentState.GOT_20C~q\,
	datac => \presentState.GOT_25C~q\,
	datad => \m[0]~input_o\,
	combout => \Selector8~0_combout\);

\presentState.RTN_15C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector8~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.RTN_15C~q\);

\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\presentState.RTN_15C~q\) # ((\m[0]~input_o\ & (\m[1]~input_o\ & \presentState.GOT_10C~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \presentState.RTN_15C~q\,
	datab => \m[0]~input_o\,
	datac => \m[1]~input_o\,
	datad => \presentState.GOT_10C~q\,
	combout => \Selector6~0_combout\);

\presentState.RTN_5C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector6~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.RTN_5C~q\);

\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\m[1]~input_o\ & ((\m[0]~input_o\ & (\presentState.GOT_25C~q\)) # (!\m[0]~input_o\ & ((!\presentState.IDLE~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \presentState.GOT_25C~q\,
	datab => \m[0]~input_o\,
	datac => \presentState.IDLE~q\,
	datad => \m[1]~input_o\,
	combout => \Selector0~0_combout\);

\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\presentState.RTN_10C~q\ & (!\presentState.RTN_5C~q\ & !\Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \presentState.RTN_10C~q\,
	datab => \presentState.RTN_5C~q\,
	datac => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

\presentState.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector0~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.IDLE~q\);

\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\m[0]~input_o\ & ((\m[1]~input_o\ & (\presentState.GOT_5C~q\)) # (!\m[1]~input_o\ & ((!\presentState.IDLE~q\))))) # (!\m[0]~input_o\ & (\presentState.GOT_5C~q\ & (!\m[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \presentState.GOT_5C~q\,
	datab => \m[0]~input_o\,
	datac => \m[1]~input_o\,
	datad => \presentState.IDLE~q\,
	combout => \Selector1~0_combout\);

\presentState.GOT_5C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.GOT_5C~q\);

\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\m[0]~input_o\ & (((\presentState.GOT_10C~q\ & !\m[1]~input_o\)))) # (!\m[0]~input_o\ & (\presentState.GOT_5C~q\ & ((\m[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \presentState.GOT_5C~q\,
	datab => \presentState.GOT_10C~q\,
	datac => \m[0]~input_o\,
	datad => \m[1]~input_o\,
	combout => \Selector3~0_combout\);

\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\presentState.GOT_15C~q\ & (!\m[0]~input_o\ & !\m[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \presentState.GOT_15C~q\,
	datac => \m[0]~input_o\,
	datad => \m[1]~input_o\,
	combout => \Selector3~1_combout\);

\presentState.GOT_15C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector3~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \presentState.GOT_15C~q\);

\dc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc~0_combout\ = (\presentState.GOT_15C~q\ & (\m[0]~input_o\ & \m[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \presentState.GOT_15C~q\,
	datab => \m[0]~input_o\,
	datac => \m[1]~input_o\,
	combout => \dc~0_combout\);

\dc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc~1_combout\ = (\m[1]~input_o\ & ((\presentState.GOT_25C~q\ & ((!\presentState.GOT_20C~q\) # (!\m[0]~input_o\))) # (!\presentState.GOT_25C~q\ & ((\presentState.GOT_20C~q\))))) # (!\m[1]~input_o\ & (\presentState.GOT_25C~q\ & (\m[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[1]~input_o\,
	datab => \presentState.GOT_25C~q\,
	datac => \m[0]~input_o\,
	datad => \presentState.GOT_20C~q\,
	combout => \dc~1_combout\);

\dc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc~2_combout\ = (\m[0]~input_o\ & (\m[1]~input_o\ & (\presentState.GOT_10C~q\ $ (\presentState.GOT_5C~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \m[1]~input_o\,
	datac => \presentState.GOT_10C~q\,
	datad => \presentState.GOT_5C~q\,
	combout => \dc~2_combout\);

\dc~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dc~3_combout\ = \dc~2_combout\ $ (((\dc~0_combout\) # (\dc~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dc~0_combout\,
	datac => \dc~1_combout\,
	datad => \dc~2_combout\,
	combout => \dc~3_combout\);

\WideNor0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = (\presentState.RTN_10C~q\) # ((\presentState.RTN_15C~q\) # (\presentState.RTN_20C~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \presentState.RTN_10C~q\,
	datab => \presentState.RTN_15C~q\,
	datac => \presentState.RTN_20C~q\,
	combout => \WideNor0~0_combout\);

ww_dc <= \dc~output_o\;

ww_dd <= \dd~output_o\;

ww_dn <= \dn~output_o\;
END structure;


