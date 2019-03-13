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

-- DATE "12/06/2018 20:26:50"

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

ENTITY 	Semesterarbeit_FPGA_VHDL IS
    PORT (
	g_clk : IN std_logic;
	reset : IN std_logic;
	segment0 : BUFFER std_logic_vector(6 DOWNTO 0);
	segment1 : BUFFER std_logic_vector(6 DOWNTO 0);
	segment2 : BUFFER std_logic_vector(6 DOWNTO 0);
	segment3 : BUFFER std_logic_vector(6 DOWNTO 0);
	dec_point : BUFFER std_logic;
	set_switch : IN std_logic;
	counter_up : IN std_logic;
	counter_down : IN std_logic;
	confirm : IN std_logic;
	set_LED : BUFFER std_logic;
	show_LED : BUFFER std_logic
	);
END Semesterarbeit_FPGA_VHDL;

-- Design Ports Information
-- segment0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec_point	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- set_LED	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_LED	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_down	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_up	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- set_switch	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- confirm	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Semesterarbeit_FPGA_VHDL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_g_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_segment0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dec_point : std_logic;
SIGNAL ww_set_switch : std_logic;
SIGNAL ww_counter_up : std_logic;
SIGNAL ww_counter_down : std_logic;
SIGNAL ww_confirm : std_logic;
SIGNAL ww_set_LED : std_logic;
SIGNAL ww_show_LED : std_logic;
SIGNAL \g_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \segment0[0]~output_o\ : std_logic;
SIGNAL \segment0[1]~output_o\ : std_logic;
SIGNAL \segment0[2]~output_o\ : std_logic;
SIGNAL \segment0[3]~output_o\ : std_logic;
SIGNAL \segment0[4]~output_o\ : std_logic;
SIGNAL \segment0[5]~output_o\ : std_logic;
SIGNAL \segment0[6]~output_o\ : std_logic;
SIGNAL \segment1[0]~output_o\ : std_logic;
SIGNAL \segment1[1]~output_o\ : std_logic;
SIGNAL \segment1[2]~output_o\ : std_logic;
SIGNAL \segment1[3]~output_o\ : std_logic;
SIGNAL \segment1[4]~output_o\ : std_logic;
SIGNAL \segment1[5]~output_o\ : std_logic;
SIGNAL \segment1[6]~output_o\ : std_logic;
SIGNAL \segment2[0]~output_o\ : std_logic;
SIGNAL \segment2[1]~output_o\ : std_logic;
SIGNAL \segment2[2]~output_o\ : std_logic;
SIGNAL \segment2[3]~output_o\ : std_logic;
SIGNAL \segment2[4]~output_o\ : std_logic;
SIGNAL \segment2[5]~output_o\ : std_logic;
SIGNAL \segment2[6]~output_o\ : std_logic;
SIGNAL \segment3[0]~output_o\ : std_logic;
SIGNAL \segment3[1]~output_o\ : std_logic;
SIGNAL \segment3[2]~output_o\ : std_logic;
SIGNAL \segment3[3]~output_o\ : std_logic;
SIGNAL \segment3[4]~output_o\ : std_logic;
SIGNAL \segment3[5]~output_o\ : std_logic;
SIGNAL \segment3[6]~output_o\ : std_logic;
SIGNAL \dec_point~output_o\ : std_logic;
SIGNAL \set_LED~output_o\ : std_logic;
SIGNAL \show_LED~output_o\ : std_logic;
SIGNAL \g_clk~input_o\ : std_logic;
SIGNAL \g_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock_divider[0]~28_combout\ : std_logic;
SIGNAL \clock_divider[2]~34\ : std_logic;
SIGNAL \clock_divider[3]~35_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \set_switch~input_o\ : std_logic;
SIGNAL \state.show_clock~feeder_combout\ : std_logic;
SIGNAL \state.show_clock~q\ : std_logic;
SIGNAL \counter_hr_1[1]~2_combout\ : std_logic;
SIGNAL \clock_divider[3]~36\ : std_logic;
SIGNAL \clock_divider[4]~37_combout\ : std_logic;
SIGNAL \clock_divider[4]~38\ : std_logic;
SIGNAL \clock_divider[5]~39_combout\ : std_logic;
SIGNAL \clock_divider[5]~40\ : std_logic;
SIGNAL \clock_divider[6]~41_combout\ : std_logic;
SIGNAL \clock_divider[6]~42\ : std_logic;
SIGNAL \clock_divider[7]~43_combout\ : std_logic;
SIGNAL \clock_divider[7]~44\ : std_logic;
SIGNAL \clock_divider[8]~45_combout\ : std_logic;
SIGNAL \clock_divider[8]~46\ : std_logic;
SIGNAL \clock_divider[9]~47_combout\ : std_logic;
SIGNAL \clock_divider[9]~48\ : std_logic;
SIGNAL \clock_divider[10]~49_combout\ : std_logic;
SIGNAL \clock_divider[10]~50\ : std_logic;
SIGNAL \clock_divider[11]~51_combout\ : std_logic;
SIGNAL \clock_divider[11]~52\ : std_logic;
SIGNAL \clock_divider[12]~53_combout\ : std_logic;
SIGNAL \clock_divider[12]~54\ : std_logic;
SIGNAL \clock_divider[13]~55_combout\ : std_logic;
SIGNAL \clock_divider[13]~56\ : std_logic;
SIGNAL \clock_divider[14]~57_combout\ : std_logic;
SIGNAL \clock_divider[14]~58\ : std_logic;
SIGNAL \clock_divider[15]~59_combout\ : std_logic;
SIGNAL \clock_divider[15]~60\ : std_logic;
SIGNAL \clock_divider[16]~61_combout\ : std_logic;
SIGNAL \clock_divider[16]~62\ : std_logic;
SIGNAL \clock_divider[17]~63_combout\ : std_logic;
SIGNAL \clock_divider[17]~64\ : std_logic;
SIGNAL \clock_divider[18]~65_combout\ : std_logic;
SIGNAL \clock_divider[18]~66\ : std_logic;
SIGNAL \clock_divider[19]~67_combout\ : std_logic;
SIGNAL \clock_divider[19]~68\ : std_logic;
SIGNAL \clock_divider[20]~69_combout\ : std_logic;
SIGNAL \clock_divider[20]~70\ : std_logic;
SIGNAL \clock_divider[21]~71_combout\ : std_logic;
SIGNAL \clock_divider[21]~72\ : std_logic;
SIGNAL \clock_divider[22]~73_combout\ : std_logic;
SIGNAL \clock_divider[22]~74\ : std_logic;
SIGNAL \clock_divider[23]~75_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \clock_divider[23]~76\ : std_logic;
SIGNAL \clock_divider[24]~77_combout\ : std_logic;
SIGNAL \clock_divider[24]~78\ : std_logic;
SIGNAL \clock_divider[25]~79_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \clock_divider[3]~81_combout\ : std_logic;
SIGNAL \clock_divider[3]~30_combout\ : std_logic;
SIGNAL \clock_divider[0]~29\ : std_logic;
SIGNAL \clock_divider[1]~31_combout\ : std_logic;
SIGNAL \clock_divider[1]~32\ : std_logic;
SIGNAL \clock_divider[2]~33_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \sec_0_ena~q\ : std_logic;
SIGNAL \counter_sec_0[0]~4_combout\ : std_logic;
SIGNAL \confirm~input_o\ : std_logic;
SIGNAL \index[0]~0_combout\ : std_logic;
SIGNAL \counter_down~input_o\ : std_logic;
SIGNAL \counter_up~input_o\ : std_logic;
SIGNAL \counter_min_0~10_combout\ : std_logic;
SIGNAL \counter_hr_0~0_combout\ : std_logic;
SIGNAL \counter_min_1[3]~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \sec_1_ena~feeder_combout\ : std_logic;
SIGNAL \sec_1_ena~q\ : std_logic;
SIGNAL \counter_sec_1[0]~4_combout\ : std_logic;
SIGNAL \counter_sec_1[3]~6_combout\ : std_logic;
SIGNAL \counter_sec_1[0]~5\ : std_logic;
SIGNAL \counter_sec_1[1]~7_combout\ : std_logic;
SIGNAL \counter_sec_1[1]~8\ : std_logic;
SIGNAL \counter_sec_1[2]~9_combout\ : std_logic;
SIGNAL \counter_sec_1[2]~10\ : std_logic;
SIGNAL \counter_sec_1[3]~11_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \min_0_ena~feeder_combout\ : std_logic;
SIGNAL \min_0_ena~q\ : std_logic;
SIGNAL \counter_min_0[3]~0_combout\ : std_logic;
SIGNAL \counter_min_0~1_combout\ : std_logic;
SIGNAL \counter_min_0[3]~2_combout\ : std_logic;
SIGNAL \counter_min_0~3_combout\ : std_logic;
SIGNAL \counter_min_0[3]~4_combout\ : std_logic;
SIGNAL \counter_min_0[3]~5_combout\ : std_logic;
SIGNAL \counter_min_0~6_combout\ : std_logic;
SIGNAL \counter_min_0~7_combout\ : std_logic;
SIGNAL \counter_min_0~8_combout\ : std_logic;
SIGNAL \counter_min_0~9_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \min_1_ena~feeder_combout\ : std_logic;
SIGNAL \min_1_ena~q\ : std_logic;
SIGNAL \counter_min_1[3]~0_combout\ : std_logic;
SIGNAL \counter_min_1~1_combout\ : std_logic;
SIGNAL \counter_min_1~3_combout\ : std_logic;
SIGNAL \counter_min_1[3]~4_combout\ : std_logic;
SIGNAL \counter_min_1[3]~5_combout\ : std_logic;
SIGNAL \counter_min_1~6_combout\ : std_logic;
SIGNAL \counter_min_1~7_combout\ : std_logic;
SIGNAL \counter_min_1~8_combout\ : std_logic;
SIGNAL \counter_min_1~9_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \hr_0_ena~feeder_combout\ : std_logic;
SIGNAL \hr_0_ena~q\ : std_logic;
SIGNAL \counter_hr_0[1]~1_combout\ : std_logic;
SIGNAL \counter_hr_0~2_combout\ : std_logic;
SIGNAL \counter_hr_0[1]~3_combout\ : std_logic;
SIGNAL \counter_hr_0~4_combout\ : std_logic;
SIGNAL \counter_hr_0~5_combout\ : std_logic;
SIGNAL \counter_hr_0[1]~6_combout\ : std_logic;
SIGNAL \counter_hr_0~9_combout\ : std_logic;
SIGNAL \counter_hr_0~10_combout\ : std_logic;
SIGNAL \counter_hr_0~7_combout\ : std_logic;
SIGNAL \counter_hr_0~8_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \hr_1_ena~feeder_combout\ : std_logic;
SIGNAL \hr_1_ena~q\ : std_logic;
SIGNAL \counter_hr_1[1]~3_combout\ : std_logic;
SIGNAL \counter_hr_1[1]~4_combout\ : std_logic;
SIGNAL \counter_hr_1[1]~5_combout\ : std_logic;
SIGNAL \counter_hr_1~12_combout\ : std_logic;
SIGNAL \counter_hr_1~13_combout\ : std_logic;
SIGNAL \counter_hr_1[1]~6_combout\ : std_logic;
SIGNAL \counter_hr_1[1]~14_combout\ : std_logic;
SIGNAL \counter_hr_1[1]~15_combout\ : std_logic;
SIGNAL \counter_hr_1[2]~16_combout\ : std_logic;
SIGNAL \counter_hr_1[2]~7_combout\ : std_logic;
SIGNAL \counter_hr_1[2]~8_combout\ : std_logic;
SIGNAL \counter_hr_1[3]~9_combout\ : std_logic;
SIGNAL \counter_hr_1[3]~10_combout\ : std_logic;
SIGNAL \counter_hr_1[3]~11_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \counter_sec_0[3]~6_combout\ : std_logic;
SIGNAL \counter_sec_0[0]~5\ : std_logic;
SIGNAL \counter_sec_0[1]~7_combout\ : std_logic;
SIGNAL \counter_sec_0[1]~8\ : std_logic;
SIGNAL \counter_sec_0[2]~9_combout\ : std_logic;
SIGNAL \counter_sec_0[2]~10\ : std_logic;
SIGNAL \counter_sec_0[3]~11_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \set_LED~reg0feeder_combout\ : std_logic;
SIGNAL \set_LED~reg0_q\ : std_logic;
SIGNAL \blink~0_combout\ : std_logic;
SIGNAL \blink~q\ : std_logic;
SIGNAL \show_LED~1_combout\ : std_logic;
SIGNAL \show_LED~reg0_q\ : std_logic;
SIGNAL index : std_logic_vector(2 DOWNTO 0);
SIGNAL counter_sec_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL counter_sec_0 : std_logic_vector(3 DOWNTO 0);
SIGNAL counter_min_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL counter_min_0 : std_logic_vector(3 DOWNTO 0);
SIGNAL counter_hr_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL counter_hr_0 : std_logic_vector(3 DOWNTO 0);
SIGNAL clock_divider : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_g_clk <= g_clk;
ww_reset <= reset;
segment0 <= ww_segment0;
segment1 <= ww_segment1;
segment2 <= ww_segment2;
segment3 <= ww_segment3;
dec_point <= ww_dec_point;
ww_set_switch <= set_switch;
ww_counter_up <= counter_up;
ww_counter_down <= counter_down;
ww_confirm <= confirm;
set_LED <= ww_set_LED;
show_LED <= ww_show_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\g_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \g_clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X21_Y29_N23
\segment0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segment0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\segment0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segment0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\segment0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segment0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\segment0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segment0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\segment0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segment0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\segment0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segment0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\segment0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segment0[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\segment1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \segment1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\segment1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \segment1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\segment1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \segment1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\segment1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \segment1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\segment1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \segment1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\segment1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \segment1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\segment1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \segment1[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\segment2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~0_combout\,
	devoe => ww_devoe,
	o => \segment2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\segment2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => \segment2[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\segment2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => \segment2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\segment2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => \segment2[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\segment2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \segment2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\segment2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \segment2[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\segment2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux14~0_combout\,
	devoe => ww_devoe,
	o => \segment2[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\segment3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~0_combout\,
	devoe => ww_devoe,
	o => \segment3[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\segment3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => \segment3[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\segment3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~0_combout\,
	devoe => ww_devoe,
	o => \segment3[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\segment3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => \segment3[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\segment3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => \segment3[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\segment3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => \segment3[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\segment3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux21~0_combout\,
	devoe => ww_devoe,
	o => \segment3[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\dec_point~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dec_point~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\set_LED~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \set_LED~reg0_q\,
	devoe => ww_devoe,
	o => \set_LED~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\show_LED~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_LED~reg0_q\,
	devoe => ww_devoe,
	o => \show_LED~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\g_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_clk,
	o => \g_clk~input_o\);

-- Location: CLKCTRL_G9
\g_clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \g_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \g_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X28_Y26_N6
\clock_divider[0]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[0]~28_combout\ = clock_divider(0) $ (VCC)
-- \clock_divider[0]~29\ = CARRY(clock_divider(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(0),
	datad => VCC,
	combout => \clock_divider[0]~28_combout\,
	cout => \clock_divider[0]~29\);

-- Location: LCCOMB_X28_Y26_N10
\clock_divider[2]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[2]~33_combout\ = (clock_divider(2) & (\clock_divider[1]~32\ $ (GND))) # (!clock_divider(2) & (!\clock_divider[1]~32\ & VCC))
-- \clock_divider[2]~34\ = CARRY((clock_divider(2) & !\clock_divider[1]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(2),
	datad => VCC,
	cin => \clock_divider[1]~32\,
	combout => \clock_divider[2]~33_combout\,
	cout => \clock_divider[2]~34\);

-- Location: LCCOMB_X28_Y26_N12
\clock_divider[3]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[3]~35_combout\ = (clock_divider(3) & (!\clock_divider[2]~34\)) # (!clock_divider(3) & ((\clock_divider[2]~34\) # (GND)))
-- \clock_divider[3]~36\ = CARRY((!\clock_divider[2]~34\) # (!clock_divider(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(3),
	datad => VCC,
	cin => \clock_divider[2]~34\,
	combout => \clock_divider[3]~35_combout\,
	cout => \clock_divider[3]~36\);

-- Location: IOIBUF_X0_Y25_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\set_switch~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set_switch,
	o => \set_switch~input_o\);

-- Location: LCCOMB_X26_Y27_N28
\state.show_clock~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.show_clock~feeder_combout\ = \set_switch~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \set_switch~input_o\,
	combout => \state.show_clock~feeder_combout\);

-- Location: FF_X26_Y27_N29
\state.show_clock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \state.show_clock~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.show_clock~q\);

-- Location: LCCOMB_X26_Y27_N6
\counter_hr_1[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1[1]~2_combout\ = (\state.show_clock~q\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \state.show_clock~q\,
	combout => \counter_hr_1[1]~2_combout\);

-- Location: FF_X28_Y26_N13
\clock_divider[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[3]~35_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(3));

-- Location: LCCOMB_X28_Y26_N14
\clock_divider[4]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[4]~37_combout\ = (clock_divider(4) & (\clock_divider[3]~36\ $ (GND))) # (!clock_divider(4) & (!\clock_divider[3]~36\ & VCC))
-- \clock_divider[4]~38\ = CARRY((clock_divider(4) & !\clock_divider[3]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(4),
	datad => VCC,
	cin => \clock_divider[3]~36\,
	combout => \clock_divider[4]~37_combout\,
	cout => \clock_divider[4]~38\);

-- Location: FF_X28_Y26_N15
\clock_divider[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[4]~37_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(4));

-- Location: LCCOMB_X28_Y26_N16
\clock_divider[5]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[5]~39_combout\ = (clock_divider(5) & (!\clock_divider[4]~38\)) # (!clock_divider(5) & ((\clock_divider[4]~38\) # (GND)))
-- \clock_divider[5]~40\ = CARRY((!\clock_divider[4]~38\) # (!clock_divider(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(5),
	datad => VCC,
	cin => \clock_divider[4]~38\,
	combout => \clock_divider[5]~39_combout\,
	cout => \clock_divider[5]~40\);

-- Location: FF_X28_Y26_N17
\clock_divider[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[5]~39_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(5));

-- Location: LCCOMB_X28_Y26_N18
\clock_divider[6]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[6]~41_combout\ = (clock_divider(6) & (\clock_divider[5]~40\ $ (GND))) # (!clock_divider(6) & (!\clock_divider[5]~40\ & VCC))
-- \clock_divider[6]~42\ = CARRY((clock_divider(6) & !\clock_divider[5]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(6),
	datad => VCC,
	cin => \clock_divider[5]~40\,
	combout => \clock_divider[6]~41_combout\,
	cout => \clock_divider[6]~42\);

-- Location: FF_X28_Y26_N19
\clock_divider[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[6]~41_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(6));

-- Location: LCCOMB_X28_Y26_N20
\clock_divider[7]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[7]~43_combout\ = (clock_divider(7) & (!\clock_divider[6]~42\)) # (!clock_divider(7) & ((\clock_divider[6]~42\) # (GND)))
-- \clock_divider[7]~44\ = CARRY((!\clock_divider[6]~42\) # (!clock_divider(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(7),
	datad => VCC,
	cin => \clock_divider[6]~42\,
	combout => \clock_divider[7]~43_combout\,
	cout => \clock_divider[7]~44\);

-- Location: FF_X28_Y26_N21
\clock_divider[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[7]~43_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(7));

-- Location: LCCOMB_X28_Y26_N22
\clock_divider[8]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[8]~45_combout\ = (clock_divider(8) & (\clock_divider[7]~44\ $ (GND))) # (!clock_divider(8) & (!\clock_divider[7]~44\ & VCC))
-- \clock_divider[8]~46\ = CARRY((clock_divider(8) & !\clock_divider[7]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(8),
	datad => VCC,
	cin => \clock_divider[7]~44\,
	combout => \clock_divider[8]~45_combout\,
	cout => \clock_divider[8]~46\);

-- Location: FF_X28_Y26_N23
\clock_divider[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[8]~45_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(8));

-- Location: LCCOMB_X28_Y26_N24
\clock_divider[9]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[9]~47_combout\ = (clock_divider(9) & (!\clock_divider[8]~46\)) # (!clock_divider(9) & ((\clock_divider[8]~46\) # (GND)))
-- \clock_divider[9]~48\ = CARRY((!\clock_divider[8]~46\) # (!clock_divider(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(9),
	datad => VCC,
	cin => \clock_divider[8]~46\,
	combout => \clock_divider[9]~47_combout\,
	cout => \clock_divider[9]~48\);

-- Location: FF_X28_Y26_N25
\clock_divider[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[9]~47_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(9));

-- Location: LCCOMB_X28_Y26_N26
\clock_divider[10]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[10]~49_combout\ = (clock_divider(10) & (\clock_divider[9]~48\ $ (GND))) # (!clock_divider(10) & (!\clock_divider[9]~48\ & VCC))
-- \clock_divider[10]~50\ = CARRY((clock_divider(10) & !\clock_divider[9]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(10),
	datad => VCC,
	cin => \clock_divider[9]~48\,
	combout => \clock_divider[10]~49_combout\,
	cout => \clock_divider[10]~50\);

-- Location: FF_X28_Y26_N27
\clock_divider[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[10]~49_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(10));

-- Location: LCCOMB_X28_Y26_N28
\clock_divider[11]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[11]~51_combout\ = (clock_divider(11) & (!\clock_divider[10]~50\)) # (!clock_divider(11) & ((\clock_divider[10]~50\) # (GND)))
-- \clock_divider[11]~52\ = CARRY((!\clock_divider[10]~50\) # (!clock_divider(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(11),
	datad => VCC,
	cin => \clock_divider[10]~50\,
	combout => \clock_divider[11]~51_combout\,
	cout => \clock_divider[11]~52\);

-- Location: FF_X28_Y26_N29
\clock_divider[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[11]~51_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(11));

-- Location: LCCOMB_X28_Y26_N30
\clock_divider[12]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[12]~53_combout\ = (clock_divider(12) & (\clock_divider[11]~52\ $ (GND))) # (!clock_divider(12) & (!\clock_divider[11]~52\ & VCC))
-- \clock_divider[12]~54\ = CARRY((clock_divider(12) & !\clock_divider[11]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(12),
	datad => VCC,
	cin => \clock_divider[11]~52\,
	combout => \clock_divider[12]~53_combout\,
	cout => \clock_divider[12]~54\);

-- Location: FF_X28_Y26_N31
\clock_divider[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[12]~53_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(12));

-- Location: LCCOMB_X28_Y25_N0
\clock_divider[13]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[13]~55_combout\ = (clock_divider(13) & (!\clock_divider[12]~54\)) # (!clock_divider(13) & ((\clock_divider[12]~54\) # (GND)))
-- \clock_divider[13]~56\ = CARRY((!\clock_divider[12]~54\) # (!clock_divider(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(13),
	datad => VCC,
	cin => \clock_divider[12]~54\,
	combout => \clock_divider[13]~55_combout\,
	cout => \clock_divider[13]~56\);

-- Location: FF_X28_Y25_N1
\clock_divider[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[13]~55_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(13));

-- Location: LCCOMB_X28_Y25_N2
\clock_divider[14]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[14]~57_combout\ = (clock_divider(14) & (\clock_divider[13]~56\ $ (GND))) # (!clock_divider(14) & (!\clock_divider[13]~56\ & VCC))
-- \clock_divider[14]~58\ = CARRY((clock_divider(14) & !\clock_divider[13]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(14),
	datad => VCC,
	cin => \clock_divider[13]~56\,
	combout => \clock_divider[14]~57_combout\,
	cout => \clock_divider[14]~58\);

-- Location: FF_X28_Y25_N3
\clock_divider[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[14]~57_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(14));

-- Location: LCCOMB_X28_Y25_N4
\clock_divider[15]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[15]~59_combout\ = (clock_divider(15) & (!\clock_divider[14]~58\)) # (!clock_divider(15) & ((\clock_divider[14]~58\) # (GND)))
-- \clock_divider[15]~60\ = CARRY((!\clock_divider[14]~58\) # (!clock_divider(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(15),
	datad => VCC,
	cin => \clock_divider[14]~58\,
	combout => \clock_divider[15]~59_combout\,
	cout => \clock_divider[15]~60\);

-- Location: FF_X28_Y25_N5
\clock_divider[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[15]~59_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(15));

-- Location: LCCOMB_X28_Y25_N6
\clock_divider[16]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[16]~61_combout\ = (clock_divider(16) & (\clock_divider[15]~60\ $ (GND))) # (!clock_divider(16) & (!\clock_divider[15]~60\ & VCC))
-- \clock_divider[16]~62\ = CARRY((clock_divider(16) & !\clock_divider[15]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(16),
	datad => VCC,
	cin => \clock_divider[15]~60\,
	combout => \clock_divider[16]~61_combout\,
	cout => \clock_divider[16]~62\);

-- Location: FF_X28_Y25_N7
\clock_divider[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[16]~61_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(16));

-- Location: LCCOMB_X28_Y25_N8
\clock_divider[17]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[17]~63_combout\ = (clock_divider(17) & (!\clock_divider[16]~62\)) # (!clock_divider(17) & ((\clock_divider[16]~62\) # (GND)))
-- \clock_divider[17]~64\ = CARRY((!\clock_divider[16]~62\) # (!clock_divider(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(17),
	datad => VCC,
	cin => \clock_divider[16]~62\,
	combout => \clock_divider[17]~63_combout\,
	cout => \clock_divider[17]~64\);

-- Location: FF_X28_Y25_N9
\clock_divider[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[17]~63_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(17));

-- Location: LCCOMB_X28_Y25_N10
\clock_divider[18]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[18]~65_combout\ = (clock_divider(18) & (\clock_divider[17]~64\ $ (GND))) # (!clock_divider(18) & (!\clock_divider[17]~64\ & VCC))
-- \clock_divider[18]~66\ = CARRY((clock_divider(18) & !\clock_divider[17]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(18),
	datad => VCC,
	cin => \clock_divider[17]~64\,
	combout => \clock_divider[18]~65_combout\,
	cout => \clock_divider[18]~66\);

-- Location: FF_X28_Y25_N11
\clock_divider[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[18]~65_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(18));

-- Location: LCCOMB_X28_Y25_N12
\clock_divider[19]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[19]~67_combout\ = (clock_divider(19) & (!\clock_divider[18]~66\)) # (!clock_divider(19) & ((\clock_divider[18]~66\) # (GND)))
-- \clock_divider[19]~68\ = CARRY((!\clock_divider[18]~66\) # (!clock_divider(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(19),
	datad => VCC,
	cin => \clock_divider[18]~66\,
	combout => \clock_divider[19]~67_combout\,
	cout => \clock_divider[19]~68\);

-- Location: FF_X28_Y25_N13
\clock_divider[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[19]~67_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(19));

-- Location: LCCOMB_X28_Y25_N14
\clock_divider[20]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[20]~69_combout\ = (clock_divider(20) & (\clock_divider[19]~68\ $ (GND))) # (!clock_divider(20) & (!\clock_divider[19]~68\ & VCC))
-- \clock_divider[20]~70\ = CARRY((clock_divider(20) & !\clock_divider[19]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(20),
	datad => VCC,
	cin => \clock_divider[19]~68\,
	combout => \clock_divider[20]~69_combout\,
	cout => \clock_divider[20]~70\);

-- Location: FF_X28_Y25_N15
\clock_divider[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[20]~69_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(20));

-- Location: LCCOMB_X28_Y25_N16
\clock_divider[21]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[21]~71_combout\ = (clock_divider(21) & (!\clock_divider[20]~70\)) # (!clock_divider(21) & ((\clock_divider[20]~70\) # (GND)))
-- \clock_divider[21]~72\ = CARRY((!\clock_divider[20]~70\) # (!clock_divider(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(21),
	datad => VCC,
	cin => \clock_divider[20]~70\,
	combout => \clock_divider[21]~71_combout\,
	cout => \clock_divider[21]~72\);

-- Location: FF_X28_Y25_N17
\clock_divider[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[21]~71_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(21));

-- Location: LCCOMB_X28_Y25_N18
\clock_divider[22]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[22]~73_combout\ = (clock_divider(22) & (\clock_divider[21]~72\ $ (GND))) # (!clock_divider(22) & (!\clock_divider[21]~72\ & VCC))
-- \clock_divider[22]~74\ = CARRY((clock_divider(22) & !\clock_divider[21]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(22),
	datad => VCC,
	cin => \clock_divider[21]~72\,
	combout => \clock_divider[22]~73_combout\,
	cout => \clock_divider[22]~74\);

-- Location: FF_X28_Y25_N19
\clock_divider[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[22]~73_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(22));

-- Location: LCCOMB_X28_Y25_N20
\clock_divider[23]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[23]~75_combout\ = (clock_divider(23) & (!\clock_divider[22]~74\)) # (!clock_divider(23) & ((\clock_divider[22]~74\) # (GND)))
-- \clock_divider[23]~76\ = CARRY((!\clock_divider[22]~74\) # (!clock_divider(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(23),
	datad => VCC,
	cin => \clock_divider[22]~74\,
	combout => \clock_divider[23]~75_combout\,
	cout => \clock_divider[23]~76\);

-- Location: FF_X28_Y25_N21
\clock_divider[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[23]~75_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(23));

-- Location: LCCOMB_X28_Y25_N28
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (((!clock_divider(23)) # (!clock_divider(20))) # (!clock_divider(21))) # (!clock_divider(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(22),
	datab => clock_divider(21),
	datac => clock_divider(20),
	datad => clock_divider(23),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X28_Y25_N22
\clock_divider[24]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[24]~77_combout\ = (clock_divider(24) & (\clock_divider[23]~76\ $ (GND))) # (!clock_divider(24) & (!\clock_divider[23]~76\ & VCC))
-- \clock_divider[24]~78\ = CARRY((clock_divider(24) & !\clock_divider[23]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(24),
	datad => VCC,
	cin => \clock_divider[23]~76\,
	combout => \clock_divider[24]~77_combout\,
	cout => \clock_divider[24]~78\);

-- Location: FF_X28_Y25_N23
\clock_divider[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[24]~77_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(24));

-- Location: LCCOMB_X28_Y25_N24
\clock_divider[25]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[25]~79_combout\ = \clock_divider[24]~78\ $ (clock_divider(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clock_divider(25),
	cin => \clock_divider[24]~78\,
	combout => \clock_divider[25]~79_combout\);

-- Location: FF_X28_Y25_N25
\clock_divider[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[25]~79_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(25));

-- Location: LCCOMB_X28_Y25_N26
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (clock_divider(18)) # ((clock_divider(16)) # ((!clock_divider(19)) # (!clock_divider(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(18),
	datab => clock_divider(16),
	datac => clock_divider(17),
	datad => clock_divider(19),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X28_Y25_N30
\clock_divider[3]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[3]~81_combout\ = (clock_divider(24)) # ((\Equal0~5_combout\) # (!clock_divider(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(24),
	datab => clock_divider(25),
	datac => \Equal0~5_combout\,
	combout => \clock_divider[3]~81_combout\);

-- Location: LCCOMB_X27_Y26_N28
\clock_divider[3]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[3]~30_combout\ = ((!\Equal0~6_combout\ & (!\Equal0~4_combout\ & !\clock_divider[3]~81_combout\))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \reset~input_o\,
	datac => \Equal0~4_combout\,
	datad => \clock_divider[3]~81_combout\,
	combout => \clock_divider[3]~30_combout\);

-- Location: FF_X28_Y26_N7
\clock_divider[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[0]~28_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(0));

-- Location: LCCOMB_X28_Y26_N8
\clock_divider[1]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[1]~31_combout\ = (clock_divider(1) & (!\clock_divider[0]~29\)) # (!clock_divider(1) & ((\clock_divider[0]~29\) # (GND)))
-- \clock_divider[1]~32\ = CARRY((!\clock_divider[0]~29\) # (!clock_divider(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(1),
	datad => VCC,
	cin => \clock_divider[0]~29\,
	combout => \clock_divider[1]~31_combout\,
	cout => \clock_divider[1]~32\);

-- Location: FF_X28_Y26_N9
\clock_divider[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[1]~31_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(1));

-- Location: FF_X28_Y26_N11
\clock_divider[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[2]~33_combout\,
	sclr => \clock_divider[3]~30_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(2));

-- Location: LCCOMB_X28_Y26_N4
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (((!clock_divider(3)) # (!clock_divider(0))) # (!clock_divider(1))) # (!clock_divider(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(2),
	datab => clock_divider(1),
	datac => clock_divider(0),
	datad => clock_divider(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X28_Y26_N2
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (clock_divider(7)) # (((!clock_divider(6)) # (!clock_divider(4))) # (!clock_divider(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(7),
	datab => clock_divider(5),
	datac => clock_divider(4),
	datad => clock_divider(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X28_Y26_N0
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (clock_divider(8)) # ((clock_divider(11)) # ((clock_divider(10)) # (clock_divider(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(8),
	datab => clock_divider(11),
	datac => clock_divider(10),
	datad => clock_divider(9),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X27_Y26_N16
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (((!clock_divider(15)) # (!clock_divider(13))) # (!clock_divider(14))) # (!clock_divider(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(12),
	datab => clock_divider(14),
	datac => clock_divider(13),
	datad => clock_divider(15),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X27_Y26_N26
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\) # ((\Equal0~1_combout\) # ((\Equal0~2_combout\) # (\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X27_Y25_N0
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (clock_divider(24)) # (!clock_divider(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(24),
	datad => clock_divider(25),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X27_Y26_N14
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\Equal0~4_combout\ & (!\Equal0~5_combout\ & (!\Equal0~6_combout\ & !\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: FF_X27_Y26_N15
sec_0_ena : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \Equal0~8_combout\,
	ena => \state.show_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_0_ena~q\);

-- Location: LCCOMB_X27_Y26_N6
\counter_sec_0[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_sec_0[0]~4_combout\ = (counter_sec_0(0) & (\sec_0_ena~q\ $ (VCC))) # (!counter_sec_0(0) & (\sec_0_ena~q\ & VCC))
-- \counter_sec_0[0]~5\ = CARRY((counter_sec_0(0) & \sec_0_ena~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_0(0),
	datab => \sec_0_ena~q\,
	datad => VCC,
	combout => \counter_sec_0[0]~4_combout\,
	cout => \counter_sec_0[0]~5\);

-- Location: IOIBUF_X0_Y21_N8
\confirm~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_confirm,
	o => \confirm~input_o\);

-- Location: LCCOMB_X27_Y27_N14
\index[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \index[0]~0_combout\ = ((index(0)) # ((!\confirm~input_o\ & !\state.show_clock~q\))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \confirm~input_o\,
	datab => \reset~input_o\,
	datac => index(0),
	datad => \state.show_clock~q\,
	combout => \index[0]~0_combout\);

-- Location: FF_X27_Y27_N15
\index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \index[0]~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(0));

-- Location: IOIBUF_X0_Y23_N1
\counter_down~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_counter_down,
	o => \counter_down~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\counter_up~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_counter_up,
	o => \counter_up~input_o\);

-- Location: LCCOMB_X28_Y27_N20
\counter_min_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_0~10_combout\ = (!\counter_up~input_o\) # (!\counter_down~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_down~input_o\,
	datad => \counter_up~input_o\,
	combout => \counter_min_0~10_combout\);

-- Location: LCCOMB_X27_Y27_N6
\counter_hr_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0~0_combout\ = (!\state.show_clock~q\ & (counter_hr_0(0) $ (((index(0) & \counter_min_0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.show_clock~q\,
	datab => index(0),
	datac => \counter_min_0~10_combout\,
	datad => counter_hr_0(0),
	combout => \counter_hr_0~0_combout\);

-- Location: LCCOMB_X28_Y27_N6
\counter_min_1[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_1[3]~2_combout\ = (\state.show_clock~q\ & (!\Equal4~0_combout\ & ((\Equal6~0_combout\)))) # (!\state.show_clock~q\ & (((\counter_down~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.show_clock~q\,
	datab => \Equal4~0_combout\,
	datac => \counter_down~input_o\,
	datad => \Equal6~0_combout\,
	combout => \counter_min_1[3]~2_combout\);

-- Location: LCCOMB_X27_Y26_N0
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (counter_sec_0(3) & (!counter_sec_0(2) & (counter_sec_0(1) & !counter_sec_0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_0(3),
	datab => counter_sec_0(2),
	datac => counter_sec_0(1),
	datad => counter_sec_0(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X24_Y26_N0
\sec_1_ena~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_1_ena~feeder_combout\ = \Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~0_combout\,
	combout => \sec_1_ena~feeder_combout\);

-- Location: FF_X24_Y26_N1
sec_1_ena : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \sec_1_ena~feeder_combout\,
	ena => \state.show_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_1_ena~q\);

-- Location: LCCOMB_X23_Y28_N16
\counter_sec_1[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_sec_1[0]~4_combout\ = (\sec_1_ena~q\ & (counter_sec_1(0) $ (VCC))) # (!\sec_1_ena~q\ & (counter_sec_1(0) & VCC))
-- \counter_sec_1[0]~5\ = CARRY((\sec_1_ena~q\ & counter_sec_1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec_1_ena~q\,
	datab => counter_sec_1(0),
	datad => VCC,
	combout => \counter_sec_1[0]~4_combout\,
	cout => \counter_sec_1[0]~5\);

-- Location: LCCOMB_X23_Y28_N24
\counter_sec_1[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_sec_1[3]~6_combout\ = (\Equal2~0_combout\) # ((!\Equal6~0_combout\) # (!\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datac => \reset~input_o\,
	datad => \Equal6~0_combout\,
	combout => \counter_sec_1[3]~6_combout\);

-- Location: FF_X23_Y28_N17
\counter_sec_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_sec_1[0]~4_combout\,
	sclr => \counter_sec_1[3]~6_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec_1(0));

-- Location: LCCOMB_X23_Y28_N18
\counter_sec_1[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_sec_1[1]~7_combout\ = (counter_sec_1(1) & (!\counter_sec_1[0]~5\)) # (!counter_sec_1(1) & ((\counter_sec_1[0]~5\) # (GND)))
-- \counter_sec_1[1]~8\ = CARRY((!\counter_sec_1[0]~5\) # (!counter_sec_1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec_1(1),
	datad => VCC,
	cin => \counter_sec_1[0]~5\,
	combout => \counter_sec_1[1]~7_combout\,
	cout => \counter_sec_1[1]~8\);

-- Location: FF_X23_Y28_N19
\counter_sec_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_sec_1[1]~7_combout\,
	sclr => \counter_sec_1[3]~6_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec_1(1));

-- Location: LCCOMB_X23_Y28_N20
\counter_sec_1[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_sec_1[2]~9_combout\ = (counter_sec_1(2) & (\counter_sec_1[1]~8\ $ (GND))) # (!counter_sec_1(2) & (!\counter_sec_1[1]~8\ & VCC))
-- \counter_sec_1[2]~10\ = CARRY((counter_sec_1(2) & !\counter_sec_1[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec_1(2),
	datad => VCC,
	cin => \counter_sec_1[1]~8\,
	combout => \counter_sec_1[2]~9_combout\,
	cout => \counter_sec_1[2]~10\);

-- Location: FF_X23_Y28_N21
\counter_sec_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_sec_1[2]~9_combout\,
	sclr => \counter_sec_1[3]~6_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec_1(2));

-- Location: LCCOMB_X23_Y28_N22
\counter_sec_1[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_sec_1[3]~11_combout\ = counter_sec_1(3) $ (\counter_sec_1[2]~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_1(3),
	cin => \counter_sec_1[2]~10\,
	combout => \counter_sec_1[3]~11_combout\);

-- Location: FF_X23_Y28_N23
\counter_sec_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_sec_1[3]~11_combout\,
	sclr => \counter_sec_1[3]~6_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec_1(3));

-- Location: LCCOMB_X23_Y28_N10
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!counter_sec_1(0) & (counter_sec_1(1) & (!counter_sec_1(3) & counter_sec_1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_1(0),
	datab => counter_sec_1(1),
	datac => counter_sec_1(3),
	datad => counter_sec_1(2),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X26_Y28_N28
\min_0_ena~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_0_ena~feeder_combout\ = \Equal2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal2~0_combout\,
	combout => \min_0_ena~feeder_combout\);

-- Location: FF_X26_Y28_N29
min_0_ena : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \min_0_ena~feeder_combout\,
	ena => \state.show_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_0_ena~q\);

-- Location: LCCOMB_X27_Y27_N24
\counter_min_0[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_0[3]~0_combout\ = (\Equal6~0_combout\ & (!\Equal3~0_combout\ & \state.show_clock~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datac => \Equal3~0_combout\,
	datad => \state.show_clock~q\,
	combout => \counter_min_0[3]~0_combout\);

-- Location: LCCOMB_X27_Y27_N0
\counter_min_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_0~1_combout\ = (counter_min_0(0) & (((!\min_0_ena~q\ & \counter_min_0[3]~0_combout\)) # (!\state.show_clock~q\))) # (!counter_min_0(0) & (((\min_0_ena~q\ & \counter_min_0[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.show_clock~q\,
	datab => \min_0_ena~q\,
	datac => counter_min_0(0),
	datad => \counter_min_0[3]~0_combout\,
	combout => \counter_min_0~1_combout\);

-- Location: FF_X27_Y27_N1
\counter_min_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_min_0~1_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min_0(0));

-- Location: LCCOMB_X27_Y28_N18
\counter_min_0[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_0[3]~2_combout\ = (\state.show_clock~q\ & (((!\Equal3~0_combout\ & \Equal6~0_combout\)))) # (!\state.show_clock~q\ & (\counter_down~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_down~input_o\,
	datab => \Equal3~0_combout\,
	datac => \state.show_clock~q\,
	datad => \Equal6~0_combout\,
	combout => \counter_min_0[3]~2_combout\);

-- Location: LCCOMB_X27_Y28_N16
\counter_min_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_0~3_combout\ = (\counter_min_0[3]~2_combout\ & ((counter_min_0(0) $ (counter_min_0(1))))) # (!\counter_min_0[3]~2_combout\ & (!\state.show_clock~q\ & (counter_min_0(0) $ (!counter_min_0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.show_clock~q\,
	datab => counter_min_0(0),
	datac => counter_min_0(1),
	datad => \counter_min_0[3]~2_combout\,
	combout => \counter_min_0~3_combout\);

-- Location: LCCOMB_X27_Y28_N0
\counter_min_0[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_0[3]~4_combout\ = ((!\min_0_ena~q\ & (!\Equal3~0_combout\ & \Equal6~0_combout\))) # (!\state.show_clock~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_0_ena~q\,
	datab => \Equal3~0_combout\,
	datac => \state.show_clock~q\,
	datad => \Equal6~0_combout\,
	combout => \counter_min_0[3]~4_combout\);

-- Location: LCCOMB_X27_Y28_N14
\counter_min_0[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_0[3]~5_combout\ = (!\counter_min_0[3]~4_combout\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \counter_min_0[3]~4_combout\,
	combout => \counter_min_0[3]~5_combout\);

-- Location: FF_X27_Y28_N17
\counter_min_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_min_0~3_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \counter_min_0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min_0(1));

-- Location: LCCOMB_X27_Y28_N24
\counter_min_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_0~6_combout\ = (counter_min_0(1) & ((counter_min_0(0)) # (!\counter_min_0[3]~2_combout\))) # (!counter_min_0(1) & (counter_min_0(0) & !\counter_min_0[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_min_0(1),
	datac => counter_min_0(0),
	datad => \counter_min_0[3]~2_combout\,
	combout => \counter_min_0~6_combout\);

-- Location: LCCOMB_X27_Y28_N30
\counter_min_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_0~7_combout\ = (\counter_min_0[3]~2_combout\ & ((\counter_min_0~6_combout\ $ (counter_min_0(2))))) # (!\counter_min_0[3]~2_combout\ & (!\state.show_clock~q\ & (\counter_min_0~6_combout\ $ (!counter_min_0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.show_clock~q\,
	datab => \counter_min_0~6_combout\,
	datac => counter_min_0(2),
	datad => \counter_min_0[3]~2_combout\,
	combout => \counter_min_0~7_combout\);

-- Location: FF_X27_Y28_N31
\counter_min_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_min_0~7_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \counter_min_0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min_0(2));

-- Location: LCCOMB_X27_Y28_N10
\counter_min_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_0~8_combout\ = (counter_min_0(2) & (((counter_min_0(1) & counter_min_0(0))) # (!\counter_min_0[3]~2_combout\))) # (!counter_min_0(2) & (!\counter_min_0[3]~2_combout\ & ((counter_min_0(1)) # (counter_min_0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(2),
	datab => counter_min_0(1),
	datac => counter_min_0(0),
	datad => \counter_min_0[3]~2_combout\,
	combout => \counter_min_0~8_combout\);

-- Location: LCCOMB_X27_Y28_N8
\counter_min_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_0~9_combout\ = (\counter_min_0[3]~2_combout\ & ((counter_min_0(3) $ (\counter_min_0~8_combout\)))) # (!\counter_min_0[3]~2_combout\ & (!\state.show_clock~q\ & (counter_min_0(3) $ (!\counter_min_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.show_clock~q\,
	datab => \counter_min_0[3]~2_combout\,
	datac => counter_min_0(3),
	datad => \counter_min_0~8_combout\,
	combout => \counter_min_0~9_combout\);

-- Location: FF_X27_Y28_N9
\counter_min_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_min_0~9_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \counter_min_0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min_0(3));

-- Location: LCCOMB_X27_Y28_N20
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!counter_min_0(2) & (!counter_min_0(0) & (counter_min_0(3) & counter_min_0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(2),
	datab => counter_min_0(0),
	datac => counter_min_0(3),
	datad => counter_min_0(1),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X28_Y27_N24
\min_1_ena~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_1_ena~feeder_combout\ = \Equal3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal3~0_combout\,
	combout => \min_1_ena~feeder_combout\);

-- Location: FF_X28_Y27_N25
min_1_ena : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \min_1_ena~feeder_combout\,
	ena => \state.show_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_1_ena~q\);

-- Location: LCCOMB_X28_Y27_N30
\counter_min_1[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_1[3]~0_combout\ = (\Equal6~0_combout\ & (\state.show_clock~q\ & !\Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal6~0_combout\,
	datac => \state.show_clock~q\,
	datad => \Equal4~0_combout\,
	combout => \counter_min_1[3]~0_combout\);

-- Location: LCCOMB_X29_Y27_N12
\counter_min_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_1~1_combout\ = (counter_min_1(0) & (((!\min_1_ena~q\ & \counter_min_1[3]~0_combout\)) # (!\state.show_clock~q\))) # (!counter_min_1(0) & (((\min_1_ena~q\ & \counter_min_1[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.show_clock~q\,
	datab => \min_1_ena~q\,
	datac => counter_min_1(0),
	datad => \counter_min_1[3]~0_combout\,
	combout => \counter_min_1~1_combout\);

-- Location: FF_X29_Y27_N13
\counter_min_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_min_1~1_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min_1(0));

-- Location: LCCOMB_X29_Y27_N30
\counter_min_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_1~3_combout\ = (\counter_min_1[3]~2_combout\ & ((counter_min_1(1) $ (counter_min_1(0))))) # (!\counter_min_1[3]~2_combout\ & (!\state.show_clock~q\ & (counter_min_1(1) $ (!counter_min_1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.show_clock~q\,
	datab => \counter_min_1[3]~2_combout\,
	datac => counter_min_1(1),
	datad => counter_min_1(0),
	combout => \counter_min_1~3_combout\);

-- Location: LCCOMB_X29_Y27_N0
\counter_min_1[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_1[3]~4_combout\ = (\reset~input_o\ & ((!\min_1_ena~q\) # (!\state.show_clock~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \state.show_clock~q\,
	datad => \min_1_ena~q\,
	combout => \counter_min_1[3]~4_combout\);

-- Location: LCCOMB_X29_Y27_N26
\counter_min_1[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_1[3]~5_combout\ = ((\state.show_clock~q\ & ((\Equal4~0_combout\) # (!\Equal6~0_combout\)))) # (!\counter_min_1[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Equal6~0_combout\,
	datac => \state.show_clock~q\,
	datad => \counter_min_1[3]~4_combout\,
	combout => \counter_min_1[3]~5_combout\);

-- Location: FF_X29_Y27_N31
\counter_min_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_min_1~3_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \counter_min_1[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min_1(1));

-- Location: LCCOMB_X29_Y27_N28
\counter_min_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_1~6_combout\ = (counter_min_1(1) & ((counter_min_1(0)) # (!\counter_min_1[3]~2_combout\))) # (!counter_min_1(1) & (!\counter_min_1[3]~2_combout\ & counter_min_1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_1(1),
	datac => \counter_min_1[3]~2_combout\,
	datad => counter_min_1(0),
	combout => \counter_min_1~6_combout\);

-- Location: LCCOMB_X29_Y27_N4
\counter_min_1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_1~7_combout\ = (\counter_min_1[3]~2_combout\ & ((counter_min_1(2) $ (\counter_min_1~6_combout\)))) # (!\counter_min_1[3]~2_combout\ & (!\state.show_clock~q\ & (counter_min_1(2) $ (!\counter_min_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.show_clock~q\,
	datab => \counter_min_1[3]~2_combout\,
	datac => counter_min_1(2),
	datad => \counter_min_1~6_combout\,
	combout => \counter_min_1~7_combout\);

-- Location: FF_X29_Y27_N5
\counter_min_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_min_1~7_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \counter_min_1[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min_1(2));

-- Location: LCCOMB_X29_Y27_N10
\counter_min_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_1~8_combout\ = (counter_min_1(1) & (((counter_min_1(2) & counter_min_1(0))) # (!\counter_min_1[3]~2_combout\))) # (!counter_min_1(1) & (!\counter_min_1[3]~2_combout\ & ((counter_min_1(2)) # (counter_min_1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_1(1),
	datab => counter_min_1(2),
	datac => \counter_min_1[3]~2_combout\,
	datad => counter_min_1(0),
	combout => \counter_min_1~8_combout\);

-- Location: LCCOMB_X29_Y27_N18
\counter_min_1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_1~9_combout\ = (\counter_min_1[3]~2_combout\ & ((counter_min_1(3) $ (\counter_min_1~8_combout\)))) # (!\counter_min_1[3]~2_combout\ & (!\state.show_clock~q\ & (counter_min_1(3) $ (!\counter_min_1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.show_clock~q\,
	datab => \counter_min_1[3]~2_combout\,
	datac => counter_min_1(3),
	datad => \counter_min_1~8_combout\,
	combout => \counter_min_1~9_combout\);

-- Location: FF_X29_Y27_N19
\counter_min_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_min_1~9_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \counter_min_1[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min_1(3));

-- Location: LCCOMB_X29_Y27_N22
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (counter_min_1(1) & (!counter_min_1(3) & (counter_min_1(2) & !counter_min_1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_1(1),
	datab => counter_min_1(3),
	datac => counter_min_1(2),
	datad => counter_min_1(0),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X28_Y27_N28
\hr_0_ena~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hr_0_ena~feeder_combout\ = \Equal4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal4~0_combout\,
	combout => \hr_0_ena~feeder_combout\);

-- Location: FF_X28_Y27_N29
hr_0_ena : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \hr_0_ena~feeder_combout\,
	ena => \state.show_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hr_0_ena~q\);

-- Location: LCCOMB_X28_Y27_N26
\counter_hr_0[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0[1]~1_combout\ = (\state.show_clock~q\ & (!\Equal5~0_combout\ & \Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.show_clock~q\,
	datac => \Equal5~0_combout\,
	datad => \Equal6~0_combout\,
	combout => \counter_hr_0[1]~1_combout\);

-- Location: LCCOMB_X27_Y27_N16
\counter_hr_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0~2_combout\ = (\counter_hr_0~0_combout\) # ((\counter_hr_0[1]~1_combout\ & (\hr_0_ena~q\ $ (counter_hr_0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_hr_0~0_combout\,
	datab => \hr_0_ena~q\,
	datac => counter_hr_0(0),
	datad => \counter_hr_0[1]~1_combout\,
	combout => \counter_hr_0~2_combout\);

-- Location: FF_X27_Y27_N17
\counter_hr_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_hr_0~2_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr_0(0));

-- Location: LCCOMB_X28_Y27_N18
\counter_hr_0[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0[1]~3_combout\ = (\state.show_clock~q\ & (((!\Equal5~0_combout\ & \Equal6~0_combout\)))) # (!\state.show_clock~q\ & (\counter_down~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.show_clock~q\,
	datab => \counter_down~input_o\,
	datac => \Equal5~0_combout\,
	datad => \Equal6~0_combout\,
	combout => \counter_hr_0[1]~3_combout\);

-- Location: LCCOMB_X28_Y27_N0
\counter_hr_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0~4_combout\ = (\counter_hr_0[1]~3_combout\ & (counter_hr_0(0) $ (((counter_hr_0(1)))))) # (!\counter_hr_0[1]~3_combout\ & (!\state.show_clock~q\ & (counter_hr_0(0) $ (!counter_hr_0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_0(0),
	datab => \state.show_clock~q\,
	datac => counter_hr_0(1),
	datad => \counter_hr_0[1]~3_combout\,
	combout => \counter_hr_0~4_combout\);

-- Location: LCCOMB_X28_Y27_N12
\counter_hr_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0~5_combout\ = (!\state.show_clock~q\ & (((\counter_up~input_o\ & \counter_down~input_o\)) # (!index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.show_clock~q\,
	datab => \counter_up~input_o\,
	datac => \counter_down~input_o\,
	datad => index(0),
	combout => \counter_hr_0~5_combout\);

-- Location: LCCOMB_X28_Y27_N22
\counter_hr_0[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0[1]~6_combout\ = ((!\counter_hr_0~5_combout\ & ((\hr_0_ena~q\) # (!\counter_hr_0[1]~1_combout\)))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hr_0_ena~q\,
	datab => \reset~input_o\,
	datac => \counter_hr_0[1]~1_combout\,
	datad => \counter_hr_0~5_combout\,
	combout => \counter_hr_0[1]~6_combout\);

-- Location: FF_X28_Y27_N1
\counter_hr_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_hr_0~4_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \counter_hr_0[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr_0(1));

-- Location: LCCOMB_X28_Y27_N10
\counter_hr_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0~9_combout\ = (counter_hr_0(0) & ((counter_hr_0(1)) # (!\counter_hr_0[1]~3_combout\))) # (!counter_hr_0(0) & (counter_hr_0(1) & !\counter_hr_0[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_0(0),
	datab => counter_hr_0(1),
	datad => \counter_hr_0[1]~3_combout\,
	combout => \counter_hr_0~9_combout\);

-- Location: LCCOMB_X28_Y27_N8
\counter_hr_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0~10_combout\ = (\counter_hr_0[1]~3_combout\ & (\counter_hr_0~9_combout\ $ (((counter_hr_0(2)))))) # (!\counter_hr_0[1]~3_combout\ & (!\state.show_clock~q\ & (\counter_hr_0~9_combout\ $ (!counter_hr_0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_hr_0~9_combout\,
	datab => \state.show_clock~q\,
	datac => counter_hr_0(2),
	datad => \counter_hr_0[1]~3_combout\,
	combout => \counter_hr_0~10_combout\);

-- Location: FF_X28_Y27_N9
\counter_hr_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_hr_0~10_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \counter_hr_0[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr_0(2));

-- Location: LCCOMB_X28_Y27_N16
\counter_hr_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0~7_combout\ = (counter_hr_0(0) & (((counter_hr_0(1) & counter_hr_0(2))) # (!\counter_hr_0[1]~3_combout\))) # (!counter_hr_0(0) & (!\counter_hr_0[1]~3_combout\ & ((counter_hr_0(1)) # (counter_hr_0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_0(0),
	datab => counter_hr_0(1),
	datac => counter_hr_0(2),
	datad => \counter_hr_0[1]~3_combout\,
	combout => \counter_hr_0~7_combout\);

-- Location: LCCOMB_X28_Y27_N14
\counter_hr_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0~8_combout\ = (\counter_hr_0[1]~3_combout\ & ((\counter_hr_0~7_combout\ $ (counter_hr_0(3))))) # (!\counter_hr_0[1]~3_combout\ & (!\state.show_clock~q\ & (\counter_hr_0~7_combout\ $ (!counter_hr_0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.show_clock~q\,
	datab => \counter_hr_0~7_combout\,
	datac => counter_hr_0(3),
	datad => \counter_hr_0[1]~3_combout\,
	combout => \counter_hr_0~8_combout\);

-- Location: FF_X28_Y27_N15
\counter_hr_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_hr_0~8_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \counter_hr_0[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr_0(3));

-- Location: LCCOMB_X28_Y27_N4
\Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!counter_hr_0(0) & (counter_hr_0(2) & (!counter_hr_0(3) & !counter_hr_0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_0(0),
	datab => counter_hr_0(2),
	datac => counter_hr_0(3),
	datad => counter_hr_0(1),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X28_Y27_N2
\hr_1_ena~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hr_1_ena~feeder_combout\ = \Equal5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal5~0_combout\,
	combout => \hr_1_ena~feeder_combout\);

-- Location: FF_X28_Y27_N3
hr_1_ena : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \hr_1_ena~feeder_combout\,
	ena => \state.show_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hr_1_ena~q\);

-- Location: LCCOMB_X27_Y27_N26
\counter_hr_1[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1[1]~3_combout\ = (\reset~input_o\ & (!\state.show_clock~q\ & ((index(0)) # (!\counter_min_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => index(0),
	datac => \counter_min_0~10_combout\,
	datad => \state.show_clock~q\,
	combout => \counter_hr_1[1]~3_combout\);

-- Location: LCCOMB_X27_Y27_N20
\counter_hr_1[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1[1]~4_combout\ = (\Equal6~0_combout\ & \state.show_clock~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal6~0_combout\,
	datad => \state.show_clock~q\,
	combout => \counter_hr_1[1]~4_combout\);

-- Location: LCCOMB_X27_Y27_N10
\counter_hr_1[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1[1]~5_combout\ = (\counter_hr_1[1]~3_combout\) # ((!\hr_1_ena~q\ & (\reset~input_o\ & \counter_hr_1[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hr_1_ena~q\,
	datab => \reset~input_o\,
	datac => \counter_hr_1[1]~3_combout\,
	datad => \counter_hr_1[1]~4_combout\,
	combout => \counter_hr_1[1]~5_combout\);

-- Location: LCCOMB_X27_Y27_N28
\counter_hr_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1~12_combout\ = (!\state.show_clock~q\ & (counter_hr_1(0) $ (((!index(0) & \counter_min_0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_1(0),
	datab => index(0),
	datac => \counter_min_0~10_combout\,
	datad => \state.show_clock~q\,
	combout => \counter_hr_1~12_combout\);

-- Location: LCCOMB_X27_Y27_N22
\counter_hr_1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1~13_combout\ = (\counter_hr_1~12_combout\) # ((\counter_hr_1[1]~4_combout\ & (\hr_1_ena~q\ $ (counter_hr_1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hr_1_ena~q\,
	datab => \counter_hr_1[1]~4_combout\,
	datac => counter_hr_1(0),
	datad => \counter_hr_1~12_combout\,
	combout => \counter_hr_1~13_combout\);

-- Location: FF_X27_Y27_N23
\counter_hr_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_hr_1~13_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr_1(0));

-- Location: LCCOMB_X26_Y27_N16
\counter_hr_1[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1[1]~6_combout\ = (\state.show_clock~q\ & ((\Equal6~0_combout\))) # (!\state.show_clock~q\ & (\counter_down~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_down~input_o\,
	datac => \Equal6~0_combout\,
	datad => \state.show_clock~q\,
	combout => \counter_hr_1[1]~6_combout\);

-- Location: LCCOMB_X26_Y27_N24
\counter_hr_1[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1[1]~14_combout\ = (\counter_hr_1[1]~6_combout\ & ((counter_hr_1(0) $ (counter_hr_1(1))))) # (!\counter_hr_1[1]~6_combout\ & (!\state.show_clock~q\ & (counter_hr_1(0) $ (!counter_hr_1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.show_clock~q\,
	datab => counter_hr_1(0),
	datac => counter_hr_1(1),
	datad => \counter_hr_1[1]~6_combout\,
	combout => \counter_hr_1[1]~14_combout\);

-- Location: LCCOMB_X27_Y27_N12
\counter_hr_1[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1[1]~15_combout\ = (\counter_hr_1[1]~5_combout\ & (((counter_hr_1(1))))) # (!\counter_hr_1[1]~5_combout\ & (\reset~input_o\ & ((\counter_hr_1[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_hr_1[1]~5_combout\,
	datab => \reset~input_o\,
	datac => counter_hr_1(1),
	datad => \counter_hr_1[1]~14_combout\,
	combout => \counter_hr_1[1]~15_combout\);

-- Location: FF_X27_Y27_N13
\counter_hr_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_hr_1[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr_1(1));

-- Location: LCCOMB_X26_Y27_N22
\counter_hr_1[2]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1[2]~16_combout\ = (\reset~input_o\ & ((\Equal6~0_combout\) # (!\state.show_clock~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \Equal6~0_combout\,
	datad => \state.show_clock~q\,
	combout => \counter_hr_1[2]~16_combout\);

-- Location: LCCOMB_X26_Y27_N14
\counter_hr_1[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1[2]~7_combout\ = (counter_hr_1(0) & ((!\counter_hr_1[1]~6_combout\) # (!counter_hr_1(1)))) # (!counter_hr_1(0) & ((counter_hr_1(1)) # (\counter_hr_1[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_hr_1(0),
	datac => counter_hr_1(1),
	datad => \counter_hr_1[1]~6_combout\,
	combout => \counter_hr_1[2]~7_combout\);

-- Location: LCCOMB_X27_Y27_N8
\counter_hr_1[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1[2]~8_combout\ = (\counter_hr_1[1]~5_combout\ & (((counter_hr_1(2))))) # (!\counter_hr_1[1]~5_combout\ & (\counter_hr_1[2]~16_combout\ & (counter_hr_1(2) $ (!\counter_hr_1[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_hr_1[1]~5_combout\,
	datab => \counter_hr_1[2]~16_combout\,
	datac => counter_hr_1(2),
	datad => \counter_hr_1[2]~7_combout\,
	combout => \counter_hr_1[2]~8_combout\);

-- Location: FF_X27_Y27_N9
\counter_hr_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_hr_1[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr_1(2));

-- Location: LCCOMB_X26_Y27_N8
\counter_hr_1[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1[3]~9_combout\ = (counter_hr_1(0) & (((counter_hr_1(2) & counter_hr_1(1))) # (!\counter_hr_1[1]~6_combout\))) # (!counter_hr_1(0) & (!\counter_hr_1[1]~6_combout\ & ((counter_hr_1(2)) # (counter_hr_1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_1(0),
	datab => counter_hr_1(2),
	datac => counter_hr_1(1),
	datad => \counter_hr_1[1]~6_combout\,
	combout => \counter_hr_1[3]~9_combout\);

-- Location: LCCOMB_X26_Y27_N30
\counter_hr_1[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1[3]~10_combout\ = (\counter_hr_1[1]~6_combout\ & (((!\counter_hr_1[3]~9_combout\)))) # (!\counter_hr_1[1]~6_combout\ & ((\state.show_clock~q\ & (!counter_hr_1(3))) # (!\state.show_clock~q\ & ((\counter_hr_1[3]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_1(3),
	datab => \state.show_clock~q\,
	datac => \counter_hr_1[3]~9_combout\,
	datad => \counter_hr_1[1]~6_combout\,
	combout => \counter_hr_1[3]~10_combout\);

-- Location: LCCOMB_X27_Y27_N2
\counter_hr_1[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1[3]~11_combout\ = (\counter_hr_1[1]~5_combout\ & (((counter_hr_1(3))))) # (!\counter_hr_1[1]~5_combout\ & (\reset~input_o\ & (counter_hr_1(3) $ (!\counter_hr_1[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_hr_1[1]~5_combout\,
	datab => \reset~input_o\,
	datac => counter_hr_1(3),
	datad => \counter_hr_1[3]~10_combout\,
	combout => \counter_hr_1[3]~11_combout\);

-- Location: FF_X27_Y27_N3
\counter_hr_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_hr_1[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr_1(3));

-- Location: LCCOMB_X27_Y27_N30
\Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = ((counter_hr_1(2)) # ((counter_hr_1(0)) # (counter_hr_1(3)))) # (!counter_hr_1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_1(1),
	datab => counter_hr_1(2),
	datac => counter_hr_1(0),
	datad => counter_hr_1(3),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X27_Y26_N30
\counter_sec_0[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_sec_0[3]~6_combout\ = ((\Equal1~0_combout\) # (!\Equal6~0_combout\)) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \Equal6~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \counter_sec_0[3]~6_combout\);

-- Location: FF_X27_Y26_N7
\counter_sec_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_sec_0[0]~4_combout\,
	sclr => \counter_sec_0[3]~6_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec_0(0));

-- Location: LCCOMB_X27_Y26_N8
\counter_sec_0[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_sec_0[1]~7_combout\ = (counter_sec_0(1) & (!\counter_sec_0[0]~5\)) # (!counter_sec_0(1) & ((\counter_sec_0[0]~5\) # (GND)))
-- \counter_sec_0[1]~8\ = CARRY((!\counter_sec_0[0]~5\) # (!counter_sec_0(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec_0(1),
	datad => VCC,
	cin => \counter_sec_0[0]~5\,
	combout => \counter_sec_0[1]~7_combout\,
	cout => \counter_sec_0[1]~8\);

-- Location: FF_X27_Y26_N9
\counter_sec_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_sec_0[1]~7_combout\,
	sclr => \counter_sec_0[3]~6_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec_0(1));

-- Location: LCCOMB_X27_Y26_N10
\counter_sec_0[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_sec_0[2]~9_combout\ = (counter_sec_0(2) & (\counter_sec_0[1]~8\ $ (GND))) # (!counter_sec_0(2) & (!\counter_sec_0[1]~8\ & VCC))
-- \counter_sec_0[2]~10\ = CARRY((counter_sec_0(2) & !\counter_sec_0[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec_0(2),
	datad => VCC,
	cin => \counter_sec_0[1]~8\,
	combout => \counter_sec_0[2]~9_combout\,
	cout => \counter_sec_0[2]~10\);

-- Location: FF_X27_Y26_N11
\counter_sec_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_sec_0[2]~9_combout\,
	sclr => \counter_sec_0[3]~6_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec_0(2));

-- Location: LCCOMB_X27_Y26_N12
\counter_sec_0[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_sec_0[3]~11_combout\ = \counter_sec_0[2]~10\ $ (counter_sec_0(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter_sec_0(3),
	cin => \counter_sec_0[2]~10\,
	combout => \counter_sec_0[3]~11_combout\);

-- Location: FF_X27_Y26_N13
\counter_sec_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_sec_0[3]~11_combout\,
	sclr => \counter_sec_0[3]~6_combout\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec_0(3));

-- Location: LCCOMB_X24_Y25_N20
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (counter_sec_0(1) & (counter_sec_0(3))) # (!counter_sec_0(1) & (counter_sec_0(2) $ (((!counter_sec_0(3) & counter_sec_0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_0(3),
	datab => counter_sec_0(1),
	datac => counter_sec_0(2),
	datad => counter_sec_0(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X24_Y25_N22
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (counter_sec_0(3) & ((counter_sec_0(1)) # ((counter_sec_0(2))))) # (!counter_sec_0(3) & (counter_sec_0(2) & (counter_sec_0(1) $ (counter_sec_0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_0(3),
	datab => counter_sec_0(1),
	datac => counter_sec_0(2),
	datad => counter_sec_0(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X27_Y26_N4
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (counter_sec_0(2) & (counter_sec_0(3))) # (!counter_sec_0(2) & (counter_sec_0(1) & ((counter_sec_0(3)) # (!counter_sec_0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_0(3),
	datab => counter_sec_0(2),
	datac => counter_sec_0(1),
	datad => counter_sec_0(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X27_Y26_N18
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (counter_sec_0(1) & ((counter_sec_0(3)) # ((counter_sec_0(2) & counter_sec_0(0))))) # (!counter_sec_0(1) & (counter_sec_0(2) $ (((!counter_sec_0(3) & counter_sec_0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_0(3),
	datab => counter_sec_0(2),
	datac => counter_sec_0(1),
	datad => counter_sec_0(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X27_Y26_N24
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (counter_sec_0(0)) # ((counter_sec_0(1) & (counter_sec_0(3))) # (!counter_sec_0(1) & ((counter_sec_0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_0(3),
	datab => counter_sec_0(2),
	datac => counter_sec_0(1),
	datad => counter_sec_0(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X27_Y26_N22
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (counter_sec_0(2) & ((counter_sec_0(3)) # ((counter_sec_0(1) & counter_sec_0(0))))) # (!counter_sec_0(2) & ((counter_sec_0(1)) # ((!counter_sec_0(3) & counter_sec_0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_0(3),
	datab => counter_sec_0(2),
	datac => counter_sec_0(1),
	datad => counter_sec_0(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X27_Y26_N20
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (counter_sec_0(2) & (!counter_sec_0(3) & ((!counter_sec_0(0)) # (!counter_sec_0(1))))) # (!counter_sec_0(2) & (counter_sec_0(3) $ ((counter_sec_0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_0(3),
	datab => counter_sec_0(2),
	datac => counter_sec_0(1),
	datad => counter_sec_0(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X23_Y28_N0
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (counter_sec_1(1) & (((counter_sec_1(3))))) # (!counter_sec_1(1) & (counter_sec_1(2) $ (((counter_sec_1(0) & !counter_sec_1(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_1(0),
	datab => counter_sec_1(1),
	datac => counter_sec_1(3),
	datad => counter_sec_1(2),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X23_Y28_N6
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (counter_sec_1(3) & (((counter_sec_1(1)) # (counter_sec_1(2))))) # (!counter_sec_1(3) & (counter_sec_1(2) & (counter_sec_1(0) $ (counter_sec_1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_1(0),
	datab => counter_sec_1(1),
	datac => counter_sec_1(3),
	datad => counter_sec_1(2),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X23_Y28_N8
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (counter_sec_1(2) & (((counter_sec_1(3))))) # (!counter_sec_1(2) & (counter_sec_1(1) & ((counter_sec_1(3)) # (!counter_sec_1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_1(0),
	datab => counter_sec_1(1),
	datac => counter_sec_1(3),
	datad => counter_sec_1(2),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X23_Y28_N2
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (counter_sec_1(1) & ((counter_sec_1(3)) # ((counter_sec_1(0) & counter_sec_1(2))))) # (!counter_sec_1(1) & (counter_sec_1(2) $ (((counter_sec_1(0) & !counter_sec_1(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_1(0),
	datab => counter_sec_1(1),
	datac => counter_sec_1(3),
	datad => counter_sec_1(2),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X23_Y28_N28
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (counter_sec_1(0)) # ((counter_sec_1(1) & (counter_sec_1(3))) # (!counter_sec_1(1) & ((counter_sec_1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_1(0),
	datab => counter_sec_1(1),
	datac => counter_sec_1(3),
	datad => counter_sec_1(2),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X23_Y28_N26
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (counter_sec_1(0) & ((counter_sec_1(1)) # (counter_sec_1(3) $ (!counter_sec_1(2))))) # (!counter_sec_1(0) & ((counter_sec_1(2) & ((counter_sec_1(3)))) # (!counter_sec_1(2) & (counter_sec_1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_1(0),
	datab => counter_sec_1(1),
	datac => counter_sec_1(3),
	datad => counter_sec_1(2),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X23_Y28_N12
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (counter_sec_1(1) & (!counter_sec_1(3) & ((!counter_sec_1(2)) # (!counter_sec_1(0))))) # (!counter_sec_1(1) & ((counter_sec_1(3) $ (counter_sec_1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_1(0),
	datab => counter_sec_1(1),
	datac => counter_sec_1(3),
	datad => counter_sec_1(2),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X27_Y28_N22
\Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (counter_min_0(1) & (((counter_min_0(3))))) # (!counter_min_0(1) & (counter_min_0(2) $ (((counter_min_0(0) & !counter_min_0(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(2),
	datab => counter_min_0(0),
	datac => counter_min_0(3),
	datad => counter_min_0(1),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X27_Y28_N12
\Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (counter_min_0(2) & ((counter_min_0(3)) # (counter_min_0(0) $ (counter_min_0(1))))) # (!counter_min_0(2) & (((counter_min_0(3) & counter_min_0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(2),
	datab => counter_min_0(0),
	datac => counter_min_0(3),
	datad => counter_min_0(1),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X27_Y28_N6
\Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (counter_min_0(2) & (((counter_min_0(3))))) # (!counter_min_0(2) & (counter_min_0(1) & ((counter_min_0(3)) # (!counter_min_0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(2),
	datab => counter_min_0(0),
	datac => counter_min_0(3),
	datad => counter_min_0(1),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X27_Y28_N4
\Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (counter_min_0(1) & ((counter_min_0(3)) # ((counter_min_0(2) & counter_min_0(0))))) # (!counter_min_0(1) & (counter_min_0(2) $ (((counter_min_0(0) & !counter_min_0(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(2),
	datab => counter_min_0(0),
	datac => counter_min_0(3),
	datad => counter_min_0(1),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X27_Y28_N2
\Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (counter_min_0(0)) # ((counter_min_0(1) & ((counter_min_0(3)))) # (!counter_min_0(1) & (counter_min_0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(2),
	datab => counter_min_0(0),
	datac => counter_min_0(3),
	datad => counter_min_0(1),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X27_Y28_N28
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (counter_min_0(2) & ((counter_min_0(3)) # ((counter_min_0(0) & counter_min_0(1))))) # (!counter_min_0(2) & ((counter_min_0(1)) # ((counter_min_0(0) & !counter_min_0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(2),
	datab => counter_min_0(0),
	datac => counter_min_0(3),
	datad => counter_min_0(1),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X27_Y28_N26
\Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (counter_min_0(2) & (!counter_min_0(3) & ((!counter_min_0(1)) # (!counter_min_0(0))))) # (!counter_min_0(2) & ((counter_min_0(3) $ (counter_min_0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(2),
	datab => counter_min_0(0),
	datac => counter_min_0(3),
	datad => counter_min_0(1),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X29_Y27_N20
\Mux27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (counter_min_1(1) & (((counter_min_1(3))))) # (!counter_min_1(1) & (counter_min_1(2) $ (((counter_min_1(0) & !counter_min_1(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_1(0),
	datab => counter_min_1(2),
	datac => counter_min_1(1),
	datad => counter_min_1(3),
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X29_Y27_N6
\Mux26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (counter_min_1(2) & ((counter_min_1(3)) # (counter_min_1(0) $ (counter_min_1(1))))) # (!counter_min_1(2) & (((counter_min_1(1) & counter_min_1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_1(0),
	datab => counter_min_1(2),
	datac => counter_min_1(1),
	datad => counter_min_1(3),
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X29_Y27_N16
\Mux25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (counter_min_1(2) & (((counter_min_1(3))))) # (!counter_min_1(2) & (counter_min_1(1) & ((counter_min_1(3)) # (!counter_min_1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_1(0),
	datab => counter_min_1(2),
	datac => counter_min_1(1),
	datad => counter_min_1(3),
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X29_Y27_N2
\Mux24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (counter_min_1(1) & ((counter_min_1(3)) # ((counter_min_1(0) & counter_min_1(2))))) # (!counter_min_1(1) & (counter_min_1(2) $ (((counter_min_1(0) & !counter_min_1(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_1(0),
	datab => counter_min_1(2),
	datac => counter_min_1(1),
	datad => counter_min_1(3),
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X29_Y27_N8
\Mux23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (counter_min_1(0)) # ((counter_min_1(1) & ((counter_min_1(3)))) # (!counter_min_1(1) & (counter_min_1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_1(0),
	datab => counter_min_1(2),
	datac => counter_min_1(1),
	datad => counter_min_1(3),
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X29_Y27_N14
\Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (counter_min_1(0) & ((counter_min_1(1)) # (counter_min_1(2) $ (!counter_min_1(3))))) # (!counter_min_1(0) & ((counter_min_1(2) & ((counter_min_1(3)))) # (!counter_min_1(2) & (counter_min_1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_1(0),
	datab => counter_min_1(2),
	datac => counter_min_1(1),
	datad => counter_min_1(3),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X29_Y27_N24
\Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (counter_min_1(2) & (!counter_min_1(3) & ((!counter_min_1(1)) # (!counter_min_1(0))))) # (!counter_min_1(2) & ((counter_min_1(1) $ (counter_min_1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_1(0),
	datab => counter_min_1(2),
	datac => counter_min_1(1),
	datad => counter_min_1(3),
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X24_Y27_N12
\set_LED~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \set_LED~reg0feeder_combout\ = \state.show_clock~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.show_clock~q\,
	combout => \set_LED~reg0feeder_combout\);

-- Location: FF_X24_Y27_N13
\set_LED~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \set_LED~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_LED~reg0_q\);

-- Location: LCCOMB_X27_Y27_N4
\blink~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \blink~0_combout\ = \sec_0_ena~q\ $ (\blink~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec_0_ena~q\,
	datac => \blink~q\,
	combout => \blink~0_combout\);

-- Location: FF_X27_Y27_N5
blink : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \blink~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \counter_hr_1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink~q\);

-- Location: LCCOMB_X27_Y27_N18
\show_LED~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_LED~1_combout\ = (\blink~q\) # (!\state.show_clock~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.show_clock~q\,
	datac => \blink~q\,
	combout => \show_LED~1_combout\);

-- Location: FF_X27_Y27_N19
\show_LED~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \show_LED~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \show_LED~reg0_q\);

ww_segment0(0) <= \segment0[0]~output_o\;

ww_segment0(1) <= \segment0[1]~output_o\;

ww_segment0(2) <= \segment0[2]~output_o\;

ww_segment0(3) <= \segment0[3]~output_o\;

ww_segment0(4) <= \segment0[4]~output_o\;

ww_segment0(5) <= \segment0[5]~output_o\;

ww_segment0(6) <= \segment0[6]~output_o\;

ww_segment1(0) <= \segment1[0]~output_o\;

ww_segment1(1) <= \segment1[1]~output_o\;

ww_segment1(2) <= \segment1[2]~output_o\;

ww_segment1(3) <= \segment1[3]~output_o\;

ww_segment1(4) <= \segment1[4]~output_o\;

ww_segment1(5) <= \segment1[5]~output_o\;

ww_segment1(6) <= \segment1[6]~output_o\;

ww_segment2(0) <= \segment2[0]~output_o\;

ww_segment2(1) <= \segment2[1]~output_o\;

ww_segment2(2) <= \segment2[2]~output_o\;

ww_segment2(3) <= \segment2[3]~output_o\;

ww_segment2(4) <= \segment2[4]~output_o\;

ww_segment2(5) <= \segment2[5]~output_o\;

ww_segment2(6) <= \segment2[6]~output_o\;

ww_segment3(0) <= \segment3[0]~output_o\;

ww_segment3(1) <= \segment3[1]~output_o\;

ww_segment3(2) <= \segment3[2]~output_o\;

ww_segment3(3) <= \segment3[3]~output_o\;

ww_segment3(4) <= \segment3[4]~output_o\;

ww_segment3(5) <= \segment3[5]~output_o\;

ww_segment3(6) <= \segment3[6]~output_o\;

ww_dec_point <= \dec_point~output_o\;

ww_set_LED <= \set_LED~output_o\;

ww_show_LED <= \show_LED~output_o\;
END structure;


