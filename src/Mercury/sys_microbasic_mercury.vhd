----------------------------------------------------------------------------------
-- Company: 		 https://hackaday.io/projects/hacker/233652
-- Engineer: 		 zpekic@hotmail.com
-- 
-- Create Date:    21:29:29 10/05/2025 
-- Design Name: 
-- Module Name:    MicroBasic - Behavioral 
-- Project Name: 
-- Target Devices: MicroNova Mercury2 board
-- Tool versions:  AMD Vivado 2025.2, mcc - microcode compiler
-- Description: https://hackaday.io/project/204482-cpu-running-basic
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
use work.microbasic_package.all;

entity sys_microbasic_mercury is
    Port ( 
				-- 50MHz on the Mercury board
				clk: in std_logic;
				-- Master reset button on Mercury board
				--USR_BTN: in std_logic; 
				-- 16MHz external clock
				ext_clk: in std_logic;
				-- Switches on baseboard
				sw: in std_logic_vector(7 downto 0); 
				-- Push buttons on baseboard
				btn: in std_logic_vector(3 downto 0); 
				-- Stereo audio output on baseboard
				--AUDIO_OUT_L, AUDIO_OUT_R: out std_logic;
				-- 7seg LED on baseboard 
				ag_seg: out std_logic_vector(6 downto 0); 
				an_7seg: out std_logic_vector(3 downto 0); 
				seg_dot: out std_logic; 
				-- 4 LEDs on Mercury board
				led: out std_logic_vector(2 downto 0);
				-- ADC interface
				-- channel	input
				-- 0			Audio Left
				-- 1 			Audio Right
				-- 2			Temperature
				-- 3			Light	
				-- 4			Pot
				-- 5			Channel 5 (free)
				-- 6			Channel 6 (free)
				-- 7			Channel 7 (free)
				--ADC_MISO: in std_logic;
				--ADC_MOSI: out std_logic;
				--ADC_SCK: out std_logic;
				--ADC_CSN: out std_logic;
				-- VGA interface
				hsync, vsync: out std_logic;
				red: out std_logic_vector(2 downto 0);
				grn: out std_logic_vector(2 downto 0);
				blu: out std_logic_vector(1 downto 0);
				--PMOD interface
				pmod: inout std_logic_vector(7 downto 0)
          );
end sys_microbasic_mercury;

architecture Structural of sys_microbasic_mercury is

-- IL Code
signal il_a: std_logic_vector(10 downto 0); -- up to 2k supported
signal il_d: std_logic_vector(7 downto 0);

-- stores Basic program and input line, everything else is custom registers inside CPU!
type memory is array (0 to 65535) of std_logic_vector(7 downto 0);
signal ram: memory;
signal nBUSREQ, nBUSACK, nRD, nWR: std_logic;
signal A: std_logic_vector(15 downto 0);
signal D: std_logic_vector(7 downto 0);
signal pattern, memData: std_logic_vector(7 downto 0); 
signal sel_lo4k: std_logic;

-- Connect to PmodUSBUART 
-- https://digilent.com/reference/pmod/pmodusbuart/reference-manual
alias PMOD_RTS0: std_logic is PMOD(0);	
alias PMOD_RXD0: std_logic is PMOD(1);
alias PMOD_TXD0: std_logic is PMOD(2);
alias PMOD_CTS0: std_logic is PMOD(3);	
alias PMOD_RTS1: std_logic is PMOD(4);
alias PMOD_RXD1: std_logic is PMOD(5);
alias PMOD_TXD1: std_logic is PMOD(6);
alias PMOD_CTS1: std_logic is PMOD(7);

alias RESET: std_logic is btn(3); --USR_BTN;

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

signal cnt25MHz: std_logic_vector(7 downto 0); -- 8 bit counter driven by 50MHz
signal cnt8MHz: std_logic_vector(7 downto 0); -- 8 bit counter driven by 16MHz (EXT_CLK)
alias vga_clk: std_logic is cnt25MHz(0);
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

-- debounced inputs
signal switch: std_logic_vector(7 downto 0);
alias sw_baudrate: std_logic_vector(2 downto 0) is switch(7 downto 5);
alias sw_cpuclk: std_logic_vector(2 downto 0) is switch(4 downto 2);
alias sw_traceRegSel: std_logic_vector(1 downto 0) is switch(1 downto 0);
alias sw_traceDisable: std_logic is switch(4);
signal button: std_logic_vector(7 downto 0);

---- UART
signal baudrate_x1, baudrate_x2, baudrate_x4: std_logic;

-- VGA
signal x80, y60: std_logic_vector(7 downto 0);
signal vga_fgcolor, vga_bgcolor: std_logic_vector(3 downto 0);
signal ram_addr, inp_addr, prg_addr, mcc_addr, sym_addr: std_logic_vector(15 downto 0);	
signal ram_char, sym_char, vga_char, sts_char: std_logic_vector(7 downto 0);
signal complement: std_logic_vector(7 downto 0);
signal inp_cursor, prg_cursor, mcc_cursor, vga_cursor: std_logic;
signal inp_active, prg_active, mcc_active, mcc_active_out, vga_window: std_logic;
-- 3 independent windows can overlap as they wish, but higher priority window will occluse the lower ones
signal win_vector: std_logic_vector(2 downto 0);	-- 3 bits for 3 independent windows
signal win_sel: std_logic_vector(1 downto 0);		-- 4 input MUX

begin

LED(0) <= not nWR;
LED(1) <= not nRD;
LED(2) <= not nBUSREQ;

PMOD_RXD1 <= debug_txd;
--LED <= RXD_CHAR when (button(2) = '0') else switch;

-- divide external clock
on_ext_clk: process(ext_clk)
begin
 if (rising_edge(ext_clk)) then
    cnt8MHz <= std_logic_vector (unsigned (cnt8MHz) + 1);
 end if;
end process;

-- divide internal clock   	
on_clk: process(RESET, CLK, cnt307200, cnt4096, cnt25MHz)
begin
	if (RESET = '1') then
		prescale_baud <= 0;
		prescale_power <= 0;
		cnt307200 <= (others => '0');
		cnt4096 <= (others => '0');
	else
		if (rising_edge(CLK)) then
			cnt25MHz <= std_logic_vector(unsigned(cnt25MHz) + 1);
			-- baudrate clock generation
			if (prescale_baud = 0) then
				cnt307200 <= std_logic_vector(unsigned(cnt307200) + 1);
				prescale_baud <= (25000000 / 307200) - 1;
			else
				prescale_baud <= prescale_baud - 1;
			end if;
			-- slow clock to get to 2Hz
			if (prescale_power = 0) then
				cnt4096 <= std_logic_vector(unsigned(cnt4096) + 1);
				prescale_power <= (25000000 / 4096);
			else
				prescale_power <= prescale_power - 1;
			end if;
			-- 1000Hz for CPU ticks (to measure elapsed time in milliseconds)
			if (prescale_ms = 0) then
				prescale_ms <= (25000000 / 1000);
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

-- 
nBUSACK <= '0';	-- nothing competes for the RAM
nBUSREQ <= '1';

cpu: entity work.MicroBasic 
		Generic map (
		 --MSB => 15	-- 16-bit vars / arithmetic
		 MSB => 31,	-- 32-bit vars / arithmetic
		 Core_End => X"FFFF"
		)
		Port map (
		reset => RESET,
		clk => cpu_clk,
		clk_tick => freq1kHz,
		-- internal GOTO cache state
		cache_empty => cpu_cache_empty,
		cache_full => cpu_cache_full,
		-- Intermediate language (IL) read-only memory
		IL_A => il_a,
		IL_D => il_d,
		TB_EXTENDED => '1', --dip_extended,
		-- Basic code and command line memory
		nBUSREQ => nBUSREQ,
		nBUSACK => open,
		nREADY => '0',
		nRD => nRD,
		nWR => nWR,
		ABUS => A,
		DBUS => D,		
		NMI => '0',
		INT => '0',
		INTACK => open,
		-- output char
		outchar => cpu_outchar,
		outchar_send => cpu_outchar_send,
		outchar_ready => cpu_outchar_ready,
		-- input char
		inchar => RXD_CHAR,
		inchar_ready => RXD_READY,
		-- debug / trace
		overflowEnable => '1', --dip_overflowEnable,
		traceEnable => (not sw_traceDisable),
		baudrate => baudrate_x1,
		debug_txd => debug_txd, 
		debug_uipc => cpu_uipc,
		debug_t => cpu_t,					-- use to highlight T position
		debug_sel => sw_traceRegSel,	-- select 1 of 4 internal registers to visualize on LED and VGA
		debug_bus => cpu_debug			
	);

-- ROM containing the IL language instructions (2 versions of Tiny Basic interpreter)
il_rom: entity work.tbil port map ( 
		extended => '1', --dip_extended,
		a => il_a,
		d => il_d 
	);

-- infer simple 4k RAM
on_cpuclk: process(cpu_clk)
begin
	if (rising_edge(cpu_clk)) then
		if ((nBUSACK or nWR or sel_lo4k) = '0') then 
			ram(to_integer(unsigned(A(11 downto 0)))) <= D;
		end if;
	end if;
end process;

sel_lo4k <= '0' when (A(15 downto 12) = X"0") else '1';
memData <= pattern when (sel_lo4k = '1') else ram(to_integer(unsigned(A(11 downto 0))));
D <= memData when ((nBUSACK or nRD) = '0') else "ZZZZZZZZ";

-- Character generator ROM handy for the marquee demo
chargen: entity work.chargen_rom port map (
		a => A(10 downto 0),			-- 256 chars (128 duplicated, upper 128 reversed) * 8 bytes per char
		pattern => pattern
	);
	
-- CPU clock should ideally be sync'd when switching from one frequency to another
with sw_cpuclk select cpu_clk <= 
		button(0) when O"0",
		cnt4096(10) when O"1",		-- 4Hz
		cnt4096(6) when O"2",		-- 64Hz
		cnt4096(0) when O"3",		-- 4.096kHz
		cnt8MHz(3) when O"4",		-- 1MHz (approx 6502)
		cnt8MHz(1) when O"5",		-- 4MHz (approx Z80)
		cnt8MHz(0) when O"6",		-- 8MHz (approx 68000)
		CLK when others;            -- 50MHz
			 
-- display some debug data of 6-digit 7-seg display	
leds: entity work.fourdigitsevensegled port map (  
          -- inputs
        data => cpu_debug(15 downto 0),
        digsel => cnt4096(5 downto 4),
        showdigit => "1111",
        showdot => cpu_debug(27 downto 24),
        showsegments => '1',
        -- outputs
        anode => an_7seg,
        segment(7) => seg_dot,
        segment(6 downto 0) => ag_seg
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
--freqcnt: entity work.freqcounter Port map ( 
--		reset => RESET,
--		clk => freq2,
--		freq => baudrate_x1,
--		bcd => '1',
--		add => X"00000004",
--		cin => '0',
--		cout => open,
--		value => freqcnt_value
--	);		

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
		cursor_type => sw_traceDisable,	-- only visual change, not functional
		-- VGA connections
		color12(11 downto 9) => RED,
		color12(8) => open,
		color12(7 downto 5) => GRN,
		color12(4) => open,
		color12(3 downto 2) => BLU,
		color12(1 downto 0) => open,
		hsync => HSYNC,
		vsync => VSYNC
	);
	
inpwin: entity work.hwindow
		Generic map (
			top => 	X"0A",
			left => X"08",
			width => X"40",
			height => X"02"			
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
			top => 	X"0E",
			left => X"08",
			width => X"40",
			height => X"1E"			
		)
		Port map ( 
			enable => '1',
			x => x80,
			y => y60,
			m_base => X"0080",
			m_cursor => cpu_debug(15 downto 0),
			-- outputs
			char_addr => prg_addr,
			cursor_hit => prg_cursor,
			active => prg_active
		);

mccwin: entity work.hwindow
		Generic map (
			top => 	X"27", -- to test vertical overlap
			left => X"2C", -- to test horizontal overlap
			width => X"20",
			height => X"10"			
		)
		Port map ( 
			enable => (not sw_cpuclk(2)),
			x => x80,
			y => y60,
			m_base => X"0000",
			m_cursor => X"01E0",
			-- outputs
			char_addr => mcc_addr,
			cursor_hit => mcc_cursor,
			active => mcc_active_out
		);

-- implement transparency on mccwin (TODO: move the logic inside the hardware window?)
mcc_active <= '0' when (sym_char = X"FF") else mcc_active_out;

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
			"0000" when others;	-- white (but status line chars will be inverted)

with win_sel select vga_bgcolor <= 
			"0001" when "01",		-- blue for Core RAM 
			"0001" when "10",		-- blue for Core RAM
			"0010" when "11", 	-- green for Microcode symbols RAM
			"1111" when others;	-- black (but status line chars will be inverted)

with win_sel select vga_char <= 
			ram_char when "01",
			ram_char when "10",
			sym_char when "11",
			sts_char when others;	
			
sts_rom: entity work.statusrom
    Generic map (
			line => X"06"
			)
    Port map ( 
			x => x80, 
			y => y60,
            status(11 downto 9) => sw_baudrate, 
            status(8 downto 6) => sw_cpuclk,
			-- which register is displayed as underline cursor
            status(5 downto 3) => ('0' & sw_traceRegSel),
			-- processor state (tracing, running)
            status(2 downto 0) => ('0' & cpu_debug(31 downto 30)),
            char => sts_char
		);
			
ram_addr <= prg_addr when (prg_active = '1') else inp_addr; -- both mapped to same RAM
complement <= X"80" when (ram_addr = cpu_t) else X"00";		-- also indicate location of T in RAM
ram_char <= complement xor ram(to_integer(unsigned(ram_addr(10 downto 0))));

sym_ram: entity work.symTracer port map (
		reset => RESET,
		rom_clk => cnt25MHz(0),		-- 25MHz
		refresh_clk => cnt25MHz(3),	-- must be at least 256* higher than cpu clock for full window refresh
		cpu_clk => cpu_clk,
		--- 
		uipc => cpu_uipc,
		--
		char_addr => mcc_addr(8 downto 0),
		char_out => sym_char		
	);

end;

