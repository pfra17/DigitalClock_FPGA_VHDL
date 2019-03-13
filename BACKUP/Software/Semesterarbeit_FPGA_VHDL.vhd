library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

-----------------------------------------------
--					ENTITY 								-- Die Entitty entspricht den ein - und Ausgangspins des Moduls
-----------------------------------------------

entity Semesterarbeit_FPGA_VHDL is 				
	port (
		g_clk					:	in		std_logic;
		reset					:	in		std_logic;
		segment0				:	out 	std_logic_vector(6 downto 0);
		segment1				: 	out 	std_logic_vector(6 downto 0);
		segment2				: 	out 	std_logic_vector(6 downto 0);
		segment3				:	out	std_logic_vector(6 downto 0);
		dec_point			:	out	std_logic;
		set_switch			:	in		std_logic;
		counter_up			:	in		std_logic;
		counter_down		:	in		std_logic;
		confirm				:	in		std_logic;
		set_LED				:	out 	std_logic;
		show_LED				:	out	std_logic);
				
end Semesterarbeit_FPGA_VHDL;

-----------------------------------------------
--						ARCHITECTURE					-- In der achiecture werden interne Signale definiert
-----------------------------------------------

architecture Beh_Semesterarbeit_FPGA_VHDL of Semesterarbeit_FPGA_VHDL is	-- Hier werden die internen Signale deifniert
	signal	sec_0_ena		:		std_logic;											--Segment0, 0-9 muss angezeigt werden
	signal	sec_1_ena		:		std_logic;											--Segment1, 0-5 muss angezeigt werden
	signal	min_0_ena		:		std_logic;
	signal	min_1_ena		:		std_logic;
	signal	hr_0_ena			:		std_logic;
	signal	hr_1_ena			:		std_logic;
	signal	clock_divider	:		std_logic_vector (25 downto 0);				-- 50MHz / 50*10^6 = 1
	signal 	counter_sec_0	:		std_logic_vector (3 downto 0);				-- 2^4 = 16
	signal	counter_sec_1	:		std_logic_vector (3 downto 0);				-- 2^4 = 16
	signal	counter_min_0	:		std_logic_vector (3 downto 0);
	signal 	counter_min_1	:		std_logic_vector (3 downto 0);
	signal	counter_hr_0	:		std_logic_vector (3 downto 0);
	signal 	counter_hr_1	:		std_logic_vector (3 downto 0);
	signal	index				:		std_logic_vector (2 downto 0);				-- Um herauszufinden, welche Ziffer gerade gestellt wird
	signal   blink          :     std_logic;
	
	type 		state_type is (set_time, show_clock);									-- Das sind alle vorhandenen "states"
	signal	state				: 		state_type;											-- State Machine Register
	attribute syn_encoding	:		string;
	attribute syn_encoding of state_type : type is "safe";						--Sichere Maschine, d.h. sie geht von einem illegalem Zustand in den Reset Zustand
	
begin

dec_point <= '0';		-- Dezimalpunkt für Trennung von Stunden und Minuten auf dem 7-Segment.

State_Machine:
process (g_clk, reset)
begin
	if (rising_edge(g_clk)) then					-- Damit der Prozess synchron abläuft
		case state is
		
			when show_clock => 
				
				-------------------------------------------------------------------
				-------------------------- SHOW_CLOCK -----------------------------
				-------------------------------------------------------------------
				
				if (set_switch = '1') then
					state <= show_clock;
					else state  <= 	set_time;
				end if;
				
				show_LED <= blink;
				set_LED <= '1';
				
				clock_divider <= clock_divider + '1'; 		-- Nebenläufige Anweisung!! Mit ihnen wird die kombinatorische Logik erzeugt	
				if sec_0_ena ='1' then
					blink <= not blink;
				end if;			
				if (clock_divider = 50000000-1) then		-- bei 50(1s := 1us, nei 50e6 := 1s=1s); -1 weil des Wert erst am Ende des Prozesses angenommen wird
					clock_divider <= "00" & x"000000";
					sec_0_ena 	<= '1';
				else sec_0_ena <= '0';
				end if;
						
				if (sec_0_ena = '1') then					-- Erstes Digit, SEKUNDE 0-9
					counter_sec_0 <= counter_sec_0 + 1;
				end if;
				
				if (counter_sec_0 = 10) then				-- 
					counter_sec_0 <= x"0";
					sec_1_ena <= '1';
					else sec_1_ena <= '0';
				end if;
				
				
				if (sec_1_ena = '1') then
					counter_sec_1 <= counter_sec_1 + 1;
				end if;
				
				if (counter_sec_1 = 6) then
					counter_sec_1 <= x"0";
					min_0_ena <= '1';
					else min_0_ena <= '0';
				end if;
				
				if (min_0_ena = '1') then
					counter_min_0 <= counter_min_0 + 1;
				end if;
				
				if (counter_min_0 = 10) then
					counter_min_0 <= x"0";
					min_1_ena <= '1';
					else min_1_ena <= '0';
				end if;
				
				if (min_1_ena = '1') then
					counter_min_1 <= counter_min_1 + 1;
				end if;
				
				if (counter_min_1 = 6) then
					counter_min_1 <= x"0";
					hr_0_ena <= '1';
					else hr_0_ena <='0';
				end if;
				
				if (hr_0_ena = '1') then
					counter_hr_0 <= counter_hr_0 + 1;
				end if;
				
				if (counter_hr_0 = 4) then
					counter_hr_0 <= x"0";
					hr_1_ena <= '1';
					else hr_1_ena <= '0';
				end if;
				
				if (hr_1_ena = '1') then 
					counter_hr_1 <= counter_hr_1 + 1;
				end if;
				
				if (counter_hr_1 = 2) then
					counter_sec_0 <= x"0";
					counter_sec_1 <= x"0";
					counter_min_0 <= x"0";
					counter_min_1 <= x"0";
					counter_hr_0 <= x"0";
					counter_hr_1 <= x"0";
				end if;
				
assert (false) report "Fertig !!" severity note; -- Text an Konsole ausgeben		
		
when set_time =>
			
			if (set_switch = '1') then
			state <= show_clock;
			else state  <= 	set_time;
			end if;
		
			set_LED <= '0';
			show_LED <= '1';

			if (index = 0) then
				if (counter_up = '0') then
					counter_hr_1 <= counter_hr_1 + 1;
				end if;
				
				if (counter_down = '0') then
					counter_hr_1 <= counter_hr_1 - 1;
				end if;
				
				if (confirm = '0') then
					index <= index + 1;
				end if;
			end if;
			
			if (index = 1) then
				if (counter_up = '0') then
					counter_hr_0 <= counter_hr_0 + 1;
				end if;
				
				if (counter_down = '0') then 
					counter_hr_0 <= counter_hr_0 - 1;
				end if;
				
				if (index = 0) then
					index <= index + 1;
				end if;
			end if;
				
			if (index = 2) then
				if (counter_up = '0') then
					counter_min_1 <= counter_min_1 + 1;
				end if;
				
				if (counter_down = '0') then	
					counter_min_1 <= counter_min_1 - 1;
				end if;
				
				if (confirm = '0') then
					index <= index + 1;
				end if;
			end if;
			
			if (index = 3) then
				if (counter_up = '0') then
					counter_min_0 <= counter_min_0 + 1;
				end if;
				
				if (counter_down = '0') then
					counter_min_0 <= counter_min_0 - 1;
				end if;
			end if;
		end case;
		if (reset = '0') then						-- Dieser reset wird nur zu Simulationszwecken verwendet, da der Zustand von counter_sec_0 sonst U ist!
					clock_divider <= "00" &  x"000000";
					counter_sec_0 	<= x"0";
					counter_sec_1 	<= x"0";
					counter_min_0 	<= x"0";
					counter_min_1 	<= x"0";
					counter_hr_0 	<= x"0";
					counter_hr_1	<= x"0";
					index				<= "000";
					blink          <= '0';
		end if;
	end if;
			
				
end process State_Machine;

with counter_sec_0 select
	Segment0 <=   "1000000" when x"0", -- 0 = LED ein
					  "1111001" when x"1", --     0  
					  "0100100" when x"2", --    ---
					  "0110000" when x"3", --  5| 6 |1
					  "0011001" when x"4", --    ---
					  "0010010" when x"5", --  4|   |2
					  "0000010" when x"6", --    ---
					  "1111000" when x"7", --     3
					  "0000000" when x"8",
					  "0010000" when x"9",
					  "1111111" when others; -- Bei anderen Werten: alle Leds aus
					  
with counter_sec_1 select
	Segment1 <=	  "1000000" when x"0", -- 0 = LED ein		dec: 0
					  "1111001" when x"1", --     0  			dec: 1
					  "0100100" when x"2", --    ---				dec: 2
					  "0110000" when x"3", --  5| 6 |1			dec: 3
					  "0011001" when x"4", --    ---				dec: 4
					  "0010010" when x"5", --  4|   |2			dec: 5
					  "0000010" when x"6", --    ---				dec: 6
					  "1111000" when x"7", --     3				dec: 7	
					  "0000000" when x"8", --						dec: 8
					  "0010000" when x"9", --						dec: 9
					  "1111111" when others; -- Bei anderen Werten: alle Leds aus
					  

with counter_min_0 select
	Segment2 <=	  "1000000" when x"0", -- 0 = LED ein		dec: 0
					  "1111001" when x"1", --     0  			dec: 1
					  "0100100" when x"2", --    ---				dec: 2
					  "0110000" when x"3", --  5| 6 |1			dec: 3
					  "0011001" when x"4", --    ---				dec: 4
					  "0010010" when x"5", --  4|   |2			dec: 5
					  "0000010" when x"6", --    ---				dec: 6
					  "1111000" when x"7", --     3				dec: 7	
					  "0000000" when x"8", --						dec: 8
					  "0010000" when x"9", --						dec: 9
					  "1111111" when others; -- Bei anderen Werten: alle Leds aus	
					  
with counter_min_1 select
	Segment3	<=	  "1000000" when x"0", -- 0 = LED ein		dec: 0
					  "1111001" when x"1", --     0  			dec: 1
					  "0100100" when x"2", --    ---				dec: 2
					  "0110000" when x"3", --  5| 6 |1			dec: 3
					  "0011001" when x"4", --    ---				dec: 4
					  "0010010" when x"5", --  4|   |2			dec: 5
					  "0000010" when x"6", --    ---				dec: 6
					  "1111000" when x"7", --     3				dec: 7	
					  "0000000" when x"8", --						dec: 8
					  "0010000" when x"9", --						dec: 9
					  "1111111" when others; -- Bei anderen Werten: alle Leds aus

	  
end Beh_Semesterarbeit_FPGA_VHDL;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	