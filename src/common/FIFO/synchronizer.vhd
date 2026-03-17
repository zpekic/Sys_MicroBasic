library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity synchronizer is
generic (AWIDTH: integer);
port (
    ptr_in  :in  std_logic_vector (AWIDTH downto 0);
    clk     :in  std_logic;
    reset_n :in  std_logic;
    ptr_out :out std_logic_vector (AWIDTH downto 0)
 );
end entity;

architecture arch_synchronizer of synchronizer is

signal f12f2: std_logic_vector (AWIDTH downto 0);
signal zvector: std_logic_vector(AWIDTH downto 0);

begin
zvector <= (others => '0');
process (clk, reset_n) begin
        if (reset_n = '0') then
            f12f2 <= zvector;
            ptr_out <= zvector;
        elsif (rising_edge(clk)) then
            f12f2 <= ptr_in;
            ptr_out <= f12f2;
        end if;
    end process;
    
end arch_synchronizer;