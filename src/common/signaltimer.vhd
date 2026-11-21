----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2026 10:21:41 AM
-- Design Name: 
-- Module Name: signaltimer - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity signaltimer is
    Port ( reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           pulse : in STD_LOGIC;
           width : out STD_LOGIC_VECTOR (15 downto 0));
end signaltimer;

architecture Behavioral of signaltimer is

signal count: std_logic_vector(15 downto 0);
signal pulse_delayed: std_logic;

begin

on_clk: process(reset, clk, pulse)
begin
    if (reset = '1') then
        count <= (others => '1');
    else
        if (rising_edge (clk)) then
            pulse_delayed <= pulse;
            if (pulse = '1') then
                -- time "high" by starting counting from rising edge of pulse
                if (pulse_delayed = '0') then
                    count <= X"0001";
                    width <= count;
                else
                    if (count = X"FFFF") then
                        width <= count;
                    else 
                        count <= std_logic_vector(unsigned(count) + 1);
                    end if;
                end if;
            else
                -- time "low"
                if (count = X"FFFF") then
                    width <= count;
                else 
                    count <= std_logic_vector(unsigned(count) + 1);
                end if;
            end if;
        end if;
    end if;
end process;

end Behavioral;
