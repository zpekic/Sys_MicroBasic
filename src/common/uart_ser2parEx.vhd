----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    2026-11-04 12:35:00 
-- Design Name: 
-- Module Name:    uart_ser2parEx - Behavioral 
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

entity uart_ser2parEx is
    Port ( reset : in  STD_LOGIC;
           rxd_clk : in  STD_LOGIC;
           mode : in  STD_LOGIC_VECTOR (2 downto 0);
           char : out  STD_LOGIC_VECTOR (7 downto 0);
           ready : buffer  STD_LOGIC;
           valid : buffer  STD_LOGIC;
           rxd : in  STD_LOGIC);
end uart_ser2parEx;

architecture Behavioral of uart_ser2parEx is

signal sr: std_logic_vector(39 downto 0);
signal cnt: std_logic_vector(5 downto 0);
signal frame: std_logic_vector(9 downto 0);

begin

--valid <= ready;
valid <= (not frame(9)) and frame(0);     -- valid frame is 0XXXXXXXX1
char(7) <= frame(1);
char(6) <= frame(2);
char(5) <= frame(3);
char(4) <= frame(4);
char(3) <= frame(5);
char(2) <= frame(6);
char(1) <= frame(7);
char(0) <= frame(8);

on_rxd_clk: process(reset, rxd_clk, rxd)
begin
	if (reset = '1') then
		sr <= (others => '1');
		cnt <= (others => '1');
		frame <= (others => '0');
		ready <= '0';
	else
	    if (falling_edge(rxd_clk)) then
	       ready <= valid;
	    end if;
		if (rising_edge(rxd_clk)) then
		  sr <= sr(38 downto 0) & rxd;
		  case cnt is
		      when "111111" =>
                  frame <= (others => '0');
                  if (sr(2 downto 0) = "100") then
                        cnt <= "100011"; -- & mode(2 downto 0);
                  end if;
              when "000000" =>
                  frame(0) <= sr(0);
                  frame(1) <= sr(4);
                  frame(2) <= sr(8);
                  frame(3) <= sr(12);
                  frame(4) <= sr(16);
                  frame(5) <= sr(20);
                  frame(6) <= sr(24);
                  frame(7) <= sr(28);
                  frame(8) <= sr(32);
                  frame(9) <= sr(36);
                  cnt <= (others => '1');
              when others =>
                  cnt <= std_logic_vector(unsigned(cnt) - 1);		          
		  end case;
		end if;
	end if;
end process;

end Behavioral;

