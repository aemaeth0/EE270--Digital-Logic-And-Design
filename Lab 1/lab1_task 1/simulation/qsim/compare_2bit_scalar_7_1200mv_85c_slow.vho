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

-- DATE "02/07/2018 08:57:38"

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

ENTITY 	compare_2bit_scalar IS
    PORT (
	a1 : IN std_logic;
	a0 : IN std_logic;
	b1 : IN std_logic;
	b0 : IN std_logic;
	L : BUFFER std_logic;
	G : BUFFER std_logic
	);
END compare_2bit_scalar;

-- Design Ports Information
-- L	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF compare_2bit_scalar IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_a0 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_b0 : std_logic;
SIGNAL ww_L : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL \L~output_o\ : std_logic;
SIGNAL \G~output_o\ : std_logic;
SIGNAL \b0~input_o\ : std_logic;
SIGNAL \a1~input_o\ : std_logic;
SIGNAL \a0~input_o\ : std_logic;
SIGNAL \b1~input_o\ : std_logic;
SIGNAL \L~0_combout\ : std_logic;
SIGNAL \G~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a1 <= a1;
ww_a0 <= a0;
ww_b1 <= b1;
ww_b0 <= b0;
L <= ww_L;
G <= ww_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X27_Y73_N23
\L~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L~0_combout\,
	devoe => ww_devoe,
	o => \L~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\G~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G~0_combout\,
	devoe => ww_devoe,
	o => \G~output_o\);

-- Location: IOIBUF_X25_Y73_N22
\b0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0,
	o => \b0~input_o\);

-- Location: IOIBUF_X23_Y73_N8
\a1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1,
	o => \a1~input_o\);

-- Location: IOIBUF_X25_Y73_N15
\a0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0,
	o => \a0~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\b1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1,
	o => \b1~input_o\);

-- Location: LCCOMB_X26_Y72_N0
\L~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \L~0_combout\ = (\a1~input_o\ & (\b0~input_o\ & (!\a0~input_o\ & \b1~input_o\))) # (!\a1~input_o\ & ((\b1~input_o\) # ((\b0~input_o\ & !\a0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0~input_o\,
	datab => \a1~input_o\,
	datac => \a0~input_o\,
	datad => \b1~input_o\,
	combout => \L~0_combout\);

-- Location: LCCOMB_X26_Y72_N2
\G~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G~0_combout\ = (\a1~input_o\ & (((!\b0~input_o\ & \a0~input_o\)) # (!\b1~input_o\))) # (!\a1~input_o\ & (!\b0~input_o\ & (\a0~input_o\ & !\b1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0~input_o\,
	datab => \a1~input_o\,
	datac => \a0~input_o\,
	datad => \b1~input_o\,
	combout => \G~0_combout\);

ww_L <= \L~output_o\;

ww_G <= \G~output_o\;
END structure;


