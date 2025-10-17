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
-- L0018.seq_cond: .if 5 values true, ILCODEBYTE_BIT7, CHAROUT_READY, IL_PC_VALID, DBG_READY, MDR_EQU_DB, nBUSACK, INLEND_MAX, INLEND_MIN, CHARIN_PRINTABLE, CHARIN_EQU_DB, CHARIN_READY, BP_IN_INPLINE, SVP_IN_INPLINE, MDR_IS_NUM, MDR_IS_ALPHA, ESTACK_IS_FULL, ESTACK_IS_EMPTY, MDR_MATCHES_ILCODEBYTE, RSTACK_IS_FULL, RSTACK_IS_EMPTY, ALU_READY, ALU_OVERFLOW, ALU_SIGN, S_IS_ZERO, AT_TAB, cond26, cond27, cond28, cond29, cond30, false default true;
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
constant seq_cond_S_IS_ZERO: 	integer := 24;
constant seq_cond_AT_TAB: 	integer := 25;
constant seq_cond_cond26: 	integer := 26;
constant seq_cond_cond27: 	integer := 27;
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
--  cond(seq_cond_S_IS_ZERO) => S_IS_ZERO,
--  cond(seq_cond_AT_TAB) => AT_TAB,
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
-- L0181.alu: .regfield 4 values nop, reset, R_fromStack, S_fromStack, add, sub, neg, mul, Yx16, bcd_start, bcd_next, div_start, div_next, div_end, -, - default nop;
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
constant alu_div_next: 	std_logic_vector(3 downto 0) := X"C";
constant alu_div_end: 	std_logic_vector(3 downto 0) := X"D";
-- Value X"E" not allowed (name '-' is not assignable)
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
--			when alu_div_next =>
--				alu <= div_next;
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
-- L0238@0000 E000003FC000000000._reset:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
0 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- nop;
-- L0240@0001 E000003FC000000000._reset1:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
1 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- nop;
-- L0242@0002 E000003FC000000000._reset2:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
2 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- nop;
-- L0244@0003 E000003FC000000000._reset3:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
3 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- clear;
-- L0248@0004 E000003FC448025210.WarmStart:  DBGINDEX <= zero, IL_PC <= zero, BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, ExpStack <= clear, RetStack <= clear, alu <= reset;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 10, IL_PC <= 001, IL_OP <= 0, RetStack <= 01, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 001, SvPt <= 01, ExpStack <= 001, gotChar = 0, alu <= 0001, dummy = 0000;
4 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "10" & O"1" & '0' & "01" & O"0" & "00" & O"0" & "01" & O"1" & "01" & O"1" & '0' & X"1" & X"0",

-- WriteCore(BP, zero);
-- L0249@0005 E067B3FFC000900000.  WriteCore(BP, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001111 else 011001111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
5 => '1' & '1' & '1' & "00000" & O"317" & O"317" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"2" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 4;
-- L0250@0006 E071B8C10200000000.  trace(from_microcode), directByte = 4;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00000100, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
6 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"04" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- trace(crlf);
-- L0252@0007 E071B8FFC600000000.fetch:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
7 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 2;
-- L0253@0008 E071B8C08200000000.  trace(from_microcode), directByte = 2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00000010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
8 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"02" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_OP <= from_interpreter, IL_PC <= inc;
-- L0254@0009 E000003FC0A0000000.  IL_OP <= from_interpreter, IL_PC <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 1, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
9 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"2" & '1' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= reset, if IL_PC_VALID then fork else INTERNAL_ERR;
-- L0255@000A E301ACFFC000000010.  alu <= reset, if IL_PC_VALID then fork else INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00011) then 000000011 else 010110011, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0001, dummy = 0000;
10 => '1' & '1' & '1' & "00011" & O"003" & O"263" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"1" & X"0",

-- traceString 62;
-- L0258@000B E071B8CF8200000000.badop:  trace(from_microcode), directByte = 62;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00111110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
11 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"3E" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto INTERNAL_ERR;
-- L0260@000C FF002CFFC000000000.  if false then next else INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010110011, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
12 => '1' & '1' & '1' & "11111" & O"000" & O"263" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 15;
-- L0265@000D E071B8C3C200000000.  trace(from_microcode), directByte = 15;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00001111, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
13 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"0F" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

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

-- traceString 15;
-- L0271@0011 E071B8C3C200000000.  trace(from_microcode), directByte = 15;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00001111, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
17 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"0F" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0272@0012 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
18 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 12;
-- L0277@0013 E071B8C30200000000.  trace(from_microcode), directByte = 12;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00001100, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
19 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"0C" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0278@0014 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
20 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 28;
-- L0283@0015 E071B8C70200000000.  trace(from_microcode), directByte = 28;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00011100, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
21 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"1C" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 3, ExpStack <= push_codeByte;
-- L0284@0016 E071B8C0C200000E00.lb_push:  trace(from_microcode), directByte = 3, ExpStack <= push_codeByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 111, gotChar = 0, alu <= 0000, dummy = 0000;
22 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"7" & '0' & X"0" & X"0",

-- IL_PC <= inc, if ESTACK_IS_FULL then ESTACK_ERR else fetch;
-- L0285@0017 F05A81FFC080000000.  IL_PC <= inc, if ESTACK_IS_FULL then ESTACK_ERR else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 010110101 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
23 => '1' & '1' & '1' & "10000" & O"265" & O"007" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 29;
-- L0290@0018 E071B8C74200000000.  trace(from_microcode), directByte = 29;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00011101, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
24 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"1D" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 3, ExpStack <= push_codeByte;
-- L0291@0019 E071B8C0C200000E00.  trace(from_microcode), directByte = 3, ExpStack <= push_codeByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 111, gotChar = 0, alu <= 0000, dummy = 0000;
25 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"7" & '0' & X"0" & X"0",

-- IL_PC <= inc, if ESTACK_IS_FULL then ESTACK_ERR else lb_push;
-- L0292@001A F05A85BFC080000000.  IL_PC <= inc, if ESTACK_IS_FULL then ESTACK_ERR else lb_push;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 010110101 else 000010110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
26 => '1' & '1' & '1' & "10000" & O"265" & O"026" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 34;
-- L0297@001B E071B8C88200000000.  trace(from_microcode), directByte = 34;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00100010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
27 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"22" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if ESTACK_IS_EMPTY then ESTACK_ERR;
-- L0298@001C F15A803FC000000000.  if ESTACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 010110101 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
28 => '1' & '1' & '1' & "10001" & O"265" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- ExpStack <= pop2, goto fetch;
-- L0299@001D FF0001FFC000000C00.  ExpStack <= pop2, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, alu <= 0000, dummy = 0000;
29 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & X"0" & X"0",

-- traceString 10;
-- L0304@001E E071B8C28200000000.  trace(from_microcode), directByte = 10;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00001010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
30 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"0A" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if BP_IN_INPLINE then next else ptr_exc;
-- L0305@001F EC00097FC000000000.  if BP_IN_INPLINE then next else ptr_exc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01100) then 000000000 else 000100101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
31 => '1' & '1' & '1' & "01100" & O"000" & O"045" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- SvPt <= BP;
-- L0306@0020 E000003FC000002000.save_bp:  SvPt <= BP;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 10, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
32 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "10" & O"0" & '0' & X"0" & X"0",

-- traceBP;
-- L0307@0021 E071B8C84200000000.bp_done:  trace(from_microcode), directByte = 33;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00100001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
33 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"21" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0308@0022 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
34 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 11;
-- L0313@0023 E071B8C2C200000000.  trace(from_microcode), directByte = 11;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00001011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
35 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"0B" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if SVP_IN_INPLINE then save_bp;
-- L0314@0024 ED10003FC000000000.  if SVP_IN_INPLINE then save_bp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01101) then 000100000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
36 => '1' & '1' & '1' & "01101" & O"040" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- SvPt <= BP, BP <= SvPt, goto bp_done;
-- L0315@0025 FF00087FC00000A000.ptr_exc:  SvPt <= BP, BP <= SvPt, if false then next else bp_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000100001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 010, SvPt <= 10, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
37 => '1' & '1' & '1' & "11111" & O"000" & O"041" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"2" & "10" & O"0" & '0' & X"0" & X"0",

-- traceString 25;
-- L0320@0026 E071B8C64200000000.  trace(from_microcode), directByte = 25;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00011001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
38 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"19" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= R_fromStack;
-- L0321@0027 E000003FC000000020.  alu <= R_fromStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0010, dummy = 0000;
39 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"2" & X"0",

-- ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
-- L0322@0028 F15A803FC000000C00.  ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 010110101 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, alu <= 0000, dummy = 0000;
40 => '1' & '1' & '1' & "10001" & O"265" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & X"0" & X"0",

-- alu <= neg, if ALU_READY then alu_done else repeat;
-- L0323@0029 F516807FC000000060.  alu <= neg, if ALU_READY then alu_done else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 000101101 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0110, dummy = 0000;
41 => '1' & '1' & '1' & "10101" & O"055" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"6" & X"0",

-- traceString 22;
-- L0328@002A E071B8C58200000000.  trace(from_microcode), directByte = 22;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00010110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
42 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"16" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- pullRS();
-- L0329@002B E060B07FC000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011000001 else 011000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
43 => '1' & '1' & '1' & "00000" & O"301" & O"301" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= add, if ALU_READY then next else repeat;
-- L0330@002C F500007FC000000040.  alu <= add, if ALU_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0100, dummy = 0000;
44 => '1' & '1' & '1' & "10101" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"4" & X"0",

-- traceY;
-- L0331@002D E071B8C80200000000.alu_done:  trace(from_microcode), directByte = 32;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00100000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
45 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"20" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- T <= from_alu, if ALU_OVERFLOW then OVERFLOW_ERR;
-- L0332@002E F657803FE800000000.  T <= from_alu, if ALU_OVERFLOW then OVERFLOW_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 010101111 else 000000000, directByte = 11111111, T <= 101, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
46 => '1' & '1' & '1' & "10110" & O"257" & O"000" & X"FF" & O"5" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- ExpStack <= push_T, goto fetch;
-- L0333@002F FF0001FFC000000400.  ExpStack <= push_T, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 010, gotChar = 0, alu <= 0000, dummy = 0000;
47 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"2" & '0' & X"0" & X"0",

-- traceString 23;
-- L0338@0030 E071B8C5C200000000.  trace(from_microcode), directByte = 23;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00010111, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
48 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"17" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- pullRS();
-- L0339@0031 E060B07FC000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011000001 else 011000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
49 => '1' & '1' & '1' & "00000" & O"301" & O"301" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= sub, if ALU_READY then alu_done else repeat;
-- L0340@0032 F516807FC000000050.  alu <= sub, if ALU_READY then alu_done else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 000101101 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0101, dummy = 0000;
50 => '1' & '1' & '1' & "10101" & O"055" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"5" & X"0",

-- traceString 24;
-- L0345@0033 E071B8C60200000000.  trace(from_microcode), directByte = 24;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00011000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
51 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"18" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- pullRS();
-- L0346@0034 E060B07FC000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011000001 else 011000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
52 => '1' & '1' & '1' & "00000" & O"301" & O"301" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= mul, if ALU_READY then alu_done else repeat;
-- L0347@0035 F516807FC000000070.  alu <= mul, if ALU_READY then alu_done else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 000101101 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0111, dummy = 0000;
53 => '1' & '1' & '1' & "10101" & O"055" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"7" & X"0",

-- traceString 35;
-- L0352@0036 E071B8C8C200000000.  trace(from_microcode), directByte = 35;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00100011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
54 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"23" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- pullRS();
-- L0353@0037 E060B07FC000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011000001 else 011000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
55 => '1' & '1' & '1' & "00000" & O"301" & O"301" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if S_IS_ZERO then DIVBY0_ERR;
-- L0354@0038 F856803FC000000000.  if S_IS_ZERO then DIVBY0_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11000) then 010101101 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
56 => '1' & '1' & '1' & "11000" & O"255" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= div_start;
-- L0355@0039 E000003FC0000000B0.  alu <= div_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1011, dummy = 0000;
57 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"B" & X"0",

-- alu <= div_next, if ALU_READY then next else repeat;
-- L0356@003A F500007FC0000000C0.  alu <= div_next, if ALU_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1100, dummy = 0000;
58 => '1' & '1' & '1' & "10101" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"C" & X"0",

-- alu <= div_end, goto alu_done;
-- L0357@003B FF000B7FC0000000D0.  alu <= div_end, if false then next else alu_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000101101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1101, dummy = 0000;
59 => '1' & '1' & '1' & "11111" & O"000" & O"055" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"D" & X"0",

-- traceString 26;
-- L0362@003C E071B8C68200000000.  trace(from_microcode), directByte = 26;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00011010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
60 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"1A" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= R_fromStack;
-- L0363@003D E000003FC000000020.  alu <= R_fromStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0010, dummy = 0000;
61 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"2" & X"0",

-- alu <= bcd_start, ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
-- L0364@003E F15A803FC000000C90.  alu <= bcd_start, ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 010110101 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, alu <= 1001, dummy = 0000;
62 => '1' & '1' & '1' & "10001" & O"265" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & X"9" & X"0",

-- alu <= bcd_next, if ALU_READY then next else repeat;
-- L0365@003F F500007FC0000000A0.  alu <= bcd_next, if ALU_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1010, dummy = 0000;
63 => '1' & '1' & '1' & "10101" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"A" & X"0",

-- traceY;
-- L0366@0040 E071B8C80200000000.  trace(from_microcode), directByte = 32;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00100000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
64 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"20" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if ALU_SIGN then next else pn_plus;
-- L0367@0041 F70010FFC000000000.  if ALU_SIGN then next else pn_plus;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10111) then 000000000 else 001000011, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
65 => '1' & '1' & '1' & "10111" & O"000" & O"103" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = '-', outChar(from_microcode);
-- L0368@0042 E066330B4002000000.  directByte = '-', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001100 else 011001100, directByte = 00101101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
66 => '1' & '1' & '1' & "00000" & O"314" & O"314" & X"2D" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outChar(from_YtoAlpha), alu <= Yx16;
-- L0369@0043 E066333FC005000080.pn_plus:  outChar(from_YtoAlpha), alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001100 else 011001100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1000, dummy = 0000;
67 => '1' & '1' & '1' & "00000" & O"314" & O"314" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"8" & X"0",

-- outChar(from_YtoAlpha), alu <= Yx16;
-- L0370@0044 E066333FC005000080.  outChar(from_YtoAlpha), alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001100 else 011001100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1000, dummy = 0000;
68 => '1' & '1' & '1' & "00000" & O"314" & O"314" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"8" & X"0",

-- outChar(from_YtoAlpha), alu <= Yx16;
-- L0371@0045 E066333FC005000080.  outChar(from_YtoAlpha), alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001100 else 011001100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1000, dummy = 0000;
69 => '1' & '1' & '1' & "00000" & O"314" & O"314" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"8" & X"0",

-- outChar(from_YtoAlpha), alu <= Yx16;
-- L0372@0046 E066333FC005000080.  outChar(from_YtoAlpha), alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001100 else 011001100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1000, dummy = 0000;
70 => '1' & '1' & '1' & "00000" & O"314" & O"314" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"8" & X"0",

-- outChar(from_YtoAlpha), alu <= Yx16;
-- L0373@0047 E066333FC005000080.  outChar(from_YtoAlpha), alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001100 else 011001100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1000, dummy = 0000;
71 => '1' & '1' & '1' & "00000" & O"314" & O"314" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"8" & X"0",

-- outChar(from_YtoAlpha), alu <= Yx16;
-- L0374@0048 E066333FC005000080.  outChar(from_YtoAlpha), alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001100 else 011001100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1000, dummy = 0000;
72 => '1' & '1' & '1' & "00000" & O"314" & O"314" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"8" & X"0",

-- goto fetch;
-- L0375@0049 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
73 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 18;
-- L0380@004A E071B8C48200000000.  trace(from_microcode), directByte = 18;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00010010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
74 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"12" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- BP <= inc, ReadCore(BP);
-- L0381@004B E068B47FC00080C000.pq_loop:  BP <= inc, ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011010001 else 011010001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
75 => '1' & '1' & '1' & "00000" & O"321" & O"321" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"0" & "00" & O"3" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = '"', if MDR_EQU_DB then fetch;
-- L0382@004C E50380088000000000.  directByte = '"', if MDR_EQU_DB then fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 000000111 else 000000000, directByte = 00100010, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
76 => '1' & '1' & '1' & "00101" & O"007" & O"000" & X"22" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outChar(from_MDR);
-- L0383@004D E066333FC004000000.  outChar(from_MDR);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001100 else 011001100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 100, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
77 => '1' & '1' & '1' & "00000" & O"314" & O"314" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"4" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = CR, if MDR_EQU_DB then STRING_ERR else pq_loop;
-- L0384@004E E55892C34000000000.  directByte = 0x0D, if MDR_EQU_DB then STRING_ERR else pq_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 010110001 else 001001011, directByte = 00001101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
78 => '1' & '1' & '1' & "00101" & O"261" & O"113" & X"0D" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 27;
-- L0389@004F E071B8C6C200000000.  trace(from_microcode), directByte = 27;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00011011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
79 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"1B" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if AT_TAB then fetch;
-- L0390@0050 F903803FC000000000.pt_loop:  if AT_TAB then fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11001) then 000000111 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
80 => '1' & '1' & '1' & "11001" & O"007" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = ' ', outChar(from_microcode);
-- L0391@0051 E06633080002000000.  directByte = ' ', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001100 else 011001100, directByte = 00100000, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
81 => '1' & '1' & '1' & "00000" & O"314" & O"314" & X"20" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto pt_loop;
-- L0392@0052 FF00143FC000000000.  if false then next else pt_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001010000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
82 => '1' & '1' & '1' & "11111" & O"000" & O"120" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 6;
-- L0397@0053 E071B8C18200000000.  trace(from_microcode), directByte = 6;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00000110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
83 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"06" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outCRLF();
-- L0398@0054 E064B27FC000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001001 else 011001001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
84 => '1' & '1' & '1' & "00000" & O"311" & O"311" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0399@0055 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
85 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 5;
-- L0404@0056 E071B8C14200000000.  trace(from_microcode), directByte = 5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00000101, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
86 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"05" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outChar(from_interpreter);
-- L0405@0057 E066333FC001000000.pc_loop:  outChar(from_interpreter);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001100 else 011001100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 001, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
87 => '1' & '1' & '1' & "00000" & O"314" & O"314" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"1" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 3;
-- L0406@0058 E071B8C0C200000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
88 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if ILCODEBYTE_BIT7 then pc_exit;
-- L0407@0059 E12D803FC000000000.  if ILCODEBYTE_BIT7 then pc_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00001) then 001011011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
89 => '1' & '1' & '1' & "00001" & O"133" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= inc, goto pc_loop;
-- L0408@005A FF0015FFC080000000.  IL_PC <= inc, if false then next else pc_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001010111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
90 => '1' & '1' & '1' & "11111" & O"000" & O"127" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= inc, goto fetch;
-- L0409@005B FF0001FFC080000000.pc_exit:  IL_PC <= inc, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
91 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 19;
-- L0414@005C E071B8C4C200000000.  trace(from_microcode), directByte = 19;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00010011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
92 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"13" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if RSTACK_IS_EMPTY then RSTACK_ERR;
-- L0415@005D F45B803FC000000000.  if RSTACK_IS_EMPTY then RSTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 010110111 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
93 => '1' & '1' & '1' & "10100" & O"267" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= RetStack, RetStack <= pop;
-- L0416@005E E000003FC1D0000000.  IL_PC <= RetStack, RetStack <= pop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 111, IL_OP <= 0, RetStack <= 10, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
94 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"7" & '0' & "10" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceGoto;
-- L0417@005F E071B8C78200000000.  trace(from_microcode), directByte = 30;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00011110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
95 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"1E" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0418@0060 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
96 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 20;
-- L0423@0061 E071B8C50200000000.  trace(from_microcode), directByte = 20;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00010100, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
97 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"14" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 3;
-- L0424@0062 E071B8C0C200000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
98 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if RSTACK_IS_FULL then RSTACK_ERR;
-- L0425@0063 F35B803FC000000000.  if RSTACK_IS_FULL then RSTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 010110111 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
99 => '1' & '1' & '1' & "10011" & O"267" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- RetStack <= push_IL_PC_PLUS_1;
-- L0426@0064 E000003FC018000000.  RetStack <= push_IL_PC_PLUS_1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 11, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
100 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "11" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= direct11, traceCall;
-- L0427@0065 E071B8C7C380000000.  IL_PC <= direct11, trace(from_microcode), directByte = 31;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00011111, T <= 000, DBGINDEX <= 01, IL_PC <= 110, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
101 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"1F" & O"0" & "01" & O"6" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0428@0066 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
102 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 21;
-- L0433@0067 E071B8C54200000000.  trace(from_microcode), directByte = 21;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00010101, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
103 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"15" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 3;
-- L0434@0068 E071B8C0C200000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
104 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= direct11, traceGoto;
-- L0435@0069 E071B8C78380000000.  IL_PC <= direct11, trace(from_microcode), directByte = 30;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00011110, T <= 000, DBGINDEX <= 01, IL_PC <= 110, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
105 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"1E" & O"0" & "01" & O"6" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0436@006A FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
106 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 8;
-- L0441@006B E071B8C20200000000.  trace(from_microcode), directByte = 8;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00001000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
107 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"08" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- InlEnd <= InLine_start;
-- L0442@006C E000003FC000020000.gl:  InlEnd <= InLine_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
108 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "01" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if CHARIN_READY then next else repeat;
-- L0443@006D EB00007FC000000000.gl_loop:  if CHARIN_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01011) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
109 => '1' & '1' & '1' & "01011" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if CHARIN_PRINTABLE then gl_print;
-- L0444@006E E93A003FC000000000.  if CHARIN_PRINTABLE then gl_print;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01001) then 001110100 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
110 => '1' & '1' & '1' & "01001" & O"164" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = CR, if CHARIN_EQU_DB then gl_cr;
-- L0445@006F EA4000034000000000.  directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 010000000 else 000000000, directByte = 00001101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
111 => '1' & '1' & '1' & "01010" & O"200" & O"000" & X"0D" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = BACKSPACE, if CHARIN_EQU_DB then gl_bs;
-- L0446@0070 EA3E80020000000000.  directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 001111101 else 000000000, directByte = 00001000, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
112 => '1' & '1' & '1' & "01010" & O"175" & O"000" & X"08" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = ESC, if CHARIN_EQU_DB then gl_esc;
-- L0447@0071 EA3D0006C000000000.  directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 001111010 else 000000000, directByte = 00011011, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
113 => '1' & '1' & '1' & "01010" & O"172" & O"000" & X"1B" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = BEEP, outChar(from_microcode);
-- L0450@0072 E0663301C002000000.gl_ignore:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001100 else 011001100, directByte = 00000111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
114 => '1' & '1' & '1' & "00000" & O"314" & O"314" & X"07" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- gotChar = 1, goto gl_loop;
-- L0451@0073 FF001B7FC000000100.  gotChar = 1, if false then next else gl_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001101101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, alu <= 0000, dummy = 0000;
115 => '1' & '1' & '1' & "11111" & O"000" & O"155" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & X"0" & X"0",

-- if INLEND_MAX then gl_ignore;
-- L0453@0074 E739003FC000000000.gl_print:  if INLEND_MAX then gl_ignore;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00111) then 001110010 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
116 => '1' & '1' & '1' & "00111" & O"162" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outChar(from_charin);
-- L0454@0075 E066333FC003000000.  outChar(from_charin);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001100 else 011001100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 011, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
117 => '1' & '1' & '1' & "00000" & O"314" & O"314" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"3" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- WriteCore(InlEnd, CHARIN);
-- L0455@0076 E067B3FFC000580000.  WriteCore(InlEnd, CHARIN);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001111 else 011001111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
118 => '1' & '1' & '1' & "00000" & O"317" & O"317" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"3" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- InlEnd <= inc;
-- L0456@0077 E000003FC000040000.  InlEnd <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
119 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "10" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- WriteCore(InlEnd, zero);
-- L0457@0078 E067B3FFC000500000.gl_write0:  WriteCore(InlEnd, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001111 else 011001111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
120 => '1' & '1' & '1' & "00000" & O"317" & O"317" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"2" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- gotChar = 1, goto gl_loop;
-- L0458@0079 FF001B7FC000000100.  gotChar = 1, if false then next else gl_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001101101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, alu <= 0000, dummy = 0000;
121 => '1' & '1' & '1' & "11111" & O"000" & O"155" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & X"0" & X"0",

-- directByte = BEEP, outChar(from_microcode);
-- L0460@007A E0663301C002000000.gl_esc:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001100 else 011001100, directByte = 00000111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
122 => '1' & '1' & '1' & "00000" & O"314" & O"314" & X"07" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outCRLF();
-- L0461@007B E064B27FC000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001001 else 011001001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
123 => '1' & '1' & '1' & "00000" & O"311" & O"311" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- gotChar = 1, goto gl;
-- L0462@007C FF001B3FC000000100.  gotChar = 1, if false then next else gl;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001101100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, alu <= 0000, dummy = 0000;
124 => '1' & '1' & '1' & "11111" & O"000" & O"154" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & X"0" & X"0",

-- if INLEND_MIN then gl_ignore;
-- L0464@007D E839003FC000000000.gl_bs:  if INLEND_MIN then gl_ignore;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01000) then 001110010 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
125 => '1' & '1' & '1' & "01000" & O"162" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = BACKSPACE, outChar(from_microcode);
-- L0465@007E E06633020002000000.  directByte = 0x08, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001100 else 011001100, directByte = 00001000, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
126 => '1' & '1' & '1' & "00000" & O"314" & O"314" & X"08" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- InlEnd <= dec, goto gl_write0;
-- L0466@007F FF001E3FC000060000.  InlEnd <= dec, if false then next else gl_write0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001111000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 11, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
127 => '1' & '1' & '1' & "11111" & O"000" & O"170" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "11" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- WriteCore(InlEnd, CHARIN);
-- L0468@0080 E067B3FFC000580000.gl_cr:  WriteCore(InlEnd, CHARIN);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001111 else 011001111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
128 => '1' & '1' & '1' & "00000" & O"317" & O"317" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"3" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- InlEnd <= inc;
-- L0469@0081 E000003FC000040000.  InlEnd <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
129 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "10" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- WriteCore(InlEnd, zero);
-- L0470@0082 E067B3FFC000500000.  WriteCore(InlEnd, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001111 else 011001111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
130 => '1' & '1' & '1' & "00000" & O"317" & O"317" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"2" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- dump_input();
-- L0471@0083 E069B4FFC000000000.  dump_input();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011010011 else 011010011, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
131 => '1' & '1' & '1' & "00000" & O"323" & O"323" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outCRLF();
-- L0472@0084 E064B27FC000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001001 else 011001001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
132 => '1' & '1' & '1' & "00000" & O"311" & O"311" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- gotChar = 1, BP <= Inline_start, goto fetch;
-- L0473@0085 FF0001FFC000004100.  gotChar = 1, BP <= Inline_start, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 001, SvPt <= 00, ExpStack <= 000, gotChar = 1, alu <= 0000, dummy = 0000;
133 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"1" & "00" & O"0" & '1' & X"0" & X"0",

-- traceString 7;
-- L0478@0086 E071B8C1C200000000.  trace(from_microcode), directByte = 7;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00000111, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
134 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"07" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= pc_plus_off6;
-- L0479@0087 E000003FC100000000.  IL_PC <= pc_plus_off6;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 100, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
135 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"4" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceGoto;
-- L0480@0088 E071B8C78200000000.br_exit:  trace(from_microcode), directByte = 30;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00011110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
136 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"1E" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0481@0089 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
137 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto badop;
-- L0484@008A FF0002FFC000000000.  if false then next else badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
138 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 17;
-- L0489@008B E071B8C44200000000.  trace(from_microcode), directByte = 17;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00010001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
139 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"11" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- T <= IL_PC, BP <= save, skipSpaces();
-- L0490@008C E062B17FC800010000.  T <= IL_PC, BP <= save, skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011000101 else 011000101, directByte = 11111111, T <= 001, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 100, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
140 => '1' & '1' & '1' & "00000" & O"305" & O"305" & X"FF" & O"1" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"4" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 3;
-- L0491@008D E071B8C0C200000000.bc_loop:  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
141 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- ReadCore(BP);
-- L0492@008E E068B47FC000800000.  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011010001 else 011010001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
142 => '1' & '1' & '1' & "00000" & O"321" & O"321" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
-- L0493@008F F200257FC000000000.  if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10010) then 000000000 else 010010101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
143 => '1' & '1' & '1' & "10010" & O"000" & O"225" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if ILCODEBYTE_BIT7 then bc_match;
-- L0494@0090 E149003FC000000000.  if ILCODEBYTE_BIT7 then bc_match;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00001) then 010010010 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
144 => '1' & '1' & '1' & "00001" & O"222" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- BP <= inc, IL_PC <= inc, goto bc_loop;
-- L0495@0091 FF00237FC08000C000.  BP <= inc, IL_PC <= inc, if false then next else bc_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010001101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
145 => '1' & '1' & '1' & "11111" & O"000" & O"215" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & X"0" & X"0",

-- BP <= inc, IL_PC <= inc;
-- L0496@0092 E000003FC08000C000.bc_match:  BP <= inc, IL_PC <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
146 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & X"0" & X"0",

-- traceBP;
-- L0497@0093 E071B8C84200000000.  trace(from_microcode), directByte = 33;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00100001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
147 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"21" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto br_exit;
-- L0498@0094 FF00223FC000000000.  if false then next else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010001000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
148 => '1' & '1' & '1' & "11111" & O"000" & O"210" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- BP <= restore, IL_PC <= T;
-- L0499@0095 E000003FC0C0014000.bc_exit:  BP <= restore, IL_PC <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 011, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 101, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
149 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"3" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"5" & "00" & O"0" & '0' & X"0" & X"0",

-- traceBP;
-- L0500@0096 E071B8C84200000000.  trace(from_microcode), directByte = 33;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00100001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
150 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"21" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= pc_plus_off5, goto br_exit;
-- L0501@0097 FF00223FC140000000.  IL_PC <= pc_plus_off5, if false then next else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010001000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
151 => '1' & '1' & '1' & "11111" & O"000" & O"210" & X"FF" & O"0" & "00" & O"5" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 16;
-- L0509@0098 E071B8C40200000000.  trace(from_microcode), directByte = 16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00010000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
152 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"10" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- skipSpaces();
-- L0510@0099 E062B17FC000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011000101 else 011000101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
153 => '1' & '1' & '1' & "00000" & O"305" & O"305" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
-- L0511@009A EF4E003FC000200000.  MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01111) then 010011100 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 100, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
154 => '1' & '1' & '1' & "01111" & O"234" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"4" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= pc_plus_off5, goto br_exit;
-- L0512@009B FF00223FC140000000.  IL_PC <= pc_plus_off5, if false then next else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010001000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
155 => '1' & '1' & '1' & "11111" & O"000" & O"210" & X"FF" & O"0" & "00" & O"5" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if ESTACK_IS_FULL then ESTACK_ERR;
-- L0513@009C F05A803FC000000000.bv_exec:  if ESTACK_IS_FULL then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 010110101 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
156 => '1' & '1' & '1' & "10000" & O"265" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- ExpStack <= push_MDR2, goto br_exit;
-- L0514@009D FF00223FC000000A00.  ExpStack <= push_MDR2, if false then next else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010001000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 101, gotChar = 0, alu <= 0000, dummy = 0000;
157 => '1' & '1' & '1' & "11111" & O"000" & O"210" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"5" & '0' & X"0" & X"0",

-- traceString 14;
-- L0522@009E E071B8C38200000000.  trace(from_microcode), directByte = 14;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00001110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
158 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"0E" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- skipSpaces();
-- L0523@009F E062B17FC000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011000101 else 011000101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
159 => '1' & '1' & '1' & "00000" & O"305" & O"305" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- T <= zero, if MDR_IS_NUM then bn_loop;
-- L0524@00A0 EE52003FD000000000.  T <= zero, if MDR_IS_NUM then bn_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01110) then 010100100 else 000000000, directByte = 11111111, T <= 010, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
160 => '1' & '1' & '1' & "01110" & O"244" & O"000" & X"FF" & O"2" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= pc_plus_off5;
-- L0525@00A1 E000003FC140000000.  IL_PC <= pc_plus_off5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
161 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"5" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceGoto;
-- L0526@00A2 E071B8C78200000000.bn_exit:  trace(from_microcode), directByte = 30;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00011110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
162 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"1E" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0527@00A3 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
163 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- T <= T10_plus_mdr, BP <= inc;
-- L0528@00A4 E000003FD80000C000.bn_loop:  T <= T10_plus_mdr, BP <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 011, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
164 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"3" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & X"0" & X"0",

-- ReadCore(BP);
-- L0529@00A5 E068B47FC000800000.  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011010001 else 011010001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
165 => '1' & '1' & '1' & "00000" & O"321" & O"321" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if MDR_IS_NUM then bn_loop;
-- L0530@00A6 EE52003FC000000000.  if MDR_IS_NUM then bn_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01110) then 010100100 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
166 => '1' & '1' & '1' & "01110" & O"244" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if ESTACK_IS_FULL then ESTACK_ERR;
-- L0531@00A7 F05A803FC000000000.  if ESTACK_IS_FULL then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 010110101 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
167 => '1' & '1' & '1' & "10000" & O"265" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- ExpStack <= push_T, goto bn_exit;
-- L0532@00A8 FF0028BFC000000400.  ExpStack <= push_T, if false then next else bn_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010100010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 010, gotChar = 0, alu <= 0000, dummy = 0000;
168 => '1' & '1' & '1' & "11111" & O"000" & O"242" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"2" & '0' & X"0" & X"0",

-- traceString 13;
-- L0540@00A9 E071B8C34200000000.  trace(from_microcode), directByte = 13;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00001101, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
169 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"0D" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- skipSpaces();
-- L0541@00AA E062B17FC000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011000101 else 011000101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
170 => '1' & '1' & '1' & "00000" & O"305" & O"305" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = CR, if MDR_EQU_DB then fetch;
-- L0542@00AB E50380034000000000.  directByte = 0x0D, if MDR_EQU_DB then fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 000000111 else 000000000, directByte = 00001101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
171 => '1' & '1' & '1' & "00101" & O"007" & O"000" & X"0D" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= pc_plus_off5, goto br_exit;
-- L0543@00AC FF00223FC140000000.  IL_PC <= pc_plus_off5, if false then next else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010001000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
172 => '1' & '1' & '1' & "11111" & O"000" & O"210" & X"FF" & O"0" & "00" & O"5" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 57;
-- L0548@00AD E071B8CE4200000000.DIVBY0_ERR:  trace(from_microcode), directByte = 57;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00111001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
173 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"39" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto traceError;
-- L0549@00AE FF002E3FC000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010111000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
174 => '1' & '1' & '1' & "11111" & O"000" & O"270" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 58;
-- L0550@00AF E071B8CE8200000000.OVERFLOW_ERR:  trace(from_microcode), directByte = 58;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00111010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
175 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"3A" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto traceError;
-- L0551@00B0 FF002E3FC000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010111000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
176 => '1' & '1' & '1' & "11111" & O"000" & O"270" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 61;
-- L0552@00B1 E071B8CF4200000000.STRING_ERR:  trace(from_microcode), directByte = 61;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00111101, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
177 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"3D" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto traceError;
-- L0553@00B2 FF002E3FC000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010111000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
178 => '1' & '1' & '1' & "11111" & O"000" & O"270" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 62;
-- L0554@00B3 E071B8CF8200000000.INTERNAL_ERR:  trace(from_microcode), directByte = 62;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00111110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
179 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"3E" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto traceError;
-- L0555@00B4 FF002E3FC000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010111000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
180 => '1' & '1' & '1' & "11111" & O"000" & O"270" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 60;
-- L0556@00B5 E071B8CF0200000000.ESTACK_ERR:  trace(from_microcode), directByte = 60;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00111100, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
181 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"3C" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto traceError;
-- L0557@00B6 FF002E3FC000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010111000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
182 => '1' & '1' & '1' & "11111" & O"000" & O"270" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 59;
-- L0558@00B7 E071B8CEC200000000.RSTACK_ERR:  trace(from_microcode), directByte = 59;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00111011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
183 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"3B" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outCRLF();
-- L0559@00B8 E064B27FC000000000.traceError:  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001001 else 011001001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
184 => '1' & '1' & '1' & "00000" & O"311" & O"311" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- trace(crlf);
-- L0560@00B9 E071B8FFC600000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
185 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = BEEP, outChar(from_microcode);
-- L0561@00BA E0663301C002000000.  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001100 else 011001100, directByte = 00000111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
186 => '1' & '1' & '1' & "00000" & O"314" & O"314" & X"07" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = 'E', outChar(from_microcode);
-- L0562@00BB E06633114002000000.  directByte = 'E', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001100 else 011001100, directByte = 01000101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
187 => '1' & '1' & '1' & "00000" & O"314" & O"314" & X"45" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = 'R', outChar(from_microcode);
-- L0563@00BC E06633148002000000.  directByte = 'R', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001100 else 011001100, directByte = 01010010, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
188 => '1' & '1' & '1' & "00000" & O"314" & O"314" & X"52" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = 'R', outChar(from_microcode);
-- L0564@00BD E06633148002000000.  directByte = 'R', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001100 else 011001100, directByte = 01010010, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
189 => '1' & '1' & '1' & "00000" & O"314" & O"314" & X"52" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outCRLF();
-- L0567@00BE E064B27FC000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001001 else 011001001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
190 => '1' & '1' & '1' & "00000" & O"311" & O"311" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- trace(crlf);
-- L0568@00BF E071B8FFC600000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
191 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto WarmStart;
-- L0569@00C0 FF00013FC000000000.  if false then next else WarmStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
192 => '1' & '1' & '1' & "11111" & O"000" & O"004" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= R_fromStack;
-- L0571@00C1 E000003FC000000020.pullRS:  alu <= R_fromStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0010, dummy = 0000;
193 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"2" & X"0",

-- ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
-- L0572@00C2 F15A803FC000000C00.  ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 010110101 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, alu <= 0000, dummy = 0000;
194 => '1' & '1' & '1' & "10001" & O"265" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & X"0" & X"0",

-- alu <= S_fromStack;
-- L0573@00C3 E000003FC000000030.  alu <= S_fromStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0011, dummy = 0000;
195 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"3" & X"0",

-- ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR else return;
-- L0574@00C4 F15A80BFC000000C00.  ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 010110101 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, alu <= 0000, dummy = 0000;
196 => '1' & '1' & '1' & "10001" & O"265" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & X"0" & X"0",

-- ReadCore(BP);
-- L0576@00C5 E068B47FC000800000.skipSpaces:  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011010001 else 011010001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
197 => '1' & '1' & '1' & "00000" & O"321" & O"321" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = ' ', if MDR_EQU_DB then skipSp;
-- L0577@00C6 E56400080000000000.  directByte = ' ', if MDR_EQU_DB then skipSp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 011001000 else 000000000, directByte = 00100000, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
198 => '1' & '1' & '1' & "00101" & O"310" & O"000" & X"20" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = TAB, if MDR_EQU_DB then skipSp else return;
-- L0578@00C7 E56400824000000000.  directByte = 0x09, if MDR_EQU_DB then skipSp else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 011001000 else 000000010, directByte = 00001001, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
199 => '1' & '1' & '1' & "00101" & O"310" & O"002" & X"09" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- BP <= inc, goto  skipSpaces;
-- L0579@00C8 FF00317FC00000C000.skipSp:  BP <= inc, if false then next else  skipSpaces;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011000101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
200 => '1' & '1' & '1' & "11111" & O"000" & O"305" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = CR, outChar(from_microcode);
-- L0581@00C9 E06633034002000000.outCRLF:  directByte = 0x0D, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001100 else 011001100, directByte = 00001101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
201 => '1' & '1' & '1' & "00000" & O"314" & O"314" & X"0D" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = LF, outChar(from_microcode);
-- L0582@00CA E06633028002000000.  directByte = 0x0A, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001100 else 011001100, directByte = 00001010, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
202 => '1' & '1' & '1' & "00000" & O"314" & O"314" & X"0A" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- back;
-- L0583@00CB E00100BFC000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
203 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if CHAROUT_READY then next else repeat;
-- L0585@00CC E200007FC000000000.outChar:  if CHAROUT_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00010) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
204 => '1' & '1' & '1' & "00010" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if CHAROUT_READY then next else repeat;
-- L0586@00CD E200007FC000000000.  if CHAROUT_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00010) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
205 => '1' & '1' & '1' & "00010" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- back;
-- L0587@00CE E00100BFC000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
206 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- nBUSREQ = 0, if nBUSACK then repeat else next;
-- L0589@00CF 6600803FC000000000.WriteCore:  nBUSREQ = 0, if nBUSACK then repeat else next;
--  nBUSREQ = 0, nWR = 1, nRD = 1, if (00110) then 000000001 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
207 => '0' & '1' & '1' & "00110" & O"001" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- nBUSREQ = 0, nWR = 0, back;
-- L0590@00D0 200100BFC000000000.  nBUSREQ = 0, nWR = 0, if true then return else return;
--  nBUSREQ = 0, nWR = 0, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
208 => '0' & '0' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- nBUSREQ = 0, if nBUSACK then repeat else next;
-- L0592@00D1 6600803FC000000000.ReadCore:  nBUSREQ = 0, if nBUSACK then repeat else next;
--  nBUSREQ = 0, nWR = 1, nRD = 1, if (00110) then 000000001 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
209 => '0' & '1' & '1' & "00110" & O"001" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- nBUSREQ = 0, nRD = 0, MDR <= from_Bus, back;
-- L0593@00D2 400100BFC000080000.  nBUSREQ = 0, nRD = 0, MDR <= from_Bus, if true then return else return;
--  nBUSREQ = 0, nWR = 1, nRD = 0, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 001, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
210 => '0' & '1' & '0' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"1" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- InlEnd <= InLine_start, trace(crlf);
-- L0597@00D3 E071B8FFC600020000.dump_input:  InlEnd <= InLine_start, trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
211 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "01" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- ReadCore(InlEnd);
-- L0598@00D4 E068B47FC000400000.dump_inlp:  ReadCore(InlEnd);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011010001 else 011010001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
212 => '1' & '1' & '1' & "00000" & O"321" & O"321" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = 9, trace(from_microcode);
-- L0599@00D5 E071B8C24200000000.  directByte = 9, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00001001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
213 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"09" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = NULL, if MDR_EQU_DB then dump_inex;
-- L0600@00D6 E56C00000000000000.  directByte = 0x00, if MDR_EQU_DB then dump_inex;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 011011000 else 000000000, directByte = 00000000, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
214 => '1' & '1' & '1' & "00101" & O"330" & O"000" & X"00" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- InlEnd <= inc, goto dump_inlp;
-- L0601@00D7 FF00353FC000040000.  InlEnd <= inc, if false then next else dump_inlp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011010100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
215 => '1' & '1' & '1' & "11111" & O"000" & O"324" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "10" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- trace(crlf);
-- L0602@00D8 E071B8FFC600000000.dump_inex:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
216 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- back;
-- L0603@00D9 E00100BFC000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
217 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = 1, trace(from_microcode);
-- L0605@00DA E071B8C04200000000.dump_il:  directByte = 1, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00000001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
218 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"01" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- trace(crlf);
-- L0606@00DB E071B8FFC600000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
219 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- T <= IL_PC, IL_PC <= zero;
-- L0607@00DC E000003FC840000000.  T <= IL_PC, IL_PC <= zero;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 001, DBGINDEX <= 00, IL_PC <= 001, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
220 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"1" & "00" & O"1" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if IL_PC_VALID then next else dump_il_ex;
-- L0608@00DD E30038BFC000000000.dump_il_lp:  if IL_PC_VALID then next else dump_il_ex;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00011) then 000000000 else 011100010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
221 => '1' & '1' & '1' & "00011" & O"000" & O"342" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = 2, trace(from_microcode);
-- L0609@00DE E071B8C08200000000.  directByte = 2, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00000010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
222 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"02" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = 3, trace(from_microcode);
-- L0610@00DF E071B8C0C200000000.  directByte = 3, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
223 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- trace(crlf);
-- L0611@00E0 E071B8FFC600000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011100011 else 011100011, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
224 => '1' & '1' & '1' & "00000" & O"343" & O"343" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= inc, goto dump_il_lp;
-- L0612@00E1 FF00377FC080000000.  IL_PC <= inc, if false then next else dump_il_lp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011011101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
225 => '1' & '1' & '1' & "11111" & O"000" & O"335" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= T, back;
-- L0613@00E2 E00100BFC0C0000000.dump_il_ex:  IL_PC <= T, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 011, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
226 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"3" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if DBG_READY then next else repeat;
-- L0615@00E3 E400007FC000000000.trace:  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
227 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if DBG_READY then next else repeat;
-- L0616@00E4 E400007FC000000000.  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
228 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if DBG_READY then next else repeat;
-- L0617@00E5 E400007FC000000000.  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
229 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- DBGINDEX <= zero, back;
-- L0618@00E6 E00100BFC400000000.  DBGINDEX <= zero, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 10, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
230 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "10" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- 281 location(s) in following ranges will be filled with default value
-- 00E7 .. 01FF

others => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0"
);

end microBasic_code;

