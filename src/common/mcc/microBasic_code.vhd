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
-- L0018.seq_cond: .if 5 values true, ILCODEBYTE_BIT7, CHAROUT_READY, IL_A_VALID, DBG_READY | KBD_BREAK, MDR_EQU_DB, nBUSACK, INLEND_MAX | BASLINE_FOUND, INLEND_MIN | IMPLINE_EMPTY, CHARIN_PRINTABLE, CHARIN_EQU_DB, CHARIN_READY, BP_IN_INPLINE, SVP_IN_INPLINE, MDR_IS_NUM, MDR_IS_ALPHA, STACK_IS_FULL, STACK_IS_EMPTY, MDR_MATCHES_ILCODEBYTE, R_IS_ZERO, Y_ZERO, Y_SIGN, ALU_READY  | LS_PARAMS_OK | CP_SKIP, ALU_OVERFLOW  | LS_PASSED_END, ALU_SIGN  | LS_IN_RANGE, AT_TAB, OFF_IS_ZERO, LEADING_ZERO, IS_RUNMODE, dummy29, dummy30, false default true;
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
constant seq_cond_Y_SIGN: 	integer := 21;
constant seq_cond_ALU_READY: 	integer := 22;
constant seq_cond_LS_PARAMS_OK: 	integer := 22;
constant seq_cond_CP_SKIP: 	integer := 22;
constant seq_cond_ALU_OVERFLOW: 	integer := 23;
constant seq_cond_LS_PASSED_END: 	integer := 23;
constant seq_cond_ALU_SIGN: 	integer := 24;
constant seq_cond_LS_IN_RANGE: 	integer := 24;
constant seq_cond_AT_TAB: 	integer := 25;
constant seq_cond_OFF_IS_ZERO: 	integer := 26;
constant seq_cond_LEADING_ZERO: 	integer := 27;
constant seq_cond_IS_RUNMODE: 	integer := 28;
constant seq_cond_dummy29: 	integer := 29;
constant seq_cond_dummy30: 	integer := 30;
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
--  cond(seq_cond_Y_ZERO) => Y_ZERO,
--  cond(seq_cond_Y_SIGN) => Y_SIGN,
--  cond(seq_cond_ALU_READY  | LS_PARAMS_OK | CP_SKIP) => ALU_READY  | LS_PARAMS_OK | CP_SKIP,
--  cond(seq_cond_ALU_OVERFLOW  | LS_PASSED_END) => ALU_OVERFLOW  | LS_PASSED_END,
--  cond(seq_cond_ALU_SIGN  | LS_IN_RANGE) => ALU_SIGN  | LS_IN_RANGE,
--  cond(seq_cond_AT_TAB) => AT_TAB,
--  cond(seq_cond_OFF_IS_ZERO) => OFF_IS_ZERO,
--  cond(seq_cond_LEADING_ZERO) => LEADING_ZERO,
--  cond(seq_cond_IS_RUNMODE) => IS_RUNMODE,
--  cond(seq_cond_dummy29) => dummy29,
--  cond(seq_cond_dummy30) => dummy30,
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
-- L0056.directByte: .valfield 8 values 0x00..0xFF default 0xFF;
--
alias mb_directByte: 	std_logic_vector(7 downto 0) is mb_uinstruction(53 downto 46);
---- Start boilerplate code (use with utmost caution!)
--  directByte <= mb_directByte;
---- End boilerplate code

--
-- L0059.T: .regfield 4 values same, IL_PC, XQhere, from_vars, ExpStack, from_YLo, codeByte, MDRx2, inc, dec, BP, Prog_start, PrgEnd, from_S, from_R default same;
--
alias mb_T: 	std_logic_vector(3 downto 0) is mb_uinstruction(45 downto 42);
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
alias mb_DBGINDEX: 	std_logic_vector(1 downto 0) is mb_uinstruction(41 downto 40);
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
alias mb_IL_PC: 	std_logic_vector(2 downto 0) is mb_uinstruction(39 downto 37);
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
alias mb_XQhere: 	std_logic is mb_uinstruction(36);
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
alias mb_IL_OP: 	std_logic is mb_uinstruction(35);
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
alias mb_RetStack: 	std_logic_vector(1 downto 0) is mb_uinstruction(34 downto 33);
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
alias mb_CHAROUT: 	std_logic_vector(2 downto 0) is mb_uinstruction(32 downto 30);
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
alias mb_MAR: 	std_logic_vector(1 downto 0) is mb_uinstruction(29 downto 28);
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
-- L0137.MDR: .regfield 3 values same, from_Bus, zero, CHARIN, ToUpper, from_SHi, from_SLo, - default same;
--
alias mb_MDR: 	std_logic_vector(2 downto 0) is mb_uinstruction(27 downto 25);
constant MDR_same: 	std_logic_vector(2 downto 0) := O"0";
constant MDR_from_Bus: 	std_logic_vector(2 downto 0) := O"1";
constant MDR_zero: 	std_logic_vector(2 downto 0) := O"2";
constant MDR_CHARIN: 	std_logic_vector(2 downto 0) := O"3";
constant MDR_ToUpper: 	std_logic_vector(2 downto 0) := O"4";
constant MDR_from_SHi: 	std_logic_vector(2 downto 0) := O"5";
constant MDR_from_SLo: 	std_logic_vector(2 downto 0) := O"6";
-- Value O"7" not allowed (name '-' is not assignable)
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
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0149.InlEnd: .regfield 2 values same, InLine_start, inc, dec default same;
--
alias mb_InlEnd: 	std_logic_vector(1 downto 0) is mb_uinstruction(24 downto 23);
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
alias mb_BP: 	std_logic_vector(2 downto 0) is mb_uinstruction(22 downto 20);
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
alias mb_SvPt: 	std_logic_vector(1 downto 0) is mb_uinstruction(19 downto 18);
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
alias mb_ExpStack: 	std_logic_vector(2 downto 0) is mb_uinstruction(17 downto 15);
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
alias mb_gotChar: 	std_logic is mb_uinstruction(14);
---- Start boilerplate code (use with utmost caution!)
--  gotChar <= mb_gotChar;
---- End boilerplate code

--
-- L0193.Vars: .regfield 2 values same, indexFromExpStack, T, - default same;
--
alias mb_Vars: 	std_logic_vector(1 downto 0) is mb_uinstruction(13 downto 12);
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
-- L0201.alu: .regfield 5 values nop, reset0, reset1, R_fromStack, S_fromStack, S_plus_R, S_minus_R, neg_R, S_mul_R, Yx16, bcd_start, bcd_next, div_start, div_shift, div_subset, div_end, Yx10_plus_MDR, Rx256_plus_MDR, S_fromT, R_fromT, S_fromLino, copy_del, copy_inc, ls_load, ls_check, Y_save, Y_recall, cp, -, -, -, - default nop;
--
alias mb_alu: 	std_logic_vector(4 downto 0) is mb_uinstruction(11 downto 7);
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
constant alu_cp: 	std_logic_vector(4 downto 0) := "11011";
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
--			when alu_cp =>
--				alu <= cp;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0237.Lino: .regfield 1 values same, T default same;
--
alias mb_Lino: 	std_logic is mb_uinstruction(6);
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
alias mb_BE: 	std_logic is mb_uinstruction(5);
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
alias mb_LS: 	std_logic is mb_uinstruction(4);
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
alias mb_LE: 	std_logic is mb_uinstruction(3);
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
alias mb_PrgEnd: 	std_logic is mb_uinstruction(2);
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
-- L0267.dummy: .valfield 2 values * default 0;
--
alias mb_dummy: 	std_logic_vector(1 downto 0) is mb_uinstruction(1 downto 0);
---- Start boilerplate code (use with utmost caution!)
--  dummy <= mb_dummy;
---- End boilerplate code



constant mb_microcode: mb_code_memory := (

-- nop;
-- L0317@0000 E000003FC00000000000._reset:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
0 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- nop;
-- L0319@0001 E000003FC00000000000._reset1:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
1 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- nop;
-- L0321@0002 E000003FC00000000000._reset2:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
2 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- nop;
-- L0323@0003 E000003FC00000000000._reset3:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
3 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 4;
-- L0327@0004 E0D96C81010000000000.ColdStart:  trace(from_microcode), directByte = 4;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00000100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
4 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"04" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- write2Nulls(Prog_start);
-- L0328@0005 E0BA5D3FEC0000000000.  write2Nulls(Prog_start);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110100 else 101110100, directByte = 11111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
5 => '1' & '1' & '1' & "00000" & O"564" & O"564" & X"FF" & X"B" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- clear;
-- L0329@0006 E000003FC22200008080.WarmStart:  DBGINDEX <= zero, IL_PC <= zero, ExpStack <= clear, RetStack <= clear, alu <= reset0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 10, IL_PC <= 001, XQhere <= 0, IL_OP <= 0, RetStack <= 01, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 001, gotChar = 0, Vars <= 00, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
6 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "10" & O"1" & '0' & '0' & "01" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"1" & '0' & "00" & "00001" & '0' & '0' & '0' & '0' & '0' & "00",

-- BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= from_R;
-- L0330@0007 E000003FF80000940000.  BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= from_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 001, SvPt <= 01, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
7 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"E" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "01" & O"1" & "01" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- Lino <= T;
-- L0331@0008 E000003FC00000000040.  Lino <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
8 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & "00",

-- XQhere <= T;
-- L0332@0009 E000003FC01000000000.  XQhere <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 1, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
9 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '1' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- write2Nulls(BP);
-- L0333@000A E0BA5D3FE80000000000.  write2Nulls(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110100 else 101110100, directByte = 11111111, T <= 1010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
10 => '1' & '1' & '1' & "00000" & O"564" & O"564" & X"FF" & X"A" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- trace(crlf);
-- L0335@000B E0D96CBFC30000000000.fetch:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 11111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
11 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"FF" & X"0" & "11" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 51;
-- L0336@000C E0D96C8CC10000000000.  trace(from_microcode), directByte = 51;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00110011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
12 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"33" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 2;
-- L0337@000D E0D96C80810000000000.  trace(from_microcode), directByte = 2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00000010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
13 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"02" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_OP <= from_interpreter, IL_PC <= inc;
-- L0338@000E E000003FC04800000000.  IL_OP <= from_interpreter, IL_PC <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 1, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
14 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"2" & '0' & '1' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0339@000F E0D96C8E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
15 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= reset0, if IL_A_VALID then fork else INTERNAL_ERR;
-- L0340@0010 E301D63FC00000000080.  alu <= reset0, if IL_A_VALID then fork else INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00011) then 000000011 else 101011000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
16 => '1' & '1' & '1' & "00011" & O"003" & O"530" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00001" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto INTERNAL_ERR;
-- L0343@0011 FF00563FC00000000000.badop:  if false then next else INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101011000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
17 => '1' & '1' & '1' & "11111" & O"000" & O"530" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 15;
-- L0348@0012 E0D96C83C10000000000.  trace(from_microcode), directByte = 15;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00001111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
18 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"0F" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= startSwap;
-- L0349@0013 E000003FC00000010000.  ExpStack <= startSwap;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 010, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
19 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"2" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= endSwap;
-- L0350@0014 E000003FC00000018000.  ExpStack <= endSwap;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 011, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
20 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"3" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0351@0015 FF0002FFC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
21 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 15;
-- L0354@0016 E0D96C83C10000000000.  trace(from_microcode), directByte = 15;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00001111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
22 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"0F" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0355@0017 FF0002FFC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
23 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 12;
-- L0360@0018 E0D96C83010000000000.  trace(from_microcode), directByte = 12;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00001100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
24 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"0C" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0361@0019 FF0002FFC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
25 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 28;
-- L0366@001A E0D96C87010000000000.  trace(from_microcode), directByte = 28;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00011100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
26 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"1C" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 3, T <= codeByte;
-- L0367@001B E0D96C80D90000000000.lb_push:  trace(from_microcode), directByte = 3, T <= codeByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00000011, T <= 0110, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
27 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"03" & X"6" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= push_TByte;
-- L0368@001C E000003FC00000028000.  ExpStack <= push_TByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 101, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
28 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"5" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
-- L0369@001D F0AD02FFC04000000000.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 101011010 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
29 => '1' & '1' & '1' & "10000" & O"532" & O"013" & X"FF" & X"0" & "00" & O"2" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 29;
-- L0374@001E E0D96C87410000000000.  trace(from_microcode), directByte = 29;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00011101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
30 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"1D" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 3, T <= codeByte;
-- L0375@001F E0D96C80D90000000000.  trace(from_microcode), directByte = 3, T <= codeByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00000011, T <= 0110, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
31 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"03" & X"6" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= push_TByte;
-- L0376@0020 E000003FC00000028000.  ExpStack <= push_TByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 101, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
32 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"5" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
-- L0377@0021 F0AD06FFC04000000000.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 101011010 else 000011011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
33 => '1' & '1' & '1' & "10000" & O"532" & O"033" & X"FF" & X"0" & "00" & O"2" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 38;
-- L0382@0022 E0D96C89810000000000.  trace(from_microcode), directByte = 38;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00100110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
34 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"26" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0383@0023 F1AD003FC00000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101011010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
35 => '1' & '1' & '1' & "10001" & O"532" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR;
-- L0384@0024 F0AD003FD00000000000.  T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 101011010 else 000000000, directByte = 11111111, T <= 0100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
36 => '1' & '1' & '1' & "10000" & O"532" & O"000" & X"FF" & X"4" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= push_TWord, goto fetch;
-- L0385@0025 FF0002FFC00000020000.  ExpStack <= push_TWord, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
37 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 34;
-- L0390@0026 E0D96C88810000000000.  trace(from_microcode), directByte = 34;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00100010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
38 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"22" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0391@0027 F1AD003FC00000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101011010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
39 => '1' & '1' & '1' & "10001" & O"532" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= pop2, goto fetch;
-- L0392@0028 FF0002FFC00000030000.  ExpStack <= pop2, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
40 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 10;
-- L0397@0029 E0D96C82810000000000.  trace(from_microcode), directByte = 10;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00001010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
41 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"0A" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if BP_IN_INPLINE then next else ptr_exc;
-- L0398@002A EC000C3FC00000000000.  if BP_IN_INPLINE then next else ptr_exc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01100) then 000000000 else 000110000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
42 => '1' & '1' & '1' & "01100" & O"000" & O"060" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- SvPt <= BP;
-- L0399@002B E000003FC00000080000.save_bp:  SvPt <= BP;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 10, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
43 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "10" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceBP();
-- L0400@002C E0D369BFC00000000000.bp_done:  traceBP();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110100110 else 110100110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
44 => '1' & '1' & '1' & "00000" & O"646" & O"646" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0401@002D FF0002FFC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
45 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 11;
-- L0406@002E E0D96C82C10000000000.  trace(from_microcode), directByte = 11;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00001011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
46 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"0B" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if SVP_IN_INPLINE then save_bp;
-- L0407@002F ED15803FC00000000000.  if SVP_IN_INPLINE then save_bp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01101) then 000101011 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
47 => '1' & '1' & '1' & "01101" & O"053" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- SvPt <= BP, BP <= SvPt, goto bp_done;
-- L0408@0030 FF000B3FC00000280000.ptr_exc:  SvPt <= BP, BP <= SvPt, if false then next else bp_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000101100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 010, SvPt <= 10, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
48 => '1' & '1' & '1' & "11111" & O"000" & O"054" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"2" & "10" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 36;
-- L0413@0031 E0D96C89010000000000.  trace(from_microcode), directByte = 36;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00100100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
49 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"24" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0414@0032 F1AD003FC00000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101011010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
50 => '1' & '1' & '1' & "10001" & O"532" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- Vars <= indexFromExpStack;
-- L0415@0033 E000003FC00000001000.  Vars <= indexFromExpStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 01, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
51 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "01" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_vars, ExpStack <= pop1;
-- L0416@0034 E000003FCC0000038000.  T <= from_vars, ExpStack <= pop1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 111, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
52 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"3" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"7" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= push_TWord, goto fetch;
-- L0417@0035 FF0002FFC00000020000.  ExpStack <= push_TWord, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
53 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 37;
-- L0422@0036 E0D96C89410000000000.  trace(from_microcode), directByte = 37;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00100101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
54 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"25" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0423@0037 F1AD003FC00000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101011010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
55 => '1' & '1' & '1' & "10001" & O"532" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= ExpStack, ExpStack <= pop2;
-- L0424@0038 E000003FD00000030000.  T <= ExpStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
56 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"4" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0425@0039 F1AD003FC00000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101011010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
57 => '1' & '1' & '1' & "10001" & O"532" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- Vars <= indexFromExpStack, ExpStack <= pop1;
-- L0426@003A E000003FC00000039000.  Vars <= indexFromExpStack, ExpStack <= pop1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 111, gotChar = 0, Vars <= 01, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
58 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"7" & '0' & "01" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- Vars <= T, goto fetch;
-- L0427@003B FF0002FFC00000002000.  Vars <= T, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 10, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
59 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "10" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 45;
-- L0432@003C E0D96C8B410000000000.  trace(from_microcode), directByte = 45;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00101101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
60 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"2D" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= XQhere;
-- L0433@003D E000003FC80000000000.  T <= XQhere;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
61 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"2" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= T, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0434@003E F1AD003FC06000000000.  IL_PC <= T, if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101011010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 011, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
62 => '1' & '1' & '1' & "10001" & O"532" & O"000" & X"FF" & X"0" & "00" & O"3" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0435@003F E000003FC00000030180.  alu <= R_fromStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
63 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceALU();
-- L0436@0040 E0D66B3FC00000000000.  traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110101100 else 110101100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
64 => '1' & '1' & '1' & "00000" & O"654" & O"654" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if R_IS_ZERO then next else go_find;
-- L0437@0041 F30010FFC00000000000.  if R_IS_ZERO then next else go_find;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 000000000 else 001000011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
65 => '1' & '1' & '1' & "10011" & O"000" & O"103" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if IS_RUNMODE then stop_run else fetch;
-- L0438@0042 FC8A82FFC00000000000.  if IS_RUNMODE then stop_run else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11100) then 100010101 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
66 => '1' & '1' & '1' & "11100" & O"425" & O"013" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_R;
-- L0439@0043 E000003FF80000000000.go_find:  T <= from_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
67 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"E" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- Lino <= T, T <= Prog_start;
-- L0440@0044 E000003FEC0000000040.  Lino <= T, T <= Prog_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
68 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"B" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & "00",

-- alu <= reset1, readCore(T);
-- L0441@0045 E0CEE77FC00030000100.go_search:  alu <= reset1, readCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011101 else 110011101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
69 => '1' & '1' & '1' & "00000" & O"635" & O"635" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00010" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= Rx256_plus_MDR, T <= inc;
-- L0442@0046 E000003FE00000000880.  alu <= Rx256_plus_MDR, T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
70 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_fromLino, readCore(T);
-- L0443@0047 E0CEE77FC00030000A00.  alu <= S_fromLino, readCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011101 else 110011101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
71 => '1' & '1' & '1' & "00000" & O"635" & O"635" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= Rx256_plus_MDR, T <= inc;
-- L0444@0048 E000003FE00000000880.  alu <= Rx256_plus_MDR, T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
72 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_minus_R, if R_IS_ZERO then stop_run;
-- L0445@0049 F38A803FC00000000300.  alu <= S_minus_R, if R_IS_ZERO then stop_run;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 100010101 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
73 => '1' & '1' & '1' & "10011" & O"425" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & "00",

-- if Y_ZERO then go_found;
-- L0446@004A F426803FC00000000000.  if Y_ZERO then go_found;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 001001101 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
74 => '1' & '1' & '1' & "10100" & O"115" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- findNextCR(same);
-- L0447@004B E0B65B3FC00000000000.  findNextCR(same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101100 else 101101100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
75 => '1' & '1' & '1' & "00000" & O"554" & O"554" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= inc, goto go_search;
-- L0448@004C FF00117FE00000000000.  T <= inc, if false then next else go_search;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001000101, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
76 => '1' & '1' & '1' & "11111" & O"000" & O"105" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- BP <= T, goto fetch;
-- L0449@004D FF0002FFC00000600000.go_found:  BP <= T, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
77 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"6" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 25;
-- L0454@004E E0D96C86410000000000.  trace(from_microcode), directByte = 25;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00011001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
78 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"19" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0455@004F F1AD003FC00000000180.  alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101011010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
79 => '1' & '1' & '1' & "10001" & O"532" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= pop2;
-- L0456@0050 E000003FC00000030000.  ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
80 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= neg_R, if ALU_READY then alu_done else repeat;
-- L0457@0051 F62A807FC00000000380.  alu <= neg_R, if ALU_READY then alu_done else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 001010101 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
81 => '1' & '1' & '1' & "10110" & O"125" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00111" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 22;
-- L0462@0052 E0D96C85810000000000.  trace(from_microcode), directByte = 22;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00010110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
82 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"16" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- pullRS();
-- L0463@0053 E0BBDDFFC00000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110111 else 101110111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
83 => '1' & '1' & '1' & "00000" & O"567" & O"567" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_plus_R, if ALU_READY then next else repeat;
-- L0464@0054 F600007FC00000000280.  alu <= S_plus_R, if ALU_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
84 => '1' & '1' & '1' & "10110" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00101" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceALU();
-- L0465@0055 E0D66B3FC00000000000.alu_done:  traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110101100 else 110101100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
85 => '1' & '1' & '1' & "00000" & O"654" & O"654" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
-- L0466@0056 F7AA003FD40000000000.  T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10111) then 101010100 else 000000000, directByte = 11111111, T <= 0101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
86 => '1' & '1' & '1' & "10111" & O"524" & O"000" & X"FF" & X"5" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= push_TWord, goto fetch;
-- L0467@0057 FF0002FFC00000020000.  ExpStack <= push_TWord, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
87 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 23;
-- L0472@0058 E0D96C85C10000000000.  trace(from_microcode), directByte = 23;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00010111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
88 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"17" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- pullRS();
-- L0473@0059 E0BBDDFFC00000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110111 else 101110111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
89 => '1' & '1' & '1' & "00000" & O"567" & O"567" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_minus_R, if ALU_READY then alu_done else repeat;
-- L0474@005A F62A807FC00000000300.  alu <= S_minus_R, if ALU_READY then alu_done else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 001010101 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
90 => '1' & '1' & '1' & "10110" & O"125" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 24;
-- L0479@005B E0D96C86010000000000.  trace(from_microcode), directByte = 24;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00011000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
91 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"18" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- pullRS();
-- L0480@005C E0BBDDFFC00000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110111 else 101110111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
92 => '1' & '1' & '1' & "00000" & O"567" & O"567" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_mul_R, if ALU_READY then alu_done else repeat;
-- L0481@005D F62A807FC00000000400.  alu <= S_mul_R, if ALU_READY then alu_done else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 001010101 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
93 => '1' & '1' & '1' & "10110" & O"125" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 35;
-- L0486@005E E0D96C88C10000000000.  trace(from_microcode), directByte = 35;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00100011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
94 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"23" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- pullRS();
-- L0487@005F E0BBDDFFC00000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110111 else 101110111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
95 => '1' & '1' & '1' & "00000" & O"567" & O"567" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
-- L0488@0060 F3A9003FC00000000600.  alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 101010010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
96 => '1' & '1' & '1' & "10011" & O"522" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01100" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= div_shift;
-- L0489@0061 E000003FC00000000680.div_loop:  alu <= div_shift;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
97 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01101" & '0' & '0' & '0' & '0' & '0' & "00",

-- if ALU_READY then div_done;
-- L0490@0062 F632003FC00000000000.  if ALU_READY then div_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 001100100 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
98 => '1' & '1' & '1' & "10110" & O"144" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= div_subset, goto div_loop;
-- L0491@0063 FF00187FC00000000700.  alu <= div_subset, if false then next else div_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001100001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
99 => '1' & '1' & '1' & "11111" & O"000" & O"141" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01110" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= div_end, goto alu_done;
-- L0492@0064 FF00157FC00000000780.div_done:  alu <= div_end, if false then next else alu_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001010101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
100 => '1' & '1' & '1' & "11111" & O"000" & O"125" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01111" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 46;
-- L0497@0065 E0D96C8B810000000000.  trace(from_microcode), directByte = 46;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00101110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
101 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"2E" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0498@0066 E000003FC00000030180.  alu <= R_fromStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
102 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= push_TByte;
-- L0499@0067 E000003FC00000028000.  ExpStack <= push_TByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 101, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
103 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"5" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= ExpStack, ExpStack <= pop2;
-- L0500@0068 E000003FD00000030000.  T <= ExpStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
104 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"4" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_fromStack, ExpStack <= pop2;
-- L0501@0069 E000003FC00000030200.  alu <= S_fromStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
105 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00100" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceALU();
-- L0502@006A E0D66B3FC00000000000.  traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110101100 else 110101100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
106 => '1' & '1' & '1' & "00000" & O"654" & O"654" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= cp;
-- L0503@006B E000003FC00000000D80.  alu <= cp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 11011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
107 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "11011" & '0' & '0' & '0' & '0' & '0' & "00",

-- if CP_SKIP then next else fetch;
-- L0504@006C F60002FFC00000000000.  if CP_SKIP then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
108 => '1' & '1' & '1' & "10110" & O"000" & O"013" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= inc, goto fetch;
-- L0505@006D FF0002FFC04000000000.  IL_PC <= inc, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
109 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"2" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 39;
-- L0510@006E E0D96C89C10000000000.  trace(from_microcode), directByte = 39;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00100111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
110 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"27" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if IS_RUNMODE then nx_run;
-- L0511@006F FC38803FC00000000000.  if IS_RUNMODE then nx_run;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11100) then 001110001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
111 => '1' & '1' & '1' & "11100" & O"161" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= zero, goto fetch;
-- L0512@0070 FF0002FFC02000000000.  IL_PC <= zero, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 001, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
112 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"1" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- findNextCR(BP);
-- L0513@0071 E0B65B3FE80000000000.nx_run:  findNextCR(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101100 else 101101100, directByte = 11111111, T <= 1010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
113 => '1' & '1' & '1' & "00000" & O"554" & O"554" & X"FF" & X"A" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= inc;
-- L0514@0072 E000003FE00000000000.  T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
114 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- BP <= T;
-- L0515@0073 E000003FC00000600000.  BP <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
115 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"6" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- readCore16(BP);
-- L0516@0074 E0B85C3FE80000000000.  readCore16(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110000 else 101110000, directByte = 11111111, T <= 1010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
116 => '1' & '1' & '1' & "00000" & O"560" & O"560" & X"FF" & X"A" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if R_IS_ZERO then nx_err;
-- L0517@0075 F33E803FC00000000000.  if R_IS_ZERO then nx_err;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 001111101 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
117 => '1' & '1' & '1' & "10011" & O"175" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- BP <= T, T <= from_R;
-- L0518@0076 E000003FF80000600000.  BP <= T, T <= from_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
118 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"E" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"6" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- Lino <= T;
-- L0519@0077 E000003FC00000000040.  Lino <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
119 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & "00",

-- T <= XQhere;
-- L0520@0078 E000003FC80000000000.  T <= XQhere;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
120 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"2" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= T;
-- L0521@0079 E000003FC06000000000.  IL_PC <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 011, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
121 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"3" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceLino;
-- L0522@007A E0D96C8CC10000000000.  trace(from_microcode), directByte = 51;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00110011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
122 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"33" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceBP();
-- L0523@007B E0D369BFC00000000000.  traceBP();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110100110 else 110100110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
123 => '1' & '1' & '1' & "00000" & O"646" & O"646" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if KBD_BREAK then BREAK else fetch;
-- L0524@007C E4A602FFC00000000000.  if KBD_BREAK then BREAK else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 101001100 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
124 => '1' & '1' & '1' & "00100" & O"514" & O"013" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = BEEP, outChar(from_microcode);
-- L0525@007D E0CCE641C00080000000.nx_err:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 00000111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
125 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"07" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto stop_run;
-- L0526@007E FF00457FC00000000000.  if false then next else stop_run;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100010101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
126 => '1' & '1' & '1' & "11111" & O"000" & O"425" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 41;
-- L0531@007F E0D96C8A410000000000.  trace(from_microcode), directByte = 41;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00101001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
127 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"29" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= reset1, if IS_RUNMODE then badop;
-- L0532@0080 FC08803FC00000000100.  alu <= reset1, if IS_RUNMODE then badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11100) then 000010001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
128 => '1' & '1' & '1' & "11100" & O"021" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00010" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_R, if STACK_IS_EMPTY then ls_parchk;
-- L0533@0081 F143003FF80000000000.ls_parload:  T <= from_R, if STACK_IS_EMPTY then ls_parchk;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 010000110 else 000000000, directByte = 11111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
129 => '1' & '1' & '1' & "10001" & O"206" & O"000" & X"FF" & X"E" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_fromT;
-- L0534@0082 E000003FC00000000900.  alu <= S_fromT;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
130 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10010" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0535@0083 E000003FC00000030180.  alu <= R_fromStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
131 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceALU();
-- L0536@0084 E0D66B3FC00000000000.  traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110101100 else 110101100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
132 => '1' & '1' & '1' & "00000" & O"654" & O"654" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto ls_parload;
-- L0537@0085 FF00207FC00000000000.  if false then next else ls_parload;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
133 => '1' & '1' & '1' & "11111" & O"000" & O"201" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= ls_load;
-- L0538@0086 E000003FC00000000B80.ls_parchk:  alu <= ls_load;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
134 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10111" & '0' & '0' & '0' & '0' & '0' & "00",

-- if LS_PARAMS_OK then next else SYNTAX_ERR;
-- L0539@0087 F60055BFC00000000000.  if LS_PARAMS_OK then next else SYNTAX_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 000000000 else 101010110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
135 => '1' & '1' & '1' & "10110" & O"000" & O"526" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= Prog_start, traceALU();
-- L0540@0088 E0D66B3FEC0000000000.ls_start:  T <= Prog_start, traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110101100 else 110101100, directByte = 11111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
136 => '1' & '1' & '1' & "00000" & O"654" & O"654" & X"FF" & X"B" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if CHARIN_READY then next else ls_continue;
-- L0541@0089 EB0023BFC00000000000.ls_lineloop:  if CHARIN_READY then next else ls_continue;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01011) then 000000000 else 010001110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
137 => '1' & '1' & '1' & "01011" & O"000" & O"216" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if KBD_BREAK then BREAK;
-- L0542@008A E4A6003FC00000000000.  if KBD_BREAK then BREAK;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 101001100 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
138 => '1' & '1' & '1' & "00100" & O"514" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_continue;
-- L0543@008B EA002388000000004000.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_continue;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 000000000 else 010001110, directByte = 00100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
139 => '1' & '1' & '1' & "01010" & O"000" & O"216" & X"20" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if CHARIN_READY then next else repeat;
-- L0544@008C EB00007FC00000000000.ls_pause:  if CHARIN_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01011) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
140 => '1' & '1' & '1' & "01011" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
-- L0545@008D EA002308000000004000.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 000000000 else 010001100, directByte = 00100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
141 => '1' & '1' & '1' & "01010" & O"000" & O"214" & X"20" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- gotChar = 1, alu <= Y_save, readCore16(same);
-- L0546@008E E0B85C3FC00000004C80.ls_continue:  gotChar = 1, alu <= Y_save, readCore16(same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110000 else 101110000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 11001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
142 => '1' & '1' & '1' & "00000" & O"560" & O"560" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "11001" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceALU();
-- L0547@008F E0D66B3FC00000000000.  traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110101100 else 110101100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
143 => '1' & '1' & '1' & "00000" & O"654" & O"654" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= ls_check, if R_IS_ZERO then crlf_fetch;
-- L0548@0090 F355803FC00000000C00.  alu <= ls_check, if R_IS_ZERO then crlf_fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 010101011 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 11000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
144 => '1' & '1' & '1' & "10011" & O"253" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "11000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if LS_PASSED_END then crlf_fetch;
-- L0549@0091 F755803FC00000000000.  if LS_PASSED_END then crlf_fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10111) then 010101011 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
145 => '1' & '1' & '1' & "10111" & O"253" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if LS_IN_RANGE then next else ls_nextLine;
-- L0550@0092 F800263FC00000000000.  if LS_IN_RANGE then next else ls_nextLine;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11000) then 000000000 else 010011000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
146 => '1' & '1' & '1' & "11000" & O"000" & O"230" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- printDecR();
-- L0551@0093 E0BE5F3FC00000000000.  printDecR();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101111100 else 101111100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
147 => '1' & '1' & '1' & "00000" & O"574" & O"574" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= Y_recall, directByte = ' ', outChar(from_microcode);
-- L0552@0094 E0CCE648000080000D00.  alu <= Y_recall, directByte = ' ', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 00100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 11010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
148 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"20" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "11010" & '0' & '0' & '0' & '0' & '0' & "00",

-- readCore(T);
-- L0553@0095 E0CEE77FC00030000000.ls_charloop:  readCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011101 else 110011101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
149 => '1' & '1' & '1' & "00000" & O"635" & O"635" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outChar(from_MDR);
-- L0554@0096 E0CCE67FC00100000000.  outChar(from_MDR);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 100, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
150 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"4" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= inc, directByte = CR, if MDR_EQU_DB then ls_lineloop else ls_charloop;
-- L0555@0097 E544A543600000000000.ls_nextchar:  T <= inc, directByte = 0x0D, if MDR_EQU_DB then ls_lineloop else ls_charloop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 010001001 else 010010101, directByte = 00001101, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
151 => '1' & '1' & '1' & "00101" & O"211" & O"225" & X"0D" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- findNextCR(same);
-- L0556@0098 E0B65B3FC00000000000.ls_nextLine:  findNextCR(same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101100 else 101101100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
152 => '1' & '1' & '1' & "00000" & O"554" & O"554" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= inc, goto ls_lineloop;
-- L0557@0099 FF00227FE00000000000.  T <= inc, if false then next else ls_lineloop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010001001, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
153 => '1' & '1' & '1' & "11111" & O"000" & O"211" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 26;
-- L0562@009A E0D96C86810000000000.  trace(from_microcode), directByte = 26;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00011010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
154 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"1A" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0563@009B F1AD003FC00000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101011010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
155 => '1' & '1' & '1' & "10001" & O"532" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- printDec();
-- L0564@009C E0BDDEFFC00000000000.  printDec();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101111011 else 101111011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
156 => '1' & '1' & '1' & "00000" & O"573" & O"573" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0565@009D FF0002FFC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
157 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 18;
-- L0570@009E E0D96C84810000000000.  trace(from_microcode), directByte = 18;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00010010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
158 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"12" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- BP <= inc, readCore(BP);
-- L0571@009F E0CEE77FC00020300000.pq_loop:  BP <= inc, readCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011101 else 110011101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
159 => '1' & '1' & '1' & "00000" & O"635" & O"635" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "10" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = '"', if MDR_EQU_DB then pq_done;
-- L0572@00A0 E5520008800000000000.  directByte = '"', if MDR_EQU_DB then pq_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 010100100 else 000000000, directByte = 00100010, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
160 => '1' & '1' & '1' & "00101" & O"244" & O"000" & X"22" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outChar(from_MDR);
-- L0573@00A1 E0CCE67FC00100000000.  outChar(from_MDR);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 100, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
161 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"4" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 3;
-- L0574@00A2 E0D96C80C10000000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00000011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
162 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"03" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = CR, if MDR_EQU_DB then INTERNAL_ERR else pq_loop;
-- L0575@00A3 E5AC27C3400000000000.  directByte = 0x0D, if MDR_EQU_DB then INTERNAL_ERR else pq_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 101011000 else 010011111, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
163 => '1' & '1' & '1' & "00101" & O"530" & O"237" & X"0D" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceBP();
-- L0576@00A4 E0D369BFC00000000000.pq_done:  traceBP();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110100110 else 110100110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
164 => '1' & '1' & '1' & "00000" & O"646" & O"646" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0577@00A5 FF0002FFC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
165 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 27;
-- L0582@00A6 E0D96C86C10000000000.  trace(from_microcode), directByte = 27;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00011011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
166 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"1B" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if AT_TAB then fetch;
-- L0583@00A7 F905803FC00000000000.pt_loop:  if AT_TAB then fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11001) then 000001011 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
167 => '1' & '1' & '1' & "11001" & O"013" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = ' ', outChar(from_microcode);
-- L0584@00A8 E0CCE648000080000000.  directByte = ' ', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 00100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
168 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"20" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto pt_loop;
-- L0585@00A9 FF0029FFC00000000000.  if false then next else pt_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010100111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
169 => '1' & '1' & '1' & "11111" & O"000" & O"247" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 6;
-- L0590@00AA E0D96C81810000000000.  trace(from_microcode), directByte = 6;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00000110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
170 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"06" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outCRLF();
-- L0591@00AB E0CBE5FFC00000000000.crlf_fetch:  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
171 => '1' & '1' & '1' & "00000" & O"627" & O"627" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0592@00AC FF0002FFC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
172 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 5;
-- L0597@00AD E0D96C81410000000000.  trace(from_microcode), directByte = 5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00000101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
173 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"05" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outChar(from_interpreter);
-- L0598@00AE E0CCE67FC00040000000.pc_loop:  outChar(from_interpreter);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 001, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
174 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"1" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 3;
-- L0599@00AF E0D96C80C10000000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00000011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
175 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"03" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
-- L0600@00B0 E105ABBFC04000000000.  IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00001) then 000001011 else 010101110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
176 => '1' & '1' & '1' & "00001" & O"013" & O"256" & X"FF" & X"0" & "00" & O"2" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 8;
-- L0605@00B1 E0D96C82010000000000.  trace(from_microcode), directByte = 8;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00001000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
177 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"08" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- InlEnd <= InLine_start;
-- L0606@00B2 E000003FC00000800000.gl:  InlEnd <= InLine_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
178 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "01" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if CHARIN_READY then next else repeat;
-- L0607@00B3 EB00007FC00000000000.gl_loop:  if CHARIN_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01011) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
179 => '1' & '1' & '1' & "01011" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if KBD_BREAK then next else gl_char;
-- L0608@00B4 E4002DBFC00000000000.  if KBD_BREAK then next else gl_char;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 010110110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
180 => '1' & '1' & '1' & "00100" & O"000" & O"266" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
-- L0609@00B5 FC8AB07FC00000004000.  gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11100) then 100010101 else 011000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
181 => '1' & '1' & '1' & "11100" & O"425" & O"301" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if CHARIN_PRINTABLE then gl_print;
-- L0610@00B6 E95E003FC00000000000.gl_char:  if CHARIN_PRINTABLE then gl_print;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01001) then 010111100 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
182 => '1' & '1' & '1' & "01001" & O"274" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = CR, if CHARIN_EQU_DB then gl_cr;
-- L0611@00B7 EA638003400000000000.  directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 011000111 else 000000000, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
183 => '1' & '1' & '1' & "01010" & O"307" & O"000" & X"0D" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = BACKSPACE, if CHARIN_EQU_DB then gl_bs;
-- L0612@00B8 EA620002000000000000.  directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 011000100 else 000000000, directByte = 00001000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
184 => '1' & '1' & '1' & "01010" & O"304" & O"000" & X"08" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = ESC, if CHARIN_EQU_DB then gl_esc;
-- L0613@00B9 EA608006C00000000000.  directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 011000001 else 000000000, directByte = 00011011, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
185 => '1' & '1' & '1' & "01010" & O"301" & O"000" & X"1B" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = BEEP, outChar(from_microcode);
-- L0616@00BA E0CCE641C00080000000.gl_ignore:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 00000111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
186 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"07" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- gotChar = 1, goto gl_loop;
-- L0617@00BB FF002CFFC00000004000.  gotChar = 1, if false then next else gl_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010110011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
187 => '1' & '1' & '1' & "11111" & O"000" & O"263" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if INLEND_MAX then gl_ignore;
-- L0619@00BC E75D003FC00000000000.gl_print:  if INLEND_MAX then gl_ignore;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00111) then 010111010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
188 => '1' & '1' & '1' & "00111" & O"272" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outChar(from_charin);
-- L0620@00BD E0CCE67FC000C0000000.  outChar(from_charin);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 011, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
189 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"3" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- L0621@00BE E0CDE6FFC00017000000.  writeCore(InlEnd, CHARIN), InlEnd <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011011 else 110011011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
190 => '1' & '1' & '1' & "00000" & O"633" & O"633" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "01" & O"3" & "10" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- writeCore(InlEnd, zero);
-- L0622@00BF E0CDE6FFC00014000000.gl_write0:  writeCore(InlEnd, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011011 else 110011011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
191 => '1' & '1' & '1' & "00000" & O"633" & O"633" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "01" & O"2" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- gotChar = 1, goto gl_loop;
-- L0623@00C0 FF002CFFC00000004000.  gotChar = 1, if false then next else gl_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010110011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
192 => '1' & '1' & '1' & "11111" & O"000" & O"263" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = BEEP, outChar(from_microcode);
-- L0625@00C1 E0CCE641C00080000000.gl_esc:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 00000111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
193 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"07" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outCRLF();
-- L0626@00C2 E0CBE5FFC00000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
194 => '1' & '1' & '1' & "00000" & O"627" & O"627" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- gotChar = 1, goto gl;
-- L0627@00C3 FF002CBFC00000004000.  gotChar = 1, if false then next else gl;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010110010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
195 => '1' & '1' & '1' & "11111" & O"000" & O"262" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if INLEND_MIN then gl_ignore;
-- L0629@00C4 E85D003FC00000000000.gl_bs:  if INLEND_MIN then gl_ignore;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01000) then 010111010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
196 => '1' & '1' & '1' & "01000" & O"272" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = BACKSPACE, outChar(from_microcode);
-- L0630@00C5 E0CCE642000080000000.  directByte = 0x08, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 00001000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
197 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"08" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- InlEnd <= dec, goto gl_write0;
-- L0631@00C6 FF002FFFC00001800000.  InlEnd <= dec, if false then next else gl_write0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010111111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 11, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
198 => '1' & '1' & '1' & "11111" & O"000" & O"277" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "11" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- L0633@00C7 E0CDE6FFC00017000000.gl_cr:  writeCore(InlEnd, CHARIN), InlEnd <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011011 else 110011011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
199 => '1' & '1' & '1' & "00000" & O"633" & O"633" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "01" & O"3" & "10" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- writeCore(InlEnd, zero);
-- L0634@00C8 E0CDE6FFC00014000000.  writeCore(InlEnd, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011011 else 110011011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
200 => '1' & '1' & '1' & "00000" & O"633" & O"633" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "01" & O"2" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- dump_input();
-- L0635@00C9 E0CFE7FFC00000000000.  dump_input();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011111 else 110011111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
201 => '1' & '1' & '1' & "00000" & O"637" & O"637" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outCRLF();
-- L0636@00CA E0CBE5FFC00000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
202 => '1' & '1' & '1' & "00000" & O"627" & O"627" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- gotChar = 1, BP <= Inline_start, goto fetch;
-- L0637@00CB FF0002FFC00000104000.  gotChar = 1, BP <= Inline_start, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 001, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
203 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"1" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 40;
-- L0642@00CC E0D96C8A010000000000.  trace(from_microcode), directByte = 40;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00101000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
204 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"28" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_fromStack, ExpStack <= pop2;
-- L0643@00CD E000003FC00000030200.  alu <= S_fromStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
205 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00100" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_plus_R;
-- L0644@00CE E000003FC00000000280.  alu <= S_plus_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
206 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00101" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
-- L0645@00CF F5AB003FD40000000000.  T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 101010110 else 000000000, directByte = 11111111, T <= 0101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
207 => '1' & '1' & '1' & "10101" & O"526" & O"000" & X"FF" & X"5" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- Lino <= T, if Y_ZERO then SYNTAX_ERR;
-- L0646@00D0 F4AB003FC00000000040.  Lino <= T, if Y_ZERO then SYNTAX_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 101010110 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
208 => '1' & '1' & '1' & "10100" & O"526" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & "00",

-- traceALU();
-- L0647@00D1 E0D66B3FC00000000000.  traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110101100 else 110101100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
209 => '1' & '1' & '1' & "00000" & O"654" & O"654" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- skipSpaces();
-- L0649@00D2 E0C8643FC00000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010000 else 110010000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
210 => '1' & '1' & '1' & "00000" & O"620" & O"620" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= BP;
-- L0650@00D3 E000003FE80000000000.  T <= BP;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
211 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"A" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- BE <= T, readCore(T);
-- L0651@00D4 E0CEE77FC00030000020.il_findBE:  BE <= T, readCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011101 else 110011101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 1, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
212 => '1' & '1' & '1' & "00000" & O"635" & O"635" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '1' & '0' & '0' & '0' & "00",

-- directByte = CR, if MDR_EQU_DB then il_fork;
-- L0652@00D5 E56B8003400000000000.  directByte = 0x0D, if MDR_EQU_DB then il_fork;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 011010111 else 000000000, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
213 => '1' & '1' & '1' & "00101" & O"327" & O"000" & X"0D" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= inc, goto il_findBE;
-- L0653@00D6 FF00353FE00000000000.  T <= inc, if false then next else il_findBE;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011010100, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
214 => '1' & '1' & '1' & "11111" & O"000" & O"324" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if IMPLINE_EMPTY then next else changeLine;
-- L0655@00D7 E800377FC00000000000.il_fork:  if IMPLINE_EMPTY then next else changeLine;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01000) then 000000000 else 011011101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
215 => '1' & '1' & '1' & "01000" & O"000" & O"335" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- scanProgram();
-- L0657@00D8 E076BB7FC00000000000.deleteLine:  scanProgram();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011101101 else 011101101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
216 => '1' & '1' & '1' & "00000" & O"355" & O"355" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if BASLINE_FOUND then next else WarmStart;
-- L0658@00D9 E70001BFC00000000000.  if BASLINE_FOUND then next else WarmStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00111) then 000000000 else 000000110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
217 => '1' & '1' & '1' & "00111" & O"000" & O"006" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if Y_ZERO then next else WarmStart;
-- L0659@00DA F40001BFC00000000000.  if Y_ZERO then next else WarmStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 000000000 else 000000110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
218 => '1' & '1' & '1' & "10100" & O"000" & O"006" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- delBasLine();
-- L0660@00DB E082413FC00000000000.  delBasLine();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100000100 else 100000100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
219 => '1' & '1' & '1' & "00000" & O"404" & O"404" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto WarmStart;
-- L0661@00DC FF0001BFC00000000000.  if false then next else WarmStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
220 => '1' & '1' & '1' & "11111" & O"000" & O"006" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- scanProgram();
-- L0663@00DD E076BB7FC00000000000.changeLine:  scanProgram();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011101101 else 011101101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
221 => '1' & '1' & '1' & "00000" & O"355" & O"355" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if BASLINE_FOUND then next else appendLine;
-- L0664@00DE E70038BFC00000000000.  if BASLINE_FOUND then next else appendLine;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00111) then 000000000 else 011100010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
222 => '1' & '1' & '1' & "00111" & O"000" & O"342" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if Y_ZERO then next else insertLine;
-- L0665@00DF F400387FC00000000000.  if Y_ZERO then next else insertLine;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 000000000 else 011100001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
223 => '1' & '1' & '1' & "10100" & O"000" & O"341" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto RSTACK_ERR;
-- L0667@00E0 FF00573FC00000000000.replaceLine:  if false then next else RSTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101011100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
224 => '1' & '1' & '1' & "11111" & O"000" & O"534" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto ESTACK_ERR;
-- L0669@00E1 FF0056BFC00000000000.insertLine:  if false then next else ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101011010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
225 => '1' & '1' & '1' & "11111" & O"000" & O"532" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_fromLino, T <= dec;
-- L0671@00E2 E000003FE40000000A00.appendLine:  alu <= S_fromLino, T <= dec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
226 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"9" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & "00",

-- writeCore(T, from_SHi);
-- L0672@00E3 E0CDE6FFC0003A000000.  writeCore(T, from_SHi);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011011 else 110011011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 101, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
227 => '1' & '1' & '1' & "00000" & O"633" & O"633" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"5" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= inc;
-- L0673@00E4 E000003FE00000000000.  T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
228 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- writeCore(T, from_SLo);
-- L0674@00E5 E0CDE6FFC0003C000000.  writeCore(T, from_SLo);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011011 else 110011011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 110, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
229 => '1' & '1' & '1' & "00000" & O"633" & O"633" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"6" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= inc;
-- L0675@00E6 E000003FE00000000000.  T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
230 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- readCore(BP);
-- L0676@00E7 E0CEE77FC00020000000.app_loop:  readCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011101 else 110011101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
231 => '1' & '1' & '1' & "00000" & O"635" & O"635" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- writeCore(T, same);
-- L0677@00E8 E0CDE6FFC00030000000.  writeCore(T, same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011011 else 110011011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
232 => '1' & '1' & '1' & "00000" & O"633" & O"633" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- BP <= inc, T <= inc;
-- L0678@00E9 E000003FE00000300000.  BP <= inc, T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
233 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = CR, if MDR_EQU_DB then next else app_loop;
-- L0679@00EA E50039C3400000000000.  directByte = 0x0D, if MDR_EQU_DB then next else app_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 000000000 else 011100111, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
234 => '1' & '1' & '1' & "00101" & O"000" & O"347" & X"0D" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- write2Nulls(same);
-- L0680@00EB E0BA5D3FC00000000000.  write2Nulls(same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110100 else 101110100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
235 => '1' & '1' & '1' & "00000" & O"564" & O"564" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto WarmStart;
-- L0681@00EC FF0001BFC00000000000.  if false then next else WarmStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
236 => '1' & '1' & '1' & "11111" & O"000" & O"006" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= reset0;
-- L0684@00ED E000003FC00000000080.scanProgram:  alu <= reset0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
237 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00001" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_R;
-- L0685@00EE E000003FF80000000000.  T <= from_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
238 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"E" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- LS <= T, LE <= T, T <= Prog_start;
-- L0686@00EF E000003FEC0000000018.  LS <= T, LE <= T, T <= Prog_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 1, LE <= 1, PrgEnd <= 0, dummy = 00;
239 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"B" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '1' & '1' & '0' & "00",

-- readCore16(same);
-- L0687@00F0 E0B85C3FC00000000000.scan_loop:  readCore16(same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110000 else 101110000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
240 => '1' & '1' & '1' & "00000" & O"560" & O"560" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_fromLino, if R_IS_ZERO then scan_done;
-- L0688@00F1 F37F803FC00000000A00.  alu <= S_fromLino, if R_IS_ZERO then scan_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 011111111 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
241 => '1' & '1' & '1' & "10011" & O"377" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_minus_R;
-- L0689@00F2 E000003FC00000000300.  alu <= S_minus_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
242 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceALU();
-- L0690@00F3 E0D66B3FC00000000000.  traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110101100 else 110101100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
243 => '1' & '1' & '1' & "00000" & O"654" & O"654" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if Y_ZERO then scan_found else next;
-- L0691@00F4 F47C003FC00000000000.  if Y_ZERO then scan_found else next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 011111000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
244 => '1' & '1' & '1' & "10100" & O"370" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if Y_SIGN then scan_found else next;
-- L0692@00F5 F57C003FC00000000000.  if Y_SIGN then scan_found else next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 011111000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
245 => '1' & '1' & '1' & "10101" & O"370" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- findNextCR(same);
-- L0693@00F6 E0B65B3FC00000000000.scan_next:  findNextCR(same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101100 else 101101100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
246 => '1' & '1' & '1' & "00000" & O"554" & O"554" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= inc, goto scan_loop;
-- L0694@00F7 FF003C3FE00000000000.scan_line:  T <= inc, if false then next else scan_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011110000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
247 => '1' & '1' & '1' & "11111" & O"000" & O"360" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if BASLINE_FOUND then scan_next;
-- L0695@00F8 E77B003FC00000000000.scan_found:  if BASLINE_FOUND then scan_next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00111) then 011110110 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
248 => '1' & '1' & '1' & "00111" & O"366" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= dec;
-- L0696@00F9 E000003FE40000000000.  T <= dec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
249 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"9" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= dec;
-- L0697@00FA E000003FE40000000000.  T <= dec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
250 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"9" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- LS <= T, T <= inc;
-- L0698@00FB E000003FE00000000010.  LS <= T, T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 1, LE <= 0, PrgEnd <= 0, dummy = 00;
251 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '1' & '0' & '0' & "00",

-- findNextCR(inc);
-- L0699@00FC E0B65B3FE00000000000.  findNextCR(inc);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101100 else 101101100, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
252 => '1' & '1' & '1' & "00000" & O"554" & O"554" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- LE <= T, T <= from_R;
-- L0700@00FD E000003FF80000000008.  LE <= T, T <= from_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 1, PrgEnd <= 0, dummy = 00;
253 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"E" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '1' & '0' & "00",

-- ExpStack <= push_TWord, goto scan_line;
-- L0701@00FE FF003DFFC00000020000.  ExpStack <= push_TWord, if false then next else scan_line;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011110111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
254 => '1' & '1' & '1' & "11111" & O"000" & O"367" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_fromLino, T <= dec;
-- L0702@00FF E000003FE40000000A00.scan_done:  alu <= S_fromLino, T <= dec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
255 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"9" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & "00",

-- PrgEnd <= T;
-- L0703@0100 E000003FC00000000004.  PrgEnd <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 1, dummy = 00;
256 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '1' & "00",

-- if BASLINE_FOUND then next else scan_exit;
-- L0704@0101 E70040FFC00000000000.  if BASLINE_FOUND then next else scan_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00111) then 000000000 else 100000011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
257 => '1' & '1' & '1' & "00111" & O"000" & O"403" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0705@0102 E000003FC00000030180.  alu <= R_fromStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
258 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_minus_R, back;
-- L0706@0103 E00100BFC00000000300.scan_exit:  alu <= S_minus_R, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
259 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= copy_del;
-- L0709@0104 E000003FC00000000A80.delBasLine:  alu <= copy_del;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
260 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10101" & '0' & '0' & '0' & '0' & '0' & "00",

-- if Y_ZERO then return;
-- L0710@0105 F401003FC00000000000.dbs_loop:  if Y_ZERO then return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 000000010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
261 => '1' & '1' & '1' & "10100" & O"002" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_S;
-- L0711@0106 E000003FF40000000000.  T <= from_S;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
262 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"D" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- readCore(T);
-- L0712@0107 E0CEE77FC00030000000.  readCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011101 else 110011101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
263 => '1' & '1' & '1' & "00000" & O"635" & O"635" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_R;
-- L0713@0108 E000003FF80000000000.  T <= from_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
264 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"E" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- writeCore(T, same);
-- L0714@0109 E0CDE6FFC00030000000.  writeCore(T, same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011011 else 110011011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
265 => '1' & '1' & '1' & "00000" & O"633" & O"633" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceALU();
-- L0715@010A E0D66B3FC00000000000.  traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110101100 else 110101100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
266 => '1' & '1' & '1' & "00000" & O"654" & O"654" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= copy_inc, goto dbs_loop;
-- L0716@010B FF00417FC00000000B00.  alu <= copy_inc, if false then next else dbs_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100000101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
267 => '1' & '1' & '1' & "11111" & O"000" & O"405" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10110" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 43;
-- L0721@010C E0D96C8AC10000000000.  trace(from_microcode), directByte = 43;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00101011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
268 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"2B" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto ColdStart;
-- L0722@010D FF00013FC00000000000.  if false then next else ColdStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
269 => '1' & '1' & '1' & "11111" & O"000" & O"004" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 42;
-- L0727@010E E0D96C8A810000000000.  trace(from_microcode), directByte = 42;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00101010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
270 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"2A" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= IL_PC;
-- L0728@010F E000003FC40000000000.  T <= IL_PC;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
271 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"1" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- XQhere <= T, readCore16(Prog_start);
-- L0729@0110 E0B85C3FEC1000000000.  XQhere <= T, readCore16(Prog_start);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110000 else 101110000, directByte = 11111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 1, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
272 => '1' & '1' & '1' & "00000" & O"560" & O"560" & X"FF" & X"B" & "00" & O"0" & '1' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if R_IS_ZERO then NOPROG_ERR;
-- L0730@0111 F3A8003FC00000000000.  if R_IS_ZERO then NOPROG_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 101010000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
273 => '1' & '1' & '1' & "10011" & O"520" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- BP <= T, T <= from_R;
-- L0731@0112 E000003FF80000600000.  BP <= T, T <= from_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
274 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"E" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"6" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- Lino <= T, goto fetch;
-- L0732@0113 FF0002FFC00000000040.  Lino <= T, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
275 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & "00",

-- traceString 44;
-- L0737@0114 E0D96C8B010000000000.  trace(from_microcode), directByte = 44;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00101100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
276 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"2C" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = 'S', outChar(from_microcode);
-- L0738@0115 E0CCE654C00080000000.stop_run:  directByte = 'S', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 01010011, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
277 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"53" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = 'T', outChar(from_microcode);
-- L0739@0116 E0CCE655000080000000.  directByte = 'T', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 01010100, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
278 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"54" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = 'O', outChar(from_microcode);
-- L0740@0117 E0CCE653C00080000000.  directByte = 'O', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 01001111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
279 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"4F" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = 'P', outChar(from_microcode);
-- L0741@0118 E0CCE654000080000000.  directByte = 'P', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 01010000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
280 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"50" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto print_lino;
-- L0742@0119 FF0058FFC00000000000.  if false then next else print_lino;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101100011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
281 => '1' & '1' & '1' & "11111" & O"000" & O"543" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 19;
-- L0747@011A E0D96C84C10000000000.  trace(from_microcode), directByte = 19;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00010011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
282 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"13" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if STACK_IS_EMPTY then RSTACK_ERR;
-- L0748@011B F1AE003FC00000000000.  if STACK_IS_EMPTY then RSTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101011100 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
283 => '1' & '1' & '1' & "10001" & O"534" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= RetStack, RetStack <= pop, goto fetch;
-- L0749@011C FF0002FFC0E400000000.  IL_PC <= RetStack, RetStack <= pop, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 111, XQhere <= 0, IL_OP <= 0, RetStack <= 10, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
284 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"7" & '0' & '0' & "10" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 20;
-- L0754@011D E0D96C85010000000000.  trace(from_microcode), directByte = 20;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00010100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
285 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"14" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 3;
-- L0755@011E E0D96C80C10000000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00000011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
286 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"03" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if STACK_IS_FULL then RSTACK_ERR;
-- L0756@011F F0AE003FC00000000000.  if STACK_IS_FULL then RSTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 101011100 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
287 => '1' & '1' & '1' & "10000" & O"534" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- RetStack <= push_IL_PC_PLUS_1, goto jump;
-- L0757@0120 FF0048FFC00600000000.  RetStack <= push_IL_PC_PLUS_1, if false then next else jump;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100100011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 11, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
288 => '1' & '1' & '1' & "11111" & O"000" & O"443" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "11" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 21;
-- L0762@0121 E0D96C85410000000000.  trace(from_microcode), directByte = 21;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00010101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
289 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"15" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 3;
-- L0763@0122 E0D96C80C10000000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00000011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
290 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"03" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= direct11, goto fetch;
-- L0764@0123 FF0002FFC0C000000000.jump:  IL_PC <= direct11, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 110, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
291 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"6" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 7;
-- L0769@0124 E0D96C81C10000000000.  trace(from_microcode), directByte = 7;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00000111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
292 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"07" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= pc_plus_off6;
-- L0770@0125 E000003FC08000000000.  IL_PC <= pc_plus_off6;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 100, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
293 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"4" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceGoto;
-- L0771@0126 E0D96C87810000000000.br_exit:  trace(from_microcode), directByte = 30;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00011110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
294 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"1E" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0772@0127 FF0002FFC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
295 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 7;
-- L0777@0128 E0D96C81C10000000000.  trace(from_microcode), directByte = 7;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00000111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
296 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"07" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto badop;
-- L0778@0129 FF00047FC00000000000.  if false then next else badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000010001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
297 => '1' & '1' & '1' & "11111" & O"000" & O"021" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 17;
-- L0783@012A E0D96C84410000000000.  trace(from_microcode), directByte = 17;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00010001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
298 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"11" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= IL_PC, BP <= save, skipSpaces();
-- L0784@012B E0C8643FC40000400000.  T <= IL_PC, BP <= save, skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010000 else 110010000, directByte = 11111111, T <= 0001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 100, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
299 => '1' & '1' & '1' & "00000" & O"620" & O"620" & X"FF" & X"1" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"4" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 3;
-- L0785@012C E0D96C80C10000000000.bc_loop:  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00000011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
300 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"03" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- readCore(BP);
-- L0786@012D E0CEE77FC00020000000.  readCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011101 else 110011101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
301 => '1' & '1' & '1' & "00000" & O"635" & O"635" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
-- L0787@012E F2004CFFC00000000000.  if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10010) then 000000000 else 100110011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
302 => '1' & '1' & '1' & "10010" & O"000" & O"463" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if ILCODEBYTE_BIT7 then bc_match;
-- L0788@012F E198803FC00000000000.  if ILCODEBYTE_BIT7 then bc_match;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00001) then 100110001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
303 => '1' & '1' & '1' & "00001" & O"461" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- BP <= inc, IL_PC <= inc, goto bc_loop;
-- L0789@0130 FF004B3FC04000300000.  BP <= inc, IL_PC <= inc, if false then next else bc_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100101100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
304 => '1' & '1' & '1' & "11111" & O"000" & O"454" & X"FF" & X"0" & "00" & O"2" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- BP <= inc, IL_PC <= inc;
-- L0790@0131 E000003FC04000300000.bc_match:  BP <= inc, IL_PC <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
305 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"2" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0792@0132 FF0002FFC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
306 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- BP <= restore, IL_PC <= T;
-- L0793@0133 E000003FC06000500000.bc_exit:  BP <= restore, IL_PC <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 011, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 101, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
307 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"3" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"5" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= pc_plus_off5, goto br_exit;
-- L0795@0134 FF0049BFC0A000000000.  IL_PC <= pc_plus_off5, if false then next else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100100110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
308 => '1' & '1' & '1' & "11111" & O"000" & O"446" & X"FF" & X"0" & "00" & O"5" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 16;
-- L0800@0135 E0D96C84010000000000.  trace(from_microcode), directByte = 16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00010000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
309 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"10" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- skipSpaces();
-- L0801@0136 E0C8643FC00000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010000 else 110010000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
310 => '1' & '1' & '1' & "00000" & O"620" & O"620" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
-- L0802@0137 EF9C803FC00008000000.  MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01111) then 100111001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 100, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
311 => '1' & '1' & '1' & "01111" & O"471" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"4" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop else br_exit;
-- L0803@0138 FA08C9BFC0A000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11010) then 000010001 else 100100110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
312 => '1' & '1' & '1' & "11010" & O"021" & O"446" & X"FF" & X"0" & "00" & O"5" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
-- L0804@0139 F0AD003FDC0000000000.bv_exec:  T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 101011010 else 000000000, directByte = 11111111, T <= 0111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
313 => '1' & '1' & '1' & "10000" & O"532" & O"000" & X"FF" & X"7" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= push_TByte, BP <= inc, goto fetch;
-- L0805@013A FF0002FFC00000328000.  ExpStack <= push_TByte, BP <= inc, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 101, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
314 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"5" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 14;
-- L0810@013B E0D96C83810000000000.  trace(from_microcode), directByte = 14;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00001110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
315 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"0E" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- skipSpaces();
-- L0811@013C E0C8643FC00000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010000 else 110010000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
316 => '1' & '1' & '1' & "00000" & O"620" & O"620" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= reset0, if MDR_IS_NUM then bn_loop;
-- L0812@013D EEA1003FC00000000080.  alu <= reset0, if MDR_IS_NUM then bn_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01110) then 101000010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
317 => '1' & '1' & '1' & "01110" & O"502" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00001" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
-- L0813@013E FA08803FC0A000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11010) then 000010001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
318 => '1' & '1' & '1' & "11010" & O"021" & O"000" & X"FF" & X"0" & "00" & O"5" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceY();
-- L0814@013F E0D4EA7FC00000000000.bn_exit:  traceY();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110101001 else 110101001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
319 => '1' & '1' & '1' & "00000" & O"651" & O"651" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceGoto;
-- L0815@0140 E0D96C87810000000000.  trace(from_microcode), directByte = 30;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00011110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
320 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"1E" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0816@0141 FF0002FFC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
321 => '1' & '1' & '1' & "11111" & O"000" & O"013" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= Yx10_plus_MDR, BP <= inc;
-- L0817@0142 E000003FC00000300800.bn_loop:  alu <= Yx10_plus_MDR, BP <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
322 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "10000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if ALU_OVERFLOW then OVERFLOW_ERR;
-- L0818@0143 F7AA003FC00000000000.  if ALU_OVERFLOW then OVERFLOW_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10111) then 101010100 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
323 => '1' & '1' & '1' & "10111" & O"524" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- readCore(BP);
-- L0819@0144 E0CEE77FC00020000000.  readCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011101 else 110011101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
324 => '1' & '1' & '1' & "00000" & O"635" & O"635" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if MDR_IS_NUM then bn_loop;
-- L0820@0145 EEA1003FC00000000000.  if MDR_IS_NUM then bn_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01110) then 101000010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
325 => '1' & '1' & '1' & "01110" & O"502" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
-- L0821@0146 F0AD003FD40000000000.  T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 101011010 else 000000000, directByte = 11111111, T <= 0101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
326 => '1' & '1' & '1' & "10000" & O"532" & O"000" & X"FF" & X"5" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= push_TWord, goto bn_exit;
-- L0822@0147 FF004FFFC00000020000.  ExpStack <= push_TWord, if false then next else bn_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100111111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
327 => '1' & '1' & '1' & "11111" & O"000" & O"477" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 13;
-- L0827@0148 E0D96C83410000000000.  trace(from_microcode), directByte = 13;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00001101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
328 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"0D" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- skipSpaces();
-- L0828@0149 E0C8643FC00000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010000 else 110010000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
329 => '1' & '1' & '1' & "00000" & O"620" & O"620" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = CR, if MDR_EQU_DB then fetch;
-- L0829@014A E5058003400000000000.  directByte = 0x0D, if MDR_EQU_DB then fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 000001011 else 000000000, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
330 => '1' & '1' & '1' & "00101" & O"013" & O"000" & X"0D" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= pc_plus_off5, goto br_exit;
-- L0830@014B FF0049BFC0A000000000.  IL_PC <= pc_plus_off5, if false then next else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100100110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
331 => '1' & '1' & '1' & "11111" & O"000" & O"446" & X"FF" & X"0" & "00" & O"5" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- gotChar = 1, traceString 55;
-- L0834@014C E0D96C8DC10000004000.BREAK:  gotChar = 1, trace(from_microcode), directByte = 55;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00110111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
332 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"37" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outBeep();
-- L0835@014D E0CA653FC00000000000.  outBeep();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010100 else 110010100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
333 => '1' & '1' & '1' & "00000" & O"624" & O"624" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = 'B', outChar(from_microcode);
-- L0836@014E E0CCE650800080000000.  directByte = 'B', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 01000010, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
334 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"42" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto traceDetails;
-- L0837@014F FF0057FFC00000000000.  if false then next else traceDetails;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101011111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
335 => '1' & '1' & '1' & "11111" & O"000" & O"537" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 50;
-- L0839@0150 E0D96C8C810000000000.NOPROG_ERR:  trace(from_microcode), directByte = 50;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00110010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
336 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"32" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto traceError;
-- L0840@0151 FF00577FC00000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101011101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
337 => '1' & '1' & '1' & "11111" & O"000" & O"535" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 57;
-- L0841@0152 E0D96C8E410000000000.DIVBY0_ERR:  trace(from_microcode), directByte = 57;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00111001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
338 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"39" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto traceError;
-- L0842@0153 FF00577FC00000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101011101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
339 => '1' & '1' & '1' & "11111" & O"000" & O"535" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 58;
-- L0843@0154 E0D96C8E810000000000.OVERFLOW_ERR:  trace(from_microcode), directByte = 58;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00111010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
340 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"3A" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto traceError;
-- L0844@0155 FF00577FC00000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101011101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
341 => '1' & '1' & '1' & "11111" & O"000" & O"535" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 61;
-- L0845@0156 E0D96C8F410000000000.SYNTAX_ERR:  trace(from_microcode), directByte = 61;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00111101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
342 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"3D" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto traceError;
-- L0846@0157 FF00577FC00000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101011101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
343 => '1' & '1' & '1' & "11111" & O"000" & O"535" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 62;
-- L0847@0158 E0D96C8F810000000000.INTERNAL_ERR:  trace(from_microcode), directByte = 62;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00111110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
344 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"3E" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto traceError;
-- L0848@0159 FF00577FC00000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101011101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
345 => '1' & '1' & '1' & "11111" & O"000" & O"535" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 60;
-- L0849@015A E0D96C8F010000000000.ESTACK_ERR:  trace(from_microcode), directByte = 60;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00111100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
346 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"3C" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto traceError;
-- L0850@015B FF00577FC00000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101011101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
347 => '1' & '1' & '1' & "11111" & O"000" & O"535" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 59;
-- L0851@015C E0D96C8EC10000000000.RSTACK_ERR:  trace(from_microcode), directByte = 59;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00111011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
348 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"3B" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outBeep();
-- L0852@015D E0CA653FC00000000000.traceError:  outBeep();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010100 else 110010100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
349 => '1' & '1' & '1' & "00000" & O"624" & O"624" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = 'E', outChar(from_microcode);
-- L0853@015E E0CCE651400080000000.  directByte = 'E', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 01000101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
350 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"45" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = '#', outChar(from_microcode), T <= IL_PC;
-- L0854@015F E0CCE648C40080000000.traceDetails:  directByte = '#', outChar(from_microcode), T <= IL_PC;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 00100011, T <= 0001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
351 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"23" & X"1" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= dec;
-- L0855@0160 E000003FE40000000000.  T <= dec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
352 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"9" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= R_fromT, printDecR();
-- L0856@0161 E0BE5F3FC00000000980.  alu <= R_fromT, printDecR();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101111100 else 101111100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
353 => '1' & '1' & '1' & "00000" & O"574" & O"574" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10011" & '0' & '0' & '0' & '0' & '0' & "00",

-- if IS_RUNMODE then next else err_done;
-- L0857@0162 FC005A7FC00000000000.  if IS_RUNMODE then next else err_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11100) then 000000000 else 101101001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
354 => '1' & '1' & '1' & "11100" & O"000" & O"551" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = ' ', outChar(from_microcode);
-- L0858@0163 E0CCE648000080000000.print_lino:  directByte = ' ', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 00100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
355 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"20" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = 'A', outChar(from_microcode);
-- L0859@0164 E0CCE650400080000000.  directByte = 'A', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 01000001, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
356 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"41" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = 'T', outChar(from_microcode);
-- L0860@0165 E0CCE655000080000000.  directByte = 'T', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 01010100, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
357 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"54" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = ' ', outChar(from_microcode), alu <= S_fromLino;
-- L0861@0166 E0CCE648000080000A00.  directByte = ' ', outChar(from_microcode), alu <= S_fromLino;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 00100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
358 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"20" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_S;
-- L0862@0167 E000003FF40000000000.  T <= from_S;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
359 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"D" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= R_fromT, printDecR();
-- L0863@0168 E0BE5F3FC00000000980.  alu <= R_fromT, printDecR();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101111100 else 101111100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
360 => '1' & '1' & '1' & "00000" & O"574" & O"574" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10011" & '0' & '0' & '0' & '0' & '0' & "00",

-- outCRLF();
-- L0864@0169 E0CBE5FFC00000000000.err_done:  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
361 => '1' & '1' & '1' & "00000" & O"627" & O"627" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- trace(crlf);
-- L0865@016A E0D96CBFC30000000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 11111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
362 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"FF" & X"0" & "11" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto WarmStart;
-- L0866@016B FF0001BFC00000000000.  if false then next else WarmStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
363 => '1' & '1' & '1' & "11111" & O"000" & O"006" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- readCore(T);
-- L0868@016C E0CEE77FC00030000000.findNextCR:  readCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011101 else 110011101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
364 => '1' & '1' & '1' & "00000" & O"635" & O"635" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = CR, if MDR_EQU_DB then return;
-- L0869@016D E5010003400000000000.  directByte = 0x0D, if MDR_EQU_DB then return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 000000010 else 000000000, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
365 => '1' & '1' & '1' & "00101" & O"002" & O"000" & X"0D" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = NULL, if MDR_EQU_DB then INTERNAL_ERR;
-- L0870@016E E5AC0000000000000000.  directByte = 0x00, if MDR_EQU_DB then INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 101011000 else 000000000, directByte = 00000000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
366 => '1' & '1' & '1' & "00101" & O"530" & O"000" & X"00" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= inc, goto findNextCR;
-- L0871@016F FF005B3FE00000000000.  T <= inc, if false then next else findNextCR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101101100, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
367 => '1' & '1' & '1' & "11111" & O"000" & O"554" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= reset1, readCore(T);
-- L0873@0170 E0CEE77FC00030000100.readCore16:  alu <= reset1, readCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011101 else 110011101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
368 => '1' & '1' & '1' & "00000" & O"635" & O"635" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00010" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= Rx256_plus_MDR, T <= inc;
-- L0874@0171 E000003FE00000000880.  alu <= Rx256_plus_MDR, T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
369 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & "00",

-- readCore(T);
-- L0875@0172 E0CEE77FC00030000000.  readCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011101 else 110011101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
370 => '1' & '1' & '1' & "00000" & O"635" & O"635" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= Rx256_plus_MDR, T <= inc, back;
-- L0876@0173 E00100BFE00000000880.  alu <= Rx256_plus_MDR, T <= inc, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
371 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & "00",

-- writeCore(T, zero), T <= inc;
-- L0878@0174 E0CDE6FFE00034000000.write2Nulls:  writeCore(T, zero), T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011011 else 110011011, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
372 => '1' & '1' & '1' & "00000" & O"633" & O"633" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"2" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- writeCore(T, zero);
-- L0879@0175 E0CDE6FFC00034000000.  writeCore(T, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011011 else 110011011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
373 => '1' & '1' & '1' & "00000" & O"633" & O"633" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"2" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- back;
-- L0880@0176 E00100BFC00000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
374 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0883@0177 F1AD003FC00000000000.pullRS:  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101011010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
375 => '1' & '1' & '1' & "10001" & O"532" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0884@0178 E000003FC00000030180.  alu <= R_fromStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
376 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & "00",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0885@0179 F1AD003FC00000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101011010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
377 => '1' & '1' & '1' & "10001" & O"532" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_fromStack, ExpStack <= pop2, back;
-- L0886@017A E00100BFC00000030200.  alu <= S_fromStack, ExpStack <= pop2, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
378 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00100" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0889@017B E000003FC00000030180.printDec:  alu <= R_fromStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
379 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= bcd_start;
-- L0891@017C E000003FC00000000500.printDecR:  alu <= bcd_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
380 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01010" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= bcd_next, if ALU_READY then next else repeat;
-- L0892@017D F600007FC00000000580.  alu <= bcd_next, if ALU_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
381 => '1' & '1' & '1' & "10110" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01011" & '0' & '0' & '0' & '0' & '0' & "00",

-- if ALU_SIGN then next else pn_5;
-- L0894@017E F800603FC00000000000.  if ALU_SIGN then next else pn_5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11000) then 000000000 else 110000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
382 => '1' & '1' & '1' & "11000" & O"000" & O"600" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = '-', outChar(from_microcode);
-- L0895@017F E0CCE64B400080000000.  directByte = '-', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 00101101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
383 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"2D" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if LEADING_ZERO then pn_4;
-- L0896@0180 FBC1003FC00000000000.pn_5:  if LEADING_ZERO then pn_4;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 110000010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
384 => '1' & '1' & '1' & "11011" & O"602" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outChar(from_YtoAlpha);
-- L0897@0181 E0CCE67FC00140000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
385 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= Yx16;
-- L0898@0182 E000003FC00000000480.pn_4:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
386 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01001" & '0' & '0' & '0' & '0' & '0' & "00",

-- if LEADING_ZERO then pn_3;
-- L0899@0183 FBC2803FC00000000000.  if LEADING_ZERO then pn_3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 110000101 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
387 => '1' & '1' & '1' & "11011" & O"605" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outChar(from_YtoAlpha);
-- L0900@0184 E0CCE67FC00140000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
388 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= Yx16;
-- L0901@0185 E000003FC00000000480.pn_3:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
389 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01001" & '0' & '0' & '0' & '0' & '0' & "00",

-- if LEADING_ZERO then pn_2;
-- L0902@0186 FBC4003FC00000000000.  if LEADING_ZERO then pn_2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 110001000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
390 => '1' & '1' & '1' & "11011" & O"610" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outChar(from_YtoAlpha);
-- L0903@0187 E0CCE67FC00140000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
391 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= Yx16;
-- L0904@0188 E000003FC00000000480.pn_2:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
392 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01001" & '0' & '0' & '0' & '0' & '0' & "00",

-- if LEADING_ZERO then pn_1;
-- L0905@0189 FBC5803FC00000000000.  if LEADING_ZERO then pn_1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 110001011 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
393 => '1' & '1' & '1' & "11011" & O"613" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outChar(from_YtoAlpha);
-- L0906@018A E0CCE67FC00140000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
394 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= Yx16;
-- L0907@018B E000003FC00000000480.pn_1:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
395 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01001" & '0' & '0' & '0' & '0' & '0' & "00",

-- if LEADING_ZERO then pn_0;
-- L0908@018C FBC7003FC00000000000.  if LEADING_ZERO then pn_0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 110001110 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
396 => '1' & '1' & '1' & "11011" & O"616" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outChar(from_YtoAlpha);
-- L0909@018D E0CCE67FC00140000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
397 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= Yx16;
-- L0910@018E E000003FC00000000480.pn_0:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
398 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01001" & '0' & '0' & '0' & '0' & '0' & "00",

-- CHAROUT <= from_YtoAlpha, goto outChar;
-- L0911@018F FF00667FC00140000000.  CHAROUT <= from_YtoAlpha, if false then next else outChar;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 110011001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
399 => '1' & '1' & '1' & "11111" & O"000" & O"631" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- readCore(BP);
-- L0913@0190 E0CEE77FC00020000000.skipSpaces:  readCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011101 else 110011101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
400 => '1' & '1' & '1' & "00000" & O"635" & O"635" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = ' ', if MDR_EQU_DB then skipSp;
-- L0914@0191 E5C98008000000000000.  directByte = ' ', if MDR_EQU_DB then skipSp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 110010011 else 000000000, directByte = 00100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
401 => '1' & '1' & '1' & "00101" & O"623" & O"000" & X"20" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = TAB, if MDR_EQU_DB then skipSp else return;
-- L0915@0192 E5C98082400000000000.  directByte = 0x09, if MDR_EQU_DB then skipSp else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 110010011 else 000000010, directByte = 00001001, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
402 => '1' & '1' & '1' & "00101" & O"623" & O"002" & X"09" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- BP <= inc, goto skipSpaces;
-- L0916@0193 FF00643FC00000300000.skipSp:  BP <= inc, if false then next else skipSpaces;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 110010000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
403 => '1' & '1' & '1' & "11111" & O"000" & O"620" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outCRLF();
-- L0918@0194 E0CBE5FFC00000000000.outBeep:  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
404 => '1' & '1' & '1' & "00000" & O"627" & O"627" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- trace(crlf);
-- L0919@0195 E0D96CBFC30000000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 11111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
405 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"FF" & X"0" & "11" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = BEEP, CHAROUT <= from_microcode, goto outChar;
-- L0920@0196 FF006641C00080000000.  directByte = 0x07, CHAROUT <= from_microcode, if false then next else outChar;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 110011001, directByte = 00000111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
406 => '1' & '1' & '1' & "11111" & O"000" & O"631" & X"07" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = CR, outChar(from_microcode);
-- L0922@0197 E0CCE643400080000000.outCRLF:  directByte = 0x0D, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011001 else 110011001, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
407 => '1' & '1' & '1' & "00000" & O"631" & O"631" & X"0D" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = LF, CHAROUT <= from_microcode;
-- L0923@0198 E0000002800080000000.  directByte = 0x0A, CHAROUT <= from_microcode;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 00001010, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
408 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"0A" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if CHAROUT_READY then next else repeat;
-- L0924@0199 E200007FC00000000000.outChar:  if CHAROUT_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00010) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
409 => '1' & '1' & '1' & "00010" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if CHAROUT_READY then return else repeat;
-- L0925@019A E201007FC00000000000.  if CHAROUT_READY then return else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00010) then 000000010 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
410 => '1' & '1' & '1' & "00010" & O"002" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- nBUSREQ = 0, if nBUSACK then repeat else next;
-- L0927@019B 6600803FC00000000000.writeCore:  nBUSREQ = 0, if nBUSACK then repeat else next;
--  nBUSREQ = 0, nWR = 1, nRD = 1, if (00110) then 000000001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
411 => '0' & '1' & '1' & "00110" & O"001" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- nBUSREQ = 0, nWR = 0, back;
-- L0928@019C 200100BFC00000000000.  nBUSREQ = 0, nWR = 0, if true then return else return;
--  nBUSREQ = 0, nWR = 0, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
412 => '0' & '0' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- nBUSREQ = 0, if nBUSACK then repeat else next;
-- L0930@019D 6600803FC00000000000.readCore:  nBUSREQ = 0, if nBUSACK then repeat else next;
--  nBUSREQ = 0, nWR = 1, nRD = 1, if (00110) then 000000001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
413 => '0' & '1' & '1' & "00110" & O"001" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- nBUSREQ = 0, nRD = 0, MDR <= from_Bus, back;
-- L0931@019E 400100BFC00002000000.  nBUSREQ = 0, nRD = 0, MDR <= from_Bus, if true then return else return;
--  nBUSREQ = 0, nWR = 1, nRD = 0, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 001, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
414 => '0' & '1' & '0' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"1" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- InlEnd <= InLine_start, trace(crlf);
-- L0935@019F E0D96CBFC30000800000.dump_input:  InlEnd <= InLine_start, trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 11111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
415 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"FF" & X"0" & "11" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "01" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- readCore(InlEnd);
-- L0936@01A0 E0CEE77FC00010000000.dump_inlp:  readCore(InlEnd);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011101 else 110011101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
416 => '1' & '1' & '1' & "00000" & O"635" & O"635" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "01" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = 9, trace(from_microcode);
-- L0937@01A1 E0D96C82410000000000.  directByte = 9, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00001001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
417 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"09" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = NULL, if MDR_EQU_DB then dump_inex;
-- L0938@01A2 E5D20000000000000000.  directByte = 0x00, if MDR_EQU_DB then dump_inex;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 110100100 else 000000000, directByte = 00000000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
418 => '1' & '1' & '1' & "00101" & O"644" & O"000" & X"00" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- InlEnd <= inc, goto dump_inlp;
-- L0939@01A3 FF00683FC00001000000.  InlEnd <= inc, if false then next else dump_inlp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 110100000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
419 => '1' & '1' & '1' & "11111" & O"000" & O"640" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "10" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- trace(crlf);
-- L0940@01A4 E0D96CBFC30000000000.dump_inex:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 11111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
420 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"FF" & X"0" & "11" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- back;
-- L0941@01A5 E00100BFC00000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
421 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= push_TWord, T <= BP;
-- L0943@01A6 E000003FE80000020000.traceBP:  ExpStack <= push_TWord, T <= BP;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
422 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"A" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 33;
-- L0944@01A7 E0D96C88410000000000.  trace(from_microcode), directByte = 33;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00100001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
423 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"21" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= ExpStack, ExpStack <= pop2, back;
-- L0945@01A8 E00100BFD00000030000.  T <= ExpStack, ExpStack <= pop2, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
424 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"4" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= push_TWord, T <= from_YLo;
-- L0947@01A9 E000003FD40000020000.traceY:  ExpStack <= push_TWord, T <= from_YLo;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
425 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"5" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 32;
-- L0948@01AA E0D96C88010000000000.  trace(from_microcode), directByte = 32;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00100000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
426 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"20" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= ExpStack, ExpStack <= pop2, back;
-- L0949@01AB E00100BFD00000030000.  T <= ExpStack, ExpStack <= pop2, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
427 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"4" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- trace(crlf);
-- L0951@01AC E0D96CBFC30000000000.traceALU:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 11111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
428 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"FF" & X"0" & "11" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= push_TWord, traceT;
-- L0952@01AD E0D96C8D010000020000.  ExpStack <= push_TWord, trace(from_microcode), directByte = 52;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00110100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
429 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"34" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_S, traceString 52;
-- L0953@01AE E0D96C8D350000000000.  T <= from_S, trace(from_microcode), directByte = 52;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00110100, T <= 1101, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
430 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"34" & X"D" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_R, traceString 52;
-- L0954@01AF E0D96C8D390000000000.  T <= from_R, trace(from_microcode), directByte = 52;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00110100, T <= 1110, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
431 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"34" & X"E" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_YLo, traceString 53;
-- L0955@01B0 E0D96C8D550000000000.  T <= from_YLo, trace(from_microcode), directByte = 53;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110010 else 110110010, directByte = 00110101, T <= 0101, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
432 => '1' & '1' & '1' & "00000" & O"662" & O"662" & X"35" & X"5" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= ExpStack, ExpStack <= pop2, DBGINDEX <= crlf;
-- L0956@01B1 E000003FD30000030000.  T <= ExpStack, ExpStack <= pop2, DBGINDEX <= crlf;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0100, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
433 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"4" & "11" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if DBG_READY then next else repeat;
-- L0957@01B2 E400007FC00000000000.trace:  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
434 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if DBG_READY then next else repeat;
-- L0958@01B3 E400007FC00000000000.  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
435 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- DBGINDEX <= zero, back;
-- L0959@01B4 E00100BFC20000000000.  DBGINDEX <= zero, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 10, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
436 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "10" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- 75 location(s) in following ranges will be filled with default value
-- 01B5 .. 01FF

others => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00"
);

end microBasic_code;

