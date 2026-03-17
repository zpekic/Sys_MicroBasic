library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fifo_wptr is
generic (AWIDTH: integer);
    port(
        wclk: in std_logic;
        wrst_n: in std_logic;
        winc: in std_logic;
        wfull: out std_logic;
        wptr: out std_logic_vector (AWIDTH downto 0);
        waddr: out std_logic_vector (AWIDTH-1 downto 0);
        wq2_rptr: in std_logic_vector (AWIDTH downto 0)
        );
end fifo_wptr;

architecture arch_fifo_wptr of fifo_wptr is

signal wbin: std_logic_vector (AWIDTH downto 0);
signal wgraynext: std_logic_vector (AWIDTH downto 0);
signal wbinnext: std_logic_vector (AWIDTH downto 0);
signal wincandnotwfull: std_logic_vector(AWIDTH downto 0) ;
signal winc_extend: std_logic_vector(AWIDTH downto 0);
signal zvector: std_logic_vector(AWIDTH-1 downto 0);
signal wfull_int2: std_logic;
signal wfull_int1: std_logic;

begin
    wfull <= wfull_int2;
    waddr <= wbin(AWIDTH-1 downto 0);
    zvector <= (others => '0');
    winc_extend <= zvector & winc;
    wincandnotwfull <= winc_extend and not(zvector & wfull_int2);
    wbinnext <= wbin + wincandnotwfull;
    wgraynext <= std_logic_vector(shift_right(unsigned(wbinnext),1)) xor wbinnext;
    
    process (wclk, wrst_n) 
    begin
        if (wrst_n = '0') then
            wbin <= (others=>'0');
            wptr <= (others=>'0');
        elsif (rising_edge(wclk)) then
            wbin <= wbinnext;
            wptr <= wgraynext;
        end if;
    end process;

    process (wgraynext, wq2_rptr)
    begin
        if wgraynext = not wq2_rptr(AWIDTH downto AWIDTH-1) & wq2_rptr(AWIDTH-2 downto 0) then
        wfull_int1 <= '1';
        else
        wfull_int1 <= '0';
        end if;
    end process;
    
    process (wclk, wrst_n) 
    begin
        if (wrst_n = '0') then
            wfull_int2 <= '0';
        elsif (rising_edge(wclk)) then
            wfull_int2 <= wfull_int1;
        end if;
    end process;
    
end arch_fifo_wptr;