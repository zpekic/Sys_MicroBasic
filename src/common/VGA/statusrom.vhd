----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:24:19 11/15/2025 
-- Design Name: 
-- Module Name:    statusrom - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
use work.microbasic_package.all;	-- utilities

entity statusrom is
    Generic (
			line : std_logic_vector(7 downto 0)
			);
    Port ( 
			x : in  STD_LOGIC_VECTOR (7 downto 0); 
			y : in  STD_LOGIC_VECTOR (7 downto 0);
         status : in  STD_LOGIC_VECTOR (11 downto 0);
         char : out  STD_LOGIC_VECTOR (7 downto 0));
end statusrom;

architecture Behavioral of statusrom is

constant symbol_rom: rom256x8 := (
		-----------------
		c(' '), c(' '), c('3'), c('0'), c('0'), c('b'), c('p'), c('s'),
		c(' '), c(' '), c('6'), c('0'), c('0'), c('b'), c('p'), c('s'),
		c(' '), c('1'), c('2'), c('0'), c('0'), c('b'), c('p'), c('s'),
		c(' '), c('2'), c('4'), c('0'), c('0'), c('b'), c('p'), c('s'),
		c(' '), c('4'), c('8'), c('0'), c('0'), c('b'), c('p'), c('s'),
		c(' '), c('9'), c('6'), c('0'), c('0'), c('b'), c('p'), c('s'),
		c('1'), c('9'), c('2'), c('0'), c('0'), c('b'), c('p'), c('s'),
		c('3'), c('8'), c('4'), c('0'), c('0'), c('b'), c('p'), c('s'),
		-----------------
		c('B'), c('t'), c('n'), c('0'), c(' '), c('S'), c('t'), c('p'),
		c(' '), c(' '), c(' '), c(' '), c('4'), c(' '), c('H'), c('z'),
		c(' '), c(' '), c(' '), c('6'), c('4'), c(' '), c('H'), c('z'),
		c('4'), c('.'), c('0'), c('9'), c('6'), c('k'), c('H'), c('z'),
		c('6'), c('.'), c('2'), c('5'), c(' '), c('M'), c('H'), c('z'),
		c('1'), c('2'), c('.'), c('5'), c(' '), c('M'), c('H'), c('z'),
		c('2'), c('5'), c('.'), c('0'), c(' '), c('M'), c('H'), c('z'),
		c('1'), c('0'), c('0'), c(' '), c('M'), c('H'), c('z'), c(' '),
		-----------------
		c('L'), c('S'), c(' '), c(' '), c(' '), c(' '), c(' '), c(' '),
		c('L'), c('E'), c(' '), c(' '), c(' '), c(' '), c(' '), c(' '),
		c('B'), c('P'), c(' '), c(' '), c(' '), c(' '), c(' '), c(' '),
		c('P'), c('r'), c('g'), c('E'), c('n'), c('d'), c(' '), c(' '),
		c('?'), c('?'), c('?'), c('?'), c('?'), c('?'), c('?'), c('?'),	-- not used
		c('?'), c('?'), c('?'), c('?'), c('?'), c('?'), c('?'), c('?'),	-- not used
		c('?'), c('?'), c('?'), c('?'), c('?'), c('?'), c('?'), c('?'),	-- not used
		c('?'), c('?'), c('?'), c('?'), c('?'), c('?'), c('?'), c('?'),	-- not used
		-----------------
		c('C'), c('o'), c('m'), c('m'), c('a'), c('n'), c('d'), c(' '),
		c('R'), c('u'), c('n'), c('n'), c('i'), c('n'), c('g'), c(' '),
		c('T'), c('r'), c('a'), c('c'), c('e'), c('C'), c('m'), c('d'),
		c('T'), c('r'), c('a'), c('c'), c('e'), c('R'), c('u'), c('n'),
		c('?'), c('?'), c('?'), c('?'), c('?'), c('?'), c('?'), c('?'),	-- not used
		c('?'), c('?'), c('?'), c('?'), c('?'), c('?'), c('?'), c('?'),	-- not used
		c('?'), c('?'), c('?'), c('?'), c('?'), c('?'), c('?'), c('?'),	-- not used
		c('?'), c('?'), c('?'), c('?'), c('?'), c('?'), c('?'), c('?')		-- not used
);

signal col_char, rom_char: std_logic_vector(7 downto 0);
signal sts_sel: std_logic_vector(4 downto 0);
signal a: std_logic_vector(7 downto 0);

begin

with x(6 downto 4) select sts_sel <=
	"00" & status(11 downto 9) when O"0",
	"01" & status(8 downto 6) when O"1",
	"10" & status(5 downto 3) when O"3",
	"11" & status(2 downto 0) when others;

with x(6 downto 3) select col_char <=
	rom_char when X"1",
	c(' ') 	when X"2",
	rom_char when X"3",
	c(' ') 	when X"4",
	rom_char when X"5",
	c(' ') 	when X"6",
	rom_char when X"7",
	c(' ')	when X"8",
	X"A0" when others; -- inverted space

a <= sts_sel & x(2 downto 0);
rom_char <= symbol_rom(to_integer(unsigned(a)));
char <= col_char when (y = line) else X"A0";

end Behavioral;

