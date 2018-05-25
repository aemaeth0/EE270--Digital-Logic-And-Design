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

-- DATE "03/09/2018 21:37:59"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	int_4bit_to_7seg IS
    PORT (
	en : IN std_logic;
	arith : IN std_logic;
	x : IN std_logic_vector(3 DOWNTO 0);
	mag_leds : BUFFER std_logic_vector(6 DOWNTO 0);
	sign_leds : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END int_4bit_to_7seg;

-- Design Ports Information
-- mag_leds[0]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mag_leds[1]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mag_leds[2]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mag_leds[3]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mag_leds[4]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mag_leds[5]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mag_leds[6]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sign_leds[0]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sign_leds[1]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sign_leds[2]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sign_leds[3]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sign_leds[4]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sign_leds[5]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sign_leds[6]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arith	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF int_4bit_to_7seg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_arith : std_logic;
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mag_leds : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sign_leds : std_logic_vector(6 DOWNTO 0);
SIGNAL \mag_leds[0]~output_o\ : std_logic;
SIGNAL \mag_leds[1]~output_o\ : std_logic;
SIGNAL \mag_leds[2]~output_o\ : std_logic;
SIGNAL \mag_leds[3]~output_o\ : std_logic;
SIGNAL \mag_leds[4]~output_o\ : std_logic;
SIGNAL \mag_leds[5]~output_o\ : std_logic;
SIGNAL \mag_leds[6]~output_o\ : std_logic;
SIGNAL \sign_leds[0]~output_o\ : std_logic;
SIGNAL \sign_leds[1]~output_o\ : std_logic;
SIGNAL \sign_leds[2]~output_o\ : std_logic;
SIGNAL \sign_leds[3]~output_o\ : std_logic;
SIGNAL \sign_leds[4]~output_o\ : std_logic;
SIGNAL \sign_leds[5]~output_o\ : std_logic;
SIGNAL \sign_leds[6]~output_o\ : std_logic;
SIGNAL \arith~input_o\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \mag_leds_signed[0]~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux8~16_combout\ : std_logic;
SIGNAL \Mux8~17_combout\ : std_logic;
SIGNAL \Mux8~20_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \sign_leds~2_combout\ : std_logic;
SIGNAL \sign_leds~3_combout\ : std_logic;
SIGNAL \sign_leds~4_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_en <= en;
ww_arith <= arith;
ww_x <= x;
mag_leds <= ww_mag_leds;
sign_leds <= ww_sign_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y21_N23
\mag_leds[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \mag_leds[0]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\mag_leds[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~7_combout\,
	devoe => ww_devoe,
	o => \mag_leds[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\mag_leds[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~8_combout\,
	devoe => ww_devoe,
	o => \mag_leds[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\mag_leds[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~2_combout\,
	devoe => ww_devoe,
	o => \mag_leds[3]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\mag_leds[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~1_combout\,
	devoe => ww_devoe,
	o => \mag_leds[4]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\mag_leds[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~20_combout\,
	devoe => ww_devoe,
	o => \mag_leds[5]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\mag_leds[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~9_combout\,
	devoe => ww_devoe,
	o => \mag_leds[6]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\sign_leds[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sign_leds~3_combout\,
	devoe => ww_devoe,
	o => \sign_leds[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\sign_leds[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sign_leds~3_combout\,
	devoe => ww_devoe,
	o => \sign_leds[1]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\sign_leds[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sign_leds[2]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\sign_leds[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sign_leds[3]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\sign_leds[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sign_leds~3_combout\,
	devoe => ww_devoe,
	o => \sign_leds[4]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\sign_leds[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sign_leds~3_combout\,
	devoe => ww_devoe,
	o => \sign_leds[5]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\sign_leds[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sign_leds~4_combout\,
	devoe => ww_devoe,
	o => \sign_leds[6]~output_o\);

-- Location: IOIBUF_X0_Y19_N1
\arith~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arith,
	o => \arith~input_o\);

-- Location: IOIBUF_X0_Y20_N15
\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: IOIBUF_X0_Y19_N8
\x[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\x[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: LCCOMB_X2_Y19_N10
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\x[3]~input_o\ & (\x[0]~input_o\ & (\x[1]~input_o\ $ (\x[2]~input_o\)))) # (!\x[3]~input_o\ & (!\x[1]~input_o\ & (\x[0]~input_o\ $ (\x[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \x[0]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X2_Y19_N24
\mag_leds_signed[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mag_leds_signed[0]~0_combout\ = (\x[3]~input_o\ & (\x[2]~input_o\ & (\x[0]~input_o\ $ (!\x[1]~input_o\)))) # (!\x[3]~input_o\ & (!\x[1]~input_o\ & (\x[0]~input_o\ $ (\x[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \x[0]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[2]~input_o\,
	combout => \mag_leds_signed[0]~0_combout\);

-- Location: LCCOMB_X1_Y19_N8
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ((\arith~input_o\ & ((\mag_leds_signed[0]~0_combout\))) # (!\arith~input_o\ & (\Mux6~0_combout\))) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith~input_o\,
	datab => \en~input_o\,
	datac => \Mux6~0_combout\,
	datad => \mag_leds_signed[0]~0_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X2_Y19_N16
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\x[3]~input_o\ & (((\x[1]~input_o\ & !\x[2]~input_o\)))) # (!\x[3]~input_o\ & (\x[2]~input_o\ & (\x[0]~input_o\ $ (\x[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \x[0]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[2]~input_o\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X2_Y19_N22
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\x[3]~input_o\ & ((\x[0]~input_o\ & (\x[1]~input_o\)) # (!\x[0]~input_o\ & ((\x[2]~input_o\))))) # (!\x[3]~input_o\ & (\x[2]~input_o\ & (\x[0]~input_o\ $ (\x[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \x[0]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[2]~input_o\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X1_Y19_N2
\Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = ((\arith~input_o\ & (\Mux12~4_combout\)) # (!\arith~input_o\ & ((\Mux12~3_combout\)))) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith~input_o\,
	datab => \Mux12~4_combout\,
	datac => \en~input_o\,
	datad => \Mux12~3_combout\,
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X2_Y19_N20
\Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (\x[0]~input_o\ & (!\arith~input_o\ & (\x[1]~input_o\ & \x[2]~input_o\))) # (!\x[0]~input_o\ & ((\x[1]~input_o\) # ((!\arith~input_o\ & \x[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith~input_o\,
	datab => \x[0]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[2]~input_o\,
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X2_Y19_N14
\Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~8_combout\ = ((\Mux11~7_combout\ & (\x[3]~input_o\ $ (!\x[2]~input_o\)))) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \x[2]~input_o\,
	datac => \en~input_o\,
	datad => \Mux11~7_combout\,
	combout => \Mux11~8_combout\);

-- Location: LCCOMB_X2_Y19_N12
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\arith~input_o\ & \x[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith~input_o\,
	datad => \x[3]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X2_Y19_N6
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\x[1]~input_o\ & ((\x[0]~input_o\ & ((\x[2]~input_o\))) # (!\x[0]~input_o\ & (\Mux10~0_combout\ & !\x[2]~input_o\)))) # (!\x[1]~input_o\ & (!\Mux10~0_combout\ & (\x[0]~input_o\ $ (\x[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \x[0]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[2]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X1_Y19_N10
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux10~1_combout\) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en~input_o\,
	datad => \Mux10~1_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X2_Y19_N0
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\arith~input_o\ & ((\x[0]~input_o\) # ((!\x[1]~input_o\ & \x[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith~input_o\,
	datab => \x[0]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[2]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X2_Y19_N2
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\x[1]~input_o\ & (!\x[3]~input_o\ & (\x[0]~input_o\))) # (!\x[1]~input_o\ & ((\x[2]~input_o\ & (!\x[3]~input_o\)) # (!\x[2]~input_o\ & ((\x[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \x[0]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y19_N28
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ((\Mux9~0_combout\) # ((!\arith~input_o\ & \Mux2~0_combout\))) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith~input_o\,
	datab => \en~input_o\,
	datac => \Mux9~0_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X2_Y19_N26
\Mux8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~16_combout\ = (\x[1]~input_o\ & (!\x[3]~input_o\)) # (!\x[1]~input_o\ & (\x[0]~input_o\ & ((\arith~input_o\) # (!\x[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \x[0]~input_o\,
	datac => \x[1]~input_o\,
	datad => \arith~input_o\,
	combout => \Mux8~16_combout\);

-- Location: LCCOMB_X2_Y19_N28
\Mux8~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~17_combout\ = (\x[3]~input_o\ & ((\x[1]~input_o\ & ((\arith~input_o\))) # (!\x[1]~input_o\ & (\x[0]~input_o\)))) # (!\x[3]~input_o\ & (\x[0]~input_o\ & (\x[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \x[0]~input_o\,
	datac => \x[1]~input_o\,
	datad => \arith~input_o\,
	combout => \Mux8~17_combout\);

-- Location: LCCOMB_X2_Y19_N30
\Mux8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~20_combout\ = ((\x[2]~input_o\ & ((\Mux8~17_combout\))) # (!\x[2]~input_o\ & (\Mux8~16_combout\))) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~16_combout\,
	datab => \x[2]~input_o\,
	datac => \en~input_o\,
	datad => \Mux8~17_combout\,
	combout => \Mux8~20_combout\);

-- Location: LCCOMB_X2_Y19_N8
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\x[0]~input_o\ & (!\x[3]~input_o\ & (\x[1]~input_o\ $ (!\x[2]~input_o\)))) # (!\x[0]~input_o\ & (!\x[1]~input_o\ & (\x[3]~input_o\ $ (!\x[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \x[0]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[2]~input_o\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X2_Y19_N18
\Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\x[0]~input_o\ & ((\x[1]~input_o\ $ (!\x[2]~input_o\)))) # (!\x[0]~input_o\ & (!\x[3]~input_o\ & (!\x[1]~input_o\ & !\x[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \x[0]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[2]~input_o\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X1_Y19_N12
\Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = ((\arith~input_o\ & ((\Mux7~6_combout\))) # (!\arith~input_o\ & (\Mux7~5_combout\))) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith~input_o\,
	datab => \en~input_o\,
	datac => \Mux7~5_combout\,
	datad => \Mux7~6_combout\,
	combout => \Mux7~9_combout\);

-- Location: LCCOMB_X2_Y19_N4
\sign_leds~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_leds~2_combout\ = (\x[0]~input_o\) # ((\x[1]~input_o\) # (\x[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[0]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[2]~input_o\,
	combout => \sign_leds~2_combout\);

-- Location: LCCOMB_X1_Y19_N30
\sign_leds~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_leds~3_combout\ = (((\x[3]~input_o\) # (!\sign_leds~2_combout\)) # (!\en~input_o\)) # (!\arith~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith~input_o\,
	datab => \en~input_o\,
	datac => \x[3]~input_o\,
	datad => \sign_leds~2_combout\,
	combout => \sign_leds~3_combout\);

-- Location: LCCOMB_X1_Y19_N24
\sign_leds~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sign_leds~4_combout\ = (((!\x[3]~input_o\ & !\sign_leds~2_combout\)) # (!\en~input_o\)) # (!\arith~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith~input_o\,
	datab => \en~input_o\,
	datac => \x[3]~input_o\,
	datad => \sign_leds~2_combout\,
	combout => \sign_leds~4_combout\);

ww_mag_leds(0) <= \mag_leds[0]~output_o\;

ww_mag_leds(1) <= \mag_leds[1]~output_o\;

ww_mag_leds(2) <= \mag_leds[2]~output_o\;

ww_mag_leds(3) <= \mag_leds[3]~output_o\;

ww_mag_leds(4) <= \mag_leds[4]~output_o\;

ww_mag_leds(5) <= \mag_leds[5]~output_o\;

ww_mag_leds(6) <= \mag_leds[6]~output_o\;

ww_sign_leds(0) <= \sign_leds[0]~output_o\;

ww_sign_leds(1) <= \sign_leds[1]~output_o\;

ww_sign_leds(2) <= \sign_leds[2]~output_o\;

ww_sign_leds(3) <= \sign_leds[3]~output_o\;

ww_sign_leds(4) <= \sign_leds[4]~output_o\;

ww_sign_leds(5) <= \sign_leds[5]~output_o\;

ww_sign_leds(6) <= \sign_leds[6]~output_o\;
END structure;


