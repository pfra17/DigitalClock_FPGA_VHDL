#************************************************************
# THIS IS A WIZARD-GENERATED FILE.                           
#
# Version 13.1.0 Build 162 10/23/2013 SJ Web Edition
#
#************************************************************

# Copyright (C) 1991-2013 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.



# Clock constraints

create_clock -name "g_clk" -period 20.000ns [get_ports {g_clk}] -waveform {0.000 10.000}
set CLK {MyComponent_2|altpll_component|auto_generated|pll1|clk[0]}


# Automatically constrain PLL and other generated clocks
derive_pll_clocks -create_base_clocks

# Automatically calculate clock uncertainty to jitter and other effects.
derive_clock_uncertainty

# tsu/th constraints

set_input_delay -clock "g_clk" -max 5.000ps [get_ports {confirm counter_up g_clk set_switch}] 
set_input_delay -clock "g_clk" -min 5.000ps [get_ports {confirm counter_up g_clk set_switch}] 

set_input_delay -clock "g_clk"  -max 5.000ps [get_ports {reset}] 
set_input_delay -clock "g_clk"  -min 5.000ps [get_ports {reset}] 



# tco constraints

set_output_delay -clock "$CLK" -max 0.000ns [get_ports {blue blue[0] blue[1] blue[2] blue[3] green green[0] green[1] green[2] green[3] hsync_out red red[0] red[1] red[2] red[3] vsync_out}] 
set_output_delay -clock "$CLK" -min 0.000ns [get_ports {blue blue[0] blue[1] blue[2] blue[3] green green[0] green[1] green[2] green[3] hsync_out red red[0] red[1] red[2] red[3] vsync_out}] 

set_output_delay -clock "g_clk" -max 0.000ns [get_ports {dec_point index_0_LED index_1_LED index_2_LED index_3_LED reset_LED sec_0_LED segment0 segment0[0] segment0[1] segment0[2] segment0[3] segment0[4] segment0[5] segment0[6] segment1 segment1[0] segment1[1] segment1[2] segment1[3] segment1[4] segment1[5] segment1[6] segment2 segment2[0] segment2[1] segment2[2] segment2[3] segment2[4] segment2[5] segment2[6] segment3 segment3[0] segment3[1] segment3[2] segment3[3] segment3[4] segment3[5] segment3[6] set_LED show_LED}] 
set_output_delay -clock "g_clk" -min 0.000ns [get_ports {dec_point index_0_LED index_1_LED index_2_LED index_3_LED reset_LED sec_0_LED segment0 segment0[0] segment0[1] segment0[2] segment0[3] segment0[4] segment0[5] segment0[6] segment1 segment1[0] segment1[1] segment1[2] segment1[3] segment1[4] segment1[5] segment1[6] segment2 segment2[0] segment2[1] segment2[2] segment2[3] segment2[4] segment2[5] segment2[6] segment3 segment3[0] segment3[1] segment3[2] segment3[3] segment3[4] segment3[5] segment3[6] set_LED show_LED}] 

# tpd constraints

