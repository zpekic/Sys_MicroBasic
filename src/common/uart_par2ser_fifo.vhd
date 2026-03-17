----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:08:56 03/24/2019 
-- Design Name: 
-- Module Name:    uart_par2ser - Behavioral 
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
--use work.tms0800_package.all;

entity uart_par2ser_fifo is
  generic (
    ADDR_WIDTH : natural
  );
    Port ( reset : in  STD_LOGIC;
			  clk: in STD_LOGIC;
			  txd_clk: in STD_LOGIC;
			  send: in STD_LOGIC;
			  mode: in STD_LOGIC_VECTOR(2 downto 0);
			  data: in STD_LOGIC_VECTOR(7 downto 0);
           ready : out STD_LOGIC;
           txd : out  STD_LOGIC
			  );
end uart_par2ser_fifo;

architecture Behavioral of uart_par2ser_fifo is

signal bitSel: std_logic_vector(3 downto 0);
signal p_bit, parity, disable: std_logic;
signal char: std_logic_vector(7 downto 0);
-- FIFO signals
signal rdata: std_logic_vector(7 downto 0);
signal rd, rempty, full: std_logic;

begin

-- Output FIFO (from https://github.com/surangamh/asynchronous-fifo/blob/master/README.md)
fifo: entity work.asynchronous_fifo
		generic map (
			AWIDTH => ADDR_WIDTH,
			DWIDTH => 8
		)
		port map (
        wclk => clk,
        wrst_n => (not reset),
        wdata => data,
        winc => send,
        wfull => full,
        rclk => txd_clk,
        rrst_n => (not reset),
        rdata => rdata,
        rinc => rd,
        rempty => rempty,
        waddr => open,
        raddr => open
    );

rd <= '1' when (bitSel(3 downto 1) = X"1") else '0';	
ready <= not full;

on_rd: process(reset, rdata, txd_clk, rd)
begin
	if (reset = '1') then
		disable <= '1';
	else
		if (falling_edge(txd_clk) and (rd = '1')) then
			disable <= rempty;
			char <= rdata;
		end if;
	end if;
end process;

--
parity <= char(7) xor (char(6) xor (char(5) xor (char(4) xor (char(3) xor (char(2) xor (char(1) xor (char(0) xor mode(0))))))));

-- p_bit depends on "mode"
with mode select p_bit <= 
	'0' when "100",	-- parity 0
	'1' when "101",	-- parity 1
	parity when "110", -- parity even (because mode(0) is '0')
	parity when "111", -- parity odd (because mode(0) is '1')
	'1' when others;

-- drive simple UART data output with mux
with bitSel select txd <= 		
			'1'     					when X"0", -- high while not busy
			'1'	  					when X"1", -- delay 1 (to sync with txd_clk)
			(disable or '0') 	 	when X"2", -- start bit
			(disable or char(0)) when X"3", -- data
			(disable or char(1)) when X"4",
			(disable or char(2)) when X"5",
			(disable or char(3)) when X"6",
			(disable or char(4)) when X"7",
			(disable or char(5)) when X"8",
			(disable or char(6)) when X"9",
			(disable or char(7)) when X"A",
			(disable or p_bit)   when X"B",	-- parity or stop
			'1' 	  					when X"C",	-- stop
			'1' 						when others;-- delay

on_txdclk: process(reset, txd_clk)
begin
	if (reset = '1') then
		bitSel <= (others => '0');
	else
		if (rising_edge(txd_clk)) then
			if (bitSel = X"D") then
				bitSel <= (others => '0');
			else
				bitSel <= std_logic_vector(unsigned(bitSel) + 1);
			end if;
		end if;
	end if;
end process;

end Behavioral;

