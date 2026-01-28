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

entity bin2bcd_lut is
    Port ( bin : in  STD_LOGIC_VECTOR (15 downto 0);
           bcd : out  STD_LOGIC_VECTOR (19 downto 0));
end bin2bcd_lut;

architecture Behavioral of bin2bcd_lut is

type rom16x20 is array (0 to 15) of std_logic_vector(19 downto 0);
signal sum_l, sum_r: std_logic_vector(19 downto 0);

signal bcd_1: rom16x20 := (
	X"00000",
	X"00001",
	X"00002",
	X"00003",
	X"00004",
	X"00005",
	X"00006",
	X"00007",
	X"00008",
	X"00009",
	X"00010",
	X"00011",
	X"00012",
	X"00013",
	X"00014",
	X"00015"
);

signal bcd_16: rom16x20 := (
	X"00000",
	X"00016",
	X"00032",
	X"00048",
	X"00064",
	X"00080",
	X"00096",
	X"00112",
	X"00128",
	X"00144",
	X"00160",
	X"00176",
	X"00192",
	X"00208",
	X"00224",
	X"00240"
);

signal bcd_256: rom16x20 := (
	X"00000",
	X"00256",
	X"00512",
	X"00768",
	X"01024",
	X"01280",
	X"01536",
	X"01792",
	X"02048",
	X"02304",
	X"02560",
	X"02816",
	X"03072",
	X"03328",
	X"03584",
	X"03840"
);

signal bcd_4096: rom16x20 := (
	X"00000",
	X"04096",
	X"08192",
	X"12288",
	X"16384",
	X"20480",
	X"24576",
	X"28672",
	X"32768",
	X"36864",
	X"40960",
	X"45056",
	X"49152",
	X"53248",
	X"57344",
	X"61440"
);

begin


adder_l: entity work.bcdadder 
     Generic map (
			DIGITS => 5
     )
     Port map ( 
			carry_in => '0',
			a => bcd_1(to_integer(unsigned(bin(3 downto 0)))),
			b => bcd_16(to_integer(unsigned(bin(7 downto 4)))),
			sum => sum_l
		);

adder_r: entity work.bcdadder 
     Generic map (
			DIGITS => 5
     )
     Port map ( 
			carry_in => '0',
			a => bcd_256(to_integer(unsigned(bin(11 downto 8)))),
			b => bcd_4096(to_integer(unsigned(bin(15 downto 12)))),
			sum => sum_r
		);

adder_y: entity work.bcdadder 
     Generic map (
			DIGITS => 5
     )
     Port map ( 
			carry_in => '0',
			a => sum_l,
			b => sum_r,
			sum => bcd
		);
		
end Behavioral;

