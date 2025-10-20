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
constant CODE_DATA_WIDTH: 	positive := 72;
constant CODE_ADDRESS_WIDTH: 	positive := 9;
constant CODE_ADDRESS_LAST: 	positive := 511;
constant CODE_IF_WIDTH: 	positive := 5;


type mb_code_memory is array(0 to 511) of std_logic_vector(71 downto 0);

signal mb_uinstruction: std_logic_vector(71 downto 0);

--mb_uinstruction <= mb_microcode(to_integer(unsigned(TODO))); -- copy to file containing the control unit. TODO is typically replace with 'ui_address' control unit output

--
-- L0011.nBUSREQ: .valfield 1 values 0, 1 default 1;
--
alias mb_nBUSREQ: 	std_logic is mb_uinstruction(71);
-- Value '0' allowed
-- Value '1' allowed
---- Start boilerplate code (use with utmost caution!)
--  nBUSREQ <= mb_nBUSREQ;
---- End boilerplate code

--
-- L0012.nWR: .valfield 1 values 0, 1 default 1;
--
alias mb_nWR: 	std_logic is mb_uinstruction(70);
-- Value '0' allowed
-- Value '1' allowed
---- Start boilerplate code (use with utmost caution!)
--  nWR <= mb_nWR;
---- End boilerplate code

--
-- L0013.nRD: .valfield 1 values 0, 1 default 1;
--
alias mb_nRD: 	std_logic is mb_uinstruction(69);
-- Value '0' allowed
-- Value '1' allowed
---- Start boilerplate code (use with utmost caution!)
--  nRD <= mb_nRD;
---- End boilerplate code

--
-- L0018.seq_cond: .if 5 values true, ILCODEBYTE_BIT7, CHAROUT_READY, IL_PC_VALID, DBG_READY, MDR_EQU_DB, nBUSACK, INLEND_MAX, INLEND_MIN, CHARIN_PRINTABLE, CHARIN_EQU_DB, CHARIN_READY, BP_IN_INPLINE, SVP_IN_INPLINE, MDR_IS_NUM, MDR_IS_ALPHA, ESTACK_IS_FULL, ESTACK_IS_EMPTY, MDR_MATCHES_ILCODEBYTE, RSTACK_IS_FULL, RSTACK_IS_EMPTY, ALU_READY, ALU_OVERFLOW, ALU_SIGN, R_IS_ZERO, AT_TAB, OFF_IS_ZERO, LEADING_ZERO, cond28, cond29, cond30, false default true;
--
alias mb_seq_cond: 	std_logic_vector(4 downto 0) is mb_uinstruction(68 downto 64);
constant seq_cond_true: 	integer := 0;
constant seq_cond_ILCODEBYTE_BIT7: 	integer := 1;
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
constant seq_cond_MDR_MATCHES_ILCODEBYTE: 	integer := 18;
constant seq_cond_RSTACK_IS_FULL: 	integer := 19;
constant seq_cond_RSTACK_IS_EMPTY: 	integer := 20;
constant seq_cond_ALU_READY: 	integer := 21;
constant seq_cond_ALU_OVERFLOW: 	integer := 22;
constant seq_cond_ALU_SIGN: 	integer := 23;
constant seq_cond_R_IS_ZERO: 	integer := 24;
constant seq_cond_AT_TAB: 	integer := 25;
constant seq_cond_OFF_IS_ZERO: 	integer := 26;
constant seq_cond_LEADING_ZERO: 	integer := 27;
constant seq_cond_cond28: 	integer := 28;
constant seq_cond_cond29: 	integer := 29;
constant seq_cond_cond30: 	integer := 30;
constant seq_cond_false: 	integer := 31;
---- Start boilerplate code (use with utmost caution!)
---- include '.controller <filename.vhd>, <stackdepth>;' in .mcc file to generate pre-canned microcode control unit and feed 'conditions' with:
--  cond(seq_cond_true) => '1',
--  cond(seq_cond_ILCODEBYTE_BIT7) => ILCODEBYTE_BIT7,
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
--  cond(seq_cond_MDR_MATCHES_ILCODEBYTE) => MDR_MATCHES_ILCODEBYTE,
--  cond(seq_cond_RSTACK_IS_FULL) => RSTACK_IS_FULL,
--  cond(seq_cond_RSTACK_IS_EMPTY) => RSTACK_IS_EMPTY,
--  cond(seq_cond_ALU_READY) => ALU_READY,
--  cond(seq_cond_ALU_OVERFLOW) => ALU_OVERFLOW,
--  cond(seq_cond_ALU_SIGN) => ALU_SIGN,
--  cond(seq_cond_R_IS_ZERO) => R_IS_ZERO,
--  cond(seq_cond_AT_TAB) => AT_TAB,
--  cond(seq_cond_OFF_IS_ZERO) => OFF_IS_ZERO,
--  cond(seq_cond_LEADING_ZERO) => LEADING_ZERO,
--  cond(seq_cond_cond28) => cond28,
--  cond(seq_cond_cond29) => cond29,
--  cond(seq_cond_cond30) => cond30,
--  cond(seq_cond_false) => '0',
---- End boilerplate code

--
-- L0052.seq_then: .then 9 values next, repeat, return, fork, @ default next;
--
alias mb_seq_then: 	std_logic_vector(8 downto 0) is mb_uinstruction(63 downto 55);
constant seq_then_next: 	std_logic_vector(8 downto 0) := O"000";
constant seq_then_repeat: 	std_logic_vector(8 downto 0) := O"001";
constant seq_then_return: 	std_logic_vector(8 downto 0) := O"002";
constant seq_then_fork: 	std_logic_vector(8 downto 0) := O"003";
-- Jump targets allowed!
-- include '.controller <filename.vhd>, <stackdepth>;' in .mcc file to generate pre-canned microcode control unit and connect 'then' to mb_seq_then

--
-- L0053.seq_else: .else 9 values next, repeat, return, fork, 0b000000..0b111111, @ default next;
--
alias mb_seq_else: 	std_logic_vector(8 downto 0) is mb_uinstruction(54 downto 46);
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
alias mb_directByte: 	std_logic_vector(7 downto 0) is mb_uinstruction(45 downto 38);
-- Values from X"00" to X"FF" allowed
---- Start boilerplate code (use with utmost caution!)
--  directByte <= mb_directByte;
---- End boilerplate code

--
-- L0059.T: .regfield 3 values same, IL_PC, zero, from_vars, ExpStack, from_alu, codeByte, MDRx2 default same;
--
alias mb_T: 	std_logic_vector(2 downto 0) is mb_uinstruction(37 downto 35);
constant T_same: 	std_logic_vector(2 downto 0) := O"0";
constant T_IL_PC: 	std_logic_vector(2 downto 0) := O"1";
constant T_zero: 	std_logic_vector(2 downto 0) := O"2";
constant T_from_vars: 	std_logic_vector(2 downto 0) := O"3";
constant T_ExpStack: 	std_logic_vector(2 downto 0) := O"4";
constant T_from_alu: 	std_logic_vector(2 downto 0) := O"5";
constant T_codeByte: 	std_logic_vector(2 downto 0) := O"6";
constant T_MDRx2: 	std_logic_vector(2 downto 0) := O"7";
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
--			when T_from_vars =>
--				T <= from_vars;
--			when T_ExpStack =>
--				T <= ExpStack;
--			when T_from_alu =>
--				T <= from_alu;
--			when T_codeByte =>
--				T <= codeByte;
--			when T_MDRx2 =>
--				T <= MDRx2;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0071.DBGINDEX: .regfield 2 values same, from_microcode, zero, crlf default same;
--
alias mb_DBGINDEX: 	std_logic_vector(1 downto 0) is mb_uinstruction(34 downto 33);
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
-- L0079.IL_PC: .regfield 3 values same, zero, inc, T, pc_plus_off6, pc_plus_off5, direct11, RetStack default same;
--
alias mb_IL_PC: 	std_logic_vector(2 downto 0) is mb_uinstruction(32 downto 30);
constant IL_PC_same: 	std_logic_vector(2 downto 0) := O"0";
constant IL_PC_zero: 	std_logic_vector(2 downto 0) := O"1";
constant IL_PC_inc: 	std_logic_vector(2 downto 0) := O"2";
constant IL_PC_T: 	std_logic_vector(2 downto 0) := O"3";
constant IL_PC_pc_plus_off6: 	std_logic_vector(2 downto 0) := O"4";
constant IL_PC_pc_plus_off5: 	std_logic_vector(2 downto 0) := O"5";
constant IL_PC_direct11: 	std_logic_vector(2 downto 0) := O"6";
constant IL_PC_RetStack: 	std_logic_vector(2 downto 0) := O"7";
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
--			when IL_PC_direct11 =>
--				IL_PC <= direct11;
--			when IL_PC_RetStack =>
--				IL_PC <= RetStack;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0091.IL_OP: .regfield 1 values same, from_interpreter default same;
--
alias mb_IL_OP: 	std_logic is mb_uinstruction(29);
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
-- L0096.RetStack: .regfield 2 values same, clear, pop, push_IL_PC_PLUS_1 default same;
--
alias mb_RetStack: 	std_logic_vector(1 downto 0) is mb_uinstruction(28 downto 27);
constant RetStack_same: 	std_logic_vector(1 downto 0) := "00";
constant RetStack_clear: 	std_logic_vector(1 downto 0) := "01";
constant RetStack_pop: 	std_logic_vector(1 downto 0) := "10";
constant RetStack_push_IL_PC_PLUS_1: 	std_logic_vector(1 downto 0) := "11";
---- Start boilerplate code (use with utmost caution!)
-- update_RetStack: process(clk, mb_RetStack)
-- begin
--	if (rising_edge(clk)) then
--		case mb_RetStack is
----			when RetStack_same =>
----				RetStack <= RetStack;
--			when RetStack_clear =>
--				RetStack <= (others => '0');
--			when RetStack_pop =>
--				RetStack <= pop;
--			when RetStack_push_IL_PC_PLUS_1 =>
--				RetStack <= push_IL_PC_PLUS_1;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0104.CHAROUT: .regfield 3 values same, from_interpreter, from_microcode, from_charin, from_MDR, from_YtoAlpha, -, - default same;
--
alias mb_CHAROUT: 	std_logic_vector(2 downto 0) is mb_uinstruction(26 downto 24);
constant CHAROUT_same: 	std_logic_vector(2 downto 0) := O"0";
constant CHAROUT_from_interpreter: 	std_logic_vector(2 downto 0) := O"1";
constant CHAROUT_from_microcode: 	std_logic_vector(2 downto 0) := O"2";
constant CHAROUT_from_charin: 	std_logic_vector(2 downto 0) := O"3";
constant CHAROUT_from_MDR: 	std_logic_vector(2 downto 0) := O"4";
constant CHAROUT_from_YtoAlpha: 	std_logic_vector(2 downto 0) := O"5";
-- Value O"6" not allowed (name '-' is not assignable)
-- Value O"7" not allowed (name '-' is not assignable)
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
--			when CHAROUT_from_MDR =>
--				CHAROUT <= from_MDR;
--			when CHAROUT_from_YtoAlpha =>
--				CHAROUT <= from_YtoAlpha;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0116.MAR: .regfield 2 values same, InlEnd, BP, - default same;
--
alias mb_MAR: 	std_logic_vector(1 downto 0) is mb_uinstruction(23 downto 22);
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
-- L0124.MDR: .regfield 3 values same, from_Bus, zero, CHARIN, ToUpper, -, -, - default same;
--
alias mb_MDR: 	std_logic_vector(2 downto 0) is mb_uinstruction(21 downto 19);
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
-- L0136.InlEnd: .regfield 2 values same, InLine_start, inc, dec default same;
--
alias mb_InlEnd: 	std_logic_vector(1 downto 0) is mb_uinstruction(18 downto 17);
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
-- L0144.BP: .regfield 3 values same, InLine_start, SvPt, inc, save, restore, -, - default same;
--
alias mb_BP: 	std_logic_vector(2 downto 0) is mb_uinstruction(16 downto 14);
constant BP_same: 	std_logic_vector(2 downto 0) := O"0";
constant BP_InLine_start: 	std_logic_vector(2 downto 0) := O"1";
constant BP_SvPt: 	std_logic_vector(2 downto 0) := O"2";
constant BP_inc: 	std_logic_vector(2 downto 0) := O"3";
constant BP_save: 	std_logic_vector(2 downto 0) := O"4";
constant BP_restore: 	std_logic_vector(2 downto 0) := O"5";
-- Value O"6" not allowed (name '-' is not assignable)
-- Value O"7" not allowed (name '-' is not assignable)
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
--			when BP_save =>
--				BP <= save;
--			when BP_restore =>
--				BP <= restore;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0156.SvPt: .regfield 2 values same, InLine_start, BP, - default same;
--
alias mb_SvPt: 	std_logic_vector(1 downto 0) is mb_uinstruction(13 downto 12);
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
-- L0163.ExpStack: .regfield 3 values same, clear, startSwap, endSwap, push_TWord, push_TByte, pop2, pop1 default same;
--
alias mb_ExpStack: 	std_logic_vector(2 downto 0) is mb_uinstruction(11 downto 9);
constant ExpStack_same: 	std_logic_vector(2 downto 0) := O"0";
constant ExpStack_clear: 	std_logic_vector(2 downto 0) := O"1";
constant ExpStack_startSwap: 	std_logic_vector(2 downto 0) := O"2";
constant ExpStack_endSwap: 	std_logic_vector(2 downto 0) := O"3";
constant ExpStack_push_TWord: 	std_logic_vector(2 downto 0) := O"4";
constant ExpStack_push_TByte: 	std_logic_vector(2 downto 0) := O"5";
constant ExpStack_pop2: 	std_logic_vector(2 downto 0) := O"6";
constant ExpStack_pop1: 	std_logic_vector(2 downto 0) := O"7";
---- Start boilerplate code (use with utmost caution!)
-- update_ExpStack: process(clk, mb_ExpStack)
-- begin
--	if (rising_edge(clk)) then
--		case mb_ExpStack is
----			when ExpStack_same =>
----				ExpStack <= ExpStack;
--			when ExpStack_clear =>
--				ExpStack <= (others => '0');
--			when ExpStack_startSwap =>
--				ExpStack <= startSwap;
--			when ExpStack_endSwap =>
--				ExpStack <= endSwap;
--			when ExpStack_push_TWord =>
--				ExpStack <= push_TWord;
--			when ExpStack_push_TByte =>
--				ExpStack <= push_TByte;
--			when ExpStack_pop2 =>
--				ExpStack <= pop2;
--			when ExpStack_pop1 =>
--				ExpStack <= pop1;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0175.gotChar: .valfield 1 values 0, 1 default 0;
--
alias mb_gotChar: 	std_logic is mb_uinstruction(8);
-- Value '0' allowed
-- Value '1' allowed
---- Start boilerplate code (use with utmost caution!)
--  gotChar <= mb_gotChar;
---- End boilerplate code

--
-- L0180.Vars: .regfield 2 values same, getIndex, T, - default same;
--
alias mb_Vars: 	std_logic_vector(1 downto 0) is mb_uinstruction(7 downto 6);
constant Vars_same: 	std_logic_vector(1 downto 0) := "00";
constant Vars_getIndex: 	std_logic_vector(1 downto 0) := "01";
constant Vars_T: 	std_logic_vector(1 downto 0) := "10";
-- Value "11" not allowed (name '-' is not assignable)
---- Start boilerplate code (use with utmost caution!)
-- update_Vars: process(clk, mb_Vars)
-- begin
--	if (rising_edge(clk)) then
--		case mb_Vars is
----			when Vars_same =>
----				Vars <= Vars;
--			when Vars_getIndex =>
--				Vars <= getIndex;
--			when Vars_T =>
--				Vars <= T;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0188.alu: .regfield 4 values nop, reset, R_fromStack, S_fromStack, add, sub, neg, mul, Yx16, bcd_start, bcd_next, div_start, div_shift, div_subset, div_end, Yx10_plus_MDR default nop;
--
alias mb_alu: 	std_logic_vector(3 downto 0) is mb_uinstruction(5 downto 2);
constant alu_nop: 	std_logic_vector(3 downto 0) := X"0";
constant alu_reset: 	std_logic_vector(3 downto 0) := X"1";
constant alu_R_fromStack: 	std_logic_vector(3 downto 0) := X"2";
constant alu_S_fromStack: 	std_logic_vector(3 downto 0) := X"3";
constant alu_add: 	std_logic_vector(3 downto 0) := X"4";
constant alu_sub: 	std_logic_vector(3 downto 0) := X"5";
constant alu_neg: 	std_logic_vector(3 downto 0) := X"6";
constant alu_mul: 	std_logic_vector(3 downto 0) := X"7";
constant alu_Yx16: 	std_logic_vector(3 downto 0) := X"8";
constant alu_bcd_start: 	std_logic_vector(3 downto 0) := X"9";
constant alu_bcd_next: 	std_logic_vector(3 downto 0) := X"A";
constant alu_div_start: 	std_logic_vector(3 downto 0) := X"B";
constant alu_div_shift: 	std_logic_vector(3 downto 0) := X"C";
constant alu_div_subset: 	std_logic_vector(3 downto 0) := X"D";
constant alu_div_end: 	std_logic_vector(3 downto 0) := X"E";
constant alu_Yx10_plus_MDR: 	std_logic_vector(3 downto 0) := X"F";
---- Start boilerplate code (use with utmost caution!)
-- update_alu: process(clk, mb_alu)
-- begin
--	if (rising_edge(clk)) then
--		case mb_alu is
----			when alu_nop =>
----				alu <= alu;
--			when alu_reset =>
--				alu <= reset;
--			when alu_R_fromStack =>
--				alu <= R_fromStack;
--			when alu_S_fromStack =>
--				alu <= S_fromStack;
--			when alu_add =>
--				alu <= add;
--			when alu_sub =>
--				alu <= sub;
--			when alu_neg =>
--				alu <= alu xor (others => '1');
--			when alu_mul =>
--				alu <= mul;
--			when alu_Yx16 =>
--				alu <= Yx16;
--			when alu_bcd_start =>
--				alu <= bcd_start;
--			when alu_bcd_next =>
--				alu <= bcd_next;
--			when alu_div_start =>
--				alu <= div_start;
--			when alu_div_shift =>
--				alu <= div_shift;
--			when alu_div_subset =>
--				alu <= div_subset;
--			when alu_div_end =>
--				alu <= div_end;
--			when alu_Yx10_plus_MDR =>
--				alu <= Yx10_plus_MDR;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0208.dummy: .valfield 2 values * default 0;
--
alias mb_dummy: 	std_logic_vector(1 downto 0) is mb_uinstruction(1 downto 0);
-- Values from "00" to "11" allowed
---- Start boilerplate code (use with utmost caution!)
--  dummy <= mb_dummy;
---- End boilerplate code



constant mb_microcode: mb_code_memory := (

-- nop;
-- L0246@0000 E000003FC000000000._reset:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
0 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- nop;
-- L0248@0001 E000003FC000000000._reset1:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
1 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- nop;
-- L0250@0002 E000003FC000000000._reset2:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
2 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- nop;
-- L0252@0003 E000003FC000000000._reset3:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
3 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- clear;
-- L0256@0004 E000003FC448025204.WarmStart:  DBGINDEX <= zero, IL_PC <= zero, BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, ExpStack <= clear, RetStack <= clear, alu <= reset;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 10, IL_PC <= 001, IL_OP <= 0, RetStack <= 01, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 001, SvPt <= 01, ExpStack <= 001, gotChar = 0, Vars <= 00, alu <= 0001, dummy = 00;
4 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "10" & O"1" & '0' & "01" & O"0" & "00" & O"0" & "01" & O"1" & "01" & O"1" & '0' & "00" & X"1" & "00",

-- WriteCore(BP, zero);
-- L0257@0005 E086C37FC000900000.  WriteCore(BP, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001101 else 100001101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
5 => '1' & '1' & '1' & "00000" & O"415" & O"415" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"2" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 4;
-- L0258@0006 E090C8410200000000.  trace(from_microcode), directByte = 4;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00000100, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
6 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"04" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- trace(crlf);
-- L0260@0007 E090C87FC600000000.fetch:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
7 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 2;
-- L0261@0008 E090C8408200000000.  trace(from_microcode), directByte = 2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00000010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
8 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"02" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- IL_OP <= from_interpreter, IL_PC <= inc;
-- L0262@0009 E000003FC0A0000000.  IL_OP <= from_interpreter, IL_PC <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 1, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
9 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"2" & '1' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- alu <= reset, if IL_PC_VALID then fork else INTERNAL_ERR;
-- L0263@000A E301BC7FC000000004.  alu <= reset, if IL_PC_VALID then fork else INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00011) then 000000011 else 011110001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0001, dummy = 00;
10 => '1' & '1' & '1' & "00011" & O"003" & O"361" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"1" & "00",

-- goto INTERNAL_ERR;
-- L0266@000B FF003C7FC000000000.badop:  if false then next else INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011110001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
11 => '1' & '1' & '1' & "11111" & O"000" & O"361" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0271@000C E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
12 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 15;
-- L0272@000D E090C843C200000000.  trace(from_microcode), directByte = 15;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00001111, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
13 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"0F" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- ExpStack <= startSwap;
-- L0273@000E E000003FC000000400.  ExpStack <= startSwap;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 010, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
14 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"2" & '0' & "00" & X"0" & "00",

-- ExpStack <= endSwap;
-- L0274@000F E000003FC000000600.  ExpStack <= endSwap;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 011, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
15 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"3" & '0' & "00" & X"0" & "00",

-- goto fetch;
-- L0275@0010 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
16 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0278@0011 E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
17 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 15;
-- L0279@0012 E090C843C200000000.  trace(from_microcode), directByte = 15;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00001111, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
18 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"0F" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- goto fetch;
-- L0280@0013 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
19 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0285@0014 E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
20 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 12;
-- L0286@0015 E090C8430200000000.  trace(from_microcode), directByte = 12;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00001100, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
21 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"0C" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- goto fetch;
-- L0287@0016 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
22 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0292@0017 E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
23 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 28;
-- L0293@0018 E090C8470200000000.  trace(from_microcode), directByte = 28;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00011100, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
24 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"1C" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 3, T <= codeByte;
-- L0294@0019 E090C840F200000000.lb_push:  trace(from_microcode), directByte = 3, T <= codeByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00000011, T <= 110, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
25 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"03" & O"6" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- ExpStack <= push_TByte;
-- L0295@001A E000003FC000000A00.  ExpStack <= push_TByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 101, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
26 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"5" & '0' & "00" & X"0" & "00",

-- IL_PC <= inc, if ESTACK_IS_FULL then ESTACK_ERR else fetch;
-- L0296@001B F07981FFC080000000.  IL_PC <= inc, if ESTACK_IS_FULL then ESTACK_ERR else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 011110011 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
27 => '1' & '1' & '1' & "10000" & O"363" & O"007" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0301@001C E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
28 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 29;
-- L0302@001D E090C8474200000000.  trace(from_microcode), directByte = 29;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00011101, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
29 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"1D" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 3, T <= codeByte;
-- L0303@001E E090C840F200000000.  trace(from_microcode), directByte = 3, T <= codeByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00000011, T <= 110, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
30 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"03" & O"6" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- ExpStack <= push_TByte;
-- L0304@001F E000003FC000000A00.  ExpStack <= push_TByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 101, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
31 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"5" & '0' & "00" & X"0" & "00",

-- IL_PC <= inc, if ESTACK_IS_FULL then ESTACK_ERR else lb_push;
-- L0305@0020 F079867FC080000000.  IL_PC <= inc, if ESTACK_IS_FULL then ESTACK_ERR else lb_push;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 011110011 else 000011001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
32 => '1' & '1' & '1' & "10000" & O"363" & O"031" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0310@0021 E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
33 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 38;
-- L0311@0022 E090C8498200000000.  trace(from_microcode), directByte = 38;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00100110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
34 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"26" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- T <= ExpStack, if ESTACK_IS_FULL then ESTACK_ERR;
-- L0312@0023 F079803FE000000000.  T <= ExpStack, if ESTACK_IS_FULL then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 011110011 else 000000000, directByte = 11111111, T <= 100, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
35 => '1' & '1' & '1' & "10000" & O"363" & O"000" & X"FF" & O"4" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- ExpStack <= push_TWord, goto fetch;
-- L0313@0024 FF0001FFC000000800.  ExpStack <= push_TWord, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
36 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0318@0025 E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
37 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 34;
-- L0319@0026 E090C8488200000000.  trace(from_microcode), directByte = 34;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00100010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
38 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"22" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- if ESTACK_IS_EMPTY then ESTACK_ERR;
-- L0320@0027 F179803FC000000000.  if ESTACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 011110011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
39 => '1' & '1' & '1' & "10001" & O"363" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- ExpStack <= pop2, goto fetch;
-- L0321@0028 FF0001FFC000000C00.  ExpStack <= pop2, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
40 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0326@0029 E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
41 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 10;
-- L0327@002A E090C8428200000000.  trace(from_microcode), directByte = 10;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00001010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
42 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"0A" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- if BP_IN_INPLINE then next else ptr_exc;
-- L0328@002B EC000F7FC000000000.  if BP_IN_INPLINE then next else ptr_exc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01100) then 000000000 else 000111101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
43 => '1' & '1' & '1' & "01100" & O"000" & O"075" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- SvPt <= BP;
-- L0329@002C E000003FC000002000.save_bp:  SvPt <= BP;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 10, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
44 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "10" & O"0" & '0' & "00" & X"0" & "00",

-- traceBP;
-- L0330@002D E090C8484200000000.bp_done:  trace(from_microcode), directByte = 33;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00100001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
45 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"21" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- goto fetch;
-- L0331@002E FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
46 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0336@002F E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
47 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 36;
-- L0337@0030 E090C8490200000000.  trace(from_microcode), directByte = 36;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00100100, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
48 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"24" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- Vars <= getIndex, ExpStack <= pop1;
-- L0338@0031 E000003FC000000E40.  Vars <= getIndex, ExpStack <= pop1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 111, gotChar = 0, Vars <= 01, alu <= 0000, dummy = 00;
49 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"7" & '0' & "01" & X"0" & "00",

-- T <= from_vars, if ESTACK_IS_EMPTY then ESTACK_ERR;
-- L0339@0032 F179803FD800000000.  T <= from_vars, if ESTACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 011110011 else 000000000, directByte = 11111111, T <= 011, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
50 => '1' & '1' & '1' & "10001" & O"363" & O"000" & X"FF" & O"3" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- ExpStack <= push_TWord, goto fetch;
-- L0340@0033 FF0001FFC000000800.  ExpStack <= push_TWord, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
51 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0346@0034 E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
52 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 37;
-- L0347@0035 E090C8494200000000.  trace(from_microcode), directByte = 37;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00100101, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
53 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"25" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- T <= ExpStack;
-- L0348@0036 E000003FE000000000.  T <= ExpStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 100, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
54 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"4" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
-- L0349@0037 F179803FC000000C00.  ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 011110011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
55 => '1' & '1' & '1' & "10001" & O"363" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & X"0" & "00",

-- Vars <= getIndex, ExpStack <= pop1;
-- L0350@0038 E000003FC000000E40.  Vars <= getIndex, ExpStack <= pop1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 111, gotChar = 0, Vars <= 01, alu <= 0000, dummy = 00;
56 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"7" & '0' & "01" & X"0" & "00",

-- Vars <= T, if ESTACK_IS_EMPTY then ESTACK_ERR else fetch;
-- L0351@0039 F17981FFC000000080.  Vars <= T, if ESTACK_IS_EMPTY then ESTACK_ERR else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 011110011 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 10, alu <= 0000, dummy = 00;
57 => '1' & '1' & '1' & "10001" & O"363" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "10" & X"0" & "00",

-- traceSDepth;
-- L0356@003A E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
58 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 11;
-- L0357@003B E090C842C200000000.  trace(from_microcode), directByte = 11;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00001011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
59 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"0B" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- if SVP_IN_INPLINE then save_bp;
-- L0358@003C ED16003FC000000000.  if SVP_IN_INPLINE then save_bp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01101) then 000101100 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
60 => '1' & '1' & '1' & "01101" & O"054" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- SvPt <= BP, BP <= SvPt, goto bp_done;
-- L0359@003D FF000B7FC00000A000.ptr_exc:  SvPt <= BP, BP <= SvPt, if false then next else bp_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000101101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 010, SvPt <= 10, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
61 => '1' & '1' & '1' & "11111" & O"000" & O"055" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"2" & "10" & O"0" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0364@003E E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
62 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 25;
-- L0365@003F E090C8464200000000.  trace(from_microcode), directByte = 25;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00011001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
63 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"19" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- alu <= R_fromStack;
-- L0366@0040 E000003FC000000008.  alu <= R_fromStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0010, dummy = 00;
64 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"2" & "00",

-- ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
-- L0367@0041 F179803FC000000C00.  ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 011110011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
65 => '1' & '1' & '1' & "10001" & O"363" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & X"0" & "00",

-- alu <= neg, if ALU_READY then alu_done else repeat;
-- L0368@0042 F523807FC000000018.  alu <= neg, if ALU_READY then alu_done else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 001000111 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0110, dummy = 00;
66 => '1' & '1' & '1' & "10101" & O"107" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"6" & "00",

-- traceSDepth;
-- L0373@0043 E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
67 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 22;
-- L0374@0044 E090C8458200000000.  trace(from_microcode), directByte = 22;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00010110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
68 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"16" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- pullRS();
-- L0375@0045 E07FBFFFC000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011111111 else 011111111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
69 => '1' & '1' & '1' & "00000" & O"377" & O"377" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- alu <= add, if ALU_READY then next else repeat;
-- L0376@0046 F500007FC000000010.  alu <= add, if ALU_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0100, dummy = 00;
70 => '1' & '1' & '1' & "10101" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"4" & "00",

-- traceY;
-- L0377@0047 E090C8480200000000.alu_done:  trace(from_microcode), directByte = 32;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00100000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
71 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"20" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- T <= from_alu, if ALU_OVERFLOW then OVERFLOW_ERR;
-- L0378@0048 F676803FE800000000.  T <= from_alu, if ALU_OVERFLOW then OVERFLOW_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 011101101 else 000000000, directByte = 11111111, T <= 101, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
72 => '1' & '1' & '1' & "10110" & O"355" & O"000" & X"FF" & O"5" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- ExpStack <= push_TWord, goto fetch;
-- L0379@0049 FF0001FFC000000800.  ExpStack <= push_TWord, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
73 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0384@004A E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
74 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 23;
-- L0385@004B E090C845C200000000.  trace(from_microcode), directByte = 23;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00010111, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
75 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"17" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- pullRS();
-- L0386@004C E07FBFFFC000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011111111 else 011111111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
76 => '1' & '1' & '1' & "00000" & O"377" & O"377" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- alu <= sub, if ALU_READY then alu_done else repeat;
-- L0387@004D F523807FC000000014.  alu <= sub, if ALU_READY then alu_done else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 001000111 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0101, dummy = 00;
77 => '1' & '1' & '1' & "10101" & O"107" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"5" & "00",

-- traceSDepth;
-- L0392@004E E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
78 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 24;
-- L0393@004F E090C8460200000000.  trace(from_microcode), directByte = 24;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00011000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
79 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"18" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- pullRS();
-- L0394@0050 E07FBFFFC000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011111111 else 011111111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
80 => '1' & '1' & '1' & "00000" & O"377" & O"377" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- alu <= mul, if ALU_READY then alu_done else repeat;
-- L0395@0051 F523807FC00000001C.  alu <= mul, if ALU_READY then alu_done else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 001000111 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0111, dummy = 00;
81 => '1' & '1' & '1' & "10101" & O"107" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"7" & "00",

-- traceSDepth;
-- L0400@0052 E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
82 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 35;
-- L0401@0053 E090C848C200000000.  trace(from_microcode), directByte = 35;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00100011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
83 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"23" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- pullRS();
-- L0402@0054 E07FBFFFC000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011111111 else 011111111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
84 => '1' & '1' & '1' & "00000" & O"377" & O"377" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
-- L0403@0055 F875803FC00000002C.  alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11000) then 011101011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 1011, dummy = 00;
85 => '1' & '1' & '1' & "11000" & O"353" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"B" & "00",

-- trace(CRLF);
-- L0404@0056 E090C87FC600000000.div_loop:  trace(CRLF);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
86 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceBP;
-- L0405@0057 E090C8484200000000.  trace(from_microcode), directByte = 33;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00100001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
87 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"21" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceY;
-- L0406@0058 E090C8480200000000.  trace(from_microcode), directByte = 32;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00100000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
88 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"20" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- alu <= div_shift;
-- L0407@0059 E000003FC000000030.  alu <= div_shift;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 1100, dummy = 00;
89 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"C" & "00",

-- if ALU_READY then div_done;
-- L0408@005A F52F803FC000000000.  if ALU_READY then div_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 001011111 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
90 => '1' & '1' & '1' & "10101" & O"137" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- trace(CRLF);
-- L0409@005B E090C87FC600000000.  trace(CRLF);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
91 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceBP;
-- L0410@005C E090C8484200000000.  trace(from_microcode), directByte = 33;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00100001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
92 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"21" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceY;
-- L0411@005D E090C8480200000000.  trace(from_microcode), directByte = 32;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00100000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
93 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"20" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- alu <= div_subset, goto div_loop;
-- L0412@005E FF0015BFC000000034.  alu <= div_subset, if false then next else div_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001010110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 1101, dummy = 00;
94 => '1' & '1' & '1' & "11111" & O"000" & O"126" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"D" & "00",

-- alu <= div_end, goto alu_done;
-- L0413@005F FF0011FFC000000038.div_done:  alu <= div_end, if false then next else alu_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 1110, dummy = 00;
95 => '1' & '1' & '1' & "11111" & O"000" & O"107" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"E" & "00",

-- traceSDepth;
-- L0418@0060 E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
96 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 26;
-- L0419@0061 E090C8468200000000.  trace(from_microcode), directByte = 26;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00011010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
97 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"1A" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- alu <= R_fromStack;
-- L0420@0062 E000003FC000000008.  alu <= R_fromStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0010, dummy = 00;
98 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"2" & "00",

-- alu <= bcd_start, ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
-- L0421@0063 F179803FC000000C24.  alu <= bcd_start, ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 011110011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 1001, dummy = 00;
99 => '1' & '1' & '1' & "10001" & O"363" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & X"9" & "00",

-- alu <= bcd_next, if ALU_READY then next else repeat;
-- L0422@0064 F500007FC000000028.  alu <= bcd_next, if ALU_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 1010, dummy = 00;
100 => '1' & '1' & '1' & "10101" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"A" & "00",

-- traceY;
-- L0423@0065 E090C8480200000000.  trace(from_microcode), directByte = 32;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00100000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
101 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"20" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- if ALU_SIGN then next else pn_5;
-- L0424@0066 F7001A3FC000000000.  if ALU_SIGN then next else pn_5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10111) then 000000000 else 001101000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
102 => '1' & '1' & '1' & "10111" & O"000" & O"150" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = '-', outChar(from_microcode);
-- L0425@0067 E085428B4002000000.  directByte = '-', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001010 else 100001010, directByte = 00101101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
103 => '1' & '1' & '1' & "00000" & O"412" & O"412" & X"2D" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- if LEADING_ZERO then pn_4;
-- L0426@0068 FB35003FC000000000.pn_5:  if LEADING_ZERO then pn_4;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 001101010 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
104 => '1' & '1' & '1' & "11011" & O"152" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- outChar(from_YtoAlpha);
-- L0427@0069 E08542BFC005000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001010 else 100001010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
105 => '1' & '1' & '1' & "00000" & O"412" & O"412" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- alu <= Yx16;
-- L0428@006A E000003FC000000020.pn_4:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 1000, dummy = 00;
106 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"8" & "00",

-- if LEADING_ZERO then pn_3;
-- L0429@006B FB36803FC000000000.  if LEADING_ZERO then pn_3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 001101101 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
107 => '1' & '1' & '1' & "11011" & O"155" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- outChar(from_YtoAlpha);
-- L0430@006C E08542BFC005000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001010 else 100001010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
108 => '1' & '1' & '1' & "00000" & O"412" & O"412" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- alu <= Yx16;
-- L0431@006D E000003FC000000020.pn_3:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 1000, dummy = 00;
109 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"8" & "00",

-- if LEADING_ZERO then pn_2;
-- L0432@006E FB38003FC000000000.  if LEADING_ZERO then pn_2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 001110000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
110 => '1' & '1' & '1' & "11011" & O"160" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- outChar(from_YtoAlpha);
-- L0433@006F E08542BFC005000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001010 else 100001010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
111 => '1' & '1' & '1' & "00000" & O"412" & O"412" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- alu <= Yx16;
-- L0434@0070 E000003FC000000020.pn_2:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 1000, dummy = 00;
112 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"8" & "00",

-- if LEADING_ZERO then pn_1;
-- L0435@0071 FB39803FC000000000.  if LEADING_ZERO then pn_1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 001110011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
113 => '1' & '1' & '1' & "11011" & O"163" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- outChar(from_YtoAlpha);
-- L0436@0072 E08542BFC005000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001010 else 100001010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
114 => '1' & '1' & '1' & "00000" & O"412" & O"412" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- alu <= Yx16;
-- L0437@0073 E000003FC000000020.pn_1:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 1000, dummy = 00;
115 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"8" & "00",

-- if LEADING_ZERO then pn_0;
-- L0438@0074 FB3B003FC000000000.  if LEADING_ZERO then pn_0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 001110110 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
116 => '1' & '1' & '1' & "11011" & O"166" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- outChar(from_YtoAlpha);
-- L0439@0075 E08542BFC005000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001010 else 100001010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
117 => '1' & '1' & '1' & "00000" & O"412" & O"412" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- alu <= Yx16;
-- L0440@0076 E000003FC000000020.pn_0:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 1000, dummy = 00;
118 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"8" & "00",

-- outChar(from_YtoAlpha);
-- L0441@0077 E08542BFC005000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001010 else 100001010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
119 => '1' & '1' & '1' & "00000" & O"412" & O"412" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- goto fetch;
-- L0442@0078 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
120 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0447@0079 E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
121 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 18;
-- L0448@007A E090C8448200000000.  trace(from_microcode), directByte = 18;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00010010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
122 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"12" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- BP <= inc, ReadCore(BP);
-- L0449@007B E087C3FFC00080C000.pq_loop:  BP <= inc, ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001111 else 100001111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
123 => '1' & '1' & '1' & "00000" & O"417" & O"417" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = '"', if MDR_EQU_DB then pq_done;
-- L0450@007C E54000088000000000.  directByte = '"', if MDR_EQU_DB then pq_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 010000000 else 000000000, directByte = 00100010, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
124 => '1' & '1' & '1' & "00101" & O"200" & O"000" & X"22" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- outChar(from_MDR);
-- L0451@007D E08542BFC004000000.  outChar(from_MDR);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001010 else 100001010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 100, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
125 => '1' & '1' & '1' & "00000" & O"412" & O"412" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"4" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 3;
-- L0452@007E E090C840C200000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
126 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = CR, if MDR_EQU_DB then STRING_ERR else pq_loop;
-- L0453@007F E5779EC34000000000.  directByte = 0x0D, if MDR_EQU_DB then STRING_ERR else pq_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 011101111 else 001111011, directByte = 00001101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
127 => '1' & '1' & '1' & "00101" & O"357" & O"173" & X"0D" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceBP;
-- L0454@0080 E090C8484200000000.pq_done:  trace(from_microcode), directByte = 33;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00100001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
128 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"21" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- goto fetch;
-- L0455@0081 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
129 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0460@0082 E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
130 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 27;
-- L0461@0083 E090C846C200000000.  trace(from_microcode), directByte = 27;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00011011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
131 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"1B" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- if AT_TAB then fetch;
-- L0462@0084 F903803FC000000000.pt_loop:  if AT_TAB then fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11001) then 000000111 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
132 => '1' & '1' & '1' & "11001" & O"007" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = ' ', outChar(from_microcode);
-- L0463@0085 E08542880002000000.  directByte = ' ', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001010 else 100001010, directByte = 00100000, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
133 => '1' & '1' & '1' & "00000" & O"412" & O"412" & X"20" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- goto pt_loop;
-- L0464@0086 FF00213FC000000000.  if false then next else pt_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010000100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
134 => '1' & '1' & '1' & "11111" & O"000" & O"204" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0469@0087 E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
135 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 6;
-- L0470@0088 E090C8418200000000.  trace(from_microcode), directByte = 6;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00000110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
136 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"06" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- outCRLF();
-- L0471@0089 E083C1FFC000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100000111 else 100000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
137 => '1' & '1' & '1' & "00000" & O"407" & O"407" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- goto fetch;
-- L0472@008A FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
138 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0477@008B E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
139 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 5;
-- L0478@008C E090C8414200000000.  trace(from_microcode), directByte = 5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00000101, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
140 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"05" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- outChar(from_interpreter);
-- L0479@008D E08542BFC001000000.pc_loop:  outChar(from_interpreter);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001010 else 100001010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 001, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
141 => '1' & '1' & '1' & "00000" & O"412" & O"412" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"1" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 3;
-- L0480@008E E090C840C200000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
142 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- if ILCODEBYTE_BIT7 then pc_exit;
-- L0481@008F E148803FC000000000.  if ILCODEBYTE_BIT7 then pc_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00001) then 010010001 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
143 => '1' & '1' & '1' & "00001" & O"221" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- IL_PC <= inc, goto pc_loop;
-- L0482@0090 FF00237FC080000000.  IL_PC <= inc, if false then next else pc_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010001101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
144 => '1' & '1' & '1' & "11111" & O"000" & O"215" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- IL_PC <= inc, goto fetch;
-- L0483@0091 FF0001FFC080000000.pc_exit:  IL_PC <= inc, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
145 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0488@0092 E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
146 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 19;
-- L0489@0093 E090C844C200000000.  trace(from_microcode), directByte = 19;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00010011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
147 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"13" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- if RSTACK_IS_EMPTY then RSTACK_ERR;
-- L0490@0094 F47A803FC000000000.  if RSTACK_IS_EMPTY then RSTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 011110101 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
148 => '1' & '1' & '1' & "10100" & O"365" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- IL_PC <= RetStack, RetStack <= pop, goto fetch;
-- L0491@0095 FF0001FFC1D0000000.  IL_PC <= RetStack, RetStack <= pop, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 111, IL_OP <= 0, RetStack <= 10, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
149 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"7" & '0' & "10" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0496@0096 E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
150 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 20;
-- L0497@0097 E090C8450200000000.  trace(from_microcode), directByte = 20;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00010100, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
151 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"14" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 3;
-- L0498@0098 E090C840C200000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
152 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- if RSTACK_IS_FULL then RSTACK_ERR;
-- L0499@0099 F37A803FC000000000.  if RSTACK_IS_FULL then RSTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 011110101 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
153 => '1' & '1' & '1' & "10011" & O"365" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- RetStack <= push_IL_PC_PLUS_1, goto jump;
-- L0500@009A FF0027BFC018000000.  RetStack <= push_IL_PC_PLUS_1, if false then next else jump;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010011110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 11, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
154 => '1' & '1' & '1' & "11111" & O"000" & O"236" & X"FF" & O"0" & "00" & O"0" & '0' & "11" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0505@009B E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
155 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 21;
-- L0506@009C E090C8454200000000.  trace(from_microcode), directByte = 21;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00010101, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
156 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"15" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 3;
-- L0507@009D E090C840C200000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
157 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- IL_PC <= direct11, goto fetch;
-- L0508@009E FF0001FFC180000000.jump:  IL_PC <= direct11, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 110, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
158 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"6" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0513@009F E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
159 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 8;
-- L0514@00A0 E090C8420200000000.  trace(from_microcode), directByte = 8;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00001000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
160 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"08" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- InlEnd <= InLine_start;
-- L0515@00A1 E000003FC000020000.gl:  InlEnd <= InLine_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
161 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "01" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- if CHARIN_READY then next else repeat;
-- L0516@00A2 EB00007FC000000000.gl_loop:  if CHARIN_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01011) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
162 => '1' & '1' & '1' & "01011" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- if CHARIN_PRINTABLE then gl_print;
-- L0517@00A3 E954803FC000000000.  if CHARIN_PRINTABLE then gl_print;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01001) then 010101001 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
163 => '1' & '1' & '1' & "01001" & O"251" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = CR, if CHARIN_EQU_DB then gl_cr;
-- L0518@00A4 EA5A80034000000000.  directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 010110101 else 000000000, directByte = 00001101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
164 => '1' & '1' & '1' & "01010" & O"265" & O"000" & X"0D" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = BACKSPACE, if CHARIN_EQU_DB then gl_bs;
-- L0519@00A5 EA5900020000000000.  directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 010110010 else 000000000, directByte = 00001000, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
165 => '1' & '1' & '1' & "01010" & O"262" & O"000" & X"08" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = ESC, if CHARIN_EQU_DB then gl_esc;
-- L0520@00A6 EA578006C000000000.  directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 010101111 else 000000000, directByte = 00011011, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
166 => '1' & '1' & '1' & "01010" & O"257" & O"000" & X"1B" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = BEEP, outChar(from_microcode);
-- L0523@00A7 E0854281C002000000.gl_ignore:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001010 else 100001010, directByte = 00000111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
167 => '1' & '1' & '1' & "00000" & O"412" & O"412" & X"07" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- gotChar = 1, goto gl_loop;
-- L0524@00A8 FF0028BFC000000100.  gotChar = 1, if false then next else gl_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010100010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 0000, dummy = 00;
168 => '1' & '1' & '1' & "11111" & O"000" & O"242" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & X"0" & "00",

-- if INLEND_MAX then gl_ignore;
-- L0526@00A9 E753803FC000000000.gl_print:  if INLEND_MAX then gl_ignore;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00111) then 010100111 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
169 => '1' & '1' & '1' & "00111" & O"247" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- outChar(from_charin);
-- L0527@00AA E08542BFC003000000.  outChar(from_charin);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001010 else 100001010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 011, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
170 => '1' & '1' & '1' & "00000" & O"412" & O"412" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"3" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- WriteCore(InlEnd, CHARIN);
-- L0528@00AB E086C37FC000580000.  WriteCore(InlEnd, CHARIN);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001101 else 100001101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
171 => '1' & '1' & '1' & "00000" & O"415" & O"415" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"3" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- InlEnd <= inc;
-- L0529@00AC E000003FC000040000.  InlEnd <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
172 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "10" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- WriteCore(InlEnd, zero);
-- L0530@00AD E086C37FC000500000.gl_write0:  WriteCore(InlEnd, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001101 else 100001101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
173 => '1' & '1' & '1' & "00000" & O"415" & O"415" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"2" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- gotChar = 1, goto gl_loop;
-- L0531@00AE FF0028BFC000000100.  gotChar = 1, if false then next else gl_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010100010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 0000, dummy = 00;
174 => '1' & '1' & '1' & "11111" & O"000" & O"242" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & X"0" & "00",

-- directByte = BEEP, outChar(from_microcode);
-- L0533@00AF E0854281C002000000.gl_esc:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001010 else 100001010, directByte = 00000111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
175 => '1' & '1' & '1' & "00000" & O"412" & O"412" & X"07" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- outCRLF();
-- L0534@00B0 E083C1FFC000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100000111 else 100000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
176 => '1' & '1' & '1' & "00000" & O"407" & O"407" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- gotChar = 1, goto gl;
-- L0535@00B1 FF00287FC000000100.  gotChar = 1, if false then next else gl;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010100001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 0000, dummy = 00;
177 => '1' & '1' & '1' & "11111" & O"000" & O"241" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & X"0" & "00",

-- if INLEND_MIN then gl_ignore;
-- L0537@00B2 E853803FC000000000.gl_bs:  if INLEND_MIN then gl_ignore;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01000) then 010100111 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
178 => '1' & '1' & '1' & "01000" & O"247" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = BACKSPACE, outChar(from_microcode);
-- L0538@00B3 E08542820002000000.  directByte = 0x08, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001010 else 100001010, directByte = 00001000, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
179 => '1' & '1' & '1' & "00000" & O"412" & O"412" & X"08" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- InlEnd <= dec, goto gl_write0;
-- L0539@00B4 FF002B7FC000060000.  InlEnd <= dec, if false then next else gl_write0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010101101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 11, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
180 => '1' & '1' & '1' & "11111" & O"000" & O"255" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "11" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- WriteCore(InlEnd, CHARIN);
-- L0541@00B5 E086C37FC000580000.gl_cr:  WriteCore(InlEnd, CHARIN);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001101 else 100001101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
181 => '1' & '1' & '1' & "00000" & O"415" & O"415" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"3" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- InlEnd <= inc;
-- L0542@00B6 E000003FC000040000.  InlEnd <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
182 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "10" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- WriteCore(InlEnd, zero);
-- L0543@00B7 E086C37FC000500000.  WriteCore(InlEnd, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001101 else 100001101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
183 => '1' & '1' & '1' & "00000" & O"415" & O"415" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"2" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- dump_input();
-- L0544@00B8 E088C47FC000000000.  dump_input();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100010001 else 100010001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
184 => '1' & '1' & '1' & "00000" & O"421" & O"421" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- outCRLF();
-- L0545@00B9 E083C1FFC000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100000111 else 100000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
185 => '1' & '1' & '1' & "00000" & O"407" & O"407" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- gotChar = 1, BP <= Inline_start, goto fetch;
-- L0546@00BA FF0001FFC000004100.  gotChar = 1, BP <= Inline_start, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 001, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 0000, dummy = 00;
186 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"1" & "00" & O"0" & '1' & "00" & X"0" & "00",

-- traceSDepth;
-- L0551@00BB E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
187 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 7;
-- L0552@00BC E090C841C200000000.  trace(from_microcode), directByte = 7;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00000111, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
188 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"07" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- IL_PC <= pc_plus_off6;
-- L0553@00BD E000003FC100000000.  IL_PC <= pc_plus_off6;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 100, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
189 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"4" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceGoto;
-- L0554@00BE E090C8478200000000.br_exit:  trace(from_microcode), directByte = 30;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00011110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
190 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"1E" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- goto fetch;
-- L0555@00BF FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
191 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0560@00C0 E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
192 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 7;
-- L0561@00C1 E090C841C200000000.  trace(from_microcode), directByte = 7;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00000111, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
193 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"07" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- goto badop;
-- L0562@00C2 FF0002FFC000000000.  if false then next else badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
194 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0567@00C3 E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
195 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 17;
-- L0568@00C4 E090C8444200000000.  trace(from_microcode), directByte = 17;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00010001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
196 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"11" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- T <= IL_PC, BP <= save, skipSpaces();
-- L0569@00C5 E081C0FFC800010000.  T <= IL_PC, BP <= save, skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100000011 else 100000011, directByte = 11111111, T <= 001, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 100, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
197 => '1' & '1' & '1' & "00000" & O"403" & O"403" & X"FF" & O"1" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"4" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 3;
-- L0570@00C6 E090C840C200000000.bc_loop:  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
198 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- ReadCore(BP);
-- L0571@00C7 E087C3FFC000800000.  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001111 else 100001111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
199 => '1' & '1' & '1' & "00000" & O"417" & O"417" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
-- L0572@00C8 F20033BFC000000000.  if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10010) then 000000000 else 011001110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
200 => '1' & '1' & '1' & "10010" & O"000" & O"316" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- if ILCODEBYTE_BIT7 then bc_match;
-- L0573@00C9 E165803FC000000000.  if ILCODEBYTE_BIT7 then bc_match;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00001) then 011001011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
201 => '1' & '1' & '1' & "00001" & O"313" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- BP <= inc, IL_PC <= inc, goto bc_loop;
-- L0574@00CA FF0031BFC08000C000.  BP <= inc, IL_PC <= inc, if false then next else bc_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011000110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
202 => '1' & '1' & '1' & "11111" & O"000" & O"306" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- BP <= inc, IL_PC <= inc;
-- L0575@00CB E000003FC08000C000.bc_match:  BP <= inc, IL_PC <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
203 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceBP;
-- L0576@00CC E090C8484200000000.  trace(from_microcode), directByte = 33;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00100001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
204 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"21" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- goto fetch;
-- L0577@00CD FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
205 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- BP <= restore, IL_PC <= T;
-- L0578@00CE E000003FC0C0014000.bc_exit:  BP <= restore, IL_PC <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 011, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 101, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
206 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"3" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"5" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceBP;
-- L0579@00CF E090C8484200000000.  trace(from_microcode), directByte = 33;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00100001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
207 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"21" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- IL_PC <= pc_plus_off5, goto br_exit;
-- L0580@00D0 FF002FBFC140000000.  IL_PC <= pc_plus_off5, if false then next else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010111110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
208 => '1' & '1' & '1' & "11111" & O"000" & O"276" & X"FF" & O"0" & "00" & O"5" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0585@00D1 E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
209 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 16;
-- L0586@00D2 E090C8440200000000.  trace(from_microcode), directByte = 16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00010000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
210 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"10" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- skipSpaces();
-- L0587@00D3 E081C0FFC000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100000011 else 100000011, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
211 => '1' & '1' & '1' & "00000" & O"403" & O"403" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
-- L0588@00D4 EF6B003FC000200000.  MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01111) then 011010110 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 100, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
212 => '1' & '1' & '1' & "01111" & O"326" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"4" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop else br_exit;
-- L0589@00D5 FA05AFBFC140000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11010) then 000001011 else 010111110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
213 => '1' & '1' & '1' & "11010" & O"013" & O"276" & X"FF" & O"0" & "00" & O"5" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- T <= MDRx2, if ESTACK_IS_FULL then ESTACK_ERR;
-- L0590@00D6 F079803FF800000000.bv_exec:  T <= MDRx2, if ESTACK_IS_FULL then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 011110011 else 000000000, directByte = 11111111, T <= 111, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
214 => '1' & '1' & '1' & "10000" & O"363" & O"000" & X"FF" & O"7" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- ExpStack <= push_TByte, goto fetch;
-- L0591@00D7 FF0001FFC000000A00.  ExpStack <= push_TByte, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 101, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
215 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"5" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0596@00D8 E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
216 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 14;
-- L0597@00D9 E090C8438200000000.  trace(from_microcode), directByte = 14;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00001110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
217 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"0E" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- skipSpaces();
-- L0598@00DA E081C0FFC000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100000011 else 100000011, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
218 => '1' & '1' & '1' & "00000" & O"403" & O"403" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- alu <= reset, if MDR_IS_NUM then bn_loop;
-- L0599@00DB EE70003FC000000004.  alu <= reset, if MDR_IS_NUM then bn_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01110) then 011100000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0001, dummy = 00;
219 => '1' & '1' & '1' & "01110" & O"340" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"1" & "00",

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
-- L0600@00DC FA05803FC140000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11010) then 000001011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
220 => '1' & '1' & '1' & "11010" & O"013" & O"000" & X"FF" & O"0" & "00" & O"5" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceY;
-- L0601@00DD E090C8480200000000.bn_exit:  trace(from_microcode), directByte = 32;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00100000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
221 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"20" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceGoto;
-- L0602@00DE E090C8478200000000.  trace(from_microcode), directByte = 30;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00011110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
222 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"1E" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- goto fetch;
-- L0603@00DF FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
223 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- alu <= Yx10_plus_MDR, BP <= inc;
-- L0604@00E0 E000003FC00000C03C.bn_loop:  alu <= Yx10_plus_MDR, BP <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 1111, dummy = 00;
224 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & X"F" & "00",

-- if ALU_OVERFLOW then OVERFLOW_ERR;
-- L0605@00E1 F676803FC000000000.  if ALU_OVERFLOW then OVERFLOW_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 011101101 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
225 => '1' & '1' & '1' & "10110" & O"355" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- ReadCore(BP);
-- L0606@00E2 E087C3FFC000800000.  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001111 else 100001111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
226 => '1' & '1' & '1' & "00000" & O"417" & O"417" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- if MDR_IS_NUM then bn_loop;
-- L0607@00E3 EE70003FC000000000.  if MDR_IS_NUM then bn_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01110) then 011100000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
227 => '1' & '1' & '1' & "01110" & O"340" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- T <= from_alu, if ESTACK_IS_FULL then ESTACK_ERR;
-- L0608@00E4 F079803FE800000000.  T <= from_alu, if ESTACK_IS_FULL then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 011110011 else 000000000, directByte = 11111111, T <= 101, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
228 => '1' & '1' & '1' & "10000" & O"363" & O"000" & X"FF" & O"5" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- ExpStack <= push_TWord, goto bn_exit;
-- L0609@00E5 FF00377FC000000800.  ExpStack <= push_TWord, if false then next else bn_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011011101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
229 => '1' & '1' & '1' & "11111" & O"000" & O"335" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & X"0" & "00",

-- traceSDepth;
-- L0614@00E6 E090C84E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
230 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 13;
-- L0615@00E7 E090C8434200000000.  trace(from_microcode), directByte = 13;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00001101, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
231 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"0D" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- skipSpaces();
-- L0616@00E8 E081C0FFC000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100000011 else 100000011, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
232 => '1' & '1' & '1' & "00000" & O"403" & O"403" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = CR, if MDR_EQU_DB then fetch;
-- L0617@00E9 E50380034000000000.  directByte = 0x0D, if MDR_EQU_DB then fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 000000111 else 000000000, directByte = 00001101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
233 => '1' & '1' & '1' & "00101" & O"007" & O"000" & X"0D" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop else br_exit;
-- L0618@00EA FA05AFBFC140000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11010) then 000001011 else 010111110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
234 => '1' & '1' & '1' & "11010" & O"013" & O"276" & X"FF" & O"0" & "00" & O"5" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 57;
-- L0620@00EB E090C84E4200000000.DIVBY0_ERR:  trace(from_microcode), directByte = 57;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
235 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"39" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- goto traceError;
-- L0621@00EC FF003DBFC000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011110110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
236 => '1' & '1' & '1' & "11111" & O"000" & O"366" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 58;
-- L0622@00ED E090C84E8200000000.OVERFLOW_ERR:  trace(from_microcode), directByte = 58;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
237 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"3A" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- goto traceError;
-- L0623@00EE FF003DBFC000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011110110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
238 => '1' & '1' & '1' & "11111" & O"000" & O"366" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 61;
-- L0624@00EF E090C84F4200000000.STRING_ERR:  trace(from_microcode), directByte = 61;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111101, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
239 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"3D" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- goto traceError;
-- L0625@00F0 FF003DBFC000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011110110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
240 => '1' & '1' & '1' & "11111" & O"000" & O"366" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 62;
-- L0626@00F1 E090C84F8200000000.INTERNAL_ERR:  trace(from_microcode), directByte = 62;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
241 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"3E" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- goto traceError;
-- L0627@00F2 FF003DBFC000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011110110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
242 => '1' & '1' & '1' & "11111" & O"000" & O"366" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 60;
-- L0628@00F3 E090C84F0200000000.ESTACK_ERR:  trace(from_microcode), directByte = 60;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111100, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
243 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"3C" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- goto traceError;
-- L0629@00F4 FF003DBFC000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011110110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
244 => '1' & '1' & '1' & "11111" & O"000" & O"366" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- traceString 59;
-- L0630@00F5 E090C84EC200000000.RSTACK_ERR:  trace(from_microcode), directByte = 59;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00111011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
245 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"3B" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- outCRLF();
-- L0631@00F6 E083C1FFC000000000.traceError:  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100000111 else 100000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
246 => '1' & '1' & '1' & "00000" & O"407" & O"407" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- trace(crlf);
-- L0632@00F7 E090C87FC600000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
247 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = BEEP, outChar(from_microcode);
-- L0633@00F8 E0854281C002000000.  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001010 else 100001010, directByte = 00000111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
248 => '1' & '1' & '1' & "00000" & O"412" & O"412" & X"07" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = 'E', outChar(from_microcode);
-- L0634@00F9 E08542914002000000.  directByte = 'E', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001010 else 100001010, directByte = 01000101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
249 => '1' & '1' & '1' & "00000" & O"412" & O"412" & X"45" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = 'R', outChar(from_microcode);
-- L0635@00FA E08542948002000000.  directByte = 'R', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001010 else 100001010, directByte = 01010010, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
250 => '1' & '1' & '1' & "00000" & O"412" & O"412" & X"52" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = 'R', outChar(from_microcode);
-- L0636@00FB E08542948002000000.  directByte = 'R', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001010 else 100001010, directByte = 01010010, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
251 => '1' & '1' & '1' & "00000" & O"412" & O"412" & X"52" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- outCRLF();
-- L0639@00FC E083C1FFC000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100000111 else 100000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
252 => '1' & '1' & '1' & "00000" & O"407" & O"407" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- trace(crlf);
-- L0640@00FD E090C87FC600000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
253 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- goto WarmStart;
-- L0641@00FE FF00013FC000000000.  if false then next else WarmStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
254 => '1' & '1' & '1' & "11111" & O"000" & O"004" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- alu <= R_fromStack;
-- L0643@00FF E000003FC000000008.pullRS:  alu <= R_fromStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0010, dummy = 00;
255 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"2" & "00",

-- ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
-- L0644@0100 F179803FC000000C00.  ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 011110011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
256 => '1' & '1' & '1' & "10001" & O"363" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & X"0" & "00",

-- alu <= S_fromStack;
-- L0645@0101 E000003FC00000000C.  alu <= S_fromStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0011, dummy = 00;
257 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"3" & "00",

-- ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR else return;
-- L0646@0102 F17980BFC000000C00.  ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 011110011 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
258 => '1' & '1' & '1' & "10001" & O"363" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & X"0" & "00",

-- ReadCore(BP);
-- L0648@0103 E087C3FFC000800000.skipSpaces:  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001111 else 100001111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
259 => '1' & '1' & '1' & "00000" & O"417" & O"417" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = ' ', if MDR_EQU_DB then skipSp;
-- L0649@0104 E58300080000000000.  directByte = ' ', if MDR_EQU_DB then skipSp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 100000110 else 000000000, directByte = 00100000, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
260 => '1' & '1' & '1' & "00101" & O"406" & O"000" & X"20" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = TAB, if MDR_EQU_DB then skipSp else return;
-- L0650@0105 E58300824000000000.  directByte = 0x09, if MDR_EQU_DB then skipSp else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 100000110 else 000000010, directByte = 00001001, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
261 => '1' & '1' & '1' & "00101" & O"406" & O"002" & X"09" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- BP <= inc, goto  skipSpaces;
-- L0651@0106 FF0040FFC00000C000.skipSp:  BP <= inc, if false then next else  skipSpaces;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100000011, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
262 => '1' & '1' & '1' & "11111" & O"000" & O"403" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = CR, outChar(from_microcode);
-- L0653@0107 E08542834002000000.outCRLF:  directByte = 0x0D, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001010 else 100001010, directByte = 00001101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
263 => '1' & '1' & '1' & "00000" & O"412" & O"412" & X"0D" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = LF, outChar(from_microcode);
-- L0654@0108 E08542828002000000.  directByte = 0x0A, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001010 else 100001010, directByte = 00001010, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
264 => '1' & '1' & '1' & "00000" & O"412" & O"412" & X"0A" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- back;
-- L0655@0109 E00100BFC000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
265 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- if CHAROUT_READY then next else repeat;
-- L0657@010A E200007FC000000000.outChar:  if CHAROUT_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00010) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
266 => '1' & '1' & '1' & "00010" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- if CHAROUT_READY then next else repeat;
-- L0658@010B E200007FC000000000.  if CHAROUT_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00010) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
267 => '1' & '1' & '1' & "00010" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- back;
-- L0659@010C E00100BFC000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
268 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- nBUSREQ = 0, if nBUSACK then repeat else next;
-- L0661@010D 6600803FC000000000.WriteCore:  nBUSREQ = 0, if nBUSACK then repeat else next;
--  nBUSREQ = 0, nWR = 1, nRD = 1, if (00110) then 000000001 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
269 => '0' & '1' & '1' & "00110" & O"001" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- nBUSREQ = 0, nWR = 0, back;
-- L0662@010E 200100BFC000000000.  nBUSREQ = 0, nWR = 0, if true then return else return;
--  nBUSREQ = 0, nWR = 0, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
270 => '0' & '0' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- nBUSREQ = 0, if nBUSACK then repeat else next;
-- L0664@010F 6600803FC000000000.ReadCore:  nBUSREQ = 0, if nBUSACK then repeat else next;
--  nBUSREQ = 0, nWR = 1, nRD = 1, if (00110) then 000000001 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
271 => '0' & '1' & '1' & "00110" & O"001" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- nBUSREQ = 0, nRD = 0, MDR <= from_Bus, back;
-- L0665@0110 400100BFC000080000.  nBUSREQ = 0, nRD = 0, MDR <= from_Bus, if true then return else return;
--  nBUSREQ = 0, nWR = 1, nRD = 0, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 001, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
272 => '0' & '1' & '0' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"1" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- InlEnd <= InLine_start, trace(crlf);
-- L0669@0111 E090C87FC600020000.dump_input:  InlEnd <= InLine_start, trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
273 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "01" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- ReadCore(InlEnd);
-- L0670@0112 E087C3FFC000400000.dump_inlp:  ReadCore(InlEnd);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001111 else 100001111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
274 => '1' & '1' & '1' & "00000" & O"417" & O"417" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = 9, trace(from_microcode);
-- L0671@0113 E090C8424200000000.  directByte = 9, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00001001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
275 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"09" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = NULL, if MDR_EQU_DB then dump_inex;
-- L0672@0114 E58B00000000000000.  directByte = 0x00, if MDR_EQU_DB then dump_inex;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 100010110 else 000000000, directByte = 00000000, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
276 => '1' & '1' & '1' & "00101" & O"426" & O"000" & X"00" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- InlEnd <= inc, goto dump_inlp;
-- L0673@0115 FF0044BFC000040000.  InlEnd <= inc, if false then next else dump_inlp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100010010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
277 => '1' & '1' & '1' & "11111" & O"000" & O"422" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "10" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- trace(crlf);
-- L0674@0116 E090C87FC600000000.dump_inex:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
278 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- back;
-- L0675@0117 E00100BFC000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
279 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = 1, trace(from_microcode);
-- L0677@0118 E090C8404200000000.dump_il:  directByte = 1, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00000001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
280 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"01" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- trace(crlf);
-- L0678@0119 E090C87FC600000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
281 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- T <= IL_PC, IL_PC <= zero;
-- L0679@011A E000003FC840000000.  T <= IL_PC, IL_PC <= zero;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 001, DBGINDEX <= 00, IL_PC <= 001, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
282 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"1" & "00" & O"1" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- if IL_PC_VALID then next else dump_il_ex;
-- L0680@011B E300483FC000000000.dump_il_lp:  if IL_PC_VALID then next else dump_il_ex;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00011) then 000000000 else 100100000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
283 => '1' & '1' & '1' & "00011" & O"000" & O"440" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = 2, trace(from_microcode);
-- L0681@011C E090C8408200000000.  directByte = 2, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00000010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
284 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"02" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- directByte = 3, trace(from_microcode);
-- L0682@011D E090C840C200000000.  directByte = 3, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
285 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- trace(crlf);
-- L0683@011E E090C87FC600000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
286 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- IL_PC <= inc, goto dump_il_lp;
-- L0684@011F FF0046FFC080000000.  IL_PC <= inc, if false then next else dump_il_lp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100011011, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
287 => '1' & '1' & '1' & "11111" & O"000" & O"433" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- IL_PC <= T, back;
-- L0685@0120 E00100BFC0C0000000.dump_il_ex:  IL_PC <= T, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 011, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
288 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"3" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- if DBG_READY then next else repeat;
-- L0688@0121 E400007FC000000000.trace:  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
289 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- if DBG_READY then next else repeat;
-- L0689@0122 E400007FC000000000.  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
290 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- if DBG_READY then next else repeat;
-- L0690@0123 E400007FC000000000.  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
291 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- DBGINDEX <= zero, back;
-- L0691@0124 E00100BFC400000000.  DBGINDEX <= zero, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 10, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 0000, dummy = 00;
292 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "10" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00",

-- 219 location(s) in following ranges will be filled with default value
-- 0125 .. 01FF

others => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & X"0" & "00"
);

end microBasic_code;

