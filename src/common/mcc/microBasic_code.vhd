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
-- L0018.seq_cond: .if 5 values true, ILCODEBYTE_BIT7, CHAROUT_READY, IL_PC_VALID, DBG_READY, MDR_EQU_DB, nBUSACK, INLEND_MAX, INLEND_MIN, CHARIN_PRINTABLE, CHARIN_EQU_DB, CHARIN_READY, BP_IN_INPLINE, SVP_IN_INPLINE, MDR_IS_NUM, MDR_IS_ALPHA, ESTACK_IS_FULL, ESTACK_IS_EMPTY, MDR_MATCHES_ILCODEBYTE, RSTACK_IS_FULL, RSTACK_IS_EMPTY, ALU_READY, ALU_OVERFLOW, ALU_SIGN, ALU_DIVBY0, cond25, cond26, cond27, cond28, cond29, cond30, false default true;
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
constant seq_cond_ALU_DIVBY0: 	integer := 24;
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
--  cond(seq_cond_ALU_DIVBY0) => ALU_DIVBY0,
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
-- L0163.ExpStack: .regfield 3 values same, clear, push_T, startSwap, endSwap, push_MDR2, pop2, - default same;
--
alias mb_ExpStack: 	std_logic_vector(2 downto 0) is mb_uinstruction(11 downto 9);
constant ExpStack_same: 	std_logic_vector(2 downto 0) := O"0";
constant ExpStack_clear: 	std_logic_vector(2 downto 0) := O"1";
constant ExpStack_push_T: 	std_logic_vector(2 downto 0) := O"2";
constant ExpStack_startSwap: 	std_logic_vector(2 downto 0) := O"3";
constant ExpStack_endSwap: 	std_logic_vector(2 downto 0) := O"4";
constant ExpStack_push_MDR2: 	std_logic_vector(2 downto 0) := O"5";
constant ExpStack_pop2: 	std_logic_vector(2 downto 0) := O"6";
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
--			when ExpStack_pop2 =>
--				ExpStack <= pop2;
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
-- L0181.alu: .regfield 4 values nop, reset, R_fromStack, S_fromStack, add, sub, neg, mul, div, bcd_start, bcd_next, Yx16, -, -, -, - default nop;
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
constant alu_div: 	std_logic_vector(3 downto 0) := X"8";
constant alu_bcd_start: 	std_logic_vector(3 downto 0) := X"9";
constant alu_bcd_next: 	std_logic_vector(3 downto 0) := X"A";
constant alu_Yx16: 	std_logic_vector(3 downto 0) := X"B";
-- Value X"C" not allowed (name '-' is not assignable)
-- Value X"D" not allowed (name '-' is not assignable)
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
--			when alu_div =>
--				alu <= div;
--			when alu_bcd_start =>
--				alu <= bcd_start;
--			when alu_bcd_next =>
--				alu <= bcd_next;
--			when alu_Yx16 =>
--				alu <= Yx16;
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
-- L0233@0000 E000003FC000000000._reset:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
0 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- nop;
-- L0235@0001 E000003FC000000000._reset1:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
1 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- nop;
-- L0237@0002 E000003FC000000000._reset2:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
2 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- nop;
-- L0239@0003 E000003FC000000000._reset3:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
3 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- clear;
-- L0243@0004 E000003FC448025210.WarmStart:  DBGINDEX <= zero, IL_PC <= zero, BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, ExpStack <= clear, RetStack <= clear, alu <= reset;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 10, IL_PC <= 001, IL_OP <= 0, RetStack <= 01, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 001, SvPt <= 01, ExpStack <= 001, gotChar = 0, alu <= 0001, dummy = 0000;
4 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "10" & O"1" & '0' & "01" & O"0" & "00" & O"0" & "01" & O"1" & "01" & O"1" & '0' & X"1" & X"0",

-- WriteCore(BP, zero);
-- L0244@0005 E05A2D3FC000900000.  WriteCore(BP, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110100 else 010110100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
5 => '1' & '1' & '1' & "00000" & O"264" & O"264" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"2" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 4;
-- L0245@0006 E06432010200000000.  trace(from_microcode), directByte = 4;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00000100, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
6 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"04" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- trace(crlf);
-- L0247@0007 E064323FC600000000.fetch:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
7 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 2;
-- L0248@0008 E06432008200000000.  trace(from_microcode), directByte = 2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00000010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
8 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"02" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 3;
-- L0249@0009 E0643200C200000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
9 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_OP <= from_interpreter, IL_PC <= inc;
-- L0250@000A E000003FC0A0000000.  IL_OP <= from_interpreter, IL_PC <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 1, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
10 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"2" & '1' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= reset, if IL_PC_VALID then fork else INTERNAL_ERR;
-- L0251@000B E301A73FC000000010.  alu <= reset, if IL_PC_VALID then fork else INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00011) then 000000011 else 010011100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0001, dummy = 0000;
11 => '1' & '1' & '1' & "00011" & O"003" & O"234" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"1" & X"0",

-- traceString 62;
-- L0254@000C E064320F8200000000.badop:  trace(from_microcode), directByte = 62;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00111110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
12 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"3E" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto INTERNAL_ERR;
-- L0256@000D FF00273FC000000000.  if false then next else INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010011100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
13 => '1' & '1' & '1' & "11111" & O"000" & O"234" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 15;
-- L0261@000E E0643203C200000000.  trace(from_microcode), directByte = 15;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00001111, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
14 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"0F" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- ExpStack <= startSwap;
-- L0262@000F E000003FC000000600.  ExpStack <= startSwap;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 011, gotChar = 0, alu <= 0000, dummy = 0000;
15 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"3" & '0' & X"0" & X"0",

-- ExpStack <= endSwap;
-- L0263@0010 E000003FC000000800.  ExpStack <= endSwap;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, alu <= 0000, dummy = 0000;
16 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & X"0" & X"0",

-- goto fetch;
-- L0264@0011 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
17 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 15;
-- L0267@0012 E0643203C200000000.  trace(from_microcode), directByte = 15;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00001111, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
18 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"0F" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0268@0013 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
19 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 12;
-- L0273@0014 E06432030200000000.  trace(from_microcode), directByte = 12;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00001100, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
20 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"0C" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0274@0015 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
21 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 10;
-- L0279@0016 E06432028200000000.  trace(from_microcode), directByte = 10;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00001010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
22 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"0A" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if BP_IN_INPLINE then next else ptr_exc;
-- L0280@0017 EC0006FFC000000000.  if BP_IN_INPLINE then next else ptr_exc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01100) then 000000000 else 000011011, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
23 => '1' & '1' & '1' & "01100" & O"000" & O"033" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- SvPt <= BP, goto fetch;
-- L0281@0018 FF0001FFC000002000.save_bp:  SvPt <= BP, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 10, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
24 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "10" & O"0" & '0' & X"0" & X"0",

-- traceString 11;
-- L0286@0019 E0643202C200000000.  trace(from_microcode), directByte = 11;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00001011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
25 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"0B" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if SVP_IN_INPLINE then save_bp;
-- L0287@001A ED0C003FC000000000.  if SVP_IN_INPLINE then save_bp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01101) then 000011000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
26 => '1' & '1' & '1' & "01101" & O"030" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- SvPt <= BP, BP <= SvPt, goto fetch;
-- L0288@001B FF0001FFC00000A000.ptr_exc:  SvPt <= BP, BP <= SvPt, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 010, SvPt <= 10, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
27 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"2" & "10" & O"0" & '0' & X"0" & X"0",

-- traceString 25;
-- L0293@001C E06432064200000000.  trace(from_microcode), directByte = 25;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00011001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
28 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"19" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= R_fromStack, ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
-- L0294@001D F14F003FC000000C20.  alu <= R_fromStack, ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 010011110 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, alu <= 0010, dummy = 0000;
29 => '1' & '1' & '1' & "10001" & O"236" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & X"2" & X"0",

-- alu <= neg, if ALU_READY then next else repeat;
-- L0295@001E F500007FC000000060.  alu <= neg, if ALU_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0110, dummy = 0000;
30 => '1' & '1' & '1' & "10101" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"6" & X"0",

-- T <= from_alu, if  ALU_OVERFLOW then OVERFLOW_ERR else alu_done;
-- L0296@001F F64C097FE800000000.  T <= from_alu, if  ALU_OVERFLOW then OVERFLOW_ERR else alu_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 010011000 else 000100101, directByte = 11111111, T <= 101, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
31 => '1' & '1' & '1' & "10110" & O"230" & O"045" & X"FF" & O"5" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 22;
-- L0301@0020 E06432058200000000.  trace(from_microcode), directByte = 22;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00010110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
32 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"16" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= R_fromStack, ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
-- L0302@0021 F14F003FC000000C20.  alu <= R_fromStack, ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 010011110 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, alu <= 0010, dummy = 0000;
33 => '1' & '1' & '1' & "10001" & O"236" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & X"2" & X"0",

-- alu <= S_fromStack, ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
-- L0303@0022 F14F003FC000000C30.  alu <= S_fromStack, ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 010011110 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, alu <= 0011, dummy = 0000;
34 => '1' & '1' & '1' & "10001" & O"236" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & X"3" & X"0",

-- alu <= add, if ALU_READY then next else repeat;
-- L0304@0023 F500007FC000000040.  alu <= add, if ALU_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0100, dummy = 0000;
35 => '1' & '1' & '1' & "10101" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"4" & X"0",

-- T <= from_alu, if  ALU_OVERFLOW then OVERFLOW_ERR;
-- L0305@0024 F64C003FE800000000.  T <= from_alu, if  ALU_OVERFLOW then OVERFLOW_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 010011000 else 000000000, directByte = 11111111, T <= 101, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
36 => '1' & '1' & '1' & "10110" & O"230" & O"000" & X"FF" & O"5" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- ExpStack <= push_T, goto fetch;
-- L0306@0025 FF0001FFC000000400.alu_done:  ExpStack <= push_T, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 010, gotChar = 0, alu <= 0000, dummy = 0000;
37 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"2" & '0' & X"0" & X"0",

-- traceString 23;
-- L0311@0026 E0643205C200000000.  trace(from_microcode), directByte = 23;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00010111, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
38 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"17" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= R_fromStack, ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
-- L0312@0027 F14F003FC000000C20.  alu <= R_fromStack, ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 010011110 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, alu <= 0010, dummy = 0000;
39 => '1' & '1' & '1' & "10001" & O"236" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & X"2" & X"0",

-- alu <= S_fromStack, ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
-- L0313@0028 F14F003FC000000C30.  alu <= S_fromStack, ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 010011110 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, alu <= 0011, dummy = 0000;
40 => '1' & '1' & '1' & "10001" & O"236" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & X"3" & X"0",

-- alu <= sub, if ALU_READY then next else repeat;
-- L0314@0029 F500007FC000000050.  alu <= sub, if ALU_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0101, dummy = 0000;
41 => '1' & '1' & '1' & "10101" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"5" & X"0",

-- T <= from_alu, if  ALU_OVERFLOW then OVERFLOW_ERR else alu_done;
-- L0315@002A F64C097FE800000000.  T <= from_alu, if  ALU_OVERFLOW then OVERFLOW_ERR else alu_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 010011000 else 000100101, directByte = 11111111, T <= 101, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
42 => '1' & '1' & '1' & "10110" & O"230" & O"045" & X"FF" & O"5" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 24;
-- L0320@002B E06432060200000000.  trace(from_microcode), directByte = 24;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00011000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
43 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"18" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= R_fromStack, ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
-- L0321@002C F14F003FC000000C20.  alu <= R_fromStack, ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 010011110 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, alu <= 0010, dummy = 0000;
44 => '1' & '1' & '1' & "10001" & O"236" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & X"2" & X"0",

-- alu <= S_fromStack, ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
-- L0322@002D F14F003FC000000C30.  alu <= S_fromStack, ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 010011110 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, alu <= 0011, dummy = 0000;
45 => '1' & '1' & '1' & "10001" & O"236" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & X"3" & X"0",

-- alu <= mul, if ALU_READY then next else repeat;
-- L0323@002E F500007FC000000070.  alu <= mul, if ALU_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0111, dummy = 0000;
46 => '1' & '1' & '1' & "10101" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"7" & X"0",

-- T <= from_alu, if  ALU_OVERFLOW then OVERFLOW_ERR else alu_done;
-- L0324@002F F64C097FE800000000.  T <= from_alu, if  ALU_OVERFLOW then OVERFLOW_ERR else alu_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 010011000 else 000100101, directByte = 11111111, T <= 101, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
47 => '1' & '1' & '1' & "10110" & O"230" & O"045" & X"FF" & O"5" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 26;
-- L0329@0030 E06432068200000000.  trace(from_microcode), directByte = 26;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00011010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
48 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"1A" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- alu <= R_fromStack, ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
-- L0330@0031 F14F003FC000000C20.  alu <= R_fromStack, ExpStack <= pop2, if ESTACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 010011110 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, alu <= 0010, dummy = 0000;
49 => '1' & '1' & '1' & "10001" & O"236" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & X"2" & X"0",

-- alu <= bcd_start;
-- L0331@0032 E000003FC000000090.  alu <= bcd_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1001, dummy = 0000;
50 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"9" & X"0",

-- alu <= bcd_next, if ALU_READY then next else repeat;
-- L0332@0033 F500007FC0000000A0.  alu <= bcd_next, if ALU_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1010, dummy = 0000;
51 => '1' & '1' & '1' & "10101" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"A" & X"0",

-- if ALU_SIGN then next else pn_plus;
-- L0333@0034 F7000DBFC000000000.  if ALU_SIGN then next else pn_plus;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10111) then 000000000 else 000110110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
52 => '1' & '1' & '1' & "10111" & O"000" & O"066" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = '-', outChar(from_microcode);
-- L0334@0035 E058AC4B4002000000.  directByte = '-', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110001 else 010110001, directByte = 00101101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
53 => '1' & '1' & '1' & "00000" & O"261" & O"261" & X"2D" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outChar(from_YtoAlpha), alu <= Yx16;
-- L0335@0036 E058AC7FC0050000B0.pn_plus:  outChar(from_YtoAlpha), alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110001 else 010110001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1011, dummy = 0000;
54 => '1' & '1' & '1' & "00000" & O"261" & O"261" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"B" & X"0",

-- outChar(from_YtoAlpha), alu <= Yx16;
-- L0336@0037 E058AC7FC0050000B0.  outChar(from_YtoAlpha), alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110001 else 010110001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1011, dummy = 0000;
55 => '1' & '1' & '1' & "00000" & O"261" & O"261" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"B" & X"0",

-- outChar(from_YtoAlpha), alu <= Yx16;
-- L0337@0038 E058AC7FC0050000B0.  outChar(from_YtoAlpha), alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110001 else 010110001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1011, dummy = 0000;
56 => '1' & '1' & '1' & "00000" & O"261" & O"261" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"B" & X"0",

-- outChar(from_YtoAlpha), alu <= Yx16;
-- L0338@0039 E058AC7FC0050000B0.  outChar(from_YtoAlpha), alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110001 else 010110001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1011, dummy = 0000;
57 => '1' & '1' & '1' & "00000" & O"261" & O"261" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"B" & X"0",

-- outChar(from_YtoAlpha), alu <= Yx16;
-- L0339@003A E058AC7FC0050000B0.  outChar(from_YtoAlpha), alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110001 else 010110001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1011, dummy = 0000;
58 => '1' & '1' & '1' & "00000" & O"261" & O"261" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"B" & X"0",

-- outChar(from_YtoAlpha), alu <= Yx16;
-- L0340@003B E058AC7FC0050000B0.  outChar(from_YtoAlpha), alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110001 else 010110001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 1011, dummy = 0000;
59 => '1' & '1' & '1' & "00000" & O"261" & O"261" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"B" & X"0",

-- goto fetch;
-- L0341@003C FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
60 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 18;
-- L0346@003D E06432048200000000.  trace(from_microcode), directByte = 18;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00010010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
61 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"12" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- BP <= inc, ReadCore(BP);
-- L0347@003E E05B2DBFC00080C000.pq_loop:  BP <= inc, ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110110 else 010110110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
62 => '1' & '1' & '1' & "00000" & O"266" & O"266" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"0" & "00" & O"3" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = '"', if MDR_EQU_DB then fetch;
-- L0348@003F E50380088000000000.  directByte = '"', if MDR_EQU_DB then fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 000000111 else 000000000, directByte = 00100010, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
63 => '1' & '1' & '1' & "00101" & O"007" & O"000" & X"22" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outChar(from_MDR);
-- L0349@0040 E058AC7FC004000000.  outChar(from_MDR);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110001 else 010110001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 100, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
64 => '1' & '1' & '1' & "00000" & O"261" & O"261" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"4" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = CR, if MDR_EQU_DB then STRING_ERR else pq_loop;
-- L0350@0041 E54D0F834000000000.  directByte = 0x0D, if MDR_EQU_DB then STRING_ERR else pq_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 010011010 else 000111110, directByte = 00001101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
65 => '1' & '1' & '1' & "00101" & O"232" & O"076" & X"0D" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 6;
-- L0355@0042 E06432018200000000.  trace(from_microcode), directByte = 6;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00000110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
66 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"06" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outCRLF();
-- L0356@0043 E0572BBFC000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010101110 else 010101110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
67 => '1' & '1' & '1' & "00000" & O"256" & O"256" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0357@0044 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
68 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 5;
-- L0362@0045 E06432014200000000.  trace(from_microcode), directByte = 5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00000101, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
69 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"05" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outChar(from_interpreter);
-- L0363@0046 E058AC7FC001000000.pc_loop:  outChar(from_interpreter);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110001 else 010110001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 001, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
70 => '1' & '1' & '1' & "00000" & O"261" & O"261" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"1" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 3;
-- L0364@0047 E0643200C200000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
71 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if ILCODEBYTE_BIT7 then pc_exit;
-- L0365@0048 E125003FC000000000.  if ILCODEBYTE_BIT7 then pc_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00001) then 001001010 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
72 => '1' & '1' & '1' & "00001" & O"112" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= inc, goto pc_loop;
-- L0366@0049 FF0011BFC080000000.  IL_PC <= inc, if false then next else pc_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001000110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
73 => '1' & '1' & '1' & "11111" & O"000" & O"106" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= inc, goto fetch;
-- L0367@004A FF0001FFC080000000.pc_exit:  IL_PC <= inc, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
74 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 19;
-- L0372@004B E0643204C200000000.  trace(from_microcode), directByte = 19;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00010011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
75 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"13" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if RSTACK_IS_EMPTY then RSTACK_ERR;
-- L0373@004C F450003FC000000000.  if RSTACK_IS_EMPTY then RSTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 010100000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
76 => '1' & '1' & '1' & "10100" & O"240" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= RetStack, RetStack <= pop, goto fetch;
-- L0374@004D FF0001FFC1D0000000.  IL_PC <= RetStack, RetStack <= pop, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 111, IL_OP <= 0, RetStack <= 10, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
77 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"7" & '0' & "10" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 20;
-- L0379@004E E06432050200000000.  trace(from_microcode), directByte = 20;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00010100, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
78 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"14" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if RSTACK_IS_FULL then RSTACK_ERR;
-- L0380@004F F350003FC000000000.  if RSTACK_IS_FULL then RSTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 010100000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
79 => '1' & '1' & '1' & "10011" & O"240" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- RetStack <= push_IL_PC_PLUS_1, goto jump;
-- L0381@0050 FF0014BFC018000000.  RetStack <= push_IL_PC_PLUS_1, if false then next else jump;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001010010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 11, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
80 => '1' & '1' & '1' & "11111" & O"000" & O"122" & X"FF" & O"0" & "00" & O"0" & '0' & "11" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 21;
-- L0386@0051 E06432054200000000.  trace(from_microcode), directByte = 21;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00010101, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
81 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"15" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= direct11, traceString 2;
-- L0387@0052 E06432008380000000.jump:  IL_PC <= direct11, trace(from_microcode), directByte = 2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00000010, T <= 000, DBGINDEX <= 01, IL_PC <= 110, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
82 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"02" & O"0" & "01" & O"6" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0388@0053 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
83 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 8;
-- L0393@0054 E06432020200000000.  trace(from_microcode), directByte = 8;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00001000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
84 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"08" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- InlEnd <= InLine_start;
-- L0394@0055 E000003FC000020000.gl:  InlEnd <= InLine_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
85 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "01" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if CHARIN_READY then next else repeat;
-- L0395@0056 EB00007FC000000000.gl_loop:  if CHARIN_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01011) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
86 => '1' & '1' & '1' & "01011" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if CHARIN_PRINTABLE then gl_print;
-- L0396@0057 E92E803FC000000000.  if CHARIN_PRINTABLE then gl_print;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01001) then 001011101 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
87 => '1' & '1' & '1' & "01001" & O"135" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = CR, if CHARIN_EQU_DB then gl_cr;
-- L0397@0058 EA3480034000000000.  directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 001101001 else 000000000, directByte = 00001101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
88 => '1' & '1' & '1' & "01010" & O"151" & O"000" & X"0D" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = BACKSPACE, if CHARIN_EQU_DB then gl_bs;
-- L0398@0059 EA3300020000000000.  directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 001100110 else 000000000, directByte = 00001000, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
89 => '1' & '1' & '1' & "01010" & O"146" & O"000" & X"08" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = ESC, if CHARIN_EQU_DB then gl_esc;
-- L0399@005A EA318006C000000000.  directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 001100011 else 000000000, directByte = 00011011, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
90 => '1' & '1' & '1' & "01010" & O"143" & O"000" & X"1B" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = BEEP, outChar(from_microcode);
-- L0402@005B E058AC41C002000000.gl_ignore:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110001 else 010110001, directByte = 00000111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
91 => '1' & '1' & '1' & "00000" & O"261" & O"261" & X"07" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- gotChar = 1, goto gl_loop;
-- L0403@005C FF0015BFC000000100.  gotChar = 1, if false then next else gl_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001010110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, alu <= 0000, dummy = 0000;
92 => '1' & '1' & '1' & "11111" & O"000" & O"126" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & X"0" & X"0",

-- if INLEND_MAX then gl_ignore;
-- L0405@005D E72D803FC000000000.gl_print:  if INLEND_MAX then gl_ignore;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00111) then 001011011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
93 => '1' & '1' & '1' & "00111" & O"133" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outChar(from_charin);
-- L0406@005E E058AC7FC003000000.  outChar(from_charin);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110001 else 010110001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 011, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
94 => '1' & '1' & '1' & "00000" & O"261" & O"261" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"3" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- WriteCore(InlEnd, CHARIN);
-- L0407@005F E05A2D3FC000580000.  WriteCore(InlEnd, CHARIN);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110100 else 010110100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
95 => '1' & '1' & '1' & "00000" & O"264" & O"264" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"3" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- InlEnd <= inc;
-- L0408@0060 E000003FC000040000.  InlEnd <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
96 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "10" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- WriteCore(InlEnd, zero);
-- L0409@0061 E05A2D3FC000500000.gl_write0:  WriteCore(InlEnd, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110100 else 010110100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
97 => '1' & '1' & '1' & "00000" & O"264" & O"264" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"2" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- gotChar = 1, goto gl_loop;
-- L0410@0062 FF0015BFC000000100.  gotChar = 1, if false then next else gl_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001010110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, alu <= 0000, dummy = 0000;
98 => '1' & '1' & '1' & "11111" & O"000" & O"126" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & X"0" & X"0",

-- directByte = BEEP, outChar(from_microcode);
-- L0412@0063 E058AC41C002000000.gl_esc:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110001 else 010110001, directByte = 00000111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
99 => '1' & '1' & '1' & "00000" & O"261" & O"261" & X"07" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outCRLF();
-- L0413@0064 E0572BBFC000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010101110 else 010101110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
100 => '1' & '1' & '1' & "00000" & O"256" & O"256" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- gotChar = 1, goto gl;
-- L0414@0065 FF00157FC000000100.  gotChar = 1, if false then next else gl;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001010101, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, alu <= 0000, dummy = 0000;
101 => '1' & '1' & '1' & "11111" & O"000" & O"125" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & X"0" & X"0",

-- if INLEND_MIN then gl_ignore;
-- L0416@0066 E82D803FC000000000.gl_bs:  if INLEND_MIN then gl_ignore;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01000) then 001011011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
102 => '1' & '1' & '1' & "01000" & O"133" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = BACKSPACE, outChar(from_microcode);
-- L0417@0067 E058AC420002000000.  directByte = 0x08, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110001 else 010110001, directByte = 00001000, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
103 => '1' & '1' & '1' & "00000" & O"261" & O"261" & X"08" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- InlEnd <= dec, goto gl_write0;
-- L0418@0068 FF00187FC000060000.  InlEnd <= dec, if false then next else gl_write0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001100001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 11, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
104 => '1' & '1' & '1' & "11111" & O"000" & O"141" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "11" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- WriteCore(InlEnd, CHARIN);
-- L0420@0069 E05A2D3FC000580000.gl_cr:  WriteCore(InlEnd, CHARIN);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110100 else 010110100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
105 => '1' & '1' & '1' & "00000" & O"264" & O"264" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"3" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- InlEnd <= inc;
-- L0421@006A E000003FC000040000.  InlEnd <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
106 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "10" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- WriteCore(InlEnd, zero);
-- L0422@006B E05A2D3FC000500000.  WriteCore(InlEnd, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110100 else 010110100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
107 => '1' & '1' & '1' & "00000" & O"264" & O"264" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"2" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- dump_input();
-- L0423@006C E05C2E3FC000000000.  dump_input();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010111000 else 010111000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
108 => '1' & '1' & '1' & "00000" & O"270" & O"270" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outCRLF();
-- L0424@006D E0572BBFC000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010101110 else 010101110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
109 => '1' & '1' & '1' & "00000" & O"256" & O"256" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- gotChar = 1, BP <= Inline_start, goto fetch;
-- L0425@006E FF0001FFC000004100.  gotChar = 1, BP <= Inline_start, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 001, SvPt <= 00, ExpStack <= 000, gotChar = 1, alu <= 0000, dummy = 0000;
110 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"1" & "00" & O"0" & '1' & X"0" & X"0",

-- traceString 7;
-- L0430@006F E0643201C200000000.  trace(from_microcode), directByte = 7;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00000111, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
111 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"07" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= pc_plus_off6;
-- L0431@0070 E000003FC100000000.  IL_PC <= pc_plus_off6;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 100, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
112 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"4" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 2;
-- L0432@0071 E06432008200000000.br_exit:  trace(from_microcode), directByte = 2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00000010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
113 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"02" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0433@0072 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
114 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto badop;
-- L0436@0073 FF00033FC000000000.  if false then next else badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
115 => '1' & '1' & '1' & "11111" & O"000" & O"014" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 17;
-- L0441@0074 E06432044200000000.  trace(from_microcode), directByte = 17;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00010001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
116 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"11" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- T <= IL_PC, BP <= save, skipSpaces();
-- L0442@0075 E0552ABFC800010000.  T <= IL_PC, BP <= save, skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010101010 else 010101010, directByte = 11111111, T <= 001, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 100, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
117 => '1' & '1' & '1' & "00000" & O"252" & O"252" & X"FF" & O"1" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"4" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 3;
-- L0443@0076 E0643200C200000000.bc_loop:  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
118 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- ReadCore(BP);
-- L0444@0077 E05B2DBFC000800000.  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110110 else 010110110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
119 => '1' & '1' & '1' & "00000" & O"266" & O"266" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
-- L0445@0078 F2001F3FC000000000.  if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10010) then 000000000 else 001111100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
120 => '1' & '1' & '1' & "10010" & O"000" & O"174" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if ILCODEBYTE_BIT7 then bc_match;
-- L0446@0079 E13D803FC000000000.  if ILCODEBYTE_BIT7 then bc_match;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00001) then 001111011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
121 => '1' & '1' & '1' & "00001" & O"173" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- BP <= inc, IL_PC <= inc, goto bc_loop;
-- L0447@007A FF001DBFC08000C000.  BP <= inc, IL_PC <= inc, if false then next else bc_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001110110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
122 => '1' & '1' & '1' & "11111" & O"000" & O"166" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & X"0" & X"0",

-- BP <= inc, IL_PC <= inc, goto fetch;
-- L0448@007B FF0001FFC08000C000.bc_match:  BP <= inc, IL_PC <= inc, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
123 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & X"0" & X"0",

-- BP <= restore, IL_PC <= T;
-- L0449@007C E000003FC0C0014000.bc_exit:  BP <= restore, IL_PC <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 011, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 101, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
124 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"3" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"5" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= pc_plus_off5, goto br_exit;
-- L0450@007D FF001C7FC140000000.  IL_PC <= pc_plus_off5, if false then next else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001110001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
125 => '1' & '1' & '1' & "11111" & O"000" & O"161" & X"FF" & O"0" & "00" & O"5" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 16;
-- L0458@007E E06432040200000000.  trace(from_microcode), directByte = 16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00010000, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
126 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"10" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- skipSpaces();
-- L0459@007F E0552ABFC000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010101010 else 010101010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
127 => '1' & '1' & '1' & "00000" & O"252" & O"252" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
-- L0460@0080 EF41003FC000200000.  MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01111) then 010000010 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 100, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
128 => '1' & '1' & '1' & "01111" & O"202" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"4" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= pc_plus_off5, goto br_exit;
-- L0461@0081 FF001C7FC140000000.  IL_PC <= pc_plus_off5, if false then next else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001110001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
129 => '1' & '1' & '1' & "11111" & O"000" & O"161" & X"FF" & O"0" & "00" & O"5" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if ESTACK_IS_FULL then ESTACK_ERR;
-- L0462@0082 F04F003FC000000000.bv_exec:  if ESTACK_IS_FULL then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 010011110 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
130 => '1' & '1' & '1' & "10000" & O"236" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- ExpStack <= push_MDR2, goto br_exit;
-- L0463@0083 FF001C7FC000000A00.  ExpStack <= push_MDR2, if false then next else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001110001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 101, gotChar = 0, alu <= 0000, dummy = 0000;
131 => '1' & '1' & '1' & "11111" & O"000" & O"161" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"5" & '0' & X"0" & X"0",

-- goto badop;
-- L0466@0084 FF00033FC000000000.  if false then next else badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
132 => '1' & '1' & '1' & "11111" & O"000" & O"014" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 14;
-- L0471@0085 E06432038200000000.  trace(from_microcode), directByte = 14;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00001110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
133 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"0E" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- skipSpaces();
-- L0472@0086 E0552ABFC000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010101010 else 010101010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
134 => '1' & '1' & '1' & "00000" & O"252" & O"252" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- T <= zero, if MDR_IS_NUM then bn_loop;
-- L0473@0087 EE45803FD000000000.  T <= zero, if MDR_IS_NUM then bn_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01110) then 010001011 else 000000000, directByte = 11111111, T <= 010, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
135 => '1' & '1' & '1' & "01110" & O"213" & O"000" & X"FF" & O"2" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= pc_plus_off5;
-- L0474@0088 E000003FC140000000.  IL_PC <= pc_plus_off5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
136 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"5" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 2;
-- L0475@0089 E06432008200000000.bn_exit:  trace(from_microcode), directByte = 2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00000010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
137 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"02" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0476@008A FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
138 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- T <= T10_plus_mdr, BP <= inc;
-- L0477@008B E000003FD80000C000.bn_loop:  T <= T10_plus_mdr, BP <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 011, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
139 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"3" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & X"0" & X"0",

-- ReadCore(BP);
-- L0478@008C E05B2DBFC000800000.  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110110 else 010110110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
140 => '1' & '1' & '1' & "00000" & O"266" & O"266" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if MDR_IS_NUM then bn_loop;
-- L0479@008D EE45803FC000000000.  if MDR_IS_NUM then bn_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01110) then 010001011 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
141 => '1' & '1' & '1' & "01110" & O"213" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if ESTACK_IS_FULL then ESTACK_ERR;
-- L0480@008E F04F003FC000000000.  if ESTACK_IS_FULL then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 010011110 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
142 => '1' & '1' & '1' & "10000" & O"236" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- ExpStack <= push_T, goto bn_exit;
-- L0481@008F FF00227FC000000400.  ExpStack <= push_T, if false then next else bn_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010001001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 010, gotChar = 0, alu <= 0000, dummy = 0000;
143 => '1' & '1' & '1' & "11111" & O"000" & O"211" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"2" & '0' & X"0" & X"0",

-- goto badop;
-- L0484@0090 FF00033FC000000000.  if false then next else badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
144 => '1' & '1' & '1' & "11111" & O"000" & O"014" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 13;
-- L0489@0091 E06432034200000000.  trace(from_microcode), directByte = 13;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00001101, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
145 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"0D" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- skipSpaces();
-- L0490@0092 E0552ABFC000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010101010 else 010101010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
146 => '1' & '1' & '1' & "00000" & O"252" & O"252" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = CR, if MDR_EQU_DB then fetch;
-- L0491@0093 E50380034000000000.  directByte = 0x0D, if MDR_EQU_DB then fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 000000111 else 000000000, directByte = 00001101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
147 => '1' & '1' & '1' & "00101" & O"007" & O"000" & X"0D" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= pc_plus_off5;
-- L0492@0094 E000003FC140000000.  IL_PC <= pc_plus_off5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
148 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"5" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 2;
-- L0493@0095 E06432008200000000.  trace(from_microcode), directByte = 2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00000010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
149 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"02" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto fetch;
-- L0494@0096 FF0001FFC000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
150 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto badop;
-- L0497@0097 FF00033FC000000000.  if false then next else badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
151 => '1' & '1' & '1' & "11111" & O"000" & O"014" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 58;
-- L0499@0098 E064320E8200000000.OVERFLOW_ERR:  trace(from_microcode), directByte = 58;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00111010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
152 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"3A" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto traceError;
-- L0500@0099 FF00287FC000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010100001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
153 => '1' & '1' & '1' & "11111" & O"000" & O"241" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 61;
-- L0501@009A E064320F4200000000.STRING_ERR:  trace(from_microcode), directByte = 61;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00111101, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
154 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"3D" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto traceError;
-- L0502@009B FF00287FC000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010100001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
155 => '1' & '1' & '1' & "11111" & O"000" & O"241" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 62;
-- L0503@009C E064320F8200000000.INTERNAL_ERR:  trace(from_microcode), directByte = 62;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00111110, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
156 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"3E" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto traceError;
-- L0504@009D FF00287FC000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010100001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
157 => '1' & '1' & '1' & "11111" & O"000" & O"241" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 60;
-- L0505@009E E064320F0200000000.ESTACK_ERR:  trace(from_microcode), directByte = 60;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00111100, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
158 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"3C" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto traceError;
-- L0506@009F FF00287FC000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010100001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
159 => '1' & '1' & '1' & "11111" & O"000" & O"241" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- traceString 59;
-- L0507@00A0 E064320EC200000000.RSTACK_ERR:  trace(from_microcode), directByte = 59;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00111011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
160 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"3B" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outCRLF();
-- L0508@00A1 E0572BBFC000000000.traceError:  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010101110 else 010101110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
161 => '1' & '1' & '1' & "00000" & O"256" & O"256" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- trace(crlf);
-- L0509@00A2 E064323FC600000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
162 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = BEEP, outChar(from_microcode);
-- L0510@00A3 E058AC41C002000000.  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110001 else 010110001, directByte = 00000111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
163 => '1' & '1' & '1' & "00000" & O"261" & O"261" & X"07" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = 'E', outChar(from_microcode);
-- L0511@00A4 E058AC514002000000.  directByte = 'E', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110001 else 010110001, directByte = 01000101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
164 => '1' & '1' & '1' & "00000" & O"261" & O"261" & X"45" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = 'R', outChar(from_microcode);
-- L0512@00A5 E058AC548002000000.  directByte = 'R', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110001 else 010110001, directByte = 01010010, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
165 => '1' & '1' & '1' & "00000" & O"261" & O"261" & X"52" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = 'R', outChar(from_microcode);
-- L0513@00A6 E058AC548002000000.  directByte = 'R', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110001 else 010110001, directByte = 01010010, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
166 => '1' & '1' & '1' & "00000" & O"261" & O"261" & X"52" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- outCRLF();
-- L0516@00A7 E0572BBFC000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010101110 else 010101110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
167 => '1' & '1' & '1' & "00000" & O"256" & O"256" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- trace(crlf);
-- L0517@00A8 E064323FC600000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
168 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- goto WarmStart;
-- L0518@00A9 FF00013FC000000000.  if false then next else WarmStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000100, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
169 => '1' & '1' & '1' & "11111" & O"000" & O"004" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- ReadCore(BP);
-- L0520@00AA E05B2DBFC000800000.skipSpaces:  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110110 else 010110110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
170 => '1' & '1' & '1' & "00000" & O"266" & O"266" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = ' ', if MDR_EQU_DB then skipSp;
-- L0521@00AB E55680080000000000.  directByte = ' ', if MDR_EQU_DB then skipSp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 010101101 else 000000000, directByte = 00100000, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
171 => '1' & '1' & '1' & "00101" & O"255" & O"000" & X"20" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = TAB, if MDR_EQU_DB then skipSp else return;
-- L0522@00AC E55680824000000000.  directByte = 0x09, if MDR_EQU_DB then skipSp else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 010101101 else 000000010, directByte = 00001001, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
172 => '1' & '1' & '1' & "00101" & O"255" & O"002" & X"09" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- BP <= inc, goto  skipSpaces;
-- L0523@00AD FF002ABFC00000C000.skipSp:  BP <= inc, if false then next else  skipSpaces;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010101010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
173 => '1' & '1' & '1' & "11111" & O"000" & O"252" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = CR, outChar(from_microcode);
-- L0525@00AE E058AC434002000000.outCRLF:  directByte = 0x0D, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110001 else 010110001, directByte = 00001101, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
174 => '1' & '1' & '1' & "00000" & O"261" & O"261" & X"0D" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = LF, outChar(from_microcode);
-- L0526@00AF E058AC428002000000.  directByte = 0x0A, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110001 else 010110001, directByte = 00001010, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
175 => '1' & '1' & '1' & "00000" & O"261" & O"261" & X"0A" & O"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- back;
-- L0527@00B0 E00100BFC000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
176 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if CHAROUT_READY then next else repeat;
-- L0529@00B1 E200007FC000000000.outChar:  if CHAROUT_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00010) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
177 => '1' & '1' & '1' & "00010" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if CHAROUT_READY then next else repeat;
-- L0530@00B2 E200007FC000000000.  if CHAROUT_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00010) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
178 => '1' & '1' & '1' & "00010" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- back;
-- L0531@00B3 E00100BFC000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
179 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- nBUSREQ = 0, if nBUSACK then repeat else next;
-- L0533@00B4 6600803FC000000000.WriteCore:  nBUSREQ = 0, if nBUSACK then repeat else next;
--  nBUSREQ = 0, nWR = 1, nRD = 1, if (00110) then 000000001 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
180 => '0' & '1' & '1' & "00110" & O"001" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- nBUSREQ = 0, nWR = 0, back;
-- L0534@00B5 200100BFC000000000.  nBUSREQ = 0, nWR = 0, if true then return else return;
--  nBUSREQ = 0, nWR = 0, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
181 => '0' & '0' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- nBUSREQ = 0, if nBUSACK then repeat else next;
-- L0536@00B6 6600803FC000000000.ReadCore:  nBUSREQ = 0, if nBUSACK then repeat else next;
--  nBUSREQ = 0, nWR = 1, nRD = 1, if (00110) then 000000001 else 000000000, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
182 => '0' & '1' & '1' & "00110" & O"001" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- nBUSREQ = 0, nRD = 0, MDR <= from_Bus, back;
-- L0537@00B7 400100BFC000080000.  nBUSREQ = 0, nRD = 0, MDR <= from_Bus, if true then return else return;
--  nBUSREQ = 0, nWR = 1, nRD = 0, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 001, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
183 => '0' & '1' & '0' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"1" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- InlEnd <= InLine_start, trace(crlf);
-- L0541@00B8 E064323FC600020000.dump_input:  InlEnd <= InLine_start, trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
184 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "01" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- ReadCore(InlEnd);
-- L0542@00B9 E05B2DBFC000400000.dump_inlp:  ReadCore(InlEnd);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010110110 else 010110110, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
185 => '1' & '1' & '1' & "00000" & O"266" & O"266" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = 9, trace(from_microcode);
-- L0543@00BA E06432024200000000.  directByte = 9, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00001001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
186 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"09" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = NULL, if MDR_EQU_DB then dump_inex;
-- L0544@00BB E55E80000000000000.  directByte = 0x00, if MDR_EQU_DB then dump_inex;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 010111101 else 000000000, directByte = 00000000, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
187 => '1' & '1' & '1' & "00101" & O"275" & O"000" & X"00" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- InlEnd <= inc, goto dump_inlp;
-- L0545@00BC FF002E7FC000040000.  InlEnd <= inc, if false then next else dump_inlp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010111001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
188 => '1' & '1' & '1' & "11111" & O"000" & O"271" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "10" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- trace(crlf);
-- L0546@00BD E064323FC600000000.dump_inex:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
189 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- back;
-- L0547@00BE E00100BFC000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
190 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = 1, trace(from_microcode);
-- L0549@00BF E06432004200000000.dump_il:  directByte = 1, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00000001, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
191 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"01" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- trace(crlf);
-- L0550@00C0 E064323FC600000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
192 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- T <= IL_PC, IL_PC <= zero;
-- L0551@00C1 E000003FC840000000.  T <= IL_PC, IL_PC <= zero;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 001, DBGINDEX <= 00, IL_PC <= 001, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
193 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"1" & "00" & O"1" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if IL_PC_VALID then next else dump_il_ex;
-- L0552@00C2 E30031FFC000000000.dump_il_lp:  if IL_PC_VALID then next else dump_il_ex;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00011) then 000000000 else 011000111, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
194 => '1' & '1' & '1' & "00011" & O"000" & O"307" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = 2, trace(from_microcode);
-- L0553@00C3 E06432008200000000.  directByte = 2, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00000010, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
195 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"02" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- directByte = 3, trace(from_microcode);
-- L0554@00C4 E0643200C200000000.  directByte = 3, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 00000011, T <= 000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
196 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"03" & O"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- trace(crlf);
-- L0555@00C5 E064323FC600000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001000 else 011001000, directByte = 11111111, T <= 000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
197 => '1' & '1' & '1' & "00000" & O"310" & O"310" & X"FF" & O"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= inc, goto dump_il_lp;
-- L0556@00C6 FF0030BFC080000000.  IL_PC <= inc, if false then next else dump_il_lp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
198 => '1' & '1' & '1' & "11111" & O"000" & O"302" & X"FF" & O"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- IL_PC <= T, back;
-- L0557@00C7 E00100BFC0C0000000.dump_il_ex:  IL_PC <= T, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 011, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
199 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "00" & O"3" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if DBG_READY then next else repeat;
-- L0559@00C8 E400007FC000000000.trace:  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
200 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if DBG_READY then next else repeat;
-- L0560@00C9 E400007FC000000000.  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
201 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- if DBG_READY then next else repeat;
-- L0561@00CA E400007FC000000000.  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
202 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- DBGINDEX <= zero, back;
-- L0562@00CB E00100BFC400000000.  DBGINDEX <= zero, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 000, DBGINDEX <= 10, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, alu <= 0000, dummy = 0000;
203 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & O"0" & "10" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0",

-- 308 location(s) in following ranges will be filled with default value
-- 00CC .. 01FF

others => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & O"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & X"0" & X"0"
);

end microBasic_code;

