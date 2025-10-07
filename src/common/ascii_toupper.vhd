----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:41:25 10/03/2025 
-- Design Name: 
-- Module Name:    ascii_toupper - Behavioral 
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

entity ascii_toupper is
    Port ( ascii8bit : in  STD_LOGIC_VECTOR (7 downto 0);
           ascii_uppercase : out  STD_LOGIC_VECTOR (7 downto 0);
			  isTAB: out STD_LOGIC;
           isCR : out  STD_LOGIC;
           isBS : out  STD_LOGIC;
           isDEL : out  STD_LOGIC;
           isSPACE : out  STD_LOGIC;
           isNUM : out  STD_LOGIC;
           isALPHA : out  STD_LOGIC;
           isCTRL : out  STD_LOGIC;
			  isBIT7SET: out STD_LOGIC);
end ascii_toupper;

architecture Behavioral of ascii_toupper is

signal isLowerAlpha, isUpperAlpha, isDelete: std_logic;
signal ascii7bit: std_logic_vector(7 downto 0);

begin
	isBIT7SET <= ascii8bit(7);
	
	-- all other flags we base on 7-bit ASCII code
	ascii7bit <= '0' & ascii8bit(6 downto 0);
	
	isLowerAlpha <= '1' when ((unsigned(ascii7bit) >= unsigned(c('a'))) and (unsigned(ascii7bit) <= unsigned(c('z')))) else '0';
	isUpperAlpha <= '1' when ((unsigned(ascii7bit) >= unsigned(c('A'))) and (unsigned(ascii7bit) <= unsigned(c('Z')))) else '0';
	isDelete <= '1' when (ascii7bit = X"7F") else '0';

	isTAB <= '1' when (ascii7bit = X"09") else '0';
	isCR <= '1' when (ascii7bit = X"0D") else '0';
	isBS <= '1' when (ascii7bit = X"08") else '0';
	isDEL <= isDelete;
	isSPACE <= '1' when (ascii7bit = X"20") else '0';
	isNUM <= '1' when ((unsigned(ascii7bit) >= unsigned(c('0'))) and (unsigned(ascii7bit) <= unsigned(c('9')))) else '0';
	isALPHA <= isLowerAlpha or isUpperAlpha;
	isCTRL <= '1' when (ascii7bit(7 downto 5) = "000") else isDelete;
	-- Other special chars of possible interest:
	--isESC <= '1' when (ascii7bit = X"1B") else '0';
	--isBREAK <= '1' when (ascii7bit = X"03") else '0'; -- CTRL/C
	
	ascii_uppercase <= std_logic_vector(unsigned(ascii7bit) - 32) when (isLowerAlpha = '1') else ascii7bit;
	
end Behavioral;

