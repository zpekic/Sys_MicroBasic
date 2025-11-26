----------------------------------------------------------------------------------
-- Company: https://hackaday.io/projects/hacker/233652
-- Engineer: zpekic@hotmail.com
--
-- Create Date: 11/23/2025, 6:02:40 PM
-- Design Name:
-- Module Name: MicroBasic - Behavioral
-- Project Name:
-- Target Devices:
-- Tool versions: ISE 14.7, mcc - microcode compiler
-- Description: https://hackaday.io/project/204482-celebrating-50-years-of-tiny-basic
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

entity FILENAME_rom is
    Generic (
        ADDR_DEPTH : positive);
    Port (
        a : in  STD_LOGIC_VECTOR (10 downto 0);
        d : out  STD_LOGIC_VECTOR (7 downto 0));
end FILENAME_rom;

architecture Behavioral of FILENAME_rom is

type rom_type is array (0 to (2**ADDR_DEPTH - 1)) of std_logic_vector(7 downto 0);

-- Original from: http://www.ittybittycomputers.com/IttyBitty/TinyBasic/TinyBasic.asm
-- Create your own at: https://tiny-basic-online-utilities.lovable.app/
constant FILENAME_rom: rom_type := (
	HEXBYTES
);

begin

	d <= FILENAME_rom(to_integer(unsigned(a((ADDR_DEPTH - 1) downto 0))));

end Behavioral;