library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity VGA is
port (
clock_50: in std_logic_vector(1 downto 0);
vga_hs, vga_vs: out std_logic;
vga_r, vga_g, vga_b: out std_logic_vector(3 downto 0)
);
end vga;


architecture main of vga is

signal vgaclk, reset: std_logic:= '0';
---------------------------------------------------------------
component PLL is
     port (
         clk_in_clk  : in  std_logic := 'X'; -- clk
         reset_reset : in  std_logic := 'X'; -- reset
         clk_out_clk : out std_logic         -- clk
     );
end component PLL;

---------------------------------------------------------------
component sync is 
port(
clk: in std_logic;
hsync, vsync: out std_logic;
r, g, b: out std_logic_vector(3 downto 0)
);
end component sync;

begin
c1: sync port map (vgaclk, vga_hs, vga_vs, vga_r, vga_g, vga_b);
c2: pll port map (clock_50(0), reset, vgaclk);
end main;