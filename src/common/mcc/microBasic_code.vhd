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
-- L0012.nWR: .valfield 1 values 0, 1 default 1;
--
alias mb_nWR: 	std_logic is mb_uinstruction(79);
---- Start boilerplate code (use with utmost caution!)
--  nWR <= mb_nWR;
---- End boilerplate code

--
-- L0013.nRD: .valfield 1 values 0, 1 default 1;
--
alias mb_nRD: 	std_logic is mb_uinstruction(78);
---- Start boilerplate code (use with utmost caution!)
--  nRD <= mb_nRD;
---- End boilerplate code

--
-- L0018.seq_cond: .if 5 values true, ILCODEBYTE_BIT7, CHAROUT_READY, IL_A_VALID, DBG_READY | KBD_BREAK, MDR_EQU_DB, nBUSACK, INLEND_MAX | BASLINE_FOUND, INLEND_MIN | IMPLINE_EMPTY, CHARIN_PRINTABLE, CHARIN_EQU_DB, CHARIN_READY, BP_IN_INPLINE, SVP_IN_INPLINE, MDR_IS_NUM, MDR_IS_ALPHA, STACK_IS_FULL, STACK_IS_EMPTY, MDR_MATCHES_ILCODEBYTE, R_IS_ZERO, Y_ZERO   | CP_SKIP, Y_SIGN, ALU_READY  | LS_PARAMS_OK, ALU_OVERFLOW  | LS_PASSED_END, ALU_SIGN  | LS_IN_RANGE, AT_TAB, OFF_IS_ZERO, IS_RUNMODE, S_EQU_DB_MOD16, CACHE_VALID, CACHE_HIT, false default true;
--
alias mb_seq_cond: 	std_logic_vector(4 downto 0) is mb_uinstruction(77 downto 73);
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
constant seq_cond_IS_RUNMODE: 	integer := 27;
constant seq_cond_S_EQU_DB_MOD16: 	integer := 28;
constant seq_cond_CACHE_VALID: 	integer := 29;
constant seq_cond_CACHE_HIT: 	integer := 30;
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
--  cond(seq_cond_IS_RUNMODE) => IS_RUNMODE,
--  cond(seq_cond_S_EQU_DB_MOD16) => S_EQU_DB_MOD16,
--  cond(seq_cond_CACHE_VALID) => CACHE_VALID,
--  cond(seq_cond_CACHE_HIT) => CACHE_HIT,
--  cond(seq_cond_false) => '0',
---- End boilerplate code

--
-- L0052.seq_then: .then 9 values next | continue, repeat, return, fork, @ default next;
--
alias mb_seq_then: 	std_logic_vector(8 downto 0) is mb_uinstruction(72 downto 64);
constant seq_then_next: 	std_logic_vector(8 downto 0) := O"000";
constant seq_then_continue: 	std_logic_vector(8 downto 0) := O"000";
constant seq_then_repeat: 	std_logic_vector(8 downto 0) := O"001";
constant seq_then_return: 	std_logic_vector(8 downto 0) := O"002";
constant seq_then_fork: 	std_logic_vector(8 downto 0) := O"003";
-- include '.controller <filename.vhd>, <stackdepth>;' in .mcc file to generate pre-canned microcode control unit and connect 'then' to mb_seq_then

--
-- L0053.seq_else: .else 9 values next | continue, repeat, return, fork, 0b000000..0b111111, @ default next;
--
alias mb_seq_else: 	std_logic_vector(8 downto 0) is mb_uinstruction(63 downto 55);
constant seq_else_next: 	std_logic_vector(8 downto 0) := O"000";
constant seq_else_continue: 	std_logic_vector(8 downto 0) := O"000";
constant seq_else_repeat: 	std_logic_vector(8 downto 0) := O"001";
constant seq_else_return: 	std_logic_vector(8 downto 0) := O"002";
constant seq_else_fork: 	std_logic_vector(8 downto 0) := O"003";
-- include '.controller <filename.vhd>, <stackdepth>;' in .mcc file to generate pre-canned microcode control unit and connect 'else' to mb_seq_else

--
-- L0056.directByte: .valfield 7 values 0x00..0x7F default 0x7F;
--
alias mb_directByte: 	std_logic_vector(6 downto 0) is mb_uinstruction(54 downto 48);
---- Start boilerplate code (use with utmost caution!)
--  directByte <= mb_directByte;
---- End boilerplate code

--
-- L0059.T: .regfield 5 values same, IL_PC, XQhere, from_vars, ExpStack, from_YLo, from_YHi, zero, codeByte, MDR, MDRx2, inc, dec, BP, Prog_start, PrgEnd, from_S, from_R, save, recall, BasStack_Hi, BasStack_Lo, Cache_Data, LS, -, -, -, -, -, -, - default same;
--
alias mb_T: 	std_logic_vector(4 downto 0) is mb_uinstruction(47 downto 43);
constant T_same: 	std_logic_vector(4 downto 0) := "00000";
constant T_IL_PC: 	std_logic_vector(4 downto 0) := "00001";
constant T_XQhere: 	std_logic_vector(4 downto 0) := "00010";
constant T_from_vars: 	std_logic_vector(4 downto 0) := "00011";
constant T_ExpStack: 	std_logic_vector(4 downto 0) := "00100";
constant T_from_YLo: 	std_logic_vector(4 downto 0) := "00101";
constant T_from_YHi: 	std_logic_vector(4 downto 0) := "00110";
constant T_zero: 	std_logic_vector(4 downto 0) := "00111";
constant T_codeByte: 	std_logic_vector(4 downto 0) := "01000";
constant T_MDR: 	std_logic_vector(4 downto 0) := "01001";
constant T_MDRx2: 	std_logic_vector(4 downto 0) := "01010";
constant T_inc: 	std_logic_vector(4 downto 0) := "01011";
constant T_dec: 	std_logic_vector(4 downto 0) := "01100";
constant T_BP: 	std_logic_vector(4 downto 0) := "01101";
constant T_Prog_start: 	std_logic_vector(4 downto 0) := "01110";
constant T_PrgEnd: 	std_logic_vector(4 downto 0) := "01111";
constant T_from_S: 	std_logic_vector(4 downto 0) := "10000";
constant T_from_R: 	std_logic_vector(4 downto 0) := "10001";
constant T_save: 	std_logic_vector(4 downto 0) := "10010";
constant T_recall: 	std_logic_vector(4 downto 0) := "10011";
constant T_BasStack_Hi: 	std_logic_vector(4 downto 0) := "10100";
constant T_BasStack_Lo: 	std_logic_vector(4 downto 0) := "10101";
constant T_Cache_Data: 	std_logic_vector(4 downto 0) := "10110";
constant T_LS: 	std_logic_vector(4 downto 0) := "10111";
-- Value "11000" not allowed (name '-' is not assignable)
-- Value "11001" not allowed (name '-' is not assignable)
-- Value "11010" not allowed (name '-' is not assignable)
-- Value "11011" not allowed (name '-' is not assignable)
-- Value "11100" not allowed (name '-' is not assignable)
-- Value "11101" not allowed (name '-' is not assignable)
-- Value "11110" not allowed (name '-' is not assignable)
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
--			when T_from_YHi =>
--				T <= YHi;
--			when T_zero =>
--				T <= (others => '0');
--			when T_codeByte =>
--				T <= codeByte;
--			when T_MDR =>
--				T <= MDR;
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
--			when T_save =>
--				T <= save;
--			when T_recall =>
--				T <= recall;
--			when T_BasStack_Hi =>
--				T <= BasStack_Hi;
--			when T_BasStack_Lo =>
--				T <= BasStack_Lo;
--			when T_Cache_Data =>
--				T <= Cache_Data;
--			when T_LS =>
--				T <= LS;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0094.DBGINDEX: .regfield 2 values same, from_microcode, zero, crlf default same;
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
-- L0102.IL_PC: .regfield 3 values same, XQhere, inc, T, pc_plus_off6, pc_plus_off5, direct11, RetStack default same;
--
alias mb_IL_PC: 	std_logic_vector(2 downto 0) is mb_uinstruction(40 downto 38);
constant IL_PC_same: 	std_logic_vector(2 downto 0) := O"0";
constant IL_PC_XQhere: 	std_logic_vector(2 downto 0) := O"1";
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
--			when IL_PC_XQhere =>
--				IL_PC <= XQhere;
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
-- L0114.XQhere: .regfield 1 values same, T default same;
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
-- L0120.IL_OP: .regfield 1 values same, from_interpreter default same;
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
-- L0126.RetStack: .regfield 2 values same, clear, pop, push_IL_PC_PLUS_1 default same;
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
-- L0134.BasStack: .regfield 2 values same, clear, pop, push_Lino_and_BP default same;
--
alias mb_BasStack: 	std_logic_vector(1 downto 0) is mb_uinstruction(33 downto 32);
constant BasStack_same: 	std_logic_vector(1 downto 0) := "00";
constant BasStack_clear: 	std_logic_vector(1 downto 0) := "01";
constant BasStack_pop: 	std_logic_vector(1 downto 0) := "10";
constant BasStack_push_Lino_and_BP: 	std_logic_vector(1 downto 0) := "11";
---- Start boilerplate code (use with utmost caution!)
-- update_BasStack: process(clk, mb_BasStack)
-- begin
--	if (rising_edge(clk)) then
--		case mb_BasStack is
----			when BasStack_same =>
----				BasStack <= BasStack;
--			when BasStack_clear =>
--				BasStack <= (others => '0');
--			when BasStack_pop =>
--				BasStack <= pop;
--			when BasStack_push_Lino_and_BP =>
--				BasStack <= push_Lino_and_BP;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0142.ExpStack: .regfield 3 values same, clear, startSwap, endSwap, push_TWord, push_TByte, pop2, pop1 default same;
--
alias mb_ExpStack: 	std_logic_vector(2 downto 0) is mb_uinstruction(31 downto 29);
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
-- L0154.CHAROUT: .regfield 3 values same, from_interpreter, from_microcode, from_charin, from_MDR, from_YtoAlpha, from_YtoAlphaZ, - default same;
--
alias mb_CHAROUT: 	std_logic_vector(2 downto 0) is mb_uinstruction(28 downto 26);
constant CHAROUT_same: 	std_logic_vector(2 downto 0) := O"0";
constant CHAROUT_from_interpreter: 	std_logic_vector(2 downto 0) := O"1";
constant CHAROUT_from_microcode: 	std_logic_vector(2 downto 0) := O"2";
constant CHAROUT_from_charin: 	std_logic_vector(2 downto 0) := O"3";
constant CHAROUT_from_MDR: 	std_logic_vector(2 downto 0) := O"4";
constant CHAROUT_from_YtoAlpha: 	std_logic_vector(2 downto 0) := O"5";
constant CHAROUT_from_YtoAlphaZ: 	std_logic_vector(2 downto 0) := O"6";
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
--			when CHAROUT_from_YtoAlphaZ =>
--				CHAROUT <= YtoAlphaZ;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0166.MAR: .regfield 2 values same, InlEnd, BP, T default same;
--
alias mb_MAR: 	std_logic_vector(1 downto 0) is mb_uinstruction(25 downto 24);
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
-- L0174.MDR: .regfield 3 values same, from_Bus, zero, CHARIN, ToUpper, from_SHi, from_SLo, from_microcode default same;
--
alias mb_MDR: 	std_logic_vector(2 downto 0) is mb_uinstruction(23 downto 21);
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
-- L0186.InlEnd: .regfield 2 values same, InLine_start, inc, dec default same;
--
alias mb_InlEnd: 	std_logic_vector(1 downto 0) is mb_uinstruction(20 downto 19);
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
-- L0194.BP: .regfield 3 values same, InLine_start, SvPt, inc, save, recall, T, LS default same;
--
alias mb_BP: 	std_logic_vector(2 downto 0) is mb_uinstruction(18 downto 16);
constant BP_same: 	std_logic_vector(2 downto 0) := O"0";
constant BP_InLine_start: 	std_logic_vector(2 downto 0) := O"1";
constant BP_SvPt: 	std_logic_vector(2 downto 0) := O"2";
constant BP_inc: 	std_logic_vector(2 downto 0) := O"3";
constant BP_save: 	std_logic_vector(2 downto 0) := O"4";
constant BP_recall: 	std_logic_vector(2 downto 0) := O"5";
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
--			when BP_recall =>
--				BP <= recall;
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
-- L0206.SvPt: .regfield 2 values same, InLine_start, BP, - default same;
--
alias mb_SvPt: 	std_logic_vector(1 downto 0) is mb_uinstruction(15 downto 14);
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
-- L0214.gotChar: .valfield 1 values 0, 1 default 0;
--
alias mb_gotChar: 	std_logic is mb_uinstruction(13);
---- Start boilerplate code (use with utmost caution!)
--  gotChar <= mb_gotChar;
---- End boilerplate code

--
-- L0219.Vars: .regfield 2 values same, indexFromExpStack, T, - default same;
--
alias mb_Vars: 	std_logic_vector(1 downto 0) is mb_uinstruction(12 downto 11);
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
-- L0227.alu: .regfield 5 values nop, reset0, reset1, R_fromStack, S_fromStack, S_plus_R, S_minus_R, neg_R, S_mul_R, Yx16, bcd_start, bcd_next, div_start, div_shift, div_subset, div_end, Yx10_plus_MDR, Rx256_plus_MDR, S_fromT, R_fromT, S_fromLino, copy_init_del, copy_next, copy_init_ins, ls_load, ls_check, Y_save, Y_recall, Y_fromTicks, cache_store, -, - default nop;
--
alias mb_alu: 	std_logic_vector(4 downto 0) is mb_uinstruction(10 downto 6);
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
constant alu_copy_init_del: 	std_logic_vector(4 downto 0) := "10101";
constant alu_copy_next: 	std_logic_vector(4 downto 0) := "10110";
constant alu_copy_init_ins: 	std_logic_vector(4 downto 0) := "10111";
constant alu_ls_load: 	std_logic_vector(4 downto 0) := "11000";
constant alu_ls_check: 	std_logic_vector(4 downto 0) := "11001";
constant alu_Y_save: 	std_logic_vector(4 downto 0) := "11010";
constant alu_Y_recall: 	std_logic_vector(4 downto 0) := "11011";
constant alu_Y_fromTicks: 	std_logic_vector(4 downto 0) := "11100";
constant alu_cache_store: 	std_logic_vector(4 downto 0) := "11101";
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
--			when alu_copy_init_del =>
--				alu <= copy_init_del;
--			when alu_copy_next =>
--				alu <= copy_next;
--			when alu_copy_init_ins =>
--				alu <= copy_init_ins;
--			when alu_ls_load =>
--				alu <= ls_load;
--			when alu_ls_check =>
--				alu <= ls_check;
--			when alu_Y_save =>
--				alu <= Y_save;
--			when alu_Y_recall =>
--				alu <= Y_recall;
--			when alu_Y_fromTicks =>
--				alu <= Y_fromTicks;
--			when alu_cache_store =>
--				alu <= cache_store;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0263.Lino: .regfield 1 values same, T default same;
--
alias mb_Lino: 	std_logic is mb_uinstruction(5);
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
-- L0269.BE: .regfield 1 values same, T default same;
--
alias mb_BE: 	std_logic is mb_uinstruction(4);
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
-- L0275.LS: .regfield 1 values same, T default same;
--
alias mb_LS: 	std_logic is mb_uinstruction(3);
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
-- L0281.LE: .regfield 1 values same, T default same;
--
alias mb_LE: 	std_logic is mb_uinstruction(2);
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
-- L0287.PrgEnd: .regfield 1 values same, T default same;
--
alias mb_PrgEnd: 	std_logic is mb_uinstruction(1);
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
-- L0293.dummy: .valfield 1 values * default 0;
--
alias mb_dummy: 	std_logic is mb_uinstruction(0);
---- Start boilerplate code (use with utmost caution!)
--  dummy <= mb_dummy;
---- End boilerplate code



constant mb_microcode: mb_code_memory := (

-- nop;
-- L0348@0000 C00000FF000000000000._reset:  if true then continue else repeat;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
0 => '1' & '1' & "00000" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= zero;
-- L0350@0001 C000007F380000000000._reset1:  T <= zero;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
1 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- XQhere <= T;
-- L0352@0002 C000007F002000000000._reset2:  XQhere <= T;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 1, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
2 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '1' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- nop;
-- L0354@0003 C00000FF000000000000._reset3:  if true then continue else repeat;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
3 => '1' & '1' & "00000" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 4;
-- L0358@0004 C1DAED04020000000000.ColdStart:  trace(from_microcode), directByte = 4;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0000100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
4 => '1' & '1' & "00000" & O"732" & O"732" & "0000100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- write2Nulls(Prog_start);
-- L0359@0005 C1A2D17F700000000000.  write2Nulls(Prog_start);
--  nWR = 1, nRD = 1, if (00000) then 110100010 else 110100010, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
5 => '1' & '1' & "00000" & O"642" & O"642" & "1111111" & "01110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- clear;
-- L0360@0006 C000007F3C0520000040.WarmStart:  DBGINDEX <= zero, ExpStack <= clear, RetStack <= clear, BasStack <= clear, T <= zero, alu <= reset0;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00111, DBGINDEX <= 10, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 01, BasStack <= 01, ExpStack <= 001, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
6 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00111" & "10" & O"0" & '0' & '0' & "01" & "01" & O"1" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00001" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= zero;
-- L0361@0007 C000007F380000094000.  BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= zero;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 001, SvPt <= 01, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
7 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "01" & O"1" & "01" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, IL_PC <= T, write2Nulls(BP);
-- L0362@0008 C1A2D17F68C000000020.  Lino <= T, IL_PC <= T, write2Nulls(BP);
--  nWR = 1, nRD = 1, if (00000) then 110100010 else 110100010, directByte = 1111111, T <= 01101, DBGINDEX <= 00, IL_PC <= 011, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
8 => '1' & '1' & "00000" & O"642" & O"642" & "1111111" & "01101" & "00" & O"3" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & '0',

-- trace(crlf);
-- L0364@0009 C1DAED7F060000000000.fetch:  trace(crlf);
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 1111111, T <= 00000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
9 => '1' & '1' & "00000" & O"732" & O"732" & "1111111" & "00000" & "11" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 51;
-- L0365@000A C1DAED33020000000000.  trace(from_microcode), directByte = 51;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0110011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
10 => '1' & '1' & "00000" & O"732" & O"732" & "0110011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 2;
-- L0366@000B C1DAED02020000000000.  trace(from_microcode), directByte = 2;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0000010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
11 => '1' & '1' & "00000" & O"732" & O"732" & "0000010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_OP <= from_interpreter, IL_PC <= inc;
-- L0367@000C C000007F009000000000.  IL_OP <= from_interpreter, IL_PC <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 1, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
12 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"2" & '0' & '1' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceSDepth;
-- L0368@000D C1DAED38020000000000.  trace(from_microcode), directByte = 56;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0111000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
13 => '1' & '1' & "00000" & O"732" & O"732" & "0111000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= zero, alu <= reset0, if IL_A_VALID then fork else INTERNAL_ERR;
-- L0369@000E C603C0FF380000000040.  T <= zero, alu <= reset0, if IL_A_VALID then fork else INTERNAL_ERR;
--  nWR = 1, nRD = 1, if (00011) then 000000011 else 110000001, directByte = 1111111, T <= 00111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
14 => '1' & '1' & "00011" & O"003" & O"601" & "1111111" & "00111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00001" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto INTERNAL_ERR;
-- L0372@000F FE00C0FF000000000000.badop:  if false then continue else INTERNAL_ERR;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
15 => '1' & '1' & "11111" & O"000" & O"601" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 15;
-- L0377@0010 C1DAED0F020000000000.  trace(from_microcode), directByte = 15;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0001111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
16 => '1' & '1' & "00000" & O"732" & O"732" & "0001111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= startSwap;
-- L0378@0011 C000007F000040000000.  ExpStack <= startSwap;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 010, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
17 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"2" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= endSwap;
-- L0379@0012 C000007F000060000000.  ExpStack <= endSwap;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 011, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
18 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"3" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0380@0013 FE0004FF000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
19 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 15;
-- L0383@0014 C1DAED0F020000000000.  trace(from_microcode), directByte = 15;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0001111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
20 => '1' & '1' & "00000" & O"732" & O"732" & "0001111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0384@0015 FE0004FF000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
21 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 12;
-- L0389@0016 C1DAED0C020000000000.  trace(from_microcode), directByte = 12;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0001100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
22 => '1' & '1' & "00000" & O"732" & O"732" & "0001100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0390@0017 FE0004FF000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
23 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 28;
-- L0395@0018 C1DAED1C020000000000.  trace(from_microcode), directByte = 28;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0011100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
24 => '1' & '1' & "00000" & O"732" & O"732" & "0011100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 3, T <= codeByte;
-- L0396@0019 C1DAED03420000000000.lb_push:  trace(from_microcode), directByte = 3, T <= codeByte;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0000011, T <= 01000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
25 => '1' & '1' & "00000" & O"732" & O"732" & "0000011" & "01000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TByte;
-- L0397@001A C000007F0000A0000000.  ExpStack <= push_TByte;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 101, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
26 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"5" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
-- L0398@001B E18304FF008000000000.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
--  nWR = 1, nRD = 1, if (10000) then 110000011 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
27 => '1' & '1' & "10000" & O"603" & O"011" & "1111111" & "00000" & "00" & O"2" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 29;
-- L0403@001C C1DAED1D020000000000.  trace(from_microcode), directByte = 29;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0011101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
28 => '1' & '1' & "00000" & O"732" & O"732" & "0011101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 3, T <= codeByte;
-- L0404@001D C1DAED03420000000000.  trace(from_microcode), directByte = 3, T <= codeByte;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0000011, T <= 01000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
29 => '1' & '1' & "00000" & O"732" & O"732" & "0000011" & "01000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TByte;
-- L0405@001E C000007F0000A0000000.  ExpStack <= push_TByte;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 101, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
30 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"5" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
-- L0406@001F E1830CFF008000000000.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
--  nWR = 1, nRD = 1, if (10000) then 110000011 else 000011001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
31 => '1' & '1' & "10000" & O"603" & O"031" & "1111111" & "00000" & "00" & O"2" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 38;
-- L0411@0020 C1DAED26020000000000.  trace(from_microcode), directByte = 38;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0100110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
32 => '1' & '1' & "00000" & O"732" & O"732" & "0100110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0412@0021 E383007F000000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110000011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
33 => '1' & '1' & "10001" & O"603" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR;
-- L0413@0022 E183007F200000000000.  T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10000) then 110000011 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
34 => '1' & '1' & "10000" & O"603" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, goto fetch;
-- L0414@0023 FE0004FF000080000000.  ExpStack <= push_TWord, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
35 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 34;
-- L0419@0024 C1DAED22020000000000.  trace(from_microcode), directByte = 34;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0100010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
36 => '1' & '1' & "00000" & O"732" & O"732" & "0100010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0420@0025 E383007F000000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110000011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
37 => '1' & '1' & "10001" & O"603" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= pop2, goto fetch;
-- L0421@0026 FE0004FF0000C0000000.  ExpStack <= pop2, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
38 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 10;
-- L0426@0027 C1DAED0A020000000000.  trace(from_microcode), directByte = 10;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0001010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
39 => '1' & '1' & "00000" & O"732" & O"732" & "0001010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if BP_IN_INPLINE then next else ptr_exc;
-- L0427@0028 D800177F000000000000.  if BP_IN_INPLINE then next else ptr_exc;
--  nWR = 1, nRD = 1, if (01100) then 000000000 else 000101110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
40 => '1' & '1' & "01100" & O"000" & O"056" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- SvPt <= BP;
-- L0428@0029 C000007F000000008000.save_bp:  SvPt <= BP;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 10, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
41 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "10" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceBP();
-- L0429@002A C1CDE6FF000000000000.bp_done:  traceBP();
--  nWR = 1, nRD = 1, if (00000) then 111001101 else 111001101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
42 => '1' & '1' & "00000" & O"715" & O"715" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0430@002B FE0004FF000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
43 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 11;
-- L0435@002C C1DAED0B020000000000.  trace(from_microcode), directByte = 11;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0001011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
44 => '1' & '1' & "00000" & O"732" & O"732" & "0001011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if SVP_IN_INPLINE then save_bp;
-- L0436@002D DA29007F000000000000.  if SVP_IN_INPLINE then save_bp;
--  nWR = 1, nRD = 1, if (01101) then 000101001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
45 => '1' & '1' & "01101" & O"051" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- SvPt <= BP, BP <= SvPt, goto bp_done;
-- L0437@002E FE00157F000000028000.ptr_exc:  SvPt <= BP, BP <= SvPt, if false then continue else bp_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000101010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 010, SvPt <= 10, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
46 => '1' & '1' & "11111" & O"000" & O"052" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"2" & "10" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 36;
-- L0442@002F C1DAED24020000000000.  trace(from_microcode), directByte = 36;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0100100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
47 => '1' & '1' & "00000" & O"732" & O"732" & "0100100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0443@0030 E383007F000000000800.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110000011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 01, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
48 => '1' & '1' & "10001" & O"603" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "01" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_vars, ExpStack <= pop1;
-- L0444@0031 C000007F1800E0000000.  T <= from_vars, ExpStack <= pop1;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 111, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
49 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"7" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, goto fetch;
-- L0445@0032 FE0004FF000080000000.  ExpStack <= push_TWord, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
50 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 37;
-- L0450@0033 C1DAED25020000000000.  trace(from_microcode), directByte = 37;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0100101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
51 => '1' & '1' & "00000" & O"732" & O"732" & "0100101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0451@0034 E383007F000000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110000011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
52 => '1' & '1' & "10001" & O"603" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, ExpStack <= pop2;
-- L0452@0035 C000007F2000C0000000.  T <= ExpStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
53 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0453@0036 E383007F000000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110000011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
54 => '1' & '1' & "10001" & O"603" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- Vars <= indexFromExpStack, ExpStack <= pop1;
-- L0454@0037 C000007F0000E0000800.  Vars <= indexFromExpStack, ExpStack <= pop1;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 111, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 01, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
55 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"7" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "01" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- Vars <= T, goto fetch;
-- L0455@0038 FE0004FF000000001000.  Vars <= T, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 10, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
56 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "10" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 47;
-- L0460@0039 C1DAED2F020000000000.  trace(from_microcode), directByte = 47;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0101111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
57 => '1' & '1' & "00000" & O"732" & O"732" & "0101111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if IS_RUNMODE then next else INTERNAL_ERR;
-- L0461@003A F600C0FF000000000000.  if IS_RUNMODE then next else INTERNAL_ERR;
--  nWR = 1, nRD = 1, if (11011) then 000000000 else 110000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
58 => '1' & '1' & "11011" & O"000" & O"601" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_FULL then BSTACK_ERR;
-- L0462@003B E187007F000000000000.  if STACK_IS_FULL then BSTACK_ERR;
--  nWR = 1, nRD = 1, if (10000) then 110000111 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
59 => '1' & '1' & "10000" & O"607" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BasStack <= push_Lino_and_BP, goto fetch;
-- L0463@003C FE0004FF000300000000.  BasStack <= push_Lino_and_BP, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 11, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
60 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "11" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 48;
-- L0468@003D C1DAED30020000000000.  trace(from_microcode), directByte = 48;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0110000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
61 => '1' & '1' & "00000" & O"732" & O"732" & "0110000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if IS_RUNMODE then next else INTERNAL_ERR;
-- L0469@003E F600C0FF000000000000.  if IS_RUNMODE then next else INTERNAL_ERR;
--  nWR = 1, nRD = 1, if (11011) then 000000000 else 110000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
62 => '1' & '1' & "11011" & O"000" & O"601" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= BasStack_Hi,if STACK_IS_EMPTY then BSTACK_ERR;
-- L0470@003F E387007FA00000000000.  T <= BasStack_Hi,if STACK_IS_EMPTY then BSTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110000111 else 000000000, directByte = 1111111, T <= 10100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
63 => '1' & '1' & "10001" & O"607" & O"000" & "1111111" & "10100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, T <= BasStack_Lo;
-- L0471@0040 C000007FA80000000020.  Lino <= T, T <= BasStack_Lo;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
64 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & '0',

-- BP <= T, BasStack <= pop, goto fetch;
-- L0472@0041 FE0004FF000200060000.  BP <= T, BasStack <= pop, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 10, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
65 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "10" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 45;
-- L0477@0042 C1DAED2D020000000000.  trace(from_microcode), directByte = 45;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0101101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
66 => '1' & '1' & "00000" & O"732" & O"732" & "0101101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= XQhere, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0478@0043 E383007F004000000000.  IL_PC <= XQhere, if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110000011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 001, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
67 => '1' & '1' & "10001" & O"603" & O"000" & "1111111" & "00000" & "00" & O"1" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0479@0044 C000007F0000C00000C0.  alu <= R_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
68 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_R;
-- L0480@0045 C000007F880000000000.  T <= from_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
69 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, if R_IS_ZERO then NOPROG_ERR;
-- L0481@0046 E779007F000000000020.  Lino <= T, if R_IS_ZERO then NOPROG_ERR;
--  nWR = 1, nRD = 1, if (10011) then 101111001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
70 => '1' & '1' & "10011" & O"571" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & '0',

-- traceLino;
-- L0482@0047 C1DAED33020000000000.  trace(from_microcode), directByte = 51;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0110011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
71 => '1' & '1' & "00000" & O"732" & O"732" & "0110011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if CACHE_VALID then go_cvalid;
-- L0483@0048 FA4B007F000000000000.  if CACHE_VALID then go_cvalid;
--  nWR = 1, nRD = 1, if (11101) then 001001011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
72 => '1' & '1' & "11101" & O"113" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- findLino();
-- L0485@0049 C04F27FF000000000000.  findLino();
--  nWR = 1, nRD = 1, if (00000) then 001001111 else 001001111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
73 => '1' & '1' & "00000" & O"117" & O"117" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= cache_store, goto fetch;
-- L0486@004A FE0004FF000000000740.  alu <= cache_store, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 11101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
74 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "11101" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= Cache_Data, if CACHE_HIT then next else go_cmiss;
-- L0488@004B FC0026FFB00000000000.go_cvalid:  T <= Cache_Data, if CACHE_HIT then next else go_cmiss;
--  nWR = 1, nRD = 1, if (11110) then 000000000 else 001001101, directByte = 1111111, T <= 10110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
75 => '1' & '1' & "11110" & O"000" & O"115" & "1111111" & "10110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= T, goto fetch;
-- L0490@004C FE0004FF000000060000.  BP <= T, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
76 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- findLino();
-- L0493@004D C04F27FF000000000000.go_cmiss:  findLino();
--  nWR = 1, nRD = 1, if (00000) then 001001111 else 001001111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
77 => '1' & '1' & "00000" & O"117" & O"117" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0494@004E FE0004FF000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
78 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= Prog_start;
-- L0496@004F C000007F700000000000.findLino:  T <= Prog_start;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
79 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= reset1, readCore(T);
-- L0497@0050 C1C4E27F000003000080.go_search:  alu <= reset1, readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111000100 else 111000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
80 => '1' & '1' & "00000" & O"704" & O"704" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00010" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= Rx256_plus_MDR, T <= inc;
-- L0498@0051 C000007F580000000440.  alu <= Rx256_plus_MDR, T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
81 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromLino, readCore(T);
-- L0499@0052 C1C4E27F000003000500.  alu <= S_fromLino, readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111000100 else 111000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
82 => '1' & '1' & "00000" & O"704" & O"704" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= Rx256_plus_MDR, T <= inc;
-- L0500@0053 C000007F580000000440.  alu <= Rx256_plus_MDR, T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
83 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_minus_R, if R_IS_ZERO then stop_run;
-- L0501@0054 E720007F000000000180.  alu <= S_minus_R, if R_IS_ZERO then stop_run;
--  nWR = 1, nRD = 1, if (10011) then 100100000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
84 => '1' & '1' & "10011" & O"440" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= T, if Y_ZERO then return;
-- L0502@0055 E802007F000000060000.  BP <= T, if Y_ZERO then return;
--  nWR = 1, nRD = 1, if (10100) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
85 => '1' & '1' & "10100" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- findNextCR(same);
-- L0503@0056 C19ACD7F000000000000.  findNextCR(same);
--  nWR = 1, nRD = 1, if (00000) then 110011010 else 110011010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
86 => '1' & '1' & "00000" & O"632" & O"632" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto go_search;
-- L0504@0057 FE00287F580000000000.  T <= inc, if false then continue else go_search;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 001010000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
87 => '1' & '1' & "11111" & O"000" & O"120" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 25;
-- L0509@0058 C1DAED19020000000000.  trace(from_microcode), directByte = 25;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0011001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
88 => '1' & '1' & "00000" & O"732" & O"732" & "0011001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0510@0059 E383007F0000000000C0.  alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110000011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
89 => '1' & '1' & "10001" & O"603" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= pop2;
-- L0511@005A C000007F0000C0000000.  ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
90 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= neg_R, if ALU_READY then alu_done else repeat;
-- L0512@005B EC5F00FF0000000001C0.  alu <= neg_R, if ALU_READY then alu_done else repeat;
--  nWR = 1, nRD = 1, if (10110) then 001011111 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
91 => '1' & '1' & "10110" & O"137" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00111" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 22;
-- L0517@005C C1DAED16020000000000.  trace(from_microcode), directByte = 22;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0010110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
92 => '1' & '1' & "00000" & O"732" & O"732" & "0010110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- pullRS();
-- L0518@005D C1A5D2FF000000000000.  pullRS();
--  nWR = 1, nRD = 1, if (00000) then 110100101 else 110100101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
93 => '1' & '1' & "00000" & O"645" & O"645" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_plus_R, if ALU_READY then next else repeat;
-- L0519@005E EC0000FF000000000140.  alu <= S_plus_R, if ALU_READY then next else repeat;
--  nWR = 1, nRD = 1, if (10110) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
94 => '1' & '1' & "10110" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00101" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceALU();
-- L0520@005F C1D3E9FF000000000000.alu_done:  traceALU();
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
95 => '1' & '1' & "00000" & O"723" & O"723" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
-- L0521@0060 EF7D007F280000000000.  T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
--  nWR = 1, nRD = 1, if (10111) then 101111101 else 000000000, directByte = 1111111, T <= 00101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
96 => '1' & '1' & "10111" & O"575" & O"000" & "1111111" & "00101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, goto fetch;
-- L0522@0061 FE0004FF000080000000.  ExpStack <= push_TWord, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
97 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 23;
-- L0527@0062 C1DAED17020000000000.  trace(from_microcode), directByte = 23;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0010111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
98 => '1' & '1' & "00000" & O"732" & O"732" & "0010111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- pullRS();
-- L0528@0063 C1A5D2FF000000000000.  pullRS();
--  nWR = 1, nRD = 1, if (00000) then 110100101 else 110100101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
99 => '1' & '1' & "00000" & O"645" & O"645" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_minus_R, if ALU_READY then alu_done else repeat;
-- L0529@0064 EC5F00FF000000000180.  alu <= S_minus_R, if ALU_READY then alu_done else repeat;
--  nWR = 1, nRD = 1, if (10110) then 001011111 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
100 => '1' & '1' & "10110" & O"137" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 24;
-- L0534@0065 C1DAED18020000000000.  trace(from_microcode), directByte = 24;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0011000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
101 => '1' & '1' & "00000" & O"732" & O"732" & "0011000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- pullRS();
-- L0535@0066 C1A5D2FF000000000000.  pullRS();
--  nWR = 1, nRD = 1, if (00000) then 110100101 else 110100101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
102 => '1' & '1' & "00000" & O"645" & O"645" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_mul_R, if ALU_READY then alu_done else repeat;
-- L0536@0067 EC5F00FF000000000200.  alu <= S_mul_R, if ALU_READY then alu_done else repeat;
--  nWR = 1, nRD = 1, if (10110) then 001011111 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 01000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
103 => '1' & '1' & "10110" & O"137" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "01000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 35;
-- L0541@0068 C1DAED23020000000000.  trace(from_microcode), directByte = 35;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0100011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
104 => '1' & '1' & "00000" & O"732" & O"732" & "0100011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- pullRS();
-- L0542@0069 C1A5D2FF000000000000.  pullRS();
--  nWR = 1, nRD = 1, if (00000) then 110100101 else 110100101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
105 => '1' & '1' & "00000" & O"645" & O"645" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
-- L0543@006A E77B007F000000000300.  alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
--  nWR = 1, nRD = 1, if (10011) then 101111011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 01100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
106 => '1' & '1' & "10011" & O"573" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "01100" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= div_shift;
-- L0544@006B C000007F000000000340.div_loop:  alu <= div_shift;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 01101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
107 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "01101" & '0' & '0' & '0' & '0' & '0' & '0',

-- if ALU_READY then div_done;
-- L0545@006C EC6E007F000000000000.  if ALU_READY then div_done;
--  nWR = 1, nRD = 1, if (10110) then 001101110 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
108 => '1' & '1' & "10110" & O"156" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= div_subset, goto div_loop;
-- L0546@006D FE0035FF000000000380.  alu <= div_subset, if false then continue else div_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 001101011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 01110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
109 => '1' & '1' & "11111" & O"000" & O"153" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "01110" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= div_end, goto alu_done;
-- L0547@006E FE002FFF0000000003C0.div_done:  alu <= div_end, if false then continue else alu_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 001011111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 01111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
110 => '1' & '1' & "11111" & O"000" & O"137" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "01111" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 46;
-- L0552@006F C1DAED2E020000000000.  trace(from_microcode), directByte = 46;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0101110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
111 => '1' & '1' & "00000" & O"732" & O"732" & "0101110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0553@0070 C000007F0000C00000C0.  alu <= R_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
112 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TByte;
-- L0554@0071 C000007F0000A0000000.  ExpStack <= push_TByte;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 101, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
113 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"5" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, ExpStack <= pop2;
-- L0555@0072 C000007F2000C0000000.  T <= ExpStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
114 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromStack, ExpStack <= pop2;
-- L0556@0073 C000007F0000C0000100.  alu <= S_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
115 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00100" & '0' & '0' & '0' & '0' & '0' & '0',

-- if CP_SKIP then next else fetch;
-- L0557@0074 E80004FF000000000000.  if CP_SKIP then next else fetch;
--  nWR = 1, nRD = 1, if (10100) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
116 => '1' & '1' & "10100" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= inc, goto fetch;
-- L0558@0075 FE0004FF008000000000.  IL_PC <= inc, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
117 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"2" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 39;
-- L0563@0076 C1DAED27020000000000.  trace(from_microcode), directByte = 39;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0100111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
118 => '1' & '1' & "00000" & O"732" & O"732" & "0100111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= T, if IS_RUNMODE then next else fetch;
-- L0564@0077 F60004FF00C000000000.  IL_PC <= T, if IS_RUNMODE then next else fetch;
--  nWR = 1, nRD = 1, if (11011) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 011, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
119 => '1' & '1' & "11011" & O"000" & O"011" & "1111111" & "00000" & "00" & O"3" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- findNextCR(BP);
-- L0565@0078 C19ACD7F680000000000.nx_run:  findNextCR(BP);
--  nWR = 1, nRD = 1, if (00000) then 110011010 else 110011010, directByte = 1111111, T <= 01101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
120 => '1' & '1' & "00000" & O"632" & O"632" & "1111111" & "01101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= inc;
-- L0566@0079 C000007F580000000000.  T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
121 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= T;
-- L0567@007A C000007F000000060000.  BP <= T;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
122 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore16(BP);
-- L0568@007B C19ECF7F680000000000.  readCore16(BP);
--  nWR = 1, nRD = 1, if (00000) then 110011110 else 110011110, directByte = 1111111, T <= 01101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
123 => '1' & '1' & "00000" & O"636" & O"636" & "1111111" & "01101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= T, T <= from_R, if R_IS_ZERO then nx_err;
-- L0569@007C E680007F880000060000.  BP <= T, T <= from_R, if R_IS_ZERO then nx_err;
--  nWR = 1, nRD = 1, if (10011) then 010000000 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
124 => '1' & '1' & "10011" & O"200" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, IL_PC <= XQhere;
-- L0570@007D C000007F004000000020.  Lino <= T, IL_PC <= XQhere;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 001, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
125 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"1" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & '0',

-- traceBP();
-- L0572@007E C1CDE6FF000000000000.  traceBP();
--  nWR = 1, nRD = 1, if (00000) then 111001101 else 111001101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
126 => '1' & '1' & "00000" & O"715" & O"715" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if KBD_BREAK then BREAK else fetch;
-- L0573@007F C97304FF000000000000.  if KBD_BREAK then BREAK else fetch;
--  nWR = 1, nRD = 1, if (00100) then 101110011 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
127 => '1' & '1' & "00100" & O"563" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = BEEP, outChar(from_microcode);
-- L0574@0080 C1C1E087000008000000.nx_err:  directByte = 0x07, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 0000111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
128 => '1' & '1' & "00000" & O"701" & O"701" & "0000111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto stop_run;
-- L0575@0081 FE00907F000000000000.  if false then continue else stop_run;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 100100000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
129 => '1' & '1' & "11111" & O"000" & O"440" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 41;
-- L0580@0082 C1DAED29020000000000.  trace(from_microcode), directByte = 41;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0101001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
130 => '1' & '1' & "00000" & O"732" & O"732" & "0101001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= reset1, if IS_RUNMODE then badop;
-- L0581@0083 F60F007F000000000080.  alu <= reset1, if IS_RUNMODE then badop;
--  nWR = 1, nRD = 1, if (11011) then 000001111 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
131 => '1' & '1' & "11011" & O"017" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00010" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_R, if STACK_IS_EMPTY then ls_parchk;
-- L0582@0084 E287007F880000000000.ls_parload:  T <= from_R, if STACK_IS_EMPTY then ls_parchk;
--  nWR = 1, nRD = 1, if (10001) then 010000111 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
132 => '1' & '1' & "10001" & O"207" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromT;
-- L0583@0085 C000007F000000000480.  alu <= S_fromT;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
133 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10010" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2, goto ls_parload;
-- L0584@0086 FE00427F0000C00000C0.  alu <= R_fromStack, ExpStack <= pop2, if false then continue else ls_parload;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
134 => '1' & '1' & "11111" & O"000" & O"204" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= ls_load;
-- L0585@0087 C000007F000000000600.ls_parchk:  alu <= ls_load;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 11000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
135 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "11000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if LS_PARAMS_OK then next else SYNTAX_ERR;
-- L0586@0088 EC00BFFF000000000000.  if LS_PARAMS_OK then next else SYNTAX_ERR;
--  nWR = 1, nRD = 1, if (10110) then 000000000 else 101111111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
136 => '1' & '1' & "10110" & O"000" & O"577" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= Prog_start;
-- L0587@0089 C000007F700000000000.ls_start:  T <= Prog_start;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
137 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if CHARIN_READY then next else ls_continue;
-- L0588@008A D60047FF000000000000.ls_lineloop:  if CHARIN_READY then next else ls_continue;
--  nWR = 1, nRD = 1, if (01011) then 000000000 else 010001111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
138 => '1' & '1' & "01011" & O"000" & O"217" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if KBD_BREAK then BREAK;
-- L0589@008B C973007F000000000000.  if KBD_BREAK then BREAK;
--  nWR = 1, nRD = 1, if (00100) then 101110011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
139 => '1' & '1' & "00100" & O"563" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_continue;
-- L0590@008C D40047A0000000002000.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_continue;
--  nWR = 1, nRD = 1, if (01010) then 000000000 else 010001111, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
140 => '1' & '1' & "01010" & O"000" & O"217" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if CHARIN_READY then next else repeat;
-- L0591@008D D60000FF000000000000.ls_pause:  if CHARIN_READY then next else repeat;
--  nWR = 1, nRD = 1, if (01011) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
141 => '1' & '1' & "01011" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
-- L0592@008E D40046A0000000002000.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
--  nWR = 1, nRD = 1, if (01010) then 000000000 else 010001101, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
142 => '1' & '1' & "01010" & O"000" & O"215" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, readCore16(same);
-- L0593@008F C19ECF7F000000002000.ls_continue:  gotChar = 1, readCore16(same);
--  nWR = 1, nRD = 1, if (00000) then 110011110 else 110011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
143 => '1' & '1' & "00000" & O"636" & O"636" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= ls_check, if R_IS_ZERO then fetch;
-- L0594@0090 E609007F000000000640.  alu <= ls_check, if R_IS_ZERO then fetch;
--  nWR = 1, nRD = 1, if (10011) then 000001001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 11001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
144 => '1' & '1' & "10011" & O"011" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "11001" & '0' & '0' & '0' & '0' & '0' & '0',

-- if LS_PASSED_END then fetch;
-- L0595@0091 EE09007F000000000000.  if LS_PASSED_END then fetch;
--  nWR = 1, nRD = 1, if (10111) then 000001001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
145 => '1' & '1' & "10111" & O"011" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if LS_IN_RANGE then next else ls_nextLine;
-- L0596@0092 F0004DFF000000000000.  if LS_IN_RANGE then next else ls_nextLine;
--  nWR = 1, nRD = 1, if (11000) then 000000000 else 010011011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
146 => '1' & '1' & "11000" & O"000" & O"233" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- printDecR(Y_save);
-- L0597@0093 C1AAD57F000000000680.  printDecR(Y_save);
--  nWR = 1, nRD = 1, if (00000) then 110101010 else 110101010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 11010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
147 => '1' & '1' & "00000" & O"652" & O"652" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "11010" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= Y_recall, directByte = ' ', outChar(from_microcode);
-- L0598@0094 C1C1E0A00000080006C0.  alu <= Y_recall, directByte = ' ', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 11011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
148 => '1' & '1' & "00000" & O"701" & O"701" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "11011" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore(T);
-- L0599@0095 C1C4E27F000003000000.ls_charloop:  readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111000100 else 111000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
149 => '1' & '1' & "00000" & O"704" & O"704" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outChar(from_MDR);
-- L0600@0096 C1C1E0FF000010000000.  outChar(from_MDR);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 100, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
150 => '1' & '1' & "00000" & O"701" & O"701" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"4" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if MDR_EQU_DB then next else ls_next;
-- L0601@0097 CA004D0D000000000000.ls_nextchar:  directByte = 0x0D, if MDR_EQU_DB then next else ls_next;
--  nWR = 1, nRD = 1, if (00101) then 000000000 else 010011010, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
151 => '1' & '1' & "00101" & O"000" & O"232" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = LF, outChar(from_microcode);
-- L0602@0098 C1C1E08A000008000000.  directByte = 0x0A, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 0001010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
152 => '1' & '1' & "00000" & O"701" & O"701" & "0001010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto ls_lineloop;
-- L0603@0099 FE00457F580000000000.  T <= inc, if false then continue else ls_lineloop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010001010, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
153 => '1' & '1' & "11111" & O"000" & O"212" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto ls_charloop;
-- L0604@009A FE004AFF580000000000.ls_next:  T <= inc, if false then continue else ls_charloop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010010101, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
154 => '1' & '1' & "11111" & O"000" & O"225" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- findNextCR(same);
-- L0605@009B C19ACD7F000000000000.ls_nextLine:  findNextCR(same);
--  nWR = 1, nRD = 1, if (00000) then 110011010 else 110011010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
155 => '1' & '1' & "00000" & O"632" & O"632" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto ls_lineloop;
-- L0606@009C FE00457F580000000000.  T <= inc, if false then continue else ls_lineloop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010001010, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
156 => '1' & '1' & "11111" & O"000" & O"212" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 26;
-- L0611@009D C1DAED1A020000000000.  trace(from_microcode), directByte = 26;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0011010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
157 => '1' & '1' & "00000" & O"732" & O"732" & "0011010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0612@009E E383007F000000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110000011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
158 => '1' & '1' & "10001" & O"603" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- printDec();
-- L0613@009F C1A9D4FF000000000000.  printDec();
--  nWR = 1, nRD = 1, if (00000) then 110101001 else 110101001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
159 => '1' & '1' & "00000" & O"651" & O"651" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0614@00A0 FE0004FF000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
160 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 18;
-- L0619@00A1 C1DAED12020000000000.  trace(from_microcode), directByte = 18;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0010010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
161 => '1' & '1' & "00000" & O"732" & O"732" & "0010010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= inc, readCore(BP);
-- L0620@00A2 C1C4E27F000002030000.pq_loop:  BP <= inc, readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 111000100 else 111000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
162 => '1' & '1' & "00000" & O"704" & O"704" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"3" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = '"', if MDR_EQU_DB then pq_done;
-- L0621@00A3 CAA70022000000000000.  directByte = '"', if MDR_EQU_DB then pq_done;
--  nWR = 1, nRD = 1, if (00101) then 010100111 else 000000000, directByte = 0100010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
163 => '1' & '1' & "00101" & O"247" & O"000" & "0100010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outChar(from_MDR);
-- L0622@00A4 C1C1E0FF000010000000.  outChar(from_MDR);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 100, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
164 => '1' & '1' & "00000" & O"701" & O"701" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"4" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 3;
-- L0623@00A5 C1DAED03020000000000.  trace(from_microcode), directByte = 3;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0000011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
165 => '1' & '1' & "00000" & O"732" & O"732" & "0000011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if MDR_EQU_DB then INTERNAL_ERR else pq_loop;
-- L0624@00A6 CB81510D000000000000.  directByte = 0x0D, if MDR_EQU_DB then INTERNAL_ERR else pq_loop;
--  nWR = 1, nRD = 1, if (00101) then 110000001 else 010100010, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
166 => '1' & '1' & "00101" & O"601" & O"242" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceBP();
-- L0625@00A7 C1CDE6FF000000000000.pq_done:  traceBP();
--  nWR = 1, nRD = 1, if (00000) then 111001101 else 111001101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
167 => '1' & '1' & "00000" & O"715" & O"715" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0626@00A8 FE0004FF000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
168 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 27;
-- L0631@00A9 C1DAED1B020000000000.  trace(from_microcode), directByte = 27;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0011011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
169 => '1' & '1' & "00000" & O"732" & O"732" & "0011011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if AT_TAB then fetch;
-- L0632@00AA F209007F000000000000.pt_loop:  if AT_TAB then fetch;
--  nWR = 1, nRD = 1, if (11001) then 000001001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
170 => '1' & '1' & "11001" & O"011" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', outChar(from_microcode);
-- L0633@00AB C1C1E0A0000008000000.  directByte = ' ', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
171 => '1' & '1' & "00000" & O"701" & O"701" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto pt_loop;
-- L0634@00AC FE00557F000000000000.  if false then continue else pt_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010101010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
172 => '1' & '1' & "11111" & O"000" & O"252" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 6;
-- L0639@00AD C1DAED06020000000000.  trace(from_microcode), directByte = 6;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0000110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
173 => '1' & '1' & "00000" & O"732" & O"732" & "0000110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outCRLF();
-- L0640@00AE C1BFDFFF000000000000.crlf_fetch:  outCRLF();
--  nWR = 1, nRD = 1, if (00000) then 110111111 else 110111111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
174 => '1' & '1' & "00000" & O"677" & O"677" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0641@00AF FE0004FF000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
175 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 5;
-- L0646@00B0 C1DAED05020000000000.  trace(from_microcode), directByte = 5;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0000101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
176 => '1' & '1' & "00000" & O"732" & O"732" & "0000101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outChar(from_interpreter);
-- L0647@00B1 C1C1E0FF000004000000.pc_loop:  outChar(from_interpreter);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 001, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
177 => '1' & '1' & "00000" & O"701" & O"701" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"1" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 3;
-- L0648@00B2 C1DAED03020000000000.  trace(from_microcode), directByte = 3;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0000011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
178 => '1' & '1' & "00000" & O"732" & O"732" & "0000011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
-- L0649@00B3 C20958FF008000000000.  IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
--  nWR = 1, nRD = 1, if (00001) then 000001001 else 010110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
179 => '1' & '1' & "00001" & O"011" & O"261" & "1111111" & "00000" & "00" & O"2" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 8;
-- L0654@00B4 C1DAED08020000000000.  trace(from_microcode), directByte = 8;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0001000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
180 => '1' & '1' & "00000" & O"732" & O"732" & "0001000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- InlEnd <= InLine_start;
-- L0655@00B5 C000007F000000080000.gl:  InlEnd <= InLine_start;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
181 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "01" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if CHARIN_READY then next else repeat;
-- L0656@00B6 D60000FF000000000000.gl_loop:  if CHARIN_READY then next else repeat;
--  nWR = 1, nRD = 1, if (01011) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
182 => '1' & '1' & "01011" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if KBD_BREAK then next else gl_char;
-- L0657@00B7 C8005CFF000000000000.  if KBD_BREAK then next else gl_char;
--  nWR = 1, nRD = 1, if (00100) then 000000000 else 010111001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
183 => '1' & '1' & "00100" & O"000" & O"271" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
-- L0658@00B8 F72062FF000000002000.  gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
--  nWR = 1, nRD = 1, if (11011) then 100100000 else 011000101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
184 => '1' & '1' & "11011" & O"440" & O"305" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if CHARIN_PRINTABLE then gl_print;
-- L0659@00B9 D2C0007F000000000000.gl_char:  if CHARIN_PRINTABLE then gl_print;
--  nWR = 1, nRD = 1, if (01001) then 011000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
185 => '1' & '1' & "01001" & O"300" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if CHARIN_EQU_DB then gl_cr;
-- L0660@00BA D4CB000D000000000000.  directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
--  nWR = 1, nRD = 1, if (01010) then 011001011 else 000000000, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
186 => '1' & '1' & "01010" & O"313" & O"000" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = BACKSPACE, if CHARIN_EQU_DB then gl_bs;
-- L0661@00BB D4C80008000000000000.  directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
--  nWR = 1, nRD = 1, if (01010) then 011001000 else 000000000, directByte = 0001000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
187 => '1' & '1' & "01010" & O"310" & O"000" & "0001000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = ESC, if CHARIN_EQU_DB then gl_esc;
-- L0662@00BC D4C5001B000000000000.  directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
--  nWR = 1, nRD = 1, if (01010) then 011000101 else 000000000, directByte = 0011011, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
188 => '1' & '1' & "01010" & O"305" & O"000" & "0011011" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = TAB, if CHARIN_EQU_DB then gl_tab;
-- L0663@00BD D4D00009000000000000.  directByte = 0x09, if CHARIN_EQU_DB then gl_tab;
--  nWR = 1, nRD = 1, if (01010) then 011010000 else 000000000, directByte = 0001001, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
189 => '1' & '1' & "01010" & O"320" & O"000" & "0001001" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = BEEP, outChar(from_microcode);
-- L0665@00BE C1C1E087000008000000.gl_ignore:  directByte = 0x07, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 0000111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
190 => '1' & '1' & "00000" & O"701" & O"701" & "0000111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, goto gl_loop;
-- L0666@00BF FE005B7F000000002000.  gotChar = 1, if false then continue else gl_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010110110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
191 => '1' & '1' & "11111" & O"000" & O"266" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if INLEND_MAX then gl_ignore;
-- L0668@00C0 CEBE007F000000000000.gl_print:  if INLEND_MAX then gl_ignore;
--  nWR = 1, nRD = 1, if (00111) then 010111110 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
192 => '1' & '1' & "00111" & O"276" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outChar(from_charin);
-- L0669@00C1 C1C1E0FF00000C000000.  outChar(from_charin);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 011, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
193 => '1' & '1' & "00000" & O"701" & O"701" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"3" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- L0670@00C2 C1C3E1FF000001700000.  writeCore(InlEnd, CHARIN), InlEnd <= inc;
--  nWR = 1, nRD = 1, if (00000) then 111000011 else 111000011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 10, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
194 => '1' & '1' & "00000" & O"703" & O"703" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"3" & "10" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(InlEnd, zero);
-- L0671@00C3 C1C3E1FF000001400000.gl_write0:  writeCore(InlEnd, zero);
--  nWR = 1, nRD = 1, if (00000) then 111000011 else 111000011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
195 => '1' & '1' & "00000" & O"703" & O"703" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"2" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, goto gl_loop;
-- L0672@00C4 FE005B7F000000002000.  gotChar = 1, if false then continue else gl_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010110110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
196 => '1' & '1' & "11111" & O"000" & O"266" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = BEEP, outChar(from_microcode);
-- L0674@00C5 C1C1E087000008000000.gl_esc:  directByte = 0x07, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 0000111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
197 => '1' & '1' & "00000" & O"701" & O"701" & "0000111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outCRLF();
-- L0675@00C6 C1BFDFFF000000000000.  outCRLF();
--  nWR = 1, nRD = 1, if (00000) then 110111111 else 110111111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
198 => '1' & '1' & "00000" & O"677" & O"677" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, goto gl;
-- L0676@00C7 FE005AFF000000002000.  gotChar = 1, if false then continue else gl;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010110101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
199 => '1' & '1' & "11111" & O"000" & O"265" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if INLEND_MIN then gl_ignore;
-- L0678@00C8 D0BE007F000000000000.gl_bs:  if INLEND_MIN then gl_ignore;
--  nWR = 1, nRD = 1, if (01000) then 010111110 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
200 => '1' & '1' & "01000" & O"276" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = BACKSPACE, outChar(from_microcode);
-- L0679@00C9 C1C1E088000008000000.  directByte = 0x08, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 0001000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
201 => '1' & '1' & "00000" & O"701" & O"701" & "0001000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- InlEnd <= dec, goto gl_write0;
-- L0680@00CA FE0061FF000000180000.  InlEnd <= dec, if false then continue else gl_write0;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 011000011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 11, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
202 => '1' & '1' & "11111" & O"000" & O"303" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "11" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- L0682@00CB C1C3E1FF000001700000.gl_cr:  writeCore(InlEnd, CHARIN), InlEnd <= inc;
--  nWR = 1, nRD = 1, if (00000) then 111000011 else 111000011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 10, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
203 => '1' & '1' & "00000" & O"703" & O"703" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"3" & "10" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(InlEnd, zero);
-- L0683@00CC C1C3E1FF000001400000.  writeCore(InlEnd, zero);
--  nWR = 1, nRD = 1, if (00000) then 111000011 else 111000011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
204 => '1' & '1' & "00000" & O"703" & O"703" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"2" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- dump_input();
-- L0684@00CD C1C6E37F000000000000.  dump_input();
--  nWR = 1, nRD = 1, if (00000) then 111000110 else 111000110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
205 => '1' & '1' & "00000" & O"706" & O"706" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outCRLF();
-- L0685@00CE C1BFDFFF000000000000.  outCRLF();
--  nWR = 1, nRD = 1, if (00000) then 110111111 else 110111111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
206 => '1' & '1' & "00000" & O"677" & O"677" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, BP <= Inline_start, goto fetch;
-- L0686@00CF FE0004FF000000012000.  gotChar = 1, BP <= Inline_start, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 001, SvPt <= 00, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
207 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"1" & "00" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if INLEND_MAX then gl_ignore;
-- L0688@00D0 CEBE007F000000000000.gl_tab:  if INLEND_MAX then gl_ignore;
--  nWR = 1, nRD = 1, if (00111) then 010111110 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
208 => '1' & '1' & "00111" & O"276" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if AT_TAB then gl_write0;
-- L0689@00D1 F2C3007F000000000000.gl_tabloop:  if AT_TAB then gl_write0;
--  nWR = 1, nRD = 1, if (11001) then 011000011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
209 => '1' & '1' & "11001" & O"303" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', outChar(from_microcode);
-- L0690@00D2 C1C1E0A0000008000000.  directByte = ' ', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
210 => '1' & '1' & "00000" & O"701" & O"701" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', writeCore(InlEnd, from_microcode), InlEnd <= inc;
-- L0691@00D3 C1C3E1A0000001F00000.  directByte = ' ', writeCore(InlEnd, from_microcode), InlEnd <= inc;
--  nWR = 1, nRD = 1, if (00000) then 111000011 else 111000011, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 111, InlEnd <= 10, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
211 => '1' & '1' & "00000" & O"703" & O"703" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"7" & "10" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto gl_tabloop;
-- L0692@00D4 FE0068FF000000000000.  if false then continue else gl_tabloop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 011010001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
212 => '1' & '1' & "11111" & O"000" & O"321" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 40;
-- L0697@00D5 C1DAED28020000000000.  trace(from_microcode), directByte = 40;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0101000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
213 => '1' & '1' & "00000" & O"732" & O"732" & "0101000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromStack, ExpStack <= pop2;
-- L0698@00D6 C000007F0000C0000100.  alu <= S_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
214 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00100" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_plus_R;
-- L0699@00D7 C000007F000000000140.  alu <= S_plus_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
215 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00101" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
-- L0700@00D8 EB7F007F280000000000.  T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
--  nWR = 1, nRD = 1, if (10101) then 101111111 else 000000000, directByte = 1111111, T <= 00101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
216 => '1' & '1' & "10101" & O"577" & O"000" & "1111111" & "00101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, if Y_ZERO then SYNTAX_ERR;
-- L0701@00D9 E97F007F000000000020.  Lino <= T, if Y_ZERO then SYNTAX_ERR;
--  nWR = 1, nRD = 1, if (10100) then 101111111 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
217 => '1' & '1' & "10100" & O"577" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & '0',

-- traceALU();
-- L0702@00DA C1D3E9FF000000000000.  traceALU();
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
218 => '1' & '1' & "00000" & O"723" & O"723" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- skipSpaces();
-- L0704@00DB C1B8DC7F000000000000.  skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 110111000 else 110111000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
219 => '1' & '1' & "00000" & O"670" & O"670" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= BP;
-- L0705@00DC C000007F680000000000.  T <= BP;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
220 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BE <= T, readCore(T);
-- L0706@00DD C1C4E27F000003000010.il_findBE:  BE <= T, readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111000100 else 111000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 1, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
221 => '1' & '1' & "00000" & O"704" & O"704" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '1' & '0' & '0' & '0' & '0',

-- directByte = CR, if MDR_EQU_DB then il_fork;
-- L0707@00DE CAE0000D000000000000.  directByte = 0x0D, if MDR_EQU_DB then il_fork;
--  nWR = 1, nRD = 1, if (00101) then 011100000 else 000000000, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
222 => '1' & '1' & "00101" & O"340" & O"000" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto il_findBE;
-- L0708@00DF FE006EFF580000000000.  T <= inc, if false then continue else il_findBE;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 011011101, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
223 => '1' & '1' & "11111" & O"000" & O"335" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- scanProgram();
-- L0710@00E0 C104827F000000000000.il_fork:  scanProgram();
--  nWR = 1, nRD = 1, if (00000) then 100000100 else 100000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
224 => '1' & '1' & "00000" & O"404" & O"404" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if IMPLINE_EMPTY then next else changeLine;
-- L0711@00E1 D00073FF000000000000.  if IMPLINE_EMPTY then next else changeLine;
--  nWR = 1, nRD = 1, if (01000) then 000000000 else 011100111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
225 => '1' & '1' & "01000" & O"000" & O"347" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if R_IS_ZERO then WarmStart;
-- L0713@00E2 E606007F000000000000.deleteLine:  if R_IS_ZERO then WarmStart;
--  nWR = 1, nRD = 1, if (10011) then 000000110 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
226 => '1' & '1' & "10011" & O"006" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if Y_ZERO then next else WarmStart;
-- L0714@00E3 E800037F000000000000.  if Y_ZERO then next else WarmStart;
--  nWR = 1, nRD = 1, if (10100) then 000000000 else 000000110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
227 => '1' & '1' & "10100" & O"000" & O"006" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- findPrgEnd();
-- L0715@00E4 C0FD7EFF000000000000.  findPrgEnd();
--  nWR = 1, nRD = 1, if (00000) then 011111101 else 011111101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
228 => '1' & '1' & "00000" & O"375" & O"375" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- copyCore(copy_init_del);
-- L0716@00E5 C11188FF000000000540.  copyCore(copy_init_del);
--  nWR = 1, nRD = 1, if (00000) then 100010001 else 100010001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
229 => '1' & '1' & "00000" & O"421" & O"421" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10101" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto WarmStart;
-- L0717@00E6 FE00037F000000000000.  if false then continue else WarmStart;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000000110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
230 => '1' & '1' & "11111" & O"000" & O"006" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if R_IS_ZERO then appendLine;
-- L0719@00E7 E6F0007F000000000000.changeLine:  if R_IS_ZERO then appendLine;
--  nWR = 1, nRD = 1, if (10011) then 011110000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
231 => '1' & '1' & "10011" & O"360" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if Y_ZERO then next else insertLine;
-- L0720@00E8 E800767F000000000000.  if Y_ZERO then next else insertLine;
--  nWR = 1, nRD = 1, if (10100) then 000000000 else 011101100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
232 => '1' & '1' & "10100" & O"000" & O"354" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- findPrgEnd();
-- L0722@00E9 C0FD7EFF000000000000.replaceLine:  findPrgEnd();
--  nWR = 1, nRD = 1, if (00000) then 011111101 else 011111101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
233 => '1' & '1' & "00000" & O"375" & O"375" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- copyCore(copy_init_del);
-- L0723@00EA C11188FF000000000540.  copyCore(copy_init_del);
--  nWR = 1, nRD = 1, if (00000) then 100010001 else 100010001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
234 => '1' & '1' & "00000" & O"421" & O"421" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10101" & '0' & '0' & '0' & '0' & '0' & '0',

-- scanProgram();
-- L0724@00EB C104827F000000000000.  scanProgram();
--  nWR = 1, nRD = 1, if (00000) then 100000100 else 100000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
235 => '1' & '1' & "00000" & O"404" & O"404" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- findPrgEnd();
-- L0725@00EC C0FD7EFF000000000000.insertLine:  findPrgEnd();
--  nWR = 1, nRD = 1, if (00000) then 011111101 else 011111101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
236 => '1' & '1' & "00000" & O"375" & O"375" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- copyCore(copy_init_ins);
-- L0726@00ED C11188FF0000000005C0.  copyCore(copy_init_ins);
--  nWR = 1, nRD = 1, if (00000) then 100010001 else 100010001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
237 => '1' & '1' & "00000" & O"421" & O"421" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10111" & '0' & '0' & '0' & '0' & '0' & '0',

-- copyLine(LS);
-- L0727@00EE C0F47A7FB80000000000.ins_finish:  copyLine(LS);
--  nWR = 1, nRD = 1, if (00000) then 011110100 else 011110100, directByte = 1111111, T <= 10111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
238 => '1' & '1' & "00000" & O"364" & O"364" & "1111111" & "10111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto WarmStart;
-- L0728@00EF FE00037F000000000000.  if false then continue else WarmStart;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000000110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
239 => '1' & '1' & "11111" & O"000" & O"006" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= dec;
-- L0730@00F0 C000007F600000000000.appendLine:  T <= dec;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
240 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- copyLine(dec);
-- L0731@00F1 C0F47A7F600000000000.  copyLine(dec);
--  nWR = 1, nRD = 1, if (00000) then 011110100 else 011110100, directByte = 1111111, T <= 01100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
241 => '1' & '1' & "00000" & O"364" & O"364" & "1111111" & "01100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- write2Nulls(same);
-- L0732@00F2 C1A2D17F000000000000.  write2Nulls(same);
--  nWR = 1, nRD = 1, if (00000) then 110100010 else 110100010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
242 => '1' & '1' & "00000" & O"642" & O"642" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto WarmStart;
-- L0733@00F3 FE00037F000000000000.  if false then continue else WarmStart;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000000110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
243 => '1' & '1' & "11111" & O"000" & O"006" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromLino;
-- L0735@00F4 C000007F000000000500.copyLine:  alu <= S_fromLino;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
244 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, from_SHi);
-- L0736@00F5 C1C3E1FF000003A00000.  writeCore(T, from_SHi);
--  nWR = 1, nRD = 1, if (00000) then 111000011 else 111000011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 101, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
245 => '1' & '1' & "00000" & O"703" & O"703" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"5" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= inc;
-- L0737@00F6 C000007F580000000000.  T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
246 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, from_SLo);
-- L0738@00F7 C1C3E1FF000003C00000.  writeCore(T, from_SLo);
--  nWR = 1, nRD = 1, if (00000) then 111000011 else 111000011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 110, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
247 => '1' & '1' & "00000" & O"703" & O"703" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"6" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= inc;
-- L0739@00F8 C000007F580000000000.  T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
248 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore(BP);
-- L0740@00F9 C1C4E27F000002000000.app_loop:  readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 111000100 else 111000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
249 => '1' & '1' & "00000" & O"704" & O"704" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, same);
-- L0741@00FA C1C3E1FF000003000000.  writeCore(T, same);
--  nWR = 1, nRD = 1, if (00000) then 111000011 else 111000011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
250 => '1' & '1' & "00000" & O"703" & O"703" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= inc, T <= inc;
-- L0742@00FB C000007F580000030000.  BP <= inc, T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
251 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if MDR_EQU_DB then return else app_loop;
-- L0743@00FC CA027C8D000000000000.  directByte = 0x0D, if MDR_EQU_DB then return else app_loop;
--  nWR = 1, nRD = 1, if (00101) then 000000010 else 011111001, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
252 => '1' & '1' & "00101" & O"002" & O"371" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= Prog_start;
-- L0745@00FD C000007F700000000000.findPrgEnd:  T <= Prog_start;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
253 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore16(same);
-- L0746@00FE C19ECF7F000000000000.fpe_loop:  readCore16(same);
--  nWR = 1, nRD = 1, if (00000) then 110011110 else 110011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
254 => '1' & '1' & "00000" & O"636" & O"636" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if R_IS_ZERO then next else fpe_next;
-- L0747@00FF E600817F000000000000.  if R_IS_ZERO then next else fpe_next;
--  nWR = 1, nRD = 1, if (10011) then 000000000 else 100000010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
255 => '1' & '1' & "10011" & O"000" & O"402" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= dec;
-- L0748@0100 C000007F600000000000.  T <= dec;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
256 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- PrgEnd <= T, back;
-- L0749@0101 C002007F000000000002.  PrgEnd <= T, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 1, dummy = 0;
257 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '1' & '0',

-- findNextCR(same);
-- L0750@0102 C19ACD7F000000000000.fpe_next:  findNextCR(same);
--  nWR = 1, nRD = 1, if (00000) then 110011010 else 110011010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
258 => '1' & '1' & "00000" & O"632" & O"632" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto fpe_loop;
-- L0751@0103 FE007F7F580000000000.  T <= inc, if false then continue else fpe_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 011111110, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
259 => '1' & '1' & "11111" & O"000" & O"376" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= zero;
-- L0755@0104 C000007F380000000000.scanProgram:  T <= zero;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
260 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- LS <= T, LE <= T, T <= Prog_start;
-- L0756@0105 C000007F70000000000C.  LS <= T, LE <= T, T <= Prog_start;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 1, LE <= 1, PrgEnd <= 0, dummy = 0;
261 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '1' & '1' & '0' & '0',

-- LS <= T, readCore16(same);
-- L0758@0106 C19ECF7F000000000008.scan_loop:  LS <= T, readCore16(same);
--  nWR = 1, nRD = 1, if (00000) then 110011110 else 110011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 1, LE <= 0, PrgEnd <= 0, dummy = 0;
262 => '1' & '1' & "00000" & O"636" & O"636" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '1' & '0' & '0' & '0',

-- alu <= S_fromLino, if R_IS_ZERO then return;
-- L0759@0107 E602007F000000000500.  alu <= S_fromLino, if R_IS_ZERO then return;
--  nWR = 1, nRD = 1, if (10011) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
263 => '1' & '1' & "10011" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_minus_R;
-- L0760@0108 C000007F000000000180.scan_check:  alu <= S_minus_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
264 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceALU();
-- L0761@0109 C1D3E9FF000000000000.  traceALU();
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
265 => '1' & '1' & "00000" & O"723" & O"723" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if Y_ZERO then scan_found else next;
-- L0762@010A E90E007F000000000000.  if Y_ZERO then scan_found else next;
--  nWR = 1, nRD = 1, if (10100) then 100001110 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
266 => '1' & '1' & "10100" & O"416" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if Y_SIGN then scan_found else next;
-- L0763@010B EB0E007F000000000000.  if Y_SIGN then scan_found else next;
--  nWR = 1, nRD = 1, if (10101) then 100001110 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
267 => '1' & '1' & "10101" & O"416" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- findNextCR(same);
-- L0764@010C C19ACD7F000000000000.scan_next:  findNextCR(same);
--  nWR = 1, nRD = 1, if (00000) then 110011010 else 110011010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
268 => '1' & '1' & "00000" & O"632" & O"632" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto scan_loop;
-- L0765@010D FE00837F580000000000.scan_line:  T <= inc, if false then continue else scan_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 100000110, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
269 => '1' & '1' & "11111" & O"000" & O"406" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- findNextCR(same);
-- L0767@010E C19ACD7F000000000000.scan_found:  findNextCR(same);
--  nWR = 1, nRD = 1, if (00000) then 110011010 else 110011010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
270 => '1' & '1' & "00000" & O"632" & O"632" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- LE <= T;
-- L0768@010F C000007F000000000004.  LE <= T;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 1, PrgEnd <= 0, dummy = 0;
271 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '1' & '0' & '0',

-- back;
-- L0770@0110 C002007F000000000000.  if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
272 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_S, if Y_ZERO then return;
-- L0773@0111 E802007F800000000000.copyCore:  T <= from_S, if Y_ZERO then return;
--  nWR = 1, nRD = 1, if (10100) then 000000010 else 000000000, directByte = 1111111, T <= 10000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
273 => '1' & '1' & "10100" & O"002" & O"000" & "1111111" & "10000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore(T);
-- L0774@0112 C1C4E27F000003000000.  readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111000100 else 111000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
274 => '1' & '1' & "00000" & O"704" & O"704" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_R;
-- L0775@0113 C000007F880000000000.  T <= from_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
275 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, same);
-- L0776@0114 C1C3E1FF000003000000.  writeCore(T, same);
--  nWR = 1, nRD = 1, if (00000) then 111000011 else 111000011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
276 => '1' & '1' & "00000" & O"703" & O"703" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceALU();
-- L0777@0115 C1D3E9FF000000000000.  traceALU();
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
277 => '1' & '1' & "00000" & O"723" & O"723" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= copy_next, goto copyCore;
-- L0778@0116 FE0088FF000000000580.  alu <= copy_next, if false then continue else copyCore;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 100010001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
278 => '1' & '1' & "11111" & O"000" & O"421" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10110" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 43;
-- L0783@0117 C1DAED2B020000000000.  trace(from_microcode), directByte = 43;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0101011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
279 => '1' & '1' & "00000" & O"732" & O"732" & "0101011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto ColdStart;
-- L0784@0118 FE00027F000000000000.  if false then continue else ColdStart;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
280 => '1' & '1' & "11111" & O"000" & O"004" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 42;
-- L0789@0119 C1DAED2A020000000000.  trace(from_microcode), directByte = 42;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0101010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
281 => '1' & '1' & "00000" & O"732" & O"732" & "0101010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= IL_PC;
-- L0790@011A C000007F080000000000.  T <= IL_PC;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
282 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- XQhere <= T, readCore16(Prog_start);
-- L0791@011B C19ECF7F702000000000.  XQhere <= T, readCore16(Prog_start);
--  nWR = 1, nRD = 1, if (00000) then 110011110 else 110011110, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 1, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
283 => '1' & '1' & "00000" & O"636" & O"636" & "1111111" & "01110" & "00" & O"0" & '1' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if R_IS_ZERO then NOPROG_ERR;
-- L0792@011C E779007F000000000000.  if R_IS_ZERO then NOPROG_ERR;
--  nWR = 1, nRD = 1, if (10011) then 101111001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
284 => '1' & '1' & "10011" & O"571" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= T, T <= from_R;
-- L0793@011D C000007F880000060000.  BP <= T, T <= from_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
285 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, goto fetch;
-- L0794@011E FE0004FF000000000020.  Lino <= T, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
286 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & '0',

-- traceString 44;
-- L0799@011F C1DAED2C020000000000.  trace(from_microcode), directByte = 44;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0101100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
287 => '1' & '1' & "00000" & O"732" & O"732" & "0101100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'S', outChar(from_microcode);
-- L0800@0120 C1C1E0D3000008000000.stop_run:  directByte = 'S', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 1010011, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
288 => '1' & '1' & "00000" & O"701" & O"701" & "1010011" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'T', outChar(from_microcode);
-- L0801@0121 C1C1E0D4000008000000.  directByte = 'T', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 1010100, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
289 => '1' & '1' & "00000" & O"701" & O"701" & "1010100" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'O', outChar(from_microcode);
-- L0802@0122 C1C1E0CF000008000000.  directByte = 'O', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 1001111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
290 => '1' & '1' & "00000" & O"701" & O"701" & "1001111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'P', outChar(from_microcode);
-- L0803@0123 C1C1E0D0000008000000.  directByte = 'P', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 1010000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
291 => '1' & '1' & "00000" & O"701" & O"701" & "1010000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto print_lino;
-- L0804@0124 FE00C87F000000000000.  if false then continue else print_lino;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110010000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
292 => '1' & '1' & "11111" & O"000" & O"620" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 49;
-- L0809@0125 C1DAED31020000000000.  trace(from_microcode), directByte = 49;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0110001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
293 => '1' & '1' & "00000" & O"732" & O"732" & "0110001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0810@0126 C000007F0000C00000C0.  alu <= R_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
294 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, ExpStack <= pop2;
-- L0811@0127 C000007F2000C0000000.  T <= ExpStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
295 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromStack, ExpStack <= pop2;
-- L0812@0128 C000007F0000C0000100.  alu <= S_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
296 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00100" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceALU();
-- L0813@0129 C1D3E9FF000000000000.  traceALU();
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
297 => '1' & '1' & "00000" & O"723" & O"723" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 20, if S_EQU_DB_MOD16 then u_peek8;
-- L0815@012A F92F0014000000000000.  directByte = 20, if S_EQU_DB_MOD16 then u_peek8;
--  nWR = 1, nRD = 1, if (11100) then 100101111 else 000000000, directByte = 0010100, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
298 => '1' & '1' & "11100" & O"457" & O"000" & "0010100" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 24, if S_EQU_DB_MOD16 then u_poke8;
-- L0816@012B F9340018000000000000.  directByte = 24, if S_EQU_DB_MOD16 then u_poke8;
--  nWR = 1, nRD = 1, if (11100) then 100110100 else 000000000, directByte = 0011000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
299 => '1' & '1' & "11100" & O"464" & O"000" & "0011000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 21, if S_EQU_DB_MOD16 then u_peek16;
-- L0817@012C F9320015000000000000.  directByte = 21, if S_EQU_DB_MOD16 then u_peek16;
--  nWR = 1, nRD = 1, if (11100) then 100110010 else 000000000, directByte = 0010101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
300 => '1' & '1' & "11100" & O"462" & O"000" & "0010101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 25, if S_EQU_DB_MOD16 then u_poke16;
-- L0818@012D F9390019000000000000.  directByte = 25, if S_EQU_DB_MOD16 then u_poke16;
--  nWR = 1, nRD = 1, if (11100) then 100111001 else 000000000, directByte = 0011001, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
301 => '1' & '1' & "11100" & O"471" & O"000" & "0011001" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto INTERNAL_ERR;
-- L0820@012E FE00C0FF000000000000.  if false then continue else INTERNAL_ERR;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
302 => '1' & '1' & "11111" & O"000" & O"601" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore(T);
-- L0822@012F C1C4E27F000003000000.u_peek8:  readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111000100 else 111000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
303 => '1' & '1' & "00000" & O"704" & O"704" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= MDR;
-- L0823@0130 C000007F480000000000.  T <= MDR;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
304 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, goto fetch;
-- L0824@0131 FE0004FF000080000000.u_done:  ExpStack <= push_TWord, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
305 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore16(same);
-- L0826@0132 C19ECF7F000000000000.u_peek16:  readCore16(same);
--  nWR = 1, nRD = 1, if (00000) then 110011110 else 110011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
306 => '1' & '1' & "00000" & O"636" & O"636" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_R, goto u_done;
-- L0827@0133 FE0098FF880000000000.  T <= from_R, if false then continue else u_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 100110001, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
307 => '1' & '1' & "11111" & O"000" & O"461" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= save;
-- L0829@0134 C000007F900000000000.u_poke8:  T <= save;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
308 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10010" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_R;
-- L0830@0135 C000007F880000000000.  T <= from_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
309 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromT, T <= recall;
-- L0831@0136 C000007F980000000480.  alu <= S_fromT, T <= recall;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
310 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10010" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, from_SLo);
-- L0832@0137 C1C3E1FF000003C00000.  writeCore(T, from_SLo);
--  nWR = 1, nRD = 1, if (00000) then 111000011 else 111000011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 110, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
311 => '1' & '1' & "00000" & O"703" & O"703" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"6" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto u_peek8;
-- L0833@0138 FE0097FF000000000000.  if false then continue else u_peek8;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 100101111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
312 => '1' & '1' & "11111" & O"000" & O"457" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= save;
-- L0835@0139 C000007F900000000000.u_poke16:  T <= save;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
313 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10010" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_R;
-- L0836@013A C000007F880000000000.  T <= from_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
314 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromT, T <= recall;
-- L0837@013B C000007F980000000480.  alu <= S_fromT, T <= recall;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
315 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10010" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, from_SHi), T <= inc;
-- L0838@013C C1C3E1FF580003A00000.  writeCore(T, from_SHi), T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 111000011 else 111000011, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 101, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
316 => '1' & '1' & "00000" & O"703" & O"703" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"5" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, from_SLo);
-- L0839@013D C1C3E1FF000003C00000.  writeCore(T, from_SLo);
--  nWR = 1, nRD = 1, if (00000) then 111000011 else 111000011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 110, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
317 => '1' & '1' & "00000" & O"703" & O"703" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"6" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= dec, goto u_peek16;
-- L0840@013E FE00997F600000000000.  T <= dec, if false then continue else u_peek16;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 100110010, directByte = 1111111, T <= 01100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
318 => '1' & '1' & "11111" & O"000" & O"462" & "1111111" & "01100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 19;
-- L0845@013F C1DAED13020000000000.  trace(from_microcode), directByte = 19;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0010011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
319 => '1' & '1' & "00000" & O"732" & O"732" & "0010011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then RSTACK_ERR;
-- L0846@0140 E385007F000000000000.  if STACK_IS_EMPTY then RSTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110000101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
320 => '1' & '1' & "10001" & O"605" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= RetStack, RetStack <= pop, goto fetch;
-- L0847@0141 FE0004FF01C800000000.  IL_PC <= RetStack, RetStack <= pop, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 111, XQhere <= 0, IL_OP <= 0, RetStack <= 10, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
321 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"7" & '0' & '0' & "10" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 20;
-- L0852@0142 C1DAED14020000000000.  trace(from_microcode), directByte = 20;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0010100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
322 => '1' & '1' & "00000" & O"732" & O"732" & "0010100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 3;
-- L0853@0143 C1DAED03020000000000.  trace(from_microcode), directByte = 3;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0000011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
323 => '1' & '1' & "00000" & O"732" & O"732" & "0000011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_FULL then RSTACK_ERR;
-- L0854@0144 E185007F000000000000.  if STACK_IS_FULL then RSTACK_ERR;
--  nWR = 1, nRD = 1, if (10000) then 110000101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
324 => '1' & '1' & "10000" & O"605" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- RetStack <= push_IL_PC_PLUS_1, goto jump;
-- L0855@0145 FE00A47F000C00000000.  RetStack <= push_IL_PC_PLUS_1, if false then continue else jump;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 101001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 11, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
325 => '1' & '1' & "11111" & O"000" & O"510" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "11" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 21;
-- L0860@0146 C1DAED15020000000000.  trace(from_microcode), directByte = 21;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0010101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
326 => '1' & '1' & "00000" & O"732" & O"732" & "0010101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 3;
-- L0861@0147 C1DAED03020000000000.  trace(from_microcode), directByte = 3;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0000011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
327 => '1' & '1' & "00000" & O"732" & O"732" & "0000011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= direct11, goto fetch;
-- L0862@0148 FE0004FF018000000000.jump:  IL_PC <= direct11, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 110, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
328 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"6" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 7;
-- L0867@0149 C1DAED07020000000000.  trace(from_microcode), directByte = 7;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0000111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
329 => '1' & '1' & "00000" & O"732" & O"732" & "0000111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= pc_plus_off6;
-- L0868@014A C000007F010000000000.  IL_PC <= pc_plus_off6;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 100, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
330 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"4" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceGoto;
-- L0869@014B C1DAED1E020000000000.br_exit:  trace(from_microcode), directByte = 30;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0011110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
331 => '1' & '1' & "00000" & O"732" & O"732" & "0011110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0870@014C FE0004FF000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
332 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 7;
-- L0875@014D C1DAED07020000000000.  trace(from_microcode), directByte = 7;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0000111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
333 => '1' & '1' & "00000" & O"732" & O"732" & "0000111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto badop;
-- L0876@014E FE0007FF000000000000.  if false then continue else badop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
334 => '1' & '1' & "11111" & O"000" & O"017" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 17;
-- L0881@014F C1DAED11020000000000.  trace(from_microcode), directByte = 17;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0010001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
335 => '1' & '1' & "00000" & O"732" & O"732" & "0010001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= IL_PC, BP <= save, skipSpaces();
-- L0882@0150 C1B8DC7F080000040000.  T <= IL_PC, BP <= save, skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 110111000 else 110111000, directByte = 1111111, T <= 00001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 100, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
336 => '1' & '1' & "00000" & O"670" & O"670" & "1111111" & "00001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"4" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 3;
-- L0883@0151 C1DAED03020000000000.bc_loop:  trace(from_microcode), directByte = 3;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0000011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
337 => '1' & '1' & "00000" & O"732" & O"732" & "0000011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore(BP);
-- L0884@0152 C1C4E27F000002000000.  readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 111000100 else 111000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
338 => '1' & '1' & "00000" & O"704" & O"704" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
-- L0885@0153 E400ACFF000000000000.  if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
--  nWR = 1, nRD = 1, if (10010) then 000000000 else 101011001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
339 => '1' & '1' & "10010" & O"000" & O"531" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if ILCODEBYTE_BIT7 then bc_match;
-- L0886@0154 C356007F000000000000.  if ILCODEBYTE_BIT7 then bc_match;
--  nWR = 1, nRD = 1, if (00001) then 101010110 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
340 => '1' & '1' & "00001" & O"526" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= inc, IL_PC <= inc, goto bc_loop;
-- L0887@0155 FE00A8FF008000030000.  BP <= inc, IL_PC <= inc, if false then continue else bc_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 101010001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
341 => '1' & '1' & "11111" & O"000" & O"521" & "1111111" & "00000" & "00" & O"2" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= inc, IL_PC <= inc;
-- L0888@0156 C000007F008000030000.bc_match:  BP <= inc, IL_PC <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
342 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"2" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceBP();
-- L0889@0157 C1CDE6FF000000000000.  traceBP();
--  nWR = 1, nRD = 1, if (00000) then 111001101 else 111001101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
343 => '1' & '1' & "00000" & O"715" & O"715" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0890@0158 FE0004FF000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
344 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= recall, IL_PC <= T;
-- L0891@0159 C000007F00C000050000.bc_exit:  BP <= recall, IL_PC <= T;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 011, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 101, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
345 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"3" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"5" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceBP();
-- L0892@015A C1CDE6FF000000000000.  traceBP();
--  nWR = 1, nRD = 1, if (00000) then 111001101 else 111001101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
346 => '1' & '1' & "00000" & O"715" & O"715" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- L0893@015B F57FA5FF014000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
--  nWR = 1, nRD = 1, if (11010) then 101111111 else 101001011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
347 => '1' & '1' & "11010" & O"577" & O"513" & "1111111" & "00000" & "00" & O"5" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 16;
-- L0898@015C C1DAED10020000000000.  trace(from_microcode), directByte = 16;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0010000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
348 => '1' & '1' & "00000" & O"732" & O"732" & "0010000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- skipSpaces();
-- L0899@015D C1B8DC7F000000000000.  skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 110111000 else 110111000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
349 => '1' & '1' & "00000" & O"670" & O"670" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
-- L0900@015E DF60007F000000800000.  MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
--  nWR = 1, nRD = 1, if (01111) then 101100000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 100, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
350 => '1' & '1' & "01111" & O"540" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"4" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- L0901@015F F57FA5FF014000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
--  nWR = 1, nRD = 1, if (11010) then 101111111 else 101001011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
351 => '1' & '1' & "11010" & O"577" & O"513" & "1111111" & "00000" & "00" & O"5" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
-- L0902@0160 E183007F500000000000.bv_exec:  T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10000) then 110000011 else 000000000, directByte = 1111111, T <= 01010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
352 => '1' & '1' & "10000" & O"603" & O"000" & "1111111" & "01010" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TByte, BP <= inc, goto fetch;
-- L0903@0161 FE0004FF0000A0030000.  ExpStack <= push_TByte, BP <= inc, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 101, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
353 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"5" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 14;
-- L0908@0162 C1DAED0E020000000000.  trace(from_microcode), directByte = 14;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0001110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
354 => '1' & '1' & "00000" & O"732" & O"732" & "0001110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- skipSpaces();
-- L0909@0163 C1B8DC7F000000000000.  skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 110111000 else 110111000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
355 => '1' & '1' & "00000" & O"670" & O"670" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= reset0, if MDR_IS_NUM then bn_loop;
-- L0910@0164 DD69007F000000000040.  alu <= reset0, if MDR_IS_NUM then bn_loop;
--  nWR = 1, nRD = 1, if (01110) then 101101001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
356 => '1' & '1' & "01110" & O"551" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00001" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
-- L0911@0165 F40F007F014000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
--  nWR = 1, nRD = 1, if (11010) then 000001111 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
357 => '1' & '1' & "11010" & O"017" & O"000" & "1111111" & "00000" & "00" & O"5" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceY();
-- L0912@0166 C1D0E87F000000000000.bn_exit:  traceY();
--  nWR = 1, nRD = 1, if (00000) then 111010000 else 111010000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
358 => '1' & '1' & "00000" & O"720" & O"720" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceGoto;
-- L0913@0167 C1DAED1E020000000000.  trace(from_microcode), directByte = 30;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0011110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
359 => '1' & '1' & "00000" & O"732" & O"732" & "0011110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0914@0168 FE0004FF000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
360 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= Yx10_plus_MDR, BP <= inc;
-- L0915@0169 C000007F000000030400.bn_loop:  alu <= Yx10_plus_MDR, BP <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
361 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & "00" & "10000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if ALU_OVERFLOW then OVERFLOW_ERR;
-- L0916@016A EF7D007F000000000000.  if ALU_OVERFLOW then OVERFLOW_ERR;
--  nWR = 1, nRD = 1, if (10111) then 101111101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
362 => '1' & '1' & "10111" & O"575" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore(BP);
-- L0917@016B C1C4E27F000002000000.  readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 111000100 else 111000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
363 => '1' & '1' & "00000" & O"704" & O"704" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if MDR_IS_NUM then bn_loop;
-- L0918@016C DD69007F000000000000.  if MDR_IS_NUM then bn_loop;
--  nWR = 1, nRD = 1, if (01110) then 101101001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
364 => '1' & '1' & "01110" & O"551" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
-- L0919@016D E183007F280000000000.  T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10000) then 110000011 else 000000000, directByte = 1111111, T <= 00101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
365 => '1' & '1' & "10000" & O"603" & O"000" & "1111111" & "00101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, goto bn_exit;
-- L0920@016E FE00B37F000080000000.  ExpStack <= push_TWord, if false then continue else bn_exit;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 101100110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
366 => '1' & '1' & "11111" & O"000" & O"546" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 13;
-- L0925@016F C1DAED0D020000000000.  trace(from_microcode), directByte = 13;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0001101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
367 => '1' & '1' & "00000" & O"732" & O"732" & "0001101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- skipSpaces();
-- L0926@0170 C1B8DC7F000000000000.  skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 110111000 else 110111000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
368 => '1' & '1' & "00000" & O"670" & O"670" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if MDR_EQU_DB then fetch;
-- L0927@0171 CA09000D000000000000.  directByte = 0x0D, if MDR_EQU_DB then fetch;
--  nWR = 1, nRD = 1, if (00101) then 000001001 else 000000000, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
369 => '1' & '1' & "00101" & O"011" & O"000" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- L0928@0172 F57FA5FF014000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
--  nWR = 1, nRD = 1, if (11010) then 101111111 else 101001011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
370 => '1' & '1' & "11010" & O"577" & O"513" & "1111111" & "00000" & "00" & O"5" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, traceString 55;
-- L0930@0173 C1DAED37020000002000.BREAK:  gotChar = 1, trace(from_microcode), directByte = 55;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0110111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
371 => '1' & '1' & "00000" & O"732" & O"732" & "0110111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outBeep();
-- L0931@0174 C1BCDE7F000000000000.  outBeep();
--  nWR = 1, nRD = 1, if (00000) then 110111100 else 110111100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
372 => '1' & '1' & "00000" & O"674" & O"674" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'B', outChar(from_microcode);
-- L0932@0175 C1C1E0C2000008000000.  directByte = 'B', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 1000010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
373 => '1' & '1' & "00000" & O"701" & O"701" & "1000010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'R', outChar(from_microcode);
-- L0933@0176 C1C1E0D2000008000000.  directByte = 'R', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 1010010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
374 => '1' & '1' & "00000" & O"701" & O"701" & "1010010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'K', outChar(from_microcode);
-- L0934@0177 C1C1E0CB000008000000.  directByte = 'K', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 1001011, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
375 => '1' & '1' & "00000" & O"701" & O"701" & "1001011" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto traceDetails;
-- L0935@0178 FE00C67F000000000000.  if false then continue else traceDetails;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110001100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
376 => '1' & '1' & "11111" & O"000" & O"614" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 50;
-- L0937@0179 C1DAED32020000000000.NOPROG_ERR:  trace(from_microcode), directByte = 50;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0110010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
377 => '1' & '1' & "00000" & O"732" & O"732" & "0110010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto traceError;
-- L0938@017A FE00C47F000000000000.  if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
378 => '1' & '1' & "11111" & O"000" & O"610" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 57;
-- L0939@017B C1DAED39020000000000.DIVBY0_ERR:  trace(from_microcode), directByte = 57;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0111001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
379 => '1' & '1' & "00000" & O"732" & O"732" & "0111001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto traceError;
-- L0940@017C FE00C47F000000000000.  if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
380 => '1' & '1' & "11111" & O"000" & O"610" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 58;
-- L0941@017D C1DAED3A020000000000.OVERFLOW_ERR:  trace(from_microcode), directByte = 58;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0111010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
381 => '1' & '1' & "00000" & O"732" & O"732" & "0111010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto traceError;
-- L0942@017E FE00C47F000000000000.  if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
382 => '1' & '1' & "11111" & O"000" & O"610" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 61;
-- L0943@017F C1DAED3D020000000000.SYNTAX_ERR:  trace(from_microcode), directByte = 61;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0111101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
383 => '1' & '1' & "00000" & O"732" & O"732" & "0111101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto traceError;
-- L0944@0180 FE00C47F000000000000.  if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
384 => '1' & '1' & "11111" & O"000" & O"610" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 62;
-- L0945@0181 C1DAED3E020000000000.INTERNAL_ERR:  trace(from_microcode), directByte = 62;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0111110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
385 => '1' & '1' & "00000" & O"732" & O"732" & "0111110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto traceError;
-- L0946@0182 FE00C47F000000000000.  if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
386 => '1' & '1' & "11111" & O"000" & O"610" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 60;
-- L0947@0183 C1DAED3C020000000000.ESTACK_ERR:  trace(from_microcode), directByte = 60;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0111100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
387 => '1' & '1' & "00000" & O"732" & O"732" & "0111100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto traceError;
-- L0948@0184 FE00C47F000000000000.  if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
388 => '1' & '1' & "11111" & O"000" & O"610" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 59;
-- L0949@0185 C1DAED3B020000000000.RSTACK_ERR:  trace(from_microcode), directByte = 59;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0111011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
389 => '1' & '1' & "00000" & O"732" & O"732" & "0111011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto traceError;
-- L0950@0186 FE00C47F000000000000.  if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
390 => '1' & '1' & "11111" & O"000" & O"610" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 54;
-- L0951@0187 C1DAED36020000000000.BSTACK_ERR:  trace(from_microcode), directByte = 54;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0110110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
391 => '1' & '1' & "00000" & O"732" & O"732" & "0110110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outBeep();
-- L0952@0188 C1BCDE7F000000000000.traceError:  outBeep();
--  nWR = 1, nRD = 1, if (00000) then 110111100 else 110111100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
392 => '1' & '1' & "00000" & O"674" & O"674" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'E', outChar(from_microcode);
-- L0953@0189 C1C1E0C5000008000000.  directByte = 'E', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 1000101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
393 => '1' & '1' & "00000" & O"701" & O"701" & "1000101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'R', outChar(from_microcode);
-- L0954@018A C1C1E0D2000008000000.  directByte = 'R', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 1010010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
394 => '1' & '1' & "00000" & O"701" & O"701" & "1010010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'R', outChar(from_microcode);
-- L0955@018B C1C1E0D2000008000000.  directByte = 'R', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 1010010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
395 => '1' & '1' & "00000" & O"701" & O"701" & "1010010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = '#', outChar(from_microcode), T <= IL_PC;
-- L0956@018C C1C1E0A3080008000000.traceDetails:  directByte = '#', outChar(from_microcode), T <= IL_PC;
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 0100011, T <= 00001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
396 => '1' & '1' & "00000" & O"701" & O"701" & "0100011" & "00001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= dec;
-- L0957@018D C000007F600000000000.  T <= dec;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
397 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- printDecR(R_fromT);
-- L0958@018E C1AAD57F0000000004C0.  printDecR(R_fromT);
--  nWR = 1, nRD = 1, if (00000) then 110101010 else 110101010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
398 => '1' & '1' & "00000" & O"652" & O"652" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10011" & '0' & '0' & '0' & '0' & '0' & '0',

-- if IS_RUNMODE then next else err_done;
-- L0959@018F F600CBFF000000000000.  if IS_RUNMODE then next else err_done;
--  nWR = 1, nRD = 1, if (11011) then 000000000 else 110010111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
399 => '1' & '1' & "11011" & O"000" & O"627" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', outChar(from_microcode);
-- L0960@0190 C1C1E0A0000008000000.print_lino:  directByte = ' ', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
400 => '1' & '1' & "00000" & O"701" & O"701" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'A', outChar(from_microcode);
-- L0961@0191 C1C1E0C1000008000000.  directByte = 'A', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 1000001, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
401 => '1' & '1' & "00000" & O"701" & O"701" & "1000001" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'T', outChar(from_microcode), alu <= S_fromLino;
-- L0962@0192 C1C1E0D4000008000500.  directByte = 'T', outChar(from_microcode), alu <= S_fromLino;
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 1010100, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
402 => '1' & '1' & "00000" & O"701" & O"701" & "1010100" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', outChar(from_microcode), T <= from_S;
-- L0963@0193 C1C1E0A0800008000000.  directByte = ' ', outChar(from_microcode), T <= from_S;
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 0100000, T <= 10000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
403 => '1' & '1' & "00000" & O"701" & O"701" & "0100000" & "10000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- printDecR(R_fromT);
-- L0964@0194 C1AAD57F0000000004C0.  printDecR(R_fromT);
--  nWR = 1, nRD = 1, if (00000) then 110101010 else 110101010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
404 => '1' & '1' & "00000" & O"652" & O"652" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10011" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', outChar(from_microcode), alu <= Y_fromTicks;
-- L0965@0195 C1C1E0A0000008000700.  directByte = ' ', outChar(from_microcode), alu <= Y_fromTicks;
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 11100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
405 => '1' & '1' & "00000" & O"701" & O"701" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "11100" & '0' & '0' & '0' & '0' & '0' & '0',

-- printY();
-- L0966@0196 C1AED77F000000000000.  printY();
--  nWR = 1, nRD = 1, if (00000) then 110101110 else 110101110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
406 => '1' & '1' & "00000" & O"656" & O"656" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outCRLF();
-- L0967@0197 C1BFDFFF000000000000.err_done:  outCRLF();
--  nWR = 1, nRD = 1, if (00000) then 110111111 else 110111111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
407 => '1' & '1' & "00000" & O"677" & O"677" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- trace(crlf);
-- L0968@0198 C1DAED7F060000000000.  trace(crlf);
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 1111111, T <= 00000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
408 => '1' & '1' & "00000" & O"732" & O"732" & "1111111" & "00000" & "11" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto WarmStart;
-- L0969@0199 FE00037F000000000000.  if false then continue else WarmStart;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000000110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
409 => '1' & '1' & "11111" & O"000" & O"006" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore(T);
-- L0971@019A C1C4E27F000003000000.findNextCR:  readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111000100 else 111000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
410 => '1' & '1' & "00000" & O"704" & O"704" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if MDR_EQU_DB then return;
-- L0972@019B CA02000D000000000000.  directByte = 0x0D, if MDR_EQU_DB then return;
--  nWR = 1, nRD = 1, if (00101) then 000000010 else 000000000, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
411 => '1' & '1' & "00101" & O"002" & O"000" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = NULL, if MDR_EQU_DB then INTERNAL_ERR;
-- L0973@019C CB810000000000000000.  directByte = 0x00, if MDR_EQU_DB then INTERNAL_ERR;
--  nWR = 1, nRD = 1, if (00101) then 110000001 else 000000000, directByte = 0000000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
412 => '1' & '1' & "00101" & O"601" & O"000" & "0000000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto findNextCR;
-- L0974@019D FE00CD7F580000000000.  T <= inc, if false then continue else findNextCR;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110011010, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
413 => '1' & '1' & "11111" & O"000" & O"632" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= reset1, readCore(T);
-- L0976@019E C1C4E27F000003000080.readCore16:  alu <= reset1, readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111000100 else 111000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
414 => '1' & '1' & "00000" & O"704" & O"704" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00010" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= Rx256_plus_MDR, T <= inc;
-- L0977@019F C000007F580000000440.  alu <= Rx256_plus_MDR, T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
415 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore(T);
-- L0978@01A0 C1C4E27F000003000000.  readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111000100 else 111000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
416 => '1' & '1' & "00000" & O"704" & O"704" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= Rx256_plus_MDR, T <= inc, back;
-- L0979@01A1 C002007F580000000440.  alu <= Rx256_plus_MDR, T <= inc, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
417 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, zero), T <= inc;
-- L0981@01A2 C1C3E1FF580003400000.write2Nulls:  writeCore(T, zero), T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 111000011 else 111000011, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
418 => '1' & '1' & "00000" & O"703" & O"703" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"2" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, zero);
-- L0982@01A3 C1C3E1FF000003400000.  writeCore(T, zero);
--  nWR = 1, nRD = 1, if (00000) then 111000011 else 111000011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
419 => '1' & '1' & "00000" & O"703" & O"703" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"2" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- back;
-- L0983@01A4 C002007F000000000000.  if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
420 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0986@01A5 E383007F000000000000.pullRS:  if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110000011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
421 => '1' & '1' & "10001" & O"603" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0987@01A6 C000007F0000C00000C0.  alu <= R_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
422 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0988@01A7 E383007F000000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110000011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
423 => '1' & '1' & "10001" & O"603" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromStack, ExpStack <= pop2, back;
-- L0989@01A8 C002007F0000C0000100.  alu <= S_fromStack, ExpStack <= pop2, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
424 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00100" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0992@01A9 C000007F0000C00000C0.printDec:  alu <= R_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
425 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= bcd_start;
-- L0994@01AA C000007F000000000280.printDecR:  alu <= bcd_start;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 01010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
426 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "01010" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= bcd_next, if ALU_READY then next else repeat;
-- L0995@01AB EC0000FF0000000002C0.  alu <= bcd_next, if ALU_READY then next else repeat;
--  nWR = 1, nRD = 1, if (10110) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 01011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
427 => '1' & '1' & "10110" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "01011" & '0' & '0' & '0' & '0' & '0' & '0',

-- if ALU_SIGN then next else printY;
-- L0996@01AC F000D77F000000000000.  if ALU_SIGN then next else printY;
--  nWR = 1, nRD = 1, if (11000) then 000000000 else 110101110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
428 => '1' & '1' & "11000" & O"000" & O"656" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = '-', outChar(from_microcode);
-- L0997@01AD C1C1E0AD000008000000.  directByte = '-', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 0101101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
429 => '1' & '1' & "00000" & O"701" & O"701" & "0101101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ);
-- L0998@01AE C1B6DB7F000018000000.printY:  outNZChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 110110110 else 110110110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
430 => '1' & '1' & "00000" & O"666" & O"666" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ);
-- L0999@01AF C1B6DB7F000018000000.  outNZChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 110110110 else 110110110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
431 => '1' & '1' & "00000" & O"666" & O"666" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ);
-- L1000@01B0 C1B6DB7F000018000000.  outNZChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 110110110 else 110110110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
432 => '1' & '1' & "00000" & O"666" & O"666" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ);
-- L1001@01B1 C1B6DB7F000018000000.  outNZChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 110110110 else 110110110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
433 => '1' & '1' & "00000" & O"666" & O"666" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ);
-- L1002@01B2 C1B6DB7F000018000000.  outNZChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 110110110 else 110110110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
434 => '1' & '1' & "00000" & O"666" & O"666" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ);
-- L1003@01B3 C1B6DB7F000018000000.  outNZChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 110110110 else 110110110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
435 => '1' & '1' & "00000" & O"666" & O"666" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ);
-- L1004@01B4 C1B6DB7F000018000000.  outNZChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 110110110 else 110110110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
436 => '1' & '1' & "00000" & O"666" & O"666" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- CHAROUT <= from_YtoAlpha, goto outChar;
-- L1005@01B5 FE00E0FF000014000000.  CHAROUT <= from_YtoAlpha, if false then continue else outChar;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 111000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
437 => '1' & '1' & "11111" & O"000" & O"701" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"5" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outChar(from_YtoAlphaZ);
-- L1007@01B6 C1C1E0FF000018000000.outNZChar:  outChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
438 => '1' & '1' & "00000" & O"701" & O"701" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= Yx16, back;
-- L1008@01B7 C002007F000000000240.out_skip:  alu <= Yx16, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
439 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "01001" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore(BP);
-- L1010@01B8 C1C4E27F000002000000.skipSpaces:  readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 111000100 else 111000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
440 => '1' & '1' & "00000" & O"704" & O"704" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', if MDR_EQU_DB then skipSp;
-- L1011@01B9 CBBB0020000000000000.  directByte = ' ', if MDR_EQU_DB then skipSp;
--  nWR = 1, nRD = 1, if (00101) then 110111011 else 000000000, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
441 => '1' & '1' & "00101" & O"673" & O"000" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = TAB, if MDR_EQU_DB then skipSp else return;
-- L1012@01BA CBBB0109000000000000.  directByte = 0x09, if MDR_EQU_DB then skipSp else return;
--  nWR = 1, nRD = 1, if (00101) then 110111011 else 000000010, directByte = 0001001, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
442 => '1' & '1' & "00101" & O"673" & O"002" & "0001001" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= inc, goto skipSpaces;
-- L1013@01BB FE00DC7F000000030000.skipSp:  BP <= inc, if false then continue else skipSpaces;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110111000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
443 => '1' & '1' & "11111" & O"000" & O"670" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outCRLF();
-- L1015@01BC C1BFDFFF000000000000.outBeep:  outCRLF();
--  nWR = 1, nRD = 1, if (00000) then 110111111 else 110111111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
444 => '1' & '1' & "00000" & O"677" & O"677" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- trace(crlf);
-- L1016@01BD C1DAED7F060000000000.  trace(crlf);
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 1111111, T <= 00000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
445 => '1' & '1' & "00000" & O"732" & O"732" & "1111111" & "00000" & "11" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = BEEP, CHAROUT <= from_microcode, goto outChar;
-- L1017@01BE FE00E087000008000000.  directByte = 0x07, CHAROUT <= from_microcode, if false then continue else outChar;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 111000001, directByte = 0000111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
446 => '1' & '1' & "11111" & O"000" & O"701" & "0000111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, outChar(from_microcode);
-- L1019@01BF C1C1E08D000008000000.outCRLF:  directByte = 0x0D, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111000001 else 111000001, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
447 => '1' & '1' & "00000" & O"701" & O"701" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = LF, CHAROUT <= from_microcode;
-- L1020@01C0 C000000A000008000000.  directByte = 0x0A, CHAROUT <= from_microcode;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 0001010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
448 => '1' & '1' & "00000" & O"000" & O"000" & "0001010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if CHAROUT_READY then next else repeat;
-- L1021@01C1 C40000FF000000000000.outChar:  if CHAROUT_READY then next else repeat;
--  nWR = 1, nRD = 1, if (00010) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
449 => '1' & '1' & "00010" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if CHAROUT_READY then return else repeat;
-- L1022@01C2 C40200FF000000000000.  if CHAROUT_READY then return else repeat;
--  nWR = 1, nRD = 1, if (00010) then 000000010 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
450 => '1' & '1' & "00010" & O"002" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- nWR = 0, if nBUSACK then repeat else return;
-- L1024@01C3 4C01017F000000000000.writeCore:  nWR = 0, if nBUSACK then repeat else return;
--  nWR = 0, nRD = 1, if (00110) then 000000001 else 000000010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
451 => '0' & '1' & "00110" & O"001" & O"002" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- nRD = 0, if nBUSACK then repeat else next;
-- L1026@01C4 8C01007F000000000000.readCore:  nRD = 0, if nBUSACK then repeat else next;
--  nWR = 1, nRD = 0, if (00110) then 000000001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
452 => '1' & '0' & "00110" & O"001" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- nRD = 0, MDR <= from_Bus, back;
-- L1027@01C5 8002007F000000200000.  nRD = 0, MDR <= from_Bus, if true then return else continue;
--  nWR = 1, nRD = 0, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 001, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
453 => '1' & '0' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"1" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- InlEnd <= InLine_start, trace(crlf);
-- L1031@01C6 C1DAED7F060000080000.dump_input:  InlEnd <= InLine_start, trace(crlf);
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 1111111, T <= 00000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
454 => '1' & '1' & "00000" & O"732" & O"732" & "1111111" & "00000" & "11" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "01" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore(InlEnd);
-- L1032@01C7 C1C4E27F000001000000.dump_inlp:  readCore(InlEnd);
--  nWR = 1, nRD = 1, if (00000) then 111000100 else 111000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
455 => '1' & '1' & "00000" & O"704" & O"704" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 9, trace(from_microcode);
-- L1033@01C8 C1DAED09020000000000.  directByte = 9, trace(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0001001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
456 => '1' & '1' & "00000" & O"732" & O"732" & "0001001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = NULL, if MDR_EQU_DB then dump_inex;
-- L1034@01C9 CBCB0000000000000000.  directByte = 0x00, if MDR_EQU_DB then dump_inex;
--  nWR = 1, nRD = 1, if (00101) then 111001011 else 000000000, directByte = 0000000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
457 => '1' & '1' & "00101" & O"713" & O"000" & "0000000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- InlEnd <= inc, goto dump_inlp;
-- L1035@01CA FE00E3FF000000100000.  InlEnd <= inc, if false then continue else dump_inlp;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 111000111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
458 => '1' & '1' & "11111" & O"000" & O"707" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "10" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- trace(crlf);
-- L1036@01CB C1DAED7F060000000000.dump_inex:  trace(crlf);
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 1111111, T <= 00000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
459 => '1' & '1' & "00000" & O"732" & O"732" & "1111111" & "00000" & "11" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- back;
-- L1037@01CC C002007F000000000000.  if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
460 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, T <= BP;
-- L1039@01CD C000007F680080000000.traceBP:  ExpStack <= push_TWord, T <= BP;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
461 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 33;
-- L1040@01CE C1DAED21020000000000.  trace(from_microcode), directByte = 33;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0100001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
462 => '1' & '1' & "00000" & O"732" & O"732" & "0100001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, ExpStack <= pop2, back;
-- L1041@01CF C002007F2000C0000000.  T <= ExpStack, ExpStack <= pop2, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
463 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, T <= from_YLo;
-- L1043@01D0 C000007F280080000000.traceY:  ExpStack <= push_TWord, T <= from_YLo;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
464 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 32;
-- L1044@01D1 C1DAED20020000000000.  trace(from_microcode), directByte = 32;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0100000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
465 => '1' & '1' & "00000" & O"732" & O"732" & "0100000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, ExpStack <= pop2, back;
-- L1045@01D2 C002007F2000C0000000.  T <= ExpStack, ExpStack <= pop2, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
466 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- trace(crlf);
-- L1047@01D3 C1DAED7F060000000000.traceALU:  trace(crlf);
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 1111111, T <= 00000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
467 => '1' & '1' & "00000" & O"732" & O"732" & "1111111" & "00000" & "11" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= save, traceT;
-- L1048@01D4 C1DAED34920000000000.  T <= save, trace(from_microcode), directByte = 52;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0110100, T <= 10010, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
468 => '1' & '1' & "00000" & O"732" & O"732" & "0110100" & "10010" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_S, traceString 52;
-- L1049@01D5 C1DAED34820000000000.  T <= from_S, trace(from_microcode), directByte = 52;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0110100, T <= 10000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
469 => '1' & '1' & "00000" & O"732" & O"732" & "0110100" & "10000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_R, traceString 52;
-- L1050@01D6 C1DAED348A0000000000.  T <= from_R, trace(from_microcode), directByte = 52;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0110100, T <= 10001, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
470 => '1' & '1' & "00000" & O"732" & O"732" & "0110100" & "10001" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_YHi, traceString 53;
-- L1051@01D7 C1DAED35320000000000.  T <= from_YHi, trace(from_microcode), directByte = 53;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0110101, T <= 00110, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
471 => '1' & '1' & "00000" & O"732" & O"732" & "0110101" & "00110" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_YLo, traceString 52;
-- L1052@01D8 C1DAED342A0000000000.  T <= from_YLo, trace(from_microcode), directByte = 52;
--  nWR = 1, nRD = 1, if (00000) then 111011010 else 111011010, directByte = 0110100, T <= 00101, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
472 => '1' & '1' & "00000" & O"732" & O"732" & "0110100" & "00101" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= recall, DBGINDEX <= crlf;
-- L1053@01D9 C000007F9E0000000000.  T <= recall, DBGINDEX <= crlf;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10011, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
473 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10011" & "11" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if DBG_READY then next else repeat;
-- L1054@01DA C80000FF000000000000.trace:  if DBG_READY then next else repeat;
--  nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
474 => '1' & '1' & "00100" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if DBG_READY then next else repeat;
-- L1055@01DB C80000FF000000000000.  if DBG_READY then next else repeat;
--  nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
475 => '1' & '1' & "00100" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- DBGINDEX <= zero, back;
-- L1056@01DC C002007F040000000000.  DBGINDEX <= zero, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 10, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
476 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "10" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- 35 location(s) in following ranges will be filled with default value
-- 01DD .. 01FF

others => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0'
);

end microBasic_code;

