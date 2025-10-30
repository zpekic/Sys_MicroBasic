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

entity bin2bcd is
    Port ( power : in  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC;
           sum_in : in  STD_LOGIC_VECTOR (23 downto 0);
           sum_out : out  STD_LOGIC_VECTOR (23 downto 0));
end bin2bcd;

architecture Behavioral of bin2bcd is

type rom16x24 is array (0 to 15) of std_logic_vector(23 downto 0);
signal bin2bcd: rom16x24 := (
	X"000001",
	X"000002",
	X"000004",
	X"000008",
	X"000016",
	X"000032",
	X"000064",
	X"000128",
	X"000256",
	X"000512",
	X"001024",
	X"002048",
	X"004096",
	X"008192",
	X"016384",
	X"032768"
);
signal bcd_a: std_logic_vector(23 downto 0);

begin

bcd_a <= bin2bcd(to_integer(unsigned(power))) when (sel = '1') else X"000000";

sixdigadder: entity work.bcdadder 
     Generic map (
			DIGITS => 6
     )
     Port map ( 
			carry_in => '0',
			a => bcd_a,
			b => sum_in,
			sum => sum_out
		);
		
end Behavioral;

