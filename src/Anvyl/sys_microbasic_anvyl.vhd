----------------------------------------------------------------------------------
-- Company: 	https://hackaday.io/projects/hacker/233652
-- Engineer:	zpekic@hotmail.com
---------------------------------------------------------------------------------- 
-- https://hackaday.io/project/TBD
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
use work.microbasic_package.all;

entity sys_microbasic_anvyl is
    Port ( 
	 			-- 100MHz on the Anvyl board
				CLK: in std_logic;
				-- Switches
				-- SW(0) -- LED display selection
				-- SW(2 downto 1) -- tracing selection
				-- SW(3)
				-- SW(4)
				-- SW(6 downto 5) -- system clock speed 
				-- SW7
				SW: in std_logic_vector(7 downto 0); 
				-- Push buttons 
				-- BTN0 - 
				-- BTN1 - 
				-- BTN2 - 
				-- BTN3 - 
				BTN: in std_logic_vector(3 downto 0); 
				-- 6 7seg LED digits
				SEG: out std_logic_vector(6 downto 0); 
				AN: out std_logic_vector(5 downto 0); 
				DP: out std_logic; 
				-- 8 single LEDs
				LED: out std_logic_vector(7 downto 0);
				--PMOD interface (Main UART)
				JA1: inout std_logic;
				JA2: inout std_logic;
				JA3: inout std_logic;
				JA4: inout std_logic;
				-- drive external 16-bit address bus
				JB1: out std_logic;
				JB2: out std_logic;
				JB3: out std_logic;
				JB4: out std_logic;
				JB7: out std_logic;
				JB8: out std_logic;
				JB9: out std_logic;
				JB10: out std_logic;
				JC1: out std_logic;
				JC2: out std_logic;
				JC3: out std_logic;
				JC4: out std_logic;
				JC7: out std_logic;
				JC8: out std_logic;
				JC9: out std_logic;
				JC10: out std_logic;
				-- drive external 8-bit address bus
				JD1: in std_logic;
				JD2: in std_logic;
				JD3: in std_logic;
				JD4: in std_logic;
				JD7: in std_logic;
				JD8: in std_logic;
				JD9: in std_logic;
				JD10: in std_logic;
				--PMOD interface (Aux UART)
				JE1: inout std_logic;
				JE2: inout std_logic;
				JE3: inout std_logic;
				JE4: inout std_logic;
				--DIP switches
				--DIP_B4, DIP_B3, DIP_B2, DIP_B1: in std_logic;
				--DIP_A4, DIP_A3, DIP_A2, DIP_A1: in std_logic;
--				-- Hex keypad
				--KYPD_COL: out std_logic_vector(3 downto 0);
				--KYPD_ROW: in std_logic_vector(3 downto 0);
				-- SRAM --
				SRAM_CS1: out std_logic;
				SRAM_CS2: out std_logic;
				SRAM_OE: out std_logic;
				SRAM_WE: out std_logic;
				SRAM_UPPER_B: out std_logic;
				SRAM_LOWER_B: out std_logic;
				Memory_address: out std_logic_vector(18 downto 0);
				Memory_data: inout std_logic_vector(15 downto 0);
				-- Red / Yellow / Green LEDs
				--LDT1G: out std_logic;
				LDT1Y: out std_logic;
				--LDT1R: out std_logic;
				LDT2G: out std_logic;
				LDT2Y: out std_logic;
				LDT2R: out std_logic;
				-- VGA
				HSYNC_O: out std_logic;
				VSYNC_O: out std_logic;
				RED_O: out std_logic_vector(3 downto 0);
				GREEN_O: out std_logic_vector(3 downto 0);
				BLUE_O: out std_logic_vector(3 downto 0);
				-- TFT
--				TFT_R_O: out std_logic_vector(7 downto 0);
--				TFT_G_O: out std_logic_vector(7 downto 0);
--				TFT_B_O: out std_logic_vector(7 downto 0);
--				TFT_CLK_O: out std_logic;
--				TFT_DE_O: out std_logic;
--				TFT_DISP_O: out std_logic;
--				TFT_BKLT_O: out std_logic;
--				TFT_VDDEN_O: out std_logic;
				-- breadboard signal connections
				BB1: out std_logic;
				BB2: out std_logic;
				BB3: out std_logic;
				BB4: out std_logic;
				BB5: out std_logic;
				BB6: out std_logic;
				BB7: out std_logic;
				BB8: out std_logic;
				BB9: out std_logic;
				BB10: in std_logic
          );
end sys_microbasic_anvyl;

architecture Structural of sys_microbasic_anvyl is

-- stores Basic program and input line, everything else is custom registers inside CPU!
type memory is array (0 to 512) of std_logic_vector(7 downto 0);
signal ram: memory;
signal nBUSREQ, nBUSACK, nRD, nWR: std_logic;
signal A: std_logic_vector(15 downto 0);
signal D: std_logic_vector(7 downto 0);

-- Connect to PmodUSBUART 
-- https://digilent.com/reference/pmod/pmodusbuart/reference-manual
alias PMOD_RTS0: std_logic is JA1;	
alias PMOD_RXD0: std_logic is JA2;
alias PMOD_TXD0: std_logic is JA3;
alias PMOD_CTS0: std_logic is JA4;	
alias PMOD_RTS1: std_logic is JE1;
alias PMOD_RXD1: std_logic is JE2;
alias PMOD_TXD1: std_logic is JE3;
alias PMOD_CTS1: std_logic is JE4;

alias RESET: std_logic is BTN(3);

-- debug
signal T, freqcnt_value: std_logic_vector(31 downto 0);
signal cpu_debug: std_logic_vector(23 downto 0);
signal hexdata, showdigit: std_logic_vector(3 downto 0);
signal freqcnt_in: std_logic;

signal prescale_baud, prescale_power: integer range 0 to 65535;

signal cnt25MHz: std_logic_vector(7 downto 0); -- 8 bit counter driven by 50MHz
signal cnt307200: std_logic_vector(15 downto 0); -- 16 bit counter driven by 2*307.2kHz
alias freq38400: std_logic is cnt307200(3);
alias freq19200: std_logic is cnt307200(4);
alias freq9600: std_logic is cnt307200(5);
alias freq4800: std_logic is cnt307200(6); 
alias freq2400: std_logic is cnt307200(7); 

signal cnt4096: std_logic_vector(11 downto 0); -- 12 bit counter driven by 2*4.096kHz
alias freq2: std_logic is cnt4096(11); 
signal cpu_clk: std_logic;

-- single char UART output
signal cpu_outchar_ready, cpu_outchar_send: std_logic;
signal cpu_outchar: std_logic_vector(7 downto 0);
-- single char UART input
signal RXD_READY, RXD_VALID: std_logic;
signal RXD_CHAR: std_logic_vector(7 downto 0);
signal send_clk: std_logic;

---
signal switch: std_logic_vector(7 downto 0);
alias sw_baudrate: std_logic_vector(2 downto 0) is switch(7 downto 5);
alias sw_cpuclk: std_logic_vector(2 downto 0) is switch(4 downto 2);
signal button: std_logic_vector(7 downto 0);

---- UART
signal baudrate_x1, baudrate_x2, baudrate_x4: std_logic;

begin

LED(0) <= not nWR;
LED(1) <= not nRD;
LED(2) <= not nBUSREQ;
LED(3) <= cpu_clk;

-- divide internal clock   	
on_mclk: process(CLK, cnt307200, cnt4096, cnt25MHz)
begin
	if (RESET = '1') then
		prescale_baud <= 0;
		prescale_power <= 0;
		cnt307200 <= (others => '0');
		cnt4096 <= (others => '0');
	else
		if (rising_edge(CLK)) then
			cnt25MHz <= std_logic_vector(unsigned(cnt25MHz) + 1);
			if (prescale_baud = 0) then
				cnt307200 <= std_logic_vector(unsigned(cnt307200) + 1);
				prescale_baud <= (25000000 / 307200) - 1;
			else
				prescale_baud <= prescale_baud - 1;
			end if;
			if (prescale_power = 0) then
				cnt4096 <= std_logic_vector(unsigned(cnt4096) + 1);
				prescale_power <= (25000000 / 4096);
			else
				prescale_power <= prescale_power - 1;
			end if;
		end if;
	end if;
end process;

--	
	debounce_sw: entity work.debouncer8channel Port map ( 
		clock => freq19200, 
		reset => RESET,
		signal_raw => SW,
		signal_debounced => switch
	);

	debounce_btn: entity work.debouncer8channel Port map ( 
		clock => freq19200, 
		reset => RESET,
		signal_raw(7 downto 4) => "0000",
		signal_raw(3 downto 0) => BTN,
		signal_debounced => button
	);
	
-- 
nBUSACK <= '0';	-- nothing competes for the RAM
cpu: entity work.MicroBasic Port map (
		reset => RESET,
		clk => cpu_clk,
		nBUSREQ => nBUSREQ,
      nBUSACK => nBUSACK,
		nRD => nRD,
		nWR => nWR,
		ABUS => A,
		DBUS => D,		
		-- output char
		outchar => cpu_outchar,
		outchar_send => cpu_outchar_send,
		outchar_ready => cpu_outchar_ready,
		-- input char
		inchar => RXD_CHAR,
		inchar_ready => RXD_READY,
		-- debug / trace
		traceEnable => '1',
		baudrate => baudrate_x1,
		debug_txd => PMOD_RXD1,
		debug_sel => sw(1 downto 0),
		debug_bus => cpu_debug
	);

-- infer simple 1k RAM
D <= ram(to_integer(unsigned(A(8 downto 0)))) when ((nBUSACK or nRD) = '0') else "ZZZZZZZZ";
on_cpuclk: process(cpu_clk)
begin
	if (rising_edge(cpu_clk)) then
		if ((nBUSACK or nWR) = '0') then 
			ram(to_integer(unsigned(A(8 downto 0)))) <= D;
		end if;
	end if;
end process;

-- CPU clock should ideally be sync'd when switching from one frequency to another
with sw_cpuclk select cpu_clk <= 
		button(0) when O"0",
		cnt4096(10) when O"1",		-- 4Hz
		cnt4096(6) when O"2",		-- 64Hz
		cnt4096(0) when O"3",		-- 4.096kHz
		cnt25MHz(3) when O"4",		-- 3.125MHz
		cnt25MHz(2) when O"5",		-- 6.25MHz
		cnt25MHz(1) when O"6",		-- 12.5MHz 
		cnt25MHz(0) when others; 	-- 25MHz
		
-- display some debug data of 6-digit 7-seg display	
--leds: entity work.fourdigitsevensegled port map ( 
--			  -- inputs
--			  data => cpu_debug, --T(15 downto 0), --freqcnt_value(15 downto 0),
--			  digsel => cnt4096(6 downto 5),
--           showdigit => "1111",	-- all digits on
--			  showdot => "0000",		-- no dots
--			  showsegments => '1',
--			  -- outputs
--           anode => AN,
--			  segment(6 downto 0) => A_TO_G(6 downto 0),
--			  segment(7) => DOT
--			 );	 
			 
-- display some debug data of 6-digit 7-seg display	
leds: entity work.sixdigitsevensegled port map ( 
			  -- inputs
			  data => cpu_debug,
			  digsel => cnt4096(7 downto 5),
           showdigit => "111111",
			  showdot => "000000",
           showsegments => '1',
			  -- outputs
           anode => AN,
			  segment(7) => DP,
			  segment(6 downto 0) => SEG
			 );	 			 
-- simple character echo / loopback
on_rxd_ready: process(RXD_READY, RXD_CHAR, reset)
begin
	if (reset = '1') then
		T <= (others => '0');
	else
		if (rising_edge(RXD_READY)) then
			T <= T(23 downto 0) & RXD_CHAR; 
		end if;
	end if;
end process;
	
-- RS flip flop
--send_clk <= RXD_READY when (TXD_SEND = '0') else TXD_READY;
--on_sendclk: process(RESET, send_clk)
--begin
--	if (reset = '1') then
--		TXD_SEND <= '0';
--	else
--		if (rising_edge(send_clk)) then
--			TXD_SEND <= not TXD_SEND;
--		end if;
--	end if;
--end process;
	
-- UART connection to the host
txdout: entity work.uart_par2ser Port map (
			reset => reset,
			txd_clk => baudrate_x1,
			send => cpu_outchar_send,
			mode => "000", -- no parity, extra stop bit
			data => cpu_outchar,
         ready => cpu_outchar_ready,
         txd => PMOD_RXD0
		);

rxdinp: entity work.uart_ser2par Port map (
			reset => reset,
			rxd_clk => baudrate_x4,
			mode => "000",	-- no parity, extra stop bit
			char => RXD_CHAR,
         ready => RXD_READY,
			valid => RXD_VALID,
         rxd => PMOD_TXD0
		);
		
-- Test ASCII component
--to_upper: entity work.ascii_toupper Port map ( 
--			ascii8bit => RXD_CHAR,
--			ascii_uppercase => TXD_CHAR,
--			isTAB => LED(0),
--			isCR => LED(1),
--			isBS  => LED(2),
--			isDEL  => LED(3),
--			isSPACE  => LED(4),
--			isNUM  => LED(5),
--			isALPHA  => LED(6),
--			isCTRL  => LED(7),
--			isBIT7SET => open
--		);
		
-- UART baudrate selection
baudrate_x1 <= cnt307200(to_integer(10 - unsigned('0' & sw_baudrate)));
baudrate_x2 <= cnt307200(to_integer(9 - unsigned('0' & sw_baudrate)));
baudrate_x4 <= cnt307200(to_integer(8 - unsigned('0' & sw_baudrate)));
							
-- count signal frequencies
freqcnt: entity work.freqcounter Port map ( 
		reset => RESET,
		clk => freq2,
		freq => baudrate_x1,
		bcd => '1',
		add => X"00000004",
		cin => '0',
		cout => open,
		value => freqcnt_value
	);							
end;


