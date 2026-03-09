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
    FIFO_DEPTH : natural
  );
    Port ( reset : in  STD_LOGIC;
			  clk: in STD_LOGIC;
			  txd_clk: in STD_LOGIC;
			  send: in STD_LOGIC;
			  mode: in STD_LOGIC_VECTOR(2 downto 0);
			  data: in STD_LOGIC_VECTOR(7 downto 0);
           ready : out STD_LOGIC;
           txd : out  STD_LOGIC;
			  -- debug
			  fill_count: out integer range FIFO_DEPTH - 1 downto 0
			  );
end uart_par2ser_fifo;

architecture Behavioral of uart_par2ser_fifo is

signal bitSel: std_logic_vector(3 downto 0);
signal p_bit, parity: std_logic;
-- FIFO signals
signal char: std_logic_vector(7 downto 0);
signal rd_en, rd_valid, disable, full, full_next: std_logic;

begin

-- Output FIFO (from https://vhdlwhiz.com/ring-buffer-fifo/)
fifo: entity work.ring_buffer
  generic map(
    RAM_WIDTH => 8,
    RAM_DEPTH => FIFO_DEPTH
  )
  port map(
    clk => clk,
    rst => reset,
  
    -- Write port
    wr_en =>  send,
    wr_data =>  data,
  
    -- Read port
    rd_en => rd_en,
    rd_valid => rd_valid,
    rd_data => char,
  
    -- Flags
    empty => open,
    empty_next => open,
    full => full,
    full_next => full_next,
  
    -- The number of elements in the FIFO
    fill_count => fill_count
  );

disable <= not rd_valid;				-- if not valid, force "mark" level
ready <= not (full or full_next);
rd_en <= '0' when (bitSel = X"0") else '1';	-- generate read pulse for the FIFO

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

