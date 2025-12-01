----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:32:39 11/29/2025 
-- Design Name: 
-- Module Name:    tbil - Behavioral 
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

entity tbil is
    Port ( extended : in  STD_LOGIC;
           a : in  STD_LOGIC_VECTOR (10 downto 0);
           d : out  STD_LOGIC_VECTOR (7 downto 0));
end tbil;

architecture Behavioral of tbil is

signal d_original, d_extended: std_logic_vector(7 downto 0);

begin

d <= d_extended when (extended = '1') else d_original;

-- Original version, > prompt
il_original: entity work.original_rom
		Generic map (
			ADDR_DEPTH => 9
		)
		Port map ( 
			a => a,
			d => d_original
		);

-- Extended version, : prompt
il_extended: entity work.extended_rom
		Generic map (
			ADDR_DEPTH => 9
		)
		Port map ( 
			a => a,
			d => d_extended
		);

end Behavioral;

