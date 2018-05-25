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

-- DATE "02/11/2018 20:50:02"

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

ENTITY 	hex_to_7seg_decoder IS
    PORT (
	hex : IN std_logic_vector(3 DOWNTO 0);
	en : IN std_logic;
	leds : BUFFER std_logic_vector(0 TO 6)
	);
END hex_to_7seg_decoder;

-- Design Ports Information
-- leds[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[1]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hex_to_7seg_decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_hex : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_en : std_logic;
SIGNAL ww_leds : std_logic_vector(0 TO 6);
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \hex[3]~input_o\ : std_logic;
SIGNAL \hex[0]~input_o\ : std_logic;
SIGNAL \hex[2]~input_o\ : std_logic;
SIGNAL \hex[1]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_hex <= hex;
ww_en <= en;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\leds[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\leds[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\leds[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\leds[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\leds[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\leds[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\leds[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOIBUF_X115_Y13_N8
\hex[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hex(3),
	o => \hex[3]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\hex[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hex(0),
	o => \hex[0]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\hex[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hex(2),
	o => \hex[2]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\hex[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hex(1),
	o => \hex[1]~input_o\);

-- Location: LCCOMB_X114_Y50_N24
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\hex[0]~input_o\ & ((\hex[3]~input_o\) # (\hex[2]~input_o\ $ (\hex[1]~input_o\)))) # (!\hex[0]~input_o\ & ((\hex[1]~input_o\) # (\hex[3]~input_o\ $ (\hex[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex[3]~input_o\,
	datab => \hex[0]~input_o\,
	datac => \hex[2]~input_o\,
	datad => \hex[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X115_Y14_N8
\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: LCCOMB_X114_Y50_N10
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (!\Mux6~0_combout\ & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~0_combout\,
	datad => \en~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X114_Y50_N28
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\hex[0]~input_o\ & (\hex[3]~input_o\ $ (((\hex[1]~input_o\) # (!\hex[2]~input_o\))))) # (!\hex[0]~input_o\ & (!\hex[3]~input_o\ & (!\hex[2]~input_o\ & \hex[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex[3]~input_o\,
	datab => \hex[0]~input_o\,
	datac => \hex[2]~input_o\,
	datad => \hex[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X114_Y50_N30
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~0_combout\,
	datad => \en~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X114_Y50_N8
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\hex[1]~input_o\ & (!\hex[3]~input_o\ & (\hex[0]~input_o\))) # (!\hex[1]~input_o\ & ((\hex[2]~input_o\ & (!\hex[3]~input_o\)) # (!\hex[2]~input_o\ & ((\hex[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex[3]~input_o\,
	datab => \hex[0]~input_o\,
	datac => \hex[2]~input_o\,
	datad => \hex[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X114_Y50_N18
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux4~0_combout\,
	datad => \en~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X114_Y50_N20
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\hex[1]~input_o\ & ((\hex[0]~input_o\ & ((\hex[2]~input_o\))) # (!\hex[0]~input_o\ & (\hex[3]~input_o\ & !\hex[2]~input_o\)))) # (!\hex[1]~input_o\ & (!\hex[3]~input_o\ & (\hex[0]~input_o\ $ (\hex[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex[3]~input_o\,
	datab => \hex[0]~input_o\,
	datac => \hex[2]~input_o\,
	datad => \hex[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X114_Y50_N14
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~0_combout\,
	datad => \en~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X114_Y50_N0
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\hex[3]~input_o\ & (\hex[2]~input_o\ & ((\hex[1]~input_o\) # (!\hex[0]~input_o\)))) # (!\hex[3]~input_o\ & (!\hex[0]~input_o\ & (!\hex[2]~input_o\ & \hex[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex[3]~input_o\,
	datab => \hex[0]~input_o\,
	datac => \hex[2]~input_o\,
	datad => \hex[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X114_Y50_N2
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~0_combout\,
	datad => \en~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X114_Y50_N12
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\hex[3]~input_o\ & ((\hex[0]~input_o\ & ((\hex[1]~input_o\))) # (!\hex[0]~input_o\ & (\hex[2]~input_o\)))) # (!\hex[3]~input_o\ & (\hex[2]~input_o\ & (\hex[0]~input_o\ $ (\hex[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex[3]~input_o\,
	datab => \hex[0]~input_o\,
	datac => \hex[2]~input_o\,
	datad => \hex[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X114_Y50_N22
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datad => \en~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X114_Y50_N16
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\hex[3]~input_o\ & (\hex[0]~input_o\ & (\hex[2]~input_o\ $ (\hex[1]~input_o\)))) # (!\hex[3]~input_o\ & (!\hex[1]~input_o\ & (\hex[0]~input_o\ $ (\hex[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex[3]~input_o\,
	datab => \hex[0]~input_o\,
	datac => \hex[2]~input_o\,
	datad => \hex[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X114_Y50_N26
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~0_combout\,
	datad => \en~input_o\,
	combout => \Mux0~1_combout\);

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(0) <= \leds[0]~output_o\;
END structure;


