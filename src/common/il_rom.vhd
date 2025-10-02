----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:14:23 10/01/2025 
-- Design Name: 
-- Module Name:    il_rom - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity il_rom is
    Port ( a : in  STD_LOGIC_VECTOR (8 downto 0);
           d : out  STD_LOGIC_VECTOR (7 downto 0));
end il_rom;

architecture Behavioral of il_rom is

type rom512x8 is array (0 to 511) of std_logic_vector(7 downto 0);
--
-- From: http://www.ittybittycomputers.com/IttyBitty/TinyBasic/TinyBasic.asm
-- 
constant il_rom: rom512x8 := (
		X"24", X"3E", X"91", X"27", X"10", X"E1", X"59", X"C5", X"2A", X"56", X"10", X"11", X"2C", X"8B", X"4C",
		X"45", X"D4", X"A0", X"80", X"BD", X"30", X"BC", X"E0", X"13", X"1D", X"94", X"47", X"CF", X"88", X"54",
		X"CF", X"30", X"BC", X"E0", X"10", X"11", X"16", X"80", X"53", X"55", X"C2", X"30", X"BC", X"E0", X"14",
		X"16", X"90", X"50", X"D2", X"83", X"49", X"4E", X"D4", X"E5", X"71", X"88", X"BB", X"E1", X"1D", X"8F",
		X"A2", X"21", X"58", X"6F", X"83", X"AC", X"22", X"55", X"83", X"BA", X"24", X"93", X"E0", X"23", X"1D",
		X"30", X"BC", X"20", X"48", X"91", X"49", X"C6", X"30", X"BC", X"31", X"34", X"30", X"BC", X"84", X"54",
		X"48", X"45", X"CE", X"1C", X"1D", X"38", X"0D", X"9A", X"49", X"4E", X"50", X"55", X"D4", X"A0", X"10",
		X"E7", X"24", X"3F", X"20", X"91", X"27", X"E1", X"59", X"81", X"AC", X"30", X"BC", X"13", X"11", X"82",
		X"AC", X"4D", X"E0", X"1D", X"89", X"52", X"45", X"54", X"55", X"52", X"CE", X"E0", X"15", X"1D", X"85",
		X"45", X"4E", X"C4", X"E0", X"2D", X"98", X"4C", X"49", X"53", X"D4", X"EC", X"24", X"00", X"00", X"00",
		X"00", X"0A", X"80", X"1F", X"24", X"93", X"23", X"1D", X"30", X"BC", X"E1", X"50", X"80", X"AC", X"59",
		X"85", X"52", X"55", X"CE", X"38", X"0A", X"86", X"43", X"4C", X"45", X"41", X"D2", X"2B", X"84", X"52",
		X"45", X"CD", X"1D", X"A0", X"80", X"BD", X"38", X"14", X"85", X"AD", X"30", X"D3", X"17", X"64", X"81",
		X"AB", X"30", X"D3", X"85", X"AB", X"30", X"D3", X"18", X"5A", X"85", X"AD", X"30", X"D3", X"19", X"54",
		X"2F", X"30", X"E2", X"85", X"AA", X"30", X"E2", X"1A", X"5A", X"85", X"AF", X"30", X"E2", X"1B", X"54",
		X"2F", X"98", X"52", X"4E", X"C4", X"0A", X"80", X"80", X"12", X"0A", X"09", X"29", X"1A", X"0A", X"1A",
		X"85", X"18", X"13", X"09", X"80", X"12", X"01", X"0B", X"31", X"30", X"61", X"72", X"0B", X"04", X"02",
		X"03", X"05", X"03", X"1B", X"1A", X"19", X"0B", X"09", X"06", X"0A", X"00", X"00", X"1C", X"17", X"2F",
		X"8F", X"55", X"53", X"D2", X"80", X"A8", X"30", X"BC", X"31", X"2A", X"31", X"2A", X"80", X"A9", X"2E",
		X"2F", X"A2", X"12", X"2F", X"C1", X"2F", X"80", X"A8", X"30", X"BC", X"80", X"A9", X"2F", X"83", X"AC",
		X"38", X"BC", X"0B", X"2F", X"80", X"A8", X"52", X"2F", X"84", X"BD", X"09", X"02", X"2F", X"8E", X"BC",
		X"84", X"BD", X"09", X"93", X"2F", X"84", X"BE", X"09", X"05", X"2F", X"09", X"91", X"2F", X"80", X"BE",
		X"84", X"BD", X"09", X"06", X"2F", X"84", X"BC", X"09", X"95", X"2F", X"09", X"04", X"2F", X"00", X"00",
		X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
		X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
		X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
		X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
		X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
		X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
		X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
		X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
		X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
		X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
		X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
		X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
		X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
		X"00", X"00"
);

begin

	d <= il_rom(to_integer(unsigned(a)));

end Behavioral;

