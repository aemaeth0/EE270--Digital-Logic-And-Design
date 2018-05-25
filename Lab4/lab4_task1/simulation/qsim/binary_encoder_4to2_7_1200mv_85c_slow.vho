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

-- DATE "03/02/2018 17:59:23"

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

ENTITY 	binary_encoder_4to2 IS
    PORT (
	w : IN std_logic_vector(3 DOWNTO 0);
	y : BUFFER std_logic_vector(1 DOWNTO 0);
	any : BUFFER std_logic
	);
END binary_encoder_4to2;

-- Design Ports Information
-- y[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- any	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF binary_encoder_4to2 IS
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
SIGNAL ww_y : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_any : std_logic;
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \any~output_o\ : std_logic;
SIGNAL \w[3]~input_o\ : std_logic;
SIGNAL \w[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \w[2]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \w[0]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_w <= w;
y <= ww_y;
any <= ww_any;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\any~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~1_combout\,
	devoe => ww_devoe,
	o => \any~output_o\);

-- Location: IOIBUF_X115_Y13_N8
\w[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(3),
	o => \w[3]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\w[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(1),
	o => \w[1]~input_o\);

-- Location: LCCOMB_X114_Y17_N8
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\w[3]~input_o\ & !\w[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[3]~input_o\,
	datad => \w[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X115_Y15_N8
\w[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(2),
	o => \w[2]~input_o\);

-- Location: LCCOMB_X114_Y17_N10
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\w[3]~input_o\ & !\w[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[3]~input_o\,
	datac => \w[2]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X115_Y17_N1
\w[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(0),
	o => \w[0]~input_o\);

-- Location: LCCOMB_X114_Y17_N4
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\w[1]~input_o\ & (!\w[0]~input_o\ & (!\w[2]~input_o\ & !\w[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[1]~input_o\,
	datab => \w[0]~input_o\,
	datac => \w[2]~input_o\,
	datad => \w[3]~input_o\,
	combout => \Equal0~1_combout\);

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_any <= \any~output_o\;
END structure;


