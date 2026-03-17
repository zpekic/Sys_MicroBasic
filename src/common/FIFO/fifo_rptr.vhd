library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fifo_rptr is
generic (AWIDTH: integer);
    Port (
        rclk: in std_logic;
        rrst_n: in std_logic;
        rinc: in std_logic;
        rempty: out std_logic;
        rptr: out std_logic_vector (AWIDTH downto 0);
        raddr: out std_logic_vector (AWIDTH-1 downto 0);
        rq2_wptr: in std_logic_vector (AWIDTH downto 0)
    );
end fifo_rptr;

architecture arch_fifo_rptr of fifo_rptr is

signal rbin: std_logic_vector (AWIDTH downto 0);
signal rgraynext: std_logic_vector (AWIDTH downto 0);
signal rbinnext: std_logic_vector (AWIDTH downto 0);
signal rincandnotrempty: std_logic_vector(AWIDTH downto 0) ;
signal rinc_extend: std_logic_vector(AWIDTH downto 0);
signal zvector: std_logic_vector(AWIDTH-1 downto 0);
signal rempty_int2: std_logic;
signal rempty_int1: std_logic;

begin
    rempty <= rempty_int2;
    raddr <= rbin(AWIDTH-1 downto 0);
    zvector <= (others => '0');
    rinc_extend <= zvector & rinc;
    rincandnotrempty <= rinc_extend and not(zvector & rempty_int2);
    rbinnext <= rbin + rincandnotrempty;
    rgraynext <= std_logic_vector(shift_right(unsigned(rbinnext),1)) xor rbinnext;
    
    process (rclk, rrst_n) 
    begin
        if (rrst_n = '0') then
            rbin <= (others=>'0');
            rptr <= (others=>'0');
        elsif (rising_edge(rclk)) then
            rbin <= rbinnext;
            rptr <= rgraynext;
        end if;
    end process;
    
    process (rq2_wptr, rgraynext)
    begin
        if rgraynext = rq2_wptr then
        rempty_int1 <= '1';
        else
        rempty_int1 <= '0';
        end if;
    end process;
    
    process (rclk, rrst_n) 
    begin
        if (rrst_n = '0') then
            rempty_int2 <= '1';
        elsif (rising_edge(rclk)) then
            rempty_int2 <= rempty_int1;
        end if;
    end process;
    
end arch_fifo_rptr;