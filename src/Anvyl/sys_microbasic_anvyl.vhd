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
				--JB1: out std_logic;
				--JB2: out std_logic;
				--JB3: out std_logic;
				--JB4: out std_logic;
				--JB7: out std_logic;
				--JB8: out std_logic;
				--JB9: out std_logic;
				--JB10: out std_logic;
				--JC1: out std_logic;
				--JC2: out std_logic;
				--JC3: out std_logic;
				--JC4: out std_logic;
				--JC7: out std_logic;
				--JC8: out std_logic;
				--JC9: out std_logic;
				--JC10: out std_logic;
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
				DIP_B4, DIP_B3, DIP_B2, DIP_B1: in std_logic;
				DIP_A4, DIP_A3, DIP_A2, DIP_A1: in std_logic;
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
				LDT1G: out std_logic;
				LDT1Y: out std_logic;
				LDT1R: out std_logic;
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
				--BB1: out std_logic;
				--BB2: out std_logic;
				--BB3: out std_logic;
				--BB4: out std_logic;
				--BB5: out std_logic;
				--BB6: out std_logic;
				--BB7: out std_logic;
				--BB8: out std_logic;
				--BB9: out std_logic;
				BB10: in std_logic
          );
end sys_microbasic_anvyl;

architecture Structural of sys_microbasic_anvyl is

-- IL Code
signal il_a: std_logic_vector(10 downto 0); -- up to 2k supported
signal il_d: std_logic_vector(7 downto 0);
signal il_a_valid: std_logic;

-- stores Basic program and input line, everything else is custom registers inside CPU!
type memory is array (0 to 2047) of std_logic_vector(7 downto 0);
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
alias EXT_CLK: std_logic is BB10;	-- external crystal can frequency

-- debug
signal T, freqcnt_value: std_logic_vector(31 downto 0);
signal cpu_debug: std_logic_vector(31 downto 0);
signal hexdata, showdigit: std_logic_vector(3 downto 0);
signal freqcnt_in: std_logic;
signal debug_txd: std_logic;
signal cpu_t: std_logic_vector(15 downto 0);
signal cpu_cache_full, cpu_cache_empty: std_logic;
signal cpu_uipc: std_logic_vector(8 downto 0);		-- microcode program counter value

signal prescale_baud, prescale_power, prescale_ms: integer range 0 to 65535;

signal cnt50MHz: std_logic_vector(7 downto 0); -- 8 bit counter driven by 100MHz
alias vga_clk: std_logic is cnt50MHz(1);
signal cnt307200: std_logic_vector(15 downto 0); -- 16 bit counter driven by 2*307.2kHz
alias freq19200: std_logic is cnt307200(4);

signal cnt4096: std_logic_vector(11 downto 0); -- 12 bit counter driven by 2*4.096kHz
alias freq2: std_logic is cnt4096(11); 
signal cpu_clk: std_logic;
signal freq1kHz: std_logic;

-- single char UART output
signal cpu_outchar_ready, cpu_outchar_send: std_logic;
signal cpu_outchar: std_logic_vector(7 downto 0);
-- single char UART input
signal RXD_READY, RXD_VALID: std_logic;
signal RXD_CHAR: std_logic_vector(7 downto 0);

---
signal switch: std_logic_vector(7 downto 0);
alias sw_baudrate: std_logic_vector(2 downto 0) is switch(7 downto 5);
alias sw_cpuclk: std_logic_vector(2 downto 0) is switch(4 downto 2);
signal button: std_logic_vector(7 downto 0);
signal dip: std_logic_vector(7 downto 0);

---- UART
signal baudrate_x1, baudrate_x2, baudrate_x4: std_logic;

-- VGA
signal x80, y60: std_logic_vector(7 downto 0);
signal vga_fgcolor, vga_bgcolor: std_logic_vector(3 downto 0);
signal ram_addr, inp_addr, prg_addr, mcc_addr, sym_addr: std_logic_vector(15 downto 0);	
signal ram_char, sym_char, vga_char: std_logic_vector(7 downto 0);
signal complement: std_logic_vector(7 downto 0);
signal inp_cursor, prg_cursor, mcc_cursor, vga_cursor: std_logic;
signal inp_active, prg_active, mcc_active, vga_window: std_logic;
-- 3 independent windows can overlap as they wish, but higher priority window will occluse the lower ones
signal win_vector: std_logic_vector(2 downto 0);	-- 3 bits for 3 independent windows
signal win_sel: std_logic_vector(1 downto 0);		-- 4 input MUX


begin

LDT1R <= not nWR;
LDT1G <= not nRD;
LDT1Y <= not nBUSREQ;
LDT2R <= cpu_cache_full;
LDT2G <= cpu_cache_empty;
LDT2Y <= not (cpu_cache_empty or cpu_cache_full);

PMOD_RXD1 <= debug_txd;
LED <= RXD_CHAR when (button(2) = '0') else switch;

-- divide internal clock   	
on_mclk: process(CLK, cnt307200, cnt4096, cnt50MHz)
begin
	if (RESET = '1') then
		prescale_baud <= 0;
		prescale_power <= 0;
		cnt307200 <= (others => '0');
		cnt4096 <= (others => '0');
	else
		if (rising_edge(CLK)) then
			cnt50MHz <= std_logic_vector(unsigned(cnt50MHz) + 1);
			-- baudrate clock generation
			if (prescale_baud = 0) then
				cnt307200 <= std_logic_vector(unsigned(cnt307200) + 1);
				prescale_baud <= (50000000 / 307200) - 1;
			else
				prescale_baud <= prescale_baud - 1;
			end if;
			-- slow clock to get to 2Hz
			if (prescale_power = 0) then
				cnt4096 <= std_logic_vector(unsigned(cnt4096) + 1);
				prescale_power <= (50000000 / 4096);
			else
				prescale_power <= prescale_power - 1;
			end if;
			-- 1000Hz for CPU ticks (to measure elapsed time in milliseconds)
			if (prescale_ms = 0) then
				prescale_ms <= (50000000 / 1000);
				freq1kHz <= not freq1kHz;
			else
				prescale_ms <= prescale_ms - 1;
			end if;
		end if;
	end if;
end process;

--	debounce noisy inputs
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

	debounce_dip: entity work.debouncer8channel Port map ( 
		clock => freq19200, 
		reset => RESET,
		signal_raw(7) => DIP_B4,
		signal_raw(6) => DIP_B3,
		signal_raw(5) => DIP_B2,
		signal_raw(4) => DIP_B1,
		signal_raw(3) => DIP_A4,
		signal_raw(2) => DIP_A3,
		signal_raw(1) => DIP_A2,
		signal_raw(0) => DIP_A1,
		signal_debounced => dip
	);
	
-- 
nBUSACK <= '0';	-- nothing competes for the RAM
cpu: entity work.MicroBasic Port map (
		reset => RESET,
		clk => cpu_clk,
		clk_tick => freq1kHz,
		cond_external => button(1),
		-- internal GOTO cache state
		cache_empty => cpu_cache_empty,
		cache_full => cpu_cache_full,
		-- Intermediate language (IL) read-only memory
		IL_A => il_a,
		IL_D => il_d,
		IL_A_VALID => il_a_valid,
		-- Basic code and command line memory
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
		traceEnable => not sw_cpuclk(2),
		baudrate => baudrate_x1,
		debug_txd => debug_txd, 
		debug_uipc => cpu_uipc,
		debug_t => cpu_t,					-- use to highlight T position
		debug_sel => sw(1 downto 0),	-- select 1 of 4 internal registers to visualize on LED and VGA
		debug_bus => cpu_debug			
	);

-- ROM containing the IL language instructions
cu_il: entity work.il_rom Port map ( 
		a => il_a,
      d => il_d,
		a_valid => il_a_valid
		);

-- infer simple 2k RAM
D <= ram(to_integer(unsigned(A(10 downto 0)))) when ((nBUSACK or nRD) = '0') else "ZZZZZZZZ";
on_cpuclk: process(cpu_clk)
begin
	if (rising_edge(cpu_clk)) then
		if ((nBUSACK or nWR) = '0') then 
			ram(to_integer(unsigned(A(10 downto 0)))) <= D;
		end if;
	end if;
end process;

-- CPU clock should ideally be sync'd when switching from one frequency to another
with sw_cpuclk select cpu_clk <= 
		button(0) when O"0",
		cnt4096(10) when O"1",		-- 4Hz
		cnt4096(6) when O"2",		-- 64Hz
		cnt4096(0) when O"3",		-- 4.096kHz
		cnt50MHz(3) when O"4",		-- 6.25MHz
		cnt50MHz(2) when O"5",		-- 12.5MHz
		cnt50MHz(1) when O"6",		-- 25MHz 
--		cnt50MHz(0) when others; 	-- 50MHz
		CLK when others;
			 
-- display some debug data of 6-digit 7-seg display	
leds: entity work.sixdigitsevensegled port map ( 
			  -- inputs
			  data => cpu_debug(23 downto 0),
			  digsel => cnt4096(6 downto 4),
           showdigit => "111111",
			  showdot => cpu_debug(29 downto 24),
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

-- VGA to visualize Basic memory and microcode execution
-- 32 rows by 64 chars are displayed, so whole 2k RAM fits into display
vga: entity work.mwvga Port map ( 
		reset => reset,
		clk => vga_clk,
		char => vga_char,
		fgcolor => vga_fgcolor,
		bgcolor => vga_bgcolor,
		hactive => open, -- TODO: use for BUSACK?
		vactive => open, -- TODO: use for BUSACK?
		x => x80,
		y => y60,
		cursor_enable => (freq2 and vga_cursor),
		cursor_type => '1',
		-- VGA connections
		color12(11 downto 8) => RED_O,
		color12(7 downto 4) => GREEN_O,
		color12(3 downto 0) => BLUE_O,
		hsync => HSYNC_O,
		vsync => VSYNC_O
	);
	
inpwin: entity work.hwindow
		Generic map (
			top => 	X"08",
			left => 	X"08",
			width => X"40",
			height => X"04"			
		)
		Port map ( 
			enable => '1',
			x => x80,
			y => y60,
			m_base => X"0000",
			m_cursor => cpu_debug(15 downto 0),
			-- outputs
			char_addr => inp_addr,
			cursor_hit => inp_cursor,
			active => inp_active
		);

prgwin: entity work.hwindow
		Generic map (
			top => 	X"0C",
			left => 	X"08",
			width => X"40",
			height => X"1C"			
		)
		Port map ( 
			enable => '1',
			x => x80,
			y => y60,
			m_base => X"0100",
			m_cursor => cpu_debug(15 downto 0),
			-- outputs
			char_addr => prg_addr,
			cursor_hit => prg_cursor,
			active => prg_active
		);

mccwin: entity work.hwindow
		Generic map (
			top => 	X"27", -- to test vertical overlap
			left => 	X"3C", -- to test horizontal overlap
			width => X"10",
			height => X"10"			
		)
		Port map ( 
			enable => (not sw_cpuclk(2)),
			x => x80,
			y => y60,
--			m_base => "000" & std_logic_vector(unsigned(cpu_uipc) - 15) & "0000",
--			m_cursor => "000" & std_logic_vector(unsigned(cpu_uipc) - 0) & "0000",
			m_base => X"0000",
			m_cursor => X"00F0",
			-- outputs
			char_addr => mcc_addr,
			cursor_hit => mcc_cursor,
			active => mcc_active
		);

-- very simple priority encoder
win_vector <= mcc_active & prg_active & inp_active;
-- mcc > prg > inp > background
with win_vector select win_sel <= 
	"00" when "000",
	"01" when "001",
	"10" when "010",
	"10" when "011",
	"11" when others;
			
with win_sel select vga_cursor <= 
			inp_cursor when "01",
			prg_cursor when "10",
			mcc_cursor when "11",
			'0' when others;

with win_sel select vga_fgcolor <= 
			"0110" when "01",		-- yellow for input buffer
			"0111" when "10", 	-- white	for Basic program text
			"0000" when "11", 	-- black for microcode symbols
			dip(7 downto 4) when others;	-- border color check

with win_sel select vga_bgcolor <= 
			"0001" when "01",		-- blue for Core RAM 
			"0001" when "10",		-- blue for Core RAM
			"0010" when "11", 	-- green for Microcode symbols RAM
			dip(3 downto 0) when others;	-- border color check

with win_sel select vga_char <= 
			ram_char when "01",
			ram_char when "10",
			sym_char when "11",
			X"7F" when others;	-- tiny chessboard pattern
			
ram_addr <= prg_addr when (prg_active = '1') else inp_addr; -- both mapped to same RAM
complement <= X"80" when (ram_addr = cpu_t) else X"00";		-- also indicate location of T in RAM
ram_char <= complement xor ram(to_integer(unsigned(ram_addr(10 downto 0))));

sym_ram: entity work.symTracer port map (
		reset => RESET,
		rom_clk => CLK,					-- 100MHz
		refresh_clk => cnt50MHz(to_integer(unsigned(dip(2 downto 0)))),	-- TODO: find best frequency?
		--- 
		uipc => cpu_uipc,
		--
		char_addr => mcc_addr(7 downto 0),
		char_out => sym_char		
	);
end;

