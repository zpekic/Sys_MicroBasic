----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/16/2026 09:17:20 AM
-- Design Name: 
-- Module Name: serialdatagenerator - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
use work.microbasic_package.all;

entity serialdatagenerator is
    Port ( reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           txd : out STD_LOGIC);
end serialdatagenerator;

architecture Behavioral of serialdatagenerator is

signal audio_cnt: std_logic_vector(8 downto 0); 
signal audio_byte: std_logic_vector(7 downto 0);
signal audio_rom: rom16x8 :=
(
		c('1'), c(' '), c('R'), c('E'), c('M'), c(' '), c('a'), X"0D",	
		c('2'), c(' '), c('R'), c('E'), c('M'), c(' '), c('b'), X"0D"	
);

begin

audio_byte <= X"0D" when (audio_cnt(8) = '0') else audio_rom(to_integer(unsigned(audio_cnt(7 downto 4))));
with audio_cnt(3 downto 0) select txd <=
    '0' when X"0",
    audio_byte(0) when X"1",
    audio_byte(1) when X"2",
    audio_byte(2) when X"3",
    audio_byte(3) when X"4",
    audio_byte(4) when X"5",
    audio_byte(5) when X"6",
    audio_byte(6) when X"7",
    audio_byte(7) when X"8",
    '1' when others;    

on_clk: process(reset, clk)
begin 
    if (reset = '1') then
        audio_cnt <= (others => '0');
    else
        if (rising_edge(clk)) then
            audio_cnt <= std_logic_vector (unsigned(audio_cnt) + 1);
        end if;
    end if;
end process;

end Behavioral;
