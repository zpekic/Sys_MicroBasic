----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:11:45 10/08/2020 
-- Design Name: 
-- Module Name:    freqcounter - Behavioral 
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

entity freqcounter is
    Port ( reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           freq : in  STD_LOGIC;
			  bcd: in STD_LOGIC;
			  add: in STD_LOGIC_VECTOR(31 downto 0);
			  cin: in STD_LOGIC;
			  cout: out STD_LOGIC;
           value : out  STD_LOGIC_VECTOR (31 downto 0));
end freqcounter;

architecture Behavioral of freqcounter is

signal cnt_0, cnt_1, cnt_sel, sum: std_logic_vector(31 downto 0);
signal clk_prev: std_logic;
signal carry: std_logic_vector(8 downto 0);

begin

cnt_sel <= 	cnt_0 when (clk = '0') else cnt_1; -- accumulate one or the other
value <= 	cnt_1 when (clk = '0') else cnt_0; -- display the one not being accumulated!

on_freq: process(freq, clk, sum)
begin
	if (rising_edge(freq)) then
		if (clk = '0') then
			if (clk_prev = '0') then
				cnt_0 <= sum;
			else
				cnt_0 <= (others => '0');
			end if;
		else
			if (clk_prev = '1') then
				cnt_1 <= sum;
			else
				cnt_1 <= (others => '0');
			end if;
		end if;
		
		clk_prev <= clk;
		
	end if;
end process;

carry(0) <= cin;
cout <= carry(8);

na_generate: for i in 0 to 7 generate
begin
	na: entity work.nibbleadder Port map ( 
				cin => carry(i),
				a => cnt_sel((3 + 4 * i) downto (4 * i)),
				b => add((3 + 4 * i) downto (4 * i)),
				na => '0',
				nb => '0',
				bcd => bcd,
				y => sum((3 + 4 * i) downto (4 * i)),
				cout => carry(i + 1)
			);
end generate;

end Behavioral;

