library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fifomem is
generic (DWIDTH: integer;
         AWIDTH: integer);
    port(
        wclk: in std_logic;
        wdata: in std_logic_vector (DWIDTH-1 downto 0);
        waddr: in std_logic_vector (AWIDTH-1 downto 0);
        raddr: in std_logic_vector (AWIDTH-1 downto 0);
        wclken: in std_logic;
        rdata: out std_logic_vector (DWIDTH-1 downto 0);
        wfull: in std_logic
        );
end fifomem;

architecture arch_fifomem of fifomem is

type mem is array(0 to 2**AWIDTH-1) of std_logic_vector(DWIDTH-1 downto 0);
signal ram_block : mem;
signal wclkenandnotwfull: std_logic; 

begin
    wclkenandnotwfull <= wclken and not wfull; 
    process (wclk)
    begin
        if (wclk'event and wclk = '1') then
            if (wclkenandnotwfull = '1') then
                ram_block(TO_INTEGER(unsigned(waddr))) <= wdata;
            end if;
        end if;
        rdata <= ram_block(TO_INTEGER(unsigned(raddr)));
   end process;
   
end arch_fifomem;