--------------------------------------------------------
-- mcc V1.5.1004 - Custom microcode compiler (c)2020-... 
--    https://github.com/zpekic/MicroCodeCompiler
--------------------------------------------------------
-- Auto-generated file, do not modify. To customize, create 'code_template.vhd' file in mcc.exe folder
-- Supported placeholders:  [NAME], [FIELDS], [SIZES], [TYPE], [SIGNAL], [INSTANCE], [MEMORY].
--------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
--use IEEE.numeric_std.all;

package microBasic_code is

-- memory block size
constant CODE_DATA_WIDTH: 	positive := 64;
constant CODE_ADDRESS_WIDTH: 	positive := 9;
constant CODE_ADDRESS_LAST: 	positive := 511;
constant CODE_IF_WIDTH: 	positive := 4;


type mb_code_memory is array(0 to 511) of std_logic_vector(63 downto 0);

signal mb_uinstruction: std_logic_vector(63 downto 0);

--mb_uinstruction <= mb_microcode(to_integer(unsigned(TODO))); -- copy to file containing the control unit. TODO is typically replace with 'ui_address' control unit output

--
-- L0011.nBUSREQ: .valfield 1 values 0, 1 default 1;
--
alias mb_nBUSREQ: 	std_logic is mb_uinstruction(63);
-- Value '0' allowed
-- Value '1' allowed
---- Start boilerplate code (use with utmost caution!)
--  nBUSREQ <= mb_nBUSREQ;
---- End boilerplate code

--
-- L0012.nWR: .valfield 1 values 0, 1 default 1;
--
alias mb_nWR: 	std_logic is mb_uinstruction(62);
-- Value '0' allowed
-- Value '1' allowed
---- Start boilerplate code (use with utmost caution!)
--  nWR <= mb_nWR;
---- End boilerplate code

--
-- L0013.nRD: .valfield 1 values 0, 1 default 1;
--
alias mb_nRD: 	std_logic is mb_uinstruction(61);
-- Value '0' allowed
-- Value '1' allowed
---- Start boilerplate code (use with utmost caution!)
--  nRD <= mb_nRD;
---- End boilerplate code

--
-- L0018.seq_cond: .if 4 values true, CHAROUT_BIT7, CHAROUT_READY, IL_PC_VALID, DBG_READY, MDR_IS_ZERO, nBUSACK, INLEND_MAX, INLEND_MIN, CHARIN_PRINTABLE, CHARIN_EQU_DB, CHARIN_READY, dummy_C, dummy_D, dummy_E, false default true;
--
alias mb_seq_cond: 	std_logic_vector(3 downto 0) is mb_uinstruction(60 downto 57);
constant seq_cond_true: 	integer := 0;
constant seq_cond_CHAROUT_BIT7: 	integer := 1;
constant seq_cond_CHAROUT_READY: 	integer := 2;
constant seq_cond_IL_PC_VALID: 	integer := 3;
constant seq_cond_DBG_READY: 	integer := 4;
constant seq_cond_MDR_IS_ZERO: 	integer := 5;
constant seq_cond_nBUSACK: 	integer := 6;
constant seq_cond_INLEND_MAX: 	integer := 7;
constant seq_cond_INLEND_MIN: 	integer := 8;
constant seq_cond_CHARIN_PRINTABLE: 	integer := 9;
constant seq_cond_CHARIN_EQU_DB: 	integer := 10;
constant seq_cond_CHARIN_READY: 	integer := 11;
constant seq_cond_dummy_C: 	integer := 12;
constant seq_cond_dummy_D: 	integer := 13;
constant seq_cond_dummy_E: 	integer := 14;
constant seq_cond_false: 	integer := 15;
---- Start boilerplate code (use with utmost caution!)
---- include '.controller <filename.vhd>, <stackdepth>;' in .mcc file to generate pre-canned microcode control unit and feed 'conditions' with:
--  cond(seq_cond_true) => '1',
--  cond(seq_cond_CHAROUT_BIT7) => CHAROUT_BIT7,
--  cond(seq_cond_CHAROUT_READY) => CHAROUT_READY,
--  cond(seq_cond_IL_PC_VALID) => IL_PC_VALID,
--  cond(seq_cond_DBG_READY) => DBG_READY,
--  cond(seq_cond_MDR_IS_ZERO) => MDR_IS_ZERO,
--  cond(seq_cond_nBUSACK) => nBUSACK,
--  cond(seq_cond_INLEND_MAX) => INLEND_MAX,
--  cond(seq_cond_INLEND_MIN) => INLEND_MIN,
--  cond(seq_cond_CHARIN_PRINTABLE) => CHARIN_PRINTABLE,
--  cond(seq_cond_CHARIN_EQU_DB) => CHARIN_EQU_DB,
--  cond(seq_cond_CHARIN_READY) => CHARIN_READY,
--  cond(seq_cond_dummy_C) => dummy_C,
--  cond(seq_cond_dummy_D) => dummy_D,
--  cond(seq_cond_dummy_E) => dummy_E,
--  cond(seq_cond_false) => '0',
---- End boilerplate code

--
-- L0036.seq_then: .then 9 values next, repeat, return, fork, @ default next;
--
alias mb_seq_then: 	std_logic_vector(8 downto 0) is mb_uinstruction(56 downto 48);
constant seq_then_next: 	std_logic_vector(8 downto 0) := O"000";
constant seq_then_repeat: 	std_logic_vector(8 downto 0) := O"001";
constant seq_then_return: 	std_logic_vector(8 downto 0) := O"002";
constant seq_then_fork: 	std_logic_vector(8 downto 0) := O"003";
-- Jump targets allowed!
-- include '.controller <filename.vhd>, <stackdepth>;' in .mcc file to generate pre-canned microcode control unit and connect 'then' to mb_seq_then

--
-- L0037.seq_else: .else 9 values next, repeat, return, fork, 0b000000..0b111111, @ default next;
--
alias mb_seq_else: 	std_logic_vector(8 downto 0) is mb_uinstruction(47 downto 39);
constant seq_else_next: 	std_logic_vector(8 downto 0) := O"000";
constant seq_else_repeat: 	std_logic_vector(8 downto 0) := O"001";
constant seq_else_return: 	std_logic_vector(8 downto 0) := O"002";
constant seq_else_fork: 	std_logic_vector(8 downto 0) := O"003";
-- Values from O"000" to O"077" allowed
-- Jump targets allowed!
-- include '.controller <filename.vhd>, <stackdepth>;' in .mcc file to generate pre-canned microcode control unit and connect 'else' to mb_seq_else

--
-- L0040.directByte: .valfield 8 values 0x00..0xFF default 0xFF;
--
alias mb_directByte: 	std_logic_vector(7 downto 0) is mb_uinstruction(38 downto 31);
-- Values from X"00" to X"FF" allowed
---- Start boilerplate code (use with utmost caution!)
--  directByte <= mb_directByte;
---- End boilerplate code

--
-- L0043.T: .regfield 2 values same, IL_PC, -, - default same;
--
alias mb_T: 	std_logic_vector(1 downto 0) is mb_uinstruction(30 downto 29);
constant T_same: 	std_logic_vector(1 downto 0) := "00";
constant T_IL_PC: 	std_logic_vector(1 downto 0) := "01";
-- Value "10" not allowed (name '-' is not assignable)
-- Value "11" not allowed (name '-' is not assignable)
---- Start boilerplate code (use with utmost caution!)
-- update_T: process(clk, mb_T)
-- begin
--	if (rising_edge(clk)) then
--		case mb_T is
----			when T_same =>
----				T <= T;
--			when T_IL_PC =>
--				T <= IL_PC;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0051.DBGINDEX: .regfield 2 values same, from_microcode, zero, crlf default same;
--
alias mb_DBGINDEX: 	std_logic_vector(1 downto 0) is mb_uinstruction(28 downto 27);
constant DBGINDEX_same: 	std_logic_vector(1 downto 0) := "00";
constant DBGINDEX_from_microcode: 	std_logic_vector(1 downto 0) := "01";
constant DBGINDEX_zero: 	std_logic_vector(1 downto 0) := "10";
constant DBGINDEX_crlf: 	std_logic_vector(1 downto 0) := "11";
---- Start boilerplate code (use with utmost caution!)
-- update_DBGINDEX: process(clk, mb_DBGINDEX)
-- begin
--	if (rising_edge(clk)) then
--		case mb_DBGINDEX is
----			when DBGINDEX_same =>
----				DBGINDEX <= DBGINDEX;
--			when DBGINDEX_from_microcode =>
--				DBGINDEX <= from_microcode;
--			when DBGINDEX_zero =>
--				DBGINDEX <= (others => '0');
--			when DBGINDEX_crlf =>
--				DBGINDEX <= crlf;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0059.IL_PC: .regfield 3 values same, zero, inc, T, pc_plus_off6, -, -, - default same;
--
alias mb_IL_PC: 	std_logic_vector(2 downto 0) is mb_uinstruction(26 downto 24);
constant IL_PC_same: 	std_logic_vector(2 downto 0) := O"0";
constant IL_PC_zero: 	std_logic_vector(2 downto 0) := O"1";
constant IL_PC_inc: 	std_logic_vector(2 downto 0) := O"2";
constant IL_PC_T: 	std_logic_vector(2 downto 0) := O"3";
constant IL_PC_pc_plus_off6: 	std_logic_vector(2 downto 0) := O"4";
-- Value O"5" not allowed (name '-' is not assignable)
-- Value O"6" not allowed (name '-' is not assignable)
-- Value O"7" not allowed (name '-' is not assignable)
---- Start boilerplate code (use with utmost caution!)
-- update_IL_PC: process(clk, mb_IL_PC)
-- begin
--	if (rising_edge(clk)) then
--		case mb_IL_PC is
----			when IL_PC_same =>
----				IL_PC <= IL_PC;
--			when IL_PC_zero =>
--				IL_PC <= (others => '0');
--			when IL_PC_inc =>
--				IL_PC <= std_logic_vector(unsigned(IL_PC) + 1);
--			when IL_PC_T =>
--				IL_PC <= T;
--			when IL_PC_pc_plus_off6 =>
--				IL_PC <= pc_plus_off6;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0071.IL_OP: .regfield 1 values same, from_interpreter default same;
--
alias mb_IL_OP: 	std_logic is mb_uinstruction(23);
constant IL_OP_same: 	std_logic := '0';
constant IL_OP_from_interpreter: 	std_logic := '1';
---- Start boilerplate code (use with utmost caution!)
-- update_IL_OP: process(clk, mb_IL_OP)
-- begin
--	if (rising_edge(clk)) then
--	    if (mb_IL_OP = IL_OP_from_interpreter) then
--		    IL_OP <= from_interpreter;
--	    end if;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0077.CHAROUT: .regfield 2 values same, from_interpreter, from_microcode, from_charin default same;
--
alias mb_CHAROUT: 	std_logic_vector(1 downto 0) is mb_uinstruction(22 downto 21);
constant CHAROUT_same: 	std_logic_vector(1 downto 0) := "00";
constant CHAROUT_from_interpreter: 	std_logic_vector(1 downto 0) := "01";
constant CHAROUT_from_microcode: 	std_logic_vector(1 downto 0) := "10";
constant CHAROUT_from_charin: 	std_logic_vector(1 downto 0) := "11";
---- Start boilerplate code (use with utmost caution!)
-- update_CHAROUT: process(clk, mb_CHAROUT)
-- begin
--	if (rising_edge(clk)) then
--		case mb_CHAROUT is
----			when CHAROUT_same =>
----				CHAROUT <= CHAROUT;
--			when CHAROUT_from_interpreter =>
--				CHAROUT <= from_interpreter;
--			when CHAROUT_from_microcode =>
--				CHAROUT <= from_microcode;
--			when CHAROUT_from_charin =>
--				CHAROUT <= from_charin;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0085.MAR: .regfield 2 values same, InlEnd, -, - default same;
--
alias mb_MAR: 	std_logic_vector(1 downto 0) is mb_uinstruction(20 downto 19);
constant MAR_same: 	std_logic_vector(1 downto 0) := "00";
constant MAR_InlEnd: 	std_logic_vector(1 downto 0) := "01";
-- Value "10" not allowed (name '-' is not assignable)
-- Value "11" not allowed (name '-' is not assignable)
---- Start boilerplate code (use with utmost caution!)
-- update_MAR: process(clk, mb_MAR)
-- begin
--	if (rising_edge(clk)) then
--		case mb_MAR is
----			when MAR_same =>
----				MAR <= MAR;
--			when MAR_InlEnd =>
--				MAR <= InlEnd;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0093.MDR: .regfield 2 values same, from_Bus, zero, CHARIN default same;
--
alias mb_MDR: 	std_logic_vector(1 downto 0) is mb_uinstruction(18 downto 17);
constant MDR_same: 	std_logic_vector(1 downto 0) := "00";
constant MDR_from_Bus: 	std_logic_vector(1 downto 0) := "01";
constant MDR_zero: 	std_logic_vector(1 downto 0) := "10";
constant MDR_CHARIN: 	std_logic_vector(1 downto 0) := "11";
---- Start boilerplate code (use with utmost caution!)
-- update_MDR: process(clk, mb_MDR)
-- begin
--	if (rising_edge(clk)) then
--		case mb_MDR is
----			when MDR_same =>
----				MDR <= MDR;
--			when MDR_from_Bus =>
--				MDR <= from_Bus;
--			when MDR_zero =>
--				MDR <= (others => '0');
--			when MDR_CHARIN =>
--				MDR <= CHARIN;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0101.InlEnd: .regfield 2 values same, InLine, inc, dec default same;
--
alias mb_InlEnd: 	std_logic_vector(1 downto 0) is mb_uinstruction(16 downto 15);
constant InlEnd_same: 	std_logic_vector(1 downto 0) := "00";
constant InlEnd_InLine: 	std_logic_vector(1 downto 0) := "01";
constant InlEnd_inc: 	std_logic_vector(1 downto 0) := "10";
constant InlEnd_dec: 	std_logic_vector(1 downto 0) := "11";
---- Start boilerplate code (use with utmost caution!)
-- update_InlEnd: process(clk, mb_InlEnd)
-- begin
--	if (rising_edge(clk)) then
--		case mb_InlEnd is
----			when InlEnd_same =>
----				InlEnd <= InlEnd;
--			when InlEnd_InLine =>
--				InlEnd <= InLine;
--			when InlEnd_inc =>
--				InlEnd <= std_logic_vector(unsigned(InlEnd) + 1);
--			when InlEnd_dec =>
--				InlEnd <= std_logic_vector(unsigned(InlEnd) - 1);
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0109.BP: .regfield 2 values same, InLine, -, - default same;
--
alias mb_BP: 	std_logic_vector(1 downto 0) is mb_uinstruction(14 downto 13);
constant BP_same: 	std_logic_vector(1 downto 0) := "00";
constant BP_InLine: 	std_logic_vector(1 downto 0) := "01";
-- Value "10" not allowed (name '-' is not assignable)
-- Value "11" not allowed (name '-' is not assignable)
---- Start boilerplate code (use with utmost caution!)
-- update_BP: process(clk, mb_BP)
-- begin
--	if (rising_edge(clk)) then
--		case mb_BP is
----			when BP_same =>
----				BP <= BP;
--			when BP_InLine =>
--				BP <= InLine;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0117.gotChar: .valfield 1 values 0, 1 default 0;
--
alias mb_gotChar: 	std_logic is mb_uinstruction(12);
-- Value '0' allowed
-- Value '1' allowed
---- Start boilerplate code (use with utmost caution!)
--  gotChar <= mb_gotChar;
---- End boilerplate code

--
-- L0123.dummy: .valfield 12 values * default 0;
--
alias mb_dummy: 	std_logic_vector(11 downto 0) is mb_uinstruction(11 downto 0);
-- Values from X"000" to X"FFF" allowed
---- Start boilerplate code (use with utmost caution!)
--  dummy <= mb_dummy;
---- End boilerplate code



constant mb_microcode: mb_code_memory := (

-- clear;
-- L0146@0000 E000007F91000000._reset:  DBGINDEX <= zero, IL_PC <= zero;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 10, IL_PC <= 001, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
0 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "10" & O"1" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- clear;
-- L0148@0001 E000007F91000000._reset1:  DBGINDEX <= zero, IL_PC <= zero;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 10, IL_PC <= 001, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
1 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "10" & O"1" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- clear;
-- L0150@0002 E000007F91000000._reset2:  DBGINDEX <= zero, IL_PC <= zero;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 10, IL_PC <= 001, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
2 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "10" & O"1" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- clear;
-- L0152@0003 E000007F91000000._reset3:  DBGINDEX <= zero, IL_PC <= zero;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 10, IL_PC <= 001, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
3 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "10" & O"1" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- traceString 4;
-- L0156@0004 E051288208000000.  trace(from_microcode), directByte = 4;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010001 else 001010001, directByte = 00000100, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
4 => '1' & '1' & '1' & X"0" & O"121" & O"121" & X"04" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- trace(crlf);
-- L0157@0005 E05128FF98000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010001 else 001010001, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
5 => '1' & '1' & '1' & X"0" & O"121" & O"121" & X"FF" & "00" & "11" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- traceString 2;
-- L0159@0006 E051288108000000.fetch:  trace(from_microcode), directByte = 2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010001 else 001010001, directByte = 00000010, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
6 => '1' & '1' & '1' & X"0" & O"121" & O"121" & X"02" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- traceString 3;
-- L0160@0007 E051288188000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010001 else 001010001, directByte = 00000011, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
7 => '1' & '1' & '1' & X"0" & O"121" & O"121" & X"03" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- IL_OP <= from_interpreter, IL_PC <= inc;
-- L0161@0008 E000007F82800000.  IL_OP <= from_interpreter, IL_PC <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 1, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
8 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "00" & O"2" & '1' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- if true then fork else fork;
-- L0162@0009 E00301FF80000000.  if true then fork else fork;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000011 else 000000011, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
9 => '1' & '1' & '1' & X"0" & O"003" & O"003" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- traceString 62;
-- L0165@000A E051289F08000000.badop:  trace(from_microcode), directByte = 62;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010001 else 001010001, directByte = 00111110, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
10 => '1' & '1' & '1' & X"0" & O"121" & O"121" & X"3E" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- trace(crlf);
-- L0166@000B E05128FF98000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010001 else 001010001, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
11 => '1' & '1' & '1' & X"0" & O"121" & O"121" & X"FF" & "00" & "11" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- dump_il();
-- L0167@000C E048247F80000000.  dump_il();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001001000 else 001001000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
12 => '1' & '1' & '1' & X"0" & O"110" & O"110" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- goto deadloop;
-- L0168@000D FE0006FF80000000.deadloop:  if false then next else deadloop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000001101, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
13 => '1' & '1' & '1' & X"F" & O"000" & O"015" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- traceString 6;
-- L0171@000E E051288308000000.  trace(from_microcode), directByte = 6;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010001 else 001010001, directByte = 00000110, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
14 => '1' & '1' & '1' & X"0" & O"121" & O"121" & X"06" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- outCRLF();
-- L0172@000F E0381C7F80000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000111000 else 000111000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
15 => '1' & '1' & '1' & X"0" & O"070" & O"070" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- goto fetch;
-- L0173@0010 FE00037F80000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000000110, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
16 => '1' & '1' & '1' & X"F" & O"000" & O"006" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- traceString 5;
-- L0176@0011 E051288288000000.  trace(from_microcode), directByte = 5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010001 else 001010001, directByte = 00000101, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
17 => '1' & '1' & '1' & X"0" & O"121" & O"121" & X"05" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- outChar(from_interpreter);
-- L0177@0012 E03A1D7F80200000.pc_loop:  outChar(from_interpreter);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000111010 else 000111010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 01, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
18 => '1' & '1' & '1' & X"0" & O"072" & O"072" & X"FF" & "00" & "00" & O"0" & '0' & "01" & "00" & "00" & "00" & "00" & '0' & X"000",

-- traceString 3;
-- L0178@0013 E051288188000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010001 else 001010001, directByte = 00000011, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
19 => '1' & '1' & '1' & X"0" & O"121" & O"121" & X"03" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- IL_PC <= inc, if CHAROUT_BIT7 then next else pc_loop;
-- L0179@0014 E200097F82000000.  IL_PC <= inc, if CHAROUT_BIT7 then next else pc_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0001) then 000000000 else 000010010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
20 => '1' & '1' & '1' & X"1" & O"000" & O"022" & X"FF" & "00" & "00" & O"2" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- trace(crlf);
-- L0180@0015 E05128FF98000000.pc_exit:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010001 else 001010001, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
21 => '1' & '1' & '1' & X"0" & O"121" & O"121" & X"FF" & "00" & "11" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- goto fetch;
-- L0181@0016 FE00037F80000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000000110, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
22 => '1' & '1' & '1' & X"F" & O"000" & O"006" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- traceString 8;
-- L0184@0017 E051288408000000.  trace(from_microcode), directByte = 8;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010001 else 001010001, directByte = 00001000, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
23 => '1' & '1' & '1' & X"0" & O"121" & O"121" & X"08" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- InlEnd <= InLine;
-- L0185@0018 E000007F80008000.gl:  InlEnd <= InLine;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 01, BP <= 00, gotChar = 0, dummy = 000000000000;
24 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "01" & "00" & '0' & X"000",

-- if CHARIN_READY then next else repeat;
-- L0186@0019 F60000FF80000000.gl_loop:  if CHARIN_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1011) then 000000000 else 000000001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
25 => '1' & '1' & '1' & X"B" & O"000" & O"001" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- if CHARIN_PRINTABLE then gl_print else next;
-- L0187@001A F220007F80000000.  if CHARIN_PRINTABLE then gl_print else next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1001) then 000100000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
26 => '1' & '1' & '1' & X"9" & O"040" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- directByte = 0x0D, if CHARIN_EQU_DB then gl_cr else next;
-- L0188@001B F42C000680000000.  directByte = 0x0D, if CHARIN_EQU_DB then gl_cr else next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1010) then 000101100 else 000000000, directByte = 00001101, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
27 => '1' & '1' & '1' & X"A" & O"054" & O"000" & X"0D" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- directByte = 0x08, if CHARIN_EQU_DB then gl_bs else next;
-- L0189@001C F428000400000000.  directByte = 0x08, if CHARIN_EQU_DB then gl_bs else next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1010) then 000101000 else 000000000, directByte = 00001000, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
28 => '1' & '1' & '1' & X"A" & O"050" & O"000" & X"08" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- directByte = 0x03, if CHARIN_EQU_DB then gl_esc else next;
-- L0190@001D F425000180000000.  directByte = 0x03, if CHARIN_EQU_DB then gl_esc else next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1010) then 000100101 else 000000000, directByte = 00000011, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
29 => '1' & '1' & '1' & X"A" & O"045" & O"000" & X"03" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- directByte = 0x07, outChar(from_microcode);
-- L0193@001E E03A1D0380400000.gl_ignore:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000111010 else 000111010, directByte = 00000111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 10, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
30 => '1' & '1' & '1' & X"0" & O"072" & O"072" & X"07" & "00" & "00" & O"0" & '0' & "10" & "00" & "00" & "00" & "00" & '0' & X"000",

-- gotChar = 1, goto gl_loop;
-- L0194@001F FE000CFF80001000.  gotChar = 1, if false then next else gl_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000011001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 1, dummy = 000000000000;
31 => '1' & '1' & '1' & X"F" & O"000" & O"031" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '1' & X"000",

-- if INLEND_MAX then gl_ignore else next;
-- L0196@0020 EE1E007F80000000.gl_print:  if INLEND_MAX then gl_ignore else next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0111) then 000011110 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
32 => '1' & '1' & '1' & X"7" & O"036" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- WriteCore(InlEnd, CHARIN);
-- L0197@0021 E03D1EFF800E0000.  WriteCore(InlEnd, CHARIN);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000111101 else 000111101, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 01, MDR <= 11, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
33 => '1' & '1' & '1' & X"0" & O"075" & O"075" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "01" & "11" & "00" & "00" & '0' & X"000",

-- InlEnd <= inc, outChar(from_charin);
-- L0198@0022 E03A1D7F80610000.  InlEnd <= inc, outChar(from_charin);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000111010 else 000111010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 11, MAR <= 00, MDR <= 00, InlEnd <= 10, BP <= 00, gotChar = 0, dummy = 000000000000;
34 => '1' & '1' & '1' & X"0" & O"072" & O"072" & X"FF" & "00" & "00" & O"0" & '0' & "11" & "00" & "00" & "10" & "00" & '0' & X"000",

-- WriteCore(InlEnd, zero);
-- L0199@0023 E03D1EFF800C0000.gl_write0:  WriteCore(InlEnd, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000111101 else 000111101, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 01, MDR <= 10, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
35 => '1' & '1' & '1' & X"0" & O"075" & O"075" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "01" & "10" & "00" & "00" & '0' & X"000",

-- gotChar = 1, goto gl_loop;
-- L0200@0024 FE000CFF80001000.  gotChar = 1, if false then next else gl_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000011001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 1, dummy = 000000000000;
36 => '1' & '1' & '1' & X"F" & O"000" & O"031" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '1' & X"000",

-- directByte = 0x07, outChar(from_microcode);
-- L0202@0025 E03A1D0380400000.gl_esc:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000111010 else 000111010, directByte = 00000111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 10, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
37 => '1' & '1' & '1' & X"0" & O"072" & O"072" & X"07" & "00" & "00" & O"0" & '0' & "10" & "00" & "00" & "00" & "00" & '0' & X"000",

-- outCRLF();
-- L0203@0026 E0381C7F80000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000111000 else 000111000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
38 => '1' & '1' & '1' & X"0" & O"070" & O"070" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- gotChar = 1, goto gl;
-- L0204@0027 FE000C7F80001000.  gotChar = 1, if false then next else gl;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000011000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 1, dummy = 000000000000;
39 => '1' & '1' & '1' & X"F" & O"000" & O"030" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '1' & X"000",

-- if INLEND_MIN then gl_ignore else next;
-- L0206@0028 F01E007F80000000.gl_bs:  if INLEND_MIN then gl_ignore else next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1000) then 000011110 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
40 => '1' & '1' & '1' & X"8" & O"036" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- outChar(from_charin);
-- L0207@0029 E03A1D7F80600000.  outChar(from_charin);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000111010 else 000111010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 11, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
41 => '1' & '1' & '1' & X"0" & O"072" & O"072" & X"FF" & "00" & "00" & O"0" & '0' & "11" & "00" & "00" & "00" & "00" & '0' & X"000",

-- InlEnd <= dec;
-- L0208@002A E000007F80018000.  InlEnd <= dec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 11, BP <= 00, gotChar = 0, dummy = 000000000000;
42 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "11" & "00" & '0' & X"000",

-- goto gl_write0;
-- L0209@002B FE0011FF80000000.  if false then next else gl_write0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000100011, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
43 => '1' & '1' & '1' & X"F" & O"000" & O"043" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- WriteCore(InlEnd, CHARIN);
-- L0211@002C E03D1EFF800E0000.gl_cr:  WriteCore(InlEnd, CHARIN);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000111101 else 000111101, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 01, MDR <= 11, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
44 => '1' & '1' & '1' & X"0" & O"075" & O"075" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "01" & "11" & "00" & "00" & '0' & X"000",

-- InlEnd <= inc;
-- L0212@002D E000007F80010000.  InlEnd <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 10, BP <= 00, gotChar = 0, dummy = 000000000000;
45 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "10" & "00" & '0' & X"000",

-- WriteCore(InlEnd, zero);
-- L0213@002E E03D1EFF800C0000.  WriteCore(InlEnd, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000111101 else 000111101, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 01, MDR <= 10, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
46 => '1' & '1' & '1' & X"0" & O"075" & O"075" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "01" & "10" & "00" & "00" & '0' & X"000",

-- outCRLF();
-- L0214@002F E0381C7F80000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000111000 else 000111000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
47 => '1' & '1' & '1' & X"0" & O"070" & O"070" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- dump_input();
-- L0215@0030 E04120FF80000000.  dump_input();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001000001 else 001000001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
48 => '1' & '1' & '1' & X"0" & O"101" & O"101" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- gotChar = 1, BP <= Inline, goto fetch;
-- L0216@0031 FE00037F80003000.  gotChar = 1, BP <= Inline, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000000110, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 01, gotChar = 1, dummy = 000000000000;
49 => '1' & '1' & '1' & X"F" & O"000" & O"006" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "01" & '1' & X"000",

-- traceString 7;
-- L0220@0032 E051288388000000.  trace(from_microcode), directByte = 7;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010001 else 001010001, directByte = 00000111, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
50 => '1' & '1' & '1' & X"0" & O"121" & O"121" & X"07" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- IL_PC <= pc_plus_off6;
-- L0221@0033 E000007F84000000.  IL_PC <= pc_plus_off6;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 100, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
51 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "00" & O"4" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- traceString 2;
-- L0222@0034 E051288108000000.  trace(from_microcode), directByte = 2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010001 else 001010001, directByte = 00000010, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
52 => '1' & '1' & '1' & X"0" & O"121" & O"121" & X"02" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- trace(crlf);
-- L0223@0035 E05128FF98000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010001 else 001010001, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
53 => '1' & '1' & '1' & X"0" & O"121" & O"121" & X"FF" & "00" & "11" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- goto fetch;
-- L0224@0036 FE00037F80000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000000110, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
54 => '1' & '1' & '1' & X"F" & O"000" & O"006" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- goto badop;
-- L0227@0037 FE00057F80000000.  if false then next else badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000001010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
55 => '1' & '1' & '1' & X"F" & O"000" & O"012" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- directByte = 0x0D, outChar(from_microcode);
-- L0229@0038 E03A1D0680400000.outCRLF:  directByte = 0x0D, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000111010 else 000111010, directByte = 00001101, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 10, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
56 => '1' & '1' & '1' & X"0" & O"072" & O"072" & X"0D" & "00" & "00" & O"0" & '0' & "10" & "00" & "00" & "00" & "00" & '0' & X"000",

-- directByte = 0x0A, CHAROUT <= from_microcode;
-- L0230@0039 E000000500400000.  directByte = 0x0A, CHAROUT <= from_microcode;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 00001010, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 10, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
57 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"0A" & "00" & "00" & O"0" & '0' & "10" & "00" & "00" & "00" & "00" & '0' & X"000",

-- if CHAROUT_READY then next else repeat;
-- L0231@003A E40000FF80000000.outChar:  if CHAROUT_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0010) then 000000000 else 000000001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
58 => '1' & '1' & '1' & X"2" & O"000" & O"001" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- if CHAROUT_READY then next else repeat;
-- L0232@003B E40000FF80000000.  if CHAROUT_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0010) then 000000000 else 000000001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
59 => '1' & '1' & '1' & X"2" & O"000" & O"001" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- back;
-- L0233@003C E002017F80000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
60 => '1' & '1' & '1' & X"0" & O"002" & O"002" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- nBUSREQ = 0, if nBUSACK then repeat else next;
-- L0235@003D 6C01007F80000000.WriteCore:  nBUSREQ = 0, if nBUSACK then repeat else next;
--  nBUSREQ = 0, nWR = 1, nRD = 1, if (0110) then 000000001 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
61 => '0' & '1' & '1' & X"6" & O"001" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- nBUSREQ = 0, nWR = 0, back;
-- L0236@003E 2002017F80000000.  nBUSREQ = 0, nWR = 0, if true then return else return;
--  nBUSREQ = 0, nWR = 0, nRD = 1, if (0000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
62 => '0' & '0' & '1' & X"0" & O"002" & O"002" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- nBUSREQ = 0, if nBUSACK then repeat else next;
-- L0238@003F 6C01007F80000000.ReadCore:  nBUSREQ = 0, if nBUSACK then repeat else next;
--  nBUSREQ = 0, nWR = 1, nRD = 1, if (0110) then 000000001 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
63 => '0' & '1' & '1' & X"6" & O"001" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- nBUSREQ = 0, nRD = 0, MDR <= from_Bus, back;
-- L0239@0040 4002017F80020000.  nBUSREQ = 0, nRD = 0, MDR <= from_Bus, if true then return else return;
--  nBUSREQ = 0, nWR = 1, nRD = 0, if (0000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 01, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
64 => '0' & '1' & '0' & X"0" & O"002" & O"002" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "01" & "00" & "00" & '0' & X"000",

-- InlEnd <= InLine, trace(crlf);
-- L0243@0041 E05128FF98008000.dump_input:  InlEnd <= InLine, trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010001 else 001010001, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 01, BP <= 00, gotChar = 0, dummy = 000000000000;
65 => '1' & '1' & '1' & X"0" & O"121" & O"121" & X"FF" & "00" & "11" & O"0" & '0' & "00" & "00" & "00" & "01" & "00" & '0' & X"000",

-- ReadCore(InlEnd);
-- L0244@0042 E03F1FFF80080000.dump_inlp:  ReadCore(InlEnd);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000111111 else 000111111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 01, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
66 => '1' & '1' & '1' & X"0" & O"077" & O"077" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "01" & "00" & "00" & "00" & '0' & X"000",

-- directByte = 9, trace(from_microcode);
-- L0245@0043 E051288488000000.  directByte = 9, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010001 else 001010001, directByte = 00001001, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
67 => '1' & '1' & '1' & X"0" & O"121" & O"121" & X"09" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- if MDR_IS_ZERO then dump_inex else next;
-- L0246@0044 EA46007F80000000.  if MDR_IS_ZERO then dump_inex else next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0101) then 001000110 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
68 => '1' & '1' & '1' & X"5" & O"106" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- InlEnd <= inc, goto dump_inlp;
-- L0247@0045 FE00217F80010000.  InlEnd <= inc, if false then next else dump_inlp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 001000010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 10, BP <= 00, gotChar = 0, dummy = 000000000000;
69 => '1' & '1' & '1' & X"F" & O"000" & O"102" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "10" & "00" & '0' & X"000",

-- trace(crlf);
-- L0248@0046 E05128FF98000000.dump_inex:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010001 else 001010001, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
70 => '1' & '1' & '1' & X"0" & O"121" & O"121" & X"FF" & "00" & "11" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- back;
-- L0249@0047 E002017F80000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
71 => '1' & '1' & '1' & X"0" & O"002" & O"002" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- directByte = 1, trace(from_microcode);
-- L0251@0048 E051288088000000.dump_il:  directByte = 1, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010001 else 001010001, directByte = 00000001, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
72 => '1' & '1' & '1' & X"0" & O"121" & O"121" & X"01" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- trace(crlf);
-- L0252@0049 E05128FF98000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010001 else 001010001, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
73 => '1' & '1' & '1' & X"0" & O"121" & O"121" & X"FF" & "00" & "11" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- T <= IL_PC, IL_PC <= zero;
-- L0253@004A E000007FA1000000.  T <= IL_PC, IL_PC <= zero;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 01, DBGINDEX <= 00, IL_PC <= 001, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
74 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "01" & "00" & O"1" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- if IL_PC_VALID then next else dump_il_ex;
-- L0254@004B E600287F80000000.dump_il_lp:  if IL_PC_VALID then next else dump_il_ex;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0011) then 000000000 else 001010000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
75 => '1' & '1' & '1' & X"3" & O"000" & O"120" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- directByte = 2, trace(from_microcode);
-- L0255@004C E051288108000000.  directByte = 2, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010001 else 001010001, directByte = 00000010, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
76 => '1' & '1' & '1' & X"0" & O"121" & O"121" & X"02" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- directByte = 3, trace(from_microcode);
-- L0256@004D E051288188000000.  directByte = 3, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010001 else 001010001, directByte = 00000011, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
77 => '1' & '1' & '1' & X"0" & O"121" & O"121" & X"03" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- trace(crlf);
-- L0257@004E E05128FF98000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010001 else 001010001, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
78 => '1' & '1' & '1' & X"0" & O"121" & O"121" & X"FF" & "00" & "11" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- IL_PC <= inc, goto dump_il_lp;
-- L0258@004F FE0025FF82000000.  IL_PC <= inc, if false then next else dump_il_lp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 001001011, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
79 => '1' & '1' & '1' & X"F" & O"000" & O"113" & X"FF" & "00" & "00" & O"2" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- IL_PC <= T, back;
-- L0259@0050 E002017F83000000.dump_il_ex:  IL_PC <= T, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 011, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
80 => '1' & '1' & '1' & X"0" & O"002" & O"002" & X"FF" & "00" & "00" & O"3" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- if DBG_READY then next else repeat;
-- L0261@0051 E80000FF80000000.trace:  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0100) then 000000000 else 000000001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
81 => '1' & '1' & '1' & X"4" & O"000" & O"001" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- if DBG_READY then next else repeat;
-- L0262@0052 E80000FF80000000.  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0100) then 000000000 else 000000001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
82 => '1' & '1' & '1' & X"4" & O"000" & O"001" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- DBGINDEX <= zero, back;
-- L0263@0053 E002017F90000000.  DBGINDEX <= zero, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGINDEX <= 10, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, gotChar = 0, dummy = 000000000000;
83 => '1' & '1' & '1' & X"0" & O"002" & O"002" & X"FF" & "00" & "10" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000",

-- 428 location(s) in following ranges will be filled with default value
-- 0054 .. 01FF

others => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & '0' & X"000"
);

end microBasic_code;

