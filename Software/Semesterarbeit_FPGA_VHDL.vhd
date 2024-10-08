library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

-------------------------------------------------------------------------------------------------------------------------------------------------------------
--					ENTITY 								-- Die Entitty entspricht den ein - und Ausgangspins des Moduls
-------------------------------------------------------------------------------------------------------------------------------------------------------------

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
		confirm				:	in		std_logic;
		set_LED				:	out 	std_logic;
		show_LED				:	out	std_logic;
		reset_LED			:	out	std_logic;
		index_0_LED			:	out	std_logic;
		index_1_LED			:	out	std_logic;
		index_2_LED			:	out	std_logic;
		index_3_LED			:	out	std_logic;
		sec_0_LED			:	out	std_logic;
		red					:	out	std_logic_vector(3 downto 0);
		green					:	out	std_logic_vector(3 downto 0);
		blue					:	out	std_logic_vector(3 downto 0);
		hsync_out			:	out	std_logic;
		vsync_out			:	out	std_logic
		);


end Semesterarbeit_FPGA_VHDL;

-------------------------------------------------------------------------------------------------------------------------------------------------------------
--						ARCHITECTURE					-- In der achiecture werden interne Signale definiert
-------------------------------------------------------------------------------------------------------------------------------------------------------------
architecture Beh_Semesterarbeit_FPGA_VHDL of Semesterarbeit_FPGA_VHDL is	-- Hier werden die internen Signale deifniert

component VGA_SYNC is
port (
	vga_clk	:	in  std_logic;
	hsync		:	out std_logic;
	vsync		:	out std_logic;
	r			:	out std_logic_vector(3 downto 0);
	g			:	out std_logic_vector(3 downto 0);
	b			:	out std_logic_vector(3 downto 0)
);
end component VGA_SYNC;
---------------------------------------------------------------------------------------------------------------------------------------------------------------
component pll is 
port (
	areset		: IN STD_LOGIC  := '0';
	inclk0		: IN STD_LOGIC  := '0';
	c0				: OUT STD_LOGIC ;
	locked		: OUT STD_LOGIC 
);
end component pll;
---------------------------------------------------------------------------------------------------------------------------------------------------------------
	signal	sec_0_ena		:		std_logic;											--Segment0, 0-9 muss angezeigt werden
	signal	sec_1_ena		:		std_logic;											--Segment1, 0-5 muss angezeigt werden
	signal	min_0_ena		:		std_logic;
	signal	min_1_ena		:		std_logic;
	signal	hr_0_ena			:		std_logic;
	signal	hr_1_ena			:		std_logic;
	signal	clock_divider	:		std_logic_vector (25 downto 0);				-- 50MHz / 50*10^6 = 1
	signal 	counter_sec_0	:		integer range 0 to 10 := 0;				
	signal	counter_sec_1	:		integer range 0 to 6 := 0;				
	signal	counter_min_0	:		integer range 0 to 10 := 0;
	signal 	counter_min_1	:		integer range 0 to 6 := 0;
	signal	counter_hr_0	:		integer range 0 to 10 := 0;
	signal 	counter_hr_1	:		integer range 0 to 2 := 0;
	signal 	evening_ena		:		std_logic;
	signal	index				:		std_logic_vector (1 downto 0);				-- Um herauszufinden, welche Ziffer gerade gestellt wird
	signal   blink          :     std_logic;											-- f= 1Hz
	signal 	accept			:		std_logic;
	signal 	accept_confirm	:		std_logic;
	
	
	type 		state_type is (set_time, show_clock);									-- Das sind alle vorhandenen "states"
	signal	state				: 		state_type;											-- State Machine Register
	attribute syn_encoding	:		string;
	attribute syn_encoding of state_type : type is "safe";						--Sichere Maschine, d.h. sie geht von einem illegalem Zustand in den Reset Zustand
	
	
	signal	clk_out_clk_VGA_SYNC	:	std_logic;
	signal 	r_VGA_SYNC		:		std_logic_vector(3 downto 0);
	signal	g_VGA_SYNC		:		std_logic_vector(3 downto 0);
	signal	b_VGA_SYNC		:		std_logic_vector(3 downto 0);
	signal	hsync_VGA_SYNC	:		std_logic;
	signal	vsync_VGA_SYNC	:		std_logic;
	
	
begin

MyComponent_1 : VGA_SYNC				-- Hier werden die Signale miteinander verbunden
	port map(
		vga_clk	=>	clk_out_clk_VGA_SYNC,
		r			=> red,
		g			=> green,
		b			=> blue,
		hsync		=>	hsync_VGA_SYNC,
		vsync		=>	vsync_VGA_SYNC		
);

MyComponent_2 : pll
	port map(
		inclk0			=>	g_clk,
		c0					=>	clk_out_clk_VGA_SYNC
);
		
-------------------------------------------------------------------------------------------------------------------------------------------------------------
State_Machine:
process (g_clk, reset)
begin

	if (rising_edge(g_clk)) then					-- Damit der Prozess synchron abläuft
		case state is
		
			when show_clock => 
				
-------------------------------------------------------------------------------------------------------------------------------------------------------------
--												 SHOW_CLOCK 
-------------------------------------------------------------------------------------------------------------------------------------------------------------
				
				if (set_switch = '0') then					-- Zustandsabfrage
					state <= show_clock;
					else state  <= 	set_time;
				end if;
				
				if (set_switch = '0') then
					dec_point <= '0';						-- Dezimalpunkt für Trennung von Stunden und Minuten auf dem 7-Segment.
				end if;
				
				sec_0_LED <= blink;							-- Diese LED blinkt im Sekundentakt
				show_LED		<= '1';						-- Im Zustand show_clock beleuchtet
				set_LED		<= '0';							-- Im Zustand show_clock dunkel
				
				if (counter_hr_1 = 2) then
					evening_ena <= '1';
				else evening_ena <= '0';
				end if;
				
				clock_divider <= clock_divider + '1'; 		-- NebenlÃ¤ufige Anweisung!! Mit ihnen wird die kombinatorische Logik erzeugt	
				if sec_0_ena ='1' then
					blink <= not blink;
				end if;			
				if (clock_divider = 50000000-1) then			-- bei 50(1s := 1us, nei 50e6 := 1s=1s); -1 weil des Wert erst am Ende des Prozesses angenommen wird
					clock_divider <= "00" & x"000000";
					sec_0_ena 	<= '1';
				else sec_0_ena <= '0';
				end if;
						
				if (sec_0_ena = '1') then					-- Erstes Digit, SEKUNDE 0-9
					counter_sec_0 <= counter_sec_0 + 1;
				end if;
				
				if (counter_sec_0 = 10) then				
					counter_sec_0 <= 0;
					sec_1_ena <= '1';
					else sec_1_ena <= '0';
				end if;
				
				
				if (sec_1_ena = '1') then					-- Zweites Digit, Sekunde 0-5
					counter_sec_1 <= counter_sec_1 + 1;
				end if;
				
				if (counter_sec_1 = 6) then
					counter_sec_1 <= 0;
					min_0_ena <= '1';
					else min_0_ena <= '0';
				end if;
				
				if (min_0_ena = '1') then					-- Erstes Digit, Minute 0-9
					counter_min_0 <= counter_min_0 + 1;
				end if;
				
				if (counter_min_0 = 10) then
					counter_min_0 <= 0;
					min_1_ena <= '1';
					else min_1_ena <= '0';
				end if;
				
				if (min_1_ena = '1') then					-- Zweites Digit, Minute 0-5
					counter_min_1 <= counter_min_1 + 1;
				end if;
				
				if (counter_min_1 = 6) then
					counter_min_1 <= 0;
					hr_0_ena <= '1';
					else hr_0_ena <='0';
				end if;
								
				if (hr_0_ena = '1') then					-- Erstes Digit, Stunde 0-9 bzw. 0-3
					counter_hr_0 <= counter_hr_0 + 1;
				end if;
				
				if (evening_ena = '0' and counter_hr_0 = 10) then
					counter_hr_0 <= 0;
					hr_1_ena <= '1';
				else hr_1_ena <= '0';
				end if;
				
				if (evening_ena = '1' and counter_hr_0 = 4) then 
					counter_hr_0 <= 0;
					hr_1_ena <= '1';
				end if;
				
				if (hr_1_ena = '1') then 					-- Zweites Digit, Stunde 0-2
					counter_hr_1 <= counter_hr_1 + 1;
				end if;
				
				
				if (counter_hr_1 = 2 and counter_hr_0 = 3 and counter_min_1 = 5 and counter_min_0 = 9 and counter_sec_1 = 5 and counter_sec_0 = 10) then  -- Tageswechsel
					counter_sec_0 <= 0;
					counter_sec_1 <= 0;
					counter_min_0 <= 0;
					counter_min_1 <= 0;
					counter_hr_0  <= 0;
					counter_hr_1  <= 0;
				end if;
				
assert (false) report "Fertig !!" severity note; -- Text an Konsole ausgeben (Modelsim)		

-------------------------------------------------------------------------------------------------------------------------------------------------------------
--										SET TIME
-------------------------------------------------------------------------------------------------------------------------------------------------------------
		
when set_time =>

			if (set_switch = '0') then						-- Zustandsabfrage
			state <= show_clock;
			else state  <= 	set_time;
			end if;
		
			set_LED <= '1';									-- Im Zustand set_time beleuchtet			
			show_LED <= '0';									-- Im Zustand set_time dunkel
						
			if (counter_up = '1') then						-- Hilfsignal um sicherzustellen, dass die gewünschte Ziffer beim Drücken von counter_up nur um eins erhöht wird
				accept <= '0';
			end if;
			
			if (confirm = '1' ) then						-- Mit dieser Taste wird die einzustellende Ziffer gewechelt
				accept_confirm <= '0';
			end if;
			
			if (index = 0 and counter_hr_1 = 2 and counter_hr_0 > 3) then -- Hier springt die Ziffer bei erreichen vom Wert 3 wieder auf 0 zurück
				counter_hr_0 <= 0;
			end if;
-------------------------------------------------------------------------------------------------------------------------------------------------------------
			if (index = 0) then								
				index_0_LED <= '1';
				if (counter_up = '0' and accept = '0') then
					counter_hr_1 <= counter_hr_1 + 1;

					accept <= '1';
				end if;
				
				if (counter_hr_1 = 3) then
					counter_hr_1 <= 0;
				end if;
				
				if (confirm = '0' and accept_confirm = '0') then
					index <= index + 1;
					accept_confirm <= '1';
				end if;
			else index_0_LED <= '0';
			end if;
-------------------------------------------------------------------------------------------------------------------------------------------------------------
			-- In den folgenden zwei if-Verzweigungen mussste darauf geachtet werden, dass man keine "illegale" Uhrzeit einstellen kann.
			-- Zum Beispiel 28:00 Uhr
			
			if (index = 1 and counter_hr_1 < 2) then	-- counter_hr_0 darf in diesem Zustand von 0-9 zählen
				
				if (counter_up = '0' and accept = '0') then
					counter_hr_0 <= counter_hr_0 + 1;
					accept <= '1';
					if (counter_hr_0 = 9) then 
						counter_hr_0 <= 0;
					end if;
				end if;
								
				if (confirm = '0' and accept_confirm = '0') then
					index <= index + 1;
					accept_confirm <= '1';
				end if;
			end if;	
			
			if (index = 1 and counter_hr_1 = 2) then	-- counter_hr_0 darf hier nur bis 3 zählen, da es die Uhrzeit 28:00 z.B. Uhr nicht gibt!
				
				if (counter_up = '0' and accept = '0') then
					counter_hr_0 <= counter_hr_0 + 1;
					accept <= '1';
					if (counter_hr_0 = 3) then 
						counter_hr_0 <= 0;
					end if;
				end if;
								
				if (confirm = '0' and accept_confirm = '0') then
					index <= index + 1;
					accept_confirm <= '1';
				end if;
			end if;	
-------------------------------------------------------------------------------------------------------------------------------------------------------------
			if (index = 1) then 		-- Die ansteurung der index_1_LED musste in eine seperate Funktion gepackt werden, da sie 
				index_1_LED <= '1';	--	bei (index=1 and counter_hr_0 < 2) nicht funktionierte
			else index_1_LED <= '0';--	Bei (index=1 and counter_hr_0 =2) schon.
			end if;
				
			if (index = 2) then
				index_2_LED <= '1';
				if (counter_up = '0' and accept = '0') then
					counter_min_1 <= counter_min_1 + 1;
					accept <= '1';
				end if;
				
				if (counter_min_1 = 6) then
					counter_min_1 <= 0;
				end if;
				
				if (confirm = '0' and accept_confirm = '0') then
					index <= index + 1;
					accept_confirm <= '1';
				end if;
			else index_2_LED <= '0';
			end if;
-------------------------------------------------------------------------------------------------------------------------------------------------------------
			if (index = 3) then
				index_3_LED <= '1';
				if (counter_up = '0' and accept = '0') then
					counter_min_0 <= counter_min_0 + 1;
					accept <= '1';
				end if;
				
				if (counter_min_0 = 10) then
					counter_min_0 <= 0;
				end if;
				
				if (confirm = '0' and accept_confirm = '0') then
					index <= "00";
					accept_confirm <= '1';
				end if;
			else index_3_LED <= '0';
			end if;
		end case;
-------------------------------------------------------------------------------------------------------------------------------------------------------------
		if (reset = '1') then						-- Dieser reset wird nur zu Simulationszwecken verwendet, da der Zustand von counter_sec_0 sonst U ist!
					clock_divider <= "00" &  x"000000";
					sec_0_ena				<= '0';
					sec_1_ena				<= '0';
					min_0_ena				<= '0';
					min_1_ena				<= '0';
					hr_0_ena					<= '0';
					hr_1_ena					<= '0';
					counter_sec_0 			<= 0;
					counter_sec_1 			<= 0;
					counter_min_0 			<= 0;
					counter_min_1 			<= 0;
					counter_hr_0 			<= 0;
					counter_hr_1			<= 0;
					evening_ena 			<= '0';
					index						<= "00";
					blink          		<= '0';
					accept					<= '0';
					accept_confirm			<= '0';
					reset_LED				<= '0';
		end if;
	end if;
-------------------------------------------------------------------------------------------------------------------------------------------------------------				
end process State_Machine;

with counter_min_0 select
	Segment0 <=   "1000000" when 0, -- 0 = LED ein
					  "1111001" when 1, --     0  
					  "0100100" when 2, --    ---
					  "0110000" when 3, --  5| 6 |1
					  "0011001" when 4, --    ---
					  "0010010" when 5, --  4|   |2
					  "0000010" when 6, --    ---
					  "1111000" when 7, --     3
					  "0000000" when 8,
					  "0010000" when 9,
					  "1111111" when others; -- Bei anderen Werten: alle Leds aus
					  
with counter_min_1 select
	Segment1 <=	  "1000000" when 0, -- 0 = LED ein		dec: 0
					  "1111001" when 1, --     0  			dec: 1
					  "0100100" when 2, --    ---				dec: 2
					  "0110000" when 3, --  5| 6 |1			dec: 3
					  "0011001" when 4, --    ---				dec: 4
					  "0010010" when 5, --  4|   |2			dec: 5
--					  "0000010" when 6, --    ---				dec: 6	Nicht im Wertebereich von counter_min_1
--					  "1111000" when 7, --     3				dec: 7	Nicht im Wertebereich von counter_min_1
--					  "0000000" when 8, --						dec: 8	Nicht im Wertebereich von counter_min_1
--					  "0010000" when 9, --						dec: 9	Nicht im Wertebereich von counter_min_1
					  "1111111" when others; -- Bei anderen Werten: alle Leds aus
					  
with counter_hr_0 select
	Segment2 <=	  "1000000" when 0, -- 0 = LED ein		dec: 0
					  "1111001" when 1, --     0  			dec: 1
					  "0100100" when 2, --    ---				dec: 2
					  "0110000" when 3, --  5| 6 |1			dec: 3
					  "0011001" when 4, --    ---				dec: 4	Nicht im Wertebereich von counter_hr_0
					  "0010010" when 5, --  4|   |2			dec: 5	Nicht im Wertebereich von counter_hr_1
					  "0000010" when 6, --    ---				dec: 6	Nicht im Wertebereich von counter_hr_1
					  "1111000" when 7, --     3				dec: 7	Nicht im Wertebereich von counter_hr_1
					  "0000000" when 8, --						dec: 8	Nicht im Wertebereich von counter_hr_1
					  "0010000" when 9, --						dec: 9	Nicht im Wertebereich von counter_hr_1
					  "1111111" when others; -- Bei anderen Werten: alle Leds aus	
					  
with counter_hr_1 select
	Segment3	<=	  "1000000" when 0, -- 0 = LED ein		dec: 0
					  "1111001" when 1, --     0  			dec: 1
					  "0100100" when 2, --    ---				dec: 2
--					  "0110000" when 3, --  5| 6 |1			dec: 3	Nicht im Wertebereich von counter_hr_1
--					  "0011001" when 4, --    ---				dec: 4	Nicht im Wertebereich von counter_hr_1
--					  "0010010" when 5, --  4|   |2			dec: 5	Nicht im Wertebereich von counter_hr_1
--					  "0000010" when 6, --    ---				dec: 6	Nicht im Wertebereich von counter_hr_1
--					  "1111000" when 7, --     3				dec: 7	Nicht im Wertebereich von counter_hr_1
--					  "0000000" when 8, --						dec: 8	Nicht im Wertebereich von counter_hr_1
--					  "0010000" when 9, --						dec: 9	Nicht im Wertebereich von counter_hr_1
					  "1111111" when others; -- Bei anderen Werten: alle Leds aus
	  
end Beh_Semesterarbeit_FPGA_VHDL;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	