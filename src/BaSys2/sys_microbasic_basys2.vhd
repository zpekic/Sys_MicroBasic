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

entity sys_microbasic_basys2 is
    Port ( 
				-- Internal clock: 50MHz on the Basys2 board
				MCLK: in std_logic;
				
				-- External clock: 48MHz "half-size" crystal on breadboard (ESC-220BX)
				UCLK: in std_logic;
				
				-- Switches on baseboard
				-- SW(0) -- 
				-- SW(1) -- 
				-- SW(2) -- 
				-- SW(3) -- 
				-- SW(4) -- 
				-- SW(5) -- 
				-- SW(6) -- 
				-- SW(7)	-- 
				SW: in std_logic_vector(7 downto 0); 

				-- Push buttons on baseboard
				BTN: in std_logic_vector(3 downto 0); 

				-- 4 7seg LED on baseboard 
				SEG: out std_logic_vector(6 downto 0); 
				AN: out std_logic_vector(3 downto 0); 
				DP: out std_logic; 
				-- 8 LEDs on Basys2
				LED: inout std_logic_vector(7 downto 0);

				--VGA interface
				--register state is traced to VGA after each instruction if SW0 = on
				--640*480 50Hz mode is used, which give 80*60 character display
				--but to save memory, only 80*50 are used which fits into 4k video RAM
				HSYNC: out std_logic;
				VSYNC: out std_logic;
				OUTRED: out std_logic_vector(2 downto 0);
				OUTGREEN: out std_logic_vector(2 downto 0);
				OUTBLUE: out std_logic_vector(2 downto 1);
				
				--PS2 interface
				PS2C: inout std_logic;
				PS2D: inout std_logic;
				
				--PMOD interface
				--Organized as 4 6-pin PODs (16 digital I/O in total)
				PIO: inout std_logic_vector(87 downto 72)
          );
end sys_microbasic_basys2;

architecture Structural of sys_microbasic_basys2 is

-- Connect to PmodUSBUART 0 (main TDX/RXD)
-- https://digilent.com/reference/pmod/pmodusbuart/reference-manual
alias JA_RTS: std_logic is PIO(72); --JA1;
alias JA_RXD: std_logic is PIO(73); --JA2;
alias JA_TXD: std_logic is PIO(74); --JA3;
alias JA_CTS: std_logic is PIO(75); --JA4;

-- Connect to PmodUSBUART 1 (debug TDX/RXD)
-- https://digilent.com/reference/pmod/pmodusbuart/reference-manual
alias JB_RTS: std_logic is PIO(76);
alias JB_RXD: std_logic is PIO(77);
alias JB_TXD: std_logic is PIO(78);
alias JB_CTS: std_logic is PIO(79);

-- unused JC
alias JC1: std_logic is PIO(80);
alias JC2: std_logic is PIO(81);
alias JC3: std_logic is PIO(82);
alias JC4: std_logic is PIO(83);

-- test points on JD
alias JD1: std_logic is PIO(84);
alias JD2: std_logic is PIO(85);
alias JD3: std_logic is PIO(86);
alias JD4: std_logic is PIO(87);

alias RESET: std_logic is BTN(3);

-- debug
signal T, debug, freqcnt_value: std_logic_vector(31 downto 0);
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

-- single char UART output
signal TXD_READY, TXD_SEND: std_logic;
signal TXD_CHAR: std_logic_vector(7 downto 0);
-- single char UART input
signal RXD_READY, RXD_VALID: std_logic;
signal RXD_CHAR: std_logic_vector(7 downto 0);
signal send_clk: std_logic;

---
signal switch: std_logic_vector(7 downto 0);
alias sw_baudrate: std_logic_vector(2 downto 0) is switch(7 downto 5);
-- 
signal button: std_logic_vector(7 downto 0);

---- UART
signal baudrate_x1, baudrate_x2, baudrate_x4: std_logic;

begin

-- not used, inactive
PS2C <= '1';
PS2D <= '1';
HSYNC <= '0';
VSYNC <= '0';
OUTRED <= "000";
OUTGREEN <= "000";
OUTBLUE <= "00";

-- test the freq generator
JD1 <= baudrate_x1;
JD2 <= cnt307200(0);
JD3 <= cnt25MHz(0);
JD4 <= cnt4096(0);

--LED(0) <= TXD_READY;
--LED(1) <= TXD_SEND;
--LED(2) <= RXD_READY;
--LED(3) <= RXD_VALID;
--LED <= cnt4096(11 downto 4);

-- divide internal clock   	
on_mclk: process(MCLK, cnt307200, cnt4096, cnt25MHz)
begin
	if (RESET = '1') then
		prescale_baud <= 0;
		prescale_power <= 0;
		cnt307200 <= (others => '0');
		cnt4096 <= (others => '0');
	else
		if (rising_edge(MCLK)) then
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
	
-- display some debug data of 6-digit 7-seg display	
leds: entity work.fourdigitsevensegled port map ( 
			  -- inputs
			  data => freqcnt_value(15 downto 0),
			  digsel => cnt4096(6 downto 5),
           showdigit => "0000",	-- all digits on
			  showdot => "1111",		-- no dots
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
			--TXD_CHAR <= RXD_CHAR;
		end if;
	end if;
end process;
	
-- RS flip flop
send_clk <= RXD_READY when (TXD_SEND = '0') else TXD_READY;
on_sendclk: process(RESET, send_clk)
begin
	if (reset = '1') then
		TXD_SEND <= '0';
	else
		if (rising_edge(send_clk)) then
			TXD_SEND <= not TXD_SEND;
		end if;
	end if;
end process;
	
-- UART connection to the host
txdout: entity work.uart_par2ser Port map (
			reset => reset,
			txd_clk => baudrate_x1,
			send => TXD_SEND,
			mode => "000", -- no parity, extra stop bit
			data => TXD_CHAR,
         ready => TXD_READY,
         txd => JA_RXD
		);

rxdinp: entity work.uart_ser2par Port map (
			reset => reset,
			rxd_clk => baudrate_x4,
			mode => "000",	-- no parity, extra stop bit
			char => RXD_CHAR,
         ready => RXD_READY,
			valid => RXD_VALID,
         rxd => JA_TXD
		);
		
-- Test ASCII component
to_upper: entity ascii_toupper Port map ( 
			ascii_in => RXD_CHAR,
			ascii_uppercase => TXD_CHAR,
			isTAB => LED(0),
			isCR => LED(1),
			isBS  => LED(2),
			isDEL  => LED(3),
			isSPACE  => LED(4),
			isNUM  => LED(5),
			isALPHA  => LED(6),
			isCTRL  => LED(7)
		);
		
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

