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

entity sys_microbasic_basys2 is
    Port ( 
				-- 50MHz on the Basys2 board
				MCLK: in std_logic;
				
				-- 48MHz external clock
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


-- Connect to PmodUSBUART 
-- https://digilent.com/reference/pmod/pmodusbuart/reference-manual
alias JA_RTS: std_logic is PIO(72); --JA1;
alias JA_RXD: std_logic is PIO(73); --JA2;
alias JA_TXD: std_logic is PIO(74); --JA3;
alias JA_CTS: std_logic is PIO(75); --JA4;

-- Test points on JB
alias JB_TEST1: std_logic is PIO(76);
alias JB_TEST2: std_logic is PIO(77);
alias JB_TEST3: std_logic is PIO(78);
alias JB_TEST4: std_logic is PIO(79);

alias RESET: std_logic is BTN(3);

-- debug
signal test_static, test_clk: std_logic;
signal digsel: std_logic_vector(2 downto 0);
signal T, debug, freqcnt_value: std_logic_vector(31 downto 0);
signal hexdata, showdigit: std_logic_vector(3 downto 0);
signal freqcnt_in: std_logic;

signal cnt50MHz: std_logic_vector(3 downto 0);
--alias vgaclk: std_logic is cnt50MHz(0);
signal vgaclk: std_logic;

signal prescale_baud, prescale_power: integer range 0 to 65535;
signal freq307200, freq153600, freq76800, freq38400, freq19200, freq9600, freq4800, freq2400, freq1200, freq600, freq300: std_logic;		
signal freq4096, freq32, freq8, freq4, freq2, hexclk: std_logic;		

-- output path for Intel hex format
signal TXD_READY: std_logic;
signal TXD_CHAR: std_logic_vector(7 downto 0);
signal TXD_SEND: std_logic;
-- input path for Intel hex format
signal RXD_READY: std_logic;
signal RXD_CHAR: std_logic_vector(7 downto 0);
--signal txd_send: std_logic;


---
signal switch: std_logic_vector(7 downto 0);
alias sw_mode: std_logic is switch(0);
alias sw_baudrate: std_logic_vector(2 downto 0) is switch(7 downto 5);
-- 
signal button: std_logic_vector(7 downto 0);
alias btn_hexout: std_logic is button(0);
alias btn_scroll: std_logic_vector(1 downto 0) is button(2 downto 1);

---- UART
signal baudrate_x1, baudrate_x2, baudrate_x4: std_logic;

begin

-- not used, inactive
PS2C <= '1';
PS2D <= '1';

-- divide external clock
clock_ext: entity work.sn74hc4040 port map (
			clock_10 => UCLK,	-- 48MHz "half-size" crystal on breadboard (ESC-220BX)
			reset_11 => RESET,
			q1_9 => vgaclk, 		-- 24MHz
			q2_7 => open,			-- 12 (internal dotclk)
			q3_6 => open,			-- 6
			q4_5 => open,			-- 3
			q5_3 => open, 			-- 1.5
			q6_2 => open, 	 		-- 0.75
			q7_4 =>   open,		-- 0.0375
			q8_13 =>  open,		-- 
			q9_12 =>  digsel(0),	-- 
			q10_14 => digsel(1),	-- 
			q11_15 => digsel(2),	-- 
			q12_1 =>  open			-- 
		);

-- divide internal clock   	
clock_int: process(MCLK, freq153600, freq4096)
begin
	if (rising_edge(MCLK)) then
		cnt50MHz <= std_logic_vector(unsigned(cnt50MHz) + 1);
		if (prescale_baud = 0) then
			freq307200 <= not freq307200;
			prescale_baud <= (25000000 / (2 * 153600));
		else
			prescale_baud <= prescale_baud - 1;
		end if;
		if (prescale_power = 0) then
			freq4096 <= not freq4096;
			prescale_power <= (25000000 / (2 * 4096));
		else
			prescale_power <= prescale_power - 1;
		end if;
	end if;
end process;

baudgen: entity work.sn74hc4040 port map (
			clock_10 => freq307200,
			reset_11 => RESET,
			q1_9 => freq153600, 
			q2_7 => freq76800,
			q3_6 => freq38400,		
			q4_5 => freq19200,		
			q5_3 => freq9600,		
			q6_2 => freq4800, 	
			q7_4 => freq2400,		
			q8_13 => freq1200,		
			q9_12 =>  freq600,
			q10_14 => freq300,	
			q11_15 => open,	
			q12_1 =>  open	
		);
--
powergen: entity work.sn74hc4040 port map (
			clock_10 => freq4096,
			reset_11 => RESET,
			q1_9 => open, 
			q2_7 => open,
			q3_6 => open,		
			q4_5 => open,		
			q5_3 => open,		
			q6_2 => open, 	
			q7_4 => open,		
			q8_13 => freq32,		
			q9_12 =>  open,	
			q10_14 => freq8,	
			q11_15 => freq4,	
			q12_1 =>  freq2	
		);
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
			  data => debug(15 downto 0),
			  digsel => digSel(1 downto 0),
           showdigit => "0000",	-- all digits on
			  showdot => "1011",		-- middle digit on
			  -- outputs
           anode => AN,
			  segment(7) => DP,
			  segment(6 downto 0) => SEG
			 );	 


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

-- count signal frequencies
freqcnt: entity work.freqcounter Port map ( 
		reset => RESET,
      clk => freq2,
      freq => freqcnt_in,
		bcd => '1',
		add => X"00000004",
		cin => '0',
		cout => open,
      value => freqcnt_value
	);
	
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
			valid => open,
         rxd => JA_TXD
		);
		
with sw_baudrate select
		baudrate_x4 <= freq153600 when "111",
							freq76800 when "110", 
							freq38400 when "101",
							freq19200 when "100",		
							freq9600 when "011",		
							freq4800 when "010",		
							freq2400 when "001", 	
							freq1200 when others;		

with sw_baudrate select
		baudrate_x2 <= freq76800 when "111", 
							freq38400 when "110",
							freq19200 when "101",		
							freq9600 when "100",		
							freq4800 when "011",		
							freq2400 when "010", 	
							freq1200 when "001",
						   freq600 when others;

with sw_baudrate select
		baudrate_x1 <= freq38400 when "111",
							freq19200 when "110",		
							freq9600 when "101",		
							freq4800 when "100",		
							freq2400 when "011", 
							freq1200 when "010",
							freq600  when "001",
							freq300 when others;		
end;

