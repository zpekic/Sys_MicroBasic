----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:13:42 01/30/2026 
-- Design Name: 
-- Module Name:    DS1302 - Behavioral 
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
use work.microbasic_package.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DS1302 is
    Port ( reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           nCE : in  STD_LOGIC;
           nRD : in  STD_LOGIC;
           nWR : in  STD_LOGIC;
           DI : in  STD_LOGIC_VECTOR (7 downto 0);
           DO : out  STD_LOGIC_VECTOR (7 downto 0);
           A : in  STD_LOGIC_VECTOR (5 downto 0);
			  BUSY: buffer STD_LOGIC;
           CE : out  STD_LOGIC;
           SCLK : buffer  STD_LOGIC;
           IO : inout  STD_LOGIC);
end DS1302;

architecture Behavioral of DS1302 is

signal nRead, nWrite, continue, busy_clk, reg_7, bcd_reg: std_logic;
signal reg_ce, reg_e, reg_io, reg_dir, reg_busy: std_logic_vector(23 downto 0);
signal s, ds, dw: std_logic_vector(7 downto 0);

begin
-- DS1302 serial interface
CE <= reg_ce(23);
SCLK <= clk and reg_e(23);
IO <= reg_io(23) when (reg_dir(23) = '0') else 'Z';

-- registers 0 to 6 are BCD encoded, so will do the conversion to binary for convenience
reg_7 <= '1' when (A = "000111") else '0';
bcd_reg <= (not reg_7) when (A(5 downto 3) = "000") else '0';
dw <= bin2bcd(to_integer(unsigned(DI))) when (bcd_reg = '1') else DI;	-- binary to BCD when writing

-- CPU interface
nRead <= nCE or nRD;
nWrite <= nCE or nWR;
ds <= s(0) & s(1) & s(2) & s(3) & s(4) & s(5) & s(6) & s(7);
DO <= bcd2bin(to_integer(unsigned(ds))) when (bcd_reg = '1') else ds;	-- BCD to binary when reading

-- ready logic towards CPU
busy_clk <= not(nRead and nWrite) when (BUSY = '0') else continue;
on_busy_clk: process(busy_clk, reset)
begin
	if (reset = '1') then
		BUSY <= '0';
	else
		if (rising_edge(busy_clk)) then
			BUSY <= not BUSY;
		end if;
	end if;
end process;

-- serial interfacing to DS1302
on_sclk: process(SCLK, IO)
begin
	if (rising_edge(SCLK)) then
		s <= s(6 downto 0) & IO;
	end if;
end process;

on_clk: process(clk, reset, nCE, BUSY)
begin
	if (BUSY = '0') then
		reg_ce <=	(others => '0');
		reg_e <=		(others => '0');
		reg_io <=	(others => '0');
		reg_dir <=	(others => '0');
		reg_busy <= (others => '1');
		continue <= '0';
	else
		if (falling_edge(clk)) then
			if (reg_busy = X"FFFFFF") then
				-- init shift registers
				if (nWrite = '0') then
					reg_ce <=	X"1FFFF8";
					reg_e <=		X"0FFFF0";
					reg_io <= X"0" & 
								'0' & A(0) & A(1) & A(2) & A(3) & A(4) & A(5) & '1' & 
								dw(0) & dw(1) & dw(2) & dw(3) & dw(4) & dw(5) & dw(6) & dw(7) & 
								X"0";
					reg_dir <=	X"000000";
					reg_busy <= X"FFFFFE";
				end if;
				if (nRead = '0') then
					reg_ce <=	X"1FFFF8";
					reg_e <=		X"0FFFF0";
					reg_io <= X"0" & 
								'1' & A(0) & A(1) & A(2) & A(3) & A(4) & A(5) & '1' & 
								X"00" &	-- ignore 
								X"0";
					reg_dir <=	X"000FFF";
					reg_busy <= X"FFFFFE";
				end if;
			else
				-- shift data out
				reg_ce <= reg_ce(22 downto 0) & '0';
				reg_e <= reg_e(22 downto 0) & '0';
				reg_io <= reg_io(22 downto 0) & '0';
				reg_dir <= reg_dir(22 downto 0) & '0';
				reg_busy <= reg_busy(22 downto 0) & '0';
				if (reg_busy = X"000000") then
					-- done serial send/receive, unblock CPU
					continue <= '1';
				end if;
			end if;
		end if;
	end if;
end process;

end Behavioral;

