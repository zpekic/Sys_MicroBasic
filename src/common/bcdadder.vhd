----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:51:29 10/15/2025 
-- Design Name: 
-- Module Name:    bcdadder - Behavioral 
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

entity bcdadder is
    Generic (
			DIGITS : positive);
    Port ( 
			carry_in: in STD_LOGIC;
			a : in STD_LOGIC_VECTOR(DIGITS * 4 - 1 downto 0);
			b : in STD_LOGIC_VECTOR(DIGITS * 4 - 1 downto 0);
			sum : out STD_LOGIC_VECTOR(DIGITS * 4 - 1 downto 0);
         carry_out : out STD_LOGIC);
end bcdadder;

architecture Behavioral of bcdadder is


signal carry: std_logic_vector(DIGITS downto 0);

begin

carry(0) <= carry_in;
carry_out <= carry(DIGITS);

na_generate: for i in 0 to (DIGITS - 1) generate
begin
--	na: entity work.nibbleadder Port map ( 
--				cin => carry(i),
--				a => a((3 + 4 * i) downto (4 * i)),
--				b => b((3 + 4 * i) downto (4 * i)),
--				na => '0',
--				nb => '0',
--				bcd => '1',
--				y => sum((3 + 4 * i) downto (4 * i)),
--				cout => carry(i + 1)
--			);
	na: entity work.bcddigitadder Port map ( 
				cin => carry(i),
				a => a((3 + 4 * i) downto (4 * i)),
				b => b((3 + 4 * i) downto (4 * i)),
				y => sum((3 + 4 * i) downto (4 * i)),
				cout => carry(i + 1)
			);
end generate;

end Behavioral;

