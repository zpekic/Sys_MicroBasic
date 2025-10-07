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


entity serialtracer is
    Port ( reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;	-- this should be valid UART baudrate
           start : in  STD_LOGIC;
           char : in  STD_LOGIC_VECTOR (7 downto 0);
           data : in  STD_LOGIC_VECTOR (31 downto 0);
			  txd: out  STD_LOGIC;
           ready : out  STD_LOGIC);
end serialtracer;

architecture Behavioral of serialtracer is

signal dbg_hex, bitSel: std_logic_vector(3 downto 0);
signal dbg_char: std_logic_vector(7 downto 0);
signal dbg_clk: std_logic;

begin

-- various other 4-bit sources
with char(2 downto 0) select dbg_hex <=
		data(3 downto 0) when O"0",
		data(7 downto 4) when O"1",
		data(11 downto 8) when O"2",
		data(15 downto 12) when O"3",
		data(19 downto 16) when O"4",
		data(23 downto 20) when O"5",
		data(27 downto 24) when O"6",
		data(31 downto 28) when others;

-- 
ready <= '1' when (bitSel = X"0") else '0';
dbg_clk <= start when (bitSel = X"0") else clk;

on_bitSel_clk: process(reset, dbg_clk)
begin
	if (reset = '1') then
		bitSel <= (others => '0');
	else
		if (rising_edge(dbg_clk)) then
			bitSel <= std_logic_vector(unsigned(bitSel) + 1);
		end if;
	end if;
end process;

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

