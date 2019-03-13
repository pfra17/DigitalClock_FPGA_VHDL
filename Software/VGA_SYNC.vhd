library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
----------------------------------------------------------------------------------------------------------------------------------------------------
entity VGA_SYNC is
port (
	vga_clk	:	in  std_logic;
	hsync		:	out std_logic;
	vsync		:	out std_logic;
	r			:	out std_logic_vector(3 downto 0);
	g			:	out std_logic_vector(3 downto 0);
	b			:	out std_logic_vector(3 downto 0)
);
end VGA_SYNC;
----------------------------------------------------------------------------------------------------------------------------------------------------
architecture main of VGA_SYNC is

signal hpos	: integer range 0 to 1688:=0;
signal vpos	: integer range 0 to 1066:=0;

begin
process (vga_clk)
begin
if (rising_edge(vga_clk)) then 

	if (hpos = 1048 or vpos = 554) then 
		r <= (others => '1');
		g <= (others => '1');
		b <= (others => '1');
	else 
		r <= (others => '0');
		g <= (others => '0');
		b <= (others => '0');
	end if;

	if (hpos < 1688) then 
		hpos <= hpos + 1;
	else hpos <= 0;

		
		if (vpos < 1066) then
			vpos <= vpos + 1;
		else vpos <= 0;
		end if;
	end if;
	
	if (hpos > 48 and hpos < 160) then 
		hsync <= '0';
	else hsync <= '1';
	end if;
	
	if (vpos > 0 and vpos < 4) then
		vsync <= '0';
	else vsync <= '1';
	end if;
	
	if ((hpos > 0 and hpos < 408) or (vpos > 0 and vpos < 42)) then 
		r <= (others => '0');
		g <= (others => '0');
		b <= (others => '0');
	end if;
end if;
end process;
end main;
----------------------------------------------------------------------------------------------------------------------------------------------------