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
-- L0059.T: .regfield 3 values same, IL_PC, zero, T10_plus_mdr, ExpStack, from_alu, -, - default same;
--
alias mb_T: 	std_logic_vector(2 downto 0) is mb_uinstruction(37 downto 35);
constant T_same: 	std_logic_vector(2 downto 0) := O"0";
constant T_IL_PC: 	std_logic_vector(2 downto 0) := O"1";
constant T_zero: 	std_logic_vector(2 downto 0) := O"2";
constant T_T10_plus_mdr: 	std_logic_vector(2 downto 0) := O"3";
constant T_ExpStack: 	std_logic_vector(2 downto 0) := O"4";
constant T_from_alu: 	std_logic_vector(2 downto 0) := O"5";
-- Value O"6" not allowed (name '-' is not assignable)
-- Value O"7" not allowed (name '-' is not assignable)
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
--			when T_ExpStack =>
--				T <= ExpStack;
--			when T_from_alu =>
--				T <= from_alu;
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
-- L0163.ExpStack: .regfield 3 values same, clear, push_T, startSwap, endSwap, push_MDR2, pop2, push_codeByte default same;
--
alias mb_ExpStack: 	std_logic_vector(2 downto 0) is mb_uinstruction(11 downto 9);
constant ExpStack_same: 	std_logic_vector(2 downto 0) := O"0";
constant ExpStack_clear: 	std_logic_vector(2 downto 0) := O"1";
constant ExpStack_push_T: 	std_logic_vector(2 downto 0) := O"2";
constant ExpStack_startSwap: 	std_logic_vector(2 downto 0) := O"3";
constant ExpStack_endSwap: 	std_logic_vector(2 downto 0) := O"4";
constant ExpStack_push_MDR2: 	std_logic_vector(2 downto 0) := O"5";
constant ExpStack_pop2: 	std_logic_vector(2 downto 0) := O"6";
constant ExpStack_push_codeByte: 	std_logic_vector(2 downto 0) := O"7";
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
--			when ExpStack_pop2 =>
--				ExpStack <= pop2;
--			when ExpStack_push_codeByte =>
--				ExpStack <= push_codeByte;
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
-- L0181.alu: .regfield 4 values nop, reset, R_fromStack, S_fromStack, add, sub, neg, mul, Yx16, bcd_start, bcd_next, div_start, div_shift, div_subset, div_end, - default nop;
--
alias mb_alu: 	std_logic_vector(3 downto 0) is mb_uinstruction(7 downto 4);
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
-- Value X"F" not allowed (name '-' is not assignable)
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
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0201.dummy: .valfield 4 values * default 0;
--
alias mb_dummy: 	std_logic_vector(3 downto 0) is mb_uinstruction(3 downto 0);
-- Values from X"0" to X"F" allowed
---- Start boilerplate code (use with utmost caution!)
--  dummy <= mb_dummy;
---- End boilerplate code



constant mb_microcode: mb_code_memory := (

-- nop;
-- L0239@0000 E000003FC000000000._reset:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
0 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- nop;
-- L0241@0001 E000003FC000000000._reset1:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
1 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- nop;
-- L0243@0002 E000003FC000000000._reset2:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
2 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- nop;
-- L0245@0003 E000003FC000000000._reset3:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
3 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- clear;
-- L0249@0004 E000003FC448025210.WarmStart:  DBGINDEX <= zero, IL_PC <= zero, BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, ExpStack <= clear, RetStack <= clear, alu <= reset;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 10, IL_PC <= 001, IL_OP <= 0, RetStack <= 01, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 001, SvPt <= 01, ExpStack <= 001, gotChar = 0, alu <= 0001, dummy = 0000;
4 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "10" & O"1" & '0' & "01" & O"0" & "00" & O"0" & "01" & O"1" & "01" & O"1" & '0' & X"1" & X"0",

-- WriteCore(BP, zero);
-- L0250@0005 E07ABD7FC000900000.  WriteCore(BP, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110101 else 011110101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
5 => '1' & '1' & '1' & "00000" & O"365" & O"365" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"2" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 4;
-- L0251@0006 E084C2410200000000.  trace(from_microcode), directByte = 4;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00000100, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
6 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"04" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- trace(crlf);
-- L0253@0007 E084C27FC600000000.fetch:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
7 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 2;
-- L0254@0008 E084C2408200000000.  trace(from_microcode), directByte = 2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00000010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
8 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"02" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_OP <= from_interpreter, IL_PC <= inc;
-- L0255@0009 E000003FC0A0000000.  IL_OP <= from_interpreter, IL_PC <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 1, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
9 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"2" & '1' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= reset, if IL_PC_VALID then fork else INTERNAL_ERR;
-- L0256@000A E301B67FC000000010.  alu <= reset, if IL_PC_VALID then fork else INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00011) then 000000011 else 011011001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0001, dummy = 0000;
10 => '1' & '1' & '1' & "00011" & O"003" & O"331" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"1" & X"0",

-- goto INTERNAL_ERR;
-- L0259@000B FF00367FC000000000.badop:  if false then next else INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011011001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
11 => '1' & '1' & '1' & "11111" & O"000" & O"331" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0264@000C E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
12 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 15;
-- L0265@000D E084C243C200000000.  trace(from_microcode), directByte = 15;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00001111, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
13 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"0F" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- ExpStack <= startSwap;
-- L0266@000E E000003FC000000600.  ExpStack <= startSwap;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 011, gotChar = 0, alu <= 0000, dummy = 0000;
14 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"3" & '0' & X"0" & X"0",

-- ExpStack <= endSwap;
-- L0267@000F E000003FC000000800.  ExpStack <= endSwap;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, alu <= 0000, dummy = 0000;
15 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & X"0" & X"0",

-- goto fetch;
-- L0268@0010 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
16 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0271@0011 E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
17 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 15;
-- L0272@0012 E084C243C200000000.  trace(from_microcode), directByte = 15;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00001111, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
18 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"0F" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0273@0013 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
19 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0278@0014 E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
20 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 12;
-- L0279@0015 E084C2430200000000.  trace(from_microcode), directByte = 12;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00001100, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
21 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"0C" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0280@0016 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
22 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0285@0017 E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
23 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 28;
-- L0286@0018 E084C2470200000000.  trace(from_microcode), directByte = 28;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00011100, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
24 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"1C" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 3, ExpStack <= push_codeByte;
-- L0287@0019 E084C240C200000E00.lb_push:  trace(from_microcode), directByte = 3, ExpStack <= push_codeByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 111, gotChar = 0, alu <= 0000, dummy = 0000;
25 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"7" & '0' & X"0" & X"0",

-- IL_PC <= inc, if ESTACK_IS_FULL then ESTACK_ERR else fetch;
-- L0288@001A F06D81FFC080000000.  IL_PC <= inc, if ESTACK_IS_FULL then ESTACK_ERR else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 011011011 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
26 => '1' & '1' & '1' & "10000" & O"333" & O"007" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0293@001B E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
27 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 29;
-- L0294@001C E084C2474200000000.  trace(from_microcode), directByte = 29;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00011101, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
28 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"1D" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 3, ExpStack <= push_codeByte;
-- L0295@001D E084C240C200000E00.  trace(from_microcode), directByte = 3, ExpStack <= push_codeByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 111, gotChar = 0, alu <= 0000, dummy = 0000;
29 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"7" & '0' & X"0" & X"0",

-- IL_PC <= inc, if ESTACK_IS_FULL then ESTACK_ERR else lb_push;
-- L0296@001E F06D867FC080000000.  IL_PC <= inc, if ESTACK_IS_FULL then ESTACK_ERR else lb_push;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 011011011 else 000011001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
30 => '1' & '1' & '1' & "10000" & O"333" & O"031" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0301@001F E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
31 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 34;
-- L0302@0020 E084C2488200000000.  trace(from_microcode), directByte = 34;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00100010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
32 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"22" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if ESTACK_IS_EMPTY then ESTACK_ERR;
-- L0303@0021 F16D803FC000000000.  if ESTACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 011011011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
33 => '1' & '1' & '1' & "10001" & O"333" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- ExpStack <= pop2, goto fetch;
-- L0304@0022 FF0001FFC000000C00.  ExpStack <= pop2, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, alu <= 0000, dummy = 0000;
34 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0309@0023 E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
35 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 10;
-- L0310@0024 E084C2428200000000.  trace(from_microcode), directByte = 10;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00001010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
36 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"0A" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if BP_IN_INPLINE then next else ptr_exc;
-- L0311@0025 EC000B3FC000000000.  if BP_IN_INPLINE then next else ptr_exc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01100) then 000000000 else 000101100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
37 => '1' & '1' & '1' & "01100" & O"000" & O"054" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- SvPt <= BP;
-- L0312@0026 E000003FC000002000.save_bp:  SvPt <= BP;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 10, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
38 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "10" & O"0" & '0' & X"0" & X"0",

-- traceBP;
-- L0313@0027 E084C2484200000000.bp_done:  trace(from_microcode), directByte = 33;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00100001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
39 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"21" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0314@0028 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
40 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0319@0029 E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
41 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 11;
-- L0320@002A E084C242C200000000.  trace(from_microcode), directByte = 11;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00001011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
42 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"0B" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if SVP_IN_INPLINE then save_bp;
-- L0321@002B ED13003FC000000000.  if SVP_IN_INPLINE then save_bp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01101) then 000100110 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
43 => '1' & '1' & '1' & "01101" & O"046" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- SvPt <= BP, BP <= SvPt, goto bp_done;
-- L0322@002C FF0009FFC00000A000.ptr_exc:  SvPt <= BP, BP <= SvPt, if false then next else bp_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000100111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 010, SvPt <= 10, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
44 => '1' & '1' & '1' & "11111" & O"000" & O"047" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"2" & "10" & O"0" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0327@002D E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
45 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 25;
-- L0328@002E E084C2464200000000.  trace(from_microcode), directByte = 25;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00011001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
46 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"19" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= R_fromStack;
-- L0329@002F E000003FC000000020.  alu <= R_fromStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0010, dummy = 0000;
47 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"2" & X"0",

-- ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
-- L0330@0030 F16D803FC000000C00.  ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 011011011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, alu <= 0000, dummy = 0000;
48 => '1' & '1' & '1' & "10001" & O"333" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & X"0" & X"0",

-- alu <= neg, if ALU_READY then alu_done else repeat;
-- L0331@0031 F51B007FC000000060.  alu <= neg, if ALU_READY then alu_done else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 000110110 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0110, dummy = 0000;
49 => '1' & '1' & '1' & "10101" & O"066" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"6" & X"0",

-- traceSDepth;
-- L0336@0032 E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
50 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 22;
-- L0337@0033 E084C2458200000000.  trace(from_microcode), directByte = 22;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00010110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
51 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"16" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- pullRS();
-- L0338@0034 E073B9FFC000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100111 else 011100111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
52 => '1' & '1' & '1' & "00000" & O"347" & O"347" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= add, if ALU_READY then next else repeat;
-- L0339@0035 F500007FC000000040.  alu <= add, if ALU_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0100, dummy = 0000;
53 => '1' & '1' & '1' & "10101" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"4" & X"0",

-- traceY;
-- L0340@0036 E084C2480200000000.alu_done:  trace(from_microcode), directByte = 32;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00100000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
54 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"20" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- T <= from_alu, if ALU_OVERFLOW then OVERFLOW_ERR;
-- L0341@0037 F66A803FE800000000.  T <= from_alu, if ALU_OVERFLOW then OVERFLOW_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 011010101 else 000000000, directByte = 11111111, T <= 101, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
55 => '1' & '1' & '1' & "10110" & O"325" & O"000" & X"FF" & O"5" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- ExpStack <= push_T, goto fetch;
-- L0342@0038 FF0001FFC000000400.  ExpStack <= push_T, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 010, gotChar = 0, alu <= 0000, dummy = 0000;
56 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"2" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0347@0039 E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
57 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 23;
-- L0348@003A E084C245C200000000.  trace(from_microcode), directByte = 23;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00010111, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
58 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"17" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- pullRS();
-- L0349@003B E073B9FFC000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100111 else 011100111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
59 => '1' & '1' & '1' & "00000" & O"347" & O"347" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= sub, if ALU_READY then alu_done else repeat;
-- L0350@003C F51B007FC000000050.  alu <= sub, if ALU_READY then alu_done else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 000110110 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0101, dummy = 0000;
60 => '1' & '1' & '1' & "10101" & O"066" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"5" & X"0",

-- traceSDepth;
-- L0355@003D E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
61 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 24;
-- L0356@003E E084C2460200000000.  trace(from_microcode), directByte = 24;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00011000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
62 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"18" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- pullRS();
-- L0357@003F E073B9FFC000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100111 else 011100111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
63 => '1' & '1' & '1' & "00000" & O"347" & O"347" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= mul, if ALU_READY then alu_done else repeat;
-- L0358@0040 F51B007FC000000070.  alu <= mul, if ALU_READY then alu_done else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 000110110 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0111, dummy = 0000;
64 => '1' & '1' & '1' & "10101" & O"066" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"7" & X"0",

-- traceSDepth;
-- L0363@0041 E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
65 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 35;
-- L0364@0042 E084C248C200000000.  trace(from_microcode), directByte = 35;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00100011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
66 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"23" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- pullRS();
-- L0365@0043 E073B9FFC000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100111 else 011100111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
67 => '1' & '1' & '1' & "00000" & O"347" & O"347" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if R_IS_ZERO then DIVBY0_ERR;
-- L0366@0044 F869803FC000000000.  if R_IS_ZERO then DIVBY0_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11000) then 011010011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
68 => '1' & '1' & '1' & "11000" & O"323" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= div_start;
-- L0367@0045 E000003FC0000000B0.  alu <= div_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1011, dummy = 0000;
69 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"B" & X"0",

-- alu <= div_shift;
-- L0368@0046 E000003FC0000000C0.div_loop:  alu <= div_shift;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1100, dummy = 0000;
70 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"C" & X"0",

-- alu <= div_subset,
-- L0369@0047 E084C24802000000D0.  alu <= div_subset, trace(from_microcode), directByte = 32;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00100000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1101, dummy = 0000;
71 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"20" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"D" & X"0",

-- if ALU_READY then next else div_loop;
-- L0371@0048 F50011BFC000000000.  if ALU_READY then next else div_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 000000000 else 001000110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
72 => '1' & '1' & '1' & "10101" & O"000" & O"106" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= div_end, goto alu_done;
-- L0372@0049 FF000DBFC0000000E0.div_done:  alu <= div_end, if false then next else alu_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000110110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1110, dummy = 0000;
73 => '1' & '1' & '1' & "11111" & O"000" & O"066" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"E" & X"0",

-- traceSDepth;
-- L0377@004A E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
74 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 26;
-- L0378@004B E084C2468200000000.  trace(from_microcode), directByte = 26;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00011010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
75 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"1A" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= R_fromStack;
-- L0379@004C E000003FC000000020.  alu <= R_fromStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0010, dummy = 0000;
76 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"2" & X"0",

-- alu <= bcd_start, ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
-- L0380@004D F16D803FC000000C90.  alu <= bcd_start, ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 011011011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, alu <= 1001, dummy = 0000;
77 => '1' & '1' & '1' & "10001" & O"333" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & X"9" & X"0",

-- alu <= bcd_next, if ALU_READY then next else repeat;
-- L0381@004E F500007FC0000000A0.  alu <= bcd_next, if ALU_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1010, dummy = 0000;
78 => '1' & '1' & '1' & "10101" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"A" & X"0",

-- traceY;
-- L0382@004F E084C2480200000000.  trace(from_microcode), directByte = 32;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00100000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
79 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"20" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if ALU_SIGN then next else pn_5;
-- L0383@0050 F70014BFC000000000.  if ALU_SIGN then next else pn_5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10111) then 000000000 else 001010010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
80 => '1' & '1' & '1' & "10111" & O"000" & O"122" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = '-', outChar(from_microcode);
-- L0384@0051 E0793C8B4002000000.  directByte = '-', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110010 else 011110010, directByte = 00101101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
81 => '1' & '1' & '1' & "00000" & O"362" & O"362" & X"2D" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if LEADING_ZERO then pn_4;
-- L0385@0052 FB2A003FC000000000.pn_5:  if LEADING_ZERO then pn_4;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 001010100 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
82 => '1' & '1' & '1' & "11011" & O"124" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outChar(from_YtoAlpha);
-- L0386@0053 E0793CBFC005000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110010 else 011110010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
83 => '1' & '1' & '1' & "00000" & O"362" & O"362" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= Yx16;
-- L0387@0054 E000003FC000000080.pn_4:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1000, dummy = 0000;
84 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"8" & X"0",

-- if LEADING_ZERO then pn_3;
-- L0388@0055 FB2B803FC000000000.  if LEADING_ZERO then pn_3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 001010111 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
85 => '1' & '1' & '1' & "11011" & O"127" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outChar(from_YtoAlpha);
-- L0389@0056 E0793CBFC005000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110010 else 011110010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
86 => '1' & '1' & '1' & "00000" & O"362" & O"362" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= Yx16;
-- L0390@0057 E000003FC000000080.pn_3:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1000, dummy = 0000;
87 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"8" & X"0",

-- if LEADING_ZERO then pn_2;
-- L0391@0058 FB2D003FC000000000.  if LEADING_ZERO then pn_2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 001011010 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
88 => '1' & '1' & '1' & "11011" & O"132" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outChar(from_YtoAlpha);
-- L0392@0059 E0793CBFC005000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110010 else 011110010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
89 => '1' & '1' & '1' & "00000" & O"362" & O"362" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= Yx16;
-- L0393@005A E000003FC000000080.pn_2:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1000, dummy = 0000;
90 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"8" & X"0",

-- if LEADING_ZERO then pn_1;
-- L0394@005B FB2E803FC000000000.  if LEADING_ZERO then pn_1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 001011101 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
91 => '1' & '1' & '1' & "11011" & O"135" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outChar(from_YtoAlpha);
-- L0395@005C E0793CBFC005000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110010 else 011110010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
92 => '1' & '1' & '1' & "00000" & O"362" & O"362" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= Yx16;
-- L0396@005D E000003FC000000080.pn_1:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1000, dummy = 0000;
93 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"8" & X"0",

-- if LEADING_ZERO then pn_0;
-- L0397@005E FB30003FC000000000.  if LEADING_ZERO then pn_0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 001100000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
94 => '1' & '1' & '1' & "11011" & O"140" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outChar(from_YtoAlpha);
-- L0398@005F E0793CBFC005000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110010 else 011110010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
95 => '1' & '1' & '1' & "00000" & O"362" & O"362" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= Yx16;
-- L0399@0060 E000003FC000000080.pn_0:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1000, dummy = 0000;
96 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"8" & X"0",

-- outChar(from_YtoAlpha);
-- L0400@0061 E0793CBFC005000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110010 else 011110010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
97 => '1' & '1' & '1' & "00000" & O"362" & O"362" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0401@0062 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
98 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0406@0063 E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
99 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 18;
-- L0407@0064 E084C2448200000000.  trace(from_microcode), directByte = 18;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00010010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
100 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"12" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- BP <= inc, ReadCore(BP);
-- L0408@0065 E07BBDFFC00080C000.pq_loop:  BP <= inc, ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110111 else 011110111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
101 => '1' & '1' & '1' & "00000" & O"367" & O"367" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"0" & "00" & O"3" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = '"', if MDR_EQU_DB then pq_done;
-- L0409@0066 E53500088000000000.  directByte = '"', if MDR_EQU_DB then pq_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 001101010 else 000000000, directByte = 00100010, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
102 => '1' & '1' & '1' & "00101" & O"152" & O"000" & X"22" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outChar(from_MDR);
-- L0410@0067 E0793CBFC004000000.  outChar(from_MDR);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110010 else 011110010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 100, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
103 => '1' & '1' & '1' & "00000" & O"362" & O"362" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"4" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 3;
-- L0411@0068 E084C240C200000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
104 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = CR, if MDR_EQU_DB then STRING_ERR else pq_loop;
-- L0412@0069 E56B99434000000000.  directByte = 0x0D, if MDR_EQU_DB then STRING_ERR else pq_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 011010111 else 001100101, directByte = 00001101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
105 => '1' & '1' & '1' & "00101" & O"327" & O"145" & X"0D" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceBP;
-- L0413@006A E084C2484200000000.pq_done:  trace(from_microcode), directByte = 33;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00100001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
106 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"21" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0414@006B FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
107 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0419@006C E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
108 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 27;
-- L0420@006D E084C246C200000000.  trace(from_microcode), directByte = 27;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00011011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
109 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"1B" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if AT_TAB then fetch;
-- L0421@006E F903803FC000000000.pt_loop:  if AT_TAB then fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11001) then 000000111 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
110 => '1' & '1' & '1' & "11001" & O"007" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = ' ', outChar(from_microcode);
-- L0422@006F E0793C880002000000.  directByte = ' ', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110010 else 011110010, directByte = 00100000, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
111 => '1' & '1' & '1' & "00000" & O"362" & O"362" & X"20" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto pt_loop;
-- L0423@0070 FF001BBFC000000000.  if false then next else pt_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001101110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
112 => '1' & '1' & '1' & "11111" & O"000" & O"156" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0428@0071 E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
113 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 6;
-- L0429@0072 E084C2418200000000.  trace(from_microcode), directByte = 6;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00000110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
114 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"06" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outCRLF();
-- L0430@0073 E077BBFFC000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011101111 else 011101111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
115 => '1' & '1' & '1' & "00000" & O"357" & O"357" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0431@0074 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
116 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0436@0075 E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
117 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 5;
-- L0437@0076 E084C2414200000000.  trace(from_microcode), directByte = 5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00000101, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
118 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"05" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outChar(from_interpreter);
-- L0438@0077 E0793CBFC001000000.pc_loop:  outChar(from_interpreter);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110010 else 011110010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 001, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
119 => '1' & '1' & '1' & "00000" & O"362" & O"362" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"1" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 3;
-- L0439@0078 E084C240C200000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
120 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if ILCODEBYTE_BIT7 then pc_exit;
-- L0440@0079 E13D803FC000000000.  if ILCODEBYTE_BIT7 then pc_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00001) then 001111011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
121 => '1' & '1' & '1' & "00001" & O"173" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= inc, goto pc_loop;
-- L0441@007A FF001DFFC080000000.  IL_PC <= inc, if false then next else pc_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001110111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
122 => '1' & '1' & '1' & "11111" & O"000" & O"167" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= inc, goto fetch;
-- L0442@007B FF0001FFC080000000.pc_exit:  IL_PC <= inc, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
123 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0447@007C E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
124 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 19;
-- L0448@007D E084C244C200000000.  trace(from_microcode), directByte = 19;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00010011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
125 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"13" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if RSTACK_IS_EMPTY then RSTACK_ERR;
-- L0449@007E F46E803FC000000000.  if RSTACK_IS_EMPTY then RSTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 011011101 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
126 => '1' & '1' & '1' & "10100" & O"335" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= RetStack, RetStack <= pop, goto fetch;
-- L0450@007F FF0001FFC1D0000000.  IL_PC <= RetStack, RetStack <= pop, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 111, IL_OP <= 0, RetStack <= 10, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
127 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"7" & '0' & "10" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0455@0080 E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
128 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 20;
-- L0456@0081 E084C2450200000000.  trace(from_microcode), directByte = 20;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00010100, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
129 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"14" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 3;
-- L0457@0082 E084C240C200000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
130 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if RSTACK_IS_FULL then RSTACK_ERR;
-- L0458@0083 F36E803FC000000000.  if RSTACK_IS_FULL then RSTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 011011101 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
131 => '1' & '1' & '1' & "10011" & O"335" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- RetStack <= push_IL_PC_PLUS_1, goto jump;
-- L0459@0084 FF00223FC018000000.  RetStack <= push_IL_PC_PLUS_1, if false then next else jump;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010001000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 11, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
132 => '1' & '1' & '1' & "11111" & O"000" & O"210" & X"FF" & O"0" & "00" & O"0" & '0' & "11" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0464@0085 E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
133 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 21;
-- L0465@0086 E084C2454200000000.  trace(from_microcode), directByte = 21;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00010101, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
134 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"15" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 3;
-- L0466@0087 E084C240C200000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
135 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= direct11, goto fetch;
-- L0467@0088 FF0001FFC180000000.jump:  IL_PC <= direct11, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 110, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
136 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"6" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0472@0089 E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
137 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 8;
-- L0473@008A E084C2420200000000.  trace(from_microcode), directByte = 8;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00001000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
138 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"08" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- InlEnd <= InLine_start;
-- L0474@008B E000003FC000020000.gl:  InlEnd <= InLine_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
139 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "01" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if CHARIN_READY then next else repeat;
-- L0475@008C EB00007FC000000000.gl_loop:  if CHARIN_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01011) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
140 => '1' & '1' & '1' & "01011" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if CHARIN_PRINTABLE then gl_print;
-- L0476@008D E949803FC000000000.  if CHARIN_PRINTABLE then gl_print;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01001) then 010010011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
141 => '1' & '1' & '1' & "01001" & O"223" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = CR, if CHARIN_EQU_DB then gl_cr;
-- L0477@008E EA4F80034000000000.  directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 010011111 else 000000000, directByte = 00001101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
142 => '1' & '1' & '1' & "01010" & O"237" & O"000" & X"0D" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = BACKSPACE, if CHARIN_EQU_DB then gl_bs;
-- L0478@008F EA4E00020000000000.  directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 010011100 else 000000000, directByte = 00001000, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
143 => '1' & '1' & '1' & "01010" & O"234" & O"000" & X"08" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = ESC, if CHARIN_EQU_DB then gl_esc;
-- L0479@0090 EA4C8006C000000000.  directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 010011001 else 000000000, directByte = 00011011, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
144 => '1' & '1' & '1' & "01010" & O"231" & O"000" & X"1B" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = BEEP, outChar(from_microcode);
-- L0482@0091 E0793C81C002000000.gl_ignore:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110010 else 011110010, directByte = 00000111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
145 => '1' & '1' & '1' & "00000" & O"362" & O"362" & X"07" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- gotChar = 1, goto gl_loop;
-- L0483@0092 FF00233FC000000100.  gotChar = 1, if false then next else gl_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010001100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, alu <= 0000, dummy = 0000;
146 => '1' & '1' & '1' & "11111" & O"000" & O"214" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & X"0" & X"0",

-- if INLEND_MAX then gl_ignore;
-- L0485@0093 E748803FC000000000.gl_print:  if INLEND_MAX then gl_ignore;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00111) then 010010001 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
147 => '1' & '1' & '1' & "00111" & O"221" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outChar(from_charin);
-- L0486@0094 E0793CBFC003000000.  outChar(from_charin);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110010 else 011110010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 011, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
148 => '1' & '1' & '1' & "00000" & O"362" & O"362" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"3" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- WriteCore(InlEnd, CHARIN);
-- L0487@0095 E07ABD7FC000580000.  WriteCore(InlEnd, CHARIN);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110101 else 011110101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
149 => '1' & '1' & '1' & "00000" & O"365" & O"365" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"3" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- InlEnd <= inc;
-- L0488@0096 E000003FC000040000.  InlEnd <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
150 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "10" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- WriteCore(InlEnd, zero);
-- L0489@0097 E07ABD7FC000500000.gl_write0:  WriteCore(InlEnd, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110101 else 011110101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
151 => '1' & '1' & '1' & "00000" & O"365" & O"365" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"2" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- gotChar = 1, goto gl_loop;
-- L0490@0098 FF00233FC000000100.  gotChar = 1, if false then next else gl_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010001100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, alu <= 0000, dummy = 0000;
152 => '1' & '1' & '1' & "11111" & O"000" & O"214" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & X"0" & X"0",

-- directByte = BEEP, outChar(from_microcode);
-- L0492@0099 E0793C81C002000000.gl_esc:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110010 else 011110010, directByte = 00000111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
153 => '1' & '1' & '1' & "00000" & O"362" & O"362" & X"07" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outCRLF();
-- L0493@009A E077BBFFC000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011101111 else 011101111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
154 => '1' & '1' & '1' & "00000" & O"357" & O"357" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- gotChar = 1, goto gl;
-- L0494@009B FF0022FFC000000100.  gotChar = 1, if false then next else gl;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010001011, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, alu <= 0000, dummy = 0000;
155 => '1' & '1' & '1' & "11111" & O"000" & O"213" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & X"0" & X"0",

-- if INLEND_MIN then gl_ignore;
-- L0496@009C E848803FC000000000.gl_bs:  if INLEND_MIN then gl_ignore;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01000) then 010010001 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
156 => '1' & '1' & '1' & "01000" & O"221" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = BACKSPACE, outChar(from_microcode);
-- L0497@009D E0793C820002000000.  directByte = 0x08, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110010 else 011110010, directByte = 00001000, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
157 => '1' & '1' & '1' & "00000" & O"362" & O"362" & X"08" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- InlEnd <= dec, goto gl_write0;
-- L0498@009E FF0025FFC000060000.  InlEnd <= dec, if false then next else gl_write0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010010111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 11, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
158 => '1' & '1' & '1' & "11111" & O"000" & O"227" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "11" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- WriteCore(InlEnd, CHARIN);
-- L0500@009F E07ABD7FC000580000.gl_cr:  WriteCore(InlEnd, CHARIN);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110101 else 011110101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
159 => '1' & '1' & '1' & "00000" & O"365" & O"365" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"3" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- InlEnd <= inc;
-- L0501@00A0 E000003FC000040000.  InlEnd <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
160 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "10" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- WriteCore(InlEnd, zero);
-- L0502@00A1 E07ABD7FC000500000.  WriteCore(InlEnd, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110101 else 011110101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
161 => '1' & '1' & '1' & "00000" & O"365" & O"365" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"2" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- dump_input();
-- L0503@00A2 E07CBE7FC000000000.  dump_input();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011111001 else 011111001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
162 => '1' & '1' & '1' & "00000" & O"371" & O"371" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outCRLF();
-- L0504@00A3 E077BBFFC000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011101111 else 011101111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
163 => '1' & '1' & '1' & "00000" & O"357" & O"357" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- gotChar = 1, BP <= Inline_start, goto fetch;
-- L0505@00A4 FF0001FFC000004100.  gotChar = 1, BP <= Inline_start, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 001, SvPt <= 00, ExpStack <= 000, gotChar = 1, alu <= 0000, dummy = 0000;
164 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"1" & "00" & O"0" & '1' & X"0" & X"0",

-- traceSDepth;
-- L0510@00A5 E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
165 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 7;
-- L0511@00A6 E084C241C200000000.  trace(from_microcode), directByte = 7;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00000111, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
166 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"07" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= pc_plus_off6;
-- L0512@00A7 E000003FC100000000.  IL_PC <= pc_plus_off6;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 100, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
167 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"4" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceGoto;
-- L0513@00A8 E084C2478200000000.br_exit:  trace(from_microcode), directByte = 30;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00011110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
168 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"1E" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0514@00A9 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
169 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0519@00AA E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
170 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 7;
-- L0520@00AB E084C241C200000000.  trace(from_microcode), directByte = 7;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00000111, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
171 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"07" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto badop;
-- L0521@00AC FF0002FFC000000000.  if false then next else badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
172 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0526@00AD E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
173 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 17;
-- L0527@00AE E084C2444200000000.  trace(from_microcode), directByte = 17;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00010001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
174 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"11" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- T <= IL_PC, BP <= save, skipSpaces();
-- L0528@00AF E075BAFFC800010000.  T <= IL_PC, BP <= save, skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011101011 else 011101011, directByte = 11111111, T <= 001, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 100, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
175 => '1' & '1' & '1' & "00000" & O"353" & O"353" & X"FF" & O"1" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"4" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 3;
-- L0529@00B0 E084C240C200000000.bc_loop:  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
176 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- ReadCore(BP);
-- L0530@00B1 E07BBDFFC000800000.  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110111 else 011110111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
177 => '1' & '1' & '1' & "00000" & O"367" & O"367" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
-- L0531@00B2 F2002E3FC000000000.  if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10010) then 000000000 else 010111000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
178 => '1' & '1' & '1' & "10010" & O"000" & O"270" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if ILCODEBYTE_BIT7 then bc_match;
-- L0532@00B3 E15A803FC000000000.  if ILCODEBYTE_BIT7 then bc_match;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00001) then 010110101 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
179 => '1' & '1' & '1' & "00001" & O"265" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- BP <= inc, IL_PC <= inc, goto bc_loop;
-- L0533@00B4 FF002C3FC08000C000.  BP <= inc, IL_PC <= inc, if false then next else bc_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010110000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
180 => '1' & '1' & '1' & "11111" & O"000" & O"260" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & X"0" & X"0",

-- BP <= inc, IL_PC <= inc;
-- L0534@00B5 E000003FC08000C000.bc_match:  BP <= inc, IL_PC <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
181 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & X"0" & X"0",

-- traceBP;
-- L0535@00B6 E084C2484200000000.  trace(from_microcode), directByte = 33;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00100001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
182 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"21" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0536@00B7 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
183 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- BP <= restore, IL_PC <= T;
-- L0537@00B8 E000003FC0C0014000.bc_exit:  BP <= restore, IL_PC <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 011, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 101, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
184 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"3" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"5" & "00" & O"0" & '0' & X"0" & X"0",

-- traceBP;
-- L0538@00B9 E084C2484200000000.  trace(from_microcode), directByte = 33;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00100001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
185 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"21" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= pc_plus_off5, goto br_exit;
-- L0539@00BA FF002A3FC140000000.  IL_PC <= pc_plus_off5, if false then next else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010101000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
186 => '1' & '1' & '1' & "11111" & O"000" & O"250" & X"FF" & O"0" & "00" & O"5" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0544@00BB E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
187 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 16;
-- L0545@00BC E084C2440200000000.  trace(from_microcode), directByte = 16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00010000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
188 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"10" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- skipSpaces();
-- L0546@00BD E075BAFFC000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011101011 else 011101011, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
189 => '1' & '1' & '1' & "00000" & O"353" & O"353" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
-- L0547@00BE EF60003FC000200000.  MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01111) then 011000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 100, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
190 => '1' & '1' & '1' & "01111" & O"300" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"4" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop else br_exit;
-- L0548@00BF FA05AA3FC140000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11010) then 000001011 else 010101000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
191 => '1' & '1' & '1' & "11010" & O"013" & O"250" & X"FF" & O"0" & "00" & O"5" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if ESTACK_IS_FULL then ESTACK_ERR;
-- L0549@00C0 F06D803FC000000000.bv_exec:  if ESTACK_IS_FULL then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 011011011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
192 => '1' & '1' & '1' & "10000" & O"333" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- ExpStack <= push_MDR2, goto fetch;
-- L0550@00C1 FF0001FFC000000A00.  ExpStack <= push_MDR2, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 101, gotChar = 0, alu <= 0000, dummy = 0000;
193 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"5" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0555@00C2 E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
194 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 14;
-- L0556@00C3 E084C2438200000000.  trace(from_microcode), directByte = 14;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00001110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
195 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"0E" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- skipSpaces();
-- L0557@00C4 E075BAFFC000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011101011 else 011101011, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
196 => '1' & '1' & '1' & "00000" & O"353" & O"353" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- T <= zero, if MDR_IS_NUM then bn_loop;
-- L0558@00C5 EE64803FD000000000.  T <= zero, if MDR_IS_NUM then bn_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01110) then 011001001 else 000000000, directByte = 11111111, T <= 010, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
197 => '1' & '1' & '1' & "01110" & O"311" & O"000" & X"FF" & O"2" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
-- L0559@00C6 FA05803FC140000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11010) then 000001011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
198 => '1' & '1' & '1' & "11010" & O"013" & O"000" & X"FF" & O"0" & "00" & O"5" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceGoto;
-- L0560@00C7 E084C2478200000000.bn_exit:  trace(from_microcode), directByte = 30;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00011110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
199 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"1E" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0561@00C8 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
200 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- T <= T10_plus_mdr, BP <= inc;
-- L0562@00C9 E000003FD80000C000.bn_loop:  T <= T10_plus_mdr, BP <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 011, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
201 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"3" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & X"0" & X"0",

-- ReadCore(BP);
-- L0563@00CA E07BBDFFC000800000.  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110111 else 011110111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
202 => '1' & '1' & '1' & "00000" & O"367" & O"367" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if MDR_IS_NUM then bn_loop;
-- L0564@00CB EE64803FC000000000.  if MDR_IS_NUM then bn_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01110) then 011001001 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
203 => '1' & '1' & '1' & "01110" & O"311" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if ESTACK_IS_FULL then ESTACK_ERR;
-- L0565@00CC F06D803FC000000000.  if ESTACK_IS_FULL then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 011011011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
204 => '1' & '1' & '1' & "10000" & O"333" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- ExpStack <= push_T, goto bn_exit;
-- L0566@00CD FF0031FFC000000400.  ExpStack <= push_T, if false then next else bn_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 010, gotChar = 0, alu <= 0000, dummy = 0000;
205 => '1' & '1' & '1' & "11111" & O"000" & O"307" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"2" & '0' & X"0" & X"0",

-- traceSDepth;
-- L0571@00CE E084C24E0200000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
206 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"38" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 13;
-- L0572@00CF E084C2434200000000.  trace(from_microcode), directByte = 13;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00001101, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
207 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"0D" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- skipSpaces();
-- L0573@00D0 E075BAFFC000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011101011 else 011101011, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
208 => '1' & '1' & '1' & "00000" & O"353" & O"353" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = CR, if MDR_EQU_DB then fetch;
-- L0574@00D1 E50380034000000000.  directByte = 0x0D, if MDR_EQU_DB then fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 000000111 else 000000000, directByte = 00001101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
209 => '1' & '1' & '1' & "00101" & O"007" & O"000" & X"0D" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop else br_exit;
-- L0575@00D2 FA05AA3FC140000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11010) then 000001011 else 010101000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
210 => '1' & '1' & '1' & "11010" & O"013" & O"250" & X"FF" & O"0" & "00" & O"5" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 57;
-- L0577@00D3 E084C24E4200000000.DIVBY0_ERR:  trace(from_microcode), directByte = 57;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
211 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"39" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto traceError;
-- L0578@00D4 FF0037BFC000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011011110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
212 => '1' & '1' & '1' & "11111" & O"000" & O"336" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 58;
-- L0579@00D5 E084C24E8200000000.OVERFLOW_ERR:  trace(from_microcode), directByte = 58;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
213 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"3A" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto traceError;
-- L0580@00D6 FF0037BFC000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011011110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
214 => '1' & '1' & '1' & "11111" & O"000" & O"336" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 61;
-- L0581@00D7 E084C24F4200000000.STRING_ERR:  trace(from_microcode), directByte = 61;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111101, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
215 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"3D" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto traceError;
-- L0582@00D8 FF0037BFC000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011011110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
216 => '1' & '1' & '1' & "11111" & O"000" & O"336" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 62;
-- L0583@00D9 E084C24F8200000000.INTERNAL_ERR:  trace(from_microcode), directByte = 62;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
217 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"3E" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto traceError;
-- L0584@00DA FF0037BFC000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011011110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
218 => '1' & '1' & '1' & "11111" & O"000" & O"336" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 60;
-- L0585@00DB E084C24F0200000000.ESTACK_ERR:  trace(from_microcode), directByte = 60;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111100, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
219 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"3C" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto traceError;
-- L0586@00DC FF0037BFC000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011011110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
220 => '1' & '1' & '1' & "11111" & O"000" & O"336" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 59;
-- L0587@00DD E084C24EC200000000.RSTACK_ERR:  trace(from_microcode), directByte = 59;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00111011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
221 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"3B" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outCRLF();
-- L0588@00DE E077BBFFC000000000.traceError:  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011101111 else 011101111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
222 => '1' & '1' & '1' & "00000" & O"357" & O"357" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- trace(crlf);
-- L0589@00DF E084C27FC600000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
223 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = BEEP, outChar(from_microcode);
-- L0590@00E0 E0793C81C002000000.  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110010 else 011110010, directByte = 00000111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
224 => '1' & '1' & '1' & "00000" & O"362" & O"362" & X"07" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = 'E', outChar(from_microcode);
-- L0591@00E1 E0793C914002000000.  directByte = 'E', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110010 else 011110010, directByte = 01000101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
225 => '1' & '1' & '1' & "00000" & O"362" & O"362" & X"45" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = 'R', outChar(from_microcode);
-- L0592@00E2 E0793C948002000000.  directByte = 'R', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110010 else 011110010, directByte = 01010010, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
226 => '1' & '1' & '1' & "00000" & O"362" & O"362" & X"52" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = 'R', outChar(from_microcode);
-- L0593@00E3 E0793C948002000000.  directByte = 'R', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110010 else 011110010, directByte = 01010010, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
227 => '1' & '1' & '1' & "00000" & O"362" & O"362" & X"52" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outCRLF();
-- L0596@00E4 E077BBFFC000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011101111 else 011101111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
228 => '1' & '1' & '1' & "00000" & O"357" & O"357" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- trace(crlf);
-- L0597@00E5 E084C27FC600000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
229 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto WarmStart;
-- L0598@00E6 FF00013FC000000000.  if false then next else WarmStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
230 => '1' & '1' & '1' & "11111" & O"000" & O"004" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= R_fromStack;
-- L0600@00E7 E000003FC000000020.pullRS:  alu <= R_fromStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0010, dummy = 0000;
231 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"2" & X"0",

-- ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
-- L0601@00E8 F16D803FC000000C00.  ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 011011011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, alu <= 0000, dummy = 0000;
232 => '1' & '1' & '1' & "10001" & O"333" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & X"0" & X"0",

-- alu <= S_fromStack;
-- L0602@00E9 E000003FC000000030.  alu <= S_fromStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0011, dummy = 0000;
233 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"3" & X"0",

-- ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR else return;
-- L0603@00EA F16D80BFC000000C00.  ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 011011011 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, alu <= 0000, dummy = 0000;
234 => '1' & '1' & '1' & "10001" & O"333" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & X"0" & X"0",

-- ReadCore(BP);
-- L0605@00EB E07BBDFFC000800000.skipSpaces:  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110111 else 011110111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
235 => '1' & '1' & '1' & "00000" & O"367" & O"367" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = ' ', if MDR_EQU_DB then skipSp;
-- L0606@00EC E57700080000000000.  directByte = ' ', if MDR_EQU_DB then skipSp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 011101110 else 000000000, directByte = 00100000, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
236 => '1' & '1' & '1' & "00101" & O"356" & O"000" & X"20" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = TAB, if MDR_EQU_DB then skipSp else return;
-- L0607@00ED E57700824000000000.  directByte = 0x09, if MDR_EQU_DB then skipSp else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 011101110 else 000000010, directByte = 00001001, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
237 => '1' & '1' & '1' & "00101" & O"356" & O"002" & X"09" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- BP <= inc, goto  skipSpaces;
-- L0608@00EE FF003AFFC00000C000.skipSp:  BP <= inc, if false then next else  skipSpaces;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011101011, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
238 => '1' & '1' & '1' & "11111" & O"000" & O"353" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = CR, outChar(from_microcode);
-- L0610@00EF E0793C834002000000.outCRLF:  directByte = 0x0D, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110010 else 011110010, directByte = 00001101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
239 => '1' & '1' & '1' & "00000" & O"362" & O"362" & X"0D" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = LF, outChar(from_microcode);
-- L0611@00F0 E0793C828002000000.  directByte = 0x0A, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110010 else 011110010, directByte = 00001010, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
240 => '1' & '1' & '1' & "00000" & O"362" & O"362" & X"0A" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- back;
-- L0612@00F1 E00100BFC000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
241 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if CHAROUT_READY then next else repeat;
-- L0614@00F2 E200007FC000000000.outChar:  if CHAROUT_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00010) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
242 => '1' & '1' & '1' & "00010" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if CHAROUT_READY then next else repeat;
-- L0615@00F3 E200007FC000000000.  if CHAROUT_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00010) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
243 => '1' & '1' & '1' & "00010" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- back;
-- L0616@00F4 E00100BFC000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
244 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- nBUSREQ = 0, if nBUSACK then repeat else next;
-- L0618@00F5 6600803FC000000000.WriteCore:  nBUSREQ = 0, if nBUSACK then repeat else next;
--  nBUSREQ = 0, nWR = 1, nRD = 1, if (00110) then 000000001 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
245 => '0' & '1' & '1' & "00110" & O"001" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- nBUSREQ = 0, nWR = 0, back;
-- L0619@00F6 200100BFC000000000.  nBUSREQ = 0, nWR = 0, if true then return else return;
--  nBUSREQ = 0, nWR = 0, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
246 => '0' & '0' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- nBUSREQ = 0, if nBUSACK then repeat else next;
-- L0621@00F7 6600803FC000000000.ReadCore:  nBUSREQ = 0, if nBUSACK then repeat else next;
--  nBUSREQ = 0, nWR = 1, nRD = 1, if (00110) then 000000001 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
247 => '0' & '1' & '1' & "00110" & O"001" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- nBUSREQ = 0, nRD = 0, MDR <= from_Bus, back;
-- L0622@00F8 400100BFC000080000.  nBUSREQ = 0, nRD = 0, MDR <= from_Bus, if true then return else return;
--  nBUSREQ = 0, nWR = 1, nRD = 0, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 001, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
248 => '0' & '1' & '0' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"1" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- InlEnd <= InLine_start, trace(crlf);
-- L0626@00F9 E084C27FC600020000.dump_input:  InlEnd <= InLine_start, trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
249 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "01" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- ReadCore(InlEnd);
-- L0627@00FA E07BBDFFC000400000.dump_inlp:  ReadCore(InlEnd);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011110111 else 011110111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
250 => '1' & '1' & '1' & "00000" & O"367" & O"367" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = 9, trace(from_microcode);
-- L0628@00FB E084C2424200000000.  directByte = 9, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00001001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
251 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"09" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = NULL, if MDR_EQU_DB then dump_inex;
-- L0629@00FC E57F00000000000000.  directByte = 0x00, if MDR_EQU_DB then dump_inex;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 011111110 else 000000000, directByte = 00000000, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
252 => '1' & '1' & '1' & "00101" & O"376" & O"000" & X"00" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- InlEnd <= inc, goto dump_inlp;
-- L0630@00FD FF003EBFC000040000.  InlEnd <= inc, if false then next else dump_inlp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011111010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
253 => '1' & '1' & '1' & "11111" & O"000" & O"372" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "10" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- trace(crlf);
-- L0631@00FE E084C27FC600000000.dump_inex:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
254 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- back;
-- L0632@00FF E00100BFC000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
255 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = 1, trace(from_microcode);
-- L0634@0100 E084C2404200000000.dump_il:  directByte = 1, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00000001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
256 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"01" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- trace(crlf);
-- L0635@0101 E084C27FC600000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
257 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- T <= IL_PC, IL_PC <= zero;
-- L0636@0102 E000003FC840000000.  T <= IL_PC, IL_PC <= zero;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 001, DBGINDEX <= 00, IL_PC <= 001, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
258 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"1" & "00" & O"1" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if IL_PC_VALID then next else dump_il_ex;
-- L0637@0103 E300423FC000000000.dump_il_lp:  if IL_PC_VALID then next else dump_il_ex;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00011) then 000000000 else 100001000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
259 => '1' & '1' & '1' & "00011" & O"000" & O"410" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = 2, trace(from_microcode);
-- L0638@0104 E084C2408200000000.  directByte = 2, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00000010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
260 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"02" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = 3, trace(from_microcode);
-- L0639@0105 E084C240C200000000.  directByte = 3, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
261 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- trace(crlf);
-- L0640@0106 E084C27FC600000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100001001 else 100001001, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
262 => '1' & '1' & '1' & "00000" & O"411" & O"411" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= inc, goto dump_il_lp;
-- L0641@0107 FF0040FFC080000000.  IL_PC <= inc, if false then next else dump_il_lp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100000011, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
263 => '1' & '1' & '1' & "11111" & O"000" & O"403" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= T, back;
-- L0642@0108 E00100BFC0C0000000.dump_il_ex:  IL_PC <= T, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 011, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
264 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"3" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if DBG_READY then next else repeat;
-- L0645@0109 E400007FC000000000.trace:  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
265 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if DBG_READY then next else repeat;
-- L0646@010A E400007FC000000000.  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
266 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if DBG_READY then next else repeat;
-- L0647@010B E400007FC000000000.  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
267 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- DBGINDEX <= zero, back;
-- L0648@010C E00100BFC400000000.  DBGINDEX <= zero, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 10, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
268 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "10" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- 243 location(s) in following ranges will be filled with default value
-- 010D .. 01FF

others => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0"
);

end microBasic_code;

