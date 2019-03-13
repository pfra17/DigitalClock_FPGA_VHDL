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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "12/15/2018 14:45:56"
                                                            
-- Vhdl Test Bench template for design  :  Semesterarbeit_FPGA_VHDL
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Semesterarbeit_FPGA_VHDL_vhd_tst IS
END Semesterarbeit_FPGA_VHDL_vhd_tst;
ARCHITECTURE Semesterarbeit_FPGA_VHDL_arch OF Semesterarbeit_FPGA_VHDL_vhd_tst IS
-- constants   
constant clk_period	:	time := 10 ns;          -- Dauer einer clk Perdiode                                      
                                              
-- signals                                                   
SIGNAL confirm : STD_LOGIC;
SIGNAL counter_up : STD_LOGIC;
SIGNAL dec_point : STD_LOGIC;
SIGNAL g_clk : STD_LOGIC;
SIGNAL index_0_LED : STD_LOGIC;
SIGNAL index_1_LED : STD_LOGIC;
SIGNAL index_2_LED : STD_LOGIC;
SIGNAL index_3_LED : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL reset_LED : STD_LOGIC;
SIGNAL sec_0_LED : STD_LOGIC;
SIGNAL segment0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segment1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segment2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segment3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL set_LED : STD_LOGIC;
SIGNAL set_switch : STD_LOGIC;
SIGNAL show_LED : STD_LOGIC;
COMPONENT Semesterarbeit_FPGA_VHDL
	PORT (
	confirm : IN STD_LOGIC;
	counter_up : IN STD_LOGIC;
	dec_point : OUT STD_LOGIC;
	g_clk : IN STD_LOGIC;
	index_0_LED : OUT STD_LOGIC;
	index_1_LED : OUT STD_LOGIC;
	index_2_LED : OUT STD_LOGIC;
	index_3_LED : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	reset_LED : OUT STD_LOGIC;
	sec_0_LED : OUT STD_LOGIC;
	segment0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	segment1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	segment2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	segment3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	set_LED : OUT STD_LOGIC;
	set_switch : IN STD_LOGIC;
	show_LED : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Semesterarbeit_FPGA_VHDL
	PORT MAP (
-- list connections between master ports and signals
	confirm => confirm,
	counter_up => counter_up,
	dec_point => dec_point,
	g_clk => g_clk,
	index_0_LED => index_0_LED,
	index_1_LED => index_1_LED,
	index_2_LED => index_2_LED,
	index_3_LED => index_3_LED,
	reset => reset,
	reset_LED => reset_LED,
	sec_0_LED => sec_0_LED,
	segment0 => segment0,
	segment1 => segment1,
	segment2 => segment2,
	segment3 => segment3,
	set_LED => set_LED,
	set_switch => set_switch,
	show_LED => show_LED
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once      
	reset <= '1';					-- Bei beginn der Simulation muss immer ein Reset ausgeführt werden!
	wait for 100 ns;
	reset <= '0';	
	
WAIT;                                                       
END PROCESS init;    

Clock: process
begin
	g_clk <= '0';
	wait for 10 ns;
	g_clk <= '1';
	wait for 10 ns;
end process Clock;
                                       
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
wait for 100 ns;
set_switch <= '1';
wait for 10 ns;
counter_up <= '0';
wait for 10 ns;
counter_up <= '1';	-- counter_hr_1 = 1
wait for 10 ns;
confirm <= '0';		  
wait for 10 ns;
confirm <= '1';

wait for 10 ns;
counter_up <= '0';
wait for 10 ns;
counter_up <=  '1';	-- counter_hr_0 = 1
wait for 10 ns;
confirm <= '0';		  
wait for 10 ns;
confirm <= '1';
wait for 10 ns;

counter_up <= '0';
wait for 10 ns;
counter_up <=  '1';	-- counter_min_1 = 1
wait for 10 ns;
confirm <= '0';		  
wait for 10 ns;
confirm <= '1';
wait for 10 ns;

counter_up <= '0';
wait for 10 ns;
counter_up <=  '1';	-- counter_min_0 = 1
wait for 10 ns;
confirm <= '0';		  
wait for 10 ns;
confirm <= '1';	
wait for 10 ns;
set_switch <= '0';
wait for 1000 ns;
--------------------------------------------------------------------------------------------------------------------------------------
set_switch <= '1';
wait for 100 ns;

counter_up <= '0';
wait for 10 ns;
counter_up <= '1';	-- counter_hr_1 = 2
wait for 10 ns;
confirm <= '0';
wait for 10 ns;
confirm <= '1';
wait for 10 ns;

counter_up <= '0';
wait for 100 ns;
counter_up <= '1';	-- counter_hr_0 = 2
wait for 100 ns;

counter_up <= '0';
wait for 100 ns;
counter_up <= '1';	-- counter_hr_0 = 3
wait for 100 ns;

counter_up <= '0';
wait for 100 ns;
counter_up <= '1';	-- counter_hr_0 = 0 , Hier muss der counter_hr_0 auf Null, da es Abends ist!
wait for 100 ns;
 
set_switch <= '0';

		  
WAIT;                                                        
END PROCESS always;                                          
END Semesterarbeit_FPGA_VHDL_arch;
