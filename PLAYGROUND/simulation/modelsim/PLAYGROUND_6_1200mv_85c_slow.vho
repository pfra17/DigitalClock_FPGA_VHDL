-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/08/2018 20:31:38"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PLAYGROUND IS
    PORT (
	G_CLK : IN std_logic;
	Button1 : IN std_logic;
	Fast : IN std_logic;
	Reset : IN std_logic;
	Carry : OUT std_logic;
	Segment0 : OUT std_logic_vector(6 DOWNTO 0);
	CountOut : OUT std_logic_vector(3 DOWNTO 0)
	);
END PLAYGROUND;

-- Design Ports Information
-- Fast	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Carry	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segment0[0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segment0[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segment0[2]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segment0[3]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segment0[4]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segment0[5]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segment0[6]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountOut[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountOut[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountOut[2]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountOut[3]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Button1	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PLAYGROUND IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_G_CLK : std_logic;
SIGNAL ww_Button1 : std_logic;
SIGNAL ww_Fast : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Carry : std_logic;
SIGNAL ww_Segment0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CountOut : std_logic_vector(3 DOWNTO 0);
SIGNAL \G_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Fast~input_o\ : std_logic;
SIGNAL \Carry~output_o\ : std_logic;
SIGNAL \Segment0[0]~output_o\ : std_logic;
SIGNAL \Segment0[1]~output_o\ : std_logic;
SIGNAL \Segment0[2]~output_o\ : std_logic;
SIGNAL \Segment0[3]~output_o\ : std_logic;
SIGNAL \Segment0[4]~output_o\ : std_logic;
SIGNAL \Segment0[5]~output_o\ : std_logic;
SIGNAL \Segment0[6]~output_o\ : std_logic;
SIGNAL \CountOut[0]~output_o\ : std_logic;
SIGNAL \CountOut[1]~output_o\ : std_logic;
SIGNAL \CountOut[2]~output_o\ : std_logic;
SIGNAL \CountOut[3]~output_o\ : std_logic;
SIGNAL \G_CLK~input_o\ : std_logic;
SIGNAL \G_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Button1~input_o\ : std_logic;
SIGNAL \SyncButton[0]~feeder_combout\ : std_logic;
SIGNAL \SyncButton[1]~feeder_combout\ : std_logic;
SIGNAL \SyncButton[2]~feeder_combout\ : std_logic;
SIGNAL \ClkDiv1~0_combout\ : std_logic;
SIGNAL \CLK_ena~q\ : std_logic;
SIGNAL \Counter[0]~3_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Counter[2]~1_combout\ : std_logic;
SIGNAL \Counter~0_combout\ : std_logic;
SIGNAL \Counter~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL SyncButton : std_logic_vector(2 DOWNTO 0);
SIGNAL Counter : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_G_CLK <= G_CLK;
ww_Button1 <= Button1;
ww_Fast <= Fast;
ww_Reset <= Reset;
Carry <= ww_Carry;
Segment0 <= ww_Segment0;
CountOut <= ww_CountOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\G_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \G_CLK~input_o\);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X5_Y0_N2
\Carry~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Carry~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\Segment0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Segment0[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\Segment0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Segment0[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\Segment0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Segment0[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\Segment0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Segment0[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\Segment0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Segment0[4]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\Segment0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Segment0[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\Segment0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Segment0[6]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\CountOut[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Counter(0),
	devoe => ww_devoe,
	o => \CountOut[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\CountOut[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Counter(1),
	devoe => ww_devoe,
	o => \CountOut[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\CountOut[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Counter(2),
	devoe => ww_devoe,
	o => \CountOut[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\CountOut[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Counter(3),
	devoe => ww_devoe,
	o => \CountOut[3]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\G_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G_CLK,
	o => \G_CLK~input_o\);

-- Location: CLKCTRL_G4
\G_CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \G_CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \G_CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y4_N1
\Button1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Button1,
	o => \Button1~input_o\);

-- Location: LCCOMB_X1_Y5_N28
\SyncButton[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SyncButton[0]~feeder_combout\ = \Button1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Button1~input_o\,
	combout => \SyncButton[0]~feeder_combout\);

-- Location: FF_X1_Y5_N29
\SyncButton[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLK~inputclkctrl_outclk\,
	d => \SyncButton[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SyncButton(0));

-- Location: LCCOMB_X1_Y5_N12
\SyncButton[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SyncButton[1]~feeder_combout\ = SyncButton(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SyncButton(0),
	combout => \SyncButton[1]~feeder_combout\);

-- Location: FF_X1_Y5_N13
\SyncButton[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLK~inputclkctrl_outclk\,
	d => \SyncButton[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SyncButton(1));

-- Location: LCCOMB_X1_Y5_N26
\SyncButton[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SyncButton[2]~feeder_combout\ = SyncButton(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SyncButton(1),
	combout => \SyncButton[2]~feeder_combout\);

-- Location: FF_X1_Y5_N27
\SyncButton[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLK~inputclkctrl_outclk\,
	d => \SyncButton[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SyncButton(2));

-- Location: LCCOMB_X1_Y5_N22
\ClkDiv1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ClkDiv1~0_combout\ = (!SyncButton(2) & SyncButton(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SyncButton(2),
	datad => SyncButton(1),
	combout => \ClkDiv1~0_combout\);

-- Location: FF_X1_Y5_N23
CLK_ena : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLK~inputclkctrl_outclk\,
	d => \ClkDiv1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_ena~q\);

-- Location: LCCOMB_X1_Y5_N4
\Counter[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Counter[0]~3_combout\ = !Counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Counter(0),
	combout => \Counter[0]~3_combout\);

-- Location: IOIBUF_X0_Y14_N8
\Reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: CLKCTRL_G2
\Reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~inputclkctrl_outclk\);

-- Location: FF_X1_Y5_N5
\Counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLK~inputclkctrl_outclk\,
	d => \Counter[0]~3_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \CLK_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(0));

-- Location: LCCOMB_X1_Y5_N16
\Counter[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Counter[2]~1_combout\ = Counter(2) $ (((\CLK_ena~q\ & (Counter(0) & Counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_ena~q\,
	datab => Counter(0),
	datac => Counter(2),
	datad => Counter(1),
	combout => \Counter[2]~1_combout\);

-- Location: FF_X1_Y5_N17
\Counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLK~inputclkctrl_outclk\,
	d => \Counter[2]~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(2));

-- Location: LCCOMB_X1_Y5_N10
\Counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Counter~0_combout\ = (Counter(1) & (((!Counter(0))))) # (!Counter(1) & (Counter(0) & ((Counter(2)) # (!Counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter(3),
	datab => Counter(2),
	datac => Counter(1),
	datad => Counter(0),
	combout => \Counter~0_combout\);

-- Location: FF_X1_Y5_N11
\Counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLK~inputclkctrl_outclk\,
	d => \Counter~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \CLK_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(1));

-- Location: LCCOMB_X1_Y5_N6
\Counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Counter~2_combout\ = (Counter(1) & (Counter(3) $ (((Counter(0) & Counter(2)))))) # (!Counter(1) & (Counter(3) & ((Counter(2)) # (!Counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter(1),
	datab => Counter(0),
	datac => Counter(3),
	datad => Counter(2),
	combout => \Counter~2_combout\);

-- Location: FF_X1_Y5_N7
\Counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G_CLK~inputclkctrl_outclk\,
	d => \Counter~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \CLK_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(3));

-- Location: LCCOMB_X1_Y5_N8
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (Counter(1) & (Counter(3))) # (!Counter(1) & (Counter(2) $ (((!Counter(3) & Counter(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter(3),
	datab => Counter(2),
	datac => Counter(0),
	datad => Counter(1),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y5_N30
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (Counter(3) & ((Counter(2)) # ((Counter(1))))) # (!Counter(3) & (Counter(2) & (Counter(0) $ (Counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter(3),
	datab => Counter(2),
	datac => Counter(0),
	datad => Counter(1),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y5_N0
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (Counter(2) & (Counter(3))) # (!Counter(2) & (Counter(1) & ((Counter(3)) # (!Counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter(3),
	datab => Counter(2),
	datac => Counter(0),
	datad => Counter(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y5_N18
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (Counter(1) & ((Counter(3)) # ((Counter(2) & Counter(0))))) # (!Counter(1) & (Counter(2) $ (((!Counter(3) & Counter(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter(3),
	datab => Counter(2),
	datac => Counter(0),
	datad => Counter(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y5_N24
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (Counter(0)) # ((Counter(1) & (Counter(3))) # (!Counter(1) & ((Counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter(3),
	datab => Counter(2),
	datac => Counter(0),
	datad => Counter(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y5_N14
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (Counter(2) & ((Counter(3)) # ((Counter(0) & Counter(1))))) # (!Counter(2) & ((Counter(1)) # ((!Counter(3) & Counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter(3),
	datab => Counter(2),
	datac => Counter(0),
	datad => Counter(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y5_N20
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (Counter(2) & (!Counter(3) & ((!Counter(1)) # (!Counter(0))))) # (!Counter(2) & (Counter(3) $ (((Counter(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter(3),
	datab => Counter(2),
	datac => Counter(0),
	datad => Counter(1),
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X41_Y26_N1
\Fast~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fast,
	o => \Fast~input_o\);

ww_Carry <= \Carry~output_o\;

ww_Segment0(0) <= \Segment0[0]~output_o\;

ww_Segment0(1) <= \Segment0[1]~output_o\;

ww_Segment0(2) <= \Segment0[2]~output_o\;

ww_Segment0(3) <= \Segment0[3]~output_o\;

ww_Segment0(4) <= \Segment0[4]~output_o\;

ww_Segment0(5) <= \Segment0[5]~output_o\;

ww_Segment0(6) <= \Segment0[6]~output_o\;

ww_CountOut(0) <= \CountOut[0]~output_o\;

ww_CountOut(1) <= \CountOut[1]~output_o\;

ww_CountOut(2) <= \CountOut[2]~output_o\;

ww_CountOut(3) <= \CountOut[3]~output_o\;
END structure;


