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

-- DATE "01/24/2019 19:14:17"

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
	confirm : IN std_logic;
	set_LED : BUFFER std_logic;
	show_LED : BUFFER std_logic;
	reset_LED : BUFFER std_logic;
	index_0_LED : BUFFER std_logic;
	index_1_LED : BUFFER std_logic;
	index_2_LED : BUFFER std_logic;
	index_3_LED : BUFFER std_logic;
	sec_0_LED : BUFFER std_logic;
	red : BUFFER std_logic_vector(3 DOWNTO 0);
	green : BUFFER std_logic_vector(3 DOWNTO 0);
	blue : BUFFER std_logic_vector(3 DOWNTO 0);
	hsync_out : BUFFER std_logic;
	vsync_out : BUFFER std_logic
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
-- reset_LED	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- index_0_LED	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- index_1_LED	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- index_2_LED	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- index_3_LED	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec_0_LED	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[3]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hsync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vsync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_up	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_confirm : std_logic;
SIGNAL ww_set_LED : std_logic;
SIGNAL ww_show_LED : std_logic;
SIGNAL ww_reset_LED : std_logic;
SIGNAL ww_index_0_LED : std_logic;
SIGNAL ww_index_1_LED : std_logic;
SIGNAL ww_index_2_LED : std_logic;
SIGNAL ww_index_3_LED : std_logic;
SIGNAL ww_sec_0_LED : std_logic;
SIGNAL ww_red : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_green : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_blue : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hsync_out : std_logic;
SIGNAL ww_vsync_out : std_logic;
SIGNAL \MyComponent_2|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MyComponent_2|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \g_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \g_clk~input_o\ : std_logic;
SIGNAL \g_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \set_switch~input_o\ : std_logic;
SIGNAL \state.show_clock~0_combout\ : std_logic;
SIGNAL \state.show_clock~feeder_combout\ : std_logic;
SIGNAL \state.show_clock~q\ : std_logic;
SIGNAL \counter_hr_1[1]~4_combout\ : std_logic;
SIGNAL \counter_hr_0~15_combout\ : std_logic;
SIGNAL \counter_hr_1~11_combout\ : std_logic;
SIGNAL \hr_1_ena~q\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \accept~0_combout\ : std_logic;
SIGNAL \confirm~input_o\ : std_logic;
SIGNAL \accept_confirm~0_combout\ : std_logic;
SIGNAL \index[1]~0_combout\ : std_logic;
SIGNAL \accept_confirm~q\ : std_logic;
SIGNAL \index~1_combout\ : std_logic;
SIGNAL \index~2_combout\ : std_logic;
SIGNAL \index~3_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \counter_up~input_o\ : std_logic;
SIGNAL \accept~1_combout\ : std_logic;
SIGNAL \accept~q\ : std_logic;
SIGNAL \counter_hr_1[1]~5_combout\ : std_logic;
SIGNAL \counter_hr_1[1]~8_combout\ : std_logic;
SIGNAL \counter_hr_1[1]~9_combout\ : std_logic;
SIGNAL \counter_hr_1~10_combout\ : std_logic;
SIGNAL \counter_hr_1[1]~feeder_combout\ : std_logic;
SIGNAL \evening_ena~1_combout\ : std_logic;
SIGNAL \evening_ena~q\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \counter_hr_0~16_combout\ : std_logic;
SIGNAL \counter_hr_0[3]~4_combout\ : std_logic;
SIGNAL \counter_hr_0[3]~5_combout\ : std_logic;
SIGNAL \hr_0_ena~0_combout\ : std_logic;
SIGNAL \hr_0_ena~q\ : std_logic;
SIGNAL \counter_hr_0[3]~17_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \counter_hr_0[3]~12_combout\ : std_logic;
SIGNAL \counter_hr_0[3]~13_combout\ : std_logic;
SIGNAL \counter_hr_0[3]~14_combout\ : std_logic;
SIGNAL \counter_hr_0[3]~8_combout\ : std_logic;
SIGNAL \counter_hr_0[3]~9_combout\ : std_logic;
SIGNAL \counter_hr_0[3]~6_combout\ : std_logic;
SIGNAL \counter_hr_0[3]~7_combout\ : std_logic;
SIGNAL \counter_hr_0[3]~10_combout\ : std_logic;
SIGNAL \counter_hr_0~11_combout\ : std_logic;
SIGNAL \counter_hr_0~18_combout\ : std_logic;
SIGNAL \State_Machine~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \clock_divider[0]~26_combout\ : std_logic;
SIGNAL \clock_divider[11]~30_combout\ : std_logic;
SIGNAL \clock_divider[0]~27\ : std_logic;
SIGNAL \clock_divider[1]~28_combout\ : std_logic;
SIGNAL \clock_divider[1]~29\ : std_logic;
SIGNAL \clock_divider[2]~31_combout\ : std_logic;
SIGNAL \clock_divider[2]~32\ : std_logic;
SIGNAL \clock_divider[3]~33_combout\ : std_logic;
SIGNAL \clock_divider[3]~34\ : std_logic;
SIGNAL \clock_divider[4]~35_combout\ : std_logic;
SIGNAL \clock_divider[4]~36\ : std_logic;
SIGNAL \clock_divider[5]~37_combout\ : std_logic;
SIGNAL \clock_divider[5]~38\ : std_logic;
SIGNAL \clock_divider[6]~39_combout\ : std_logic;
SIGNAL \clock_divider[6]~40\ : std_logic;
SIGNAL \clock_divider[7]~41_combout\ : std_logic;
SIGNAL \clock_divider[7]~42\ : std_logic;
SIGNAL \clock_divider[8]~43_combout\ : std_logic;
SIGNAL \clock_divider[8]~44\ : std_logic;
SIGNAL \clock_divider[9]~45_combout\ : std_logic;
SIGNAL \clock_divider[9]~46\ : std_logic;
SIGNAL \clock_divider[10]~47_combout\ : std_logic;
SIGNAL \clock_divider[10]~48\ : std_logic;
SIGNAL \clock_divider[11]~49_combout\ : std_logic;
SIGNAL \clock_divider[11]~50\ : std_logic;
SIGNAL \clock_divider[12]~51_combout\ : std_logic;
SIGNAL \clock_divider[12]~52\ : std_logic;
SIGNAL \clock_divider[13]~53_combout\ : std_logic;
SIGNAL \clock_divider[13]~54\ : std_logic;
SIGNAL \clock_divider[14]~55_combout\ : std_logic;
SIGNAL \clock_divider[14]~56\ : std_logic;
SIGNAL \clock_divider[15]~57_combout\ : std_logic;
SIGNAL \clock_divider[15]~58\ : std_logic;
SIGNAL \clock_divider[16]~59_combout\ : std_logic;
SIGNAL \clock_divider[16]~60\ : std_logic;
SIGNAL \clock_divider[17]~61_combout\ : std_logic;
SIGNAL \clock_divider[17]~62\ : std_logic;
SIGNAL \clock_divider[18]~63_combout\ : std_logic;
SIGNAL \clock_divider[18]~64\ : std_logic;
SIGNAL \clock_divider[19]~65_combout\ : std_logic;
SIGNAL \clock_divider[19]~66\ : std_logic;
SIGNAL \clock_divider[20]~67_combout\ : std_logic;
SIGNAL \clock_divider[20]~68\ : std_logic;
SIGNAL \clock_divider[21]~69_combout\ : std_logic;
SIGNAL \clock_divider[21]~70\ : std_logic;
SIGNAL \clock_divider[22]~71_combout\ : std_logic;
SIGNAL \clock_divider[22]~72\ : std_logic;
SIGNAL \clock_divider[23]~73_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \clock_divider[23]~74\ : std_logic;
SIGNAL \clock_divider[24]~75_combout\ : std_logic;
SIGNAL \clock_divider[24]~76\ : std_logic;
SIGNAL \clock_divider[25]~77_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \sec_0_ena~0_combout\ : std_logic;
SIGNAL \sec_0_ena~feeder_combout\ : std_logic;
SIGNAL \sec_0_ena~q\ : std_logic;
SIGNAL \counter_sec_0[0]~4_combout\ : std_logic;
SIGNAL \counter_sec_0[3]~8_combout\ : std_logic;
SIGNAL \counter_sec_0[0]~5\ : std_logic;
SIGNAL \counter_sec_0[1]~6_combout\ : std_logic;
SIGNAL \counter_sec_0[1]~7\ : std_logic;
SIGNAL \counter_sec_0[2]~9_combout\ : std_logic;
SIGNAL \counter_sec_0[2]~10\ : std_logic;
SIGNAL \counter_sec_0[3]~11_combout\ : std_logic;
SIGNAL \sec_1_ena~0_combout\ : std_logic;
SIGNAL \sec_1_ena~1_combout\ : std_logic;
SIGNAL \sec_1_ena~q\ : std_logic;
SIGNAL \counter_sec_1~6_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \counter_sec_1~5_combout\ : std_logic;
SIGNAL \counter_sec_1[2]~2_combout\ : std_logic;
SIGNAL \State_Machine~1_combout\ : std_logic;
SIGNAL \counter_sec_1[2]~3_combout\ : std_logic;
SIGNAL \counter_sec_1~4_combout\ : std_logic;
SIGNAL \min_0_ena~0_combout\ : std_logic;
SIGNAL \min_0_ena~q\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \counter_min_0[3]~0_combout\ : std_logic;
SIGNAL \counter_min_0[3]~1_combout\ : std_logic;
SIGNAL \counter_min_0[1]~4_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \counter_min_0[2]~5_combout\ : std_logic;
SIGNAL \counter_min_0[2]~feeder_combout\ : std_logic;
SIGNAL \State_Machine~3_combout\ : std_logic;
SIGNAL \counter_hr_1[1]~6_combout\ : std_logic;
SIGNAL \counter_hr_1[1]~7_combout\ : std_logic;
SIGNAL \min_1_ena~0_combout\ : std_logic;
SIGNAL \min_1_ena~q\ : std_logic;
SIGNAL \Equal15~1_combout\ : std_logic;
SIGNAL \counter_min_1[0]~1_combout\ : std_logic;
SIGNAL \counter_min_1[0]~2_combout\ : std_logic;
SIGNAL \counter_min_1[0]~5_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \counter_min_1[2]~3_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \counter_min_1[1]~0_combout\ : std_logic;
SIGNAL \counter_min_1[1]~4_combout\ : std_logic;
SIGNAL \State_Machine~0_combout\ : std_logic;
SIGNAL \State_Machine~4_combout\ : std_logic;
SIGNAL \counter_min_0[3]~2_combout\ : std_logic;
SIGNAL \counter_min_0[0]~3_combout\ : std_logic;
SIGNAL \Add7~1_combout\ : std_logic;
SIGNAL \counter_min_0[3]~6_combout\ : std_logic;
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
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \set_LED~0_combout\ : std_logic;
SIGNAL \set_LED~reg0_q\ : std_logic;
SIGNAL \show_LED~reg0feeder_combout\ : std_logic;
SIGNAL \show_LED~reg0_q\ : std_logic;
SIGNAL \index_0_LED~reg0feeder_combout\ : std_logic;
SIGNAL \index_0_LED~reg0_q\ : std_logic;
SIGNAL \Equal15~2_combout\ : std_logic;
SIGNAL \index_1_LED~reg0_q\ : std_logic;
SIGNAL \index_2_LED~reg0feeder_combout\ : std_logic;
SIGNAL \index_2_LED~reg0_q\ : std_logic;
SIGNAL \index_3_LED~reg0_q\ : std_logic;
SIGNAL \blink~0_combout\ : std_logic;
SIGNAL \blink~q\ : std_logic;
SIGNAL \sec_0_LED~reg0feeder_combout\ : std_logic;
SIGNAL \sec_0_LED~reg0_q\ : std_logic;
SIGNAL \MyComponent_2|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \MyComponent_1|vpos[0]~11_combout\ : std_logic;
SIGNAL \MyComponent_1|vpos[2]~16\ : std_logic;
SIGNAL \MyComponent_1|vpos[3]~17_combout\ : std_logic;
SIGNAL \MyComponent_1|hpos[0]~11_combout\ : std_logic;
SIGNAL \MyComponent_1|hpos[0]~12\ : std_logic;
SIGNAL \MyComponent_1|hpos[1]~13_combout\ : std_logic;
SIGNAL \MyComponent_1|hpos[1]~14\ : std_logic;
SIGNAL \MyComponent_1|hpos[2]~15_combout\ : std_logic;
SIGNAL \MyComponent_1|hpos[2]~16\ : std_logic;
SIGNAL \MyComponent_1|hpos[3]~17_combout\ : std_logic;
SIGNAL \MyComponent_1|hpos[3]~18\ : std_logic;
SIGNAL \MyComponent_1|hpos[4]~19_combout\ : std_logic;
SIGNAL \MyComponent_1|hpos[4]~20\ : std_logic;
SIGNAL \MyComponent_1|hpos[5]~21_combout\ : std_logic;
SIGNAL \MyComponent_1|hpos[5]~22\ : std_logic;
SIGNAL \MyComponent_1|hpos[6]~23_combout\ : std_logic;
SIGNAL \MyComponent_1|hpos[6]~24\ : std_logic;
SIGNAL \MyComponent_1|hpos[7]~25_combout\ : std_logic;
SIGNAL \MyComponent_1|LessThan7~0_combout\ : std_logic;
SIGNAL \MyComponent_1|hpos[7]~26\ : std_logic;
SIGNAL \MyComponent_1|hpos[8]~27_combout\ : std_logic;
SIGNAL \MyComponent_1|hpos[8]~28\ : std_logic;
SIGNAL \MyComponent_1|hpos[9]~29_combout\ : std_logic;
SIGNAL \MyComponent_1|hpos[9]~30\ : std_logic;
SIGNAL \MyComponent_1|hpos[10]~31_combout\ : std_logic;
SIGNAL \MyComponent_1|LessThan0~0_combout\ : std_logic;
SIGNAL \MyComponent_1|LessThan0~1_combout\ : std_logic;
SIGNAL \MyComponent_1|vpos[3]~18\ : std_logic;
SIGNAL \MyComponent_1|vpos[4]~19_combout\ : std_logic;
SIGNAL \MyComponent_1|vpos[4]~20\ : std_logic;
SIGNAL \MyComponent_1|vpos[5]~21_combout\ : std_logic;
SIGNAL \MyComponent_1|vpos[5]~22\ : std_logic;
SIGNAL \MyComponent_1|vpos[6]~23_combout\ : std_logic;
SIGNAL \MyComponent_1|vpos[6]~24\ : std_logic;
SIGNAL \MyComponent_1|vpos[7]~25_combout\ : std_logic;
SIGNAL \MyComponent_1|vpos[7]~26\ : std_logic;
SIGNAL \MyComponent_1|vpos[8]~27_combout\ : std_logic;
SIGNAL \MyComponent_1|vpos[8]~28\ : std_logic;
SIGNAL \MyComponent_1|vpos[9]~29_combout\ : std_logic;
SIGNAL \MyComponent_1|LessThan8~0_combout\ : std_logic;
SIGNAL \MyComponent_1|LessThan8~1_combout\ : std_logic;
SIGNAL \MyComponent_1|vpos[9]~30\ : std_logic;
SIGNAL \MyComponent_1|vpos[10]~31_combout\ : std_logic;
SIGNAL \MyComponent_1|LessThan1~0_combout\ : std_logic;
SIGNAL \MyComponent_1|vpos[0]~12\ : std_logic;
SIGNAL \MyComponent_1|vpos[1]~13_combout\ : std_logic;
SIGNAL \MyComponent_1|vpos[1]~14\ : std_logic;
SIGNAL \MyComponent_1|vpos[2]~15_combout\ : std_logic;
SIGNAL \MyComponent_1|LessThan4~0_combout\ : std_logic;
SIGNAL \MyComponent_1|LessThan4~1_combout\ : std_logic;
SIGNAL \MyComponent_1|process_0~0_combout\ : std_logic;
SIGNAL \MyComponent_1|process_0~4_combout\ : std_logic;
SIGNAL \MyComponent_1|process_0~1_combout\ : std_logic;
SIGNAL \MyComponent_1|process_0~2_combout\ : std_logic;
SIGNAL \MyComponent_1|process_0~3_combout\ : std_logic;
SIGNAL \MyComponent_1|r~3_combout\ : std_logic;
SIGNAL \MyComponent_1|r~0_combout\ : std_logic;
SIGNAL \MyComponent_1|r~1_combout\ : std_logic;
SIGNAL \MyComponent_1|r~2_combout\ : std_logic;
SIGNAL \MyComponent_1|r~4_combout\ : std_logic;
SIGNAL \MyComponent_1|LessThan8~2_combout\ : std_logic;
SIGNAL \MyComponent_1|r~5_combout\ : std_logic;
SIGNAL \MyComponent_1|r[0]~feeder_combout\ : std_logic;
SIGNAL \MyComponent_1|r[1]~feeder_combout\ : std_logic;
SIGNAL \MyComponent_1|r[2]~feeder_combout\ : std_logic;
SIGNAL \MyComponent_1|r[3]~feeder_combout\ : std_logic;
SIGNAL \MyComponent_1|g[0]~feeder_combout\ : std_logic;
SIGNAL \MyComponent_1|g[1]~feeder_combout\ : std_logic;
SIGNAL \MyComponent_1|g[2]~feeder_combout\ : std_logic;
SIGNAL \MyComponent_1|g[3]~feeder_combout\ : std_logic;
SIGNAL \MyComponent_1|b[0]~feeder_combout\ : std_logic;
SIGNAL \MyComponent_1|b[1]~feeder_combout\ : std_logic;
SIGNAL \MyComponent_1|b[2]~feeder_combout\ : std_logic;
SIGNAL \MyComponent_1|b[3]~feeder_combout\ : std_logic;
SIGNAL counter_sec_1 : std_logic_vector(2 DOWNTO 0);
SIGNAL index : std_logic_vector(1 DOWNTO 0);
SIGNAL counter_hr_1 : std_logic_vector(1 DOWNTO 0);
SIGNAL counter_min_0 : std_logic_vector(3 DOWNTO 0);
SIGNAL counter_min_1 : std_logic_vector(2 DOWNTO 0);
SIGNAL counter_sec_0 : std_logic_vector(3 DOWNTO 0);
SIGNAL counter_hr_0 : std_logic_vector(3 DOWNTO 0);
SIGNAL clock_divider : std_logic_vector(25 DOWNTO 0);
SIGNAL \MyComponent_1|vpos\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \MyComponent_1|r\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MyComponent_1|hpos\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \MyComponent_1|g\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MyComponent_1|b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_counter_hr_1[1]~4_combout\ : std_logic;
SIGNAL \ALT_INV_state.show_clock~q\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
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
ww_confirm <= confirm;
set_LED <= ww_set_LED;
show_LED <= ww_show_LED;
reset_LED <= ww_reset_LED;
index_0_LED <= ww_index_0_LED;
index_1_LED <= ww_index_1_LED;
index_2_LED <= ww_index_2_LED;
index_3_LED <= ww_index_3_LED;
sec_0_LED <= ww_sec_0_LED;
red <= ww_red;
green <= ww_green;
blue <= ww_blue;
hsync_out <= ww_hsync_out;
vsync_out <= ww_vsync_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\MyComponent_2|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \g_clk~input_o\);

\MyComponent_2|altpll_component|auto_generated|wire_pll1_clk\(0) <= \MyComponent_2|altpll_component|auto_generated|pll1_CLK_bus\(0);
\MyComponent_2|altpll_component|auto_generated|wire_pll1_clk\(1) <= \MyComponent_2|altpll_component|auto_generated|pll1_CLK_bus\(1);
\MyComponent_2|altpll_component|auto_generated|wire_pll1_clk\(2) <= \MyComponent_2|altpll_component|auto_generated|pll1_CLK_bus\(2);
\MyComponent_2|altpll_component|auto_generated|wire_pll1_clk\(3) <= \MyComponent_2|altpll_component|auto_generated|pll1_CLK_bus\(3);
\MyComponent_2|altpll_component|auto_generated|wire_pll1_clk\(4) <= \MyComponent_2|altpll_component|auto_generated|pll1_CLK_bus\(4);

\MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk\(0));

\g_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \g_clk~input_o\);
\ALT_INV_counter_hr_1[1]~4_combout\ <= NOT \counter_hr_1[1]~4_combout\;
\ALT_INV_state.show_clock~q\ <= NOT \state.show_clock~q\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
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
	o => ww_segment0(0));

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
	o => ww_segment0(1));

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
	o => ww_segment0(2));

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
	o => ww_segment0(3));

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
	o => ww_segment0(4));

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
	o => ww_segment0(5));

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
	o => ww_segment0(6));

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
	o => ww_segment1(0));

-- Location: IOOBUF_X21_Y29_N9
\segment1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_segment1(1));

-- Location: IOOBUF_X23_Y29_N2
\segment1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_segment1(2));

-- Location: IOOBUF_X23_Y29_N23
\segment1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_segment1(3));

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
	o => ww_segment1(4));

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
	o => ww_segment1(5));

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
	o => ww_segment1(6));

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
	o => ww_segment2(0));

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
	o => ww_segment2(1));

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
	o => ww_segment2(2));

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
	o => ww_segment2(3));

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
	o => ww_segment2(4));

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
	o => ww_segment2(5));

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
	o => ww_segment2(6));

-- Location: IOOBUF_X32_Y29_N23
\segment3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter_hr_1(0),
	devoe => ww_devoe,
	o => ww_segment3(0));

-- Location: IOOBUF_X39_Y29_N16
\segment3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal6~0_combout\,
	devoe => ww_devoe,
	o => ww_segment3(1));

-- Location: IOOBUF_X32_Y29_N9
\segment3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter_hr_1(1),
	devoe => ww_devoe,
	o => ww_segment3(2));

-- Location: IOOBUF_X32_Y29_N2
\segment3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter_hr_1(0),
	devoe => ww_devoe,
	o => ww_segment3(3));

-- Location: IOOBUF_X37_Y29_N23
\segment3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter_hr_1(0),
	devoe => ww_devoe,
	o => ww_segment3(4));

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
	o => ww_segment3(5));

-- Location: IOOBUF_X39_Y29_N30
\segment3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~0_combout\,
	devoe => ww_devoe,
	o => ww_segment3(6));

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
	o => ww_dec_point);

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
	o => ww_set_LED);

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
	o => ww_show_LED);

-- Location: IOOBUF_X0_Y21_N23
\reset_LED~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_reset_LED);

-- Location: IOOBUF_X0_Y27_N16
\index_0_LED~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \index_0_LED~reg0_q\,
	devoe => ww_devoe,
	o => ww_index_0_LED);

-- Location: IOOBUF_X0_Y27_N9
\index_1_LED~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \index_1_LED~reg0_q\,
	devoe => ww_devoe,
	o => ww_index_1_LED);

-- Location: IOOBUF_X0_Y26_N16
\index_2_LED~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \index_2_LED~reg0_q\,
	devoe => ww_devoe,
	o => ww_index_2_LED);

-- Location: IOOBUF_X0_Y26_N23
\index_3_LED~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \index_3_LED~reg0_q\,
	devoe => ww_devoe,
	o => ww_index_3_LED);

-- Location: IOOBUF_X0_Y24_N23
\sec_0_LED~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sec_0_LED~reg0_q\,
	devoe => ww_devoe,
	o => ww_sec_0_LED);

-- Location: IOOBUF_X41_Y23_N23
\red[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MyComponent_1|r\(0),
	devoe => ww_devoe,
	o => ww_red(0));

-- Location: IOOBUF_X41_Y25_N2
\red[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MyComponent_1|r\(1),
	devoe => ww_devoe,
	o => ww_red(1));

-- Location: IOOBUF_X41_Y22_N2
\red[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MyComponent_1|r\(2),
	devoe => ww_devoe,
	o => ww_red(2));

-- Location: IOOBUF_X41_Y21_N23
\red[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MyComponent_1|r\(3),
	devoe => ww_devoe,
	o => ww_red(3));

-- Location: IOOBUF_X41_Y20_N2
\green[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MyComponent_1|g\(0),
	devoe => ww_devoe,
	o => ww_green(0));

-- Location: IOOBUF_X41_Y24_N23
\green[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MyComponent_1|g\(1),
	devoe => ww_devoe,
	o => ww_green(1));

-- Location: IOOBUF_X41_Y21_N16
\green[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MyComponent_1|g\(2),
	devoe => ww_devoe,
	o => ww_green(2));

-- Location: IOOBUF_X41_Y20_N23
\green[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MyComponent_1|g\(3),
	devoe => ww_devoe,
	o => ww_green(3));

-- Location: IOOBUF_X41_Y19_N16
\blue[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MyComponent_1|b\(0),
	devoe => ww_devoe,
	o => ww_blue(0));

-- Location: IOOBUF_X41_Y19_N9
\blue[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MyComponent_1|b\(1),
	devoe => ww_devoe,
	o => ww_blue(1));

-- Location: IOOBUF_X41_Y19_N2
\blue[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MyComponent_1|b\(2),
	devoe => ww_devoe,
	o => ww_blue(2));

-- Location: IOOBUF_X41_Y21_N9
\blue[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MyComponent_1|b\(3),
	devoe => ww_devoe,
	o => ww_blue(3));

-- Location: IOOBUF_X41_Y18_N16
\hsync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_hsync_out);

-- Location: IOOBUF_X41_Y18_N23
\vsync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_vsync_out);

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

-- Location: LCCOMB_X1_Y24_N16
\state.show_clock~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.show_clock~0_combout\ = !\set_switch~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_switch~input_o\,
	combout => \state.show_clock~0_combout\);

-- Location: LCCOMB_X1_Y23_N24
\state.show_clock~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.show_clock~feeder_combout\ = \state.show_clock~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.show_clock~0_combout\,
	combout => \state.show_clock~feeder_combout\);

-- Location: FF_X1_Y23_N25
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

-- Location: LCCOMB_X3_Y25_N16
\counter_hr_1[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1[1]~4_combout\ = (!\state.show_clock~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.show_clock~q\,
	datab => \reset~input_o\,
	combout => \counter_hr_1[1]~4_combout\);

-- Location: LCCOMB_X3_Y25_N2
\counter_hr_0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0~15_combout\ = (\counter_hr_0[3]~10_combout\ & (counter_hr_0(0) $ (counter_hr_0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_hr_0[3]~10_combout\,
	datac => counter_hr_0(0),
	datad => counter_hr_0(1),
	combout => \counter_hr_0~15_combout\);

-- Location: LCCOMB_X6_Y25_N6
\counter_hr_1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1~11_combout\ = (!counter_hr_1(0) & ((\counter_hr_1[1]~7_combout\) # ((!\state.show_clock~q\ & !\reset~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_hr_1[1]~7_combout\,
	datab => \state.show_clock~q\,
	datac => \reset~input_o\,
	datad => counter_hr_1(0),
	combout => \counter_hr_1~11_combout\);

-- Location: FF_X1_Y25_N25
hr_1_ena : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \counter_hr_0[3]~5_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hr_1_ena~q\);

-- Location: LCCOMB_X6_Y25_N8
\Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (counter_hr_1(1) & counter_hr_1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter_hr_1(1),
	datad => counter_hr_1(0),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X2_Y25_N16
\accept~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \accept~0_combout\ = (counter_hr_1(0) & (counter_hr_1(1) & (index(0) & !index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_1(0),
	datab => counter_hr_1(1),
	datac => index(0),
	datad => index(1),
	combout => \accept~0_combout\);

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

-- Location: LCCOMB_X2_Y25_N12
\accept_confirm~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \accept_confirm~0_combout\ = (!\confirm~input_o\ & ((\accept_confirm~q\) # (!\accept~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \accept~0_combout\,
	datac => \confirm~input_o\,
	datad => \accept_confirm~q\,
	combout => \accept_confirm~0_combout\);

-- Location: LCCOMB_X2_Y25_N24
\index[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \index[1]~0_combout\ = (\reset~input_o\) # (!\state.show_clock~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.show_clock~q\,
	datad => \reset~input_o\,
	combout => \index[1]~0_combout\);

-- Location: FF_X2_Y25_N23
accept_confirm : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \accept_confirm~0_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \index[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accept_confirm~q\);

-- Location: LCCOMB_X2_Y25_N22
\index~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \index~1_combout\ = (!\accept_confirm~q\ & !\confirm~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \accept_confirm~q\,
	datad => \confirm~input_o\,
	combout => \index~1_combout\);

-- Location: LCCOMB_X2_Y25_N4
\index~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \index~2_combout\ = (\index~1_combout\ & ((index(0) & (!\Equal6~0_combout\ & !index(1))) # (!index(0) & ((index(1)))))) # (!\index~1_combout\ & (((index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~1_combout\,
	datab => \Equal6~0_combout\,
	datac => index(0),
	datad => index(1),
	combout => \index~2_combout\);

-- Location: FF_X2_Y25_N19
\index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \index~2_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \index[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(1));

-- Location: LCCOMB_X2_Y25_N2
\index~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \index~3_combout\ = (index(0) & (((\Equal6~0_combout\ & !index(1))) # (!\index~1_combout\))) # (!index(0) & (((\index~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => index(1),
	datac => index(0),
	datad => \index~1_combout\,
	combout => \index~3_combout\);

-- Location: FF_X2_Y25_N5
\index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \index~3_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \index[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(0));

-- Location: LCCOMB_X2_Y25_N14
\Equal12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (!index(0) & !index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => index(0),
	datad => index(1),
	combout => \Equal12~0_combout\);

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

-- Location: LCCOMB_X2_Y25_N18
\accept~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \accept~1_combout\ = (!\counter_up~input_o\ & ((\accept~q\) # (!\accept~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accept~0_combout\,
	datab => \accept~q\,
	datad => \counter_up~input_o\,
	combout => \accept~1_combout\);

-- Location: FF_X2_Y25_N25
accept : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \accept~1_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \index[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accept~q\);

-- Location: LCCOMB_X4_Y25_N4
\counter_hr_1[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1[1]~5_combout\ = (!\accept~q\ & !\counter_up~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \accept~q\,
	datad => \counter_up~input_o\,
	combout => \counter_hr_1[1]~5_combout\);

-- Location: LCCOMB_X4_Y25_N6
\counter_hr_1[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1[1]~8_combout\ = (\counter_hr_1[1]~4_combout\ & (((!\Equal6~0_combout\ & !\counter_hr_1[1]~5_combout\)) # (!\Equal12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Equal12~0_combout\,
	datac => \counter_hr_1[1]~4_combout\,
	datad => \counter_hr_1[1]~5_combout\,
	combout => \counter_hr_1[1]~8_combout\);

-- Location: LCCOMB_X6_Y25_N24
\counter_hr_1[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1[1]~9_combout\ = (!\counter_hr_1[1]~8_combout\ & ((\hr_1_ena~q\) # (!\counter_hr_1[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hr_1_ena~q\,
	datab => \counter_hr_1[1]~8_combout\,
	datad => \counter_hr_1[1]~7_combout\,
	combout => \counter_hr_1[1]~9_combout\);

-- Location: FF_X6_Y25_N25
\counter_hr_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \counter_hr_1~11_combout\,
	sload => VCC,
	ena => \counter_hr_1[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr_1(0));

-- Location: LCCOMB_X6_Y25_N18
\counter_hr_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1~10_combout\ = (\counter_hr_1[1]~4_combout\ & (counter_hr_1(1) $ ((counter_hr_1(0))))) # (!\counter_hr_1[1]~4_combout\ & (\counter_hr_1[1]~7_combout\ & (counter_hr_1(1) $ (counter_hr_1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_1(1),
	datab => counter_hr_1(0),
	datac => \counter_hr_1[1]~4_combout\,
	datad => \counter_hr_1[1]~7_combout\,
	combout => \counter_hr_1~10_combout\);

-- Location: LCCOMB_X6_Y25_N30
\counter_hr_1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1[1]~feeder_combout\ = \counter_hr_1~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_hr_1~10_combout\,
	combout => \counter_hr_1[1]~feeder_combout\);

-- Location: FF_X6_Y25_N31
\counter_hr_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_hr_1[1]~feeder_combout\,
	ena => \counter_hr_1[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr_1(1));

-- Location: LCCOMB_X6_Y25_N0
\evening_ena~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \evening_ena~1_combout\ = (counter_hr_1(1) & (!counter_hr_1(0) & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_1(1),
	datab => counter_hr_1(0),
	datac => \reset~input_o\,
	combout => \evening_ena~1_combout\);

-- Location: FF_X6_Y25_N21
evening_ena : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \evening_ena~1_combout\,
	sload => VCC,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \evening_ena~q\);

-- Location: LCCOMB_X3_Y25_N8
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (counter_hr_0(0) & counter_hr_0(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter_hr_0(0),
	datad => counter_hr_0(1),
	combout => \Add5~0_combout\);

-- Location: LCCOMB_X3_Y25_N18
\counter_hr_0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0~16_combout\ = (\counter_hr_0[3]~10_combout\ & (counter_hr_0(3) $ (((counter_hr_0(2) & \Add5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_hr_0[3]~10_combout\,
	datab => counter_hr_0(3),
	datac => counter_hr_0(2),
	datad => \Add5~0_combout\,
	combout => \counter_hr_0~16_combout\);

-- Location: FF_X3_Y25_N17
\counter_hr_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \counter_hr_0~16_combout\,
	sload => VCC,
	ena => \counter_hr_0[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr_0(3));

-- Location: LCCOMB_X6_Y25_N20
\counter_hr_0[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0[3]~4_combout\ = (counter_hr_0(1) & (!counter_hr_0(2) & (!\evening_ena~q\ & counter_hr_0(3)))) # (!counter_hr_0(1) & (counter_hr_0(2) & (\evening_ena~q\ & !counter_hr_0(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_0(1),
	datab => counter_hr_0(2),
	datac => \evening_ena~q\,
	datad => counter_hr_0(3),
	combout => \counter_hr_0[3]~4_combout\);

-- Location: LCCOMB_X3_Y25_N10
\counter_hr_0[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0[3]~5_combout\ = (!counter_hr_0(0) & \counter_hr_0[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter_hr_0(0),
	datad => \counter_hr_0[3]~4_combout\,
	combout => \counter_hr_0[3]~5_combout\);

-- Location: LCCOMB_X4_Y25_N16
\hr_0_ena~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hr_0_ena~0_combout\ = (!\reset~input_o\ & (!counter_min_1(0) & (counter_min_1(2) & counter_min_1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => counter_min_1(0),
	datac => counter_min_1(2),
	datad => counter_min_1(1),
	combout => \hr_0_ena~0_combout\);

-- Location: FF_X4_Y25_N25
hr_0_ena : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \hr_0_ena~0_combout\,
	sload => VCC,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hr_0_ena~q\);

-- Location: LCCOMB_X2_Y25_N26
\counter_hr_0[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0[3]~17_combout\ = ((index(1)) # ((counter_hr_1(0) & counter_hr_1(1)))) # (!index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_1(0),
	datab => counter_hr_1(1),
	datac => index(0),
	datad => index(1),
	combout => \counter_hr_0[3]~17_combout\);

-- Location: LCCOMB_X6_Y25_N14
\Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (counter_hr_1(0)) # (!counter_hr_1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter_hr_1(1),
	datad => counter_hr_1(0),
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X6_Y25_N12
\counter_hr_0[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0[3]~12_combout\ = ((\Mux21~0_combout\) # ((!counter_hr_0(2) & !counter_hr_0(3)))) # (!\Equal12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~0_combout\,
	datab => counter_hr_0(2),
	datac => \Mux21~0_combout\,
	datad => counter_hr_0(3),
	combout => \counter_hr_0[3]~12_combout\);

-- Location: LCCOMB_X4_Y25_N14
\counter_hr_0[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0[3]~13_combout\ = (\counter_hr_1[1]~4_combout\ & (\counter_hr_0[3]~12_combout\ & ((\counter_hr_0[3]~17_combout\) # (!\counter_hr_1[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_hr_1[1]~4_combout\,
	datab => \counter_hr_0[3]~17_combout\,
	datac => \counter_hr_0[3]~12_combout\,
	datad => \counter_hr_1[1]~5_combout\,
	combout => \counter_hr_0[3]~13_combout\);

-- Location: LCCOMB_X4_Y25_N24
\counter_hr_0[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0[3]~14_combout\ = (!\counter_hr_0[3]~13_combout\ & ((\counter_hr_0[3]~5_combout\) # ((\hr_0_ena~q\) # (!\counter_hr_1[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_hr_0[3]~5_combout\,
	datab => \counter_hr_1[1]~7_combout\,
	datac => \hr_0_ena~q\,
	datad => \counter_hr_0[3]~13_combout\,
	combout => \counter_hr_0[3]~14_combout\);

-- Location: FF_X3_Y25_N5
\counter_hr_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \counter_hr_0~15_combout\,
	sload => VCC,
	ena => \counter_hr_0[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr_0(1));

-- Location: LCCOMB_X6_Y25_N10
\counter_hr_0[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0[3]~8_combout\ = (counter_hr_0(1) & ((counter_hr_1(0)) # ((counter_hr_0(3)) # (!counter_hr_1(1))))) # (!counter_hr_0(1) & (((!counter_hr_1(0) & counter_hr_1(1))) # (!counter_hr_0(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_0(1),
	datab => counter_hr_1(0),
	datac => counter_hr_0(3),
	datad => counter_hr_1(1),
	combout => \counter_hr_0[3]~8_combout\);

-- Location: LCCOMB_X3_Y25_N0
\counter_hr_0[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0[3]~9_combout\ = (\counter_hr_1[1]~4_combout\ & ((counter_hr_0(2)) # ((\counter_hr_0[3]~8_combout\) # (!counter_hr_0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_0(2),
	datab => \counter_hr_1[1]~4_combout\,
	datac => counter_hr_0(0),
	datad => \counter_hr_0[3]~8_combout\,
	combout => \counter_hr_0[3]~9_combout\);

-- Location: LCCOMB_X2_Y25_N30
\counter_hr_0[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0[3]~6_combout\ = (index(0) & !\accept~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => index(0),
	datad => \accept~q\,
	combout => \counter_hr_0[3]~6_combout\);

-- Location: LCCOMB_X2_Y25_N8
\counter_hr_0[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0[3]~7_combout\ = (\counter_hr_0[3]~6_combout\ & (!index(1) & (!\Equal6~0_combout\ & !\counter_up~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_hr_0[3]~6_combout\,
	datab => index(1),
	datac => \Equal6~0_combout\,
	datad => \counter_up~input_o\,
	combout => \counter_hr_0[3]~7_combout\);

-- Location: LCCOMB_X3_Y25_N30
\counter_hr_0[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0[3]~10_combout\ = (\counter_hr_1[1]~7_combout\ & (((\counter_hr_0[3]~9_combout\ & \counter_hr_0[3]~7_combout\)) # (!\counter_hr_0[3]~5_combout\))) # (!\counter_hr_1[1]~7_combout\ & (\counter_hr_0[3]~9_combout\ & 
-- ((\counter_hr_0[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_hr_1[1]~7_combout\,
	datab => \counter_hr_0[3]~9_combout\,
	datac => \counter_hr_0[3]~5_combout\,
	datad => \counter_hr_0[3]~7_combout\,
	combout => \counter_hr_0[3]~10_combout\);

-- Location: LCCOMB_X3_Y25_N4
\counter_hr_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0~11_combout\ = (\counter_hr_0[3]~10_combout\ & !counter_hr_0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_hr_0[3]~10_combout\,
	datad => counter_hr_0(0),
	combout => \counter_hr_0~11_combout\);

-- Location: FF_X3_Y25_N3
\counter_hr_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \counter_hr_0~11_combout\,
	sload => VCC,
	ena => \counter_hr_0[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr_0(0));

-- Location: LCCOMB_X3_Y25_N12
\counter_hr_0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_0~18_combout\ = (\counter_hr_0[3]~10_combout\ & (counter_hr_0(2) $ (((counter_hr_0(0) & counter_hr_0(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_0(2),
	datab => counter_hr_0(0),
	datac => counter_hr_0(1),
	datad => \counter_hr_0[3]~10_combout\,
	combout => \counter_hr_0~18_combout\);

-- Location: FF_X3_Y25_N19
\counter_hr_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \counter_hr_0~18_combout\,
	sload => VCC,
	ena => \counter_hr_0[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_hr_0(2));

-- Location: LCCOMB_X4_Y25_N22
\State_Machine~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \State_Machine~2_combout\ = ((counter_hr_0(2)) # ((counter_hr_0(3)) # (!counter_min_1(2)))) # (!counter_min_0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(0),
	datab => counter_hr_0(2),
	datac => counter_hr_0(3),
	datad => counter_min_1(2),
	combout => \State_Machine~2_combout\);

-- Location: LCCOMB_X5_Y25_N18
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (counter_min_0(3) & (!counter_min_0(0) & (!counter_min_0(2) & counter_min_0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(3),
	datab => counter_min_0(0),
	datac => counter_min_0(2),
	datad => counter_min_0(1),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X2_Y24_N6
\clock_divider[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[0]~26_combout\ = clock_divider(0) $ (VCC)
-- \clock_divider[0]~27\ = CARRY(clock_divider(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(0),
	datad => VCC,
	combout => \clock_divider[0]~26_combout\,
	cout => \clock_divider[0]~27\);

-- Location: LCCOMB_X1_Y24_N10
\clock_divider[11]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[11]~30_combout\ = (\reset~input_o\) # (!\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datac => \reset~input_o\,
	combout => \clock_divider[11]~30_combout\);

-- Location: FF_X2_Y24_N7
\clock_divider[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[0]~26_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(0));

-- Location: LCCOMB_X2_Y24_N8
\clock_divider[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[1]~28_combout\ = (clock_divider(1) & (!\clock_divider[0]~27\)) # (!clock_divider(1) & ((\clock_divider[0]~27\) # (GND)))
-- \clock_divider[1]~29\ = CARRY((!\clock_divider[0]~27\) # (!clock_divider(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(1),
	datad => VCC,
	cin => \clock_divider[0]~27\,
	combout => \clock_divider[1]~28_combout\,
	cout => \clock_divider[1]~29\);

-- Location: FF_X2_Y24_N9
\clock_divider[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[1]~28_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(1));

-- Location: LCCOMB_X2_Y24_N10
\clock_divider[2]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[2]~31_combout\ = (clock_divider(2) & (\clock_divider[1]~29\ $ (GND))) # (!clock_divider(2) & (!\clock_divider[1]~29\ & VCC))
-- \clock_divider[2]~32\ = CARRY((clock_divider(2) & !\clock_divider[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(2),
	datad => VCC,
	cin => \clock_divider[1]~29\,
	combout => \clock_divider[2]~31_combout\,
	cout => \clock_divider[2]~32\);

-- Location: FF_X2_Y24_N11
\clock_divider[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[2]~31_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(2));

-- Location: LCCOMB_X2_Y24_N12
\clock_divider[3]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[3]~33_combout\ = (clock_divider(3) & (!\clock_divider[2]~32\)) # (!clock_divider(3) & ((\clock_divider[2]~32\) # (GND)))
-- \clock_divider[3]~34\ = CARRY((!\clock_divider[2]~32\) # (!clock_divider(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(3),
	datad => VCC,
	cin => \clock_divider[2]~32\,
	combout => \clock_divider[3]~33_combout\,
	cout => \clock_divider[3]~34\);

-- Location: FF_X2_Y24_N13
\clock_divider[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[3]~33_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(3));

-- Location: LCCOMB_X2_Y24_N14
\clock_divider[4]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[4]~35_combout\ = (clock_divider(4) & (\clock_divider[3]~34\ $ (GND))) # (!clock_divider(4) & (!\clock_divider[3]~34\ & VCC))
-- \clock_divider[4]~36\ = CARRY((clock_divider(4) & !\clock_divider[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(4),
	datad => VCC,
	cin => \clock_divider[3]~34\,
	combout => \clock_divider[4]~35_combout\,
	cout => \clock_divider[4]~36\);

-- Location: FF_X2_Y24_N15
\clock_divider[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[4]~35_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(4));

-- Location: LCCOMB_X2_Y24_N16
\clock_divider[5]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[5]~37_combout\ = (clock_divider(5) & (!\clock_divider[4]~36\)) # (!clock_divider(5) & ((\clock_divider[4]~36\) # (GND)))
-- \clock_divider[5]~38\ = CARRY((!\clock_divider[4]~36\) # (!clock_divider(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(5),
	datad => VCC,
	cin => \clock_divider[4]~36\,
	combout => \clock_divider[5]~37_combout\,
	cout => \clock_divider[5]~38\);

-- Location: FF_X2_Y24_N17
\clock_divider[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[5]~37_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(5));

-- Location: LCCOMB_X2_Y24_N18
\clock_divider[6]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[6]~39_combout\ = (clock_divider(6) & (\clock_divider[5]~38\ $ (GND))) # (!clock_divider(6) & (!\clock_divider[5]~38\ & VCC))
-- \clock_divider[6]~40\ = CARRY((clock_divider(6) & !\clock_divider[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(6),
	datad => VCC,
	cin => \clock_divider[5]~38\,
	combout => \clock_divider[6]~39_combout\,
	cout => \clock_divider[6]~40\);

-- Location: FF_X2_Y24_N19
\clock_divider[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[6]~39_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(6));

-- Location: LCCOMB_X2_Y24_N20
\clock_divider[7]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[7]~41_combout\ = (clock_divider(7) & (!\clock_divider[6]~40\)) # (!clock_divider(7) & ((\clock_divider[6]~40\) # (GND)))
-- \clock_divider[7]~42\ = CARRY((!\clock_divider[6]~40\) # (!clock_divider(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(7),
	datad => VCC,
	cin => \clock_divider[6]~40\,
	combout => \clock_divider[7]~41_combout\,
	cout => \clock_divider[7]~42\);

-- Location: FF_X2_Y24_N21
\clock_divider[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[7]~41_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(7));

-- Location: LCCOMB_X2_Y24_N22
\clock_divider[8]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[8]~43_combout\ = (clock_divider(8) & (\clock_divider[7]~42\ $ (GND))) # (!clock_divider(8) & (!\clock_divider[7]~42\ & VCC))
-- \clock_divider[8]~44\ = CARRY((clock_divider(8) & !\clock_divider[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(8),
	datad => VCC,
	cin => \clock_divider[7]~42\,
	combout => \clock_divider[8]~43_combout\,
	cout => \clock_divider[8]~44\);

-- Location: FF_X2_Y24_N23
\clock_divider[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[8]~43_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(8));

-- Location: LCCOMB_X2_Y24_N24
\clock_divider[9]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[9]~45_combout\ = (clock_divider(9) & (!\clock_divider[8]~44\)) # (!clock_divider(9) & ((\clock_divider[8]~44\) # (GND)))
-- \clock_divider[9]~46\ = CARRY((!\clock_divider[8]~44\) # (!clock_divider(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(9),
	datad => VCC,
	cin => \clock_divider[8]~44\,
	combout => \clock_divider[9]~45_combout\,
	cout => \clock_divider[9]~46\);

-- Location: FF_X2_Y24_N25
\clock_divider[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[9]~45_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(9));

-- Location: LCCOMB_X2_Y24_N26
\clock_divider[10]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[10]~47_combout\ = (clock_divider(10) & (\clock_divider[9]~46\ $ (GND))) # (!clock_divider(10) & (!\clock_divider[9]~46\ & VCC))
-- \clock_divider[10]~48\ = CARRY((clock_divider(10) & !\clock_divider[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(10),
	datad => VCC,
	cin => \clock_divider[9]~46\,
	combout => \clock_divider[10]~47_combout\,
	cout => \clock_divider[10]~48\);

-- Location: FF_X2_Y24_N27
\clock_divider[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[10]~47_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(10));

-- Location: LCCOMB_X2_Y24_N28
\clock_divider[11]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[11]~49_combout\ = (clock_divider(11) & (!\clock_divider[10]~48\)) # (!clock_divider(11) & ((\clock_divider[10]~48\) # (GND)))
-- \clock_divider[11]~50\ = CARRY((!\clock_divider[10]~48\) # (!clock_divider(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(11),
	datad => VCC,
	cin => \clock_divider[10]~48\,
	combout => \clock_divider[11]~49_combout\,
	cout => \clock_divider[11]~50\);

-- Location: FF_X2_Y24_N29
\clock_divider[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[11]~49_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(11));

-- Location: LCCOMB_X2_Y24_N30
\clock_divider[12]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[12]~51_combout\ = (clock_divider(12) & (\clock_divider[11]~50\ $ (GND))) # (!clock_divider(12) & (!\clock_divider[11]~50\ & VCC))
-- \clock_divider[12]~52\ = CARRY((clock_divider(12) & !\clock_divider[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(12),
	datad => VCC,
	cin => \clock_divider[11]~50\,
	combout => \clock_divider[12]~51_combout\,
	cout => \clock_divider[12]~52\);

-- Location: FF_X2_Y24_N31
\clock_divider[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[12]~51_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(12));

-- Location: LCCOMB_X2_Y23_N0
\clock_divider[13]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[13]~53_combout\ = (clock_divider(13) & (!\clock_divider[12]~52\)) # (!clock_divider(13) & ((\clock_divider[12]~52\) # (GND)))
-- \clock_divider[13]~54\ = CARRY((!\clock_divider[12]~52\) # (!clock_divider(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(13),
	datad => VCC,
	cin => \clock_divider[12]~52\,
	combout => \clock_divider[13]~53_combout\,
	cout => \clock_divider[13]~54\);

-- Location: FF_X2_Y23_N1
\clock_divider[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[13]~53_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(13));

-- Location: LCCOMB_X2_Y23_N2
\clock_divider[14]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[14]~55_combout\ = (clock_divider(14) & (\clock_divider[13]~54\ $ (GND))) # (!clock_divider(14) & (!\clock_divider[13]~54\ & VCC))
-- \clock_divider[14]~56\ = CARRY((clock_divider(14) & !\clock_divider[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(14),
	datad => VCC,
	cin => \clock_divider[13]~54\,
	combout => \clock_divider[14]~55_combout\,
	cout => \clock_divider[14]~56\);

-- Location: FF_X2_Y23_N3
\clock_divider[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[14]~55_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(14));

-- Location: LCCOMB_X2_Y23_N4
\clock_divider[15]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[15]~57_combout\ = (clock_divider(15) & (!\clock_divider[14]~56\)) # (!clock_divider(15) & ((\clock_divider[14]~56\) # (GND)))
-- \clock_divider[15]~58\ = CARRY((!\clock_divider[14]~56\) # (!clock_divider(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(15),
	datad => VCC,
	cin => \clock_divider[14]~56\,
	combout => \clock_divider[15]~57_combout\,
	cout => \clock_divider[15]~58\);

-- Location: FF_X2_Y23_N5
\clock_divider[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[15]~57_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(15));

-- Location: LCCOMB_X2_Y23_N6
\clock_divider[16]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[16]~59_combout\ = (clock_divider(16) & (\clock_divider[15]~58\ $ (GND))) # (!clock_divider(16) & (!\clock_divider[15]~58\ & VCC))
-- \clock_divider[16]~60\ = CARRY((clock_divider(16) & !\clock_divider[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(16),
	datad => VCC,
	cin => \clock_divider[15]~58\,
	combout => \clock_divider[16]~59_combout\,
	cout => \clock_divider[16]~60\);

-- Location: FF_X2_Y23_N7
\clock_divider[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[16]~59_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(16));

-- Location: LCCOMB_X2_Y23_N8
\clock_divider[17]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[17]~61_combout\ = (clock_divider(17) & (!\clock_divider[16]~60\)) # (!clock_divider(17) & ((\clock_divider[16]~60\) # (GND)))
-- \clock_divider[17]~62\ = CARRY((!\clock_divider[16]~60\) # (!clock_divider(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(17),
	datad => VCC,
	cin => \clock_divider[16]~60\,
	combout => \clock_divider[17]~61_combout\,
	cout => \clock_divider[17]~62\);

-- Location: FF_X2_Y23_N9
\clock_divider[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[17]~61_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(17));

-- Location: LCCOMB_X2_Y23_N10
\clock_divider[18]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[18]~63_combout\ = (clock_divider(18) & (\clock_divider[17]~62\ $ (GND))) # (!clock_divider(18) & (!\clock_divider[17]~62\ & VCC))
-- \clock_divider[18]~64\ = CARRY((clock_divider(18) & !\clock_divider[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(18),
	datad => VCC,
	cin => \clock_divider[17]~62\,
	combout => \clock_divider[18]~63_combout\,
	cout => \clock_divider[18]~64\);

-- Location: FF_X2_Y23_N11
\clock_divider[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[18]~63_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(18));

-- Location: LCCOMB_X2_Y23_N12
\clock_divider[19]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[19]~65_combout\ = (clock_divider(19) & (!\clock_divider[18]~64\)) # (!clock_divider(19) & ((\clock_divider[18]~64\) # (GND)))
-- \clock_divider[19]~66\ = CARRY((!\clock_divider[18]~64\) # (!clock_divider(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(19),
	datad => VCC,
	cin => \clock_divider[18]~64\,
	combout => \clock_divider[19]~65_combout\,
	cout => \clock_divider[19]~66\);

-- Location: FF_X2_Y23_N13
\clock_divider[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[19]~65_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(19));

-- Location: LCCOMB_X2_Y23_N14
\clock_divider[20]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[20]~67_combout\ = (clock_divider(20) & (\clock_divider[19]~66\ $ (GND))) # (!clock_divider(20) & (!\clock_divider[19]~66\ & VCC))
-- \clock_divider[20]~68\ = CARRY((clock_divider(20) & !\clock_divider[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(20),
	datad => VCC,
	cin => \clock_divider[19]~66\,
	combout => \clock_divider[20]~67_combout\,
	cout => \clock_divider[20]~68\);

-- Location: FF_X2_Y23_N15
\clock_divider[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[20]~67_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(20));

-- Location: LCCOMB_X2_Y23_N16
\clock_divider[21]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[21]~69_combout\ = (clock_divider(21) & (!\clock_divider[20]~68\)) # (!clock_divider(21) & ((\clock_divider[20]~68\) # (GND)))
-- \clock_divider[21]~70\ = CARRY((!\clock_divider[20]~68\) # (!clock_divider(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(21),
	datad => VCC,
	cin => \clock_divider[20]~68\,
	combout => \clock_divider[21]~69_combout\,
	cout => \clock_divider[21]~70\);

-- Location: FF_X2_Y23_N17
\clock_divider[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[21]~69_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(21));

-- Location: LCCOMB_X2_Y23_N18
\clock_divider[22]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[22]~71_combout\ = (clock_divider(22) & (\clock_divider[21]~70\ $ (GND))) # (!clock_divider(22) & (!\clock_divider[21]~70\ & VCC))
-- \clock_divider[22]~72\ = CARRY((clock_divider(22) & !\clock_divider[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(22),
	datad => VCC,
	cin => \clock_divider[21]~70\,
	combout => \clock_divider[22]~71_combout\,
	cout => \clock_divider[22]~72\);

-- Location: FF_X2_Y23_N19
\clock_divider[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[22]~71_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(22));

-- Location: LCCOMB_X2_Y23_N20
\clock_divider[23]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[23]~73_combout\ = (clock_divider(23) & (!\clock_divider[22]~72\)) # (!clock_divider(23) & ((\clock_divider[22]~72\) # (GND)))
-- \clock_divider[23]~74\ = CARRY((!\clock_divider[22]~72\) # (!clock_divider(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(23),
	datad => VCC,
	cin => \clock_divider[22]~72\,
	combout => \clock_divider[23]~73_combout\,
	cout => \clock_divider[23]~74\);

-- Location: FF_X2_Y23_N21
\clock_divider[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[23]~73_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(23));

-- Location: LCCOMB_X2_Y23_N30
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (clock_divider(23)) # ((clock_divider(22)) # ((clock_divider(20)) # (clock_divider(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(23),
	datab => clock_divider(22),
	datac => clock_divider(20),
	datad => clock_divider(21),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X2_Y23_N22
\clock_divider[24]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[24]~75_combout\ = (clock_divider(24) & (\clock_divider[23]~74\ $ (GND))) # (!clock_divider(24) & (!\clock_divider[23]~74\ & VCC))
-- \clock_divider[24]~76\ = CARRY((clock_divider(24) & !\clock_divider[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(24),
	datad => VCC,
	cin => \clock_divider[23]~74\,
	combout => \clock_divider[24]~75_combout\,
	cout => \clock_divider[24]~76\);

-- Location: FF_X2_Y23_N23
\clock_divider[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[24]~75_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(24));

-- Location: LCCOMB_X2_Y23_N24
\clock_divider[25]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_divider[25]~77_combout\ = \clock_divider[24]~76\ $ (clock_divider(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clock_divider(25),
	cin => \clock_divider[24]~76\,
	combout => \clock_divider[25]~77_combout\);

-- Location: FF_X2_Y23_N25
\clock_divider[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \clock_divider[25]~77_combout\,
	sclr => \clock_divider[11]~30_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_divider(25));

-- Location: LCCOMB_X1_Y23_N2
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (clock_divider(25)) # (clock_divider(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clock_divider(25),
	datad => clock_divider(24),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X2_Y23_N26
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (clock_divider(12)) # ((clock_divider(13)) # ((clock_divider(15)) # (clock_divider(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(12),
	datab => clock_divider(13),
	datac => clock_divider(15),
	datad => clock_divider(14),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X2_Y24_N0
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (clock_divider(10)) # ((clock_divider(11)) # ((clock_divider(8)) # (clock_divider(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(10),
	datab => clock_divider(11),
	datac => clock_divider(8),
	datad => clock_divider(9),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X2_Y24_N2
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ((clock_divider(6)) # ((clock_divider(7)) # (!clock_divider(4)))) # (!clock_divider(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(5),
	datab => clock_divider(6),
	datac => clock_divider(4),
	datad => clock_divider(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X2_Y24_N4
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (clock_divider(3)) # (((clock_divider(1)) # (clock_divider(2))) # (!clock_divider(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(3),
	datab => clock_divider(0),
	datac => clock_divider(1),
	datad => clock_divider(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y24_N30
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\) # ((\Equal0~2_combout\) # ((\Equal0~1_combout\) # (\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X2_Y23_N28
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (clock_divider(18)) # ((clock_divider(16)) # ((clock_divider(17)) # (clock_divider(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_divider(18),
	datab => clock_divider(16),
	datac => clock_divider(17),
	datad => clock_divider(19),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X1_Y23_N0
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~6_combout\) # ((\Equal0~7_combout\) # ((\Equal0~4_combout\) # (\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X1_Y24_N12
\sec_0_ena~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_0_ena~0_combout\ = (!\reset~input_o\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Equal0~8_combout\,
	combout => \sec_0_ena~0_combout\);

-- Location: LCCOMB_X1_Y24_N14
\sec_0_ena~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_0_ena~feeder_combout\ = \sec_0_ena~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sec_0_ena~0_combout\,
	combout => \sec_0_ena~feeder_combout\);

-- Location: FF_X1_Y24_N15
sec_0_ena : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \sec_0_ena~feeder_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_0_ena~q\);

-- Location: LCCOMB_X1_Y24_N20
\counter_sec_0[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_sec_0[0]~4_combout\ = (\sec_0_ena~q\ & (counter_sec_0(0) $ (VCC))) # (!\sec_0_ena~q\ & (counter_sec_0(0) & VCC))
-- \counter_sec_0[0]~5\ = CARRY((\sec_0_ena~q\ & counter_sec_0(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec_0_ena~q\,
	datab => counter_sec_0(0),
	datad => VCC,
	combout => \counter_sec_0[0]~4_combout\,
	cout => \counter_sec_0[0]~5\);

-- Location: LCCOMB_X1_Y24_N0
\counter_sec_0[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_sec_0[3]~8_combout\ = (\sec_1_ena~0_combout\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sec_1_ena~0_combout\,
	datad => \reset~input_o\,
	combout => \counter_sec_0[3]~8_combout\);

-- Location: FF_X1_Y24_N21
\counter_sec_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_sec_0[0]~4_combout\,
	sclr => \counter_sec_0[3]~8_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec_0(0));

-- Location: LCCOMB_X1_Y24_N22
\counter_sec_0[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_sec_0[1]~6_combout\ = (counter_sec_0(1) & (!\counter_sec_0[0]~5\)) # (!counter_sec_0(1) & ((\counter_sec_0[0]~5\) # (GND)))
-- \counter_sec_0[1]~7\ = CARRY((!\counter_sec_0[0]~5\) # (!counter_sec_0(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_0(1),
	datad => VCC,
	cin => \counter_sec_0[0]~5\,
	combout => \counter_sec_0[1]~6_combout\,
	cout => \counter_sec_0[1]~7\);

-- Location: FF_X1_Y24_N23
\counter_sec_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_sec_0[1]~6_combout\,
	sclr => \counter_sec_0[3]~8_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec_0(1));

-- Location: LCCOMB_X1_Y24_N24
\counter_sec_0[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_sec_0[2]~9_combout\ = (counter_sec_0(2) & (\counter_sec_0[1]~7\ $ (GND))) # (!counter_sec_0(2) & (!\counter_sec_0[1]~7\ & VCC))
-- \counter_sec_0[2]~10\ = CARRY((counter_sec_0(2) & !\counter_sec_0[1]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec_0(2),
	datad => VCC,
	cin => \counter_sec_0[1]~7\,
	combout => \counter_sec_0[2]~9_combout\,
	cout => \counter_sec_0[2]~10\);

-- Location: FF_X1_Y24_N25
\counter_sec_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_sec_0[2]~9_combout\,
	sclr => \counter_sec_0[3]~8_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec_0(2));

-- Location: LCCOMB_X1_Y24_N26
\counter_sec_0[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_sec_0[3]~11_combout\ = counter_sec_0(3) $ (\counter_sec_0[2]~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_0(3),
	cin => \counter_sec_0[2]~10\,
	combout => \counter_sec_0[3]~11_combout\);

-- Location: FF_X1_Y24_N27
\counter_sec_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_sec_0[3]~11_combout\,
	sclr => \counter_sec_0[3]~8_combout\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec_0(3));

-- Location: LCCOMB_X1_Y24_N8
\sec_1_ena~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_1_ena~0_combout\ = (counter_sec_0(1) & (!counter_sec_0(0) & (counter_sec_0(3) & !counter_sec_0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_0(1),
	datab => counter_sec_0(0),
	datac => counter_sec_0(3),
	datad => counter_sec_0(2),
	combout => \sec_1_ena~0_combout\);

-- Location: LCCOMB_X7_Y25_N0
\sec_1_ena~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_1_ena~1_combout\ = (\sec_1_ena~0_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec_1_ena~0_combout\,
	datac => \reset~input_o\,
	combout => \sec_1_ena~1_combout\);

-- Location: FF_X7_Y25_N17
sec_1_ena : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \sec_1_ena~1_combout\,
	sload => VCC,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_1_ena~q\);

-- Location: LCCOMB_X7_Y25_N22
\counter_sec_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_sec_1~6_combout\ = (\counter_sec_1[2]~3_combout\ & (counter_sec_1(1) $ (((counter_sec_1(0) & \sec_1_ena~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_1(0),
	datab => \sec_1_ena~q\,
	datac => \counter_sec_1[2]~3_combout\,
	datad => counter_sec_1(1),
	combout => \counter_sec_1~6_combout\);

-- Location: FF_X7_Y25_N21
\counter_sec_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \counter_sec_1~6_combout\,
	sload => VCC,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec_1(1));

-- Location: LCCOMB_X7_Y25_N12
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (counter_sec_1(0) & \sec_1_ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_1(0),
	datad => \sec_1_ena~q\,
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X7_Y25_N20
\counter_sec_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_sec_1~5_combout\ = (\counter_sec_1[2]~3_combout\ & (counter_sec_1(2) $ (((\Add2~0_combout\ & counter_sec_1(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \counter_sec_1[2]~3_combout\,
	datac => counter_sec_1(1),
	datad => counter_sec_1(2),
	combout => \counter_sec_1~5_combout\);

-- Location: FF_X7_Y25_N29
\counter_sec_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \counter_sec_1~5_combout\,
	sload => VCC,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec_1(2));

-- Location: LCCOMB_X7_Y25_N10
\counter_sec_1[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_sec_1[2]~2_combout\ = (!\reset~input_o\ & (((counter_sec_1(0)) # (!counter_sec_1(2))) # (!counter_sec_1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_1(1),
	datab => counter_sec_1(2),
	datac => counter_sec_1(0),
	datad => \reset~input_o\,
	combout => \counter_sec_1[2]~2_combout\);

-- Location: LCCOMB_X7_Y25_N2
\State_Machine~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \State_Machine~1_combout\ = ((counter_sec_1(1)) # ((counter_min_0(1)) # (!counter_sec_1(2)))) # (!counter_sec_1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_1(0),
	datab => counter_sec_1(1),
	datac => counter_min_0(1),
	datad => counter_sec_1(2),
	combout => \State_Machine~1_combout\);

-- Location: LCCOMB_X7_Y25_N18
\counter_sec_1[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_sec_1[2]~3_combout\ = (\counter_sec_1[2]~2_combout\ & ((\State_Machine~3_combout\) # ((\State_Machine~0_combout\) # (\State_Machine~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Machine~3_combout\,
	datab => \State_Machine~0_combout\,
	datac => \counter_sec_1[2]~2_combout\,
	datad => \State_Machine~1_combout\,
	combout => \counter_sec_1[2]~3_combout\);

-- Location: LCCOMB_X7_Y25_N28
\counter_sec_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_sec_1~4_combout\ = (\counter_sec_1[2]~3_combout\ & (counter_sec_1(0) $ (\sec_1_ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_1(0),
	datab => \counter_sec_1[2]~3_combout\,
	datad => \sec_1_ena~q\,
	combout => \counter_sec_1~4_combout\);

-- Location: FF_X7_Y25_N11
\counter_sec_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \counter_sec_1~4_combout\,
	sload => VCC,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec_1(0));

-- Location: LCCOMB_X7_Y25_N30
\min_0_ena~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_0_ena~0_combout\ = (!counter_sec_1(0) & (counter_sec_1(1) & (!\reset~input_o\ & counter_sec_1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec_1(0),
	datab => counter_sec_1(1),
	datac => \reset~input_o\,
	datad => counter_sec_1(2),
	combout => \min_0_ena~0_combout\);

-- Location: FF_X5_Y25_N9
min_0_ena : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \min_0_ena~0_combout\,
	sload => VCC,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_0_ena~q\);

-- Location: LCCOMB_X2_Y25_N6
\Equal15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = (index(0) & index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => index(0),
	datad => index(1),
	combout => \Equal15~0_combout\);

-- Location: LCCOMB_X5_Y25_N4
\counter_min_0[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_0[3]~0_combout\ = (\counter_hr_1[1]~4_combout\ & (((!\counter_hr_1[1]~5_combout\ & !\Equal2~0_combout\)) # (!\Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~0_combout\,
	datab => \counter_hr_1[1]~5_combout\,
	datac => \counter_hr_1[1]~4_combout\,
	datad => \Equal2~0_combout\,
	combout => \counter_min_0[3]~0_combout\);

-- Location: LCCOMB_X5_Y25_N8
\counter_min_0[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_0[3]~1_combout\ = (\counter_min_0[3]~0_combout\) # ((\counter_hr_1[1]~7_combout\ & (!\Equal2~0_combout\ & !\min_0_ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_hr_1[1]~7_combout\,
	datab => \Equal2~0_combout\,
	datac => \min_0_ena~q\,
	datad => \counter_min_0[3]~0_combout\,
	combout => \counter_min_0[3]~1_combout\);

-- Location: LCCOMB_X5_Y25_N20
\counter_min_0[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_0[1]~4_combout\ = (\counter_min_0[3]~1_combout\ & (counter_min_0(1))) # (!\counter_min_0[3]~1_combout\ & (\counter_min_0[3]~2_combout\ & (counter_min_0(1) $ (counter_min_0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(1),
	datab => \counter_min_0[3]~2_combout\,
	datac => counter_min_0(0),
	datad => \counter_min_0[3]~1_combout\,
	combout => \counter_min_0[1]~4_combout\);

-- Location: FF_X5_Y25_N3
\counter_min_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \counter_min_0[1]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min_0(1));

-- Location: LCCOMB_X5_Y25_N14
\Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = counter_min_0(2) $ (((counter_min_0(0) & counter_min_0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(2),
	datab => counter_min_0(0),
	datad => counter_min_0(1),
	combout => \Add7~0_combout\);

-- Location: LCCOMB_X5_Y25_N26
\counter_min_0[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_0[2]~5_combout\ = (\counter_min_0[3]~1_combout\ & (((counter_min_0(2))))) # (!\counter_min_0[3]~1_combout\ & (\Add7~0_combout\ & (\counter_min_0[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \counter_min_0[3]~2_combout\,
	datac => counter_min_0(2),
	datad => \counter_min_0[3]~1_combout\,
	combout => \counter_min_0[2]~5_combout\);

-- Location: LCCOMB_X5_Y25_N28
\counter_min_0[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_0[2]~feeder_combout\ = \counter_min_0[2]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter_min_0[2]~5_combout\,
	combout => \counter_min_0[2]~feeder_combout\);

-- Location: FF_X5_Y25_N29
\counter_min_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \counter_min_0[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min_0(2));

-- Location: LCCOMB_X5_Y25_N30
\State_Machine~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \State_Machine~3_combout\ = ((\State_Machine~2_combout\) # ((counter_min_0(2)) # (!\Add5~0_combout\))) # (!counter_min_0(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(3),
	datab => \State_Machine~2_combout\,
	datac => \Add5~0_combout\,
	datad => counter_min_0(2),
	combout => \State_Machine~3_combout\);

-- Location: LCCOMB_X7_Y25_N4
\counter_hr_1[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1[1]~6_combout\ = (\State_Machine~3_combout\) # (\State_Machine~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State_Machine~3_combout\,
	datad => \State_Machine~1_combout\,
	combout => \counter_hr_1[1]~6_combout\);

-- Location: LCCOMB_X4_Y25_N20
\counter_hr_1[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_hr_1[1]~7_combout\ = (\state.show_clock~q\ & (!\reset~input_o\ & ((\counter_hr_1[1]~6_combout\) # (\State_Machine~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_hr_1[1]~6_combout\,
	datab => \state.show_clock~q\,
	datac => \State_Machine~0_combout\,
	datad => \reset~input_o\,
	combout => \counter_hr_1[1]~7_combout\);

-- Location: LCCOMB_X4_Y25_N2
\min_1_ena~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min_1_ena~0_combout\ = (!\reset~input_o\ & \Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \Equal2~0_combout\,
	combout => \min_1_ena~0_combout\);

-- Location: FF_X4_Y25_N27
min_1_ena : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \min_1_ena~0_combout\,
	sload => VCC,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_1_ena~q\);

-- Location: LCCOMB_X2_Y25_N20
\Equal15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal15~1_combout\ = (!index(0) & index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => index(0),
	datad => index(1),
	combout => \Equal15~1_combout\);

-- Location: LCCOMB_X4_Y25_N8
\counter_min_1[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_1[0]~1_combout\ = (\counter_hr_1[1]~4_combout\ & (((!\counter_hr_1[1]~5_combout\ & !\Equal3~0_combout\)) # (!\Equal15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_hr_1[1]~4_combout\,
	datab => \counter_hr_1[1]~5_combout\,
	datac => \Equal15~1_combout\,
	datad => \Equal3~0_combout\,
	combout => \counter_min_1[0]~1_combout\);

-- Location: LCCOMB_X4_Y25_N26
\counter_min_1[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_1[0]~2_combout\ = (\counter_min_1[0]~1_combout\) # ((!\Equal3~0_combout\ & (\counter_hr_1[1]~7_combout\ & !\min_1_ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \counter_hr_1[1]~7_combout\,
	datac => \min_1_ena~q\,
	datad => \counter_min_1[0]~1_combout\,
	combout => \counter_min_1[0]~2_combout\);

-- Location: LCCOMB_X4_Y25_N12
\counter_min_1[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_1[0]~5_combout\ = (counter_min_1(0) & ((\counter_min_1[0]~2_combout\))) # (!counter_min_1(0) & (\counter_min_1[1]~0_combout\ & !\counter_min_1[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_min_1[1]~0_combout\,
	datab => counter_min_1(0),
	datad => \counter_min_1[0]~2_combout\,
	combout => \counter_min_1[0]~5_combout\);

-- Location: FF_X4_Y25_N5
\counter_min_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \counter_min_1[0]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min_1(0));

-- Location: LCCOMB_X3_Y25_N14
\Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = counter_min_1(2) $ (((counter_min_1(1) & counter_min_1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_1(1),
	datab => counter_min_1(2),
	datac => counter_min_1(0),
	combout => \Add6~0_combout\);

-- Location: LCCOMB_X4_Y25_N28
\counter_min_1[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_1[2]~3_combout\ = (\counter_min_1[0]~2_combout\ & (((counter_min_1(2))))) # (!\counter_min_1[0]~2_combout\ & (\counter_min_1[1]~0_combout\ & ((\Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_min_1[1]~0_combout\,
	datab => counter_min_1(2),
	datac => \Add6~0_combout\,
	datad => \counter_min_1[0]~2_combout\,
	combout => \counter_min_1[2]~3_combout\);

-- Location: FF_X4_Y25_N17
\counter_min_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \counter_min_1[2]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min_1(2));

-- Location: LCCOMB_X3_Y25_N24
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (counter_min_1(1) & (counter_min_1(2) & !counter_min_1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_1(1),
	datab => counter_min_1(2),
	datac => counter_min_1(0),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X4_Y25_N10
\counter_min_1[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_1[1]~0_combout\ = (!\reset~input_o\ & (!\Equal3~0_combout\ & ((\State_Machine~4_combout\) # (!\state.show_clock~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Machine~4_combout\,
	datab => \reset~input_o\,
	datac => \state.show_clock~q\,
	datad => \Equal3~0_combout\,
	combout => \counter_min_1[1]~0_combout\);

-- Location: LCCOMB_X4_Y25_N18
\counter_min_1[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_1[1]~4_combout\ = (\counter_min_1[0]~2_combout\ & (((counter_min_1(1))))) # (!\counter_min_1[0]~2_combout\ & (\counter_min_1[1]~0_combout\ & (counter_min_1(0) $ (counter_min_1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_min_1[1]~0_combout\,
	datab => counter_min_1(0),
	datac => counter_min_1(1),
	datad => \counter_min_1[0]~2_combout\,
	combout => \counter_min_1[1]~4_combout\);

-- Location: FF_X4_Y25_N3
\counter_min_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \counter_min_1[1]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min_1(1));

-- Location: LCCOMB_X7_Y25_N26
\State_Machine~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \State_Machine~0_combout\ = (counter_min_1(1)) # (((\Mux21~0_combout\) # (!\sec_1_ena~0_combout\)) # (!counter_min_1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_1(1),
	datab => counter_min_1(0),
	datac => \Mux21~0_combout\,
	datad => \sec_1_ena~0_combout\,
	combout => \State_Machine~0_combout\);

-- Location: LCCOMB_X4_Y25_N30
\State_Machine~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \State_Machine~4_combout\ = (\State_Machine~0_combout\) # ((\State_Machine~1_combout\) # (\State_Machine~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Machine~0_combout\,
	datac => \State_Machine~1_combout\,
	datad => \State_Machine~3_combout\,
	combout => \State_Machine~4_combout\);

-- Location: LCCOMB_X4_Y25_N0
\counter_min_0[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_0[3]~2_combout\ = (!\Equal2~0_combout\ & (!\reset~input_o\ & ((\State_Machine~4_combout\) # (!\state.show_clock~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State_Machine~4_combout\,
	datab => \Equal2~0_combout\,
	datac => \state.show_clock~q\,
	datad => \reset~input_o\,
	combout => \counter_min_0[3]~2_combout\);

-- Location: LCCOMB_X5_Y25_N2
\counter_min_0[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_0[0]~3_combout\ = (counter_min_0(0) & ((\counter_min_0[3]~1_combout\))) # (!counter_min_0(0) & (\counter_min_0[3]~2_combout\ & !\counter_min_0[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(0),
	datab => \counter_min_0[3]~2_combout\,
	datad => \counter_min_0[3]~1_combout\,
	combout => \counter_min_0[0]~3_combout\);

-- Location: FF_X5_Y25_N21
\counter_min_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \counter_min_0[0]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min_0(0));

-- Location: LCCOMB_X5_Y25_N0
\Add7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~1_combout\ = counter_min_0(3) $ (((counter_min_0(0) & (counter_min_0(2) & counter_min_0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(3),
	datab => counter_min_0(0),
	datac => counter_min_0(2),
	datad => counter_min_0(1),
	combout => \Add7~1_combout\);

-- Location: LCCOMB_X5_Y25_N6
\counter_min_0[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_min_0[3]~6_combout\ = (\counter_min_0[3]~1_combout\ & (counter_min_0(3))) # (!\counter_min_0[3]~1_combout\ & (((\Add7~1_combout\ & \counter_min_0[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(3),
	datab => \Add7~1_combout\,
	datac => \counter_min_0[3]~1_combout\,
	datad => \counter_min_0[3]~2_combout\,
	combout => \counter_min_0[3]~6_combout\);

-- Location: FF_X5_Y25_N15
\counter_min_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	asdata => \counter_min_0[3]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_min_0(3));

-- Location: LCCOMB_X5_Y25_N24
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (counter_min_0(1) & (counter_min_0(3))) # (!counter_min_0(1) & (counter_min_0(2) $ (((!counter_min_0(3) & counter_min_0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(3),
	datab => counter_min_0(0),
	datac => counter_min_0(2),
	datad => counter_min_0(1),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X6_Y25_N4
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (counter_min_0(2) & ((counter_min_0(3)) # (counter_min_0(1) $ (counter_min_0(0))))) # (!counter_min_0(2) & (counter_min_0(1) & (counter_min_0(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(1),
	datab => counter_min_0(2),
	datac => counter_min_0(3),
	datad => counter_min_0(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X5_Y25_N10
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (counter_min_0(2) & (counter_min_0(3))) # (!counter_min_0(2) & (counter_min_0(1) & ((counter_min_0(3)) # (!counter_min_0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(3),
	datab => counter_min_0(0),
	datac => counter_min_0(2),
	datad => counter_min_0(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X5_Y25_N16
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (counter_min_0(1) & ((counter_min_0(3)) # ((counter_min_0(0) & counter_min_0(2))))) # (!counter_min_0(1) & (counter_min_0(2) $ (((!counter_min_0(3) & counter_min_0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(3),
	datab => counter_min_0(0),
	datac => counter_min_0(2),
	datad => counter_min_0(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X6_Y25_N26
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (counter_min_0(0)) # ((counter_min_0(1) & ((counter_min_0(3)))) # (!counter_min_0(1) & (counter_min_0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(1),
	datab => counter_min_0(2),
	datac => counter_min_0(3),
	datad => counter_min_0(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X5_Y25_N22
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (counter_min_0(0) & ((counter_min_0(1)) # (counter_min_0(3) $ (!counter_min_0(2))))) # (!counter_min_0(0) & ((counter_min_0(2) & (counter_min_0(3))) # (!counter_min_0(2) & ((counter_min_0(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(3),
	datab => counter_min_0(0),
	datac => counter_min_0(2),
	datad => counter_min_0(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X5_Y25_N12
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (counter_min_0(2) & (!counter_min_0(3) & ((!counter_min_0(1)) # (!counter_min_0(0))))) # (!counter_min_0(2) & (counter_min_0(3) $ (((counter_min_0(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_0(3),
	datab => counter_min_0(0),
	datac => counter_min_0(2),
	datad => counter_min_0(1),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X7_Y25_N16
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = counter_min_1(2) $ (((!counter_min_1(1) & counter_min_1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_1(1),
	datab => counter_min_1(0),
	datad => counter_min_1(2),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X7_Y25_N14
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ((!counter_min_1(1) & !counter_min_1(0))) # (!counter_min_1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_1(1),
	datab => counter_min_1(0),
	datad => counter_min_1(2),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X7_Y25_N24
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ((counter_min_1(0) & !counter_min_1(2))) # (!counter_min_1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_1(1),
	datab => counter_min_1(0),
	datad => counter_min_1(2),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X7_Y25_N6
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (counter_min_1(0)) # (counter_min_1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_min_1(0),
	datad => counter_min_1(2),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X7_Y25_N8
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (counter_min_1(1)) # ((counter_min_1(0) & !counter_min_1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_1(1),
	datab => counter_min_1(0),
	datad => counter_min_1(2),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X3_Y25_N20
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = counter_min_1(1) $ (counter_min_1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_min_1(1),
	datad => counter_min_1(2),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X6_Y25_N28
\Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (counter_hr_0(1) & (((counter_hr_0(3))))) # (!counter_hr_0(1) & (counter_hr_0(2) $ (((!counter_hr_0(3) & counter_hr_0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_0(1),
	datab => counter_hr_0(2),
	datac => counter_hr_0(3),
	datad => counter_hr_0(0),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X6_Y25_N2
\Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (counter_hr_0(2) & ((counter_hr_0(3)) # (counter_hr_0(1) $ (counter_hr_0(0))))) # (!counter_hr_0(2) & (counter_hr_0(1) & (counter_hr_0(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_0(1),
	datab => counter_hr_0(2),
	datac => counter_hr_0(3),
	datad => counter_hr_0(0),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X6_Y25_N16
\Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (counter_hr_0(2) & (((counter_hr_0(3))))) # (!counter_hr_0(2) & (counter_hr_0(1) & ((counter_hr_0(3)) # (!counter_hr_0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_0(1),
	datab => counter_hr_0(2),
	datac => counter_hr_0(3),
	datad => counter_hr_0(0),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X3_Y25_N22
\Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (counter_hr_0(1) & ((counter_hr_0(3)) # ((counter_hr_0(2) & counter_hr_0(0))))) # (!counter_hr_0(1) & (counter_hr_0(2) $ (((!counter_hr_0(3) & counter_hr_0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_0(3),
	datab => counter_hr_0(2),
	datac => counter_hr_0(0),
	datad => counter_hr_0(1),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X3_Y25_N28
\Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (counter_hr_0(0)) # ((counter_hr_0(1) & (counter_hr_0(3))) # (!counter_hr_0(1) & ((counter_hr_0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_0(3),
	datab => counter_hr_0(2),
	datac => counter_hr_0(0),
	datad => counter_hr_0(1),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X6_Y25_N22
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (counter_hr_0(2) & ((counter_hr_0(3)) # ((counter_hr_0(1) & counter_hr_0(0))))) # (!counter_hr_0(2) & ((counter_hr_0(1)) # ((!counter_hr_0(3) & counter_hr_0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_0(1),
	datab => counter_hr_0(2),
	datac => counter_hr_0(3),
	datad => counter_hr_0(0),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X3_Y25_N26
\Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (counter_hr_0(2) & (!counter_hr_0(3) & ((!counter_hr_0(1)) # (!counter_hr_0(0))))) # (!counter_hr_0(2) & (counter_hr_0(3) $ (((counter_hr_0(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_hr_0(3),
	datab => counter_hr_0(2),
	datac => counter_hr_0(0),
	datad => counter_hr_0(1),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X37_Y28_N0
\Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (counter_hr_1(1)) # (counter_hr_1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter_hr_1(1),
	datad => counter_hr_1(0),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X3_Y23_N0
\set_LED~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \set_LED~0_combout\ = !\state.show_clock~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.show_clock~q\,
	combout => \set_LED~0_combout\);

-- Location: FF_X3_Y23_N1
\set_LED~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \set_LED~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_LED~reg0_q\);

-- Location: LCCOMB_X3_Y23_N30
\show_LED~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_LED~reg0feeder_combout\ = \state.show_clock~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.show_clock~q\,
	combout => \show_LED~reg0feeder_combout\);

-- Location: FF_X3_Y23_N31
\show_LED~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \show_LED~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \show_LED~reg0_q\);

-- Location: LCCOMB_X2_Y25_N0
\index_0_LED~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \index_0_LED~reg0feeder_combout\ = \Equal12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal12~0_combout\,
	combout => \index_0_LED~reg0feeder_combout\);

-- Location: FF_X2_Y25_N1
\index_0_LED~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \index_0_LED~reg0feeder_combout\,
	ena => \ALT_INV_state.show_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index_0_LED~reg0_q\);

-- Location: LCCOMB_X2_Y25_N10
\Equal15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal15~2_combout\ = (index(0) & !index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => index(0),
	datad => index(1),
	combout => \Equal15~2_combout\);

-- Location: FF_X2_Y25_N11
\index_1_LED~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \Equal15~2_combout\,
	ena => \ALT_INV_state.show_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index_1_LED~reg0_q\);

-- Location: LCCOMB_X2_Y25_N28
\index_2_LED~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \index_2_LED~reg0feeder_combout\ = \Equal15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal15~1_combout\,
	combout => \index_2_LED~reg0feeder_combout\);

-- Location: FF_X2_Y25_N29
\index_2_LED~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \index_2_LED~reg0feeder_combout\,
	ena => \ALT_INV_state.show_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index_2_LED~reg0_q\);

-- Location: FF_X2_Y25_N7
\index_3_LED~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \Equal15~0_combout\,
	ena => \ALT_INV_state.show_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \index_3_LED~reg0_q\);

-- Location: LCCOMB_X4_Y24_N0
\blink~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \blink~0_combout\ = \blink~q\ $ (\sec_0_ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blink~q\,
	datad => \sec_0_ena~q\,
	combout => \blink~0_combout\);

-- Location: FF_X4_Y24_N1
blink : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \blink~0_combout\,
	sclr => \reset~input_o\,
	ena => \ALT_INV_counter_hr_1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink~q\);

-- Location: LCCOMB_X4_Y24_N22
\sec_0_LED~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec_0_LED~reg0feeder_combout\ = \blink~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \blink~q\,
	combout => \sec_0_LED~reg0feeder_combout\);

-- Location: FF_X4_Y24_N23
\sec_0_LED~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \g_clk~inputclkctrl_outclk\,
	d => \sec_0_LED~reg0feeder_combout\,
	ena => \state.show_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_0_LED~reg0_q\);

-- Location: PLL_2
\MyComponent_2|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 11,
	c0_initial => 1,
	c0_low => 10,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 147,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 74,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 16,
	m => 74,
	m_initial => 1,
	m_ph => 0,
	n => 7,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 5738,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 236,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \MyComponent_2|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \MyComponent_2|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \MyComponent_2|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \MyComponent_2|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X39_Y20_N6
\MyComponent_1|vpos[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|vpos[0]~11_combout\ = \MyComponent_1|vpos\(0) $ (VCC)
-- \MyComponent_1|vpos[0]~12\ = CARRY(\MyComponent_1|vpos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|vpos\(0),
	datad => VCC,
	combout => \MyComponent_1|vpos[0]~11_combout\,
	cout => \MyComponent_1|vpos[0]~12\);

-- Location: LCCOMB_X39_Y20_N10
\MyComponent_1|vpos[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|vpos[2]~15_combout\ = (\MyComponent_1|vpos\(2) & (\MyComponent_1|vpos[1]~14\ $ (GND))) # (!\MyComponent_1|vpos\(2) & (!\MyComponent_1|vpos[1]~14\ & VCC))
-- \MyComponent_1|vpos[2]~16\ = CARRY((\MyComponent_1|vpos\(2) & !\MyComponent_1|vpos[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|vpos\(2),
	datad => VCC,
	cin => \MyComponent_1|vpos[1]~14\,
	combout => \MyComponent_1|vpos[2]~15_combout\,
	cout => \MyComponent_1|vpos[2]~16\);

-- Location: LCCOMB_X39_Y20_N12
\MyComponent_1|vpos[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|vpos[3]~17_combout\ = (\MyComponent_1|vpos\(3) & (!\MyComponent_1|vpos[2]~16\)) # (!\MyComponent_1|vpos\(3) & ((\MyComponent_1|vpos[2]~16\) # (GND)))
-- \MyComponent_1|vpos[3]~18\ = CARRY((!\MyComponent_1|vpos[2]~16\) # (!\MyComponent_1|vpos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|vpos\(3),
	datad => VCC,
	cin => \MyComponent_1|vpos[2]~16\,
	combout => \MyComponent_1|vpos[3]~17_combout\,
	cout => \MyComponent_1|vpos[3]~18\);

-- Location: LCCOMB_X39_Y19_N2
\MyComponent_1|hpos[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|hpos[0]~11_combout\ = \MyComponent_1|hpos\(0) $ (VCC)
-- \MyComponent_1|hpos[0]~12\ = CARRY(\MyComponent_1|hpos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyComponent_1|hpos\(0),
	datad => VCC,
	combout => \MyComponent_1|hpos[0]~11_combout\,
	cout => \MyComponent_1|hpos[0]~12\);

-- Location: FF_X39_Y19_N3
\MyComponent_1|hpos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|hpos[0]~11_combout\,
	sclr => \MyComponent_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|hpos\(0));

-- Location: LCCOMB_X39_Y19_N4
\MyComponent_1|hpos[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|hpos[1]~13_combout\ = (\MyComponent_1|hpos\(1) & (!\MyComponent_1|hpos[0]~12\)) # (!\MyComponent_1|hpos\(1) & ((\MyComponent_1|hpos[0]~12\) # (GND)))
-- \MyComponent_1|hpos[1]~14\ = CARRY((!\MyComponent_1|hpos[0]~12\) # (!\MyComponent_1|hpos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyComponent_1|hpos\(1),
	datad => VCC,
	cin => \MyComponent_1|hpos[0]~12\,
	combout => \MyComponent_1|hpos[1]~13_combout\,
	cout => \MyComponent_1|hpos[1]~14\);

-- Location: FF_X39_Y19_N5
\MyComponent_1|hpos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|hpos[1]~13_combout\,
	sclr => \MyComponent_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|hpos\(1));

-- Location: LCCOMB_X39_Y19_N6
\MyComponent_1|hpos[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|hpos[2]~15_combout\ = (\MyComponent_1|hpos\(2) & (\MyComponent_1|hpos[1]~14\ $ (GND))) # (!\MyComponent_1|hpos\(2) & (!\MyComponent_1|hpos[1]~14\ & VCC))
-- \MyComponent_1|hpos[2]~16\ = CARRY((\MyComponent_1|hpos\(2) & !\MyComponent_1|hpos[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|hpos\(2),
	datad => VCC,
	cin => \MyComponent_1|hpos[1]~14\,
	combout => \MyComponent_1|hpos[2]~15_combout\,
	cout => \MyComponent_1|hpos[2]~16\);

-- Location: FF_X39_Y19_N7
\MyComponent_1|hpos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|hpos[2]~15_combout\,
	sclr => \MyComponent_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|hpos\(2));

-- Location: LCCOMB_X39_Y19_N8
\MyComponent_1|hpos[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|hpos[3]~17_combout\ = (\MyComponent_1|hpos\(3) & (!\MyComponent_1|hpos[2]~16\)) # (!\MyComponent_1|hpos\(3) & ((\MyComponent_1|hpos[2]~16\) # (GND)))
-- \MyComponent_1|hpos[3]~18\ = CARRY((!\MyComponent_1|hpos[2]~16\) # (!\MyComponent_1|hpos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyComponent_1|hpos\(3),
	datad => VCC,
	cin => \MyComponent_1|hpos[2]~16\,
	combout => \MyComponent_1|hpos[3]~17_combout\,
	cout => \MyComponent_1|hpos[3]~18\);

-- Location: FF_X39_Y19_N9
\MyComponent_1|hpos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|hpos[3]~17_combout\,
	sclr => \MyComponent_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|hpos\(3));

-- Location: LCCOMB_X39_Y19_N10
\MyComponent_1|hpos[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|hpos[4]~19_combout\ = (\MyComponent_1|hpos\(4) & (\MyComponent_1|hpos[3]~18\ $ (GND))) # (!\MyComponent_1|hpos\(4) & (!\MyComponent_1|hpos[3]~18\ & VCC))
-- \MyComponent_1|hpos[4]~20\ = CARRY((\MyComponent_1|hpos\(4) & !\MyComponent_1|hpos[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|hpos\(4),
	datad => VCC,
	cin => \MyComponent_1|hpos[3]~18\,
	combout => \MyComponent_1|hpos[4]~19_combout\,
	cout => \MyComponent_1|hpos[4]~20\);

-- Location: FF_X39_Y19_N11
\MyComponent_1|hpos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|hpos[4]~19_combout\,
	sclr => \MyComponent_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|hpos\(4));

-- Location: LCCOMB_X39_Y19_N12
\MyComponent_1|hpos[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|hpos[5]~21_combout\ = (\MyComponent_1|hpos\(5) & (!\MyComponent_1|hpos[4]~20\)) # (!\MyComponent_1|hpos\(5) & ((\MyComponent_1|hpos[4]~20\) # (GND)))
-- \MyComponent_1|hpos[5]~22\ = CARRY((!\MyComponent_1|hpos[4]~20\) # (!\MyComponent_1|hpos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|hpos\(5),
	datad => VCC,
	cin => \MyComponent_1|hpos[4]~20\,
	combout => \MyComponent_1|hpos[5]~21_combout\,
	cout => \MyComponent_1|hpos[5]~22\);

-- Location: FF_X39_Y19_N13
\MyComponent_1|hpos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|hpos[5]~21_combout\,
	sclr => \MyComponent_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|hpos\(5));

-- Location: LCCOMB_X39_Y19_N14
\MyComponent_1|hpos[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|hpos[6]~23_combout\ = (\MyComponent_1|hpos\(6) & (\MyComponent_1|hpos[5]~22\ $ (GND))) # (!\MyComponent_1|hpos\(6) & (!\MyComponent_1|hpos[5]~22\ & VCC))
-- \MyComponent_1|hpos[6]~24\ = CARRY((\MyComponent_1|hpos\(6) & !\MyComponent_1|hpos[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|hpos\(6),
	datad => VCC,
	cin => \MyComponent_1|hpos[5]~22\,
	combout => \MyComponent_1|hpos[6]~23_combout\,
	cout => \MyComponent_1|hpos[6]~24\);

-- Location: FF_X39_Y19_N15
\MyComponent_1|hpos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|hpos[6]~23_combout\,
	sclr => \MyComponent_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|hpos\(6));

-- Location: LCCOMB_X39_Y19_N16
\MyComponent_1|hpos[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|hpos[7]~25_combout\ = (\MyComponent_1|hpos\(7) & (!\MyComponent_1|hpos[6]~24\)) # (!\MyComponent_1|hpos\(7) & ((\MyComponent_1|hpos[6]~24\) # (GND)))
-- \MyComponent_1|hpos[7]~26\ = CARRY((!\MyComponent_1|hpos[6]~24\) # (!\MyComponent_1|hpos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|hpos\(7),
	datad => VCC,
	cin => \MyComponent_1|hpos[6]~24\,
	combout => \MyComponent_1|hpos[7]~25_combout\,
	cout => \MyComponent_1|hpos[7]~26\);

-- Location: FF_X39_Y19_N17
\MyComponent_1|hpos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|hpos[7]~25_combout\,
	sclr => \MyComponent_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|hpos\(7));

-- Location: LCCOMB_X38_Y19_N0
\MyComponent_1|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|LessThan7~0_combout\ = (!\MyComponent_1|hpos\(5) & (!\MyComponent_1|hpos\(6) & ((!\MyComponent_1|hpos\(4)) # (!\MyComponent_1|hpos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|hpos\(3),
	datab => \MyComponent_1|hpos\(4),
	datac => \MyComponent_1|hpos\(5),
	datad => \MyComponent_1|hpos\(6),
	combout => \MyComponent_1|LessThan7~0_combout\);

-- Location: LCCOMB_X39_Y19_N18
\MyComponent_1|hpos[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|hpos[8]~27_combout\ = (\MyComponent_1|hpos\(8) & (\MyComponent_1|hpos[7]~26\ $ (GND))) # (!\MyComponent_1|hpos\(8) & (!\MyComponent_1|hpos[7]~26\ & VCC))
-- \MyComponent_1|hpos[8]~28\ = CARRY((\MyComponent_1|hpos\(8) & !\MyComponent_1|hpos[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyComponent_1|hpos\(8),
	datad => VCC,
	cin => \MyComponent_1|hpos[7]~26\,
	combout => \MyComponent_1|hpos[8]~27_combout\,
	cout => \MyComponent_1|hpos[8]~28\);

-- Location: FF_X39_Y19_N19
\MyComponent_1|hpos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|hpos[8]~27_combout\,
	sclr => \MyComponent_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|hpos\(8));

-- Location: LCCOMB_X39_Y19_N20
\MyComponent_1|hpos[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|hpos[9]~29_combout\ = (\MyComponent_1|hpos\(9) & (!\MyComponent_1|hpos[8]~28\)) # (!\MyComponent_1|hpos\(9) & ((\MyComponent_1|hpos[8]~28\) # (GND)))
-- \MyComponent_1|hpos[9]~30\ = CARRY((!\MyComponent_1|hpos[8]~28\) # (!\MyComponent_1|hpos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyComponent_1|hpos\(9),
	datad => VCC,
	cin => \MyComponent_1|hpos[8]~28\,
	combout => \MyComponent_1|hpos[9]~29_combout\,
	cout => \MyComponent_1|hpos[9]~30\);

-- Location: FF_X39_Y19_N21
\MyComponent_1|hpos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|hpos[9]~29_combout\,
	sclr => \MyComponent_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|hpos\(9));

-- Location: LCCOMB_X39_Y19_N22
\MyComponent_1|hpos[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|hpos[10]~31_combout\ = \MyComponent_1|hpos\(10) $ (!\MyComponent_1|hpos[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|hpos\(10),
	cin => \MyComponent_1|hpos[9]~30\,
	combout => \MyComponent_1|hpos[10]~31_combout\);

-- Location: FF_X39_Y19_N23
\MyComponent_1|hpos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|hpos[10]~31_combout\,
	sclr => \MyComponent_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|hpos\(10));

-- Location: LCCOMB_X38_Y19_N4
\MyComponent_1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|LessThan0~0_combout\ = (!\MyComponent_1|hpos\(10)) # (!\MyComponent_1|hpos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MyComponent_1|hpos\(9),
	datad => \MyComponent_1|hpos\(10),
	combout => \MyComponent_1|LessThan0~0_combout\);

-- Location: LCCOMB_X38_Y19_N22
\MyComponent_1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|LessThan0~1_combout\ = (!\MyComponent_1|LessThan0~0_combout\ & ((\MyComponent_1|hpos\(8)) # ((\MyComponent_1|hpos\(7) & !\MyComponent_1|LessThan7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|hpos\(7),
	datab => \MyComponent_1|LessThan7~0_combout\,
	datac => \MyComponent_1|LessThan0~0_combout\,
	datad => \MyComponent_1|hpos\(8),
	combout => \MyComponent_1|LessThan0~1_combout\);

-- Location: FF_X39_Y20_N13
\MyComponent_1|vpos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|vpos[3]~17_combout\,
	sclr => \MyComponent_1|LessThan1~0_combout\,
	ena => \MyComponent_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|vpos\(3));

-- Location: LCCOMB_X39_Y20_N14
\MyComponent_1|vpos[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|vpos[4]~19_combout\ = (\MyComponent_1|vpos\(4) & (\MyComponent_1|vpos[3]~18\ $ (GND))) # (!\MyComponent_1|vpos\(4) & (!\MyComponent_1|vpos[3]~18\ & VCC))
-- \MyComponent_1|vpos[4]~20\ = CARRY((\MyComponent_1|vpos\(4) & !\MyComponent_1|vpos[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyComponent_1|vpos\(4),
	datad => VCC,
	cin => \MyComponent_1|vpos[3]~18\,
	combout => \MyComponent_1|vpos[4]~19_combout\,
	cout => \MyComponent_1|vpos[4]~20\);

-- Location: FF_X39_Y20_N15
\MyComponent_1|vpos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|vpos[4]~19_combout\,
	sclr => \MyComponent_1|LessThan1~0_combout\,
	ena => \MyComponent_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|vpos\(4));

-- Location: LCCOMB_X39_Y20_N16
\MyComponent_1|vpos[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|vpos[5]~21_combout\ = (\MyComponent_1|vpos\(5) & (!\MyComponent_1|vpos[4]~20\)) # (!\MyComponent_1|vpos\(5) & ((\MyComponent_1|vpos[4]~20\) # (GND)))
-- \MyComponent_1|vpos[5]~22\ = CARRY((!\MyComponent_1|vpos[4]~20\) # (!\MyComponent_1|vpos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyComponent_1|vpos\(5),
	datad => VCC,
	cin => \MyComponent_1|vpos[4]~20\,
	combout => \MyComponent_1|vpos[5]~21_combout\,
	cout => \MyComponent_1|vpos[5]~22\);

-- Location: FF_X39_Y20_N17
\MyComponent_1|vpos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|vpos[5]~21_combout\,
	sclr => \MyComponent_1|LessThan1~0_combout\,
	ena => \MyComponent_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|vpos\(5));

-- Location: LCCOMB_X39_Y20_N18
\MyComponent_1|vpos[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|vpos[6]~23_combout\ = (\MyComponent_1|vpos\(6) & (\MyComponent_1|vpos[5]~22\ $ (GND))) # (!\MyComponent_1|vpos\(6) & (!\MyComponent_1|vpos[5]~22\ & VCC))
-- \MyComponent_1|vpos[6]~24\ = CARRY((\MyComponent_1|vpos\(6) & !\MyComponent_1|vpos[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyComponent_1|vpos\(6),
	datad => VCC,
	cin => \MyComponent_1|vpos[5]~22\,
	combout => \MyComponent_1|vpos[6]~23_combout\,
	cout => \MyComponent_1|vpos[6]~24\);

-- Location: FF_X39_Y20_N19
\MyComponent_1|vpos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|vpos[6]~23_combout\,
	sclr => \MyComponent_1|LessThan1~0_combout\,
	ena => \MyComponent_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|vpos\(6));

-- Location: LCCOMB_X39_Y20_N20
\MyComponent_1|vpos[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|vpos[7]~25_combout\ = (\MyComponent_1|vpos\(7) & (!\MyComponent_1|vpos[6]~24\)) # (!\MyComponent_1|vpos\(7) & ((\MyComponent_1|vpos[6]~24\) # (GND)))
-- \MyComponent_1|vpos[7]~26\ = CARRY((!\MyComponent_1|vpos[6]~24\) # (!\MyComponent_1|vpos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyComponent_1|vpos\(7),
	datad => VCC,
	cin => \MyComponent_1|vpos[6]~24\,
	combout => \MyComponent_1|vpos[7]~25_combout\,
	cout => \MyComponent_1|vpos[7]~26\);

-- Location: FF_X39_Y20_N21
\MyComponent_1|vpos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|vpos[7]~25_combout\,
	sclr => \MyComponent_1|LessThan1~0_combout\,
	ena => \MyComponent_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|vpos\(7));

-- Location: LCCOMB_X39_Y20_N22
\MyComponent_1|vpos[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|vpos[8]~27_combout\ = (\MyComponent_1|vpos\(8) & (\MyComponent_1|vpos[7]~26\ $ (GND))) # (!\MyComponent_1|vpos\(8) & (!\MyComponent_1|vpos[7]~26\ & VCC))
-- \MyComponent_1|vpos[8]~28\ = CARRY((\MyComponent_1|vpos\(8) & !\MyComponent_1|vpos[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|vpos\(8),
	datad => VCC,
	cin => \MyComponent_1|vpos[7]~26\,
	combout => \MyComponent_1|vpos[8]~27_combout\,
	cout => \MyComponent_1|vpos[8]~28\);

-- Location: FF_X39_Y20_N23
\MyComponent_1|vpos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|vpos[8]~27_combout\,
	sclr => \MyComponent_1|LessThan1~0_combout\,
	ena => \MyComponent_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|vpos\(8));

-- Location: LCCOMB_X39_Y20_N24
\MyComponent_1|vpos[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|vpos[9]~29_combout\ = (\MyComponent_1|vpos\(9) & (!\MyComponent_1|vpos[8]~28\)) # (!\MyComponent_1|vpos\(9) & ((\MyComponent_1|vpos[8]~28\) # (GND)))
-- \MyComponent_1|vpos[9]~30\ = CARRY((!\MyComponent_1|vpos[8]~28\) # (!\MyComponent_1|vpos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyComponent_1|vpos\(9),
	datad => VCC,
	cin => \MyComponent_1|vpos[8]~28\,
	combout => \MyComponent_1|vpos[9]~29_combout\,
	cout => \MyComponent_1|vpos[9]~30\);

-- Location: FF_X39_Y20_N25
\MyComponent_1|vpos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|vpos[9]~29_combout\,
	sclr => \MyComponent_1|LessThan1~0_combout\,
	ena => \MyComponent_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|vpos\(9));

-- Location: LCCOMB_X39_Y20_N4
\MyComponent_1|LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|LessThan8~0_combout\ = (!\MyComponent_1|vpos\(7) & (!\MyComponent_1|vpos\(6) & (!\MyComponent_1|vpos\(8) & !\MyComponent_1|vpos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|vpos\(7),
	datab => \MyComponent_1|vpos\(6),
	datac => \MyComponent_1|vpos\(8),
	datad => \MyComponent_1|vpos\(9),
	combout => \MyComponent_1|LessThan8~0_combout\);

-- Location: LCCOMB_X39_Y20_N28
\MyComponent_1|LessThan8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|LessThan8~1_combout\ = (!\MyComponent_1|vpos\(4) & (((!\MyComponent_1|vpos\(2) & !\MyComponent_1|vpos\(1))) # (!\MyComponent_1|vpos\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|vpos\(2),
	datab => \MyComponent_1|vpos\(4),
	datac => \MyComponent_1|vpos\(1),
	datad => \MyComponent_1|vpos\(3),
	combout => \MyComponent_1|LessThan8~1_combout\);

-- Location: LCCOMB_X39_Y20_N26
\MyComponent_1|vpos[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|vpos[10]~31_combout\ = \MyComponent_1|vpos\(10) $ (!\MyComponent_1|vpos[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|vpos\(10),
	cin => \MyComponent_1|vpos[9]~30\,
	combout => \MyComponent_1|vpos[10]~31_combout\);

-- Location: FF_X39_Y20_N27
\MyComponent_1|vpos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|vpos[10]~31_combout\,
	sclr => \MyComponent_1|LessThan1~0_combout\,
	ena => \MyComponent_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|vpos\(10));

-- Location: LCCOMB_X39_Y20_N30
\MyComponent_1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|LessThan1~0_combout\ = (\MyComponent_1|vpos\(10) & (((!\MyComponent_1|LessThan8~1_combout\ & \MyComponent_1|vpos\(5))) # (!\MyComponent_1|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|LessThan8~0_combout\,
	datab => \MyComponent_1|LessThan8~1_combout\,
	datac => \MyComponent_1|vpos\(10),
	datad => \MyComponent_1|vpos\(5),
	combout => \MyComponent_1|LessThan1~0_combout\);

-- Location: FF_X39_Y20_N7
\MyComponent_1|vpos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|vpos[0]~11_combout\,
	sclr => \MyComponent_1|LessThan1~0_combout\,
	ena => \MyComponent_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|vpos\(0));

-- Location: LCCOMB_X39_Y20_N8
\MyComponent_1|vpos[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|vpos[1]~13_combout\ = (\MyComponent_1|vpos\(1) & (!\MyComponent_1|vpos[0]~12\)) # (!\MyComponent_1|vpos\(1) & ((\MyComponent_1|vpos[0]~12\) # (GND)))
-- \MyComponent_1|vpos[1]~14\ = CARRY((!\MyComponent_1|vpos[0]~12\) # (!\MyComponent_1|vpos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MyComponent_1|vpos\(1),
	datad => VCC,
	cin => \MyComponent_1|vpos[0]~12\,
	combout => \MyComponent_1|vpos[1]~13_combout\,
	cout => \MyComponent_1|vpos[1]~14\);

-- Location: FF_X39_Y20_N9
\MyComponent_1|vpos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|vpos[1]~13_combout\,
	sclr => \MyComponent_1|LessThan1~0_combout\,
	ena => \MyComponent_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|vpos\(1));

-- Location: FF_X39_Y20_N11
\MyComponent_1|vpos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|vpos[2]~15_combout\,
	sclr => \MyComponent_1|LessThan1~0_combout\,
	ena => \MyComponent_1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|vpos\(2));

-- Location: LCCOMB_X39_Y20_N0
\MyComponent_1|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|LessThan4~0_combout\ = (!\MyComponent_1|vpos\(2) & (!\MyComponent_1|vpos\(4) & !\MyComponent_1|vpos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|vpos\(2),
	datac => \MyComponent_1|vpos\(4),
	datad => \MyComponent_1|vpos\(0),
	combout => \MyComponent_1|LessThan4~0_combout\);

-- Location: LCCOMB_X40_Y20_N22
\MyComponent_1|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|LessThan4~1_combout\ = (\MyComponent_1|LessThan4~0_combout\ & (!\MyComponent_1|vpos\(3) & (!\MyComponent_1|vpos\(5) & !\MyComponent_1|vpos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|LessThan4~0_combout\,
	datab => \MyComponent_1|vpos\(3),
	datac => \MyComponent_1|vpos\(5),
	datad => \MyComponent_1|vpos\(1),
	combout => \MyComponent_1|LessThan4~1_combout\);

-- Location: LCCOMB_X39_Y19_N28
\MyComponent_1|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|process_0~0_combout\ = (!\MyComponent_1|hpos\(6) & (!\MyComponent_1|hpos\(0) & (!\MyComponent_1|hpos\(1) & !\MyComponent_1|hpos\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|hpos\(6),
	datab => \MyComponent_1|hpos\(0),
	datac => \MyComponent_1|hpos\(1),
	datad => \MyComponent_1|hpos\(5),
	combout => \MyComponent_1|process_0~0_combout\);

-- Location: LCCOMB_X39_Y19_N24
\MyComponent_1|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|process_0~4_combout\ = (!\MyComponent_1|hpos\(2) & (\MyComponent_1|process_0~0_combout\ & (!\MyComponent_1|hpos\(7) & !\MyComponent_1|hpos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|hpos\(2),
	datab => \MyComponent_1|process_0~0_combout\,
	datac => \MyComponent_1|hpos\(7),
	datad => \MyComponent_1|hpos\(8),
	combout => \MyComponent_1|process_0~4_combout\);

-- Location: LCCOMB_X39_Y19_N0
\MyComponent_1|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|process_0~1_combout\ = (!\MyComponent_1|hpos\(2) & (\MyComponent_1|process_0~0_combout\ & (!\MyComponent_1|hpos\(3) & !\MyComponent_1|hpos\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|hpos\(2),
	datab => \MyComponent_1|process_0~0_combout\,
	datac => \MyComponent_1|hpos\(3),
	datad => \MyComponent_1|hpos\(4),
	combout => \MyComponent_1|process_0~1_combout\);

-- Location: LCCOMB_X38_Y19_N6
\MyComponent_1|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|process_0~2_combout\ = (\MyComponent_1|hpos\(7) & (!\MyComponent_1|LessThan7~0_combout\ & ((\MyComponent_1|hpos\(8))))) # (!\MyComponent_1|hpos\(7) & (((\MyComponent_1|process_0~1_combout\ & !\MyComponent_1|hpos\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|hpos\(7),
	datab => \MyComponent_1|LessThan7~0_combout\,
	datac => \MyComponent_1|process_0~1_combout\,
	datad => \MyComponent_1|hpos\(8),
	combout => \MyComponent_1|process_0~2_combout\);

-- Location: LCCOMB_X39_Y19_N30
\MyComponent_1|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|process_0~3_combout\ = (\MyComponent_1|process_0~2_combout\) # ((\MyComponent_1|hpos\(10)) # (\MyComponent_1|hpos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MyComponent_1|process_0~2_combout\,
	datac => \MyComponent_1|hpos\(10),
	datad => \MyComponent_1|hpos\(9),
	combout => \MyComponent_1|process_0~3_combout\);

-- Location: LCCOMB_X39_Y19_N26
\MyComponent_1|r~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|r~3_combout\ = (\MyComponent_1|hpos\(4) & (\MyComponent_1|hpos\(3) & (\MyComponent_1|hpos\(10) & !\MyComponent_1|hpos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|hpos\(4),
	datab => \MyComponent_1|hpos\(3),
	datac => \MyComponent_1|hpos\(10),
	datad => \MyComponent_1|hpos\(9),
	combout => \MyComponent_1|r~3_combout\);

-- Location: LCCOMB_X39_Y20_N2
\MyComponent_1|r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|r~0_combout\ = (\MyComponent_1|vpos\(3) & (!\MyComponent_1|vpos\(7) & (!\MyComponent_1|vpos\(8) & !\MyComponent_1|vpos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|vpos\(3),
	datab => \MyComponent_1|vpos\(7),
	datac => \MyComponent_1|vpos\(8),
	datad => \MyComponent_1|vpos\(6),
	combout => \MyComponent_1|r~0_combout\);

-- Location: LCCOMB_X40_Y20_N14
\MyComponent_1|r~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|r~1_combout\ = (!\MyComponent_1|vpos\(10) & (\MyComponent_1|vpos\(5) & \MyComponent_1|vpos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|vpos\(10),
	datac => \MyComponent_1|vpos\(5),
	datad => \MyComponent_1|vpos\(9),
	combout => \MyComponent_1|r~1_combout\);

-- Location: LCCOMB_X40_Y20_N24
\MyComponent_1|r~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|r~2_combout\ = (\MyComponent_1|r~0_combout\ & (\MyComponent_1|r~1_combout\ & (\MyComponent_1|LessThan4~0_combout\ & \MyComponent_1|vpos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|r~0_combout\,
	datab => \MyComponent_1|r~1_combout\,
	datac => \MyComponent_1|LessThan4~0_combout\,
	datad => \MyComponent_1|vpos\(1),
	combout => \MyComponent_1|r~2_combout\);

-- Location: LCCOMB_X40_Y19_N0
\MyComponent_1|r~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|r~4_combout\ = (\MyComponent_1|process_0~3_combout\ & ((\MyComponent_1|r~2_combout\) # ((\MyComponent_1|process_0~4_combout\ & \MyComponent_1|r~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|process_0~4_combout\,
	datab => \MyComponent_1|process_0~3_combout\,
	datac => \MyComponent_1|r~3_combout\,
	datad => \MyComponent_1|r~2_combout\,
	combout => \MyComponent_1|r~4_combout\);

-- Location: LCCOMB_X40_Y20_N28
\MyComponent_1|LessThan8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|LessThan8~2_combout\ = (\MyComponent_1|LessThan8~0_combout\ & ((\MyComponent_1|LessThan8~1_combout\) # (!\MyComponent_1|vpos\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|vpos\(5),
	datab => \MyComponent_1|LessThan8~1_combout\,
	datac => \MyComponent_1|LessThan8~0_combout\,
	combout => \MyComponent_1|LessThan8~2_combout\);

-- Location: LCCOMB_X40_Y20_N2
\MyComponent_1|r~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|r~5_combout\ = (\MyComponent_1|r~4_combout\ & ((\MyComponent_1|LessThan4~1_combout\) # ((\MyComponent_1|vpos\(10)) # (!\MyComponent_1|LessThan8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MyComponent_1|LessThan4~1_combout\,
	datab => \MyComponent_1|r~4_combout\,
	datac => \MyComponent_1|vpos\(10),
	datad => \MyComponent_1|LessThan8~2_combout\,
	combout => \MyComponent_1|r~5_combout\);

-- Location: LCCOMB_X40_Y23_N16
\MyComponent_1|r[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|r[0]~feeder_combout\ = \MyComponent_1|r~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MyComponent_1|r~5_combout\,
	combout => \MyComponent_1|r[0]~feeder_combout\);

-- Location: FF_X40_Y23_N17
\MyComponent_1|r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|r[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|r\(0));

-- Location: LCCOMB_X40_Y23_N10
\MyComponent_1|r[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|r[1]~feeder_combout\ = \MyComponent_1|r~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MyComponent_1|r~5_combout\,
	combout => \MyComponent_1|r[1]~feeder_combout\);

-- Location: FF_X40_Y23_N11
\MyComponent_1|r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|r[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|r\(1));

-- Location: LCCOMB_X40_Y20_N12
\MyComponent_1|r[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|r[2]~feeder_combout\ = \MyComponent_1|r~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MyComponent_1|r~5_combout\,
	combout => \MyComponent_1|r[2]~feeder_combout\);

-- Location: FF_X40_Y20_N13
\MyComponent_1|r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|r[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|r\(2));

-- Location: LCCOMB_X40_Y20_N10
\MyComponent_1|r[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|r[3]~feeder_combout\ = \MyComponent_1|r~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MyComponent_1|r~5_combout\,
	combout => \MyComponent_1|r[3]~feeder_combout\);

-- Location: FF_X40_Y20_N11
\MyComponent_1|r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|r[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|r\(3));

-- Location: LCCOMB_X40_Y20_N16
\MyComponent_1|g[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|g[0]~feeder_combout\ = \MyComponent_1|r~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MyComponent_1|r~5_combout\,
	combout => \MyComponent_1|g[0]~feeder_combout\);

-- Location: FF_X40_Y20_N17
\MyComponent_1|g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|g[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|g\(0));

-- Location: LCCOMB_X40_Y23_N0
\MyComponent_1|g[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|g[1]~feeder_combout\ = \MyComponent_1|r~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MyComponent_1|r~5_combout\,
	combout => \MyComponent_1|g[1]~feeder_combout\);

-- Location: FF_X40_Y23_N1
\MyComponent_1|g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|g[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|g\(1));

-- Location: LCCOMB_X40_Y20_N26
\MyComponent_1|g[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|g[2]~feeder_combout\ = \MyComponent_1|r~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MyComponent_1|r~5_combout\,
	combout => \MyComponent_1|g[2]~feeder_combout\);

-- Location: FF_X40_Y20_N27
\MyComponent_1|g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|g[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|g\(2));

-- Location: LCCOMB_X40_Y20_N20
\MyComponent_1|g[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|g[3]~feeder_combout\ = \MyComponent_1|r~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MyComponent_1|r~5_combout\,
	combout => \MyComponent_1|g[3]~feeder_combout\);

-- Location: FF_X40_Y20_N21
\MyComponent_1|g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|g[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|g\(3));

-- Location: LCCOMB_X40_Y20_N30
\MyComponent_1|b[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|b[0]~feeder_combout\ = \MyComponent_1|r~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MyComponent_1|r~5_combout\,
	combout => \MyComponent_1|b[0]~feeder_combout\);

-- Location: FF_X40_Y20_N31
\MyComponent_1|b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|b[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|b\(0));

-- Location: LCCOMB_X40_Y20_N8
\MyComponent_1|b[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|b[1]~feeder_combout\ = \MyComponent_1|r~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MyComponent_1|r~5_combout\,
	combout => \MyComponent_1|b[1]~feeder_combout\);

-- Location: FF_X40_Y20_N9
\MyComponent_1|b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|b[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|b\(1));

-- Location: LCCOMB_X40_Y20_N18
\MyComponent_1|b[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|b[2]~feeder_combout\ = \MyComponent_1|r~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MyComponent_1|r~5_combout\,
	combout => \MyComponent_1|b[2]~feeder_combout\);

-- Location: FF_X40_Y20_N19
\MyComponent_1|b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|b[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|b\(2));

-- Location: LCCOMB_X40_Y20_N0
\MyComponent_1|b[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MyComponent_1|b[3]~feeder_combout\ = \MyComponent_1|r~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MyComponent_1|r~5_combout\,
	combout => \MyComponent_1|b[3]~feeder_combout\);

-- Location: FF_X40_Y20_N1
\MyComponent_1|b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MyComponent_2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \MyComponent_1|b[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MyComponent_1|b\(3));
END structure;


