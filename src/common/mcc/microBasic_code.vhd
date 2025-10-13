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
-- L0018.seq_cond: .if 4 values true, CHAROUT_BIT7, CHAROUT_READY, IL_PC_VALID, DBG_READY, MDR_EQU_DB, nBUSACK, INLEND_MAX, INLEND_MIN, CHARIN_PRINTABLE, CHARIN_EQU_DB, CHARIN_READY, BP_IN_INPLINE, SVP_IN_INPLINE, MDR_IS_NUM, false default true;
--
alias mb_seq_cond: 	std_logic_vector(3 downto 0) is mb_uinstruction(60 downto 57);
constant seq_cond_true: 	integer := 0;
constant seq_cond_CHAROUT_BIT7: 	integer := 1;
constant seq_cond_CHAROUT_READY: 	integer := 2;
constant seq_cond_IL_PC_VALID: 	integer := 3;
constant seq_cond_DBG_READY: 	integer := 4;
constant seq_cond_MDR_EQU_DB: 	integer := 5;
constant seq_cond_nBUSACK: 	integer := 6;
constant seq_cond_INLEND_MAX: 	integer := 7;
constant seq_cond_INLEND_MIN: 	integer := 8;
constant seq_cond_CHARIN_PRINTABLE: 	integer := 9;
constant seq_cond_CHARIN_EQU_DB: 	integer := 10;
constant seq_cond_CHARIN_READY: 	integer := 11;
constant seq_cond_BP_IN_INPLINE: 	integer := 12;
constant seq_cond_SVP_IN_INPLINE: 	integer := 13;
constant seq_cond_MDR_IS_NUM: 	integer := 14;
constant seq_cond_false: 	integer := 15;
---- Start boilerplate code (use with utmost caution!)
---- include '.controller <filename.vhd>, <stackdepth>;' in .mcc file to generate pre-canned microcode control unit and feed 'conditions' with:
--  cond(seq_cond_true) => '1',
--  cond(seq_cond_CHAROUT_BIT7) => CHAROUT_BIT7,
--  cond(seq_cond_CHAROUT_READY) => CHAROUT_READY,
--  cond(seq_cond_IL_PC_VALID) => IL_PC_VALID,
--  cond(seq_cond_DBG_READY) => DBG_READY,
--  cond(seq_cond_MDR_EQU_DB) => MDR_EQU_DB,
--  cond(seq_cond_nBUSACK) => nBUSACK,
--  cond(seq_cond_INLEND_MAX) => INLEND_MAX,
--  cond(seq_cond_INLEND_MIN) => INLEND_MIN,
--  cond(seq_cond_CHARIN_PRINTABLE) => CHARIN_PRINTABLE,
--  cond(seq_cond_CHARIN_EQU_DB) => CHARIN_EQU_DB,
--  cond(seq_cond_CHARIN_READY) => CHARIN_READY,
--  cond(seq_cond_BP_IN_INPLINE) => BP_IN_INPLINE,
--  cond(seq_cond_SVP_IN_INPLINE) => SVP_IN_INPLINE,
--  cond(seq_cond_MDR_IS_NUM) => MDR_IS_NUM,
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
-- L0043.T: .regfield 2 values same, IL_PC, zero, T10_plus_mdr default same;
--
alias mb_T: 	std_logic_vector(1 downto 0) is mb_uinstruction(30 downto 29);
constant T_same: 	std_logic_vector(1 downto 0) := "00";
constant T_IL_PC: 	std_logic_vector(1 downto 0) := "01";
constant T_zero: 	std_logic_vector(1 downto 0) := "10";
constant T_T10_plus_mdr: 	std_logic_vector(1 downto 0) := "11";
---- Start boilerplate code (use with utmost caution!)
-- update_T: process(clk, mb_T)
-- begin
--	if (rising_edge(clk)) then
--		case mb_T is
----			when T_same =>
----				T <= T;
--			when T_IL_PC =>
--				T <= IL_PC;
--			when T_zero =>
--				T <= (others => '0');
--			when T_T10_plus_mdr =>
--				T <= T10_plus_mdr;
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
-- L0059.IL_PC: .regfield 3 values same, zero, inc, T, pc_plus_off6, pc_plus_off5, -, - default same;
--
alias mb_IL_PC: 	std_logic_vector(2 downto 0) is mb_uinstruction(26 downto 24);
constant IL_PC_same: 	std_logic_vector(2 downto 0) := O"0";
constant IL_PC_zero: 	std_logic_vector(2 downto 0) := O"1";
constant IL_PC_inc: 	std_logic_vector(2 downto 0) := O"2";
constant IL_PC_T: 	std_logic_vector(2 downto 0) := O"3";
constant IL_PC_pc_plus_off6: 	std_logic_vector(2 downto 0) := O"4";
constant IL_PC_pc_plus_off5: 	std_logic_vector(2 downto 0) := O"5";
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
--			when IL_PC_pc_plus_off5 =>
--				IL_PC <= pc_plus_off5;
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
-- L0085.MAR: .regfield 2 values same, InlEnd, BP, - default same;
--
alias mb_MAR: 	std_logic_vector(1 downto 0) is mb_uinstruction(20 downto 19);
constant MAR_same: 	std_logic_vector(1 downto 0) := "00";
constant MAR_InlEnd: 	std_logic_vector(1 downto 0) := "01";
constant MAR_BP: 	std_logic_vector(1 downto 0) := "10";
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
--			when MAR_BP =>
--				MAR <= BP;
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
-- L0101.InlEnd: .regfield 2 values same, InLine_start, inc, dec default same;
--
alias mb_InlEnd: 	std_logic_vector(1 downto 0) is mb_uinstruction(16 downto 15);
constant InlEnd_same: 	std_logic_vector(1 downto 0) := "00";
constant InlEnd_InLine_start: 	std_logic_vector(1 downto 0) := "01";
constant InlEnd_inc: 	std_logic_vector(1 downto 0) := "10";
constant InlEnd_dec: 	std_logic_vector(1 downto 0) := "11";
---- Start boilerplate code (use with utmost caution!)
-- update_InlEnd: process(clk, mb_InlEnd)
-- begin
--	if (rising_edge(clk)) then
--		case mb_InlEnd is
----			when InlEnd_same =>
----				InlEnd <= InlEnd;
--			when InlEnd_InLine_start =>
--				InlEnd <= InLine_start;
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
-- L0109.BP: .regfield 2 values same, InLine_start, SvPt, inc default same;
--
alias mb_BP: 	std_logic_vector(1 downto 0) is mb_uinstruction(14 downto 13);
constant BP_same: 	std_logic_vector(1 downto 0) := "00";
constant BP_InLine_start: 	std_logic_vector(1 downto 0) := "01";
constant BP_SvPt: 	std_logic_vector(1 downto 0) := "10";
constant BP_inc: 	std_logic_vector(1 downto 0) := "11";
---- Start boilerplate code (use with utmost caution!)
-- update_BP: process(clk, mb_BP)
-- begin
--	if (rising_edge(clk)) then
--		case mb_BP is
----			when BP_same =>
----				BP <= BP;
--			when BP_InLine_start =>
--				BP <= InLine_start;
--			when BP_SvPt =>
--				BP <= SvPt;
--			when BP_inc =>
--				BP <= std_logic_vector(unsigned(BP) + 1);
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0117.SvPt: .regfield 2 values same, InLine_start, BP, - default same;
--
alias mb_SvPt: 	std_logic_vector(1 downto 0) is mb_uinstruction(12 downto 11);
constant SvPt_same: 	std_logic_vector(1 downto 0) := "00";
constant SvPt_InLine_start: 	std_logic_vector(1 downto 0) := "01";
constant SvPt_BP: 	std_logic_vector(1 downto 0) := "10";
-- Value "11" not allowed (name '-' is not assignable)
---- Start boilerplate code (use with utmost caution!)
-- update_SvPt: process(clk, mb_SvPt)
-- begin
--	if (rising_edge(clk)) then
--		case mb_SvPt is
----			when SvPt_same =>
----				SvPt <= SvPt;
--			when SvPt_InLine_start =>
--				SvPt <= InLine_start;
--			when SvPt_BP =>
--				SvPt <= BP;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0124.ExpStack: .regfield 3 values same, clear, push_T, startSwap, endSwap, -, -, - default same;
--
alias mb_ExpStack: 	std_logic_vector(2 downto 0) is mb_uinstruction(10 downto 8);
constant ExpStack_same: 	std_logic_vector(2 downto 0) := O"0";
constant ExpStack_clear: 	std_logic_vector(2 downto 0) := O"1";
constant ExpStack_push_T: 	std_logic_vector(2 downto 0) := O"2";
constant ExpStack_startSwap: 	std_logic_vector(2 downto 0) := O"3";
constant ExpStack_endSwap: 	std_logic_vector(2 downto 0) := O"4";
-- Value O"5" not allowed (name '-' is not assignable)
-- Value O"6" not allowed (name '-' is not assignable)
-- Value O"7" not allowed (name '-' is not assignable)
---- Start boilerplate code (use with utmost caution!)
-- update_ExpStack: process(clk, mb_ExpStack)
-- begin
--	if (rising_edge(clk)) then
--		case mb_ExpStack is
----			when ExpStack_same =>
----				ExpStack <= ExpStack;
--			when ExpStack_clear =>
--				ExpStack <= (others => '0');
--			when ExpStack_push_T =>
--				ExpStack <= push_T;
--			when ExpStack_startSwap =>
--				ExpStack <= startSwap;
--			when ExpStack_endSwap =>
--				ExpStack <= endSwap;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0136.gotChar: .valfield 1 values 0, 1 default 0;
--
alias mb_gotChar: 	std_logic is mb_uinstruction(7);
-- Value '0' allowed
-- Value '1' allowed
---- Start boilerplate code (use with utmost caution!)
--  gotChar <= mb_gotChar;
---- End boilerplate code

--
-- L0142.dummy: .valfield 7 values * default 0;
--
alias mb_dummy: 	std_logic_vector(6 downto 0) is mb_uinstruction(6 downto 0);
-- Values from "0000000" to "1111111" allowed
---- Start boilerplate code (use with utmost caution!)
--  dummy <= mb_dummy;
---- End boilerplate code



constant mb_microcode: mb_code_memory := (

-- nop;
-- L0175@0000 E000007F80000000._reset:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
0 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- nop;
-- L0177@0001 E000007F80000000._reset1:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
1 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- nop;
-- L0179@0002 E000007F80000000._reset2:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
2 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- nop;
-- L0181@0003 E000007F80000000._reset3:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
3 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- clear;
-- L0185@0004 E000007F9100A900.WarmStart:  DBGINDEX <= zero, IL_PC <= zero, BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, ExpStack <= clear;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 10, IL_PC <= 001, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 01, BP <= 01, SvPt <= 01, ExpStack <= 001, gotChar = 0, dummy = 0000000;
4 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "10" & O"1" & '0' & "00" & "00" & "00" & "01" & "01" & "01" & O"1" & '0' & "0000000",

-- WriteCore(BP, zero);
-- L0186@0005 E06130FF80140000.  WriteCore(BP, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001100001 else 001100001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 10, MDR <= 10, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
5 => '1' & '1' & '1' & X"0" & O"141" & O"141" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "10" & "10" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- traceString 4;
-- L0187@0006 E0753A8208000000.  trace(from_microcode), directByte = 4;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00000100, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
6 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"04" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- trace(crlf);
-- L0189@0007 E0753AFF98000000.fetch:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
7 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"FF" & "00" & "11" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- traceString 2;
-- L0190@0008 E0753A8108000000.  trace(from_microcode), directByte = 2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00000010, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
8 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"02" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- traceString 3;
-- L0191@0009 E0753A8188000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00000011, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
9 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"03" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- IL_OP <= from_interpreter, IL_PC <= inc;
-- L0192@000A E000007F82800000.  IL_OP <= from_interpreter, IL_PC <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 1, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
10 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "00" & O"2" & '1' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- if true then fork else fork;
-- L0193@000B E00301FF80000000.  if true then fork else fork;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000011 else 000000011, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
11 => '1' & '1' & '1' & X"0" & O"003" & O"003" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- traceString 62;
-- L0196@000C E0753A9F08000000.badop:  trace(from_microcode), directByte = 62;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00111110, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
12 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"3E" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- trace(crlf);
-- L0198@000D E0753AFF98000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
13 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"FF" & "00" & "11" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- goto WarmStart;
-- L0199@000E FE00027F80000000.  if false then next else WarmStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000000100, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
14 => '1' & '1' & '1' & X"F" & O"000" & O"004" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- traceString 15;
-- L0204@000F E0753A8788000000.  trace(from_microcode), directByte = 15;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00001111, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
15 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"0F" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- ExpStack <= startSwap;
-- L0205@0010 E000007F80000300.  ExpStack <= startSwap;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 011, gotChar = 0, dummy = 0000000;
16 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"3" & '0' & "0000000",

-- ExpStack <= endSwap;
-- L0206@0011 E000007F80000400.  ExpStack <= endSwap;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 100, gotChar = 0, dummy = 0000000;
17 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"4" & '0' & "0000000",

-- goto fetch;
-- L0207@0012 FE0003FF80000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
18 => '1' & '1' & '1' & X"F" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- traceString 15;
-- L0210@0013 E0753A8788000000.  trace(from_microcode), directByte = 15;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00001111, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
19 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"0F" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- goto fetch;
-- L0211@0014 FE0003FF80000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
20 => '1' & '1' & '1' & X"F" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- traceString 12;
-- L0216@0015 E0753A8608000000.  trace(from_microcode), directByte = 12;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00001100, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
21 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"0C" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- goto fetch;
-- L0217@0016 FE0003FF80000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
22 => '1' & '1' & '1' & X"F" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- traceString 10;
-- L0222@0017 E0753A8508000000.  trace(from_microcode), directByte = 10;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00001010, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
23 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"0A" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- if BP_IN_INPLINE then next else ptr_exc;
-- L0223@0018 F8000E7F80000000.  if BP_IN_INPLINE then next else ptr_exc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1100) then 000000000 else 000011100, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
24 => '1' & '1' & '1' & X"C" & O"000" & O"034" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- SvPt <= BP, goto fetch;
-- L0224@0019 FE0003FF80001000.save_bp:  SvPt <= BP, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 10, ExpStack <= 000, gotChar = 0, dummy = 0000000;
25 => '1' & '1' & '1' & X"F" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "10" & O"0" & '0' & "0000000",

-- traceString 11;
-- L0229@001A E0753A8588000000.  trace(from_microcode), directByte = 11;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00001011, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
26 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"0B" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- if SVP_IN_INPLINE then save_bp;
-- L0230@001B FA19007F80000000.  if SVP_IN_INPLINE then save_bp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1101) then 000011001 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
27 => '1' & '1' & '1' & X"D" & O"031" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- SvPt <= BP, BP <= SvPt, goto fetch;
-- L0231@001C FE0003FF80005000.ptr_exc:  SvPt <= BP, BP <= SvPt, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 10, SvPt <= 10, ExpStack <= 000, gotChar = 0, dummy = 0000000;
28 => '1' & '1' & '1' & X"F" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "10" & "10" & O"0" & '0' & "0000000",

-- traceString 6;
-- L0236@001D E0753A8308000000.  trace(from_microcode), directByte = 6;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00000110, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
29 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"06" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- outCRLF();
-- L0237@001E E05B2DFF80000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001011011 else 001011011, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
30 => '1' & '1' & '1' & X"0" & O"133" & O"133" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- goto fetch;
-- L0238@001F FE0003FF80000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
31 => '1' & '1' & '1' & X"F" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- traceString 5;
-- L0243@0020 E0753A8288000000.  trace(from_microcode), directByte = 5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00000101, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
32 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"05" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- outChar(from_interpreter);
-- L0244@0021 E05E2F7F80200000.pc_loop:  outChar(from_interpreter);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001011110 else 001011110, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 01, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
33 => '1' & '1' & '1' & X"0" & O"136" & O"136" & X"FF" & "00" & "00" & O"0" & '0' & "01" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- traceString 3;
-- L0245@0022 E0753A8188000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00000011, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
34 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"03" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- IL_PC <= inc, if CHAROUT_BIT7 then next else pc_loop;
-- L0246@0023 E20010FF82000000.  IL_PC <= inc, if CHAROUT_BIT7 then next else pc_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0001) then 000000000 else 000100001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
35 => '1' & '1' & '1' & X"1" & O"000" & O"041" & X"FF" & "00" & "00" & O"2" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- goto fetch;
-- L0247@0024 FE0003FF80000000.pc_exit:  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
36 => '1' & '1' & '1' & X"F" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- traceString 8;
-- L0252@0025 E0753A8408000000.  trace(from_microcode), directByte = 8;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00001000, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
37 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"08" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- InlEnd <= InLine_start;
-- L0253@0026 E000007F80008000.gl:  InlEnd <= InLine_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 01, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
38 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "01" & "00" & "00" & O"0" & '0' & "0000000",

-- if CHARIN_READY then next else repeat;
-- L0254@0027 F60000FF80000000.gl_loop:  if CHARIN_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1011) then 000000000 else 000000001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
39 => '1' & '1' & '1' & X"B" & O"000" & O"001" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- if CHARIN_PRINTABLE then gl_print;
-- L0255@0028 F22E007F80000000.  if CHARIN_PRINTABLE then gl_print;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1001) then 000101110 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
40 => '1' & '1' & '1' & X"9" & O"056" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- directByte = CR, if CHARIN_EQU_DB then gl_cr;
-- L0256@0029 F43A000680000000.  directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1010) then 000111010 else 000000000, directByte = 00001101, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
41 => '1' & '1' & '1' & X"A" & O"072" & O"000" & X"0D" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- directByte = BACKSPACE, if CHARIN_EQU_DB then gl_bs;
-- L0257@002A F437000400000000.  directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1010) then 000110111 else 000000000, directByte = 00001000, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
42 => '1' & '1' & '1' & X"A" & O"067" & O"000" & X"08" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- directByte = ESC, if CHARIN_EQU_DB then gl_esc;
-- L0258@002B F434000D80000000.  directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1010) then 000110100 else 000000000, directByte = 00011011, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
43 => '1' & '1' & '1' & X"A" & O"064" & O"000" & X"1B" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- directByte = BEEP, outChar(from_microcode);
-- L0261@002C E05E2F0380400000.gl_ignore:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001011110 else 001011110, directByte = 00000111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 10, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
44 => '1' & '1' & '1' & X"0" & O"136" & O"136" & X"07" & "00" & "00" & O"0" & '0' & "10" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- gotChar = 1, goto gl_loop;
-- L0262@002D FE0013FF80000080.  gotChar = 1, if false then next else gl_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000100111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 1, dummy = 0000000;
45 => '1' & '1' & '1' & X"F" & O"000" & O"047" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '1' & "0000000",

-- if INLEND_MAX then gl_ignore;
-- L0264@002E EE2C007F80000000.gl_print:  if INLEND_MAX then gl_ignore;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0111) then 000101100 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
46 => '1' & '1' & '1' & X"7" & O"054" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- outChar(from_charin);
-- L0265@002F E05E2F7F80600000.  outChar(from_charin);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001011110 else 001011110, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 11, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
47 => '1' & '1' & '1' & X"0" & O"136" & O"136" & X"FF" & "00" & "00" & O"0" & '0' & "11" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- WriteCore(InlEnd, CHARIN);
-- L0266@0030 E06130FF800E0000.  WriteCore(InlEnd, CHARIN);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001100001 else 001100001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 01, MDR <= 11, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
48 => '1' & '1' & '1' & X"0" & O"141" & O"141" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "01" & "11" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- InlEnd <= inc;
-- L0267@0031 E000007F80010000.  InlEnd <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 10, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
49 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "10" & "00" & "00" & O"0" & '0' & "0000000",

-- WriteCore(InlEnd, zero);
-- L0268@0032 E06130FF800C0000.gl_write0:  WriteCore(InlEnd, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001100001 else 001100001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 01, MDR <= 10, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
50 => '1' & '1' & '1' & X"0" & O"141" & O"141" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "01" & "10" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- gotChar = 1, goto gl_loop;
-- L0269@0033 FE0013FF80000080.  gotChar = 1, if false then next else gl_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000100111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 1, dummy = 0000000;
51 => '1' & '1' & '1' & X"F" & O"000" & O"047" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '1' & "0000000",

-- directByte = BEEP, outChar(from_microcode);
-- L0271@0034 E05E2F0380400000.gl_esc:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001011110 else 001011110, directByte = 00000111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 10, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
52 => '1' & '1' & '1' & X"0" & O"136" & O"136" & X"07" & "00" & "00" & O"0" & '0' & "10" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- outCRLF();
-- L0272@0035 E05B2DFF80000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001011011 else 001011011, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
53 => '1' & '1' & '1' & X"0" & O"133" & O"133" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- gotChar = 1, goto gl;
-- L0273@0036 FE00137F80000080.  gotChar = 1, if false then next else gl;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000100110, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 1, dummy = 0000000;
54 => '1' & '1' & '1' & X"F" & O"000" & O"046" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '1' & "0000000",

-- if INLEND_MIN then gl_ignore;
-- L0275@0037 F02C007F80000000.gl_bs:  if INLEND_MIN then gl_ignore;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1000) then 000101100 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
55 => '1' & '1' & '1' & X"8" & O"054" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- directByte = BACKSPACE, outChar(from_microcode);
-- L0276@0038 E05E2F0400400000.  directByte = 0x08, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001011110 else 001011110, directByte = 00001000, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 10, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
56 => '1' & '1' & '1' & X"0" & O"136" & O"136" & X"08" & "00" & "00" & O"0" & '0' & "10" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- InlEnd <= dec, goto gl_write0;
-- L0277@0039 FE00197F80018000.  InlEnd <= dec, if false then next else gl_write0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000110010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 11, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
57 => '1' & '1' & '1' & X"F" & O"000" & O"062" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "11" & "00" & "00" & O"0" & '0' & "0000000",

-- WriteCore(InlEnd, CHARIN);
-- L0279@003A E06130FF800E0000.gl_cr:  WriteCore(InlEnd, CHARIN);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001100001 else 001100001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 01, MDR <= 11, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
58 => '1' & '1' & '1' & X"0" & O"141" & O"141" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "01" & "11" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- InlEnd <= inc;
-- L0280@003B E000007F80010000.  InlEnd <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 10, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
59 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "10" & "00" & "00" & O"0" & '0' & "0000000",

-- WriteCore(InlEnd, zero);
-- L0281@003C E06130FF800C0000.  WriteCore(InlEnd, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001100001 else 001100001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 01, MDR <= 10, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
60 => '1' & '1' & '1' & X"0" & O"141" & O"141" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "01" & "10" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- dump_input();
-- L0282@003D E06532FF80000000.  dump_input();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001100101 else 001100101, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
61 => '1' & '1' & '1' & X"0" & O"145" & O"145" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- outCRLF();
-- L0283@003E E05B2DFF80000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001011011 else 001011011, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
62 => '1' & '1' & '1' & X"0" & O"133" & O"133" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- gotChar = 1, BP <= Inline_start, goto fetch;
-- L0284@003F FE0003FF80002080.  gotChar = 1, BP <= Inline_start, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 01, SvPt <= 00, ExpStack <= 000, gotChar = 1, dummy = 0000000;
63 => '1' & '1' & '1' & X"F" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "01" & "00" & O"0" & '1' & "0000000",

-- traceString 7;
-- L0289@0040 E0753A8388000000.  trace(from_microcode), directByte = 7;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00000111, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
64 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"07" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- IL_PC <= pc_plus_off6;
-- L0290@0041 E000007F84000000.  IL_PC <= pc_plus_off6;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 100, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
65 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "00" & O"4" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- traceString 2;
-- L0291@0042 E0753A8108000000.  trace(from_microcode), directByte = 2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00000010, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
66 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"02" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- goto fetch;
-- L0292@0043 FE0003FF80000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
67 => '1' & '1' & '1' & X"F" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- goto badop;
-- L0295@0044 FE00067F80000000.  if false then next else badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000001100, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
68 => '1' & '1' & '1' & X"F" & O"000" & O"014" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- traceString 14;
-- L0300@0045 E0753A8708000000.  trace(from_microcode), directByte = 14;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00001110, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
69 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"0E" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- skipSpaces();
-- L0301@0046 E0572BFF80000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010111 else 001010111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
70 => '1' & '1' & '1' & X"0" & O"127" & O"127" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- T <= zero, if MDR_IS_NUM then bn_loop;
-- L0302@0047 FC4B007FC0000000.  T <= zero, if MDR_IS_NUM then bn_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1110) then 001001011 else 000000000, directByte = 11111111, T <= 10, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
71 => '1' & '1' & '1' & X"E" & O"113" & O"000" & X"FF" & "10" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- IL_PC <= pc_plus_off5;
-- L0303@0048 E000007F85000000.  IL_PC <= pc_plus_off5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
72 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "00" & O"5" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- traceString 2;
-- L0304@0049 E0753A8108000000.bn_exit:  trace(from_microcode), directByte = 2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00000010, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
73 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"02" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- goto fetch;
-- L0305@004A FE0003FF80000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
74 => '1' & '1' & '1' & X"F" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- T <= T10_plus_mdr, BP <= inc;
-- L0306@004B E000007FE0006000.bn_loop:  T <= T10_plus_mdr, BP <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 11, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 11, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
75 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "11" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "11" & "00" & O"0" & '0' & "0000000",

-- ReadCore(BP);
-- L0307@004C E06331FF80100000.  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001100011 else 001100011, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 10, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
76 => '1' & '1' & '1' & X"0" & O"143" & O"143" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "10" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- if MDR_IS_NUM then bn_loop;
-- L0308@004D FC4B007F80000000.  if MDR_IS_NUM then bn_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1110) then 001001011 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
77 => '1' & '1' & '1' & X"E" & O"113" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- ExpStack <= push_T, goto bn_exit;
-- L0310@004E FE0024FF80000200.  ExpStack <= push_T, if false then next else bn_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 001001001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 010, gotChar = 0, dummy = 0000000;
78 => '1' & '1' & '1' & X"F" & O"000" & O"111" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"2" & '0' & "0000000",

-- goto badop;
-- L0313@004F FE00067F80000000.  if false then next else badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000001100, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
79 => '1' & '1' & '1' & X"F" & O"000" & O"014" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- traceString 13;
-- L0318@0050 E0753A8688000000.  trace(from_microcode), directByte = 13;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00001101, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
80 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"0D" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- skipSpaces();
-- L0319@0051 E0572BFF80000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001010111 else 001010111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
81 => '1' & '1' & '1' & X"0" & O"127" & O"127" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- directByte = CR, if MDR_EQU_DB then fetch;
-- L0320@0052 EA07000680000000.  directByte = 0x0D, if MDR_EQU_DB then fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0101) then 000000111 else 000000000, directByte = 00001101, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
82 => '1' & '1' & '1' & X"5" & O"007" & O"000" & X"0D" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- IL_PC <= pc_plus_off5;
-- L0321@0053 E000007F85000000.  IL_PC <= pc_plus_off5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
83 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "00" & O"5" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- traceString 2;
-- L0322@0054 E0753A8108000000.  trace(from_microcode), directByte = 2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00000010, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
84 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"02" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- goto fetch;
-- L0323@0055 FE0003FF80000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
85 => '1' & '1' & '1' & X"F" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- goto badop;
-- L0326@0056 FE00067F80000000.  if false then next else badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000001100, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
86 => '1' & '1' & '1' & X"F" & O"000" & O"014" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- ReadCore(BP);
-- L0328@0057 E06331FF80100000.skipSpaces:  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001100011 else 001100011, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 10, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
87 => '1' & '1' & '1' & X"0" & O"143" & O"143" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "10" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- directByte = SPACE, if MDR_EQU_DB then skipSp;
-- L0329@0058 EA5A001000000000.  directByte = 0x20, if MDR_EQU_DB then skipSp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0101) then 001011010 else 000000000, directByte = 00100000, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
88 => '1' & '1' & '1' & X"5" & O"132" & O"000" & X"20" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- directByte = TAB, if MDR_EQU_DB then skipSp else return;
-- L0330@0059 EA5A010480000000.  directByte = 0x09, if MDR_EQU_DB then skipSp else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0101) then 001011010 else 000000010, directByte = 00001001, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
89 => '1' & '1' & '1' & X"5" & O"132" & O"002" & X"09" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- BP <= inc, goto  skipSpaces;
-- L0331@005A FE002BFF80006000.skipSp:  BP <= inc, if false then next else  skipSpaces;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 001010111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 11, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
90 => '1' & '1' & '1' & X"F" & O"000" & O"127" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "11" & "00" & O"0" & '0' & "0000000",

-- directByte = CR, outChar(from_microcode);
-- L0333@005B E05E2F0680400000.outCRLF:  directByte = 0x0D, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001011110 else 001011110, directByte = 00001101, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 10, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
91 => '1' & '1' & '1' & X"0" & O"136" & O"136" & X"0D" & "00" & "00" & O"0" & '0' & "10" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- directByte = LF, outChar(from_microcode);
-- L0334@005C E05E2F0500400000.  directByte = 0x0A, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001011110 else 001011110, directByte = 00001010, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 10, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
92 => '1' & '1' & '1' & X"0" & O"136" & O"136" & X"0A" & "00" & "00" & O"0" & '0' & "10" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- back;
-- L0335@005D E002017F80000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
93 => '1' & '1' & '1' & X"0" & O"002" & O"002" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- if CHAROUT_READY then next else repeat;
-- L0336@005E E40000FF80000000.outChar:  if CHAROUT_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0010) then 000000000 else 000000001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
94 => '1' & '1' & '1' & X"2" & O"000" & O"001" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- if CHAROUT_READY then next else repeat;
-- L0337@005F E40000FF80000000.  if CHAROUT_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0010) then 000000000 else 000000001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
95 => '1' & '1' & '1' & X"2" & O"000" & O"001" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- back;
-- L0338@0060 E002017F80000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
96 => '1' & '1' & '1' & X"0" & O"002" & O"002" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- nBUSREQ = 0, if nBUSACK then repeat else next;
-- L0340@0061 6C01007F80000000.WriteCore:  nBUSREQ = 0, if nBUSACK then repeat else next;
--  nBUSREQ = 0, nWR = 1, nRD = 1, if (0110) then 000000001 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
97 => '0' & '1' & '1' & X"6" & O"001" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- nBUSREQ = 0, nWR = 0, back;
-- L0341@0062 2002017F80000000.  nBUSREQ = 0, nWR = 0, if true then return else return;
--  nBUSREQ = 0, nWR = 0, nRD = 1, if (0000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
98 => '0' & '0' & '1' & X"0" & O"002" & O"002" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- nBUSREQ = 0, if nBUSACK then repeat else next;
-- L0343@0063 6C01007F80000000.ReadCore:  nBUSREQ = 0, if nBUSACK then repeat else next;
--  nBUSREQ = 0, nWR = 1, nRD = 1, if (0110) then 000000001 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
99 => '0' & '1' & '1' & X"6" & O"001" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- nBUSREQ = 0, nRD = 0, MDR <= from_Bus, back;
-- L0344@0064 4002017F80020000.  nBUSREQ = 0, nRD = 0, MDR <= from_Bus, if true then return else return;
--  nBUSREQ = 0, nWR = 1, nRD = 0, if (0000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 01, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
100 => '0' & '1' & '0' & X"0" & O"002" & O"002" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "01" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- InlEnd <= InLine_start, trace(crlf);
-- L0348@0065 E0753AFF98008000.dump_input:  InlEnd <= InLine_start, trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 01, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
101 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"FF" & "00" & "11" & O"0" & '0' & "00" & "00" & "00" & "01" & "00" & "00" & O"0" & '0' & "0000000",

-- ReadCore(InlEnd);
-- L0349@0066 E06331FF80080000.dump_inlp:  ReadCore(InlEnd);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001100011 else 001100011, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 01, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
102 => '1' & '1' & '1' & X"0" & O"143" & O"143" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "01" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- directByte = 9, trace(from_microcode);
-- L0350@0067 E0753A8488000000.  directByte = 9, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00001001, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
103 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"09" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- directByte = NULL, if MDR_EQU_DB then dump_inex;
-- L0351@0068 EA6A000000000000.  directByte = 0x00, if MDR_EQU_DB then dump_inex;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0101) then 001101010 else 000000000, directByte = 00000000, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
104 => '1' & '1' & '1' & X"5" & O"152" & O"000" & X"00" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- InlEnd <= inc, goto dump_inlp;
-- L0352@0069 FE00337F80010000.  InlEnd <= inc, if false then next else dump_inlp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 001100110, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 10, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
105 => '1' & '1' & '1' & X"F" & O"000" & O"146" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "10" & "00" & "00" & O"0" & '0' & "0000000",

-- trace(crlf);
-- L0353@006A E0753AFF98000000.dump_inex:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
106 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"FF" & "00" & "11" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- back;
-- L0354@006B E002017F80000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
107 => '1' & '1' & '1' & X"0" & O"002" & O"002" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- directByte = 1, trace(from_microcode);
-- L0356@006C E0753A8088000000.dump_il:  directByte = 1, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00000001, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
108 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"01" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- trace(crlf);
-- L0357@006D E0753AFF98000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
109 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"FF" & "00" & "11" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- T <= IL_PC, IL_PC <= zero;
-- L0358@006E E000007FA1000000.  T <= IL_PC, IL_PC <= zero;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 01, DBGINDEX <= 00, IL_PC <= 001, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
110 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "01" & "00" & O"1" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- if IL_PC_VALID then next else dump_il_ex;
-- L0359@006F E6003A7F80000000.dump_il_lp:  if IL_PC_VALID then next else dump_il_ex;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0011) then 000000000 else 001110100, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
111 => '1' & '1' & '1' & X"3" & O"000" & O"164" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- directByte = 2, trace(from_microcode);
-- L0360@0070 E0753A8108000000.  directByte = 2, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00000010, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
112 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"02" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- directByte = 3, trace(from_microcode);
-- L0361@0071 E0753A8188000000.  directByte = 3, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 00000011, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
113 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"03" & "00" & "01" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- trace(crlf);
-- L0362@0072 E0753AFF98000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 001110101 else 001110101, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
114 => '1' & '1' & '1' & X"0" & O"165" & O"165" & X"FF" & "00" & "11" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- IL_PC <= inc, goto dump_il_lp;
-- L0363@0073 FE0037FF82000000.  IL_PC <= inc, if false then next else dump_il_lp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 001101111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
115 => '1' & '1' & '1' & X"F" & O"000" & O"157" & X"FF" & "00" & "00" & O"2" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- IL_PC <= T, back;
-- L0364@0074 E002017F83000000.dump_il_ex:  IL_PC <= T, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 011, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
116 => '1' & '1' & '1' & X"0" & O"002" & O"002" & X"FF" & "00" & "00" & O"3" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- if DBG_READY then next else repeat;
-- L0366@0075 E80000FF80000000.trace:  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0100) then 000000000 else 000000001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
117 => '1' & '1' & '1' & X"4" & O"000" & O"001" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- if DBG_READY then next else repeat;
-- L0367@0076 E80000FF80000000.  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0100) then 000000000 else 000000001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
118 => '1' & '1' & '1' & X"4" & O"000" & O"001" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- if DBG_READY then next else repeat;
-- L0368@0077 E80000FF80000000.  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0100) then 000000000 else 000000001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
119 => '1' & '1' & '1' & X"4" & O"000" & O"001" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- DBGINDEX <= zero, back;
-- L0369@0078 E002017F90000000.  DBGINDEX <= zero, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGINDEX <= 10, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 00, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 0000000;
120 => '1' & '1' & '1' & X"0" & O"002" & O"002" & X"FF" & "00" & "10" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000",

-- 391 location(s) in following ranges will be filled with default value
-- 0079 .. 01FF

others => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & "00" & "00" & "00" & "00" & O"0" & '0' & "0000000"
);

end microBasic_code;

