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
constant CODE_IF_WIDTH: 	positive := 5;


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
-- L0018.seq_cond: .if 5 values true, CHAROUT_BIT7, CHAROUT_READY, IL_PC_VALID, DBG_READY, MDR_EQU_DB, nBUSACK, INLEND_MAX, INLEND_MIN, CHARIN_PRINTABLE, CHARIN_EQU_DB, CHARIN_READY, BP_IN_INPLINE, SVP_IN_INPLINE, MDR_IS_NUM, MDR_IS_ALPHA, ESTACK_IS_FULL, ESTACK_IS_EMPTY, cond18, cond19, cond20, cond21, cond22, cond23, cond24, cond25, cond26, cond27, cond28, cond29, cond30, false default true;
--
alias mb_seq_cond: 	std_logic_vector(4 downto 0) is mb_uinstruction(60 downto 56);
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
constant seq_cond_MDR_IS_ALPHA: 	integer := 15;
constant seq_cond_ESTACK_IS_FULL: 	integer := 16;
constant seq_cond_ESTACK_IS_EMPTY: 	integer := 17;
constant seq_cond_cond18: 	integer := 18;
constant seq_cond_cond19: 	integer := 19;
constant seq_cond_cond20: 	integer := 20;
constant seq_cond_cond21: 	integer := 21;
constant seq_cond_cond22: 	integer := 22;
constant seq_cond_cond23: 	integer := 23;
constant seq_cond_cond24: 	integer := 24;
constant seq_cond_cond25: 	integer := 25;
constant seq_cond_cond26: 	integer := 26;
constant seq_cond_cond27: 	integer := 27;
constant seq_cond_cond28: 	integer := 28;
constant seq_cond_cond29: 	integer := 29;
constant seq_cond_cond30: 	integer := 30;
constant seq_cond_false: 	integer := 31;
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
--  cond(seq_cond_MDR_IS_ALPHA) => MDR_IS_ALPHA,
--  cond(seq_cond_ESTACK_IS_FULL) => ESTACK_IS_FULL,
--  cond(seq_cond_ESTACK_IS_EMPTY) => ESTACK_IS_EMPTY,
--  cond(seq_cond_cond18) => cond18,
--  cond(seq_cond_cond19) => cond19,
--  cond(seq_cond_cond20) => cond20,
--  cond(seq_cond_cond21) => cond21,
--  cond(seq_cond_cond22) => cond22,
--  cond(seq_cond_cond23) => cond23,
--  cond(seq_cond_cond24) => cond24,
--  cond(seq_cond_cond25) => cond25,
--  cond(seq_cond_cond26) => cond26,
--  cond(seq_cond_cond27) => cond27,
--  cond(seq_cond_cond28) => cond28,
--  cond(seq_cond_cond29) => cond29,
--  cond(seq_cond_cond30) => cond30,
--  cond(seq_cond_false) => '0',
---- End boilerplate code

--
-- L0052.seq_then: .then 9 values next, repeat, return, fork, @ default next;
--
alias mb_seq_then: 	std_logic_vector(8 downto 0) is mb_uinstruction(55 downto 47);
constant seq_then_next: 	std_logic_vector(8 downto 0) := O"000";
constant seq_then_repeat: 	std_logic_vector(8 downto 0) := O"001";
constant seq_then_return: 	std_logic_vector(8 downto 0) := O"002";
constant seq_then_fork: 	std_logic_vector(8 downto 0) := O"003";
-- Jump targets allowed!
-- include '.controller <filename.vhd>, <stackdepth>;' in .mcc file to generate pre-canned microcode control unit and connect 'then' to mb_seq_then

--
-- L0053.seq_else: .else 9 values next, repeat, return, fork, 0b000000..0b111111, @ default next;
--
alias mb_seq_else: 	std_logic_vector(8 downto 0) is mb_uinstruction(46 downto 38);
constant seq_else_next: 	std_logic_vector(8 downto 0) := O"000";
constant seq_else_repeat: 	std_logic_vector(8 downto 0) := O"001";
constant seq_else_return: 	std_logic_vector(8 downto 0) := O"002";
constant seq_else_fork: 	std_logic_vector(8 downto 0) := O"003";
-- Values from O"000" to O"077" allowed
-- Jump targets allowed!
-- include '.controller <filename.vhd>, <stackdepth>;' in .mcc file to generate pre-canned microcode control unit and connect 'else' to mb_seq_else

--
-- L0056.directByte: .valfield 8 values 0x00..0xFF default 0xFF;
--
alias mb_directByte: 	std_logic_vector(7 downto 0) is mb_uinstruction(37 downto 30);
-- Values from X"00" to X"FF" allowed
---- Start boilerplate code (use with utmost caution!)
--  directByte <= mb_directByte;
---- End boilerplate code

--
-- L0059.T: .regfield 2 values same, IL_PC, zero, T10_plus_mdr default same;
--
alias mb_T: 	std_logic_vector(1 downto 0) is mb_uinstruction(29 downto 28);
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
-- L0067.DBGINDEX: .regfield 2 values same, from_microcode, zero, crlf default same;
--
alias mb_DBGINDEX: 	std_logic_vector(1 downto 0) is mb_uinstruction(27 downto 26);
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
-- L0075.IL_PC: .regfield 3 values same, zero, inc, T, pc_plus_off6, pc_plus_off5, -, - default same;
--
alias mb_IL_PC: 	std_logic_vector(2 downto 0) is mb_uinstruction(25 downto 23);
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
-- L0087.IL_OP: .regfield 1 values same, from_interpreter default same;
--
alias mb_IL_OP: 	std_logic is mb_uinstruction(22);
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
-- L0093.CHAROUT: .regfield 2 values same, from_interpreter, from_microcode, from_charin default same;
--
alias mb_CHAROUT: 	std_logic_vector(1 downto 0) is mb_uinstruction(21 downto 20);
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
-- L0101.MAR: .regfield 2 values same, InlEnd, BP, - default same;
--
alias mb_MAR: 	std_logic_vector(1 downto 0) is mb_uinstruction(19 downto 18);
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
-- L0109.MDR: .regfield 3 values same, from_Bus, zero, CHARIN, ToUpper, -, -, - default same;
--
alias mb_MDR: 	std_logic_vector(2 downto 0) is mb_uinstruction(17 downto 15);
constant MDR_same: 	std_logic_vector(2 downto 0) := O"0";
constant MDR_from_Bus: 	std_logic_vector(2 downto 0) := O"1";
constant MDR_zero: 	std_logic_vector(2 downto 0) := O"2";
constant MDR_CHARIN: 	std_logic_vector(2 downto 0) := O"3";
constant MDR_ToUpper: 	std_logic_vector(2 downto 0) := O"4";
-- Value O"5" not allowed (name '-' is not assignable)
-- Value O"6" not allowed (name '-' is not assignable)
-- Value O"7" not allowed (name '-' is not assignable)
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
--			when MDR_ToUpper =>
--				MDR <= ToUpper;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0121.InlEnd: .regfield 2 values same, InLine_start, inc, dec default same;
--
alias mb_InlEnd: 	std_logic_vector(1 downto 0) is mb_uinstruction(14 downto 13);
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
-- L0129.BP: .regfield 2 values same, InLine_start, SvPt, inc default same;
--
alias mb_BP: 	std_logic_vector(1 downto 0) is mb_uinstruction(12 downto 11);
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
-- L0137.SvPt: .regfield 2 values same, InLine_start, BP, - default same;
--
alias mb_SvPt: 	std_logic_vector(1 downto 0) is mb_uinstruction(10 downto 9);
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
-- L0144.ExpStack: .regfield 3 values same, clear, push_T, startSwap, endSwap, push_MDR2, -, - default same;
--
alias mb_ExpStack: 	std_logic_vector(2 downto 0) is mb_uinstruction(8 downto 6);
constant ExpStack_same: 	std_logic_vector(2 downto 0) := O"0";
constant ExpStack_clear: 	std_logic_vector(2 downto 0) := O"1";
constant ExpStack_push_T: 	std_logic_vector(2 downto 0) := O"2";
constant ExpStack_startSwap: 	std_logic_vector(2 downto 0) := O"3";
constant ExpStack_endSwap: 	std_logic_vector(2 downto 0) := O"4";
constant ExpStack_push_MDR2: 	std_logic_vector(2 downto 0) := O"5";
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
--			when ExpStack_push_MDR2 =>
--				ExpStack <= push_MDR2;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0156.gotChar: .valfield 1 values 0, 1 default 0;
--
alias mb_gotChar: 	std_logic is mb_uinstruction(5);
-- Value '0' allowed
-- Value '1' allowed
---- Start boilerplate code (use with utmost caution!)
--  gotChar <= mb_gotChar;
---- End boilerplate code

--
-- L0162.dummy: .valfield 5 values * default 0;
--
alias mb_dummy: 	std_logic_vector(4 downto 0) is mb_uinstruction(4 downto 0);
-- Values from "00000" to "11111" allowed
---- Start boilerplate code (use with utmost caution!)
--  dummy <= mb_dummy;
---- End boilerplate code



constant mb_microcode: mb_code_memory := (

-- nop;
-- L0195@0000 E000003FC0000000._reset:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
0 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- nop;
-- L0197@0001 E000003FC0000000._reset1:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
1 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- nop;
-- L0199@0002 E000003FC0000000._reset2:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
2 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- nop;
-- L0201@0003 E000003FC0000000._reset3:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
3 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- clear;
-- L0205@0004 E000003FC8802A40.WarmStart:  DBGINDEX <= zero, IL_PC <= zero, BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, ExpStack <= clear;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 10, IL_PC <= 001, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 01, SvPt <= 01, ExpStack <= 001, gotChar = 0, dummy = 00000;
4 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & "00" & "10" & O"1" & '0' & "00" & "00" & O"0" & "01" & "01" & "01" & O"1" & '0' & "00000",

-- WriteCore(BP, zero);
-- L0206@0005 E0389C7FC0090000.  WriteCore(BP, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001110001 else 001110001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 10, MDR <= 010, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
5 => '1' & '1' & '1' & "00000" & O"161" & O"161" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "10" & O"2" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- traceString 4;
-- L0207@0006 E042A14104000000.  trace(from_microcode), directByte = 4;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00000100, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
6 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"04" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- trace(crlf);
-- L0209@0007 E042A17FCC000000.fetch:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
7 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"FF" & "00" & "11" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- traceString 2;
-- L0210@0008 E042A14084000000.  trace(from_microcode), directByte = 2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00000010, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
8 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"02" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- traceString 3;
-- L0211@0009 E042A140C4000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00000011, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
9 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"03" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- IL_OP <= from_interpreter, IL_PC <= inc;
-- L0212@000A E000003FC1400000.  IL_OP <= from_interpreter, IL_PC <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 1, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
10 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & "00" & "00" & O"2" & '1' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- if true then fork else fork;
-- L0213@000B E00180FFC0000000.  if true then fork else fork;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000011 else 000000011, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
11 => '1' & '1' & '1' & "00000" & O"003" & O"003" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- traceString 62;
-- L0216@000C E042A14F84000000.badop:  trace(from_microcode), directByte = 62;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00111110, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
12 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"3E" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- trace(crlf);
-- L0218@000D E042A17FCC000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
13 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"FF" & "00" & "11" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- goto INTERNAL_ERR;
-- L0219@000E FF0017FFC0000000.  if false then next else INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001011111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
14 => '1' & '1' & '1' & "11111" & O"000" & O"137" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- traceString 15;
-- L0224@000F E042A143C4000000.  trace(from_microcode), directByte = 15;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00001111, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
15 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"0F" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- ExpStack <= startSwap;
-- L0225@0010 E000003FC00000C0.  ExpStack <= startSwap;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 011, gotChar = 0, dummy = 00000;
16 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"3" & '0' & "00000",

-- ExpStack <= endSwap;
-- L0226@0011 E000003FC0000100.  ExpStack <= endSwap;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 100, gotChar = 0, dummy = 00000;
17 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"4" & '0' & "00000",

-- goto fetch;
-- L0227@0012 FF0001FFC0000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
18 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- traceString 15;
-- L0230@0013 E042A143C4000000.  trace(from_microcode), directByte = 15;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00001111, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
19 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"0F" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- goto fetch;
-- L0231@0014 FF0001FFC0000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
20 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- traceString 12;
-- L0236@0015 E042A14304000000.  trace(from_microcode), directByte = 12;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00001100, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
21 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"0C" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- goto fetch;
-- L0237@0016 FF0001FFC0000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
22 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- traceString 10;
-- L0242@0017 E042A14284000000.  trace(from_microcode), directByte = 10;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00001010, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
23 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"0A" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- if BP_IN_INPLINE then next else ptr_exc;
-- L0243@0018 EC00073FC0000000.  if BP_IN_INPLINE then next else ptr_exc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01100) then 000000000 else 000011100, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
24 => '1' & '1' & '1' & "01100" & O"000" & O"034" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- SvPt <= BP, goto fetch;
-- L0244@0019 FF0001FFC0000400.save_bp:  SvPt <= BP, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 10, ExpStack <= 000, gotChar = 0, dummy = 00000;
25 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "10" & O"0" & '0' & "00000",

-- traceString 11;
-- L0249@001A E042A142C4000000.  trace(from_microcode), directByte = 11;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00001011, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
26 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"0B" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- if SVP_IN_INPLINE then save_bp;
-- L0250@001B ED0C803FC0000000.  if SVP_IN_INPLINE then save_bp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01101) then 000011001 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
27 => '1' & '1' & '1' & "01101" & O"031" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- SvPt <= BP, BP <= SvPt, goto fetch;
-- L0251@001C FF0001FFC0001400.ptr_exc:  SvPt <= BP, BP <= SvPt, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 10, SvPt <= 10, ExpStack <= 000, gotChar = 0, dummy = 00000;
28 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "10" & "10" & O"0" & '0' & "00000",

-- traceString 6;
-- L0256@001D E042A14184000000.  trace(from_microcode), directByte = 6;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00000110, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
29 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"06" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- outCRLF();
-- L0257@001E E0359AFFC0000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001101011 else 001101011, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
30 => '1' & '1' & '1' & "00000" & O"153" & O"153" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- goto fetch;
-- L0258@001F FF0001FFC0000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
31 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- traceString 5;
-- L0263@0020 E042A14144000000.  trace(from_microcode), directByte = 5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00000101, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
32 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"05" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- outChar(from_interpreter);
-- L0264@0021 E0371BBFC0100000.pc_loop:  outChar(from_interpreter);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001101110 else 001101110, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 01, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
33 => '1' & '1' & '1' & "00000" & O"156" & O"156" & X"FF" & "00" & "00" & O"0" & '0' & "01" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- traceString 3;
-- L0265@0022 E042A140C4000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00000011, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
34 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"03" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- IL_PC <= inc, if CHAROUT_BIT7 then next else pc_loop;
-- L0266@0023 E100087FC1000000.  IL_PC <= inc, if CHAROUT_BIT7 then next else pc_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00001) then 000000000 else 000100001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
35 => '1' & '1' & '1' & "00001" & O"000" & O"041" & X"FF" & "00" & "00" & O"2" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- goto fetch;
-- L0267@0024 FF0001FFC0000000.pc_exit:  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
36 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- traceString 8;
-- L0272@0025 E042A14204000000.  trace(from_microcode), directByte = 8;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00001000, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
37 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"08" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- InlEnd <= InLine_start;
-- L0273@0026 E000003FC0002000.gl:  InlEnd <= InLine_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
38 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "01" & "00" & "00" & O"0" & '0' & "00000",

-- if CHARIN_READY then next else repeat;
-- L0274@0027 EB00007FC0000000.gl_loop:  if CHARIN_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01011) then 000000000 else 000000001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
39 => '1' & '1' & '1' & "01011" & O"000" & O"001" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- if CHARIN_PRINTABLE then gl_print;
-- L0275@0028 E917003FC0000000.  if CHARIN_PRINTABLE then gl_print;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01001) then 000101110 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
40 => '1' & '1' & '1' & "01001" & O"056" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- directByte = CR, if CHARIN_EQU_DB then gl_cr;
-- L0276@0029 EA1D000340000000.  directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 000111010 else 000000000, directByte = 00001101, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
41 => '1' & '1' & '1' & "01010" & O"072" & O"000" & X"0D" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- directByte = BACKSPACE, if CHARIN_EQU_DB then gl_bs;
-- L0277@002A EA1B800200000000.  directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 000110111 else 000000000, directByte = 00001000, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
42 => '1' & '1' & '1' & "01010" & O"067" & O"000" & X"08" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- directByte = ESC, if CHARIN_EQU_DB then gl_esc;
-- L0278@002B EA1A0006C0000000.  directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 000110100 else 000000000, directByte = 00011011, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
43 => '1' & '1' & '1' & "01010" & O"064" & O"000" & X"1B" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- directByte = BEEP, outChar(from_microcode);
-- L0281@002C E0371B81C0200000.gl_ignore:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001101110 else 001101110, directByte = 00000111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 10, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
44 => '1' & '1' & '1' & "00000" & O"156" & O"156" & X"07" & "00" & "00" & O"0" & '0' & "10" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- gotChar = 1, goto gl_loop;
-- L0282@002D FF0009FFC0000020.  gotChar = 1, if false then next else gl_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000100111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 1, dummy = 00000;
45 => '1' & '1' & '1' & "11111" & O"000" & O"047" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '1' & "00000",

-- if INLEND_MAX then gl_ignore;
-- L0284@002E E716003FC0000000.gl_print:  if INLEND_MAX then gl_ignore;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00111) then 000101100 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
46 => '1' & '1' & '1' & "00111" & O"054" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- outChar(from_charin);
-- L0285@002F E0371BBFC0300000.  outChar(from_charin);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001101110 else 001101110, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 11, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
47 => '1' & '1' & '1' & "00000" & O"156" & O"156" & X"FF" & "00" & "00" & O"0" & '0' & "11" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- WriteCore(InlEnd, CHARIN);
-- L0286@0030 E0389C7FC0058000.  WriteCore(InlEnd, CHARIN);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001110001 else 001110001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 01, MDR <= 011, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
48 => '1' & '1' & '1' & "00000" & O"161" & O"161" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "01" & O"3" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- InlEnd <= inc;
-- L0287@0031 E000003FC0004000.  InlEnd <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
49 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "10" & "00" & "00" & O"0" & '0' & "00000",

-- WriteCore(InlEnd, zero);
-- L0288@0032 E0389C7FC0050000.gl_write0:  WriteCore(InlEnd, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001110001 else 001110001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
50 => '1' & '1' & '1' & "00000" & O"161" & O"161" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "01" & O"2" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- gotChar = 1, goto gl_loop;
-- L0289@0033 FF0009FFC0000020.  gotChar = 1, if false then next else gl_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000100111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 1, dummy = 00000;
51 => '1' & '1' & '1' & "11111" & O"000" & O"047" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '1' & "00000",

-- directByte = BEEP, outChar(from_microcode);
-- L0291@0034 E0371B81C0200000.gl_esc:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001101110 else 001101110, directByte = 00000111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 10, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
52 => '1' & '1' & '1' & "00000" & O"156" & O"156" & X"07" & "00" & "00" & O"0" & '0' & "10" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- outCRLF();
-- L0292@0035 E0359AFFC0000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001101011 else 001101011, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
53 => '1' & '1' & '1' & "00000" & O"153" & O"153" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- gotChar = 1, goto gl;
-- L0293@0036 FF0009BFC0000020.  gotChar = 1, if false then next else gl;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000100110, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 1, dummy = 00000;
54 => '1' & '1' & '1' & "11111" & O"000" & O"046" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '1' & "00000",

-- if INLEND_MIN then gl_ignore;
-- L0295@0037 E816003FC0000000.gl_bs:  if INLEND_MIN then gl_ignore;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01000) then 000101100 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
55 => '1' & '1' & '1' & "01000" & O"054" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- directByte = BACKSPACE, outChar(from_microcode);
-- L0296@0038 E0371B8200200000.  directByte = 0x08, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001101110 else 001101110, directByte = 00001000, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 10, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
56 => '1' & '1' & '1' & "00000" & O"156" & O"156" & X"08" & "00" & "00" & O"0" & '0' & "10" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- InlEnd <= dec, goto gl_write0;
-- L0297@0039 FF000CBFC0006000.  InlEnd <= dec, if false then next else gl_write0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000110010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 11, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
57 => '1' & '1' & '1' & "11111" & O"000" & O"062" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "11" & "00" & "00" & O"0" & '0' & "00000",

-- WriteCore(InlEnd, CHARIN);
-- L0299@003A E0389C7FC0058000.gl_cr:  WriteCore(InlEnd, CHARIN);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001110001 else 001110001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 01, MDR <= 011, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
58 => '1' & '1' & '1' & "00000" & O"161" & O"161" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "01" & O"3" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- InlEnd <= inc;
-- L0300@003B E000003FC0004000.  InlEnd <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
59 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "10" & "00" & "00" & O"0" & '0' & "00000",

-- WriteCore(InlEnd, zero);
-- L0301@003C E0389C7FC0050000.  WriteCore(InlEnd, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001110001 else 001110001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
60 => '1' & '1' & '1' & "00000" & O"161" & O"161" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "01" & O"2" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- dump_input();
-- L0302@003D E03A9D7FC0000000.  dump_input();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001110101 else 001110101, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
61 => '1' & '1' & '1' & "00000" & O"165" & O"165" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- outCRLF();
-- L0303@003E E0359AFFC0000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001101011 else 001101011, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
62 => '1' & '1' & '1' & "00000" & O"153" & O"153" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- gotChar = 1, BP <= Inline_start, goto fetch;
-- L0304@003F FF0001FFC0000820.  gotChar = 1, BP <= Inline_start, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 01, SvPt <= 00, ExpStack <= 000, gotChar = 1, dummy = 00000;
63 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "01" & "00" & O"0" & '1' & "00000",

-- traceString 7;
-- L0309@0040 E042A141C4000000.  trace(from_microcode), directByte = 7;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00000111, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
64 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"07" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- IL_PC <= pc_plus_off6;
-- L0310@0041 E000003FC2000000.  IL_PC <= pc_plus_off6;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 100, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
65 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & "00" & "00" & O"4" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- traceString 2;
-- L0311@0042 E042A14084000000.br_exit:  trace(from_microcode), directByte = 2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00000010, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
66 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"02" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- goto fetch;
-- L0312@0043 FF0001FFC0000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
67 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- goto badop;
-- L0315@0044 FF00033FC0000000.  if false then next else badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001100, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
68 => '1' & '1' & '1' & "11111" & O"000" & O"014" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- traceString 16;
-- L0320@0045 E042A14404000000.  trace(from_microcode), directByte = 16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00010000, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
69 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"10" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- skipSpaces();
-- L0321@0046 E03399FFC0000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001100111 else 001100111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
70 => '1' & '1' & '1' & "00000" & O"147" & O"147" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
-- L0322@0047 EF24803FC0020000.  MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01111) then 001001001 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 100, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
71 => '1' & '1' & '1' & "01111" & O"111" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"4" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- IL_PC <= pc_plus_off5, goto br_exit;
-- L0323@0048 FF0010BFC2800000.  IL_PC <= pc_plus_off5, if false then next else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001000010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
72 => '1' & '1' & '1' & "11111" & O"000" & O"102" & X"FF" & "00" & "00" & O"5" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- if ESTACK_IS_FULL then STACK_ERR;
-- L0324@0049 F030003FC0000000.bv_exec:  if ESTACK_IS_FULL then STACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 001100000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
73 => '1' & '1' & '1' & "10000" & O"140" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- ExpStack <= push_MDR2, goto br_exit;
-- L0325@004A FF0010BFC0000140.  ExpStack <= push_MDR2, if false then next else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001000010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 101, gotChar = 0, dummy = 00000;
74 => '1' & '1' & '1' & "11111" & O"000" & O"102" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"5" & '0' & "00000",

-- goto badop;
-- L0328@004B FF00033FC0000000.  if false then next else badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001100, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
75 => '1' & '1' & '1' & "11111" & O"000" & O"014" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- traceString 14;
-- L0333@004C E042A14384000000.  trace(from_microcode), directByte = 14;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00001110, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
76 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"0E" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- skipSpaces();
-- L0334@004D E03399FFC0000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001100111 else 001100111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
77 => '1' & '1' & '1' & "00000" & O"147" & O"147" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- T <= zero, if MDR_IS_NUM then bn_loop;
-- L0335@004E EE29003FE0000000.  T <= zero, if MDR_IS_NUM then bn_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01110) then 001010010 else 000000000, directByte = 11111111, T <= 10, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
78 => '1' & '1' & '1' & "01110" & O"122" & O"000" & X"FF" & "10" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- IL_PC <= pc_plus_off5;
-- L0336@004F E000003FC2800000.  IL_PC <= pc_plus_off5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
79 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & "00" & "00" & O"5" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- traceString 2;
-- L0337@0050 E042A14084000000.bn_exit:  trace(from_microcode), directByte = 2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00000010, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
80 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"02" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- goto fetch;
-- L0338@0051 FF0001FFC0000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
81 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- T <= T10_plus_mdr, BP <= inc;
-- L0339@0052 E000003FF0001800.bn_loop:  T <= T10_plus_mdr, BP <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 11, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 11, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
82 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & "11" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "11" & "00" & O"0" & '0' & "00000",

-- ReadCore(BP);
-- L0340@0053 E0399CFFC0080000.  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001110011 else 001110011, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
83 => '1' & '1' & '1' & "00000" & O"163" & O"163" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "10" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- if MDR_IS_NUM then bn_loop;
-- L0341@0054 EE29003FC0000000.  if MDR_IS_NUM then bn_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01110) then 001010010 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
84 => '1' & '1' & '1' & "01110" & O"122" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- if ESTACK_IS_FULL then STACK_ERR;
-- L0342@0055 F030003FC0000000.  if ESTACK_IS_FULL then STACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 001100000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
85 => '1' & '1' & '1' & "10000" & O"140" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- ExpStack <= push_T, goto bn_exit;
-- L0343@0056 FF00143FC0000080.  ExpStack <= push_T, if false then next else bn_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001010000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 010, gotChar = 0, dummy = 00000;
86 => '1' & '1' & '1' & "11111" & O"000" & O"120" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"2" & '0' & "00000",

-- goto badop;
-- L0346@0057 FF00033FC0000000.  if false then next else badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001100, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
87 => '1' & '1' & '1' & "11111" & O"000" & O"014" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- traceString 13;
-- L0351@0058 E042A14344000000.  trace(from_microcode), directByte = 13;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00001101, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
88 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"0D" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- skipSpaces();
-- L0352@0059 E03399FFC0000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001100111 else 001100111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
89 => '1' & '1' & '1' & "00000" & O"147" & O"147" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- directByte = CR, if MDR_EQU_DB then fetch;
-- L0353@005A E503800340000000.  directByte = 0x0D, if MDR_EQU_DB then fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 000000111 else 000000000, directByte = 00001101, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
90 => '1' & '1' & '1' & "00101" & O"007" & O"000" & X"0D" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- IL_PC <= pc_plus_off5;
-- L0354@005B E000003FC2800000.  IL_PC <= pc_plus_off5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
91 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & "00" & "00" & O"5" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- traceString 2;
-- L0355@005C E042A14084000000.  trace(from_microcode), directByte = 2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00000010, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
92 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"02" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- goto fetch;
-- L0356@005D FF0001FFC0000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
93 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- goto badop;
-- L0359@005E FF00033FC0000000.  if false then next else badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001100, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
94 => '1' & '1' & '1' & "11111" & O"000" & O"014" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- nop;
-- L0361@005F E000003FC0000000.INTERNAL_ERR:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
95 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- nop;
-- L0362@0060 E000003FC0000000.STACK_ERR:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
96 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- directByte = BEEP, outChar(from_microcode);
-- L0363@0061 E0371B81C0200000.  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001101110 else 001101110, directByte = 00000111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 10, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
97 => '1' & '1' & '1' & "00000" & O"156" & O"156" & X"07" & "00" & "00" & O"0" & '0' & "10" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- directByte = 'E', outChar(from_microcode);
-- L0364@0062 E0371B9140200000.  directByte = 'E', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001101110 else 001101110, directByte = 01000101, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 10, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
98 => '1' & '1' & '1' & "00000" & O"156" & O"156" & X"45" & "00" & "00" & O"0" & '0' & "10" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- directByte = 'R', outChar(from_microcode);
-- L0365@0063 E0371B9480200000.  directByte = 'R', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001101110 else 001101110, directByte = 01010010, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 10, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
99 => '1' & '1' & '1' & "00000" & O"156" & O"156" & X"52" & "00" & "00" & O"0" & '0' & "10" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- directByte = 'R', outChar(from_microcode);
-- L0366@0064 E0371B9480200000.  directByte = 'R', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001101110 else 001101110, directByte = 01010010, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 10, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
100 => '1' & '1' & '1' & "00000" & O"156" & O"156" & X"52" & "00" & "00" & O"0" & '0' & "10" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- outCRLF();
-- L0369@0065 E0359AFFC0000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001101011 else 001101011, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
101 => '1' & '1' & '1' & "00000" & O"153" & O"153" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- goto WarmStart;
-- L0370@0066 FF00013FC0000000.  if false then next else WarmStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000100, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
102 => '1' & '1' & '1' & "11111" & O"000" & O"004" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- ReadCore(BP);
-- L0372@0067 E0399CFFC0080000.skipSpaces:  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001110011 else 001110011, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
103 => '1' & '1' & '1' & "00000" & O"163" & O"163" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "10" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- directByte = SPACE, if MDR_EQU_DB then skipSp;
-- L0373@0068 E535000800000000.  directByte = 0x20, if MDR_EQU_DB then skipSp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 001101010 else 000000000, directByte = 00100000, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
104 => '1' & '1' & '1' & "00101" & O"152" & O"000" & X"20" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- directByte = TAB, if MDR_EQU_DB then skipSp else return;
-- L0374@0069 E535008240000000.  directByte = 0x09, if MDR_EQU_DB then skipSp else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 001101010 else 000000010, directByte = 00001001, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
105 => '1' & '1' & '1' & "00101" & O"152" & O"002" & X"09" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- BP <= inc, goto  skipSpaces;
-- L0375@006A FF0019FFC0001800.skipSp:  BP <= inc, if false then next else  skipSpaces;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001100111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 11, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
106 => '1' & '1' & '1' & "11111" & O"000" & O"147" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "11" & "00" & O"0" & '0' & "00000",

-- directByte = CR, outChar(from_microcode);
-- L0377@006B E0371B8340200000.outCRLF:  directByte = 0x0D, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001101110 else 001101110, directByte = 00001101, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 10, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
107 => '1' & '1' & '1' & "00000" & O"156" & O"156" & X"0D" & "00" & "00" & O"0" & '0' & "10" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- directByte = LF, outChar(from_microcode);
-- L0378@006C E0371B8280200000.  directByte = 0x0A, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001101110 else 001101110, directByte = 00001010, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 10, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
108 => '1' & '1' & '1' & "00000" & O"156" & O"156" & X"0A" & "00" & "00" & O"0" & '0' & "10" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- back;
-- L0379@006D E00100BFC0000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
109 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- if CHAROUT_READY then next else repeat;
-- L0380@006E E200007FC0000000.outChar:  if CHAROUT_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00010) then 000000000 else 000000001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
110 => '1' & '1' & '1' & "00010" & O"000" & O"001" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- if CHAROUT_READY then next else repeat;
-- L0381@006F E200007FC0000000.  if CHAROUT_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00010) then 000000000 else 000000001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
111 => '1' & '1' & '1' & "00010" & O"000" & O"001" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- back;
-- L0382@0070 E00100BFC0000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
112 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- nBUSREQ = 0, if nBUSACK then repeat else next;
-- L0384@0071 6600803FC0000000.WriteCore:  nBUSREQ = 0, if nBUSACK then repeat else next;
--  nBUSREQ = 0, nWR = 1, nRD = 1, if (00110) then 000000001 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
113 => '0' & '1' & '1' & "00110" & O"001" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- nBUSREQ = 0, nWR = 0, back;
-- L0385@0072 200100BFC0000000.  nBUSREQ = 0, nWR = 0, if true then return else return;
--  nBUSREQ = 0, nWR = 0, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
114 => '0' & '0' & '1' & "00000" & O"002" & O"002" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- nBUSREQ = 0, if nBUSACK then repeat else next;
-- L0387@0073 6600803FC0000000.ReadCore:  nBUSREQ = 0, if nBUSACK then repeat else next;
--  nBUSREQ = 0, nWR = 1, nRD = 1, if (00110) then 000000001 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
115 => '0' & '1' & '1' & "00110" & O"001" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- nBUSREQ = 0, nRD = 0, MDR <= from_Bus, back;
-- L0388@0074 400100BFC0008000.  nBUSREQ = 0, nRD = 0, MDR <= from_Bus, if true then return else return;
--  nBUSREQ = 0, nWR = 1, nRD = 0, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 001, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
116 => '0' & '1' & '0' & "00000" & O"002" & O"002" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"1" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- InlEnd <= InLine_start, trace(crlf);
-- L0392@0075 E042A17FCC002000.dump_input:  InlEnd <= InLine_start, trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
117 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"FF" & "00" & "11" & O"0" & '0' & "00" & "00" & O"0" & "01" & "00" & "00" & O"0" & '0' & "00000",

-- ReadCore(InlEnd);
-- L0393@0076 E0399CFFC0040000.dump_inlp:  ReadCore(InlEnd);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 001110011 else 001110011, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 01, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
118 => '1' & '1' & '1' & "00000" & O"163" & O"163" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "01" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- directByte = 9, trace(from_microcode);
-- L0394@0077 E042A14244000000.  directByte = 9, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00001001, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
119 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"09" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- directByte = NULL, if MDR_EQU_DB then dump_inex;
-- L0395@0078 E53D000000000000.  directByte = 0x00, if MDR_EQU_DB then dump_inex;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 001111010 else 000000000, directByte = 00000000, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
120 => '1' & '1' & '1' & "00101" & O"172" & O"000" & X"00" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- InlEnd <= inc, goto dump_inlp;
-- L0396@0079 FF001DBFC0004000.  InlEnd <= inc, if false then next else dump_inlp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001110110, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
121 => '1' & '1' & '1' & "11111" & O"000" & O"166" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "10" & "00" & "00" & O"0" & '0' & "00000",

-- trace(crlf);
-- L0397@007A E042A17FCC000000.dump_inex:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
122 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"FF" & "00" & "11" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- back;
-- L0398@007B E00100BFC0000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
123 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- directByte = 1, trace(from_microcode);
-- L0400@007C E042A14044000000.dump_il:  directByte = 1, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00000001, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
124 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"01" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- trace(crlf);
-- L0401@007D E042A17FCC000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
125 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"FF" & "00" & "11" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- T <= IL_PC, IL_PC <= zero;
-- L0402@007E E000003FD0800000.  T <= IL_PC, IL_PC <= zero;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 01, DBGINDEX <= 00, IL_PC <= 001, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
126 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & "01" & "00" & O"1" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- if IL_PC_VALID then next else dump_il_ex;
-- L0403@007F E300213FC0000000.dump_il_lp:  if IL_PC_VALID then next else dump_il_ex;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00011) then 000000000 else 010000100, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
127 => '1' & '1' & '1' & "00011" & O"000" & O"204" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- directByte = 2, trace(from_microcode);
-- L0404@0080 E042A14084000000.  directByte = 2, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00000010, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
128 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"02" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- directByte = 3, trace(from_microcode);
-- L0405@0081 E042A140C4000000.  directByte = 3, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 00000011, T <= 00, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
129 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"03" & "00" & "01" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- trace(crlf);
-- L0406@0082 E042A17FCC000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010000101 else 010000101, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
130 => '1' & '1' & '1' & "00000" & O"205" & O"205" & X"FF" & "00" & "11" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- IL_PC <= inc, goto dump_il_lp;
-- L0407@0083 FF001FFFC1000000.  IL_PC <= inc, if false then next else dump_il_lp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001111111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
131 => '1' & '1' & '1' & "11111" & O"000" & O"177" & X"FF" & "00" & "00" & O"2" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- IL_PC <= T, back;
-- L0408@0084 E00100BFC1800000.dump_il_ex:  IL_PC <= T, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 011, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
132 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & "00" & "00" & O"3" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- if DBG_READY then next else repeat;
-- L0410@0085 E400007FC0000000.trace:  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
133 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- if DBG_READY then next else repeat;
-- L0411@0086 E400007FC0000000.  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
134 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- if DBG_READY then next else repeat;
-- L0412@0087 E400007FC0000000.  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
135 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- DBGINDEX <= zero, back;
-- L0413@0088 E00100BFC8000000.  DBGINDEX <= zero, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGINDEX <= 10, IL_PC <= 000, IL_OP <= 0, CHAROUT <= 00, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 00, SvPt <= 00, ExpStack <= 000, gotChar = 0, dummy = 00000;
136 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & "00" & "10" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000",

-- 375 location(s) in following ranges will be filled with default value
-- 0089 .. 01FF

others => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & '0' & "00" & "00" & O"0" & "00" & "00" & "00" & O"0" & '0' & "00000"
);

end microBasic_code;

