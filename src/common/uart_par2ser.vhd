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

entity uart_par2ser is
    Port ( reset : in  STD_LOGIC;
			  txd_clk: in STD_LOGIC;
			  send: in STD_LOGIC;
			  mode: in STD_LOGIC_VECTOR(2 downto 0);
			  data: in STD_LOGIC_VECTOR(7 downto 0);
           ready : buffer STD_LOGIC;
           delay : in STD_LOGIC;
           txd : out  STD_LOGIC);
end uart_par2ser;

architecture Behavioral of uart_par2ser is

signal bitSel, lastBit: std_logic_vector(5 downto 0); -- from 10 to 63 clock cycles
signal bitClk, p_bit, parity: std_logic;
signal char: std_logic_vector(7 downto 0);

begin

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
			'1'      when O"00", -- high while not busy
			'1'      when O"01", -- delay 1 (to sync with txd_clk)
			'0'      when O"02", -- start bit
			char(0) when O"03",  -- data
			char(1) when O"04",
			char(2) when O"05",
			char(3) when O"06",
			char(4) when O"07",
			char(5) when O"10",
			char(6) when O"11",
			char(7) when O"12",
			p_bit   when O"13",	-- parity or stop
			'1' 	when O"14",	-- stop
			'1' when others;    -- delay

-- drive high when any are being bits transmitted	
ready <= '1' when (bitSel = O"00") else '0'; 					

-- when ready, listen to rising edge of send signal to start
bitClk <= send when (ready = '1') else txd_clk;

-- when ready, load the 1 byte buffer at rising edge of send
on_send: process(ready, send, data)
begin
	--if (ready = '1') then
		if (rising_edge(send)) then
			char <= data;
		end if;
	--end if;
end process;

-- append time after character sent if delay input is high
lastBit <= O"14" when (delay = '0') else O"77";

-- note that when going from 1111 to 0000 this counter shuts itself off, waits for send pulse
on_bitclk: process(reset, bitClk)
begin
	if (reset = '1') then
		bitSel <= (others => '0');
	else
		if (rising_edge(bitClk)) then
			if (bitSel = lastBit) then
				bitSel <= (others => '0');
			else
				bitSel <= std_logic_vector(unsigned(bitSel) + 1);
			end if;
		end if;
	end if;
end process;

end Behavioral;

