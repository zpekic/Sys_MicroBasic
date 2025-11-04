----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:02:00 11/03/2025 
-- Design Name: 
-- Module Name:    hwindow - Behavioral 
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

entity hwindow is
    Generic (
			top :		std_logic_vector(7 downto 0);
			left:		std_logic_vector(7 downto 0);
			width:	std_logic_vector(7 downto 0);
			height:	std_logic_vector(7 downto 0));
    Port ( enable : in  STD_LOGIC;
           x : in  STD_LOGIC_VECTOR (7 downto 0);
           y : in  STD_LOGIC_VECTOR (7 downto 0);
           m_base : in  STD_LOGIC_VECTOR (15 downto 0);
           m_cursor : in  STD_LOGIC_VECTOR (15 downto 0);
			  -- outputs
           char_addr : out STD_LOGIC_VECTOR (15 downto 0);
			  cursor_hit: out STD_LOGIC;
           active : out  STD_LOGIC);
end hwindow;

architecture Behavioral of hwindow is

signal dx, dy, right, bottom: std_logic_vector(7 downto 0);
signal a: std_logic_vector(15 downto 0);
signal h_active, v_active: std_logic;

begin

right <= std_logic_vector(unsigned(left) + unsigned(width));
bottom <= std_logic_vector(unsigned(top) + unsigned(height));

dx <= std_logic_vector(unsigned(x) - unsigned(left));
h_active <= (not dx(7)) when (unsigned(x) < unsigned(right)) else '0';

dy <= std_logic_vector(unsigned(y) - unsigned(top));
v_active <= (not dy(7)) when (unsigned(y) < unsigned(bottom)) else '0';

active <= enable and (h_active and v_active);

a <= std_logic_vector(unsigned(m_base) + (unsigned(width) * unsigned(dy)) + unsigned(dx));
char_addr <= a;  

cursor_hit <= '1' when (m_cursor = a) else '0';

end Behavioral;

