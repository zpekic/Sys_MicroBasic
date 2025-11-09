----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:48:14 10/06/2025 
-- Design Name: 
-- Module Name:    serialtracer - Behavioral 
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

entity serialtracer2 is
    Port ( reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;	-- this should be valid UART baudrate
			  enable: in STD_LOGIC;
           start : in  STD_LOGIC;
           index : in  STD_LOGIC_VECTOR (5 downto 0);
			  slevel: in STD_LOGIC_VECTOR(3 downto 0);		-- pass in stack level
           data : in  STD_LOGIC_VECTOR (63 downto 0);
			  txd: out  STD_LOGIC;
           ready : out  STD_LOGIC);
end serialtracer2;

architecture Behavioral of serialtracer2 is


-- index = editor row - 50
constant debug_rom: rom512x8 := (
		X"FF", X"00", X"00", X"00", X"00", X"00", X"00", X"00", 				-- index 0 should not be used
		CR, LF, c('I'), c('L'), c('='), X"80", X"81", X"82",					-- IL=aaa
		X"80", X"81", X"82", c(':'), c(' '), X"83", X"84", c(' '),			-- aaa xx:
		X"83", X"84", c(' '), X"00", X"00", X"00", X"00", X"00",				
		c('M'), c('i'), c('c'), c('r'), c('o'), c('B'), c('a'), c('s'),
		c('P'), c('C'), c(' '), X"00", X"00", X"00", X"00", X"00",
		c('N'), c('L'), c(' '), X"00", X"00", X"00", X"00", X"00",
		c('B'), c('R'), c(' '), X"00", X"00", X"00", X"00", X"00",		-- BR ?n
		c('G'), c('L'), X"00", X"00", X"00", X"00", X"00", X"00", 
		X"85", X"86", c(' '), X"00", X"00", X"00", X"00", X"00",
		c('S'), c('B'), c(' '), X"00", X"00", X"00", X"00", X"00", 
		c('R'), c('B'), c(' '), X"00", X"00", X"00", X"00", X"00",
		c('N'), c('O'), c('P'), c(' '), X"00", X"00", X"00", X"00", 
		c('B'), c('E'), c(' '), X"00", X"00", X"00", X"00", X"00",			-- BE
		c('B'), c('N'), c(' '), X"00", X"00", X"00", X"00", X"00",			-- BN
		c('S'), c('X'), c(' '), X"87", X"00", X"00", X"00", X"00",			-- SX n
		c('B'), c('V'), c(' '), X"00", X"00", X"00", X"00", X"00", 			-- BV
		c('B'), c('C'), c(' '), X"00", X"00", X"00", X"00", X"00",			-- BC ...
		c('P'), c('Q'), c(' '), X"00", X"00", X"00", X"00", X"00",
		c('R'), c('T'), c(' '), X"00", X"00", X"00", X"00", X"00",
		c('J'), c('S'), c(' '), X"87", X"00", X"00", X"00", X"00", 
		c('J'), c(' '), c(' '), X"87", X"00", X"00", X"00", X"00",
		c('A'), c('D'), c(' '), X"00", X"00", X"00", X"00", X"00",
		c('S'), c('B'), c(' '), X"00", X"00", X"00", X"00", X"00",
		c('M'), c('L'), c(' '), X"00", X"00", X"00", X"00", X"00", 
		c('N'), c('E'), c(' '), X"00", X"00", X"00", X"00", X"00",
		c('P'), c('N'), c(' '), X"00", X"00", X"00", X"00", X"00", 
		c('P'), c('T'), c(' '), X"00", X"00", X"00", X"00", X"00",
		c('L'), c('B'), c(' '), X"00", X"00", X"00", X"00", X"00", 
		c('L'), c('N'), c(' '), X"00", X"00", X"00", X"00", X"00",
		c('j'), c('m'), c('p'), c(' '), X"80", X"81", X"82", c(' '), 
		c('j'), c('m'), c('s'), c(' '), X"80", X"81", X"82", c(' '),
		c('Y'), c(' '), c('='), X"8C", X"8D", X"8E", X"8F", c(' '),		-- Y
		c('B'), c('P'), c('='), X"8C", X"8D", X"8E", X"8F", c(' '),		-- BP
		c('S'), c('P'), c(' '), X"00", X"00", X"00", X"00", X"00",
		c('D'), c('V'), c(' '), X"00", X"00", X"00", X"00", X"00",
		c('F'), c('V'), c(' '), X"00", X"00", X"00", X"00", X"00", 
		c('S'), c('V'), c(' '), X"00", X"00", X"00", X"00", X"00", 
		c('D'), c('S'), c(' '), X"00", X"00", X"00", X"00", X"00",
		c('N'), c('X'), c(' '), X"00", X"00", X"00", X"00", X"00",
		c('I'), c('L'), c(' '), X"00", X"00", X"00", X"00", X"00", 
		c('L'), c('S'), c(' '), X"00", X"00", X"00", X"00", X"00",
		c('X'), c('Q'), c(' '), X"00", X"00", X"00", X"00", X"00",
		c('M'), c('T'), c(' '), X"00", X"00", X"00", X"00", X"00",
		c('W'), c('S'), c(' '), X"00", X"00", X"00", X"00", X"00", 
		c('G'), c('O'), c(' '), X"00", X"00", X"00", X"00", X"00",
		c('C'), c('P'), c(' '), X"00", X"00", X"00", X"00", X"00", 
		c('G'), c('S'), c(' '), X"00", X"00", X"00", X"00", X"00", 
		c('R'), c('S'), c(' '), X"00", X"00", X"00", X"00", X"00", 
		c('U'), c('S'), c(' '), X"00", X"00", X"00", X"00", X"00", 
		BEL, c('*'), c('N'), c('o'), c(' '), c('P'), c('r'), c('g'),
		CR, LF, X"88", X"89", X"8A", X"8B", c('.'), X"00",					-- output lino (basic line number as hex)
		X"8C", X"8D", X"8E", X"8F", c(' '), X"00", X"00", X"00",			-- output registers (as hex)
		X"8C", X"8D", X"8E", X"8F", X"00", X"8D", X"8E", X"8F",
		BEL, c('*'), c('B'), c('a'), c('s'), c('S'), c('t'), c('k'),	-- Basic stack
		BEL, c('*'), c('B'), c('r'), c('e'), c('a'), c('k'), X"00",
		X"FF", X"FF", X"FF", X"FF", X"FF", X"FF", X"FF", X"FF", 			-- used to trace stack depth
		BEL, c('*'), c('D'), c('i'), c('v'), c('B'), c('y'), c('0'),	-- Div by 0
		BEL, c('*'), c('O'), c('v'), c('F'), c('l'), c('o'), c('w'),	-- Overflow (parse, or operation result)
		BEL, c('*'), c('R'), c('e'), c('t'), c('S'), c('t'), c('k'),	-- Return stack
		BEL, c('*'), c('E'), c('v'), c('l'), c('S'), c('t'), c('k'),	-- Evaluation stack
		BEL, c('*'), c('S'), c('y'), c('n'), c('t'), c('a'), c('x'),	-- Syntax
		BEL, c('*'), c('I'), c('n'), c('t'), c('e'), c('r'), c('n'),	-- Internal
		CR, LF, X"00", X"00", X"00", X"00", X"00", X"00"
);

signal counter: std_logic_vector(6 downto 0); -- 8 chars max per entry, and 16 bits per char
alias charIndex: std_logic_vector(2 downto 0) is counter(6 downto 4);
alias bitSel: std_logic_vector(3 downto 0) is counter(3 downto 0);
signal charAddr: std_logic_vector(8 downto 0); -- total of 512 chars in the table
signal dbg_hex: std_logic_vector(3 downto 0);
signal rom_char, char, dbg_char, stack_char: std_logic_vector(7 downto 0);
signal dbg_clk: std_logic;

begin

-- various other 4-bit sources
with char(3 downto 0) select dbg_hex <=
		-- IL_PC
		data(3 downto 0) when X"0",
		data(7 downto 4) when X"1",
		data(11 downto 8) when X"2",
		-- code byte 
		data(15 downto 12) when X"3",
		data(19 downto 16) when X"4",
		-- MDR (memory data register)
		data(23 downto 20) when X"5",
		data(27 downto 24) when X"6",
		-- lower nibble of IL_OP 
		data(31 downto 28) when X"7",
		-- Lino
		data(47 downto 44) when X"8",
		data(43 downto 40) when X"9",
		data(39 downto 36) when X"A",
		data(35 downto 32) when X"B",
		-- T
		data(63 downto 60) when X"C",
		data(59 downto 56) when X"D",
		data(55 downto 52) when X"E",
		data(51 downto 48) when others;
		

-- 
ready <= '1' when (counter = "0000000") else '0';
dbg_clk <= start when (counter = "0000000") else clk;

on_dbg_clk: process(reset, enable, dbg_clk)
begin
	if ((reset = '1') or (enable = '0')) then
		counter <= (others => '0');
	else
		if (rising_edge(dbg_clk)) then
			if (char = X"00") then
				-- NULL char means end of debug string
				counter <= (others => '0');		
			else
				counter <= std_logic_vector(unsigned(counter) + 1);
			end if;
		end if;
	end if;
end process;

-- pick up char from debug string table
charAddr <= index & charIndex;
rom_char <= debug_rom(to_integer(unsigned(charAddr)));
-- hack to trace stack depth
char <= stack_char when (rom_char = X"FF") else rom_char;
stack_char <= X"00" when (unsigned(charIndex) > unsigned(slevel)) else X"20";

-- char that goes out is either direct or hex digit from multiplexed source
dbg_char <= char when (char(7) = '0') else hex2ascii(to_integer(unsigned(dbg_hex)));	

-- serial output logic (TXD implemented as 16 to 1 MUX, where select is the bit frame sequence)
with bitSel select txd <= 		
			'1'     when X"0", -- high while not busy
			'1'	  when X"1", -- delay 1 (to sync with txd_clk)
			'1'	  when X"2", -- delay 2 
			'0' 	  when X"3", -- start bit
			dbg_char(0) when X"4", -- data
			dbg_char(1) when X"5",
			dbg_char(2) when X"6",
			dbg_char(3) when X"7",
			dbg_char(4) when X"8",
			dbg_char(5) when X"9",
			dbg_char(6) when X"A",
			dbg_char(7) when X"B",
			'1'     when X"C",	-- parity or stop
			'1' 	  when X"D",	-- stop
			'1' when others;		-- delay	

end Behavioral;