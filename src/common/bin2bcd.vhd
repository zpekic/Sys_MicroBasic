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
    Generic (
			DIGITS : positive);
    Port ( power : in  STD_LOGIC_VECTOR (4 downto 0);
           sel : in  STD_LOGIC;
           sum_in : in  STD_LOGIC_VECTOR ((DIGITS * 4 - 1) downto 0);
           sum_out : out  STD_LOGIC_VECTOR ((DIGITS * 4 - 1) downto 0));
end bin2bcd;

architecture Behavioral of bin2bcd is

type rom32x39 is array (0 to 31) of std_logic_vector(39 downto 0);
signal bin2bcd: rom32x39 := (
	X"0000000001",
	X"0000000002",
	X"0000000004",
	X"0000000008",
	X"0000000016",
	X"0000000032",
	X"0000000064",
	X"0000000128",
	X"0000000256",
	X"0000000512",
	X"0000001024",
	X"0000002048",
	X"0000004096",
	X"0000008192",
	X"0000016384",
	X"0000032768",		-- 15
	X"0000065536",		-- 16
	X"0000131072",		-- 17
	X"0000262144",		-- 18
	X"0000524288",		-- 19
	X"0001048576",		-- 20
	X"0002097152",		-- 21
	X"0004194304",		-- 22
	X"0008388608",		-- 23
	X"0016777216",		-- 24
	X"0033554432",		-- 25
	X"0067108864",		-- 26
	X"0134217728",		-- 27
	X"0268435456",		-- 28
	X"0536870912",		-- 29
	X"1073741824",		-- 30
	X"2147483648"		-- 31
);
signal bcd_a: std_logic_vector(39 downto 0);

begin

bcd_a <= bin2bcd(to_integer(unsigned(power))) when (sel = '1') else X"0000000000";

sixdigadder: entity work.bcdadder 
     Generic map (
			DIGITS => DIGITS
     )
     Port map ( 
			carry_in => '0',
			a => bcd_a((DIGITS * 4 - 1) downto 0),
			b => sum_in((DIGITS * 4 - 1) downto 0),
			sum => sum_out((DIGITS * 4 - 1) downto 0)
		);
		
end Behavioral;

