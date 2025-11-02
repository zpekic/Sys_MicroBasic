--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;

package microbasic_package is

constant NUL: std_logic_vector(7 downto 0) := X"00";
constant STX: std_logic_vector(7 downto 0) := X"03";	-- CTRL/C, BREAK
constant BEL: std_logic_vector(7 downto 0) := X"07";
constant BS: std_logic_vector(7 downto 0) := X"08";
constant CR: std_logic_vector(7 downto 0) := X"0D";
constant LF: std_logic_vector(7 downto 0) := X"0A";
constant CARET: std_logic_vector(7 downto 0) := X"5E"; -- ^, used for escaping control characters

impure function c(char: in character) return std_logic_vector;

type rom512x8 is array (0 to 511) of std_logic_vector(7 downto 0);
type rom256x8 is array(0 to 255) of std_logic_vector(7 downto 0);
type rom64x8 is array (0 to 63) of std_logic_vector(7 downto 0);
type rom16x8 is array (0 to 15) of std_logic_vector(7 downto 0);

type ram32x32 is array (0 to 31) of std_logic_vector(31 downto 0);
type ram32x16 is array (0 to 31) of std_logic_vector(15 downto 0);
type ram8x32 is array (0 to 15) of std_logic_vector(31 downto 0);
type ram16x8 is array (0 to 15) of std_logic_vector(7 downto 0);
type ram8x16 is array (0 to 7) of std_logic_vector(15 downto 0);

constant hex2ascii: rom16x8 := (
	c('0'),
	c('1'),
	c('2'),
	c('3'),
	c('4'),
	c('5'),
	c('6'),
	c('7'),
	c('8'),
	c('9'),
	c('A'),
	c('B'),
	c('C'),
	c('D'),
	c('E'),
	c('F')
);

constant bin2bcd: rom256x8 := (
	X"00", X"01", X"02", X"03", X"04", X"05", X"06", X"07", X"08", X"09",
	X"10", X"11", X"12", X"13", X"14", X"15", X"16", X"17", X"18", X"19",
	X"20", X"21", X"22", X"23", X"24", X"25", X"26", X"27", X"28", X"29",
	X"30", X"31", X"32", X"33", X"34", X"35", X"36", X"37", X"38", X"39",
	X"40", X"41", X"42", X"43", X"44", X"45", X"46", X"47", X"48", X"49",
	X"50", X"51", X"52", X"53", X"54", X"55", X"56", X"57", X"58", X"59",
	X"60", X"61", X"62", X"63", X"64", X"65", X"66", X"67", X"68", X"69",
	X"70", X"71", X"72", X"73", X"74", X"75", X"76", X"77", X"78", X"79",
	X"80", X"81", X"82", X"83", X"84", X"85", X"86", X"87", X"88", X"89",
	X"90", X"91", X"92", X"93", X"94", X"95", X"96", X"97", X"98", X"99",
--
	X"00", X"01", X"02", X"03", X"04", X"05", X"06", X"07", X"08", X"09",
	X"10", X"11", X"12", X"13", X"14", X"15", X"16", X"17", X"18", X"19",
	X"20", X"21", X"22", X"23", X"24", X"25", X"26", X"27", X"28", X"29",
	X"30", X"31", X"32", X"33", X"34", X"35", X"36", X"37", X"38", X"39",
	X"40", X"41", X"42", X"43", X"44", X"45", X"46", X"47", X"48", X"49",
	X"50", X"51", X"52", X"53", X"54", X"55", X"56", X"57", X"58", X"59",
	X"60", X"61", X"62", X"63", X"64", X"65", X"66", X"67", X"68", X"69",
	X"70", X"71", X"72", X"73", X"74", X"75", X"76", X"77", X"78", X"79",
	X"80", X"81", X"82", X"83", X"84", X"85", X"86", X"87", X"88", X"89",
	X"90", X"91", X"92", X"93", X"94", X"95", X"96", X"97", X"98", X"99",
--
	X"00", X"01", X"02", X"03", X"04", X"05", X"06", X"07", X"08", X"09",
	X"10", X"11", X"12", X"13", X"14", X"15", X"16", X"17", X"18", X"19",
	X"20", X"21", X"22", X"23", X"24", X"25", X"26", X"27", X"28", X"29",
	X"30", X"31", X"32", X"33", X"34", X"35", X"36", X"37", X"38", X"39",
	X"40", X"41", X"42", X"43", X"44", X"45", X"46", X"47", X"48", X"49",
	X"50", X"51", X"52", X"53", X"54", X"55"
);

-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
--
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--

end microbasic_package;

package body microbasic_package is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
impure function c(char: in character) return std_logic_vector is
begin
	return std_logic_vector(to_unsigned(natural(character'pos(char)), 8));
end c;
 
end microbasic_package;
