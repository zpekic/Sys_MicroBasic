--------------------------------------------------------
-- mcc V1.5.1026 - Custom microcode compiler (c)2020-... 
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
constant CODE_DATA_WIDTH: 	positive := 80;
constant CODE_ADDRESS_WIDTH: 	positive := 9;
constant CODE_ADDRESS_LAST: 	positive := 511;
constant CODE_IF_WIDTH: 	positive := 5;


type mb_code_memory is array(0 to 511) of std_logic_vector(79 downto 0);

signal mb_uinstruction: std_logic_vector(79 downto 0);

--mb_uinstruction <= mb_microcode(to_integer(unsigned(TODO))); -- copy to file containing the control unit. TODO is typically replace with 'ui_address' control unit output

--
-- L0011.nBUSREQ: .valfield 1 values 0, 1 default 1;
--
alias mb_nBUSREQ: 	std_logic is mb_uinstruction(79);
---- Start boilerplate code (use with utmost caution!)
--  nBUSREQ <= mb_nBUSREQ;
---- End boilerplate code

--
-- L0012.nWR: .valfield 1 values 0, 1 default 1;
--
alias mb_nWR: 	std_logic is mb_uinstruction(78);
---- Start boilerplate code (use with utmost caution!)
--  nWR <= mb_nWR;
---- End boilerplate code

--
-- L0013.nRD: .valfield 1 values 0, 1 default 1;
--
alias mb_nRD: 	std_logic is mb_uinstruction(77);
---- Start boilerplate code (use with utmost caution!)
--  nRD <= mb_nRD;
---- End boilerplate code

--
-- L0018.seq_cond: .if 5 values true, ILCODEBYTE_BIT7, CHAROUT_READY, IL_A_VALID, DBG_READY | KBD_BREAK, MDR_EQU_DB, nBUSACK, INLEND_MAX | BASLINE_FOUND, INLEND_MIN | IMPLINE_EMPTY, CHARIN_PRINTABLE, CHARIN_EQU_DB, CHARIN_READY, BP_IN_INPLINE, SVP_IN_INPLINE, MDR_IS_NUM, MDR_IS_ALPHA, STACK_IS_FULL, STACK_IS_EMPTY, MDR_MATCHES_ILCODEBYTE, R_IS_ZERO, Y_ZERO   | CP_SKIP, Y_SIGN, ALU_READY  | LS_PARAMS_OK, ALU_OVERFLOW  | LS_PASSED_END, ALU_SIGN  | LS_IN_RANGE, AT_TAB, OFF_IS_ZERO, LEADING_ZERO, IS_RUNMODE, TRACE0, TRACE1, false default true;
--
alias mb_seq_cond: 	std_logic_vector(4 downto 0) is mb_uinstruction(76 downto 72);
constant seq_cond_true: 	integer := 0;
constant seq_cond_ILCODEBYTE_BIT7: 	integer := 1;
constant seq_cond_CHAROUT_READY: 	integer := 2;
constant seq_cond_IL_A_VALID: 	integer := 3;
constant seq_cond_DBG_READY: 	integer := 4;
constant seq_cond_KBD_BREAK: 	integer := 4;
constant seq_cond_MDR_EQU_DB: 	integer := 5;
constant seq_cond_nBUSACK: 	integer := 6;
constant seq_cond_INLEND_MAX: 	integer := 7;
constant seq_cond_BASLINE_FOUND: 	integer := 7;
constant seq_cond_INLEND_MIN: 	integer := 8;
constant seq_cond_IMPLINE_EMPTY: 	integer := 8;
constant seq_cond_CHARIN_PRINTABLE: 	integer := 9;
constant seq_cond_CHARIN_EQU_DB: 	integer := 10;
constant seq_cond_CHARIN_READY: 	integer := 11;
constant seq_cond_BP_IN_INPLINE: 	integer := 12;
constant seq_cond_SVP_IN_INPLINE: 	integer := 13;
constant seq_cond_MDR_IS_NUM: 	integer := 14;
constant seq_cond_MDR_IS_ALPHA: 	integer := 15;
constant seq_cond_STACK_IS_FULL: 	integer := 16;
constant seq_cond_STACK_IS_EMPTY: 	integer := 17;
constant seq_cond_MDR_MATCHES_ILCODEBYTE: 	integer := 18;
constant seq_cond_R_IS_ZERO: 	integer := 19;
constant seq_cond_Y_ZERO: 	integer := 20;
constant seq_cond_CP_SKIP: 	integer := 20;
constant seq_cond_Y_SIGN: 	integer := 21;
constant seq_cond_ALU_READY: 	integer := 22;
constant seq_cond_LS_PARAMS_OK: 	integer := 22;
constant seq_cond_ALU_OVERFLOW: 	integer := 23;
constant seq_cond_LS_PASSED_END: 	integer := 23;
constant seq_cond_ALU_SIGN: 	integer := 24;
constant seq_cond_LS_IN_RANGE: 	integer := 24;
constant seq_cond_AT_TAB: 	integer := 25;
constant seq_cond_OFF_IS_ZERO: 	integer := 26;
constant seq_cond_LEADING_ZERO: 	integer := 27;
constant seq_cond_IS_RUNMODE: 	integer := 28;
constant seq_cond_TRACE0: 	integer := 29;
constant seq_cond_TRACE1: 	integer := 30;
constant seq_cond_false: 	integer := 31;
---- Start boilerplate code (use with utmost caution!)
---- include '.controller <filename.vhd>, <stackdepth>;' in .mcc file to generate pre-canned microcode control unit and feed 'conditions' with:
--  cond(seq_cond_true) => '1',
--  cond(seq_cond_ILCODEBYTE_BIT7) => ILCODEBYTE_BIT7,
--  cond(seq_cond_CHAROUT_READY) => CHAROUT_READY,
--  cond(seq_cond_IL_A_VALID) => IL_A_VALID,
--  cond(seq_cond_DBG_READY | KBD_BREAK) => DBG_READY | KBD_BREAK,
--  cond(seq_cond_MDR_EQU_DB) => MDR_EQU_DB,
--  cond(seq_cond_nBUSACK) => nBUSACK,
--  cond(seq_cond_INLEND_MAX | BASLINE_FOUND) => INLEND_MAX | BASLINE_FOUND,
--  cond(seq_cond_INLEND_MIN | IMPLINE_EMPTY) => INLEND_MIN | IMPLINE_EMPTY,
--  cond(seq_cond_CHARIN_PRINTABLE) => CHARIN_PRINTABLE,
--  cond(seq_cond_CHARIN_EQU_DB) => CHARIN_EQU_DB,
--  cond(seq_cond_CHARIN_READY) => CHARIN_READY,
--  cond(seq_cond_BP_IN_INPLINE) => BP_IN_INPLINE,
--  cond(seq_cond_SVP_IN_INPLINE) => SVP_IN_INPLINE,
--  cond(seq_cond_MDR_IS_NUM) => MDR_IS_NUM,
--  cond(seq_cond_MDR_IS_ALPHA) => MDR_IS_ALPHA,
--  cond(seq_cond_STACK_IS_FULL) => STACK_IS_FULL,
--  cond(seq_cond_STACK_IS_EMPTY) => STACK_IS_EMPTY,
--  cond(seq_cond_MDR_MATCHES_ILCODEBYTE) => MDR_MATCHES_ILCODEBYTE,
--  cond(seq_cond_R_IS_ZERO) => R_IS_ZERO,
--  cond(seq_cond_Y_ZERO   | CP_SKIP) => Y_ZERO   | CP_SKIP,
--  cond(seq_cond_Y_SIGN) => Y_SIGN,
--  cond(seq_cond_ALU_READY  | LS_PARAMS_OK) => ALU_READY  | LS_PARAMS_OK,
--  cond(seq_cond_ALU_OVERFLOW  | LS_PASSED_END) => ALU_OVERFLOW  | LS_PASSED_END,
--  cond(seq_cond_ALU_SIGN  | LS_IN_RANGE) => ALU_SIGN  | LS_IN_RANGE,
--  cond(seq_cond_AT_TAB) => AT_TAB,
--  cond(seq_cond_OFF_IS_ZERO) => OFF_IS_ZERO,
--  cond(seq_cond_LEADING_ZERO) => LEADING_ZERO,
--  cond(seq_cond_IS_RUNMODE) => IS_RUNMODE,
--  cond(seq_cond_TRACE0) => TRACE0,
--  cond(seq_cond_TRACE1) => TRACE1,
--  cond(seq_cond_false) => '0',
---- End boilerplate code

--
-- L0052.seq_then: .then 9 values next, repeat, return, fork, @ default next;
--
alias mb_seq_then: 	std_logic_vector(8 downto 0) is mb_uinstruction(71 downto 63);
constant seq_then_next: 	std_logic_vector(8 downto 0) := O"000";
constant seq_then_repeat: 	std_logic_vector(8 downto 0) := O"001";
constant seq_then_return: 	std_logic_vector(8 downto 0) := O"002";
constant seq_then_fork: 	std_logic_vector(8 downto 0) := O"003";
-- include '.controller <filename.vhd>, <stackdepth>;' in .mcc file to generate pre-canned microcode control unit and connect 'then' to mb_seq_then

--
-- L0053.seq_else: .else 9 values next, repeat, return, fork, 0b000000..0b111111, @ default next;
--
alias mb_seq_else: 	std_logic_vector(8 downto 0) is mb_uinstruction(62 downto 54);
constant seq_else_next: 	std_logic_vector(8 downto 0) := O"000";
constant seq_else_repeat: 	std_logic_vector(8 downto 0) := O"001";
constant seq_else_return: 	std_logic_vector(8 downto 0) := O"002";
constant seq_else_fork: 	std_logic_vector(8 downto 0) := O"003";
-- include '.controller <filename.vhd>, <stackdepth>;' in .mcc file to generate pre-canned microcode control unit and connect 'else' to mb_seq_else

--
-- L0056.directByte: .valfield 7 values 0x00..0x7F default 0x7F;
--
alias mb_directByte: 	std_logic_vector(6 downto 0) is mb_uinstruction(53 downto 47);
---- Start boilerplate code (use with utmost caution!)
--  directByte <= mb_directByte;
---- End boilerplate code

--
-- L0059.T: .regfield 4 values same, IL_PC, XQhere, from_vars, ExpStack, from_YLo, codeByte, MDRx2, inc, dec, BP, Prog_start, PrgEnd, from_S, from_R default same;
--
alias mb_T: 	std_logic_vector(3 downto 0) is mb_uinstruction(46 downto 43);
constant T_same: 	std_logic_vector(3 downto 0) := X"0";
constant T_IL_PC: 	std_logic_vector(3 downto 0) := X"1";
constant T_XQhere: 	std_logic_vector(3 downto 0) := X"2";
constant T_from_vars: 	std_logic_vector(3 downto 0) := X"3";
constant T_ExpStack: 	std_logic_vector(3 downto 0) := X"4";
constant T_from_YLo: 	std_logic_vector(3 downto 0) := X"5";
constant T_codeByte: 	std_logic_vector(3 downto 0) := X"6";
constant T_MDRx2: 	std_logic_vector(3 downto 0) := X"7";
constant T_inc: 	std_logic_vector(3 downto 0) := X"8";
constant T_dec: 	std_logic_vector(3 downto 0) := X"9";
constant T_BP: 	std_logic_vector(3 downto 0) := X"A";
constant T_Prog_start: 	std_logic_vector(3 downto 0) := X"B";
constant T_PrgEnd: 	std_logic_vector(3 downto 0) := X"C";
constant T_from_S: 	std_logic_vector(3 downto 0) := X"D";
constant T_from_R: 	std_logic_vector(3 downto 0) := X"E";
---- Start boilerplate code (use with utmost caution!)
-- update_T: process(clk, mb_T)
-- begin
--	if (rising_edge(clk)) then
--		case mb_T is
----			when T_same =>
----				T <= T;
--			when T_IL_PC =>
--				T <= IL_PC;
--			when T_XQhere =>
--				T <= XQhere;
--			when T_from_vars =>
--				T <= vars;
--			when T_ExpStack =>
--				T <= ExpStack;
--			when T_from_YLo =>
--				T <= YLo;
--			when T_codeByte =>
--				T <= codeByte;
--			when T_MDRx2 =>
--				T <= MDRx2;
--			when T_inc =>
--				T <= std_logic_vector(unsigned(T) + 1);
--			when T_dec =>
--				T <= std_logic_vector(unsigned(T) - 1);
--			when T_BP =>
--				T <= BP;
--			when T_Prog_start =>
--				T <= Prog_start;
--			when T_PrgEnd =>
--				T <= PrgEnd;
--			when T_from_S =>
--				T <= S;
--			when T_from_R =>
--				T <= R;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0078.DBGINDEX: .regfield 2 values same, from_microcode, zero, crlf default same;
--
alias mb_DBGINDEX: 	std_logic_vector(1 downto 0) is mb_uinstruction(42 downto 41);
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
--				DBGINDEX <= microcode;
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
-- L0086.IL_PC: .regfield 3 values same, zero, inc, T, pc_plus_off6, pc_plus_off5, direct11, RetStack default same;
--
alias mb_IL_PC: 	std_logic_vector(2 downto 0) is mb_uinstruction(40 downto 38);
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
-- L0098.XQhere: .regfield 1 values same, T default same;
--
alias mb_XQhere: 	std_logic is mb_uinstruction(37);
constant XQhere_same: 	std_logic := '0';
constant XQhere_T: 	std_logic := '1';
---- Start boilerplate code (use with utmost caution!)
-- update_XQhere: process(clk, mb_XQhere)
-- begin
--	if (rising_edge(clk)) then
--	    if (mb_XQhere = XQhere_T) then
--		    XQhere <= T;
--	    end if;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0104.IL_OP: .regfield 1 values same, from_interpreter default same;
--
alias mb_IL_OP: 	std_logic is mb_uinstruction(36);
constant IL_OP_same: 	std_logic := '0';
constant IL_OP_from_interpreter: 	std_logic := '1';
---- Start boilerplate code (use with utmost caution!)
-- update_IL_OP: process(clk, mb_IL_OP)
-- begin
--	if (rising_edge(clk)) then
--	    if (mb_IL_OP = IL_OP_from_interpreter) then
--		    IL_OP <= interpreter;
--	    end if;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0109.RetStack: .regfield 2 values same, clear, pop, push_IL_PC_PLUS_1 default same;
--
alias mb_RetStack: 	std_logic_vector(1 downto 0) is mb_uinstruction(35 downto 34);
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
-- L0117.CHAROUT: .regfield 3 values same, from_interpreter, from_microcode, from_charin, from_MDR, from_YtoAlpha, -, - default same;
--
alias mb_CHAROUT: 	std_logic_vector(2 downto 0) is mb_uinstruction(33 downto 31);
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
--				CHAROUT <= interpreter;
--			when CHAROUT_from_microcode =>
--				CHAROUT <= microcode;
--			when CHAROUT_from_charin =>
--				CHAROUT <= charin;
--			when CHAROUT_from_MDR =>
--				CHAROUT <= MDR;
--			when CHAROUT_from_YtoAlpha =>
--				CHAROUT <= YtoAlpha;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0129.MAR: .regfield 2 values same, InlEnd, BP, T default same;
--
alias mb_MAR: 	std_logic_vector(1 downto 0) is mb_uinstruction(30 downto 29);
constant MAR_same: 	std_logic_vector(1 downto 0) := "00";
constant MAR_InlEnd: 	std_logic_vector(1 downto 0) := "01";
constant MAR_BP: 	std_logic_vector(1 downto 0) := "10";
constant MAR_T: 	std_logic_vector(1 downto 0) := "11";
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
--			when MAR_T =>
--				MAR <= T;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0137.MDR: .regfield 3 values same, from_Bus, zero, CHARIN, ToUpper, from_SHi, from_SLo, from_microcode default same;
--
alias mb_MDR: 	std_logic_vector(2 downto 0) is mb_uinstruction(28 downto 26);
constant MDR_same: 	std_logic_vector(2 downto 0) := O"0";
constant MDR_from_Bus: 	std_logic_vector(2 downto 0) := O"1";
constant MDR_zero: 	std_logic_vector(2 downto 0) := O"2";
constant MDR_CHARIN: 	std_logic_vector(2 downto 0) := O"3";
constant MDR_ToUpper: 	std_logic_vector(2 downto 0) := O"4";
constant MDR_from_SHi: 	std_logic_vector(2 downto 0) := O"5";
constant MDR_from_SLo: 	std_logic_vector(2 downto 0) := O"6";
constant MDR_from_microcode: 	std_logic_vector(2 downto 0) := O"7";
---- Start boilerplate code (use with utmost caution!)
-- update_MDR: process(clk, mb_MDR)
-- begin
--	if (rising_edge(clk)) then
--		case mb_MDR is
----			when MDR_same =>
----				MDR <= MDR;
--			when MDR_from_Bus =>
--				MDR <= Bus;
--			when MDR_zero =>
--				MDR <= (others => '0');
--			when MDR_CHARIN =>
--				MDR <= CHARIN;
--			when MDR_ToUpper =>
--				MDR <= ToUpper;
--			when MDR_from_SHi =>
--				MDR <= SHi;
--			when MDR_from_SLo =>
--				MDR <= SLo;
--			when MDR_from_microcode =>
--				MDR <= microcode;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0149.InlEnd: .regfield 2 values same, InLine_start, inc, dec default same;
--
alias mb_InlEnd: 	std_logic_vector(1 downto 0) is mb_uinstruction(25 downto 24);
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
-- L0157.BP: .regfield 3 values same, InLine_start, SvPt, inc, save, restore, T, LS default same;
--
alias mb_BP: 	std_logic_vector(2 downto 0) is mb_uinstruction(23 downto 21);
constant BP_same: 	std_logic_vector(2 downto 0) := O"0";
constant BP_InLine_start: 	std_logic_vector(2 downto 0) := O"1";
constant BP_SvPt: 	std_logic_vector(2 downto 0) := O"2";
constant BP_inc: 	std_logic_vector(2 downto 0) := O"3";
constant BP_save: 	std_logic_vector(2 downto 0) := O"4";
constant BP_restore: 	std_logic_vector(2 downto 0) := O"5";
constant BP_T: 	std_logic_vector(2 downto 0) := O"6";
constant BP_LS: 	std_logic_vector(2 downto 0) := O"7";
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
--			when BP_T =>
--				BP <= T;
--			when BP_LS =>
--				BP <= LS;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0169.SvPt: .regfield 2 values same, InLine_start, BP, - default same;
--
alias mb_SvPt: 	std_logic_vector(1 downto 0) is mb_uinstruction(20 downto 19);
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
-- L0176.ExpStack: .regfield 3 values same, clear, startSwap, endSwap, push_TWord, push_TByte, pop2, pop1 default same;
--
alias mb_ExpStack: 	std_logic_vector(2 downto 0) is mb_uinstruction(18 downto 16);
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
-- L0188.gotChar: .valfield 1 values 0, 1 default 0;
--
alias mb_gotChar: 	std_logic is mb_uinstruction(15);
---- Start boilerplate code (use with utmost caution!)
--  gotChar <= mb_gotChar;
---- End boilerplate code

--
-- L0193.Vars: .regfield 2 values same, indexFromExpStack, T, - default same;
--
alias mb_Vars: 	std_logic_vector(1 downto 0) is mb_uinstruction(14 downto 13);
constant Vars_same: 	std_logic_vector(1 downto 0) := "00";
constant Vars_indexFromExpStack: 	std_logic_vector(1 downto 0) := "01";
constant Vars_T: 	std_logic_vector(1 downto 0) := "10";
-- Value "11" not allowed (name '-' is not assignable)
---- Start boilerplate code (use with utmost caution!)
-- update_Vars: process(clk, mb_Vars)
-- begin
--	if (rising_edge(clk)) then
--		case mb_Vars is
----			when Vars_same =>
----				Vars <= Vars;
--			when Vars_indexFromExpStack =>
--				Vars <= indexFromExpStack;
--			when Vars_T =>
--				Vars <= T;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0201.alu: .regfield 5 values nop, reset0, reset1, R_fromStack, S_fromStack, S_plus_R, S_minus_R, neg_R, S_mul_R, Yx16, bcd_start, bcd_next, div_start, div_shift, div_subset, div_end, Yx10_plus_MDR, Rx256_plus_MDR, S_fromT, R_fromT, S_fromLino, copy_del, copy_inc, ls_load, ls_check, Y_save, Y_recall, -, -, -, -, - default nop;
--
alias mb_alu: 	std_logic_vector(4 downto 0) is mb_uinstruction(12 downto 8);
constant alu_nop: 	std_logic_vector(4 downto 0) := "00000";
constant alu_reset0: 	std_logic_vector(4 downto 0) := "00001";
constant alu_reset1: 	std_logic_vector(4 downto 0) := "00010";
constant alu_R_fromStack: 	std_logic_vector(4 downto 0) := "00011";
constant alu_S_fromStack: 	std_logic_vector(4 downto 0) := "00100";
constant alu_S_plus_R: 	std_logic_vector(4 downto 0) := "00101";
constant alu_S_minus_R: 	std_logic_vector(4 downto 0) := "00110";
constant alu_neg_R: 	std_logic_vector(4 downto 0) := "00111";
constant alu_S_mul_R: 	std_logic_vector(4 downto 0) := "01000";
constant alu_Yx16: 	std_logic_vector(4 downto 0) := "01001";
constant alu_bcd_start: 	std_logic_vector(4 downto 0) := "01010";
constant alu_bcd_next: 	std_logic_vector(4 downto 0) := "01011";
constant alu_div_start: 	std_logic_vector(4 downto 0) := "01100";
constant alu_div_shift: 	std_logic_vector(4 downto 0) := "01101";
constant alu_div_subset: 	std_logic_vector(4 downto 0) := "01110";
constant alu_div_end: 	std_logic_vector(4 downto 0) := "01111";
constant alu_Yx10_plus_MDR: 	std_logic_vector(4 downto 0) := "10000";
constant alu_Rx256_plus_MDR: 	std_logic_vector(4 downto 0) := "10001";
constant alu_S_fromT: 	std_logic_vector(4 downto 0) := "10010";
constant alu_R_fromT: 	std_logic_vector(4 downto 0) := "10011";
constant alu_S_fromLino: 	std_logic_vector(4 downto 0) := "10100";
constant alu_copy_del: 	std_logic_vector(4 downto 0) := "10101";
constant alu_copy_inc: 	std_logic_vector(4 downto 0) := "10110";
constant alu_ls_load: 	std_logic_vector(4 downto 0) := "10111";
constant alu_ls_check: 	std_logic_vector(4 downto 0) := "11000";
constant alu_Y_save: 	std_logic_vector(4 downto 0) := "11001";
constant alu_Y_recall: 	std_logic_vector(4 downto 0) := "11010";
-- Value "11011" not allowed (name '-' is not assignable)
-- Value "11100" not allowed (name '-' is not assignable)
-- Value "11101" not allowed (name '-' is not assignable)
-- Value "11110" not allowed (name '-' is not assignable)
-- Value "11111" not allowed (name '-' is not assignable)
---- Start boilerplate code (use with utmost caution!)
-- update_alu: process(clk, mb_alu)
-- begin
--	if (rising_edge(clk)) then
--		case mb_alu is
----			when alu_nop =>
----				alu <= alu;
--			when alu_reset0 =>
--				alu <= reset0;
--			when alu_reset1 =>
--				alu <= reset1;
--			when alu_R_fromStack =>
--				alu <= R_fromStack;
--			when alu_S_fromStack =>
--				alu <= S_fromStack;
--			when alu_S_plus_R =>
--				alu <= S_plus_R;
--			when alu_S_minus_R =>
--				alu <= S_minus_R;
--			when alu_neg_R =>
--				alu <= alu xor (others => '1');
--			when alu_S_mul_R =>
--				alu <= S_mul_R;
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
--			when alu_Rx256_plus_MDR =>
--				alu <= Rx256_plus_MDR;
--			when alu_S_fromT =>
--				alu <= S_fromT;
--			when alu_R_fromT =>
--				alu <= R_fromT;
--			when alu_S_fromLino =>
--				alu <= S_fromLino;
--			when alu_copy_del =>
--				alu <= copy_del;
--			when alu_copy_inc =>
--				alu <= copy_inc;
--			when alu_ls_load =>
--				alu <= ls_load;
--			when alu_ls_check =>
--				alu <= ls_check;
--			when alu_Y_save =>
--				alu <= Y_save;
--			when alu_Y_recall =>
--				alu <= Y_recall;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0237.Lino: .regfield 1 values same, T default same;
--
alias mb_Lino: 	std_logic is mb_uinstruction(7);
constant Lino_same: 	std_logic := '0';
constant Lino_T: 	std_logic := '1';
---- Start boilerplate code (use with utmost caution!)
-- update_Lino: process(clk, mb_Lino)
-- begin
--	if (rising_edge(clk)) then
--	    if (mb_Lino = Lino_T) then
--		    Lino <= T;
--	    end if;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0243.BE: .regfield 1 values same, T default same;
--
alias mb_BE: 	std_logic is mb_uinstruction(6);
constant BE_same: 	std_logic := '0';
constant BE_T: 	std_logic := '1';
---- Start boilerplate code (use with utmost caution!)
-- update_BE: process(clk, mb_BE)
-- begin
--	if (rising_edge(clk)) then
--	    if (mb_BE = BE_T) then
--		    BE <= T;
--	    end if;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0249.LS: .regfield 1 values same, T default same;
--
alias mb_LS: 	std_logic is mb_uinstruction(5);
constant LS_same: 	std_logic := '0';
constant LS_T: 	std_logic := '1';
---- Start boilerplate code (use with utmost caution!)
-- update_LS: process(clk, mb_LS)
-- begin
--	if (rising_edge(clk)) then
--	    if (mb_LS = LS_T) then
--		    LS <= T;
--	    end if;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0255.LE: .regfield 1 values same, T default same;
--
alias mb_LE: 	std_logic is mb_uinstruction(4);
constant LE_same: 	std_logic := '0';
constant LE_T: 	std_logic := '1';
---- Start boilerplate code (use with utmost caution!)
-- update_LE: process(clk, mb_LE)
-- begin
--	if (rising_edge(clk)) then
--	    if (mb_LE = LE_T) then
--		    LE <= T;
--	    end if;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0261.PrgEnd: .regfield 1 values same, T default same;
--
alias mb_PrgEnd: 	std_logic is mb_uinstruction(3);
constant PrgEnd_same: 	std_logic := '0';
constant PrgEnd_T: 	std_logic := '1';
---- Start boilerplate code (use with utmost caution!)
-- update_PrgEnd: process(clk, mb_PrgEnd)
-- begin
--	if (rising_edge(clk)) then
--	    if (mb_PrgEnd = PrgEnd_T) then
--		    PrgEnd <= T;
--	    end if;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0267.dummy: .valfield 3 values * default 0;
--
alias mb_dummy: 	std_logic_vector(2 downto 0) is mb_uinstruction(2 downto 0);
---- Start boilerplate code (use with utmost caution!)
--  dummy <= mb_dummy;
---- End boilerplate code



constant mb_microcode: mb_code_memory := (

-- nop;
-- L0318@0000 E000003F800000000000._reset:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
0 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- nop;
-- L0320@0001 E000003F800000000000._reset1:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
1 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- nop;
-- L0322@0002 E000003F800000000000._reset2:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
2 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- nop;
-- L0324@0003 E000003F800000000000._reset3:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
3 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 4;
-- L0328@0004 E0D8EC42020000000000.ColdStart:  trace(from_microcode), directByte = 4;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0000100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
4 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0000100" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- write2Nulls(Prog_start);
-- L0329@0005 E0BBDDFFD80000000000.  write2Nulls(Prog_start);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110111 else 101110111, directByte = 1111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
5 => '1' & '1' & '1' & "00000" & O"567" & O"567" & "1111111" & X"B" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- clear;
-- L0330@0006 E000003F844400010100.WarmStart:  DBGINDEX <= zero, IL_PC <= zero, ExpStack <= clear, RetStack <= clear, alu <= reset0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 10, IL_PC <= 001, XQhere <= 0, IL_OP <= 0, RetStack <= 01, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 001, gotChar = 0, Vars <= 00, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
6 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "10" & O"1" & '0' & '0' & "01" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"1" & '0' & "00" & "00001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= from_R;
-- L0331@0007 E000003FF00001280000.  BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= from_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 001, SvPt <= 01, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
7 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"E" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "01" & O"1" & "01" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- Lino <= T;
-- L0332@0008 E000003F800000000080.  Lino <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
8 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & O"0",

-- XQhere <= T;
-- L0333@0009 E000003F802000000000.  XQhere <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 1, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
9 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '1' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- write2Nulls(BP);
-- L0334@000A E0BBDDFFD00000000000.  write2Nulls(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110111 else 101110111, directByte = 1111111, T <= 1010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
10 => '1' & '1' & '1' & "00000" & O"567" & O"567" & "1111111" & X"A" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- trace(crlf);
-- L0336@000B E0D8EC7F860000000000.fetch:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 1111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
11 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "1111111" & X"0" & "11" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 51;
-- L0337@000C E0D8EC59820000000000.  trace(from_microcode), directByte = 51;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0110011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
12 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0110011" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 2;
-- L0338@000D E0D8EC41020000000000.  trace(from_microcode), directByte = 2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0000010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
13 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0000010" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_OP <= from_interpreter, IL_PC <= inc;
-- L0339@000E E000003F809000000000.  IL_OP <= from_interpreter, IL_PC <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 1, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
14 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"2" & '0' & '1' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0340@000F E0D8EC5C020000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
15 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0111000" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= reset0, if IL_A_VALID then fork else INTERNAL_ERR;
-- L0341@0010 E301D6FF800000000100.  alu <= reset0, if IL_A_VALID then fork else INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00011) then 000000011 else 101011011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
16 => '1' & '1' & '1' & "00011" & O"003" & O"533" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto INTERNAL_ERR;
-- L0344@0011 FF0056FF800000000000.badop:  if false then next else INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101011011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
17 => '1' & '1' & '1' & "11111" & O"000" & O"533" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 15;
-- L0349@0012 E0D8EC47820000000000.  trace(from_microcode), directByte = 15;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0001111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
18 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0001111" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= startSwap;
-- L0350@0013 E000003F800000020000.  ExpStack <= startSwap;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 010, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
19 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"2" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= endSwap;
-- L0351@0014 E000003F800000030000.  ExpStack <= endSwap;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 011, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
20 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"3" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0352@0015 FF0002FF800000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
21 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 15;
-- L0355@0016 E0D8EC47820000000000.  trace(from_microcode), directByte = 15;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0001111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
22 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0001111" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0356@0017 FF0002FF800000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
23 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 12;
-- L0361@0018 E0D8EC46020000000000.  trace(from_microcode), directByte = 12;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0001100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
24 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0001100" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0362@0019 FF0002FF800000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
25 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 28;
-- L0367@001A E0D8EC4E020000000000.  trace(from_microcode), directByte = 28;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0011100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
26 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0011100" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 3, T <= codeByte;
-- L0368@001B E0D8EC41B20000000000.lb_push:  trace(from_microcode), directByte = 3, T <= codeByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0000011, T <= 0110, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
27 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0000011" & X"6" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= push_TByte;
-- L0369@001C E000003F800000050000.  ExpStack <= push_TByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 101, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
28 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"5" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
-- L0370@001D F0AE82FF808000000000.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 101011101 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
29 => '1' & '1' & '1' & "10000" & O"535" & O"013" & "1111111" & X"0" & "00" & O"2" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 29;
-- L0375@001E E0D8EC4E820000000000.  trace(from_microcode), directByte = 29;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0011101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
30 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0011101" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 3, T <= codeByte;
-- L0376@001F E0D8EC41B20000000000.  trace(from_microcode), directByte = 3, T <= codeByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0000011, T <= 0110, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
31 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0000011" & X"6" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= push_TByte;
-- L0377@0020 E000003F800000050000.  ExpStack <= push_TByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 101, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
32 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"5" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
-- L0378@0021 F0AE86FF808000000000.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 101011101 else 000011011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
33 => '1' & '1' & '1' & "10000" & O"535" & O"033" & "1111111" & X"0" & "00" & O"2" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 38;
-- L0383@0022 E0D8EC53020000000000.  trace(from_microcode), directByte = 38;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0100110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
34 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0100110" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0384@0023 F1AE803F800000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101011101 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
35 => '1' & '1' & '1' & "10001" & O"535" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR;
-- L0385@0024 F0AE803FA00000000000.  T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 101011101 else 000000000, directByte = 1111111, T <= 0100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
36 => '1' & '1' & '1' & "10000" & O"535" & O"000" & "1111111" & X"4" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= push_TWord, goto fetch;
-- L0386@0025 FF0002FF800000040000.  ExpStack <= push_TWord, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
37 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 34;
-- L0391@0026 E0D8EC51020000000000.  trace(from_microcode), directByte = 34;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0100010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
38 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0100010" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0392@0027 F1AE803F800000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101011101 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
39 => '1' & '1' & '1' & "10001" & O"535" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= pop2, goto fetch;
-- L0393@0028 FF0002FF800000060000.  ExpStack <= pop2, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
40 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 10;
-- L0398@0029 E0D8EC45020000000000.  trace(from_microcode), directByte = 10;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0001010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
41 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0001010" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if BP_IN_INPLINE then next else ptr_exc;
-- L0399@002A EC000C3F800000000000.  if BP_IN_INPLINE then next else ptr_exc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01100) then 000000000 else 000110000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
42 => '1' & '1' & '1' & "01100" & O"000" & O"060" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- SvPt <= BP;
-- L0400@002B E000003F800000100000.save_bp:  SvPt <= BP;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 10, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
43 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "10" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceBP();
-- L0401@002C E0D2E97F800000000000.bp_done:  traceBP();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110100101 else 110100101, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
44 => '1' & '1' & '1' & "00000" & O"645" & O"645" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0402@002D FF0002FF800000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
45 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 11;
-- L0407@002E E0D8EC45820000000000.  trace(from_microcode), directByte = 11;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0001011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
46 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0001011" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if SVP_IN_INPLINE then save_bp;
-- L0408@002F ED15803F800000000000.  if SVP_IN_INPLINE then save_bp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01101) then 000101011 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
47 => '1' & '1' & '1' & "01101" & O"053" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- SvPt <= BP, BP <= SvPt, goto bp_done;
-- L0409@0030 FF000B3F800000500000.ptr_exc:  SvPt <= BP, BP <= SvPt, if false then next else bp_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000101100, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 010, SvPt <= 10, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
48 => '1' & '1' & '1' & "11111" & O"000" & O"054" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"2" & "10" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 36;
-- L0414@0031 E0D8EC52020000000000.  trace(from_microcode), directByte = 36;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0100100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
49 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0100100" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0415@0032 F1AE803F800000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101011101 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
50 => '1' & '1' & '1' & "10001" & O"535" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- Vars <= indexFromExpStack;
-- L0416@0033 E000003F800000002000.  Vars <= indexFromExpStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 01, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
51 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "01" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= from_vars, ExpStack <= pop1;
-- L0417@0034 E000003F980000070000.  T <= from_vars, ExpStack <= pop1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 111, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
52 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"3" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"7" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= push_TWord, goto fetch;
-- L0418@0035 FF0002FF800000040000.  ExpStack <= push_TWord, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
53 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 37;
-- L0423@0036 E0D8EC52820000000000.  trace(from_microcode), directByte = 37;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0100101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
54 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0100101" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0424@0037 F1AE803F800000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101011101 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
55 => '1' & '1' & '1' & "10001" & O"535" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= ExpStack, ExpStack <= pop2;
-- L0425@0038 E000003FA00000060000.  T <= ExpStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
56 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"4" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0426@0039 F1AE803F800000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101011101 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
57 => '1' & '1' & '1' & "10001" & O"535" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- Vars <= indexFromExpStack, ExpStack <= pop1;
-- L0427@003A E000003F800000072000.  Vars <= indexFromExpStack, ExpStack <= pop1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 111, gotChar = 0, Vars <= 01, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
58 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"7" & '0' & "01" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- Vars <= T, goto fetch;
-- L0428@003B FF0002FF800000004000.  Vars <= T, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 10, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
59 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "10" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 45;
-- L0433@003C E0D8EC56820000000000.  trace(from_microcode), directByte = 45;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0101101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
60 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0101101" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= XQhere;
-- L0434@003D E000003F900000000000.  T <= XQhere;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
61 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"2" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= T, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0435@003E F1AE803F80C000000000.  IL_PC <= T, if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101011101 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 011, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
62 => '1' & '1' & '1' & "10001" & O"535" & O"000" & "1111111" & X"0" & "00" & O"3" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0436@003F E000003F800000060300.  alu <= R_fromStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
63 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceALU();
-- L0437@0040 E0D5EAFF800000000000.  traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110101011 else 110101011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
64 => '1' & '1' & '1' & "00000" & O"653" & O"653" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if R_IS_ZERO then NOPROG_ERR;
-- L0438@0041 F3A9803F800000000000.  if R_IS_ZERO then NOPROG_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 101010011 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
65 => '1' & '1' & '1' & "10011" & O"523" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= from_R;
-- L0439@0042 E000003FF00000000000.go_find:  T <= from_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
66 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"E" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- Lino <= T, T <= Prog_start;
-- L0440@0043 E000003FD80000000080.  Lino <= T, T <= Prog_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
67 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"B" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & O"0",

-- alu <= reset1, readCore(T);
-- L0441@0044 E0CE673F800060000200.go_search:  alu <= reset1, readCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011100 else 110011100, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
68 => '1' & '1' & '1' & "00000" & O"634" & O"634" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00010" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= Rx256_plus_MDR, T <= inc;
-- L0442@0045 E000003FC00000001100.  alu <= Rx256_plus_MDR, T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
69 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_fromLino, readCore(T);
-- L0443@0046 E0CE673F800060001400.  alu <= S_fromLino, readCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011100 else 110011100, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
70 => '1' & '1' & '1' & "00000" & O"634" & O"634" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= Rx256_plus_MDR, T <= inc;
-- L0444@0047 E000003FC00000001100.  alu <= Rx256_plus_MDR, T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
71 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_minus_R, if R_IS_ZERO then stop_run;
-- L0445@0048 F38C003F800000000600.  alu <= S_minus_R, if R_IS_ZERO then stop_run;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 100011000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
72 => '1' & '1' & '1' & "10011" & O"430" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if Y_ZERO then go_found;
-- L0446@0049 F426003F800000000000.  if Y_ZERO then go_found;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 001001100 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
73 => '1' & '1' & '1' & "10100" & O"114" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- findNextCR(same);
-- L0447@004A E0B7DBFF800000000000.  findNextCR(same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101111 else 101101111, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
74 => '1' & '1' & '1' & "00000" & O"557" & O"557" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= inc, goto go_search;
-- L0448@004B FF00113FC00000000000.  T <= inc, if false then next else go_search;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001000100, directByte = 1111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
75 => '1' & '1' & '1' & "11111" & O"000" & O"104" & "1111111" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- BP <= T, goto fetch;
-- L0449@004C FF0002FF800000C00000.go_found:  BP <= T, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
76 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"6" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 25;
-- L0454@004D E0D8EC4C820000000000.  trace(from_microcode), directByte = 25;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0011001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
77 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0011001" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0455@004E F1AE803F800000000300.  alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101011101 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
78 => '1' & '1' & '1' & "10001" & O"535" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= pop2;
-- L0456@004F E000003F800000060000.  ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
79 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= neg_R, if ALU_READY then alu_done else repeat;
-- L0457@0050 F62A007F800000000700.  alu <= neg_R, if ALU_READY then alu_done else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 001010100 else 000000001, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
80 => '1' & '1' & '1' & "10110" & O"124" & O"001" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00111" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 22;
-- L0462@0051 E0D8EC4B020000000000.  trace(from_microcode), directByte = 22;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0010110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
81 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0010110" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- pullRS();
-- L0463@0052 E0BD5EBF800000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101111010 else 101111010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
82 => '1' & '1' & '1' & "00000" & O"572" & O"572" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_plus_R, if ALU_READY then next else repeat;
-- L0464@0053 F600007F800000000500.  alu <= S_plus_R, if ALU_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 000000000 else 000000001, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
83 => '1' & '1' & '1' & "10110" & O"000" & O"001" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00101" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceALU();
-- L0465@0054 E0D5EAFF800000000000.alu_done:  traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110101011 else 110101011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
84 => '1' & '1' & '1' & "00000" & O"653" & O"653" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
-- L0466@0055 F7AB803FA80000000000.  T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10111) then 101010111 else 000000000, directByte = 1111111, T <= 0101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
85 => '1' & '1' & '1' & "10111" & O"527" & O"000" & "1111111" & X"5" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= push_TWord, goto fetch;
-- L0467@0056 FF0002FF800000040000.  ExpStack <= push_TWord, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
86 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 23;
-- L0472@0057 E0D8EC4B820000000000.  trace(from_microcode), directByte = 23;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0010111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
87 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0010111" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- pullRS();
-- L0473@0058 E0BD5EBF800000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101111010 else 101111010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
88 => '1' & '1' & '1' & "00000" & O"572" & O"572" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_minus_R, if ALU_READY then alu_done else repeat;
-- L0474@0059 F62A007F800000000600.  alu <= S_minus_R, if ALU_READY then alu_done else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 001010100 else 000000001, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
89 => '1' & '1' & '1' & "10110" & O"124" & O"001" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 24;
-- L0479@005A E0D8EC4C020000000000.  trace(from_microcode), directByte = 24;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0011000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
90 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0011000" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- pullRS();
-- L0480@005B E0BD5EBF800000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101111010 else 101111010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
91 => '1' & '1' & '1' & "00000" & O"572" & O"572" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_mul_R, if ALU_READY then alu_done else repeat;
-- L0481@005C F62A007F800000000800.  alu <= S_mul_R, if ALU_READY then alu_done else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 001010100 else 000000001, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
92 => '1' & '1' & '1' & "10110" & O"124" & O"001" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 35;
-- L0486@005D E0D8EC51820000000000.  trace(from_microcode), directByte = 35;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0100011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
93 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0100011" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- pullRS();
-- L0487@005E E0BD5EBF800000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101111010 else 101111010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
94 => '1' & '1' & '1' & "00000" & O"572" & O"572" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
-- L0488@005F F3AA803F800000000C00.  alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 101010101 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
95 => '1' & '1' & '1' & "10011" & O"525" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01100" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= div_shift;
-- L0489@0060 E000003F800000000D00.div_loop:  alu <= div_shift;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
96 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01101" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if ALU_READY then div_done;
-- L0490@0061 F631803F800000000000.  if ALU_READY then div_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 001100011 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
97 => '1' & '1' & '1' & "10110" & O"143" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= div_subset, goto div_loop;
-- L0491@0062 FF00183F800000000E00.  alu <= div_subset, if false then next else div_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001100000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
98 => '1' & '1' & '1' & "11111" & O"000" & O"140" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01110" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= div_end, goto alu_done;
-- L0492@0063 FF00153F800000000F00.div_done:  alu <= div_end, if false then next else alu_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001010100, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
99 => '1' & '1' & '1' & "11111" & O"000" & O"124" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01111" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 46;
-- L0497@0064 E0D8EC57020000000000.  trace(from_microcode), directByte = 46;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0101110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
100 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0101110" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0498@0065 E000003F800000060300.  alu <= R_fromStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
101 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= push_TByte;
-- L0499@0066 E000003F800000050000.  ExpStack <= push_TByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 101, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
102 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"5" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= ExpStack, ExpStack <= pop2;
-- L0500@0067 E000003FA00000060000.  T <= ExpStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
103 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"4" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_fromStack, ExpStack <= pop2;
-- L0501@0068 E000003F800000060400.  alu <= S_fromStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
104 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00100" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if CP_SKIP then next else fetch;
-- L0503@0069 F40002FF800000000000.  if CP_SKIP then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
105 => '1' & '1' & '1' & "10100" & O"000" & O"013" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= inc, goto fetch;
-- L0504@006A FF0002FF808000000000.  IL_PC <= inc, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
106 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"2" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 39;
-- L0509@006B E0D8EC53820000000000.  trace(from_microcode), directByte = 39;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0100111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
107 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0100111" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if IS_RUNMODE then nx_run;
-- L0510@006C FC37003F800000000000.  if IS_RUNMODE then nx_run;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11100) then 001101110 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
108 => '1' & '1' & '1' & "11100" & O"156" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= zero, goto fetch;
-- L0511@006D FF0002FF804000000000.  IL_PC <= zero, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 001, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
109 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"1" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- findNextCR(BP);
-- L0512@006E E0B7DBFFD00000000000.nx_run:  findNextCR(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101111 else 101101111, directByte = 1111111, T <= 1010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
110 => '1' & '1' & '1' & "00000" & O"557" & O"557" & "1111111" & X"A" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= inc;
-- L0513@006F E000003FC00000000000.  T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
111 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- BP <= T;
-- L0514@0070 E000003F800000C00000.  BP <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
112 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"6" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- readCore16(BP);
-- L0515@0071 E0B9DCFFD00000000000.  readCore16(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110011 else 101110011, directByte = 1111111, T <= 1010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
113 => '1' & '1' & '1' & "00000" & O"563" & O"563" & "1111111" & X"A" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if R_IS_ZERO then nx_err;
-- L0516@0072 F33C803F800000000000.  if R_IS_ZERO then nx_err;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 001111001 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
114 => '1' & '1' & '1' & "10011" & O"171" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- BP <= T, T <= from_R;
-- L0517@0073 E000003FF00000C00000.  BP <= T, T <= from_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
115 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"E" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"6" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- Lino <= T, T <= XQhere;
-- L0518@0074 E000003F900000000080.  Lino <= T, T <= XQhere;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
116 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"2" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= T;
-- L0519@0075 E000003F80C000000000.  IL_PC <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 011, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
117 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"3" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceLino;
-- L0520@0076 E0D8EC59820000000000.  trace(from_microcode), directByte = 51;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0110011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
118 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0110011" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceBP();
-- L0521@0077 E0D2E97F800000000000.  traceBP();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110100101 else 110100101, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
119 => '1' & '1' & '1' & "00000" & O"645" & O"645" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if KBD_BREAK then BREAK else fetch;
-- L0522@0078 E4A782FF800000000000.  if KBD_BREAK then BREAK else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 101001111 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
120 => '1' & '1' & '1' & "00100" & O"517" & O"013" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = BEEP, outChar(from_microcode);
-- L0523@0079 E0CBE5C3800100000000.nx_err:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 0000111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
121 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "0000111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto stop_run;
-- L0524@007A FF00463F800000000000.  if false then next else stop_run;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100011000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
122 => '1' & '1' & '1' & "11111" & O"000" & O"430" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 41;
-- L0529@007B E0D8EC54820000000000.  trace(from_microcode), directByte = 41;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0101001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
123 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0101001" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= reset1, if IS_RUNMODE then badop;
-- L0530@007C FC08803F800000000200.  alu <= reset1, if IS_RUNMODE then badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11100) then 000010001 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
124 => '1' & '1' & '1' & "11100" & O"021" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00010" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= from_R, if STACK_IS_EMPTY then ls_parchk;
-- L0531@007D F140003FF00000000000.ls_parload:  T <= from_R, if STACK_IS_EMPTY then ls_parchk;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 010000000 else 000000000, directByte = 1111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
125 => '1' & '1' & '1' & "10001" & O"200" & O"000" & "1111111" & X"E" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_fromT;
-- L0532@007E E000003F800000001200.  alu <= S_fromT;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
126 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10010" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= R_fromStack, ExpStack <= pop2, goto ls_parload;
-- L0533@007F FF001F7F800000060300.  alu <= R_fromStack, ExpStack <= pop2, if false then next else ls_parload;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001111101, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
127 => '1' & '1' & '1' & "11111" & O"000" & O"175" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= ls_load;
-- L0534@0080 E000003F800000001700.ls_parchk:  alu <= ls_load;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
128 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10111" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if LS_PARAMS_OK then next else SYNTAX_ERR;
-- L0535@0081 F600567F800000000000.  if LS_PARAMS_OK then next else SYNTAX_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 000000000 else 101011001, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
129 => '1' & '1' & '1' & "10110" & O"000" & O"531" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= Prog_start, traceALU();
-- L0536@0082 E0D5EAFFD80000000000.ls_start:  T <= Prog_start, traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110101011 else 110101011, directByte = 1111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
130 => '1' & '1' & '1' & "00000" & O"653" & O"653" & "1111111" & X"B" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if CHARIN_READY then next else ls_continue;
-- L0537@0083 EB00223F800000000000.ls_lineloop:  if CHARIN_READY then next else ls_continue;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01011) then 000000000 else 010001000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
131 => '1' & '1' & '1' & "01011" & O"000" & O"210" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if KBD_BREAK then BREAK;
-- L0538@0084 E4A7803F800000000000.  if KBD_BREAK then BREAK;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 101001111 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
132 => '1' & '1' & '1' & "00100" & O"517" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_continue;
-- L0539@0085 EA002210000000008000.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_continue;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 000000000 else 010001000, directByte = 0100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
133 => '1' & '1' & '1' & "01010" & O"000" & O"210" & "0100000" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if CHARIN_READY then next else repeat;
-- L0540@0086 EB00007F800000000000.ls_pause:  if CHARIN_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01011) then 000000000 else 000000001, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
134 => '1' & '1' & '1' & "01011" & O"000" & O"001" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
-- L0541@0087 EA002190000000008000.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 000000000 else 010000110, directByte = 0100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
135 => '1' & '1' & '1' & "01010" & O"000" & O"206" & "0100000" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- gotChar = 1, readCore16(same);
-- L0542@0088 E0B9DCFF800000008000.ls_continue:  gotChar = 1, readCore16(same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110011 else 101110011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
136 => '1' & '1' & '1' & "00000" & O"563" & O"563" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= ls_check, if R_IS_ZERO then fetch;
-- L0544@0089 F305803F800000001800.  alu <= ls_check, if R_IS_ZERO then fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 000001011 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 11000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
137 => '1' & '1' & '1' & "10011" & O"013" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "11000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if LS_PASSED_END then fetch;
-- L0545@008A F705803F800000000000.  if LS_PASSED_END then fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10111) then 000001011 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
138 => '1' & '1' & '1' & "10111" & O"013" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if LS_IN_RANGE then next else ls_nextLine;
-- L0546@008B F800253F800000000000.  if LS_IN_RANGE then next else ls_nextLine;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11000) then 000000000 else 010010100, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
139 => '1' & '1' & '1' & "11000" & O"000" & O"224" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= Y_save, printDecR();
-- L0547@008C E0BFDFFF800000001900.  alu <= Y_save, printDecR();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101111111 else 101111111, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 11001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
140 => '1' & '1' & '1' & "00000" & O"577" & O"577" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "11001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= Y_recall, directByte = ' ', outChar(from_microcode);
-- L0548@008D E0CBE5D0000100001A00.  alu <= Y_recall, directByte = ' ', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 0100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 11010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
141 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "0100000" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "11010" & '0' & '0' & '0' & '0' & '0' & O"0",

-- readCore(T);
-- L0549@008E E0CE673F800060000000.ls_charloop:  readCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011100 else 110011100, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
142 => '1' & '1' & '1' & "00000" & O"634" & O"634" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outChar(from_MDR);
-- L0550@008F E0CBE5FF800200000000.  outChar(from_MDR);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 100, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
143 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"4" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = CR, if MDR_EQU_DB then next else ls_next;
-- L0551@0090 E50024C6800000000000.ls_nextchar:  directByte = 0x0D, if MDR_EQU_DB then next else ls_next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 000000000 else 010010011, directByte = 0001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
144 => '1' & '1' & '1' & "00101" & O"000" & O"223" & "0001101" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = LF, outChar(from_microcode);
-- L0552@0091 E0CBE5C5000100000000.  directByte = 0x0A, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 0001010, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
145 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "0001010" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= inc, goto ls_lineloop;
-- L0553@0092 FF0020FFC00000000000.  T <= inc, if false then next else ls_lineloop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010000011, directByte = 1111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
146 => '1' & '1' & '1' & "11111" & O"000" & O"203" & "1111111" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= inc, goto ls_charloop;
-- L0554@0093 FF0023BFC00000000000.ls_next:  T <= inc, if false then next else ls_charloop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010001110, directByte = 1111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
147 => '1' & '1' & '1' & "11111" & O"000" & O"216" & "1111111" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- findNextCR(same);
-- L0555@0094 E0B7DBFF800000000000.ls_nextLine:  findNextCR(same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101111 else 101101111, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
148 => '1' & '1' & '1' & "00000" & O"557" & O"557" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= inc, goto ls_lineloop;
-- L0556@0095 FF0020FFC00000000000.  T <= inc, if false then next else ls_lineloop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010000011, directByte = 1111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
149 => '1' & '1' & '1' & "11111" & O"000" & O"203" & "1111111" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 26;
-- L0561@0096 E0D8EC4D020000000000.  trace(from_microcode), directByte = 26;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0011010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
150 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0011010" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0562@0097 F1AE803F800000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101011101 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
151 => '1' & '1' & '1' & "10001" & O"535" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- printDec();
-- L0563@0098 E0BF5FBF800000000000.  printDec();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101111110 else 101111110, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
152 => '1' & '1' & '1' & "00000" & O"576" & O"576" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0564@0099 FF0002FF800000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
153 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 18;
-- L0569@009A E0D8EC49020000000000.  trace(from_microcode), directByte = 18;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0010010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
154 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0010010" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- BP <= inc, readCore(BP);
-- L0570@009B E0CE673F800040600000.pq_loop:  BP <= inc, readCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011100 else 110011100, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
155 => '1' & '1' & '1' & "00000" & O"634" & O"634" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "10" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = '"', if MDR_EQU_DB then pq_done;
-- L0571@009C E5500011000000000000.  directByte = '"', if MDR_EQU_DB then pq_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 010100000 else 000000000, directByte = 0100010, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
156 => '1' & '1' & '1' & "00101" & O"240" & O"000" & "0100010" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outChar(from_MDR);
-- L0572@009D E0CBE5FF800200000000.  outChar(from_MDR);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 100, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
157 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"4" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 3;
-- L0573@009E E0D8EC41820000000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0000011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
158 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0000011" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = CR, if MDR_EQU_DB then INTERNAL_ERR else pq_loop;
-- L0574@009F E5ADA6C6800000000000.  directByte = 0x0D, if MDR_EQU_DB then INTERNAL_ERR else pq_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 101011011 else 010011011, directByte = 0001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
159 => '1' & '1' & '1' & "00101" & O"533" & O"233" & "0001101" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceBP();
-- L0575@00A0 E0D2E97F800000000000.pq_done:  traceBP();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110100101 else 110100101, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
160 => '1' & '1' & '1' & "00000" & O"645" & O"645" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0576@00A1 FF0002FF800000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
161 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 27;
-- L0581@00A2 E0D8EC4D820000000000.  trace(from_microcode), directByte = 27;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0011011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
162 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0011011" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if AT_TAB then fetch;
-- L0582@00A3 F905803F800000000000.pt_loop:  if AT_TAB then fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11001) then 000001011 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
163 => '1' & '1' & '1' & "11001" & O"013" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = ' ', outChar(from_microcode);
-- L0583@00A4 E0CBE5D0000100000000.  directByte = ' ', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 0100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
164 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "0100000" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto pt_loop;
-- L0584@00A5 FF0028FF800000000000.  if false then next else pt_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010100011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
165 => '1' & '1' & '1' & "11111" & O"000" & O"243" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 6;
-- L0589@00A6 E0D8EC43020000000000.  trace(from_microcode), directByte = 6;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0000110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
166 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0000110" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outCRLF();
-- L0590@00A7 E0CAE57F800000000000.crlf_fetch:  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010101 else 110010101, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
167 => '1' & '1' & '1' & "00000" & O"625" & O"625" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0591@00A8 FF0002FF800000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
168 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 5;
-- L0596@00A9 E0D8EC42820000000000.  trace(from_microcode), directByte = 5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0000101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
169 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0000101" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outChar(from_interpreter);
-- L0597@00AA E0CBE5FF800080000000.pc_loop:  outChar(from_interpreter);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 001, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
170 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"1" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 3;
-- L0598@00AB E0D8EC41820000000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0000011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
171 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0000011" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
-- L0599@00AC E105AABF808000000000.  IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00001) then 000001011 else 010101010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
172 => '1' & '1' & '1' & "00001" & O"013" & O"252" & "1111111" & X"0" & "00" & O"2" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 8;
-- L0604@00AD E0D8EC44020000000000.  trace(from_microcode), directByte = 8;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0001000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
173 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0001000" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- InlEnd <= InLine_start;
-- L0605@00AE E000003F800001000000.gl:  InlEnd <= InLine_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
174 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "01" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if CHARIN_READY then next else repeat;
-- L0606@00AF EB00007F800000000000.gl_loop:  if CHARIN_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01011) then 000000000 else 000000001, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
175 => '1' & '1' & '1' & "01011" & O"000" & O"001" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if KBD_BREAK then next else gl_char;
-- L0607@00B0 E4002CBF800000000000.  if KBD_BREAK then next else gl_char;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 010110010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
176 => '1' & '1' & '1' & "00100" & O"000" & O"262" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
-- L0608@00B1 FC8C2FBF800000008000.  gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11100) then 100011000 else 010111110, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
177 => '1' & '1' & '1' & "11100" & O"430" & O"276" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if CHARIN_PRINTABLE then gl_print;
-- L0609@00B2 E95C803F800000000000.gl_char:  if CHARIN_PRINTABLE then gl_print;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01001) then 010111001 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
178 => '1' & '1' & '1' & "01001" & O"271" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = CR, if CHARIN_EQU_DB then gl_cr;
-- L0610@00B3 EA620006800000000000.  directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 011000100 else 000000000, directByte = 0001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
179 => '1' & '1' & '1' & "01010" & O"304" & O"000" & "0001101" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = BACKSPACE, if CHARIN_EQU_DB then gl_bs;
-- L0611@00B4 EA608004000000000000.  directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 011000001 else 000000000, directByte = 0001000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
180 => '1' & '1' & '1' & "01010" & O"301" & O"000" & "0001000" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = ESC, if CHARIN_EQU_DB then gl_esc;
-- L0612@00B5 EA5F000D800000000000.  directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 010111110 else 000000000, directByte = 0011011, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
181 => '1' & '1' & '1' & "01010" & O"276" & O"000" & "0011011" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = TAB, if CHARIN_EQU_DB then gl_tab;
-- L0613@00B6 EA648004800000000000.  directByte = 0x09, if CHARIN_EQU_DB then gl_tab;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 011001001 else 000000000, directByte = 0001001, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
182 => '1' & '1' & '1' & "01010" & O"311" & O"000" & "0001001" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = BEEP, outChar(from_microcode);
-- L0615@00B7 E0CBE5C3800100000000.gl_ignore:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 0000111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
183 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "0000111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- gotChar = 1, goto gl_loop;
-- L0616@00B8 FF002BFF800000008000.  gotChar = 1, if false then next else gl_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010101111, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
184 => '1' & '1' & '1' & "11111" & O"000" & O"257" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if INLEND_MAX then gl_ignore;
-- L0618@00B9 E75B803F800000000000.gl_print:  if INLEND_MAX then gl_ignore;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00111) then 010110111 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
185 => '1' & '1' & '1' & "00111" & O"267" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outChar(from_charin);
-- L0619@00BA E0CBE5FF800180000000.  outChar(from_charin);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 011, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
186 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"3" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- L0620@00BB E0CD66BF80002E000000.  writeCore(InlEnd, CHARIN), InlEnd <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011010 else 110011010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
187 => '1' & '1' & '1' & "00000" & O"632" & O"632" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "01" & O"3" & "10" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- writeCore(InlEnd, zero);
-- L0621@00BC E0CD66BF800028000000.gl_write0:  writeCore(InlEnd, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011010 else 110011010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
188 => '1' & '1' & '1' & "00000" & O"632" & O"632" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "01" & O"2" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- gotChar = 1, goto gl_loop;
-- L0622@00BD FF002BFF800000008000.  gotChar = 1, if false then next else gl_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010101111, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
189 => '1' & '1' & '1' & "11111" & O"000" & O"257" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = BEEP, outChar(from_microcode);
-- L0624@00BE E0CBE5C3800100000000.gl_esc:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 0000111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
190 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "0000111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outCRLF();
-- L0625@00BF E0CAE57F800000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010101 else 110010101, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
191 => '1' & '1' & '1' & "00000" & O"625" & O"625" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- gotChar = 1, goto gl;
-- L0626@00C0 FF002BBF800000008000.  gotChar = 1, if false then next else gl;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010101110, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
192 => '1' & '1' & '1' & "11111" & O"000" & O"256" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if INLEND_MIN then gl_ignore;
-- L0628@00C1 E85B803F800000000000.gl_bs:  if INLEND_MIN then gl_ignore;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01000) then 010110111 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
193 => '1' & '1' & '1' & "01000" & O"267" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = BACKSPACE, outChar(from_microcode);
-- L0629@00C2 E0CBE5C4000100000000.  directByte = 0x08, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 0001000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
194 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "0001000" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- InlEnd <= dec, goto gl_write0;
-- L0630@00C3 FF002F3F800003000000.  InlEnd <= dec, if false then next else gl_write0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010111100, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 11, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
195 => '1' & '1' & '1' & "11111" & O"000" & O"274" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "11" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- L0632@00C4 E0CD66BF80002E000000.gl_cr:  writeCore(InlEnd, CHARIN), InlEnd <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011010 else 110011010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
196 => '1' & '1' & '1' & "00000" & O"632" & O"632" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "01" & O"3" & "10" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- writeCore(InlEnd, zero);
-- L0633@00C5 E0CD66BF800028000000.  writeCore(InlEnd, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011010 else 110011010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
197 => '1' & '1' & '1' & "00000" & O"632" & O"632" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "01" & O"2" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- dump_input();
-- L0634@00C6 E0CF67BF800000000000.  dump_input();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011110 else 110011110, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
198 => '1' & '1' & '1' & "00000" & O"636" & O"636" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outCRLF();
-- L0635@00C7 E0CAE57F800000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010101 else 110010101, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
199 => '1' & '1' & '1' & "00000" & O"625" & O"625" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- gotChar = 1, BP <= Inline_start, goto fetch;
-- L0636@00C8 FF0002FF800000208000.  gotChar = 1, BP <= Inline_start, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 001, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
200 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"1" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if INLEND_MAX then gl_ignore;
-- L0638@00C9 E75B803F800000000000.gl_tab:  if INLEND_MAX then gl_ignore;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00111) then 010110111 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
201 => '1' & '1' & '1' & "00111" & O"267" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if AT_TAB then gl_write0;
-- L0639@00CA F95E003F800000000000.gl_tabloop:  if AT_TAB then gl_write0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11001) then 010111100 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
202 => '1' & '1' & '1' & "11001" & O"274" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = ' ', outChar(from_microcode);
-- L0640@00CB E0CBE5D0000100000000.  directByte = ' ', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 0100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
203 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "0100000" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = ' ', writeCore(InlEnd, from_microcode), InlEnd <= inc;
-- L0641@00CC E0CD669000003E000000.  directByte = ' ', writeCore(InlEnd, from_microcode), InlEnd <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011010 else 110011010, directByte = 0100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 111, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
204 => '1' & '1' & '1' & "00000" & O"632" & O"632" & "0100000" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "01" & O"7" & "10" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto gl_tabloop;
-- L0642@00CD FF0032BF800000000000.  if false then next else gl_tabloop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011001010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
205 => '1' & '1' & '1' & "11111" & O"000" & O"312" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 40;
-- L0647@00CE E0D8EC54020000000000.  trace(from_microcode), directByte = 40;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0101000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
206 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0101000" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_fromStack, ExpStack <= pop2;
-- L0648@00CF E000003F800000060400.  alu <= S_fromStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
207 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00100" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_plus_R;
-- L0649@00D0 E000003F800000000500.  alu <= S_plus_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
208 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00101" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
-- L0650@00D1 F5AC803FA80000000000.  T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 101011001 else 000000000, directByte = 1111111, T <= 0101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
209 => '1' & '1' & '1' & "10101" & O"531" & O"000" & "1111111" & X"5" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- Lino <= T, if Y_ZERO then SYNTAX_ERR;
-- L0651@00D2 F4AC803F800000000080.  Lino <= T, if Y_ZERO then SYNTAX_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 101011001 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
210 => '1' & '1' & '1' & "10100" & O"531" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & O"0",

-- traceALU();
-- L0652@00D3 E0D5EAFF800000000000.  traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110101011 else 110101011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
211 => '1' & '1' & '1' & "00000" & O"653" & O"653" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- skipSpaces();
-- L0654@00D4 E0C763BF800000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110001110 else 110001110, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
212 => '1' & '1' & '1' & "00000" & O"616" & O"616" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= BP;
-- L0655@00D5 E000003FD00000000000.  T <= BP;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
213 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"A" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- BE <= T, readCore(T);
-- L0656@00D6 E0CE673F800060000040.il_findBE:  BE <= T, readCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011100 else 110011100, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 1, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
214 => '1' & '1' & '1' & "00000" & O"634" & O"634" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '1' & '0' & '0' & '0' & O"0",

-- directByte = CR, if MDR_EQU_DB then il_fork;
-- L0657@00D7 E56C8006800000000000.  directByte = 0x0D, if MDR_EQU_DB then il_fork;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 011011001 else 000000000, directByte = 0001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
215 => '1' & '1' & '1' & "00101" & O"331" & O"000" & "0001101" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= inc, goto il_findBE;
-- L0658@00D8 FF0035BFC00000000000.  T <= inc, if false then next else il_findBE;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011010110, directByte = 1111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
216 => '1' & '1' & '1' & "11111" & O"000" & O"326" & "1111111" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if IMPLINE_EMPTY then next else changeLine;
-- L0660@00D9 E80037FF800000000000.il_fork:  if IMPLINE_EMPTY then next else changeLine;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01000) then 000000000 else 011011111, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
217 => '1' & '1' & '1' & "01000" & O"000" & O"337" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- scanProgram();
-- L0662@00DA E077BBFF800000000000.deleteLine:  scanProgram();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011101111 else 011101111, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
218 => '1' & '1' & '1' & "00000" & O"357" & O"357" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if BASLINE_FOUND then next else WarmStart;
-- L0663@00DB E70001BF800000000000.  if BASLINE_FOUND then next else WarmStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00111) then 000000000 else 000000110, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
219 => '1' & '1' & '1' & "00111" & O"000" & O"006" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if Y_ZERO then next else WarmStart;
-- L0664@00DC F40001BF800000000000.  if Y_ZERO then next else WarmStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 000000000 else 000000110, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
220 => '1' & '1' & '1' & "10100" & O"000" & O"006" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- delBasLine();
-- L0665@00DD E083C1FF800000000000.  delBasLine();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100000111 else 100000111, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
221 => '1' & '1' & '1' & "00000" & O"407" & O"407" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto WarmStart;
-- L0666@00DE FF0001BF800000000000.  if false then next else WarmStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000110, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
222 => '1' & '1' & '1' & "11111" & O"000" & O"006" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- scanProgram();
-- L0668@00DF E077BBFF800000000000.changeLine:  scanProgram();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011101111 else 011101111, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
223 => '1' & '1' & '1' & "00000" & O"357" & O"357" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if BASLINE_FOUND then next else appendLine;
-- L0669@00E0 E700393F800000000000.  if BASLINE_FOUND then next else appendLine;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00111) then 000000000 else 011100100, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
224 => '1' & '1' & '1' & "00111" & O"000" & O"344" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if Y_ZERO then next else insertLine;
-- L0670@00E1 F40038FF800000000000.  if Y_ZERO then next else insertLine;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 000000000 else 011100011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
225 => '1' & '1' & '1' & "10100" & O"000" & O"343" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto RSTACK_ERR;
-- L0672@00E2 FF0057FF800000000000.replaceLine:  if false then next else RSTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101011111, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
226 => '1' & '1' & '1' & "11111" & O"000" & O"537" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto ESTACK_ERR;
-- L0674@00E3 FF00577F800000000000.insertLine:  if false then next else ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101011101, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
227 => '1' & '1' & '1' & "11111" & O"000" & O"535" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_fromLino, T <= dec;
-- L0676@00E4 E000003FC80000001400.appendLine:  alu <= S_fromLino, T <= dec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
228 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"9" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & O"0",

-- writeCore(T, from_SHi);
-- L0677@00E5 E0CD66BF800074000000.  writeCore(T, from_SHi);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011010 else 110011010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 101, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
229 => '1' & '1' & '1' & "00000" & O"632" & O"632" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"5" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= inc;
-- L0678@00E6 E000003FC00000000000.  T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
230 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- writeCore(T, from_SLo);
-- L0679@00E7 E0CD66BF800078000000.  writeCore(T, from_SLo);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011010 else 110011010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 110, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
231 => '1' & '1' & '1' & "00000" & O"632" & O"632" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"6" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= inc;
-- L0680@00E8 E000003FC00000000000.  T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
232 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- readCore(BP);
-- L0681@00E9 E0CE673F800040000000.app_loop:  readCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011100 else 110011100, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
233 => '1' & '1' & '1' & "00000" & O"634" & O"634" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- writeCore(T, same);
-- L0682@00EA E0CD66BF800060000000.  writeCore(T, same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011010 else 110011010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
234 => '1' & '1' & '1' & "00000" & O"632" & O"632" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- BP <= inc, T <= inc;
-- L0683@00EB E000003FC00000600000.  BP <= inc, T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
235 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = CR, if MDR_EQU_DB then next else app_loop;
-- L0684@00EC E5003A46800000000000.  directByte = 0x0D, if MDR_EQU_DB then next else app_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 000000000 else 011101001, directByte = 0001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
236 => '1' & '1' & '1' & "00101" & O"000" & O"351" & "0001101" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- write2Nulls(same);
-- L0685@00ED E0BBDDFF800000000000.  write2Nulls(same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110111 else 101110111, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
237 => '1' & '1' & '1' & "00000" & O"567" & O"567" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto WarmStart;
-- L0686@00EE FF0001BF800000000000.  if false then next else WarmStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000110, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
238 => '1' & '1' & '1' & "11111" & O"000" & O"006" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= reset0;
-- L0689@00EF E000003F800000000100.scanProgram:  alu <= reset0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
239 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= from_R;
-- L0690@00F0 E000003FF00000000000.  T <= from_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
240 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"E" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- LS <= T, LE <= T, T <= Prog_start;
-- L0691@00F1 E000003FD80000000030.  LS <= T, LE <= T, T <= Prog_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 1, LE <= 1, PrgEnd <= 0, dummy = 000;
241 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"B" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '1' & '1' & '0' & O"0",

-- PrgEnd <= T;
-- L0692@00F2 E000003F800000000008.  PrgEnd <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 1, dummy = 000;
242 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '1' & O"0",

-- readCore16(same);
-- L0693@00F3 E0B9DCFF800000000000.scan_loop:  readCore16(same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110011 else 101110011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
243 => '1' & '1' & '1' & "00000" & O"563" & O"563" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceALU();
-- L0694@00F4 E0D5EAFF800000000000.  traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110101011 else 110101011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
244 => '1' & '1' & '1' & "00000" & O"653" & O"653" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_fromLino, if R_IS_ZERO then next else scan_check;
-- L0695@00F5 F3003E3F800000001400.  alu <= S_fromLino, if R_IS_ZERO then next else scan_check;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 000000000 else 011111000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
245 => '1' & '1' & '1' & "10011" & O"000" & O"370" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= dec;
-- L0696@00F6 E000003FC80000000000.  T <= dec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
246 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"9" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- PrgEnd <= T, goto scan_exit;
-- L0697@00F7 FF0041BF800000000008.  PrgEnd <= T, if false then next else scan_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100000110, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 1, dummy = 000;
247 => '1' & '1' & '1' & "11111" & O"000" & O"406" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '1' & O"0",

-- alu <= S_minus_R;
-- L0698@00F8 E000003F800000000600.scan_check:  alu <= S_minus_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
248 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if Y_ZERO then scan_found else next;
-- L0699@00F9 F47E803F800000000000.  if Y_ZERO then scan_found else next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 011111101 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
249 => '1' & '1' & '1' & "10100" & O"375" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if Y_SIGN then scan_found else next;
-- L0700@00FA F57E803F800000000000.  if Y_SIGN then scan_found else next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 011111101 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
250 => '1' & '1' & '1' & "10101" & O"375" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- findNextCR(same);
-- L0701@00FB E0B7DBFF800000000000.scan_next:  findNextCR(same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101111 else 101101111, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
251 => '1' & '1' & '1' & "00000" & O"557" & O"557" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= inc, goto scan_loop;
-- L0702@00FC FF003CFFC00000000000.scan_line:  T <= inc, if false then next else scan_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011110011, directByte = 1111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
252 => '1' & '1' & '1' & "11111" & O"000" & O"363" & "1111111" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if BASLINE_FOUND then scan_next;
-- L0703@00FD E77D803F800000000000.scan_found:  if BASLINE_FOUND then scan_next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00111) then 011111011 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
253 => '1' & '1' & '1' & "00111" & O"373" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= dec;
-- L0704@00FE E000003FC80000000000.  T <= dec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
254 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"9" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= dec;
-- L0705@00FF E000003FC80000000000.  T <= dec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
255 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"9" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- LS <= T, T <= inc;
-- L0706@0100 E000003FC00000000020.  LS <= T, T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 1, LE <= 0, PrgEnd <= 0, dummy = 000;
256 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '1' & '0' & '0' & O"0",

-- findNextCR(inc);
-- L0707@0101 E0B7DBFFC00000000000.  findNextCR(inc);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101111 else 101101111, directByte = 1111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
257 => '1' & '1' & '1' & "00000" & O"557" & O"557" & "1111111" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- LE <= T, T <= from_R;
-- L0708@0102 E000003FF00000000010.  LE <= T, T <= from_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 1, PrgEnd <= 0, dummy = 000;
258 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"E" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '1' & '0' & O"0",

-- ExpStack <= push_TWord, goto scan_line;
-- L0709@0103 FF003F3F800000040000.  ExpStack <= push_TWord, if false then next else scan_line;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011111100, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
259 => '1' & '1' & '1' & "11111" & O"000" & O"374" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_fromLino, if BASLINE_FOUND then next else scan_exit;
-- L0710@0104 E70041BF800000001400.scan_done:  alu <= S_fromLino, if BASLINE_FOUND then next else scan_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00111) then 000000000 else 100000110, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
260 => '1' & '1' & '1' & "00111" & O"000" & O"406" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0711@0105 E000003F800000060300.  alu <= R_fromStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
261 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_minus_R, back;
-- L0712@0106 E00100BF800000000600.scan_exit:  alu <= S_minus_R, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
262 => '1' & '1' & '1' & "00000" & O"002" & O"002" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= copy_del;
-- L0715@0107 E000003F800000001500.delBasLine:  alu <= copy_del;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
263 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10101" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if Y_ZERO then return;
-- L0716@0108 F401003F800000000000.dbs_loop:  if Y_ZERO then return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 000000010 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
264 => '1' & '1' & '1' & "10100" & O"002" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= from_S;
-- L0717@0109 E000003FE80000000000.  T <= from_S;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
265 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"D" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- readCore(T);
-- L0718@010A E0CE673F800060000000.  readCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011100 else 110011100, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
266 => '1' & '1' & '1' & "00000" & O"634" & O"634" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= from_R;
-- L0719@010B E000003FF00000000000.  T <= from_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
267 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"E" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- writeCore(T, same);
-- L0720@010C E0CD66BF800060000000.  writeCore(T, same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011010 else 110011010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
268 => '1' & '1' & '1' & "00000" & O"632" & O"632" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceALU();
-- L0721@010D E0D5EAFF800000000000.  traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110101011 else 110101011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
269 => '1' & '1' & '1' & "00000" & O"653" & O"653" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= copy_inc, goto dbs_loop;
-- L0722@010E FF00423F800000001600.  alu <= copy_inc, if false then next else dbs_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100001000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
270 => '1' & '1' & '1' & "11111" & O"000" & O"410" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10110" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 43;
-- L0727@010F E0D8EC55820000000000.  trace(from_microcode), directByte = 43;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0101011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
271 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0101011" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto ColdStart;
-- L0728@0110 FF00013F800000000000.  if false then next else ColdStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000100, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
272 => '1' & '1' & '1' & "11111" & O"000" & O"004" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 42;
-- L0733@0111 E0D8EC55020000000000.  trace(from_microcode), directByte = 42;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0101010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
273 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0101010" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= IL_PC;
-- L0734@0112 E000003F880000000000.  T <= IL_PC;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
274 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"1" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- XQhere <= T, readCore16(Prog_start);
-- L0735@0113 E0B9DCFFD82000000000.  XQhere <= T, readCore16(Prog_start);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110011 else 101110011, directByte = 1111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 1, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
275 => '1' & '1' & '1' & "00000" & O"563" & O"563" & "1111111" & X"B" & "00" & O"0" & '1' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if R_IS_ZERO then NOPROG_ERR;
-- L0736@0114 F3A9803F800000000000.  if R_IS_ZERO then NOPROG_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 101010011 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
276 => '1' & '1' & '1' & "10011" & O"523" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- BP <= T, T <= from_R;
-- L0737@0115 E000003FF00000C00000.  BP <= T, T <= from_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
277 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"E" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"6" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- Lino <= T, goto fetch;
-- L0738@0116 FF0002FF800000000080.  Lino <= T, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
278 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & O"0",

-- traceString 44;
-- L0743@0117 E0D8EC56020000000000.  trace(from_microcode), directByte = 44;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0101100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
279 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0101100" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = 'S', outChar(from_microcode);
-- L0744@0118 E0CBE5E9800100000000.stop_run:  directByte = 'S', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 1010011, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
280 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "1010011" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = 'T', outChar(from_microcode);
-- L0745@0119 E0CBE5EA000100000000.  directByte = 'T', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 1010100, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
281 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "1010100" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = 'O', outChar(from_microcode);
-- L0746@011A E0CBE5E7800100000000.  directByte = 'O', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 1001111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
282 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "1001111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = 'P', outChar(from_microcode);
-- L0747@011B E0CBE5E8000100000000.  directByte = 'P', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 1010000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
283 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "1010000" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto print_lino;
-- L0748@011C FF0059BF800000000000.  if false then next else print_lino;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101100110, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
284 => '1' & '1' & '1' & "11111" & O"000" & O"546" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 19;
-- L0753@011D E0D8EC49820000000000.  trace(from_microcode), directByte = 19;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0010011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
285 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0010011" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if STACK_IS_EMPTY then RSTACK_ERR;
-- L0754@011E F1AF803F800000000000.  if STACK_IS_EMPTY then RSTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101011111 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
286 => '1' & '1' & '1' & "10001" & O"537" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= RetStack, RetStack <= pop, goto fetch;
-- L0755@011F FF0002FF81C800000000.  IL_PC <= RetStack, RetStack <= pop, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 111, XQhere <= 0, IL_OP <= 0, RetStack <= 10, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
287 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"7" & '0' & '0' & "10" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 20;
-- L0760@0120 E0D8EC4A020000000000.  trace(from_microcode), directByte = 20;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0010100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
288 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0010100" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 3;
-- L0761@0121 E0D8EC41820000000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0000011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
289 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0000011" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if STACK_IS_FULL then RSTACK_ERR;
-- L0762@0122 F0AF803F800000000000.  if STACK_IS_FULL then RSTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 101011111 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
290 => '1' & '1' & '1' & "10000" & O"537" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- RetStack <= push_IL_PC_PLUS_1, goto jump;
-- L0763@0123 FF0049BF800C00000000.  RetStack <= push_IL_PC_PLUS_1, if false then next else jump;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100100110, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 11, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
291 => '1' & '1' & '1' & "11111" & O"000" & O"446" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "11" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 21;
-- L0768@0124 E0D8EC4A820000000000.  trace(from_microcode), directByte = 21;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0010101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
292 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0010101" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 3;
-- L0769@0125 E0D8EC41820000000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0000011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
293 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0000011" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= direct11, goto fetch;
-- L0770@0126 FF0002FF818000000000.jump:  IL_PC <= direct11, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 110, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
294 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"6" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 7;
-- L0775@0127 E0D8EC43820000000000.  trace(from_microcode), directByte = 7;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0000111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
295 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0000111" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= pc_plus_off6;
-- L0776@0128 E000003F810000000000.  IL_PC <= pc_plus_off6;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 100, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
296 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"4" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceGoto;
-- L0777@0129 E0D8EC4F020000000000.br_exit:  trace(from_microcode), directByte = 30;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0011110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
297 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0011110" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0778@012A FF0002FF800000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
298 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 7;
-- L0783@012B E0D8EC43820000000000.  trace(from_microcode), directByte = 7;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0000111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
299 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0000111" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto badop;
-- L0784@012C FF00047F800000000000.  if false then next else badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000010001, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
300 => '1' & '1' & '1' & "11111" & O"000" & O"021" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 17;
-- L0789@012D E0D8EC48820000000000.  trace(from_microcode), directByte = 17;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0010001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
301 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0010001" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= IL_PC, BP <= save, skipSpaces();
-- L0790@012E E0C763BF880000800000.  T <= IL_PC, BP <= save, skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110001110 else 110001110, directByte = 1111111, T <= 0001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 100, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
302 => '1' & '1' & '1' & "00000" & O"616" & O"616" & "1111111" & X"1" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"4" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 3;
-- L0791@012F E0D8EC41820000000000.bc_loop:  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0000011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
303 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0000011" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- readCore(BP);
-- L0792@0130 E0CE673F800040000000.  readCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011100 else 110011100, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
304 => '1' & '1' & '1' & "00000" & O"634" & O"634" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
-- L0793@0131 F2004DBF800000000000.  if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10010) then 000000000 else 100110110, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
305 => '1' & '1' & '1' & "10010" & O"000" & O"466" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if ILCODEBYTE_BIT7 then bc_match;
-- L0794@0132 E19A003F800000000000.  if ILCODEBYTE_BIT7 then bc_match;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00001) then 100110100 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
306 => '1' & '1' & '1' & "00001" & O"464" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- BP <= inc, IL_PC <= inc, goto bc_loop;
-- L0795@0133 FF004BFF808000600000.  BP <= inc, IL_PC <= inc, if false then next else bc_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100101111, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
307 => '1' & '1' & '1' & "11111" & O"000" & O"457" & "1111111" & X"0" & "00" & O"2" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- BP <= inc, IL_PC <= inc;
-- L0796@0134 E000003F808000600000.bc_match:  BP <= inc, IL_PC <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
308 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"2" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0798@0135 FF0002FF800000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
309 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- BP <= restore, IL_PC <= T;
-- L0799@0136 E000003F80C000A00000.bc_exit:  BP <= restore, IL_PC <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 011, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 101, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
310 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"3" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"5" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= pc_plus_off5, goto br_exit;
-- L0801@0137 FF004A7F814000000000.  IL_PC <= pc_plus_off5, if false then next else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100101001, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
311 => '1' & '1' & '1' & "11111" & O"000" & O"451" & "1111111" & X"0" & "00" & O"5" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 16;
-- L0806@0138 E0D8EC48020000000000.  trace(from_microcode), directByte = 16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0010000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
312 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0010000" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- skipSpaces();
-- L0807@0139 E0C763BF800000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110001110 else 110001110, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
313 => '1' & '1' & '1' & "00000" & O"616" & O"616" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
-- L0808@013A EF9E003F800010000000.  MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01111) then 100111100 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 100, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
314 => '1' & '1' & '1' & "01111" & O"474" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"4" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop else br_exit;
-- L0809@013B FA08CA7F814000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11010) then 000010001 else 100101001, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
315 => '1' & '1' & '1' & "11010" & O"021" & O"451" & "1111111" & X"0" & "00" & O"5" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
-- L0810@013C F0AE803FB80000000000.bv_exec:  T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 101011101 else 000000000, directByte = 1111111, T <= 0111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
316 => '1' & '1' & '1' & "10000" & O"535" & O"000" & "1111111" & X"7" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= push_TByte, BP <= inc, goto fetch;
-- L0811@013D FF0002FF800000650000.  ExpStack <= push_TByte, BP <= inc, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 101, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
317 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"5" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 14;
-- L0816@013E E0D8EC47020000000000.  trace(from_microcode), directByte = 14;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0001110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
318 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0001110" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- skipSpaces();
-- L0817@013F E0C763BF800000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110001110 else 110001110, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
319 => '1' & '1' & '1' & "00000" & O"616" & O"616" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= reset0, if MDR_IS_NUM then bn_loop;
-- L0818@0140 EEA2803F800000000100.  alu <= reset0, if MDR_IS_NUM then bn_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01110) then 101000101 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
320 => '1' & '1' & '1' & "01110" & O"505" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
-- L0819@0141 FA08803F814000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11010) then 000010001 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
321 => '1' & '1' & '1' & "11010" & O"021" & O"000" & "1111111" & X"0" & "00" & O"5" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceY();
-- L0820@0142 E0D46A3F800000000000.bn_exit:  traceY();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110101000 else 110101000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
322 => '1' & '1' & '1' & "00000" & O"650" & O"650" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceGoto;
-- L0821@0143 E0D8EC4F020000000000.  trace(from_microcode), directByte = 30;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0011110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
323 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0011110" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0822@0144 FF0002FF800000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
324 => '1' & '1' & '1' & "11111" & O"000" & O"013" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= Yx10_plus_MDR, BP <= inc;
-- L0823@0145 E000003F800000601000.bn_loop:  alu <= Yx10_plus_MDR, BP <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
325 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "10000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if ALU_OVERFLOW then OVERFLOW_ERR;
-- L0824@0146 F7AB803F800000000000.  if ALU_OVERFLOW then OVERFLOW_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10111) then 101010111 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
326 => '1' & '1' & '1' & "10111" & O"527" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- readCore(BP);
-- L0825@0147 E0CE673F800040000000.  readCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011100 else 110011100, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
327 => '1' & '1' & '1' & "00000" & O"634" & O"634" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if MDR_IS_NUM then bn_loop;
-- L0826@0148 EEA2803F800000000000.  if MDR_IS_NUM then bn_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01110) then 101000101 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
328 => '1' & '1' & '1' & "01110" & O"505" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
-- L0827@0149 F0AE803FA80000000000.  T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 101011101 else 000000000, directByte = 1111111, T <= 0101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
329 => '1' & '1' & '1' & "10000" & O"535" & O"000" & "1111111" & X"5" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= push_TWord, goto bn_exit;
-- L0828@014A FF0050BF800000040000.  ExpStack <= push_TWord, if false then next else bn_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101000010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
330 => '1' & '1' & '1' & "11111" & O"000" & O"502" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 13;
-- L0833@014B E0D8EC46820000000000.  trace(from_microcode), directByte = 13;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0001101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
331 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0001101" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- skipSpaces();
-- L0834@014C E0C763BF800000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110001110 else 110001110, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
332 => '1' & '1' & '1' & "00000" & O"616" & O"616" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = CR, if MDR_EQU_DB then fetch;
-- L0835@014D E5058006800000000000.  directByte = 0x0D, if MDR_EQU_DB then fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 000001011 else 000000000, directByte = 0001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
333 => '1' & '1' & '1' & "00101" & O"013" & O"000" & "0001101" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= pc_plus_off5, goto br_exit;
-- L0836@014E FF004A7F814000000000.  IL_PC <= pc_plus_off5, if false then next else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100101001, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
334 => '1' & '1' & '1' & "11111" & O"000" & O"451" & "1111111" & X"0" & "00" & O"5" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- gotChar = 1, traceString 55;
-- L0840@014F E0D8EC5B820000008000.BREAK:  gotChar = 1, trace(from_microcode), directByte = 55;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0110111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
335 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0110111" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outBeep();
-- L0841@0150 E0C964BF800000000000.  outBeep();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010010 else 110010010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
336 => '1' & '1' & '1' & "00000" & O"622" & O"622" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = 'B', outChar(from_microcode);
-- L0842@0151 E0CBE5E1000100000000.  directByte = 'B', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 1000010, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
337 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "1000010" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto traceDetails;
-- L0843@0152 FF0058BF800000000000.  if false then next else traceDetails;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101100010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
338 => '1' & '1' & '1' & "11111" & O"000" & O"542" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 50;
-- L0845@0153 E0D8EC59020000000000.NOPROG_ERR:  trace(from_microcode), directByte = 50;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0110010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
339 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0110010" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto traceError;
-- L0846@0154 FF00583F800000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101100000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
340 => '1' & '1' & '1' & "11111" & O"000" & O"540" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 57;
-- L0847@0155 E0D8EC5C820000000000.DIVBY0_ERR:  trace(from_microcode), directByte = 57;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0111001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
341 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0111001" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto traceError;
-- L0848@0156 FF00583F800000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101100000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
342 => '1' & '1' & '1' & "11111" & O"000" & O"540" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 58;
-- L0849@0157 E0D8EC5D020000000000.OVERFLOW_ERR:  trace(from_microcode), directByte = 58;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0111010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
343 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0111010" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto traceError;
-- L0850@0158 FF00583F800000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101100000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
344 => '1' & '1' & '1' & "11111" & O"000" & O"540" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 61;
-- L0851@0159 E0D8EC5E820000000000.SYNTAX_ERR:  trace(from_microcode), directByte = 61;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0111101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
345 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0111101" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto traceError;
-- L0852@015A FF00583F800000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101100000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
346 => '1' & '1' & '1' & "11111" & O"000" & O"540" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 62;
-- L0853@015B E0D8EC5F020000000000.INTERNAL_ERR:  trace(from_microcode), directByte = 62;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0111110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
347 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0111110" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto traceError;
-- L0854@015C FF00583F800000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101100000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
348 => '1' & '1' & '1' & "11111" & O"000" & O"540" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 60;
-- L0855@015D E0D8EC5E020000000000.ESTACK_ERR:  trace(from_microcode), directByte = 60;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0111100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
349 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0111100" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto traceError;
-- L0856@015E FF00583F800000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101100000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
350 => '1' & '1' & '1' & "11111" & O"000" & O"540" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 59;
-- L0857@015F E0D8EC5D820000000000.RSTACK_ERR:  trace(from_microcode), directByte = 59;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0111011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
351 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0111011" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outBeep();
-- L0858@0160 E0C964BF800000000000.traceError:  outBeep();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010010 else 110010010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
352 => '1' & '1' & '1' & "00000" & O"622" & O"622" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = 'E', outChar(from_microcode);
-- L0859@0161 E0CBE5E2800100000000.  directByte = 'E', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 1000101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
353 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "1000101" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = '#', outChar(from_microcode), T <= IL_PC;
-- L0860@0162 E0CBE5D1880100000000.traceDetails:  directByte = '#', outChar(from_microcode), T <= IL_PC;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 0100011, T <= 0001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
354 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "0100011" & X"1" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= dec;
-- L0861@0163 E000003FC80000000000.  T <= dec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
355 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"9" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= R_fromT, printDecR();
-- L0862@0164 E0BFDFFF800000001300.  alu <= R_fromT, printDecR();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101111111 else 101111111, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
356 => '1' & '1' & '1' & "00000" & O"577" & O"577" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10011" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if IS_RUNMODE then next else err_done;
-- L0863@0165 FC005B3F800000000000.  if IS_RUNMODE then next else err_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11100) then 000000000 else 101101100, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
357 => '1' & '1' & '1' & "11100" & O"000" & O"554" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = ' ', outChar(from_microcode);
-- L0864@0166 E0CBE5D0000100000000.print_lino:  directByte = ' ', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 0100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
358 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "0100000" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = 'A', outChar(from_microcode);
-- L0865@0167 E0CBE5E0800100000000.  directByte = 'A', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 1000001, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
359 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "1000001" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = 'T', outChar(from_microcode);
-- L0866@0168 E0CBE5EA000100000000.  directByte = 'T', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 1010100, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
360 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "1010100" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = ' ', outChar(from_microcode), alu <= S_fromLino;
-- L0867@0169 E0CBE5D0000100001400.  directByte = ' ', outChar(from_microcode), alu <= S_fromLino;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 0100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
361 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "0100000" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= from_S;
-- L0868@016A E000003FE80000000000.  T <= from_S;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
362 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"D" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= R_fromT, printDecR();
-- L0869@016B E0BFDFFF800000001300.  alu <= R_fromT, printDecR();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101111111 else 101111111, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
363 => '1' & '1' & '1' & "00000" & O"577" & O"577" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10011" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outCRLF();
-- L0870@016C E0CAE57F800000000000.err_done:  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010101 else 110010101, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
364 => '1' & '1' & '1' & "00000" & O"625" & O"625" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- trace(crlf);
-- L0871@016D E0D8EC7F860000000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 1111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
365 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "1111111" & X"0" & "11" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto WarmStart;
-- L0872@016E FF0001BF800000000000.  if false then next else WarmStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000110, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
366 => '1' & '1' & '1' & "11111" & O"000" & O"006" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- readCore(T);
-- L0874@016F E0CE673F800060000000.findNextCR:  readCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011100 else 110011100, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
367 => '1' & '1' & '1' & "00000" & O"634" & O"634" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = CR, if MDR_EQU_DB then return;
-- L0875@0170 E5010006800000000000.  directByte = 0x0D, if MDR_EQU_DB then return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 000000010 else 000000000, directByte = 0001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
368 => '1' & '1' & '1' & "00101" & O"002" & O"000" & "0001101" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = NULL, if MDR_EQU_DB then INTERNAL_ERR;
-- L0876@0171 E5AD8000000000000000.  directByte = 0x00, if MDR_EQU_DB then INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 101011011 else 000000000, directByte = 0000000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
369 => '1' & '1' & '1' & "00101" & O"533" & O"000" & "0000000" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= inc, goto findNextCR;
-- L0877@0172 FF005BFFC00000000000.  T <= inc, if false then next else findNextCR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101101111, directByte = 1111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
370 => '1' & '1' & '1' & "11111" & O"000" & O"557" & "1111111" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= reset1, readCore(T);
-- L0879@0173 E0CE673F800060000200.readCore16:  alu <= reset1, readCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011100 else 110011100, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
371 => '1' & '1' & '1' & "00000" & O"634" & O"634" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00010" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= Rx256_plus_MDR, T <= inc;
-- L0880@0174 E000003FC00000001100.  alu <= Rx256_plus_MDR, T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
372 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- readCore(T);
-- L0881@0175 E0CE673F800060000000.  readCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011100 else 110011100, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
373 => '1' & '1' & '1' & "00000" & O"634" & O"634" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= Rx256_plus_MDR, T <= inc, back;
-- L0882@0176 E00100BFC00000001100.  alu <= Rx256_plus_MDR, T <= inc, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 1111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
374 => '1' & '1' & '1' & "00000" & O"002" & O"002" & "1111111" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- writeCore(T, zero), T <= inc;
-- L0884@0177 E0CD66BFC00068000000.write2Nulls:  writeCore(T, zero), T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011010 else 110011010, directByte = 1111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
375 => '1' & '1' & '1' & "00000" & O"632" & O"632" & "1111111" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"2" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- writeCore(T, zero);
-- L0885@0178 E0CD66BF800068000000.  writeCore(T, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011010 else 110011010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
376 => '1' & '1' & '1' & "00000" & O"632" & O"632" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"2" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- back;
-- L0886@0179 E00100BF800000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
377 => '1' & '1' & '1' & "00000" & O"002" & O"002" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0889@017A F1AE803F800000000000.pullRS:  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101011101 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
378 => '1' & '1' & '1' & "10001" & O"535" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0890@017B E000003F800000060300.  alu <= R_fromStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
379 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0891@017C F1AE803F800000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101011101 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
380 => '1' & '1' & '1' & "10001" & O"535" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_fromStack, ExpStack <= pop2, back;
-- L0892@017D E00100BF800000060400.  alu <= S_fromStack, ExpStack <= pop2, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
381 => '1' & '1' & '1' & "00000" & O"002" & O"002" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00100" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0895@017E E000003F800000060300.printDec:  alu <= R_fromStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
382 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= bcd_start;
-- L0897@017F E000003F800000000A00.printDecR:  alu <= bcd_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
383 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01010" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= bcd_next, if ALU_READY then next else repeat;
-- L0898@0180 F600007F800000000B00.  alu <= bcd_next, if ALU_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 000000000 else 000000001, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
384 => '1' & '1' & '1' & "10110" & O"000" & O"001" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01011" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if ALU_SIGN then next else pn_5;
-- L0900@0181 F80060FF800000000000.  if ALU_SIGN then next else pn_5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11000) then 000000000 else 110000011, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
385 => '1' & '1' & '1' & "11000" & O"000" & O"603" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = '-', outChar(from_microcode);
-- L0901@0182 E0CBE5D6800100000000.  directByte = '-', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 0101101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
386 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "0101101" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outNZChar(from_YtoAlpha);
-- L0902@0183 E0CCE67F800280000000.pn_5:  outNZChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
387 => '1' & '1' & '1' & "00000" & O"631" & O"631" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= Yx16;
-- L0903@0184 E000003F800000000900.pn_4:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
388 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outNZChar(from_YtoAlpha);
-- L0904@0185 E0CCE67F800280000000.  outNZChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
389 => '1' & '1' & '1' & "00000" & O"631" & O"631" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= Yx16;
-- L0905@0186 E000003F800000000900.pn_3:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
390 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outNZChar(from_YtoAlpha);
-- L0906@0187 E0CCE67F800280000000.  outNZChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
391 => '1' & '1' & '1' & "00000" & O"631" & O"631" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= Yx16;
-- L0907@0188 E000003F800000000900.pn_2:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
392 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outNZChar(from_YtoAlpha);
-- L0908@0189 E0CCE67F800280000000.  outNZChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
393 => '1' & '1' & '1' & "00000" & O"631" & O"631" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= Yx16;
-- L0909@018A E000003F800000000900.pn_1:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
394 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outNZChar(from_YtoAlpha);
-- L0910@018B E0CCE67F800280000000.  outNZChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
395 => '1' & '1' & '1' & "00000" & O"631" & O"631" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= Yx16;
-- L0911@018C E000003F800000000900.pn_0:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
396 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- CHAROUT <= from_YtoAlpha, goto outChar;
-- L0912@018D FF0065FF800280000000.  CHAROUT <= from_YtoAlpha, if false then next else outChar;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 110010111, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
397 => '1' & '1' & '1' & "11111" & O"000" & O"627" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- readCore(BP);
-- L0914@018E E0CE673F800040000000.skipSpaces:  readCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011100 else 110011100, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
398 => '1' & '1' & '1' & "00000" & O"634" & O"634" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = ' ', if MDR_EQU_DB then skipSp;
-- L0915@018F E5C88010000000000000.  directByte = ' ', if MDR_EQU_DB then skipSp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 110010001 else 000000000, directByte = 0100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
399 => '1' & '1' & '1' & "00101" & O"621" & O"000" & "0100000" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = TAB, if MDR_EQU_DB then skipSp else return;
-- L0916@0190 E5C88084800000000000.  directByte = 0x09, if MDR_EQU_DB then skipSp else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 110010001 else 000000010, directByte = 0001001, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
400 => '1' & '1' & '1' & "00101" & O"621" & O"002" & "0001001" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- BP <= inc, goto skipSpaces;
-- L0917@0191 FF0063BF800000600000.skipSp:  BP <= inc, if false then next else skipSpaces;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 110001110, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
401 => '1' & '1' & '1' & "11111" & O"000" & O"616" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outCRLF();
-- L0919@0192 E0CAE57F800000000000.outBeep:  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010101 else 110010101, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
402 => '1' & '1' & '1' & "00000" & O"625" & O"625" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- trace(crlf);
-- L0920@0193 E0D8EC7F860000000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 1111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
403 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "1111111" & X"0" & "11" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = BEEP, CHAROUT <= from_microcode, goto outChar;
-- L0921@0194 FF0065C3800100000000.  directByte = 0x07, CHAROUT <= from_microcode, if false then next else outChar;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 110010111, directByte = 0000111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
404 => '1' & '1' & '1' & "11111" & O"000" & O"627" & "0000111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = CR, outChar(from_microcode);
-- L0923@0195 E0CBE5C6800100000000.outCRLF:  directByte = 0x0D, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 0001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
405 => '1' & '1' & '1' & "00000" & O"627" & O"627" & "0001101" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = LF, CHAROUT <= from_microcode;
-- L0924@0196 E0000005000100000000.  directByte = 0x0A, CHAROUT <= from_microcode;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 0001010, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
406 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "0001010" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if CHAROUT_READY then next else repeat;
-- L0925@0197 E200007F800000000000.outChar:  if CHAROUT_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00010) then 000000000 else 000000001, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
407 => '1' & '1' & '1' & "00010" & O"000" & O"001" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if CHAROUT_READY then return else repeat;
-- L0926@0198 E201007F800000000000.  if CHAROUT_READY then return else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00010) then 000000010 else 000000001, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
408 => '1' & '1' & '1' & "00010" & O"002" & O"001" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if LEADING_ZERO then return else outChar;
-- L0928@0199 FB0165FF800000000000.outNZChar:  if LEADING_ZERO then return else outChar;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 000000010 else 110010111, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
409 => '1' & '1' & '1' & "11011" & O"002" & O"627" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- nBUSREQ = 0, if nBUSACK then repeat else next;
-- L0930@019A 6600803F800000000000.writeCore:  nBUSREQ = 0, if nBUSACK then repeat else next;
--  nBUSREQ = 0, nWR = 1, nRD = 1, if (00110) then 000000001 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
410 => '0' & '1' & '1' & "00110" & O"001" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- nBUSREQ = 0, nWR = 0, back;
-- L0931@019B 200100BF800000000000.  nBUSREQ = 0, nWR = 0, if true then return else return;
--  nBUSREQ = 0, nWR = 0, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
411 => '0' & '0' & '1' & "00000" & O"002" & O"002" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- nBUSREQ = 0, if nBUSACK then repeat else next;
-- L0933@019C 6600803F800000000000.readCore:  nBUSREQ = 0, if nBUSACK then repeat else next;
--  nBUSREQ = 0, nWR = 1, nRD = 1, if (00110) then 000000001 else 000000000, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
412 => '0' & '1' & '1' & "00110" & O"001" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- nBUSREQ = 0, nRD = 0, MDR <= from_Bus, back;
-- L0934@019D 400100BF800004000000.  nBUSREQ = 0, nRD = 0, MDR <= from_Bus, if true then return else return;
--  nBUSREQ = 0, nWR = 1, nRD = 0, if (00000) then 000000010 else 000000010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 001, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
413 => '0' & '1' & '0' & "00000" & O"002" & O"002" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"1" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- InlEnd <= InLine_start, trace(crlf);
-- L0938@019E E0D8EC7F860001000000.dump_input:  InlEnd <= InLine_start, trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 1111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
414 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "1111111" & X"0" & "11" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "01" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- readCore(InlEnd);
-- L0939@019F E0CE673F800020000000.dump_inlp:  readCore(InlEnd);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011100 else 110011100, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
415 => '1' & '1' & '1' & "00000" & O"634" & O"634" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "01" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = 9, trace(from_microcode);
-- L0940@01A0 E0D8EC44820000000000.  directByte = 9, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0001001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
416 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0001001" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = NULL, if MDR_EQU_DB then dump_inex;
-- L0941@01A1 E5D18000000000000000.  directByte = 0x00, if MDR_EQU_DB then dump_inex;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 110100011 else 000000000, directByte = 0000000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
417 => '1' & '1' & '1' & "00101" & O"643" & O"000" & "0000000" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- InlEnd <= inc, goto dump_inlp;
-- L0942@01A2 FF0067FF800002000000.  InlEnd <= inc, if false then next else dump_inlp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 110011111, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
418 => '1' & '1' & '1' & "11111" & O"000" & O"637" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "10" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- trace(crlf);
-- L0943@01A3 E0D8EC7F860000000000.dump_inex:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 1111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
419 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "1111111" & X"0" & "11" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- back;
-- L0944@01A4 E00100BF800000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
420 => '1' & '1' & '1' & "00000" & O"002" & O"002" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= push_TWord, T <= BP;
-- L0946@01A5 E000003FD00000040000.traceBP:  ExpStack <= push_TWord, T <= BP;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 1010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
421 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"A" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 33;
-- L0947@01A6 E0D8EC50820000000000.  trace(from_microcode), directByte = 33;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0100001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
422 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0100001" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= ExpStack, ExpStack <= pop2, back;
-- L0948@01A7 E00100BFA00000060000.  T <= ExpStack, ExpStack <= pop2, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 1111111, T <= 0100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
423 => '1' & '1' & '1' & "00000" & O"002" & O"002" & "1111111" & X"4" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= push_TWord, T <= from_YLo;
-- L0950@01A8 E000003FA80000040000.traceY:  ExpStack <= push_TWord, T <= from_YLo;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
424 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"5" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 32;
-- L0951@01A9 E0D8EC50020000000000.  trace(from_microcode), directByte = 32;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0100000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
425 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0100000" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= ExpStack, ExpStack <= pop2, back;
-- L0952@01AA E00100BFA00000060000.  T <= ExpStack, ExpStack <= pop2, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 1111111, T <= 0100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
426 => '1' & '1' & '1' & "00000" & O"002" & O"002" & "1111111" & X"4" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- trace(crlf);
-- L0954@01AB E0D8EC7F860000000000.traceALU:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 1111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
427 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "1111111" & X"0" & "11" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= push_TWord, traceT;
-- L0955@01AC E0D8EC5A020000040000.  ExpStack <= push_TWord, trace(from_microcode), directByte = 52;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0110100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
428 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0110100" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= from_S, traceString 52;
-- L0956@01AD E0D8EC5A6A0000000000.  T <= from_S, trace(from_microcode), directByte = 52;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0110100, T <= 1101, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
429 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0110100" & X"D" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= from_R, traceString 52;
-- L0957@01AE E0D8EC5A720000000000.  T <= from_R, trace(from_microcode), directByte = 52;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0110100, T <= 1110, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
430 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0110100" & X"E" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= from_YLo, traceString 53;
-- L0958@01AF E0D8EC5AAA0000000000.  T <= from_YLo, trace(from_microcode), directByte = 53;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 0110101, T <= 0101, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
431 => '1' & '1' & '1' & "00000" & O"661" & O"661" & "0110101" & X"5" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= ExpStack, ExpStack <= pop2, DBGINDEX <= crlf;
-- L0959@01B0 E000003FA60000060000.  T <= ExpStack, ExpStack <= pop2, DBGINDEX <= crlf;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 0100, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
432 => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"4" & "11" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if DBG_READY then next else repeat;
-- L0960@01B1 E400007F800000000000.trace:  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
433 => '1' & '1' & '1' & "00100" & O"000" & O"001" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if DBG_READY then next else repeat;
-- L0961@01B2 E400007F800000000000.  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 1111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
434 => '1' & '1' & '1' & "00100" & O"000" & O"001" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- DBGINDEX <= zero, back;
-- L0962@01B3 E00100BF840000000000.  DBGINDEX <= zero, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 1111111, T <= 0000, DBGINDEX <= 10, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
435 => '1' & '1' & '1' & "00000" & O"002" & O"002" & "1111111" & X"0" & "10" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- 76 location(s) in following ranges will be filled with default value
-- 01B4 .. 01FF

others => '1' & '1' & '1' & "00000" & O"000" & O"000" & "1111111" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0"
);

end microBasic_code;

