--------------------------------------------------------
-- mcc V1.5.1110 - Custom microcode compiler (c)2020-... 
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
-- L0011.nWR: .valfield 1 values 0, 1 default 1;
--
alias mb_nWR: 	std_logic is mb_uinstruction(79);
---- Start boilerplate code (use with utmost caution!)
--  nWR <= mb_nWR;
---- End boilerplate code

--
-- L0012.nRD: .valfield 1 values 0, 1 default 1;
--
alias mb_nRD: 	std_logic is mb_uinstruction(78);
---- Start boilerplate code (use with utmost caution!)
--  nRD <= mb_nRD;
---- End boilerplate code

--
-- L0017.seq_cond: .if 5 values true, ILCODEBYTE_BIT7, CHAROUT_READY, TB_EXTENDED, DBG_READY | KBD_BREAK, MDR_MATCHES_DB, nBUSACK, INLEND_MAX | BASLINE_FOUND, INLEND_MIN | IMPLINE_EMPTY, CHARIN_PRINTABLE, CHARIN_EQU_DB, CHARIN_READY, BP_IN_INPLINE, SVP_IN_INPLINE, MDR_IS_NUM, MDR_IS_ALPHA, STACK_IS_FULL, STACK_IS_EMPTY, MDR_MATCHES_ILCODEBYTE | MDR_MATCHES_VARNAME, R_IS_ZERO, Y_ZERO   | CP_SKIP, Y_SIGN, ALU_READY  | LS_PARAMS_OK, ALU_OVERFLOW  | LS_PASSED_END, ALU_SIGN  | LS_IN_RANGE, AT_TAB, OFF_IS_ZERO, IS_RUNMODE, S_EQU_DB_MOD32, CACHE_VALID  | FOR_SET, CACHE_HIT  | NEXT_SET, false default true;
--
alias mb_seq_cond: 	std_logic_vector(4 downto 0) is mb_uinstruction(77 downto 73);
constant seq_cond_true: 	integer := 0;
constant seq_cond_ILCODEBYTE_BIT7: 	integer := 1;
constant seq_cond_CHAROUT_READY: 	integer := 2;
constant seq_cond_TB_EXTENDED: 	integer := 3;
constant seq_cond_DBG_READY: 	integer := 4;
constant seq_cond_KBD_BREAK: 	integer := 4;
constant seq_cond_MDR_MATCHES_DB: 	integer := 5;
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
constant seq_cond_MDR_MATCHES_VARNAME: 	integer := 18;
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
constant seq_cond_S_EQU_DB_MOD32: 	integer := 28;
constant seq_cond_CACHE_VALID: 	integer := 29;
constant seq_cond_FOR_SET: 	integer := 29;
constant seq_cond_CACHE_HIT: 	integer := 30;
constant seq_cond_NEXT_SET: 	integer := 30;
constant seq_cond_false: 	integer := 31;
---- Start boilerplate code (use with utmost caution!)
---- include '.controller <filename.vhd>, <stackdepth>;' in .mcc file to generate pre-canned microcode control unit and feed 'conditions' with:
--  cond(seq_cond_true) => '1',
--  cond(seq_cond_ILCODEBYTE_BIT7) => ILCODEBYTE_BIT7,
--  cond(seq_cond_CHAROUT_READY) => CHAROUT_READY,
--  cond(seq_cond_TB_EXTENDED) => TB_EXTENDED,
--  cond(seq_cond_DBG_READY | KBD_BREAK) => DBG_READY | KBD_BREAK,
--  cond(seq_cond_MDR_MATCHES_DB) => MDR_MATCHES_DB,
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
--  cond(seq_cond_MDR_MATCHES_ILCODEBYTE | MDR_MATCHES_VARNAME) => MDR_MATCHES_ILCODEBYTE | MDR_MATCHES_VARNAME,
--  cond(seq_cond_R_IS_ZERO) => R_IS_ZERO,
--  cond(seq_cond_Y_ZERO   | CP_SKIP) => Y_ZERO   | CP_SKIP,
--  cond(seq_cond_Y_SIGN) => Y_SIGN,
--  cond(seq_cond_ALU_READY  | LS_PARAMS_OK) => ALU_READY  | LS_PARAMS_OK,
--  cond(seq_cond_ALU_OVERFLOW  | LS_PASSED_END) => ALU_OVERFLOW  | LS_PASSED_END,
--  cond(seq_cond_ALU_SIGN  | LS_IN_RANGE) => ALU_SIGN  | LS_IN_RANGE,
--  cond(seq_cond_AT_TAB) => AT_TAB,
--  cond(seq_cond_OFF_IS_ZERO) => OFF_IS_ZERO,
--  cond(seq_cond_IS_RUNMODE) => IS_RUNMODE,
--  cond(seq_cond_S_EQU_DB_MOD32) => S_EQU_DB_MOD32,
--  cond(seq_cond_CACHE_VALID  | FOR_SET) => CACHE_VALID  | FOR_SET,
--  cond(seq_cond_CACHE_HIT  | NEXT_SET) => CACHE_HIT  | NEXT_SET,
--  cond(seq_cond_false) => '0',
---- End boilerplate code

--
-- L0051.seq_then: .then 9 values next | continue, repeat, return, fork, @ default next;
--
alias mb_seq_then: 	std_logic_vector(8 downto 0) is mb_uinstruction(72 downto 64);
constant seq_then_next: 	std_logic_vector(8 downto 0) := O"000";
constant seq_then_continue: 	std_logic_vector(8 downto 0) := O"000";
constant seq_then_repeat: 	std_logic_vector(8 downto 0) := O"001";
constant seq_then_return: 	std_logic_vector(8 downto 0) := O"002";
constant seq_then_fork: 	std_logic_vector(8 downto 0) := O"003";
-- include '.controller <filename.vhd>, <stackdepth>;' in .mcc file to generate pre-canned microcode control unit and connect 'then' to mb_seq_then

--
-- L0052.seq_else: .else 9 values next | continue, repeat, return, fork, 0b000000..0b111111, @ default next;
--
alias mb_seq_else: 	std_logic_vector(8 downto 0) is mb_uinstruction(63 downto 55);
constant seq_else_next: 	std_logic_vector(8 downto 0) := O"000";
constant seq_else_continue: 	std_logic_vector(8 downto 0) := O"000";
constant seq_else_repeat: 	std_logic_vector(8 downto 0) := O"001";
constant seq_else_return: 	std_logic_vector(8 downto 0) := O"002";
constant seq_else_fork: 	std_logic_vector(8 downto 0) := O"003";
-- include '.controller <filename.vhd>, <stackdepth>;' in .mcc file to generate pre-canned microcode control unit and connect 'else' to mb_seq_else

--
-- L0055.directByte: .valfield 7 values 0x00..0x7F default 0x7F;
--
alias mb_directByte: 	std_logic_vector(6 downto 0) is mb_uinstruction(54 downto 48);
---- Start boilerplate code (use with utmost caution!)
--  directByte <= mb_directByte;
---- End boilerplate code

--
-- L0058.T: .regfield 5 values same, IL_PC, XQhere, from_vars, ExpStack, from_YLo, from_YHi, zero, codeByte, MDR, MDRx2, inc, dec, BP, Prog_start, PrgEnd, from_S, from_R, save, recall, BasStack_Hi, BasStack_Lo, Cache_Data, LS, binop, fromTicks, from_var_For, from_var_Next, index2address, -, -, - default same;
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
constant T_binop: 	std_logic_vector(4 downto 0) := "11000";
constant T_fromTicks: 	std_logic_vector(4 downto 0) := "11001";
constant T_from_var_For: 	std_logic_vector(4 downto 0) := "11010";
constant T_from_var_Next: 	std_logic_vector(4 downto 0) := "11011";
constant T_index2address: 	std_logic_vector(4 downto 0) := "11100";
-- Value "11101" not allowed (name '-' is not assignable)
-- Value "11110" not allowed (name '-' is not assignable)
-- Value "11111" not allowed (name '-' is not assignable)
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
--			when T_binop =>
--				T <= binop;
--			when T_fromTicks =>
--				T <= Ticks;
--			when T_from_var_For =>
--				T <= var_For;
--			when T_from_var_Next =>
--				T <= var_Next;
--			when T_index2address =>
--				T <= index2address;
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
-- L0219.Vars: .regfield 3 values same, indexFromExpStack, T, -, for_fromLino, next_fromBP, for_clear, next_clear default same;
--
alias mb_Vars: 	std_logic_vector(2 downto 0) is mb_uinstruction(12 downto 10);
constant Vars_same: 	std_logic_vector(2 downto 0) := O"0";
constant Vars_indexFromExpStack: 	std_logic_vector(2 downto 0) := O"1";
constant Vars_T: 	std_logic_vector(2 downto 0) := O"2";
-- Value O"3" not allowed (name '-' is not assignable)
constant Vars_for_fromLino: 	std_logic_vector(2 downto 0) := O"4";
constant Vars_next_fromBP: 	std_logic_vector(2 downto 0) := O"5";
constant Vars_for_clear: 	std_logic_vector(2 downto 0) := O"6";
constant Vars_next_clear: 	std_logic_vector(2 downto 0) := O"7";
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
--			when Vars_for_fromLino =>
--				Vars <= for_fromLino;
--			when Vars_next_fromBP =>
--				Vars <= next_fromBP;
--			when Vars_for_clear =>
--				Vars <= for_clear;
--			when Vars_next_clear =>
--				Vars <= next_clear;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0231.alu: .regfield 5 values nop, reset0, reset1, R_fromStack, S_fromStack, S_plus_R, S_minus_R, neg_R, S_mul_R, Yx16, bcd_start, bcd_next, div_start, div_shift, div_subset, div_end, Yx10_plus_MDR, Rx256_plus_MDR, S_fromT, R_fromT, S_fromLino, copy_init_del, copy_next, copy_init_ins, ls_load, ls_check, Y_save, Y_recall, cache_store, for_step, for_check, - default nop;
--
alias mb_alu: 	std_logic_vector(4 downto 0) is mb_uinstruction(9 downto 5);
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
constant alu_cache_store: 	std_logic_vector(4 downto 0) := "11100";
constant alu_for_step: 	std_logic_vector(4 downto 0) := "11101";
constant alu_for_check: 	std_logic_vector(4 downto 0) := "11110";
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
--			when alu_cache_store =>
--				alu <= cache_store;
--			when alu_for_step =>
--				alu <= for_step;
--			when alu_for_check =>
--				alu <= for_check;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0267.Lino: .regfield 1 values same, T default same;
--
alias mb_Lino: 	std_logic is mb_uinstruction(4);
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
-- L0273.BE: .regfield 1 values same, T default same;
--
alias mb_BE: 	std_logic is mb_uinstruction(3);
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
-- L0279.LS: .regfield 1 values same, T default same;
--
alias mb_LS: 	std_logic is mb_uinstruction(2);
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
-- L0285.LE: .regfield 1 values same, T default same;
--
alias mb_LE: 	std_logic is mb_uinstruction(1);
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
-- L0291.PrgEnd: .regfield 1 values same, T default same;
--
alias mb_PrgEnd: 	std_logic is mb_uinstruction(0);
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



constant mb_microcode: mb_code_memory := (

-- nop;
-- L0354@0000 C00000FF000000000000._reset:  if true then continue else repeat;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
0 => '1' & '1' & "00000" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= zero;
-- L0356@0001 C000007F380000000000._reset1:  T <= zero;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
1 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- XQhere <= T;
-- L0358@0002 C000007F002000000000._reset2:  XQhere <= T;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 1, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
2 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '1' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- nop;
-- L0360@0003 C00000FF000000000000._reset3:  if true then continue else repeat;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
3 => '1' & '1' & "00000" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- write2Nulls(Prog_start);
-- L0365@0004 C1BCDE7F700000000000.ColdStart:  write2Nulls(Prog_start);
--  nWR = 1, nRD = 1, if (00000) then 110111100 else 110111100, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
4 => '1' & '1' & "00000" & O"674" & O"674" & "1111111" & "01110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- clear, findPrgEnd();
-- L0366@0005 C1188C7F3C0520000020.WarmStart:  DBGINDEX <= zero, ExpStack <= clear, RetStack <= clear, BasStack <= clear, T <= zero, alu <= reset0, findPrgEnd();
--  nWR = 1, nRD = 1, if (00000) then 100011000 else 100011000, directByte = 1111111, T <= 00111, DBGINDEX <= 10, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 01, BasStack <= 01, ExpStack <= 001, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
5 => '1' & '1' & "00000" & O"430" & O"430" & "1111111" & "00111" & "10" & O"0" & '0' & '0' & "01" & "01" & O"1" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00001" & '0' & '0' & '0' & '0' & '0',

-- BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= zero;
-- L0367@0006 C000007F380000094000.  BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= zero;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 001, SvPt <= 01, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
6 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "01" & O"1" & "01" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, IL_PC <= T, write2Nulls(BP);
-- L0368@0007 C1BCDE7F68C000000010.  Lino <= T, IL_PC <= T, write2Nulls(BP);
--  nWR = 1, nRD = 1, if (00000) then 110111100 else 110111100, directByte = 1111111, T <= 01101, DBGINDEX <= 00, IL_PC <= 011, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
7 => '1' & '1' & "00000" & O"674" & O"674" & "1111111" & "01101" & "00" & O"3" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '1' & '0' & '0' & '0' & '0',

-- traceString 51;
-- L0370@0008 C1F4FA33020000000000.fetch:  trace(from_microcode), directByte = 51;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0110011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
8 => '1' & '1' & "00000" & O"764" & O"764" & "0110011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 2;
-- L0371@0009 C1F4FA02020000000000.fetch1:  trace(from_microcode), directByte = 2;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0000010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
9 => '1' & '1' & "00000" & O"764" & O"764" & "0000010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_OP <= from_interpreter, IL_PC <= inc, traceSDepth;
-- L0372@000A C1F4FA38029000000000.  IL_OP <= from_interpreter, IL_PC <= inc, trace(from_microcode), directByte = 56;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0111000, T <= 00000, DBGINDEX <= 01, IL_PC <= 010, XQhere <= 0, IL_OP <= 1, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
10 => '1' & '1' & "00000" & O"764" & O"764" & "0111000" & "00000" & "01" & O"2" & '0' & '1' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= zero, alu <= reset0, if true then fork else INTERNAL_ERR;
-- L0373@000B C003CD7F380000000020.  T <= zero, alu <= reset0, if true then fork else INTERNAL_ERR;
--  nWR = 1, nRD = 1, if (00000) then 000000011 else 110011010, directByte = 1111111, T <= 00111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
11 => '1' & '1' & "00000" & O"003" & O"632" & "1111111" & "00111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00001" & '0' & '0' & '0' & '0' & '0',

-- goto INTERNAL_ERR;
-- L0376@000C FE00CD7F000000000000.badop:  if false then continue else INTERNAL_ERR;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110011010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
12 => '1' & '1' & "11111" & O"000" & O"632" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 15;
-- L0381@000D C1F4FA0F020000000000.  trace(from_microcode), directByte = 15;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0001111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
13 => '1' & '1' & "00000" & O"764" & O"764" & "0001111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= startSwap, traceString 51;
-- L0382@000E C1F4FA33020040000000.  ExpStack <= startSwap, trace(from_microcode), directByte = 51;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0110011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 010, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
14 => '1' & '1' & "00000" & O"764" & O"764" & "0110011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"2" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= endSwap, goto fetch1;
-- L0383@000F FE0004FF000060000000.  ExpStack <= endSwap, if false then continue else fetch1;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 011, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
15 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"3" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 15;
-- L0386@0010 C1F4FA0F020000000000.  trace(from_microcode), directByte = 15;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0001111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
16 => '1' & '1' & "00000" & O"764" & O"764" & "0001111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0387@0011 FE00047F000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
17 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 12;
-- L0392@0012 C1F4FA0C020000000000.  trace(from_microcode), directByte = 12;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0001100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
18 => '1' & '1' & "00000" & O"764" & O"764" & "0001100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0393@0013 FE00047F000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
19 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 28;
-- L0398@0014 C1F4FA1C020000000000.  trace(from_microcode), directByte = 28;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0011100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
20 => '1' & '1' & "00000" & O"764" & O"764" & "0011100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 3, T <= codeByte;
-- L0399@0015 C1F4FA03420000000000.lb_push:  trace(from_microcode), directByte = 3, T <= codeByte;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0000011, T <= 01000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
21 => '1' & '1' & "00000" & O"764" & O"764" & "0000011" & "01000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TByte;
-- L0400@0016 C000007F0000A0000000.  ExpStack <= push_TByte;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 101, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
22 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"5" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
-- L0401@0017 E19C047F008000000000.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
--  nWR = 1, nRD = 1, if (10000) then 110011100 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
23 => '1' & '1' & "10000" & O"634" & O"010" & "1111111" & "00000" & "00" & O"2" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 29;
-- L0406@0018 C1F4FA1D020000000000.  trace(from_microcode), directByte = 29;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0011101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
24 => '1' & '1' & "00000" & O"764" & O"764" & "0011101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 3, T <= codeByte;
-- L0407@0019 C1F4FA03420000000000.  trace(from_microcode), directByte = 3, T <= codeByte;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0000011, T <= 01000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
25 => '1' & '1' & "00000" & O"764" & O"764" & "0000011" & "01000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TByte;
-- L0408@001A C000007F0000A0000000.  ExpStack <= push_TByte;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 101, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
26 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"5" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
-- L0409@001B E19C0AFF008000000000.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
--  nWR = 1, nRD = 1, if (10000) then 110011100 else 000010101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
27 => '1' & '1' & "10000" & O"634" & O"025" & "1111111" & "00000" & "00" & O"2" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 38;
-- L0414@001C C1F4FA26020000000000.  trace(from_microcode), directByte = 38;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0100110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
28 => '1' & '1' & "00000" & O"764" & O"764" & "0100110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0415@001D E39C007F000000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110011100 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
29 => '1' & '1' & "10001" & O"634" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR;
-- L0416@001E E19C007F200000000000.  T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10000) then 110011100 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
30 => '1' & '1' & "10000" & O"634" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, goto fetch;
-- L0417@001F FE00047F000080000000.  ExpStack <= push_TWord, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
31 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 34;
-- L0422@0020 C1F4FA22020000000000.  trace(from_microcode), directByte = 34;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0100010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
32 => '1' & '1' & "00000" & O"764" & O"764" & "0100010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0423@0021 E39C007F000000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110011100 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
33 => '1' & '1' & "10001" & O"634" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= pop2, goto fetch;
-- L0424@0022 FE00047F0000C0000000.  ExpStack <= pop2, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
34 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 10;
-- L0429@0023 C1F4FA0A020000000000.  trace(from_microcode), directByte = 10;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0001010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
35 => '1' & '1' & "00000" & O"764" & O"764" & "0001010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if BP_IN_INPLINE then next else ptr_exc;
-- L0430@0024 D800157F000000000000.  if BP_IN_INPLINE then next else ptr_exc;
--  nWR = 1, nRD = 1, if (01100) then 000000000 else 000101010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
36 => '1' & '1' & "01100" & O"000" & O"052" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- SvPt <= BP;
-- L0431@0025 C000007F000000008000.save_bp:  SvPt <= BP;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 10, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
37 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "10" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceBP();
-- L0432@0026 C1E7F3FF000000000000.bp_done:  traceBP();
--  nWR = 1, nRD = 1, if (00000) then 111100111 else 111100111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
38 => '1' & '1' & "00000" & O"747" & O"747" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0433@0027 FE00047F000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
39 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 11;
-- L0438@0028 C1F4FA0B020000000000.  trace(from_microcode), directByte = 11;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0001011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
40 => '1' & '1' & "00000" & O"764" & O"764" & "0001011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if SVP_IN_INPLINE then save_bp;
-- L0439@0029 DA25007F000000000000.  if SVP_IN_INPLINE then save_bp;
--  nWR = 1, nRD = 1, if (01101) then 000100101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
41 => '1' & '1' & "01101" & O"045" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- SvPt <= BP, BP <= SvPt, goto bp_done;
-- L0440@002A FE00137F000000028000.ptr_exc:  SvPt <= BP, BP <= SvPt, if false then continue else bp_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000100110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 010, SvPt <= 10, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
42 => '1' & '1' & "11111" & O"000" & O"046" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"2" & "10" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 36;
-- L0445@002B C1F4FA24020000000000.  trace(from_microcode), directByte = 36;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0100100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
43 => '1' & '1' & "00000" & O"764" & O"764" & "0100100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0446@002C E39C007F000000000400.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110011100 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 001, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
44 => '1' & '1' & "10001" & O"634" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"1" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= from_vars, ExpStack <= pop1, traceString 51;
-- L0447@002D C1F4FA331A00E0000000.  T <= from_vars, ExpStack <= pop1, trace(from_microcode), directByte = 51;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0110011, T <= 00011, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 111, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
45 => '1' & '1' & "00000" & O"764" & O"764" & "0110011" & "00011" & "01" & O"0" & '0' & '0' & "00" & "00" & O"7" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, goto fetch1;
-- L0448@002E FE0004FF000080000000.  ExpStack <= push_TWord, if false then continue else fetch1;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
46 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 37;
-- L0453@002F C1F4FA25020000000000.  trace(from_microcode), directByte = 37;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0100101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
47 => '1' & '1' & "00000" & O"764" & O"764" & "0100101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0454@0030 E39C007F000000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110011100 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
48 => '1' & '1' & "10001" & O"634" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, ExpStack <= pop2;
-- L0455@0031 C000007F2000C0000000.  T <= ExpStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
49 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0456@0032 E39C007F000000000400.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110011100 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 001, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
50 => '1' & '1' & "10001" & O"634" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"1" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= pop1, Vars <= T, goto fetch;
-- L0457@0033 FE00047F0000E0000800.  ExpStack <= pop1, Vars <= T, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 111, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 010, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
51 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"7" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"2" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 47;
-- L0462@0034 C1F4FA2F020000000000.  trace(from_microcode), directByte = 47;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0101111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
52 => '1' & '1' & "00000" & O"764" & O"764" & "0101111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if IS_RUNMODE then next else INTERNAL_ERR;
-- L0463@0035 F600CD7F000000000000.  if IS_RUNMODE then next else INTERNAL_ERR;
--  nWR = 1, nRD = 1, if (11011) then 000000000 else 110011010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
53 => '1' & '1' & "11011" & O"000" & O"632" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_FULL then BSTACK_ERR;
-- L0464@0036 E1A0007F000000000000.  if STACK_IS_FULL then BSTACK_ERR;
--  nWR = 1, nRD = 1, if (10000) then 110100000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
54 => '1' & '1' & "10000" & O"640" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- BasStack <= push_Lino_and_BP, goto fetch;
-- L0465@0037 FE00047F000300000000.  BasStack <= push_Lino_and_BP, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 11, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
55 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "11" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 48;
-- L0470@0038 C1F4FA30020000000000.  trace(from_microcode), directByte = 48;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0110000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
56 => '1' & '1' & "00000" & O"764" & O"764" & "0110000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if IS_RUNMODE then next else INTERNAL_ERR;
-- L0471@0039 F600CD7F000000000000.  if IS_RUNMODE then next else INTERNAL_ERR;
--  nWR = 1, nRD = 1, if (11011) then 000000000 else 110011010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
57 => '1' & '1' & "11011" & O"000" & O"632" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= BasStack_Hi,if STACK_IS_EMPTY then BSTACK_ERR;
-- L0472@003A E3A0007FA00000000000.  T <= BasStack_Hi,if STACK_IS_EMPTY then BSTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110100000 else 000000000, directByte = 1111111, T <= 10100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
58 => '1' & '1' & "10001" & O"640" & O"000" & "1111111" & "10100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, T <= BasStack_Lo, traceString 51;
-- L0473@003B C1F4FA33AA0000000010.  Lino <= T, T <= BasStack_Lo, trace(from_microcode), directByte = 51;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0110011, T <= 10101, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
59 => '1' & '1' & "00000" & O"764" & O"764" & "0110011" & "10101" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '1' & '0' & '0' & '0' & '0',

-- BP <= T, BasStack <= pop, goto fetch1;
-- L0474@003C FE0004FF000200060000.  BP <= T, BasStack <= pop, if false then continue else fetch1;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 10, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
60 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "10" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 45;
-- L0479@003D C1F4FA2D020000000000.  trace(from_microcode), directByte = 45;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0101101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
61 => '1' & '1' & "00000" & O"764" & O"764" & "0101101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= XQhere, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0480@003E E39C007F004000000000.  IL_PC <= XQhere, if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110011100 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 001, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
62 => '1' & '1' & "10001" & O"634" & O"000" & "1111111" & "00000" & "00" & O"1" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0481@003F C000007F0000C0000060.  alu <= R_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
63 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00011" & '0' & '0' & '0' & '0' & '0',

-- T <= from_R;
-- L0482@0040 C000007F880000000000.  T <= from_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
64 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, if R_IS_ZERO then NOPROG_ERR;
-- L0483@0041 E792007F000000000010.  Lino <= T, if R_IS_ZERO then NOPROG_ERR;
--  nWR = 1, nRD = 1, if (10011) then 110010010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
65 => '1' & '1' & "10011" & O"622" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '1' & '0' & '0' & '0' & '0',

-- T <= Cache_Data, if CACHE_VALID then go_cvalid;
-- L0485@0042 FA45007FB00000000000.  T <= Cache_Data, if CACHE_VALID then go_cvalid;
--  nWR = 1, nRD = 1, if (11101) then 001000101 else 000000000, directByte = 1111111, T <= 10110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
66 => '1' & '1' & "11101" & O"105" & O"000" & "1111111" & "10110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findLino(Prog_start);
-- L0487@0043 C048247F700000000000.  findLino(Prog_start);
--  nWR = 1, nRD = 1, if (00000) then 001001000 else 001001000, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
67 => '1' & '1' & "00000" & O"110" & O"110" & "1111111" & "01110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= cache_store, goto fetch;
-- L0488@0044 FE00047F000000000380.  alu <= cache_store, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 11100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
68 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "11100" & '0' & '0' & '0' & '0' & '0',

-- BP <= T, if CACHE_HIT then fetch else go_cmiss;
-- L0490@0045 FC08237F000000060000.go_cvalid:  BP <= T, if CACHE_HIT then fetch else go_cmiss;
--  nWR = 1, nRD = 1, if (11110) then 000001000 else 001000110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
69 => '1' & '1' & "11110" & O"010" & O"106" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findLino(Prog_start);
-- L0495@0046 C048247F700000000000.go_cmiss:  findLino(Prog_start);
--  nWR = 1, nRD = 1, if (00000) then 001001000 else 001001000, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
70 => '1' & '1' & "00000" & O"110" & O"110" & "1111111" & "01110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0496@0047 FE00047F000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
71 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= reset1, readCore(T);
-- L0498@0048 C1DEEF7F000003000040.findLino:  alu <= reset1, readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111011110 else 111011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
72 => '1' & '1' & "00000" & O"736" & O"736" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00010" & '0' & '0' & '0' & '0' & '0',

-- alu <= Rx256_plus_MDR, T <= inc;
-- L0499@0049 C000007F580000000220.  alu <= Rx256_plus_MDR, T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
73 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10001" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromLino, readCore(T);
-- L0500@004A C1DEEF7F000003000280.  alu <= S_fromLino, readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111011110 else 111011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
74 => '1' & '1' & "00000" & O"736" & O"736" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10100" & '0' & '0' & '0' & '0' & '0',

-- alu <= Rx256_plus_MDR, T <= inc;
-- L0501@004B C000007F580000000220.  alu <= Rx256_plus_MDR, T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
75 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10001" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_minus_R, if R_IS_ZERO then stop_run;
-- L0502@004C E739007F0000000000C0.  alu <= S_minus_R, if R_IS_ZERO then stop_run;
--  nWR = 1, nRD = 1, if (10011) then 100111001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
76 => '1' & '1' & "10011" & O"471" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00110" & '0' & '0' & '0' & '0' & '0',

-- BP <= T, if Y_ZERO then return;
-- L0503@004D E802007F000000060000.  BP <= T, if Y_ZERO then return;
--  nWR = 1, nRD = 1, if (10100) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
77 => '1' & '1' & "10100" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findNextCR(same);
-- L0504@004E C1B5DAFF000000000000.  findNextCR(same);
--  nWR = 1, nRD = 1, if (00000) then 110110101 else 110110101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
78 => '1' & '1' & "00000" & O"665" & O"665" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto findLino;
-- L0505@004F FE00247F580000000000.  T <= inc, if false then continue else findLino;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 001001000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
79 => '1' & '1' & "11111" & O"000" & O"110" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 25;
-- L0510@0050 C1F4FA19020000000000.  trace(from_microcode), directByte = 25;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0011001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
80 => '1' & '1' & "00000" & O"764" & O"764" & "0011001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0511@0051 E39C007F000000000060.  alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110011100 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
81 => '1' & '1' & "10001" & O"634" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00011" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= pop2;
-- L0512@0052 C000007F0000C0000000.  ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
82 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= neg_R, if ALU_READY then alu_done else repeat;
-- L0513@0053 EC5700FF0000000000E0.  alu <= neg_R, if ALU_READY then alu_done else repeat;
--  nWR = 1, nRD = 1, if (10110) then 001010111 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
83 => '1' & '1' & "10110" & O"127" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00111" & '0' & '0' & '0' & '0' & '0',

-- traceString 22;
-- L0518@0054 C1F4FA16020000000000.  trace(from_microcode), directByte = 22;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0010110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
84 => '1' & '1' & "00000" & O"764" & O"764" & "0010110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- pullRS();
-- L0519@0055 C1BFDFFF000000000000.  pullRS();
--  nWR = 1, nRD = 1, if (00000) then 110111111 else 110111111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
85 => '1' & '1' & "00000" & O"677" & O"677" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_plus_R, if ALU_READY then next else repeat;
-- L0520@0056 EC0000FF0000000000A0.  alu <= S_plus_R, if ALU_READY then next else repeat;
--  nWR = 1, nRD = 1, if (10110) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
86 => '1' & '1' & "10110" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00101" & '0' & '0' & '0' & '0' & '0',

-- traceALU();
-- L0521@0057 C1EDF6FF000000000000.alu_done:  traceALU();
--  nWR = 1, nRD = 1, if (00000) then 111101101 else 111101101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
87 => '1' & '1' & "00000" & O"755" & O"755" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
-- L0522@0058 EF96007F280000000000.  T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
--  nWR = 1, nRD = 1, if (10111) then 110010110 else 000000000, directByte = 1111111, T <= 00101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
88 => '1' & '1' & "10111" & O"626" & O"000" & "1111111" & "00101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, goto fetch;
-- L0523@0059 FE00047F000080000000.  ExpStack <= push_TWord, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
89 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 23;
-- L0528@005A C1F4FA17020000000000.  trace(from_microcode), directByte = 23;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0010111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
90 => '1' & '1' & "00000" & O"764" & O"764" & "0010111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- pullRS();
-- L0529@005B C1BFDFFF000000000000.  pullRS();
--  nWR = 1, nRD = 1, if (00000) then 110111111 else 110111111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
91 => '1' & '1' & "00000" & O"677" & O"677" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_minus_R, if ALU_READY then alu_done else repeat;
-- L0530@005C EC5700FF0000000000C0.  alu <= S_minus_R, if ALU_READY then alu_done else repeat;
--  nWR = 1, nRD = 1, if (10110) then 001010111 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
92 => '1' & '1' & "10110" & O"127" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00110" & '0' & '0' & '0' & '0' & '0',

-- traceString 24;
-- L0535@005D C1F4FA18020000000000.  trace(from_microcode), directByte = 24;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0011000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
93 => '1' & '1' & "00000" & O"764" & O"764" & "0011000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- pullRS();
-- L0536@005E C1BFDFFF000000000000.  pullRS();
--  nWR = 1, nRD = 1, if (00000) then 110111111 else 110111111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
94 => '1' & '1' & "00000" & O"677" & O"677" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_mul_R, if ALU_READY then alu_done else repeat;
-- L0537@005F EC5700FF000000000100.  alu <= S_mul_R, if ALU_READY then alu_done else repeat;
--  nWR = 1, nRD = 1, if (10110) then 001010111 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 01000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
95 => '1' & '1' & "10110" & O"127" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "01000" & '0' & '0' & '0' & '0' & '0',

-- traceString 35;
-- L0542@0060 C1F4FA23020000000000.  trace(from_microcode), directByte = 35;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0100011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
96 => '1' & '1' & "00000" & O"764" & O"764" & "0100011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- pullRS();
-- L0543@0061 C1BFDFFF000000000000.  pullRS();
--  nWR = 1, nRD = 1, if (00000) then 110111111 else 110111111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
97 => '1' & '1' & "00000" & O"677" & O"677" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
-- L0544@0062 E794007F000000000180.  alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
--  nWR = 1, nRD = 1, if (10011) then 110010100 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 01100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
98 => '1' & '1' & "10011" & O"624" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "01100" & '0' & '0' & '0' & '0' & '0',

-- alu <= div_shift;
-- L0545@0063 C000007F0000000001A0.div_loop:  alu <= div_shift;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 01101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
99 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "01101" & '0' & '0' & '0' & '0' & '0',

-- if ALU_READY then div_done;
-- L0546@0064 EC66007F000000000000.  if ALU_READY then div_done;
--  nWR = 1, nRD = 1, if (10110) then 001100110 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
100 => '1' & '1' & "10110" & O"146" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= div_subset, goto div_loop;
-- L0547@0065 FE0031FF0000000001C0.  alu <= div_subset, if false then continue else div_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 001100011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 01110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
101 => '1' & '1' & "11111" & O"000" & O"143" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "01110" & '0' & '0' & '0' & '0' & '0',

-- alu <= div_end, goto alu_done;
-- L0548@0066 FE002BFF0000000001E0.div_done:  alu <= div_end, if false then continue else alu_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 001010111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 01111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
102 => '1' & '1' & "11111" & O"000" & O"127" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "01111" & '0' & '0' & '0' & '0' & '0',

-- traceString 46;
-- L0553@0067 C1F4FA2E020000000000.  trace(from_microcode), directByte = 46;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0101110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
103 => '1' & '1' & "00000" & O"764" & O"764" & "0101110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0554@0068 C000007F0000C0000060.  alu <= R_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
104 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00011" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TByte;
-- L0555@0069 C000007F0000A0000000.  ExpStack <= push_TByte;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 101, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
105 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"5" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, ExpStack <= pop2;
-- L0556@006A C000007F2000C0000000.  T <= ExpStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
106 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromStack, ExpStack <= pop2;
-- L0557@006B C000007F0000C0000080.  alu <= S_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
107 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00100" & '0' & '0' & '0' & '0' & '0',

-- if CP_SKIP then next else fetch;
-- L0558@006C E800047F000000000000.  if CP_SKIP then next else fetch;
--  nWR = 1, nRD = 1, if (10100) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
108 => '1' & '1' & "10100" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= inc, goto fetch;
-- L0559@006D FE00047F008000000000.  IL_PC <= inc, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
109 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"2" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 39;
-- L0564@006E C1F4FA27020000000000.  trace(from_microcode), directByte = 39;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0100111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
110 => '1' & '1' & "00000" & O"764" & O"764" & "0100111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= T, if IS_RUNMODE then next else fetch;
-- L0565@006F F600047F00C000000000.  IL_PC <= T, if IS_RUNMODE then next else fetch;
--  nWR = 1, nRD = 1, if (11011) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 011, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
111 => '1' & '1' & "11011" & O"000" & O"010" & "1111111" & "00000" & "00" & O"3" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findNx();
-- L0566@0070 C0743A7F000000000000.  findNx();
--  nWR = 1, nRD = 1, if (00000) then 001110100 else 001110100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
112 => '1' & '1' & "00000" & O"164" & O"164" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, IL_PC <= XQhere;
-- L0567@0071 C000007F004000000010.  Lino <= T, IL_PC <= XQhere;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 001, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
113 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"1" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '1' & '0' & '0' & '0' & '0',

-- traceBP();
-- L0569@0072 C1E7F3FF000000000000.  traceBP();
--  nWR = 1, nRD = 1, if (00000) then 111100111 else 111100111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
114 => '1' & '1' & "00000" & O"747" & O"747" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if KBD_BREAK then BREAK else fetch;
-- L0570@0073 C98C047F000000000000.  if KBD_BREAK then BREAK else fetch;
--  nWR = 1, nRD = 1, if (00100) then 110001100 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
115 => '1' & '1' & "00100" & O"614" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findNextCR(BP);
-- L0572@0074 C1B5DAFF680000000000.findNx:  findNextCR(BP);
--  nWR = 1, nRD = 1, if (00000) then 110110101 else 110110101, directByte = 1111111, T <= 01101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
116 => '1' & '1' & "00000" & O"665" & O"665" & "1111111" & "01101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc;
-- L0573@0075 C000007F580000000000.  T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
117 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- BP <= T;
-- L0574@0076 C000007F000000060000.  BP <= T;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
118 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore16(BP);
-- L0575@0077 C1B8DC7F680000000000.  readCore16(BP);
--  nWR = 1, nRD = 1, if (00000) then 110111000 else 110111000, directByte = 1111111, T <= 01101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
119 => '1' & '1' & "00000" & O"670" & O"670" & "1111111" & "01101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- BP <= T, T <= from_R, if R_IS_ZERO then next else return;
-- L0576@0078 E600017F880000060000.  BP <= T, T <= from_R, if R_IS_ZERO then next else return;
--  nWR = 1, nRD = 1, if (10011) then 000000000 else 000000010, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
120 => '1' & '1' & "10011" & O"000" & O"002" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = BEEP, outChar(from_microcode);
-- L0577@0079 C1DBED87000008000000.nx_err:  directByte = 0x07, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 0000111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
121 => '1' & '1' & "00000" & O"733" & O"733" & "0000111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto stop_run;
-- L0578@007A FE009CFF000000000000.  if false then continue else stop_run;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 100111001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
122 => '1' & '1' & "11111" & O"000" & O"471" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 41;
-- L0583@007B C1F4FA29020000000000.  trace(from_microcode), directByte = 41;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0101001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
123 => '1' & '1' & "00000" & O"764" & O"764" & "0101001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= reset1, if IS_RUNMODE then badop;
-- L0584@007C F60C007F000000000040.  alu <= reset1, if IS_RUNMODE then badop;
--  nWR = 1, nRD = 1, if (11011) then 000001100 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
124 => '1' & '1' & "11011" & O"014" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00010" & '0' & '0' & '0' & '0' & '0',

-- T <= from_R, if STACK_IS_EMPTY then ls_parchk;
-- L0585@007D E280007F880000000000.ls_parload:  T <= from_R, if STACK_IS_EMPTY then ls_parchk;
--  nWR = 1, nRD = 1, if (10001) then 010000000 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
125 => '1' & '1' & "10001" & O"200" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromT;
-- L0586@007E C000007F000000000240.  alu <= S_fromT;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
126 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10010" & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2, goto ls_parload;
-- L0587@007F FE003EFF0000C0000060.  alu <= R_fromStack, ExpStack <= pop2, if false then continue else ls_parload;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 001111101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
127 => '1' & '1' & "11111" & O"000" & O"175" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00011" & '0' & '0' & '0' & '0' & '0',

-- alu <= ls_load;
-- L0588@0080 C000007F000000000300.ls_parchk:  alu <= ls_load;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 11000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
128 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "11000" & '0' & '0' & '0' & '0' & '0',

-- if LS_PARAMS_OK then next else SYNTAX_ERR;
-- L0589@0081 EC00CC7F000000000000.  if LS_PARAMS_OK then next else SYNTAX_ERR;
--  nWR = 1, nRD = 1, if (10110) then 000000000 else 110011000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
129 => '1' & '1' & "10110" & O"000" & O"630" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= Prog_start;
-- L0590@0082 C000007F700000000000.ls_start:  T <= Prog_start;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
130 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if CHARIN_READY then next else ls_continue;
-- L0591@0083 D600447F000000000000.ls_lineloop:  if CHARIN_READY then next else ls_continue;
--  nWR = 1, nRD = 1, if (01011) then 000000000 else 010001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
131 => '1' & '1' & "01011" & O"000" & O"210" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if KBD_BREAK then BREAK;
-- L0592@0084 C98C007F000000000000.  if KBD_BREAK then BREAK;
--  nWR = 1, nRD = 1, if (00100) then 110001100 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
132 => '1' & '1' & "00100" & O"614" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_continue;
-- L0593@0085 D4004420000000002000.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_continue;
--  nWR = 1, nRD = 1, if (01010) then 000000000 else 010001000, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
133 => '1' & '1' & "01010" & O"000" & O"210" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if CHARIN_READY then next else repeat;
-- L0594@0086 D60000FF000000000000.ls_pause:  if CHARIN_READY then next else repeat;
--  nWR = 1, nRD = 1, if (01011) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
134 => '1' & '1' & "01011" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
-- L0595@0087 D4004320000000002000.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
--  nWR = 1, nRD = 1, if (01010) then 000000000 else 010000110, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
135 => '1' & '1' & "01010" & O"000" & O"206" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, readCore16(same);
-- L0596@0088 C1B8DC7F000000002000.ls_continue:  gotChar = 1, readCore16(same);
--  nWR = 1, nRD = 1, if (00000) then 110111000 else 110111000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
136 => '1' & '1' & "00000" & O"670" & O"670" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= ls_check, if R_IS_ZERO then fetch;
-- L0597@0089 E608007F000000000320.  alu <= ls_check, if R_IS_ZERO then fetch;
--  nWR = 1, nRD = 1, if (10011) then 000001000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 11001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
137 => '1' & '1' & "10011" & O"010" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "11001" & '0' & '0' & '0' & '0' & '0',

-- if LS_PASSED_END then fetch;
-- L0598@008A EE08007F000000000000.  if LS_PASSED_END then fetch;
--  nWR = 1, nRD = 1, if (10111) then 000001000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
138 => '1' & '1' & "10111" & O"010" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if LS_IN_RANGE then next else ls_nextLine;
-- L0599@008B F0004A7F000000000000.  if LS_IN_RANGE then next else ls_nextLine;
--  nWR = 1, nRD = 1, if (11000) then 000000000 else 010010100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
139 => '1' & '1' & "11000" & O"000" & O"224" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- printDecR(Y_save);
-- L0600@008C C1C4E27F000000000340.  printDecR(Y_save);
--  nWR = 1, nRD = 1, if (00000) then 111000100 else 111000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 11010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
140 => '1' & '1' & "00000" & O"704" & O"704" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "11010" & '0' & '0' & '0' & '0' & '0',

-- alu <= Y_recall, directByte = ' ', outChar(from_microcode);
-- L0601@008D C1DBEDA0000008000360.  alu <= Y_recall, directByte = ' ', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 11011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
141 => '1' & '1' & "00000" & O"733" & O"733" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "11011" & '0' & '0' & '0' & '0' & '0',

-- readCore(T);
-- L0602@008E C1DEEF7F000003000000.ls_charloop:  readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111011110 else 111011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
142 => '1' & '1' & "00000" & O"736" & O"736" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outChar(from_MDR);
-- L0603@008F C1DBEDFF000010000000.  outChar(from_MDR);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 100, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
143 => '1' & '1' & "00000" & O"733" & O"733" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"4" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if MDR_MATCHES_DB then next else ls_next;
-- L0604@0090 CA00498D000000000000.ls_nextchar:  directByte = 0x0D, if MDR_MATCHES_DB then next else ls_next;
--  nWR = 1, nRD = 1, if (00101) then 000000000 else 010010011, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
144 => '1' & '1' & "00101" & O"000" & O"223" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = LF, outChar(from_microcode);
-- L0605@0091 C1DBED8A000008000000.  directByte = 0x0A, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 0001010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
145 => '1' & '1' & "00000" & O"733" & O"733" & "0001010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto ls_lineloop;
-- L0606@0092 FE0041FF580000000000.  T <= inc, if false then continue else ls_lineloop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010000011, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
146 => '1' & '1' & "11111" & O"000" & O"203" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto ls_charloop;
-- L0607@0093 FE00477F580000000000.ls_next:  T <= inc, if false then continue else ls_charloop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010001110, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
147 => '1' & '1' & "11111" & O"000" & O"216" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findNextCR(same);
-- L0608@0094 C1B5DAFF000000000000.ls_nextLine:  findNextCR(same);
--  nWR = 1, nRD = 1, if (00000) then 110110101 else 110110101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
148 => '1' & '1' & "00000" & O"665" & O"665" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto ls_lineloop;
-- L0609@0095 FE0041FF580000000000.  T <= inc, if false then continue else ls_lineloop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010000011, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
149 => '1' & '1' & "11111" & O"000" & O"203" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 26;
-- L0614@0096 C1F4FA1A020000000000.  trace(from_microcode), directByte = 26;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0011010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
150 => '1' & '1' & "00000" & O"764" & O"764" & "0011010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0615@0097 E39C007F000000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110011100 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
151 => '1' & '1' & "10001" & O"634" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- printDec();
-- L0616@0098 C1C3E1FF000000000000.  printDec();
--  nWR = 1, nRD = 1, if (00000) then 111000011 else 111000011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
152 => '1' & '1' & "00000" & O"703" & O"703" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0617@0099 FE00047F000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
153 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 18;
-- L0622@009A C1F4FA12020000000000.  trace(from_microcode), directByte = 18;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0010010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
154 => '1' & '1' & "00000" & O"764" & O"764" & "0010010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- BP <= inc, readCore(BP);
-- L0623@009B C1DEEF7F000002030000.pq_loop:  BP <= inc, readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 111011110 else 111011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
155 => '1' & '1' & "00000" & O"736" & O"736" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"3" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = '"', if MDR_MATCHES_DB then pq_done;
-- L0624@009C CAA00022000000000000.  directByte = '"', if MDR_MATCHES_DB then pq_done;
--  nWR = 1, nRD = 1, if (00101) then 010100000 else 000000000, directByte = 0100010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
156 => '1' & '1' & "00101" & O"240" & O"000" & "0100010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outChar(from_MDR);
-- L0625@009D C1DBEDFF000010000000.  outChar(from_MDR);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 100, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
157 => '1' & '1' & "00000" & O"733" & O"733" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"4" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 3;
-- L0626@009E C1F4FA03020000000000.  trace(from_microcode), directByte = 3;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0000011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
158 => '1' & '1' & "00000" & O"764" & O"764" & "0000011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if MDR_MATCHES_DB then INTERNAL_ERR else pq_loop;
-- L0627@009F CB9A4D8D000000000000.  directByte = 0x0D, if MDR_MATCHES_DB then INTERNAL_ERR else pq_loop;
--  nWR = 1, nRD = 1, if (00101) then 110011010 else 010011011, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
159 => '1' & '1' & "00101" & O"632" & O"233" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceBP();
-- L0628@00A0 C1E7F3FF000000000000.pq_done:  traceBP();
--  nWR = 1, nRD = 1, if (00000) then 111100111 else 111100111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
160 => '1' & '1' & "00000" & O"747" & O"747" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0629@00A1 FE00047F000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
161 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 27;
-- L0634@00A2 C1F4FA1B020000000000.  trace(from_microcode), directByte = 27;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0011011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
162 => '1' & '1' & "00000" & O"764" & O"764" & "0011011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if AT_TAB then fetch;
-- L0635@00A3 F208007F000000000000.pt_loop:  if AT_TAB then fetch;
--  nWR = 1, nRD = 1, if (11001) then 000001000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
163 => '1' & '1' & "11001" & O"010" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', outChar(from_microcode);
-- L0636@00A4 C1DBEDA0000008000000.  directByte = ' ', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
164 => '1' & '1' & "00000" & O"733" & O"733" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto pt_loop;
-- L0637@00A5 FE0051FF000000000000.  if false then continue else pt_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010100011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
165 => '1' & '1' & "11111" & O"000" & O"243" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 6;
-- L0642@00A6 C1F4FA06020000000000.  trace(from_microcode), directByte = 6;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0000110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
166 => '1' & '1' & "00000" & O"764" & O"764" & "0000110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outCRLF();
-- L0643@00A7 C1D9ECFF000000000000.crlf_fetch:  outCRLF();
--  nWR = 1, nRD = 1, if (00000) then 111011001 else 111011001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
167 => '1' & '1' & "00000" & O"731" & O"731" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0644@00A8 FE00047F000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
168 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 5;
-- L0649@00A9 C1F4FA05020000000000.  trace(from_microcode), directByte = 5;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0000101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
169 => '1' & '1' & "00000" & O"764" & O"764" & "0000101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outChar(from_interpreter);
-- L0650@00AA C1DBEDFF000004000000.pc_loop:  outChar(from_interpreter);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 001, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
170 => '1' & '1' & "00000" & O"733" & O"733" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"1" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 3;
-- L0651@00AB C1F4FA03020000000000.  trace(from_microcode), directByte = 3;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0000011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
171 => '1' & '1' & "00000" & O"764" & O"764" & "0000011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
-- L0652@00AC C208557F008000000000.  IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
--  nWR = 1, nRD = 1, if (00001) then 000001000 else 010101010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
172 => '1' & '1' & "00001" & O"010" & O"252" & "1111111" & "00000" & "00" & O"2" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 4;
-- L0657@00AD C1F4FA04020000000000.  trace(from_microcode), directByte = 4;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0000100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
173 => '1' & '1' & "00000" & O"764" & O"764" & "0000100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- pullRS();
-- L0658@00AE C1BFDFFF000000000000.  pullRS();
--  nWR = 1, nRD = 1, if (00000) then 110111111 else 110111111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
174 => '1' & '1' & "00000" & O"677" & O"677" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, ExpStack <= pop2;
-- L0659@00AF C000007F2000C0000000.  T <= ExpStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
175 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0660@00B0 E39C007F000000000400.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110011100 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 001, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
176 => '1' & '1' & "10001" & O"634" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"1" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= pop1, if NEXT_SET then next else for_first;
-- L0662@00B1 FC005AFF0000E0000000.  ExpStack <= pop1, if NEXT_SET then next else for_first;
--  nWR = 1, nRD = 1, if (11110) then 000000000 else 010110101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 111, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
177 => '1' & '1' & "11110" & O"000" & O"265" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"7" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Vars <= for_fromLino, T <= from_vars, if FOR_SET then next else SYNTAX_ERR;
-- L0665@00B2 FA00CC7F180000001000.  Vars <= for_fromLino, T <= from_vars, if FOR_SET then next else SYNTAX_ERR;
--  nWR = 1, nRD = 1, if (11101) then 000000000 else 110011000, directByte = 1111111, T <= 00011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 100, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
178 => '1' & '1' & "11101" & O"000" & O"630" & "1111111" & "00011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"4" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= for_step;
-- L0666@00B3 C000007F0000000003A0.  alu <= for_step;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 11101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
179 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "11101" & '0' & '0' & '0' & '0' & '0',

-- T <= from_YLo, goto for_check;
-- L0667@00B4 FE005B7F280000000000.  T <= from_YLo, if false then continue else for_check;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010110110, directByte = 1111111, T <= 00101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
180 => '1' & '1' & "11111" & O"000" & O"266" & "1111111" & "00101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Vars <= for_fromLino;
-- L0670@00B5 C000007F000000001000.for_first:  Vars <= for_fromLino;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 100, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
181 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"4" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= for_check;
-- L0671@00B6 C000007F0000000003C0.for_check:  alu <= for_check;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 11110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
182 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "11110" & '0' & '0' & '0' & '0' & '0',

-- Vars <= T, if ALU_READY then for_done;
-- L0672@00B7 ECC9007F000000000800.  Vars <= T, if ALU_READY then for_done;
--  nWR = 1, nRD = 1, if (10110) then 011001001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 010, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
183 => '1' & '1' & "10110" & O"311" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"2" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= from_var_Next, if NEXT_SET then next else find_next;
-- L0675@00B8 FC005D7FD80000000000.  T <= from_var_Next, if NEXT_SET then next else find_next;
--  nWR = 1, nRD = 1, if (11110) then 000000000 else 010111010, directByte = 1111111, T <= 11011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
184 => '1' & '1' & "11110" & O"000" & O"272" & "1111111" & "11011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Vars <= for_clear, BP <= T, goto for_done;
-- L0676@00B9 FE0064FF000000061800.  Vars <= for_clear, BP <= T, if false then continue else for_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 011001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 110, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
185 => '1' & '1' & "11111" & O"000" & O"311" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & O"6" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Vars <= for_clear, findNx();
-- L0679@00BA C0743A7F000000001800.find_next:  Vars <= for_clear, findNx();
--  nWR = 1, nRD = 1, if (00000) then 001110100 else 001110100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 110, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
186 => '1' & '1' & "00000" & O"164" & O"164" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"6" & "00000" & '0' & '0' & '0' & '0' & '0',

-- skipSpaces();
-- L0680@00BB C1D2E97F000000000000.  skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 111010010 else 111010010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
187 => '1' & '1' & "00000" & O"722" & O"722" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(BP), BP <= inc;
-- L0681@00BC C1DEEF7F000002030000.  readCore(BP), BP <= inc;
--  nWR = 1, nRD = 1, if (00000) then 111011110 else 111011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
188 => '1' & '1' & "00000" & O"736" & O"736" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"3" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'N', if MDR_MATCHES_DB then next else find_cont;
-- L0682@00BD CA0063CE000000000000.  directByte = 'N', if MDR_MATCHES_DB then next else find_cont;
--  nWR = 1, nRD = 1, if (00101) then 000000000 else 011000111, directByte = 1001110, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
189 => '1' & '1' & "00101" & O"000" & O"307" & "1001110" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(BP), BP <= inc;
-- L0683@00BE C1DEEF7F000002030000.  readCore(BP), BP <= inc;
--  nWR = 1, nRD = 1, if (00000) then 111011110 else 111011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
190 => '1' & '1' & "00000" & O"736" & O"736" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"3" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'E', if MDR_MATCHES_DB then next else find_cont;
-- L0684@00BF CA0063C5000000000000.  directByte = 'E', if MDR_MATCHES_DB then next else find_cont;
--  nWR = 1, nRD = 1, if (00101) then 000000000 else 011000111, directByte = 1000101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
191 => '1' & '1' & "00101" & O"000" & O"307" & "1000101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(BP), BP <= inc;
-- L0685@00C0 C1DEEF7F000002030000.  readCore(BP), BP <= inc;
--  nWR = 1, nRD = 1, if (00000) then 111011110 else 111011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
192 => '1' & '1' & "00000" & O"736" & O"736" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"3" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'X', if MDR_MATCHES_DB then next else find_cont;
-- L0686@00C1 CA0063D8000000000000.  directByte = 'X', if MDR_MATCHES_DB then next else find_cont;
--  nWR = 1, nRD = 1, if (00101) then 000000000 else 011000111, directByte = 1011000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
193 => '1' & '1' & "00101" & O"000" & O"307" & "1011000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(BP), BP <= inc;
-- L0687@00C2 C1DEEF7F000002030000.  readCore(BP), BP <= inc;
--  nWR = 1, nRD = 1, if (00000) then 111011110 else 111011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
194 => '1' & '1' & "00000" & O"736" & O"736" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"3" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'T', if MDR_MATCHES_DB then next else find_cont;
-- L0688@00C3 CA0063D4000000000000.  directByte = 'T', if MDR_MATCHES_DB then next else find_cont;
--  nWR = 1, nRD = 1, if (00101) then 000000000 else 011000111, directByte = 1010100, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
195 => '1' & '1' & "00101" & O"000" & O"307" & "1010100" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- skipSpaces();
-- L0689@00C4 C1D2E97F000000000000.  skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 111010010 else 111010010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
196 => '1' & '1' & "00000" & O"722" & O"722" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(BP);
-- L0690@00C5 C1DEEF7F000002000000.  readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 111011110 else 111011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
197 => '1' & '1' & "00000" & O"736" & O"736" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if MDR_MATCHES_VARNAME then for_done;
-- L0691@00C6 E4C9007F000000000000.  if MDR_MATCHES_VARNAME then for_done;
--  nWR = 1, nRD = 1, if (10010) then 011001001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
198 => '1' & '1' & "10010" & O"311" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findNextCR(BP);
-- L0692@00C7 C1B5DAFF680000000000.find_cont:  findNextCR(BP);
--  nWR = 1, nRD = 1, if (00000) then 110110101 else 110110101, directByte = 1111111, T <= 01101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
199 => '1' & '1' & "00000" & O"665" & O"665" & "1111111" & "01101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto find_next;
-- L0693@00C8 FE005D7F000000000000.  if false then continue else find_next;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010111010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
200 => '1' & '1' & "11111" & O"000" & O"272" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Vars <= next_clear, findNx();
-- L0695@00C9 C0743A7F000000001C00.for_done:  Vars <= next_clear, findNx();
--  nWR = 1, nRD = 1, if (00000) then 001110100 else 001110100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 111, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
201 => '1' & '1' & "00000" & O"164" & O"164" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"7" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceT;
-- L0696@00CA C1F4FA34020000000000.  trace(from_microcode), directByte = 52;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0110100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
202 => '1' & '1' & "00000" & O"764" & O"764" & "0110100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <=  push_TWord, goto fetch;
-- L0697@00CB FE00047F000080000000.  ExpStack <=  push_TWord, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
203 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 4;
-- L0702@00CC C1F4FA04020000000000.  trace(from_microcode), directByte = 4;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0000100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
204 => '1' & '1' & "00000" & O"764" & O"764" & "0000100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0703@00CD E39C007F000000000400.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110011100 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 001, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
205 => '1' & '1' & "10001" & O"634" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"1" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= pop1, T <= from_var_For, if FOR_SET then next else INTERNAL_ERR;
-- L0704@00CE FA00CD7FD000E0000000.  ExpStack <= pop1, T <= from_var_For, if FOR_SET then next else INTERNAL_ERR;
--  nWR = 1, nRD = 1, if (11101) then 000000000 else 110011010, directByte = 1111111, T <= 11010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 111, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
206 => '1' & '1' & "11101" & O"000" & O"632" & "1111111" & "11010" & "00" & O"0" & '0' & '0' & "00" & "00" & O"7" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Vars <= next_fromBP, ExpStack <= push_TWord, goto fetch;
-- L0705@00CF FE00047F000080001400.  Vars <= next_fromBP, ExpStack <= push_TWord, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 101, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
207 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"5" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 8;
-- L0710@00D0 C1F4FA08020000000000.  trace(from_microcode), directByte = 8;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0001000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
208 => '1' & '1' & "00000" & O"764" & O"764" & "0001000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- InlEnd <= InLine_start;
-- L0711@00D1 C000007F000000080000.gl:  InlEnd <= InLine_start;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
209 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "01" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if CHARIN_READY then next else repeat;
-- L0712@00D2 D60000FF000000000000.gl_loop:  if CHARIN_READY then next else repeat;
--  nWR = 1, nRD = 1, if (01011) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
210 => '1' & '1' & "01011" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if KBD_BREAK then next else gl_char;
-- L0713@00D3 C8006AFF000000000000.  if KBD_BREAK then next else gl_char;
--  nWR = 1, nRD = 1, if (00100) then 000000000 else 011010101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
211 => '1' & '1' & "00100" & O"000" & O"325" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
-- L0714@00D4 F73970FF000000002000.  gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
--  nWR = 1, nRD = 1, if (11011) then 100111001 else 011100001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
212 => '1' & '1' & "11011" & O"471" & O"341" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if CHARIN_PRINTABLE then gl_print;
-- L0715@00D5 D2DC007F000000000000.gl_char:  if CHARIN_PRINTABLE then gl_print;
--  nWR = 1, nRD = 1, if (01001) then 011011100 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
213 => '1' & '1' & "01001" & O"334" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if CHARIN_EQU_DB then gl_cr;
-- L0716@00D6 D4E7000D000000000000.  directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
--  nWR = 1, nRD = 1, if (01010) then 011100111 else 000000000, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
214 => '1' & '1' & "01010" & O"347" & O"000" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = BACKSPACE, if CHARIN_EQU_DB then gl_bs;
-- L0717@00D7 D4E40008000000000000.  directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
--  nWR = 1, nRD = 1, if (01010) then 011100100 else 000000000, directByte = 0001000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
215 => '1' & '1' & "01010" & O"344" & O"000" & "0001000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = ESC, if CHARIN_EQU_DB then gl_esc;
-- L0718@00D8 D4E1001B000000000000.  directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
--  nWR = 1, nRD = 1, if (01010) then 011100001 else 000000000, directByte = 0011011, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
216 => '1' & '1' & "01010" & O"341" & O"000" & "0011011" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = TAB, if CHARIN_EQU_DB then gl_tab;
-- L0719@00D9 D4EC0009000000000000.  directByte = 0x09, if CHARIN_EQU_DB then gl_tab;
--  nWR = 1, nRD = 1, if (01010) then 011101100 else 000000000, directByte = 0001001, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
217 => '1' & '1' & "01010" & O"354" & O"000" & "0001001" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = BEEP, outChar(from_microcode);
-- L0721@00DA C1DBED87000008000000.gl_ignore:  directByte = 0x07, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 0000111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
218 => '1' & '1' & "00000" & O"733" & O"733" & "0000111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, goto gl_loop;
-- L0722@00DB FE00697F000000002000.  gotChar = 1, if false then continue else gl_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 011010010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
219 => '1' & '1' & "11111" & O"000" & O"322" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if INLEND_MAX then gl_ignore;
-- L0724@00DC CEDA007F000000000000.gl_print:  if INLEND_MAX then gl_ignore;
--  nWR = 1, nRD = 1, if (00111) then 011011010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
220 => '1' & '1' & "00111" & O"332" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outChar(from_charin);
-- L0725@00DD C1DBEDFF00000C000000.  outChar(from_charin);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 011, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
221 => '1' & '1' & "00000" & O"733" & O"733" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"3" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- L0726@00DE C1DDEEFF000001700000.  writeCore(InlEnd, CHARIN), InlEnd <= inc;
--  nWR = 1, nRD = 1, if (00000) then 111011101 else 111011101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 10, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
222 => '1' & '1' & "00000" & O"735" & O"735" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"3" & "10" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- writeCore(InlEnd, zero);
-- L0727@00DF C1DDEEFF000001400000.gl_write0:  writeCore(InlEnd, zero);
--  nWR = 1, nRD = 1, if (00000) then 111011101 else 111011101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
223 => '1' & '1' & "00000" & O"735" & O"735" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"2" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, goto gl_loop;
-- L0728@00E0 FE00697F000000002000.  gotChar = 1, if false then continue else gl_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 011010010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
224 => '1' & '1' & "11111" & O"000" & O"322" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = BEEP, outChar(from_microcode);
-- L0730@00E1 C1DBED87000008000000.gl_esc:  directByte = 0x07, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 0000111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
225 => '1' & '1' & "00000" & O"733" & O"733" & "0000111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outCRLF();
-- L0731@00E2 C1D9ECFF000000000000.  outCRLF();
--  nWR = 1, nRD = 1, if (00000) then 111011001 else 111011001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
226 => '1' & '1' & "00000" & O"731" & O"731" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, goto gl;
-- L0732@00E3 FE0068FF000000002000.  gotChar = 1, if false then continue else gl;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 011010001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
227 => '1' & '1' & "11111" & O"000" & O"321" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if INLEND_MIN then gl_ignore;
-- L0734@00E4 D0DA007F000000000000.gl_bs:  if INLEND_MIN then gl_ignore;
--  nWR = 1, nRD = 1, if (01000) then 011011010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
228 => '1' & '1' & "01000" & O"332" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = BACKSPACE, outChar(from_microcode);
-- L0735@00E5 C1DBED88000008000000.  directByte = 0x08, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 0001000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
229 => '1' & '1' & "00000" & O"733" & O"733" & "0001000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- InlEnd <= dec, goto gl_write0;
-- L0736@00E6 FE006FFF000000180000.  InlEnd <= dec, if false then continue else gl_write0;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 011011111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 11, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
230 => '1' & '1' & "11111" & O"000" & O"337" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "11" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- L0738@00E7 C1DDEEFF000001700000.gl_cr:  writeCore(InlEnd, CHARIN), InlEnd <= inc;
--  nWR = 1, nRD = 1, if (00000) then 111011101 else 111011101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 10, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
231 => '1' & '1' & "00000" & O"735" & O"735" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"3" & "10" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- writeCore(InlEnd, zero);
-- L0739@00E8 C1DDEEFF000001400000.  writeCore(InlEnd, zero);
--  nWR = 1, nRD = 1, if (00000) then 111011101 else 111011101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
232 => '1' & '1' & "00000" & O"735" & O"735" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"2" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- dump_input();
-- L0740@00E9 C1E0F07F000000000000.  dump_input();
--  nWR = 1, nRD = 1, if (00000) then 111100000 else 111100000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
233 => '1' & '1' & "00000" & O"740" & O"740" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outCRLF();
-- L0741@00EA C1D9ECFF000000000000.  outCRLF();
--  nWR = 1, nRD = 1, if (00000) then 111011001 else 111011001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
234 => '1' & '1' & "00000" & O"731" & O"731" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, BP <= Inline_start, goto fetch;
-- L0742@00EB FE00047F000000012000.  gotChar = 1, BP <= Inline_start, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 001, SvPt <= 00, gotChar = 1, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
235 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"1" & "00" & '1' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if INLEND_MAX then gl_ignore;
-- L0744@00EC CEDA007F000000000000.gl_tab:  if INLEND_MAX then gl_ignore;
--  nWR = 1, nRD = 1, if (00111) then 011011010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
236 => '1' & '1' & "00111" & O"332" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if AT_TAB then gl_write0;
-- L0745@00ED F2DF007F000000000000.gl_tabloop:  if AT_TAB then gl_write0;
--  nWR = 1, nRD = 1, if (11001) then 011011111 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
237 => '1' & '1' & "11001" & O"337" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', outChar(from_microcode);
-- L0746@00EE C1DBEDA0000008000000.  directByte = ' ', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
238 => '1' & '1' & "00000" & O"733" & O"733" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', writeCore(InlEnd, from_microcode), InlEnd <= inc;
-- L0747@00EF C1DDEEA0000001F00000.  directByte = ' ', writeCore(InlEnd, from_microcode), InlEnd <= inc;
--  nWR = 1, nRD = 1, if (00000) then 111011101 else 111011101, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 111, InlEnd <= 10, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
239 => '1' & '1' & "00000" & O"735" & O"735" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"7" & "10" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto gl_tabloop;
-- L0748@00F0 FE0076FF000000000000.  if false then continue else gl_tabloop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 011101101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
240 => '1' & '1' & "11111" & O"000" & O"355" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 40;
-- L0753@00F1 C1F4FA28020000000000.  trace(from_microcode), directByte = 40;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0101000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
241 => '1' & '1' & "00000" & O"764" & O"764" & "0101000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromStack, ExpStack <= pop2;
-- L0754@00F2 C000007F0000C0000080.  alu <= S_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
242 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00100" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_plus_R;
-- L0755@00F3 C000007F0000000000A0.  alu <= S_plus_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
243 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00101" & '0' & '0' & '0' & '0' & '0',

-- T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
-- L0756@00F4 EB98007F280000000000.  T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
--  nWR = 1, nRD = 1, if (10101) then 110011000 else 000000000, directByte = 1111111, T <= 00101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
244 => '1' & '1' & "10101" & O"630" & O"000" & "1111111" & "00101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, if Y_ZERO then SYNTAX_ERR;
-- L0757@00F5 E998007F000000000010.  Lino <= T, if Y_ZERO then SYNTAX_ERR;
--  nWR = 1, nRD = 1, if (10100) then 110011000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
245 => '1' & '1' & "10100" & O"630" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '1' & '0' & '0' & '0' & '0',

-- skipSpaces();
-- L0760@00F6 C1D2E97F000000000000.  skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 111010010 else 111010010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
246 => '1' & '1' & "00000" & O"722" & O"722" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= BP;
-- L0761@00F7 C000007F680000000000.  T <= BP;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
247 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- BE <= T, readCore(T);
-- L0762@00F8 C1DEEF7F000003000008.il_findBE:  BE <= T, readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111011110 else 111011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 1, LS <= 0, LE <= 0, PrgEnd <= 0;
248 => '1' & '1' & "00000" & O"736" & O"736" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '1' & '0' & '0' & '0',

-- directByte = CR, if MDR_MATCHES_DB then il_fork;
-- L0763@00F9 CAFB000D000000000000.  directByte = 0x0D, if MDR_MATCHES_DB then il_fork;
--  nWR = 1, nRD = 1, if (00101) then 011111011 else 000000000, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
249 => '1' & '1' & "00101" & O"373" & O"000" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto il_findBE;
-- L0764@00FA FE007C7F580000000000.  T <= inc, if false then continue else il_findBE;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 011111000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
250 => '1' & '1' & "11111" & O"000" & O"370" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- scanProgram();
-- L0766@00FB C11F8FFF000000000000.il_fork:  scanProgram();
--  nWR = 1, nRD = 1, if (00000) then 100011111 else 100011111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
251 => '1' & '1' & "00000" & O"437" & O"437" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if IMPLINE_EMPTY then next else changeLine;
-- L0767@00FC D000817F000000000000.  if IMPLINE_EMPTY then next else changeLine;
--  nWR = 1, nRD = 1, if (01000) then 000000000 else 100000010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
252 => '1' & '1' & "01000" & O"000" & O"402" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if R_IS_ZERO then WarmStart;
-- L0769@00FD E605007F000000000000.deleteLine:  if R_IS_ZERO then WarmStart;
--  nWR = 1, nRD = 1, if (10011) then 000000101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
253 => '1' & '1' & "10011" & O"005" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if Y_ZERO then next else WarmStart;
-- L0770@00FE E80002FF000000000000.  if Y_ZERO then next else WarmStart;
--  nWR = 1, nRD = 1, if (10100) then 000000000 else 000000101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
254 => '1' & '1' & "10100" & O"000" & O"005" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findPrgEnd();
-- L0771@00FF C1188C7F000000000000.  findPrgEnd();
--  nWR = 1, nRD = 1, if (00000) then 100011000 else 100011000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
255 => '1' & '1' & "00000" & O"430" & O"430" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- copyCore(copy_init_del);
-- L0772@0100 C12C967F0000000002A0.  copyCore(copy_init_del);
--  nWR = 1, nRD = 1, if (00000) then 100101100 else 100101100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
256 => '1' & '1' & "00000" & O"454" & O"454" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10101" & '0' & '0' & '0' & '0' & '0',

-- goto WarmStart;
-- L0773@0101 FE0002FF000000000000.  if false then continue else WarmStart;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000000101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
257 => '1' & '1' & "11111" & O"000" & O"005" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if R_IS_ZERO then appendLine;
-- L0775@0102 E70B007F000000000000.changeLine:  if R_IS_ZERO then appendLine;
--  nWR = 1, nRD = 1, if (10011) then 100001011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
258 => '1' & '1' & "10011" & O"413" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if Y_ZERO then next else insertLine;
-- L0776@0103 E80083FF000000000000.  if Y_ZERO then next else insertLine;
--  nWR = 1, nRD = 1, if (10100) then 000000000 else 100000111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
259 => '1' & '1' & "10100" & O"000" & O"407" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findPrgEnd();
-- L0778@0104 C1188C7F000000000000.replaceLine:  findPrgEnd();
--  nWR = 1, nRD = 1, if (00000) then 100011000 else 100011000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
260 => '1' & '1' & "00000" & O"430" & O"430" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- copyCore(copy_init_del);
-- L0779@0105 C12C967F0000000002A0.  copyCore(copy_init_del);
--  nWR = 1, nRD = 1, if (00000) then 100101100 else 100101100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
261 => '1' & '1' & "00000" & O"454" & O"454" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10101" & '0' & '0' & '0' & '0' & '0',

-- scanProgram();
-- L0780@0106 C11F8FFF000000000000.  scanProgram();
--  nWR = 1, nRD = 1, if (00000) then 100011111 else 100011111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
262 => '1' & '1' & "00000" & O"437" & O"437" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findPrgEnd();
-- L0781@0107 C1188C7F000000000000.insertLine:  findPrgEnd();
--  nWR = 1, nRD = 1, if (00000) then 100011000 else 100011000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
263 => '1' & '1' & "00000" & O"430" & O"430" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- copyCore(copy_init_ins);
-- L0782@0108 C12C967F0000000002E0.  copyCore(copy_init_ins);
--  nWR = 1, nRD = 1, if (00000) then 100101100 else 100101100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
264 => '1' & '1' & "00000" & O"454" & O"454" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10111" & '0' & '0' & '0' & '0' & '0',

-- copyLine(LS);
-- L0783@0109 C10F87FFB80000000000.ins_finish:  copyLine(LS);
--  nWR = 1, nRD = 1, if (00000) then 100001111 else 100001111, directByte = 1111111, T <= 10111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
265 => '1' & '1' & "00000" & O"417" & O"417" & "1111111" & "10111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto WarmStart;
-- L0784@010A FE0002FF000000000000.  if false then continue else WarmStart;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000000101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
266 => '1' & '1' & "11111" & O"000" & O"005" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= dec;
-- L0786@010B C000007F600000000000.appendLine:  T <= dec;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
267 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- copyLine(dec);
-- L0787@010C C10F87FF600000000000.  copyLine(dec);
--  nWR = 1, nRD = 1, if (00000) then 100001111 else 100001111, directByte = 1111111, T <= 01100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
268 => '1' & '1' & "00000" & O"417" & O"417" & "1111111" & "01100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- write2Nulls(same);
-- L0788@010D C1BCDE7F000000000000.  write2Nulls(same);
--  nWR = 1, nRD = 1, if (00000) then 110111100 else 110111100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
269 => '1' & '1' & "00000" & O"674" & O"674" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto WarmStart;
-- L0789@010E FE0002FF000000000000.  if false then continue else WarmStart;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000000101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
270 => '1' & '1' & "11111" & O"000" & O"005" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromLino;
-- L0791@010F C000007F000000000280.copyLine:  alu <= S_fromLino;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
271 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10100" & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, from_SHi);
-- L0792@0110 C1DDEEFF000003A00000.  writeCore(T, from_SHi);
--  nWR = 1, nRD = 1, if (00000) then 111011101 else 111011101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 101, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
272 => '1' & '1' & "00000" & O"735" & O"735" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"5" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc;
-- L0793@0111 C000007F580000000000.  T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
273 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, from_SLo);
-- L0794@0112 C1DDEEFF000003C00000.  writeCore(T, from_SLo);
--  nWR = 1, nRD = 1, if (00000) then 111011101 else 111011101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 110, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
274 => '1' & '1' & "00000" & O"735" & O"735" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"6" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc;
-- L0795@0113 C000007F580000000000.  T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
275 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(BP);
-- L0796@0114 C1DEEF7F000002000000.app_loop:  readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 111011110 else 111011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
276 => '1' & '1' & "00000" & O"736" & O"736" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, same);
-- L0797@0115 C1DDEEFF000003000000.  writeCore(T, same);
--  nWR = 1, nRD = 1, if (00000) then 111011101 else 111011101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
277 => '1' & '1' & "00000" & O"735" & O"735" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- BP <= inc, T <= inc;
-- L0798@0116 C000007F580000030000.  BP <= inc, T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
278 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if MDR_MATCHES_DB then return else app_loop;
-- L0799@0117 CA028A0D000000000000.  directByte = 0x0D, if MDR_MATCHES_DB then return else app_loop;
--  nWR = 1, nRD = 1, if (00101) then 000000010 else 100010100, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
279 => '1' & '1' & "00101" & O"002" & O"424" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= Prog_start;
-- L0801@0118 C000007F700000000000.findPrgEnd:  T <= Prog_start;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
280 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore16(same);
-- L0802@0119 C1B8DC7F000000000000.fpe_loop:  readCore16(same);
--  nWR = 1, nRD = 1, if (00000) then 110111000 else 110111000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
281 => '1' & '1' & "00000" & O"670" & O"670" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if R_IS_ZERO then next else fpe_next;
-- L0803@011A E6008EFF000000000000.  if R_IS_ZERO then next else fpe_next;
--  nWR = 1, nRD = 1, if (10011) then 000000000 else 100011101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
282 => '1' & '1' & "10011" & O"000" & O"435" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= dec;
-- L0804@011B C000007F600000000000.  T <= dec;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
283 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- PrgEnd <= T, back;
-- L0805@011C C002007F000000000001.  PrgEnd <= T, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 1;
284 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '1',

-- findNextCR(same);
-- L0806@011D C1B5DAFF000000000000.fpe_next:  findNextCR(same);
--  nWR = 1, nRD = 1, if (00000) then 110110101 else 110110101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
285 => '1' & '1' & "00000" & O"665" & O"665" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto fpe_loop;
-- L0807@011E FE008CFF580000000000.  T <= inc, if false then continue else fpe_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 100011001, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
286 => '1' & '1' & "11111" & O"000" & O"431" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= zero;
-- L0811@011F C000007F380000000000.scanProgram:  T <= zero;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
287 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- LS <= T, LE <= T, T <= Prog_start;
-- L0812@0120 C000007F700000000006.  LS <= T, LE <= T, T <= Prog_start;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 1, LE <= 1, PrgEnd <= 0;
288 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '1' & '1' & '0',

-- LS <= T, readCore16(same);
-- L0814@0121 C1B8DC7F000000000004.scan_loop:  LS <= T, readCore16(same);
--  nWR = 1, nRD = 1, if (00000) then 110111000 else 110111000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 1, LE <= 0, PrgEnd <= 0;
289 => '1' & '1' & "00000" & O"670" & O"670" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '1' & '0' & '0',

-- alu <= S_fromLino, if R_IS_ZERO then return;
-- L0815@0122 E602007F000000000280.  alu <= S_fromLino, if R_IS_ZERO then return;
--  nWR = 1, nRD = 1, if (10011) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
290 => '1' & '1' & "10011" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10100" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_minus_R;
-- L0816@0123 C000007F0000000000C0.scan_check:  alu <= S_minus_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
291 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00110" & '0' & '0' & '0' & '0' & '0',

-- traceALU();
-- L0817@0124 C1EDF6FF000000000000.  traceALU();
--  nWR = 1, nRD = 1, if (00000) then 111101101 else 111101101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
292 => '1' & '1' & "00000" & O"755" & O"755" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if Y_ZERO then scan_found else next;
-- L0818@0125 E929007F000000000000.  if Y_ZERO then scan_found else next;
--  nWR = 1, nRD = 1, if (10100) then 100101001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
293 => '1' & '1' & "10100" & O"451" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if Y_SIGN then scan_found else next;
-- L0819@0126 EB29007F000000000000.  if Y_SIGN then scan_found else next;
--  nWR = 1, nRD = 1, if (10101) then 100101001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
294 => '1' & '1' & "10101" & O"451" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findNextCR(same);
-- L0820@0127 C1B5DAFF000000000000.scan_next:  findNextCR(same);
--  nWR = 1, nRD = 1, if (00000) then 110110101 else 110110101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
295 => '1' & '1' & "00000" & O"665" & O"665" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto scan_loop;
-- L0821@0128 FE0090FF580000000000.scan_line:  T <= inc, if false then continue else scan_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 100100001, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
296 => '1' & '1' & "11111" & O"000" & O"441" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findNextCR(same);
-- L0823@0129 C1B5DAFF000000000000.scan_found:  findNextCR(same);
--  nWR = 1, nRD = 1, if (00000) then 110110101 else 110110101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
297 => '1' & '1' & "00000" & O"665" & O"665" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- LE <= T;
-- L0824@012A C000007F000000000002.  LE <= T;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 1, PrgEnd <= 0;
298 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '1' & '0',

-- back;
-- L0826@012B C002007F000000000000.  if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
299 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= from_S, if Y_ZERO then return;
-- L0829@012C E802007F800000000000.copyCore:  T <= from_S, if Y_ZERO then return;
--  nWR = 1, nRD = 1, if (10100) then 000000010 else 000000000, directByte = 1111111, T <= 10000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
300 => '1' & '1' & "10100" & O"002" & O"000" & "1111111" & "10000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(T);
-- L0830@012D C1DEEF7F000003000000.  readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111011110 else 111011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
301 => '1' & '1' & "00000" & O"736" & O"736" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= from_R;
-- L0831@012E C000007F880000000000.  T <= from_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
302 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, same);
-- L0832@012F C1DDEEFF000003000000.  writeCore(T, same);
--  nWR = 1, nRD = 1, if (00000) then 111011101 else 111011101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
303 => '1' & '1' & "00000" & O"735" & O"735" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= copy_next, goto copyCore;
-- L0834@0130 FE00967F0000000002C0.  alu <= copy_next, if false then continue else copyCore;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 100101100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
304 => '1' & '1' & "11111" & O"000" & O"454" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10110" & '0' & '0' & '0' & '0' & '0',

-- traceString 43;
-- L0839@0131 C1F4FA2B020000000000.  trace(from_microcode), directByte = 43;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0101011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
305 => '1' & '1' & "00000" & O"764" & O"764" & "0101011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto ColdStart;
-- L0840@0132 FE00027F000000000000.  if false then continue else ColdStart;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
306 => '1' & '1' & "11111" & O"000" & O"004" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 42;
-- L0845@0133 C1F4FA2A020000000000.  trace(from_microcode), directByte = 42;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0101010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
307 => '1' & '1' & "00000" & O"764" & O"764" & "0101010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= IL_PC;
-- L0846@0134 C000007F080000000000.  T <= IL_PC;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
308 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- XQhere <= T, readCore16(Prog_start);
-- L0847@0135 C1B8DC7F702000000000.  XQhere <= T, readCore16(Prog_start);
--  nWR = 1, nRD = 1, if (00000) then 110111000 else 110111000, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 1, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
309 => '1' & '1' & "00000" & O"670" & O"670" & "1111111" & "01110" & "00" & O"0" & '1' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- BP <= T, T <= from_R, if R_IS_ZERO then NOPROG_ERR;
-- L0848@0136 E792007F880000060000.  BP <= T, T <= from_R, if R_IS_ZERO then NOPROG_ERR;
--  nWR = 1, nRD = 1, if (10011) then 110010010 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
310 => '1' & '1' & "10011" & O"622" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, goto fetch;
-- L0849@0137 FE00047F000000000010.  Lino <= T, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
311 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '1' & '0' & '0' & '0' & '0',

-- traceString 44;
-- L0854@0138 C1F4FA2C020000000000.  trace(from_microcode), directByte = 44;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0101100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
312 => '1' & '1' & "00000" & O"764" & O"764" & "0101100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'S', outChar(from_microcode);
-- L0855@0139 C1DBEDD3000008000000.stop_run:  directByte = 'S', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 1010011, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
313 => '1' & '1' & "00000" & O"733" & O"733" & "1010011" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'T', outChar(from_microcode);
-- L0856@013A C1DBEDD4000008000000.  directByte = 'T', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 1010100, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
314 => '1' & '1' & "00000" & O"733" & O"733" & "1010100" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'O', outChar(from_microcode);
-- L0857@013B C1DBEDCF000008000000.  directByte = 'O', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 1001111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
315 => '1' & '1' & "00000" & O"733" & O"733" & "1001111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'P', outChar(from_microcode);
-- L0858@013C C1DBEDD0000008000000.  directByte = 'P', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 1010000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
316 => '1' & '1' & "00000" & O"733" & O"733" & "1010000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto print_lino;
-- L0859@013D FE00D4FF000000000000.  if false then continue else print_lino;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110101001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
317 => '1' & '1' & "11111" & O"000" & O"651" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 49;
-- L0864@013E C1F4FA31020000000000.  trace(from_microcode), directByte = 49;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0110001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
318 => '1' & '1' & "00000" & O"764" & O"764" & "0110001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0865@013F C000007F0000C0000060.  alu <= R_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
319 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00011" & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, ExpStack <= pop2;
-- L0866@0140 C000007F2000C0000000.  T <= ExpStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
320 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromStack, ExpStack <= pop2;
-- L0867@0141 C000007F0000C0000080.  alu <= S_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
321 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00100" & '0' & '0' & '0' & '0' & '0',

-- traceALU();
-- L0868@0142 C1EDF6FF000000000000.  traceALU();
--  nWR = 1, nRD = 1, if (00000) then 111101101 else 111101101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
322 => '1' & '1' & "00000" & O"755" & O"755" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 20, if S_EQU_DB_MOD32 then u_peek8;
-- L0870@0143 F94B0014000000000000.  directByte = 20, if S_EQU_DB_MOD32 then u_peek8;
--  nWR = 1, nRD = 1, if (11100) then 101001011 else 000000000, directByte = 0010100, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
323 => '1' & '1' & "11100" & O"513" & O"000" & "0010100" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 24, if S_EQU_DB_MOD32 then u_poke8;
-- L0871@0144 F9500018000000000000.  directByte = 24, if S_EQU_DB_MOD32 then u_poke8;
--  nWR = 1, nRD = 1, if (11100) then 101010000 else 000000000, directByte = 0011000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
324 => '1' & '1' & "11100" & O"520" & O"000" & "0011000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 21, if S_EQU_DB_MOD32 then u_peek16;
-- L0872@0145 F94E0015000000000000.  directByte = 21, if S_EQU_DB_MOD32 then u_peek16;
--  nWR = 1, nRD = 1, if (11100) then 101001110 else 000000000, directByte = 0010101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
325 => '1' & '1' & "11100" & O"516" & O"000" & "0010101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 25, if S_EQU_DB_MOD32 then u_poke16;
-- L0873@0146 F9530019000000000000.  directByte = 25, if S_EQU_DB_MOD32 then u_poke16;
--  nWR = 1, nRD = 1, if (11100) then 101010011 else 000000000, directByte = 0011001, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
326 => '1' & '1' & "11100" & O"523" & O"000" & "0011001" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= index2address;
-- L0875@0147 C000007FE00000000000.  T <= index2address;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 11100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
327 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "11100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 30, if S_EQU_DB_MOD32 then u_peek16;
-- L0876@0148 F94E001E000000000000.  directByte = 30, if S_EQU_DB_MOD32 then u_peek16;
--  nWR = 1, nRD = 1, if (11100) then 101001110 else 000000000, directByte = 0011110, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
328 => '1' & '1' & "11100" & O"516" & O"000" & "0011110" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 31, if S_EQU_DB_MOD32 then u_poke16;
-- L0877@0149 F953001F000000000000.  directByte = 31, if S_EQU_DB_MOD32 then u_poke16;
--  nWR = 1, nRD = 1, if (11100) then 101010011 else 000000000, directByte = 0011111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
329 => '1' & '1' & "11100" & O"523" & O"000" & "0011111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= binop, goto u_done;
-- L0878@014A FE00A6FFC00000000000.  T <= binop, if false then continue else u_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 101001101, directByte = 1111111, T <= 11000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
330 => '1' & '1' & "11111" & O"000" & O"515" & "1111111" & "11000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(T);
-- L0880@014B C1DEEF7F000003000000.u_peek8:  readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111011110 else 111011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
331 => '1' & '1' & "00000" & O"736" & O"736" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= MDR;
-- L0881@014C C000007F480000000000.u_in:  T <= MDR;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
332 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, goto fetch;
-- L0882@014D FE00047F000080000000.u_done:  ExpStack <= push_TWord, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
333 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore16(same);
-- L0884@014E C1B8DC7F000000000000.u_peek16:  readCore16(same);
--  nWR = 1, nRD = 1, if (00000) then 110111000 else 110111000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
334 => '1' & '1' & "00000" & O"670" & O"670" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= from_R, goto u_done;
-- L0885@014F FE00A6FF880000000000.  T <= from_R, if false then continue else u_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 101001101, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
335 => '1' & '1' & "11111" & O"000" & O"515" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- prepWrite();
-- L0887@0150 C157ABFF000000000000.u_poke8:  prepWrite();
--  nWR = 1, nRD = 1, if (00000) then 101010111 else 101010111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
336 => '1' & '1' & "00000" & O"527" & O"527" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, from_SLo);
-- L0888@0151 C1DDEEFF000003C00000.  writeCore(T, from_SLo);
--  nWR = 1, nRD = 1, if (00000) then 111011101 else 111011101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 110, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
337 => '1' & '1' & "00000" & O"735" & O"735" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"6" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto u_peek8;
-- L0889@0152 FE00A5FF000000000000.  if false then continue else u_peek8;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 101001011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
338 => '1' & '1' & "11111" & O"000" & O"513" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- prepWrite();
-- L0891@0153 C157ABFF000000000000.u_poke16:  prepWrite();
--  nWR = 1, nRD = 1, if (00000) then 101010111 else 101010111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
339 => '1' & '1' & "00000" & O"527" & O"527" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, from_SHi), T <= inc;
-- L0892@0154 C1DDEEFF580003A00000.  writeCore(T, from_SHi), T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 111011101 else 111011101, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 101, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
340 => '1' & '1' & "00000" & O"735" & O"735" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"5" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, from_SLo);
-- L0893@0155 C1DDEEFF000003C00000.  writeCore(T, from_SLo);
--  nWR = 1, nRD = 1, if (00000) then 111011101 else 111011101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 110, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
341 => '1' & '1' & "00000" & O"735" & O"735" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"6" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= dec, goto u_peek16;
-- L0894@0156 FE00A77F600000000000.  T <= dec, if false then continue else u_peek16;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 101001110, directByte = 1111111, T <= 01100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
342 => '1' & '1' & "11111" & O"000" & O"516" & "1111111" & "01100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= save;
-- L0896@0157 C000007F900000000000.prepWrite:  T <= save;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
343 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10010" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= from_R;
-- L0897@0158 C000007F880000000000.  T <= from_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
344 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromT, T <= recall, back;
-- L0898@0159 C002007F980000000240.  alu <= S_fromT, T <= recall, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 10011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
345 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "10011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10010" & '0' & '0' & '0' & '0' & '0',

-- traceString 19;
-- L0903@015A C1F4FA13020000000000.  trace(from_microcode), directByte = 19;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0010011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
346 => '1' & '1' & "00000" & O"764" & O"764" & "0010011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then RSTACK_ERR;
-- L0904@015B E39E007F000000000000.  if STACK_IS_EMPTY then RSTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110011110 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
347 => '1' & '1' & "10001" & O"636" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= RetStack, RetStack <= pop, goto fetch;
-- L0905@015C FE00047F01C800000000.  IL_PC <= RetStack, RetStack <= pop, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 111, XQhere <= 0, IL_OP <= 0, RetStack <= 10, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
348 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"7" & '0' & '0' & "10" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 20;
-- L0910@015D C1F4FA14020000000000.  trace(from_microcode), directByte = 20;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0010100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
349 => '1' & '1' & "00000" & O"764" & O"764" & "0010100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 3;
-- L0911@015E C1F4FA03020000000000.  trace(from_microcode), directByte = 3;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0000011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
350 => '1' & '1' & "00000" & O"764" & O"764" & "0000011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_FULL then RSTACK_ERR;
-- L0912@015F E19E007F000000000000.  if STACK_IS_FULL then RSTACK_ERR;
--  nWR = 1, nRD = 1, if (10000) then 110011110 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
351 => '1' & '1' & "10000" & O"636" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- RetStack <= push_IL_PC_PLUS_1, goto jump;
-- L0913@0160 FE00B1FF000C00000000.  RetStack <= push_IL_PC_PLUS_1, if false then continue else jump;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 101100011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 11, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
352 => '1' & '1' & "11111" & O"000" & O"543" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "11" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 21;
-- L0918@0161 C1F4FA15020000000000.  trace(from_microcode), directByte = 21;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0010101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
353 => '1' & '1' & "00000" & O"764" & O"764" & "0010101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 3;
-- L0919@0162 C1F4FA03020000000000.  trace(from_microcode), directByte = 3;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0000011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
354 => '1' & '1' & "00000" & O"764" & O"764" & "0000011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= direct11, goto fetch;
-- L0920@0163 FE00047F018000000000.jump:  IL_PC <= direct11, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 110, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
355 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"6" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 7;
-- L0925@0164 C1F4FA07020000000000.  trace(from_microcode), directByte = 7;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0000111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
356 => '1' & '1' & "00000" & O"764" & O"764" & "0000111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= pc_plus_off6;
-- L0926@0165 C000007F010000000000.  IL_PC <= pc_plus_off6;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 100, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
357 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"4" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceGoto;
-- L0927@0166 C1F4FA1E020000000000.br_exit:  trace(from_microcode), directByte = 30;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0011110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
358 => '1' & '1' & "00000" & O"764" & O"764" & "0011110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0928@0167 FE00047F000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
359 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 7;
-- L0933@0168 C1F4FA07020000000000.  trace(from_microcode), directByte = 7;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0000111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
360 => '1' & '1' & "00000" & O"764" & O"764" & "0000111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto badop;
-- L0934@0169 FE00067F000000000000.  if false then continue else badop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
361 => '1' & '1' & "11111" & O"000" & O"014" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 17;
-- L0939@016A C1F4FA11020000000000.  trace(from_microcode), directByte = 17;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0010001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
362 => '1' & '1' & "00000" & O"764" & O"764" & "0010001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= IL_PC, BP <= save, skipSpaces();
-- L0940@016B C1D2E97F080000040000.  T <= IL_PC, BP <= save, skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 111010010 else 111010010, directByte = 1111111, T <= 00001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 100, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
363 => '1' & '1' & "00000" & O"722" & O"722" & "1111111" & "00001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"4" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 3;
-- L0941@016C C1F4FA03020000000000.bc_loop:  trace(from_microcode), directByte = 3;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0000011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
364 => '1' & '1' & "00000" & O"764" & O"764" & "0000011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(BP);
-- L0942@016D C1DEEF7F000002000000.  readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 111011110 else 111011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
365 => '1' & '1' & "00000" & O"736" & O"736" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
-- L0943@016E E400B97F000000000000.  if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
--  nWR = 1, nRD = 1, if (10010) then 000000000 else 101110010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
366 => '1' & '1' & "10010" & O"000" & O"562" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- BP <= inc, IL_PC <= inc, if ILCODEBYTE_BIT7 then next else bc_loop;
-- L0944@016F C200B67F008000030000.  BP <= inc, IL_PC <= inc, if ILCODEBYTE_BIT7 then next else bc_loop;
--  nWR = 1, nRD = 1, if (00001) then 000000000 else 101101100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
367 => '1' & '1' & "00001" & O"000" & O"554" & "1111111" & "00000" & "00" & O"2" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceBP();
-- L0945@0170 C1E7F3FF000000000000.  traceBP();
--  nWR = 1, nRD = 1, if (00000) then 111100111 else 111100111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
368 => '1' & '1' & "00000" & O"747" & O"747" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0946@0171 FE00047F000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
369 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- BP <= recall, IL_PC <= T;
-- L0947@0172 C000007F00C000050000.bc_exit:  BP <= recall, IL_PC <= T;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 011, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 101, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
370 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"3" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"5" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceBP();
-- L0948@0173 C1E7F3FF000000000000.  traceBP();
--  nWR = 1, nRD = 1, if (00000) then 111100111 else 111100111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
371 => '1' & '1' & "00000" & O"747" & O"747" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- L0949@0174 F598B37F014000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
--  nWR = 1, nRD = 1, if (11010) then 110011000 else 101100110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
372 => '1' & '1' & "11010" & O"630" & O"546" & "1111111" & "00000" & "00" & O"5" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 16;
-- L0954@0175 C1F4FA10020000000000.  trace(from_microcode), directByte = 16;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0010000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
373 => '1' & '1' & "00000" & O"764" & O"764" & "0010000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- skipSpaces();
-- L0955@0176 C1D2E97F000000000000.  skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 111010010 else 111010010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
374 => '1' & '1' & "00000" & O"722" & O"722" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
-- L0956@0177 DF79007F000000800000.  MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
--  nWR = 1, nRD = 1, if (01111) then 101111001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 100, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
375 => '1' & '1' & "01111" & O"571" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"4" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- L0957@0178 F598B37F014000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
--  nWR = 1, nRD = 1, if (11010) then 110011000 else 101100110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
376 => '1' & '1' & "11010" & O"630" & O"546" & "1111111" & "00000" & "00" & O"5" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
-- L0958@0179 E19C007F500000000000.bv_exec:  T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10000) then 110011100 else 000000000, directByte = 1111111, T <= 01010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
377 => '1' & '1' & "10000" & O"634" & O"000" & "1111111" & "01010" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TByte, BP <= inc, goto fetch;
-- L0959@017A FE00047F0000A0030000.  ExpStack <= push_TByte, BP <= inc, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 101, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
378 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"5" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 14;
-- L0964@017B C1F4FA0E020000000000.  trace(from_microcode), directByte = 14;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0001110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
379 => '1' & '1' & "00000" & O"764" & O"764" & "0001110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- skipSpaces();
-- L0965@017C C1D2E97F000000000000.  skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 111010010 else 111010010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
380 => '1' & '1' & "00000" & O"722" & O"722" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= reset0, if MDR_IS_NUM then bn_loop;
-- L0966@017D DD82007F000000000020.  alu <= reset0, if MDR_IS_NUM then bn_loop;
--  nWR = 1, nRD = 1, if (01110) then 110000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
381 => '1' & '1' & "01110" & O"602" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00001" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
-- L0967@017E F40C007F014000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
--  nWR = 1, nRD = 1, if (11010) then 000001100 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
382 => '1' & '1' & "11010" & O"014" & O"000" & "1111111" & "00000" & "00" & O"5" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceY();
-- L0968@017F C1EAF57F000000000000.bn_exit:  traceY();
--  nWR = 1, nRD = 1, if (00000) then 111101010 else 111101010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
383 => '1' & '1' & "00000" & O"752" & O"752" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceGoto;
-- L0969@0180 C1F4FA1E020000000000.  trace(from_microcode), directByte = 30;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0011110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
384 => '1' & '1' & "00000" & O"764" & O"764" & "0011110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0970@0181 FE00047F000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
385 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= Yx10_plus_MDR, BP <= inc;
-- L0971@0182 C000007F000000030200.bn_loop:  alu <= Yx10_plus_MDR, BP <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
386 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & O"0" & "10000" & '0' & '0' & '0' & '0' & '0',

-- if ALU_OVERFLOW then OVERFLOW_ERR;
-- L0972@0183 EF96007F000000000000.  if ALU_OVERFLOW then OVERFLOW_ERR;
--  nWR = 1, nRD = 1, if (10111) then 110010110 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
387 => '1' & '1' & "10111" & O"626" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(BP);
-- L0973@0184 C1DEEF7F000002000000.  readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 111011110 else 111011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
388 => '1' & '1' & "00000" & O"736" & O"736" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if MDR_IS_NUM then bn_loop;
-- L0974@0185 DD82007F000000000000.  if MDR_IS_NUM then bn_loop;
--  nWR = 1, nRD = 1, if (01110) then 110000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
389 => '1' & '1' & "01110" & O"602" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
-- L0975@0186 E19C007F280000000000.  T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10000) then 110011100 else 000000000, directByte = 1111111, T <= 00101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
390 => '1' & '1' & "10000" & O"634" & O"000" & "1111111" & "00101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, goto bn_exit;
-- L0976@0187 FE00BFFF000080000000.  ExpStack <= push_TWord, if false then continue else bn_exit;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 101111111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
391 => '1' & '1' & "11111" & O"000" & O"577" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 13;
-- L0981@0188 C1F4FA0D020000000000.  trace(from_microcode), directByte = 13;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0001101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
392 => '1' & '1' & "00000" & O"764" & O"764" & "0001101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- skipSpaces();
-- L0982@0189 C1D2E97F000000000000.  skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 111010010 else 111010010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
393 => '1' & '1' & "00000" & O"722" & O"722" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if MDR_MATCHES_DB then fetch;
-- L0983@018A CA08000D000000000000.  directByte = 0x0D, if MDR_MATCHES_DB then fetch;
--  nWR = 1, nRD = 1, if (00101) then 000001000 else 000000000, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
394 => '1' & '1' & "00101" & O"010" & O"000" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- L0984@018B F598B37F014000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
--  nWR = 1, nRD = 1, if (11010) then 110011000 else 101100110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
395 => '1' & '1' & "11010" & O"630" & O"546" & "1111111" & "00000" & "00" & O"5" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, traceString 55;
-- L0986@018C C1F4FA37020000002000.BREAK:  gotChar = 1, trace(from_microcode), directByte = 55;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0110111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
396 => '1' & '1' & "00000" & O"764" & O"764" & "0110111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outBeep();
-- L0987@018D C1D6EB7F000000000000.  outBeep();
--  nWR = 1, nRD = 1, if (00000) then 111010110 else 111010110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
397 => '1' & '1' & "00000" & O"726" & O"726" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'B', outChar(from_microcode);
-- L0988@018E C1DBEDC2000008000000.  directByte = 'B', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 1000010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
398 => '1' & '1' & "00000" & O"733" & O"733" & "1000010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'R', outChar(from_microcode);
-- L0989@018F C1DBEDD2000008000000.  directByte = 'R', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 1010010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
399 => '1' & '1' & "00000" & O"733" & O"733" & "1010010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'K', outChar(from_microcode);
-- L0990@0190 C1DBEDCB000008000000.  directByte = 'K', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 1001011, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
400 => '1' & '1' & "00000" & O"733" & O"733" & "1001011" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto traceDetails;
-- L0991@0191 FE00D2FF000000000000.  if false then continue else traceDetails;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110100101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
401 => '1' & '1' & "11111" & O"000" & O"645" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 50;
-- L0993@0192 C1F4FA32020000000000.NOPROG_ERR:  trace(from_microcode), directByte = 50;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0110010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
402 => '1' & '1' & "00000" & O"764" & O"764" & "0110010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto traceError;
-- L0994@0193 FE00D0FF000000000000.  if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110100001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
403 => '1' & '1' & "11111" & O"000" & O"641" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 57;
-- L0995@0194 C1F4FA39020000000000.DIVBY0_ERR:  trace(from_microcode), directByte = 57;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0111001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
404 => '1' & '1' & "00000" & O"764" & O"764" & "0111001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto traceError;
-- L0996@0195 FE00D0FF000000000000.  if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110100001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
405 => '1' & '1' & "11111" & O"000" & O"641" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 58;
-- L0997@0196 C1F4FA3A020000000000.OVERFLOW_ERR:  trace(from_microcode), directByte = 58;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0111010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
406 => '1' & '1' & "00000" & O"764" & O"764" & "0111010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto traceError;
-- L0998@0197 FE00D0FF000000000000.  if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110100001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
407 => '1' & '1' & "11111" & O"000" & O"641" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 61;
-- L0999@0198 C1F4FA3D020000000000.SYNTAX_ERR:  trace(from_microcode), directByte = 61;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0111101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
408 => '1' & '1' & "00000" & O"764" & O"764" & "0111101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto traceError;
-- L1000@0199 FE00D0FF000000000000.  if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110100001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
409 => '1' & '1' & "11111" & O"000" & O"641" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 62;
-- L1001@019A C1F4FA3E020000000000.INTERNAL_ERR:  trace(from_microcode), directByte = 62;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0111110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
410 => '1' & '1' & "00000" & O"764" & O"764" & "0111110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto traceError;
-- L1002@019B FE00D0FF000000000000.  if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110100001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
411 => '1' & '1' & "11111" & O"000" & O"641" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 60;
-- L1003@019C C1F4FA3C020000000000.ESTACK_ERR:  trace(from_microcode), directByte = 60;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0111100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
412 => '1' & '1' & "00000" & O"764" & O"764" & "0111100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto traceError;
-- L1004@019D FE00D0FF000000000000.  if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110100001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
413 => '1' & '1' & "11111" & O"000" & O"641" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 59;
-- L1005@019E C1F4FA3B020000000000.RSTACK_ERR:  trace(from_microcode), directByte = 59;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0111011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
414 => '1' & '1' & "00000" & O"764" & O"764" & "0111011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto traceError;
-- L1006@019F FE00D0FF000000000000.  if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110100001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
415 => '1' & '1' & "11111" & O"000" & O"641" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 54;
-- L1007@01A0 C1F4FA36020000000000.BSTACK_ERR:  trace(from_microcode), directByte = 54;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0110110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
416 => '1' & '1' & "00000" & O"764" & O"764" & "0110110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outBeep();
-- L1008@01A1 C1D6EB7F000000000000.traceError:  outBeep();
--  nWR = 1, nRD = 1, if (00000) then 111010110 else 111010110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
417 => '1' & '1' & "00000" & O"726" & O"726" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'E', outChar(from_microcode);
-- L1009@01A2 C1DBEDC5000008000000.  directByte = 'E', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 1000101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
418 => '1' & '1' & "00000" & O"733" & O"733" & "1000101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'R', outChar(from_microcode);
-- L1010@01A3 C1DBEDD2000008000000.  directByte = 'R', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 1010010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
419 => '1' & '1' & "00000" & O"733" & O"733" & "1010010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'R', outChar(from_microcode);
-- L1011@01A4 C1DBEDD2000008000000.  directByte = 'R', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 1010010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
420 => '1' & '1' & "00000" & O"733" & O"733" & "1010010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = '#', outChar(from_microcode), T <= IL_PC;
-- L1012@01A5 C1DBEDA3080008000000.traceDetails:  directByte = '#', outChar(from_microcode), T <= IL_PC;
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 0100011, T <= 00001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
421 => '1' & '1' & "00000" & O"733" & O"733" & "0100011" & "00001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= dec;
-- L1013@01A6 C000007F600000000000.  T <= dec;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
422 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- printDecR(R_fromT);
-- L1014@01A7 C1C4E27F000000000260.  printDecR(R_fromT);
--  nWR = 1, nRD = 1, if (00000) then 111000100 else 111000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
423 => '1' & '1' & "00000" & O"704" & O"704" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10011" & '0' & '0' & '0' & '0' & '0',

-- if IS_RUNMODE then next else err_done;
-- L1015@01A8 F600D97F000000000000.  if IS_RUNMODE then next else err_done;
--  nWR = 1, nRD = 1, if (11011) then 000000000 else 110110010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
424 => '1' & '1' & "11011" & O"000" & O"662" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', outChar(from_microcode);
-- L1016@01A9 C1DBEDA0000008000000.print_lino:  directByte = ' ', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
425 => '1' & '1' & "00000" & O"733" & O"733" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'A', outChar(from_microcode);
-- L1017@01AA C1DBEDC1000008000000.  directByte = 'A', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 1000001, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
426 => '1' & '1' & "00000" & O"733" & O"733" & "1000001" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'T', outChar(from_microcode), alu <= S_fromLino;
-- L1018@01AB C1DBEDD4000008000280.  directByte = 'T', outChar(from_microcode), alu <= S_fromLino;
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 1010100, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
427 => '1' & '1' & "00000" & O"733" & O"733" & "1010100" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10100" & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', outChar(from_microcode), T <= from_S;
-- L1019@01AC C1DBEDA0800008000000.  directByte = ' ', outChar(from_microcode), T <= from_S;
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 0100000, T <= 10000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
428 => '1' & '1' & "00000" & O"733" & O"733" & "0100000" & "10000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- printDecR(R_fromT);
-- L1020@01AD C1C4E27F000000000260.  printDecR(R_fromT);
--  nWR = 1, nRD = 1, if (00000) then 111000100 else 111000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
429 => '1' & '1' & "00000" & O"704" & O"704" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10011" & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', outChar(from_microcode), T <= fromTicks;
-- L1021@01AE C1DBEDA0C80008000000.  directByte = ' ', outChar(from_microcode), T <= fromTicks;
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 0100000, T <= 11001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
430 => '1' & '1' & "00000" & O"733" & O"733" & "0100000" & "11001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- printDecR(R_fromT);
-- L1022@01AF C1C4E27F000000000260.  printDecR(R_fromT);
--  nWR = 1, nRD = 1, if (00000) then 111000100 else 111000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
431 => '1' & '1' & "00000" & O"704" & O"704" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10011" & '0' & '0' & '0' & '0' & '0',

-- directByte = '.', outChar(from_microcode), T <= recall;
-- L1023@01B0 C1DBEDAE980008000000.  directByte = ' C1DBEDAE980008000000.', outChar(from_microcode), T <= recall;
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 0101110, T <= 10011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
432 => '1' & '1' & "00000" & O"733" & O"733" & "0101110" & "10011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- printDecR(R_fromT);
-- L1024@01B1 C1C4E27F000000000260.  printDecR(R_fromT);
--  nWR = 1, nRD = 1, if (00000) then 111000100 else 111000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
433 => '1' & '1' & "00000" & O"704" & O"704" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10011" & '0' & '0' & '0' & '0' & '0',

-- outCRLF();
-- L1025@01B2 C1D9ECFF000000000000.err_done:  outCRLF();
--  nWR = 1, nRD = 1, if (00000) then 111011001 else 111011001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
434 => '1' & '1' & "00000" & O"731" & O"731" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- trace(crlf);
-- L1026@01B3 C1F4FA7F060000000000.  trace(crlf);
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 1111111, T <= 00000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
435 => '1' & '1' & "00000" & O"764" & O"764" & "1111111" & "00000" & "11" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto WarmStart;
-- L1027@01B4 FE0002FF000000000000.  if false then continue else WarmStart;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000000101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
436 => '1' & '1' & "11111" & O"000" & O"005" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(T);
-- L1029@01B5 C1DEEF7F000003000000.findNextCR:  readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111011110 else 111011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
437 => '1' & '1' & "00000" & O"736" & O"736" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if MDR_MATCHES_DB then return;
-- L1030@01B6 CA02000D000000000000.  directByte = 0x0D, if MDR_MATCHES_DB then return;
--  nWR = 1, nRD = 1, if (00101) then 000000010 else 000000000, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
438 => '1' & '1' & "00101" & O"002" & O"000" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc, directByte = NULL, if MDR_MATCHES_DB then INTERNAL_ERR else findNextCR;
-- L1031@01B7 CB9ADA80580000000000.  T <= inc, directByte = 0x00, if MDR_MATCHES_DB then INTERNAL_ERR else findNextCR;
--  nWR = 1, nRD = 1, if (00101) then 110011010 else 110110101, directByte = 0000000, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
439 => '1' & '1' & "00101" & O"632" & O"665" & "0000000" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= reset1, readCore(T);
-- L1033@01B8 C1DEEF7F000003000040.readCore16:  alu <= reset1, readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111011110 else 111011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
440 => '1' & '1' & "00000" & O"736" & O"736" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00010" & '0' & '0' & '0' & '0' & '0',

-- alu <= Rx256_plus_MDR, T <= inc;
-- L1034@01B9 C000007F580000000220.  alu <= Rx256_plus_MDR, T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
441 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10001" & '0' & '0' & '0' & '0' & '0',

-- readCore(T);
-- L1035@01BA C1DEEF7F000003000000.  readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111011110 else 111011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
442 => '1' & '1' & "00000" & O"736" & O"736" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= Rx256_plus_MDR, T <= inc, back;
-- L1036@01BB C002007F580000000220.  alu <= Rx256_plus_MDR, T <= inc, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
443 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10001" & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, zero), T <= inc;
-- L1038@01BC C1DDEEFF580003400000.write2Nulls:  writeCore(T, zero), T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 111011101 else 111011101, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
444 => '1' & '1' & "00000" & O"735" & O"735" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"2" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, zero);
-- L1039@01BD C1DDEEFF000003400000.  writeCore(T, zero);
--  nWR = 1, nRD = 1, if (00000) then 111011101 else 111011101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
445 => '1' & '1' & "00000" & O"735" & O"735" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"2" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- back;
-- L1040@01BE C002007F000000000000.  if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
446 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L1043@01BF E39C007F000000000000.pullRS:  if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110011100 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
447 => '1' & '1' & "10001" & O"634" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2;
-- L1044@01C0 C000007F0000C0000060.  alu <= R_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
448 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00011" & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L1045@01C1 E39C007F000000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110011100 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
449 => '1' & '1' & "10001" & O"634" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromStack, ExpStack <= pop2, back;
-- L1046@01C2 C002007F0000C0000080.  alu <= S_fromStack, ExpStack <= pop2, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
450 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00100" & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2;
-- L1049@01C3 C000007F0000C0000060.printDec:  alu <= R_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
451 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00011" & '0' & '0' & '0' & '0' & '0',

-- alu <= bcd_start;
-- L1051@01C4 C000007F000000000140.printDecR:  alu <= bcd_start;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 01010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
452 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "01010" & '0' & '0' & '0' & '0' & '0',

-- alu <= bcd_next, if ALU_READY then next else repeat;
-- L1052@01C5 EC0000FF000000000160.  alu <= bcd_next, if ALU_READY then next else repeat;
--  nWR = 1, nRD = 1, if (10110) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 01011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
453 => '1' & '1' & "10110" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "01011" & '0' & '0' & '0' & '0' & '0',

-- if ALU_SIGN then next else printY;
-- L1053@01C6 F000E47F000000000000.  if ALU_SIGN then next else printY;
--  nWR = 1, nRD = 1, if (11000) then 000000000 else 111001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
454 => '1' & '1' & "11000" & O"000" & O"710" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = '-', outChar(from_microcode);
-- L1054@01C7 C1DBEDAD000008000000.  directByte = '-', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 0101101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
455 => '1' & '1' & "00000" & O"733" & O"733" & "0101101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ);
-- L1055@01C8 C1D0E87F000018000000.printY:  outNZChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 111010000 else 111010000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
456 => '1' & '1' & "00000" & O"720" & O"720" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ);
-- L1056@01C9 C1D0E87F000018000000.  outNZChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 111010000 else 111010000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
457 => '1' & '1' & "00000" & O"720" & O"720" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ);
-- L1057@01CA C1D0E87F000018000000.  outNZChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 111010000 else 111010000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
458 => '1' & '1' & "00000" & O"720" & O"720" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ);
-- L1058@01CB C1D0E87F000018000000.  outNZChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 111010000 else 111010000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
459 => '1' & '1' & "00000" & O"720" & O"720" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ);
-- L1059@01CC C1D0E87F000018000000.  outNZChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 111010000 else 111010000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
460 => '1' & '1' & "00000" & O"720" & O"720" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ);
-- L1060@01CD C1D0E87F000018000000.  outNZChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 111010000 else 111010000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
461 => '1' & '1' & "00000" & O"720" & O"720" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ);
-- L1061@01CE C1D0E87F000018000000.  outNZChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 111010000 else 111010000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
462 => '1' & '1' & "00000" & O"720" & O"720" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- CHAROUT <= from_YtoAlpha, goto outChar;
-- L1062@01CF FE00EDFF000014000000.  CHAROUT <= from_YtoAlpha, if false then continue else outChar;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 111011011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
463 => '1' & '1' & "11111" & O"000" & O"733" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"5" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outChar(from_YtoAlphaZ);
-- L1064@01D0 C1DBEDFF000018000000.outNZChar:  outChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
464 => '1' & '1' & "00000" & O"733" & O"733" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= Yx16, back;
-- L1065@01D1 C002007F000000000120.out_skip:  alu <= Yx16, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
465 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "01001" & '0' & '0' & '0' & '0' & '0',

-- readCore(BP);
-- L1067@01D2 C1DEEF7F000002000000.skipSpaces:  readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 111011110 else 111011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
466 => '1' & '1' & "00000" & O"736" & O"736" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', if MDR_MATCHES_DB then skipSp;
-- L1068@01D3 CBD50020000000000000.  directByte = ' ', if MDR_MATCHES_DB then skipSp;
--  nWR = 1, nRD = 1, if (00101) then 111010101 else 000000000, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
467 => '1' & '1' & "00101" & O"725" & O"000" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = TAB, if MDR_MATCHES_DB then skipSp else return;
-- L1069@01D4 CBD50109000000000000.  directByte = 0x09, if MDR_MATCHES_DB then skipSp else return;
--  nWR = 1, nRD = 1, if (00101) then 111010101 else 000000010, directByte = 0001001, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
468 => '1' & '1' & "00101" & O"725" & O"002" & "0001001" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- BP <= inc, goto skipSpaces;
-- L1070@01D5 FE00E97F000000030000.skipSp:  BP <= inc, if false then continue else skipSpaces;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 111010010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
469 => '1' & '1' & "11111" & O"000" & O"722" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outCRLF();
-- L1072@01D6 C1D9ECFF000000000000.outBeep:  outCRLF();
--  nWR = 1, nRD = 1, if (00000) then 111011001 else 111011001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
470 => '1' & '1' & "00000" & O"731" & O"731" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- trace(crlf);
-- L1073@01D7 C1F4FA7F060000000000.  trace(crlf);
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 1111111, T <= 00000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
471 => '1' & '1' & "00000" & O"764" & O"764" & "1111111" & "00000" & "11" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = BEEP, CHAROUT <= from_microcode, goto outChar;
-- L1074@01D8 FE00ED87000008000000.  directByte = 0x07, CHAROUT <= from_microcode, if false then continue else outChar;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 111011011, directByte = 0000111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
472 => '1' & '1' & "11111" & O"000" & O"733" & "0000111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, outChar(from_microcode);
-- L1076@01D9 C1DBED8D000008000000.outCRLF:  directByte = 0x0D, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111011011 else 111011011, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
473 => '1' & '1' & "00000" & O"733" & O"733" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = LF, CHAROUT <= from_microcode;
-- L1077@01DA C000000A000008000000.  directByte = 0x0A, CHAROUT <= from_microcode;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 0001010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
474 => '1' & '1' & "00000" & O"000" & O"000" & "0001010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if CHAROUT_READY then next else repeat;
-- L1078@01DB C40000FF000000000000.outChar:  if CHAROUT_READY then next else repeat;
--  nWR = 1, nRD = 1, if (00010) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
475 => '1' & '1' & "00010" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if CHAROUT_READY then return else repeat;
-- L1079@01DC C40200FF000000000000.  if CHAROUT_READY then return else repeat;
--  nWR = 1, nRD = 1, if (00010) then 000000010 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
476 => '1' & '1' & "00010" & O"002" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- nWR = 0, if nBUSACK then repeat else return;
-- L1081@01DD 4C01017F000000000000.writeCore:  nWR = 0, if nBUSACK then repeat else return;
--  nWR = 0, nRD = 1, if (00110) then 000000001 else 000000010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
477 => '0' & '1' & "00110" & O"001" & O"002" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- nRD = 0, if nBUSACK then repeat else next;
-- L1083@01DE 8C01007F000000000000.readCore:  nRD = 0, if nBUSACK then repeat else next;
--  nWR = 1, nRD = 0, if (00110) then 000000001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
478 => '1' & '0' & "00110" & O"001" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- nRD = 0, MDR <= from_Bus, back;
-- L1084@01DF 8002007F000000200000.  nRD = 0, MDR <= from_Bus, if true then return else continue;
--  nWR = 1, nRD = 0, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 001, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
479 => '1' & '0' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"1" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- InlEnd <= InLine_start, trace(crlf);
-- L1088@01E0 C1F4FA7F060000080000.dump_input:  InlEnd <= InLine_start, trace(crlf);
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 1111111, T <= 00000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
480 => '1' & '1' & "00000" & O"764" & O"764" & "1111111" & "00000" & "11" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "01" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(InlEnd);
-- L1089@01E1 C1DEEF7F000001000000.dump_inlp:  readCore(InlEnd);
--  nWR = 1, nRD = 1, if (00000) then 111011110 else 111011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
481 => '1' & '1' & "00000" & O"736" & O"736" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 9, trace(from_microcode);
-- L1090@01E2 C1F4FA09020000000000.  directByte = 9, trace(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0001001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
482 => '1' & '1' & "00000" & O"764" & O"764" & "0001001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = NULL, if MDR_MATCHES_DB then dump_inex;
-- L1091@01E3 CBE50000000000000000.  directByte = 0x00, if MDR_MATCHES_DB then dump_inex;
--  nWR = 1, nRD = 1, if (00101) then 111100101 else 000000000, directByte = 0000000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
483 => '1' & '1' & "00101" & O"745" & O"000" & "0000000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- InlEnd <= inc, goto dump_inlp;
-- L1092@01E4 FE00F0FF000000100000.  InlEnd <= inc, if false then continue else dump_inlp;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 111100001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
484 => '1' & '1' & "11111" & O"000" & O"741" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "10" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- trace(crlf);
-- L1093@01E5 C1F4FA7F060000000000.dump_inex:  trace(crlf);
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 1111111, T <= 00000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
485 => '1' & '1' & "00000" & O"764" & O"764" & "1111111" & "00000" & "11" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- back;
-- L1094@01E6 C002007F000000000000.  if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
486 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, T <= BP;
-- L1096@01E7 C000007F680080000000.traceBP:  ExpStack <= push_TWord, T <= BP;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
487 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 33;
-- L1097@01E8 C1F4FA21020000000000.  trace(from_microcode), directByte = 33;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0100001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
488 => '1' & '1' & "00000" & O"764" & O"764" & "0100001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, ExpStack <= pop2, back;
-- L1098@01E9 C002007F2000C0000000.  T <= ExpStack, ExpStack <= pop2, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
489 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, T <= from_YLo;
-- L1100@01EA C000007F280080000000.traceY:  ExpStack <= push_TWord, T <= from_YLo;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
490 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 32;
-- L1101@01EB C1F4FA20020000000000.  trace(from_microcode), directByte = 32;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0100000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
491 => '1' & '1' & "00000" & O"764" & O"764" & "0100000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, ExpStack <= pop2, back;
-- L1102@01EC C002007F2000C0000000.  T <= ExpStack, ExpStack <= pop2, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
492 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- trace(crlf);
-- L1104@01ED C1F4FA7F060000000000.traceALU:  trace(crlf);
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 1111111, T <= 00000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
493 => '1' & '1' & "00000" & O"764" & O"764" & "1111111" & "00000" & "11" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= save, traceT;
-- L1105@01EE C1F4FA34920000000000.  T <= save, trace(from_microcode), directByte = 52;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0110100, T <= 10010, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
494 => '1' & '1' & "00000" & O"764" & O"764" & "0110100" & "10010" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= from_S, traceString 52;
-- L1106@01EF C1F4FA34820000000000.  T <= from_S, trace(from_microcode), directByte = 52;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0110100, T <= 10000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
495 => '1' & '1' & "00000" & O"764" & O"764" & "0110100" & "10000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= from_R, traceString 52;
-- L1107@01F0 C1F4FA348A0000000000.  T <= from_R, trace(from_microcode), directByte = 52;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0110100, T <= 10001, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
496 => '1' & '1' & "00000" & O"764" & O"764" & "0110100" & "10001" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= from_YHi, traceString 53;
-- L1108@01F1 C1F4FA35320000000000.  T <= from_YHi, trace(from_microcode), directByte = 53;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0110101, T <= 00110, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
497 => '1' & '1' & "00000" & O"764" & O"764" & "0110101" & "00110" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= from_YLo, traceString 52;
-- L1109@01F2 C1F4FA342A0000000000.  T <= from_YLo, trace(from_microcode), directByte = 52;
--  nWR = 1, nRD = 1, if (00000) then 111110100 else 111110100, directByte = 0110100, T <= 00101, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
498 => '1' & '1' & "00000" & O"764" & O"764" & "0110100" & "00101" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= recall, DBGINDEX <= crlf;
-- L1110@01F3 C000007F9E0000000000.  T <= recall, DBGINDEX <= crlf;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10011, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
499 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10011" & "11" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if DBG_READY then next else repeat;
-- L1111@01F4 C80000FF000000000000.trace:  if DBG_READY then next else repeat;
--  nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
500 => '1' & '1' & "00100" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if DBG_READY then next else repeat;
-- L1112@01F5 C80000FF000000000000.  if DBG_READY then next else repeat;
--  nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
501 => '1' & '1' & "00100" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- DBGINDEX <= zero, back;
-- L1113@01F6 C002007F040000000000.  DBGINDEX <= zero, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 10, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
502 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "10" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- 9 location(s) in following ranges will be filled with default value
-- 01F7 .. 01FF

others => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0'
);

end microBasic_code;

