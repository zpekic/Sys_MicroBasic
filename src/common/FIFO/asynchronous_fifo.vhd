library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity asynchronous_fifo is
generic (AWIDTH: integer; DWIDTH: integer);
    port (
        wclk: in std_logic;
        wrst_n: in std_logic;
        wdata: in std_logic_vector (DWIDTH-1 downto 0);
        winc: in std_logic;
        wfull: out std_logic;
        rclk: in std_logic;
        rrst_n: in std_logic;
        rdata: out std_logic_vector (DWIDTH-1 downto 0);
        rinc: in std_logic;
        rempty: out std_logic;
        waddr: out std_logic_vector (AWIDTH-1 downto 0);
        raddr: out std_logic_vector (AWIDTH-1 downto 0)
    );
end asynchronous_fifo;

architecture arch_async_fifo of asynchronous_fifo is
component fifo_wptr
generic (AWIDTH: integer);
    port (
        wclk: in std_logic;
        wrst_n: in std_logic;
        winc: in std_logic;
        wfull: out std_logic;
        wptr: out std_logic_vector (AWIDTH downto 0);
        waddr: out std_logic_vector (AWIDTH-1 downto 0);
        wq2_rptr: in std_logic_vector (AWIDTH downto 0)  
    );
end component;

component fifo_rptr
generic (AWIDTH: integer);
    port (
        rclk: in std_logic;
        rrst_n: in std_logic;
        rinc: in std_logic;
        rempty: out std_logic;
        rptr: out std_logic_vector (AWIDTH downto 0);
        raddr: out std_logic_vector (AWIDTH-1 downto 0);
        rq2_wptr: in std_logic_vector (AWIDTH downto 0) 
    );
end component;

component fifomem
generic (AWIDTH: integer; DWIDTH: integer);
    port (
        wclk: in std_logic;
        wdata: in std_logic_vector (DWIDTH-1 downto 0);
        waddr: in std_logic_vector (AWIDTH-1 downto 0);
        raddr: in std_logic_vector (AWIDTH-1 downto 0);
        wclken: in std_logic;
        rdata: out std_logic_vector (DWIDTH-1 downto 0);
        wfull: in std_logic 
    );
end component;

component synchronizer
generic (AWIDTH: integer);
    port (
        ptr_in  :in  std_logic_vector (AWIDTH downto 0);
        clk     :in  std_logic;
        reset_n :in  std_logic;
        ptr_out :out std_logic_vector (AWIDTH downto 0)
 );
end component;

signal wptr_1: std_logic_vector (AWIDTH downto 0);
signal waddr_1: std_logic_vector (AWIDTH-1 downto 0);
signal wq2_rptr_1: std_logic_vector (AWIDTH downto 0);  
signal rptr_1: std_logic_vector (AWIDTH downto 0);
signal raddr_1: std_logic_vector (AWIDTH-1 downto 0);
signal rq2_wptr_1: std_logic_vector (AWIDTH downto 0);
signal wclken_1: std_logic;
signal wfull_int: std_logic;

begin

wfull <= wfull_int;
waddr <= waddr_1;
raddr <= raddr_1;
fifo_wptr_1: fifo_wptr generic map(AWIDTH=>AWIDTH) port map (wclk=>wclk, wrst_n=>wrst_n, winc=>winc, wfull=>wfull_int, wptr=>wptr_1, waddr=>waddr_1, wq2_rptr=>wq2_rptr_1); 
fifo_rptr_1: fifo_rptr generic map(AWIDTH=>AWIDTH) port map (rclk=>rclk, rrst_n=>rrst_n, rinc=>rinc, rempty=>rempty, rptr=>rptr_1, raddr=>raddr_1, rq2_wptr=>rq2_wptr_1); 
fifomem_1: fifomem generic map(AWIDTH=>AWIDTH, DWIDTH=>DWIDTH) port map(wclk=>wclk, wdata=>wdata, waddr=> waddr_1,raddr=>raddr_1, wclken=>winc, rdata=>rdata, wfull=>wfull_int);  
sync_r2w: synchronizer generic map(AWIDTH=>AWIDTH) port map (ptr_in=>rptr_1, clk=>wclk, reset_n=>wrst_n, ptr_out=>wq2_rptr_1);
sync_w2r: synchronizer generic map(AWIDTH=>AWIDTH) port map (ptr_in=>wptr_1, clk=>rclk, reset_n=>rrst_n, ptr_out=>rq2_wptr_1);

end arch_async_fifo;
