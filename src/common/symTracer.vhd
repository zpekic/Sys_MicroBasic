----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:41:24 11/04/2025 
-- Design Name: 
-- Module Name:    symTracer - Behavioral 
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

use work.microbasic_package.all;
use work.microbasic_sym.all;

entity symTracer is
    Port ( reset : in  STD_LOGIC;
           rom_clk : in  STD_LOGIC;
           refresh_clk : in  STD_LOGIC;
			  cpu_clk: in STD_LOGIC;
           uipc : in  STD_LOGIC_VECTOR (8 downto 0);
           char_addr : in  STD_LOGIC_VECTOR (8 downto 0);
           char_out : out  STD_LOGIC_VECTOR (7 downto 0));
end symTracer;

architecture Behavioral of symTracer is

signal sym_ram: ram512x8;
signal sym_char, tmp_char, bit8char, uipc_char: std_logic_vector(7 downto 0);
signal uipc_old, uipc_new: std_logic_vector(8 downto 0);
signal opcnt, a: std_logic_vector(8 downto 0);
alias row: std_logic_vector(3 downto 0) is opcnt(3 downto 0);
alias col: std_logic_vector(4 downto 0) is opcnt(8 downto 4);
signal enable: std_logic;

begin

char_out <= sym_ram(to_integer(unsigned(char_addr)));
a <= row & col;

on_rom_clk: process(reset, rom_clk)
begin
	if (reset = '1') then
		uipc_old <= (others => '1');
	else
		if (rising_edge(rom_clk)) then
			uipc_old <= uipc;
		end if;
	end if;
end process;

-- refresh_clk >= 256 cpu_clk
enable <= '0' when (uipc = uipc_old) else '1';

on_refresh_clk: process(reset, refresh_clk, enable)
begin
	if ((reset = '1') or (enable = '1')) then
		opcnt <= (others => '1');
	else
		if (rising_edge(refresh_clk)) then
			if (opcnt = "000000000") then
				sym_ram(to_integer(unsigned(a))) <= tmp_char;
			else
				opcnt <= std_logic_vector(unsigned(opcnt) - 1);
				-- now scroll up the sym_ram and copy over entry from sym_rom
				tmp_char <= sym_ram(to_integer(unsigned(a)));
				if (row = X"F") then
					sym_ram(to_integer(unsigned(a))) <= sym_char;
				else
					sym_ram(to_integer(unsigned(a))) <= tmp_char;
				end if;
			end if;
		end if;
	end if;
end process;
	
mb_sym_a <= uipc & col(3 downto 0);
mb_sym_d <= mb_symbol_byte(to_integer(unsigned(mb_sym_a)));
 
with col(4 downto 2) select sym_char <=
	X"FF" when O"0",			-- transparent char, show whatever is below the window
	X"FF" when O"1",			-- transparent char, show whatever is below the window
	X"FF" when O"2",			-- transparent char, show whatever is below the window
	uipc_char when O"3",		-- value of microcode PC in hex
	mb_sym_d when others;	-- microcode symbols from ROM

bit8char <= c('1') when (uipc(8) = '1') else c('0');

with col(1 downto 0) select uipc_char <=
	bit8char when "00",
	hex2ascii(to_integer(unsigned(uipc(7 downto 4)))) when "01",
	hex2ascii(to_integer(unsigned(uipc(3 downto 0)))) when "10",
	X"FF" when others;
	
-- ROM containing the microcode symbols. This is 8k, organized as 512 entries of 16 chars (bytes) each
--convert symbol entries to byte-oriented ROM
gen_r: for r in 0 to SYMBOL_ADDRESS_LAST generate
begin
   gen_c: for c in 0 to SYMBOL_BYTE_LAST generate
   begin
		--assert false report "r = " & integer'image(r) & " c = " & integer'image(c) severity note;
		mb_symbol_byte(r * (SYMBOL_BYTE_LAST + 1) + c) <= mb_symbol_entry(r)(SYMBOL_DATA_WIDTH - 8 * c - 1 downto SYMBOL_DATA_WIDTH - 8 * (c + 1));
   end generate;
end generate;
	
end Behavioral;

