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
-- L0017.seq_cond: .if 5 values true, ILCODEBYTE_BIT7, CHAROUT_READY, IS_CPU32, DBG_READY | KBD_BREAK, MDR_MATCHES_DB, nREADY, INLEND_MAX | BASLINE_FOUND, INLEND_MIN | IMPLINE_EMPTY, CHARIN_PRINTABLE, CHARIN_EQU_DB, CHARIN_READY, BP_IN_INPLINE, SVP_IN_INPLINE, MDR_IS_NUM, MDR_IS_ALPHA, STACK_IS_FULL, STACK_IS_EMPTY, MDR_MATCHES_ILCODEBYTE | MDR_MATCHES_VARNAME, R_IS_ZERO, Y_ZERO   | CP_SKIP, Y_SIGN   | INTREQ, ALU_READY  | LS_PARAMS_OK, ALU_OVERFLOW  | LS_PASSED_END, ALU_SIGN  | LS_IN_RANGE, AT_TAB   | IL_CACHE_HIT, OFF_IS_ZERO, IS_RUNMODE, S_EQU_DB_MOD32, CACHE_VALID  | FOR_SET, CACHE_HIT  | NEXT_SET, false default true;
--
alias mb_seq_cond: 	std_logic_vector(4 downto 0) is mb_uinstruction(77 downto 73);
constant seq_cond_true: 	integer := 0;
constant seq_cond_ILCODEBYTE_BIT7: 	integer := 1;
constant seq_cond_CHAROUT_READY: 	integer := 2;
constant seq_cond_IS_CPU32: 	integer := 3;
constant seq_cond_DBG_READY: 	integer := 4;
constant seq_cond_KBD_BREAK: 	integer := 4;
constant seq_cond_MDR_MATCHES_DB: 	integer := 5;
constant seq_cond_nREADY: 	integer := 6;
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
constant seq_cond_INTREQ: 	integer := 21;
constant seq_cond_ALU_READY: 	integer := 22;
constant seq_cond_LS_PARAMS_OK: 	integer := 22;
constant seq_cond_ALU_OVERFLOW: 	integer := 23;
constant seq_cond_LS_PASSED_END: 	integer := 23;
constant seq_cond_ALU_SIGN: 	integer := 24;
constant seq_cond_LS_IN_RANGE: 	integer := 24;
constant seq_cond_AT_TAB: 	integer := 25;
constant seq_cond_IL_CACHE_HIT: 	integer := 25;
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
--  cond(seq_cond_IS_CPU32) => IS_CPU32,
--  cond(seq_cond_DBG_READY | KBD_BREAK) => DBG_READY | KBD_BREAK,
--  cond(seq_cond_MDR_MATCHES_DB) => MDR_MATCHES_DB,
--  cond(seq_cond_nREADY) => nREADY,
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
--  cond(seq_cond_Y_SIGN   | INTREQ) => Y_SIGN   | INTREQ,
--  cond(seq_cond_ALU_READY  | LS_PARAMS_OK) => ALU_READY  | LS_PARAMS_OK,
--  cond(seq_cond_ALU_OVERFLOW  | LS_PASSED_END) => ALU_OVERFLOW  | LS_PASSED_END,
--  cond(seq_cond_ALU_SIGN  | LS_IN_RANGE) => ALU_SIGN  | LS_IN_RANGE,
--  cond(seq_cond_AT_TAB   | IL_CACHE_HIT) => AT_TAB   | IL_CACHE_HIT,
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
-- L0058.T: .regfield 5 values same, IL_PC, XQhere, from_vars, ExpStack, from_YLo, from_YHi, zero, codeByte, MDR, MDRx2, inc, dec, BP, Prog_start, PrgEnd, from_S, from_R, save, recall, BasStack_Hi, BasStack_Lo, Cache_Data, LS, binop, fromTicks, from_var_For, from_var_Next, index2address, from_microcode, Core_End, from_lfsr default same;
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
constant T_from_microcode: 	std_logic_vector(4 downto 0) := "11101";
constant T_Core_End: 	std_logic_vector(4 downto 0) := "11110";
constant T_from_lfsr: 	std_logic_vector(4 downto 0) := "11111";
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
--			when T_from_microcode =>
--				T <= microcode;
--			when T_Core_End =>
--				T <= Core_End;
--			when T_from_lfsr =>
--				T <= lfsr;
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
-- L0102.IL_PC: .regfield 3 values same, XQhere | from_il_cache, inc, T, pc_plus_off6 | pc_plus_off8, pc_plus_off5 | pc_plus_off2alpha, direct11, RetStack default same;
--
alias mb_IL_PC: 	std_logic_vector(2 downto 0) is mb_uinstruction(40 downto 38);
constant IL_PC_same: 	std_logic_vector(2 downto 0) := O"0";
constant IL_PC_XQhere: 	std_logic_vector(2 downto 0) := O"1";
constant IL_PC_from_il_cache: 	std_logic_vector(2 downto 0) := O"1";
constant IL_PC_inc: 	std_logic_vector(2 downto 0) := O"2";
constant IL_PC_T: 	std_logic_vector(2 downto 0) := O"3";
constant IL_PC_pc_plus_off6: 	std_logic_vector(2 downto 0) := O"4";
constant IL_PC_pc_plus_off8: 	std_logic_vector(2 downto 0) := O"4";
constant IL_PC_pc_plus_off5: 	std_logic_vector(2 downto 0) := O"5";
constant IL_PC_pc_plus_off2alpha: 	std_logic_vector(2 downto 0) := O"5";
constant IL_PC_direct11: 	std_logic_vector(2 downto 0) := O"6";
constant IL_PC_RetStack: 	std_logic_vector(2 downto 0) := O"7";
---- Start boilerplate code (use with utmost caution!)
-- update_IL_PC: process(clk, mb_IL_PC)
-- begin
--	if (rising_edge(clk)) then
--		case mb_IL_PC is
----			when IL_PC_same =>
----				IL_PC <= IL_PC;
--			when IL_PC_XQhere | from_il_cache =>
--				IL_PC <= XQhere | from_il_cache;
--			when IL_PC_inc =>
--				IL_PC <= std_logic_vector(unsigned(IL_PC) + 1);
--			when IL_PC_T =>
--				IL_PC <= T;
--			when IL_PC_pc_plus_off6 | pc_plus_off8 =>
--				IL_PC <= pc_plus_off6 | pc_plus_off8;
--			when IL_PC_pc_plus_off5 | pc_plus_off2alpha =>
--				IL_PC <= pc_plus_off5 | pc_plus_off2alpha;
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
-- L0142.ExpStack: .regfield 3 values same, clear, startSwap, endSwap, push_TWord | push_intLino, push_TByte, pop2, pop1 default same;
--
alias mb_ExpStack: 	std_logic_vector(2 downto 0) is mb_uinstruction(31 downto 29);
constant ExpStack_same: 	std_logic_vector(2 downto 0) := O"0";
constant ExpStack_clear: 	std_logic_vector(2 downto 0) := O"1";
constant ExpStack_startSwap: 	std_logic_vector(2 downto 0) := O"2";
constant ExpStack_endSwap: 	std_logic_vector(2 downto 0) := O"3";
constant ExpStack_push_TWord: 	std_logic_vector(2 downto 0) := O"4";
constant ExpStack_push_intLino: 	std_logic_vector(2 downto 0) := O"4";
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
--			when ExpStack_push_TWord | push_intLino =>
--				ExpStack <= push_TWord | push_intLino;
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
-- L0194.BP: .regfield 3 values same, InLine_start, SvPt, inc, save, recall, T, LS | from_il_cache default same;
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
constant BP_from_il_cache: 	std_logic_vector(2 downto 0) := O"7";
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
--			when BP_LS | from_il_cache =>
--				BP <= LS | from_il_cache;
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
-- L0231.alu: .regfield 5 values nop, reset0, reset1 | il_cache_update_statementcount, R_fromStack, S_fromStack, S_plus_R, S_minus_R, neg_R, S_mul_R, Yx16, bcd_start, bcd_next, div_start, div_shift, div_subset, div_end, Yx10_plus_MDR, Rx256_plus_MDR, S_fromT, R_fromT, S_fromLino, copy_init_del, copy_next, copy_init_ins, ls_load, ls_check, Y_save, Y_recall, cache_store | il_cache_store, for_step, for_check, S_swap32 default nop;
--
alias mb_alu: 	std_logic_vector(4 downto 0) is mb_uinstruction(9 downto 5);
constant alu_nop: 	std_logic_vector(4 downto 0) := "00000";
constant alu_reset0: 	std_logic_vector(4 downto 0) := "00001";
constant alu_reset1: 	std_logic_vector(4 downto 0) := "00010";
constant alu_il_cache_update_statementcount: 	std_logic_vector(4 downto 0) := "00010";
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
constant alu_il_cache_store: 	std_logic_vector(4 downto 0) := "11100";
constant alu_for_step: 	std_logic_vector(4 downto 0) := "11101";
constant alu_for_check: 	std_logic_vector(4 downto 0) := "11110";
constant alu_S_swap32: 	std_logic_vector(4 downto 0) := "11111";
---- Start boilerplate code (use with utmost caution!)
-- update_alu: process(clk, mb_alu)
-- begin
--	if (rising_edge(clk)) then
--		case mb_alu is
----			when alu_nop =>
----				alu <= alu;
--			when alu_reset0 =>
--				alu <= reset0;
--			when alu_reset1 | il_cache_update_statementcount =>
--				alu <= reset1 | il_cache_update_statementcount;
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
--			when alu_cache_store | il_cache_store =>
--				alu <= cache_store | il_cache_store;
--			when alu_for_step =>
--				alu <= for_step;
--			when alu_for_check =>
--				alu <= for_check;
--			when alu_S_swap32 =>
--				alu <= S_swap32;
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
-- L0356@0000 C00000FF000000000000._reset:  if true then continue else repeat;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
0 => '1' & '1' & "00000" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= zero;
-- L0358@0001 C000007F380000000000._reset1:  T <= zero;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
1 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- XQhere <= T;
-- L0360@0002 C000007F002000000000._reset2:  XQhere <= T;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 1, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
2 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '1' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- nop;
-- L0362@0003 C00000FF000000000000._reset3:  if true then continue else repeat;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
3 => '1' & '1' & "00000" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- write2Nulls(Prog_start);
-- L0366@0004 C1D0E87F700000000000.ColdStart:  write2Nulls(Prog_start);
--  nWR = 1, nRD = 1, if (00000) then 111010000 else 111010000, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
4 => '1' & '1' & "00000" & O"720" & O"720" & "1111111" & "01110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- clear, findPrgEnd();
-- L0367@0005 C11F8FFF3C0520000020.WarmStart:  DBGINDEX <= zero, ExpStack <= clear, RetStack <= clear, BasStack <= clear, T <= zero, alu <= reset0, findPrgEnd();
--  nWR = 1, nRD = 1, if (00000) then 100011111 else 100011111, directByte = 1111111, T <= 00111, DBGINDEX <= 10, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 01, BasStack <= 01, ExpStack <= 001, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
5 => '1' & '1' & "00000" & O"437" & O"437" & "1111111" & "00111" & "10" & O"0" & '0' & '0' & "01" & "01" & O"1" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00001" & '0' & '0' & '0' & '0' & '0',

-- BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= zero;
-- L0368@0006 C000007F380000094000.WarmStart2:  BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= zero;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 001, SvPt <= 01, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
6 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "01" & O"1" & "01" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, IL_PC <= T, write2Nulls(BP);
-- L0369@0007 C1D0E87F68C000000010.  Lino <= T, IL_PC <= T, write2Nulls(BP);
--  nWR = 1, nRD = 1, if (00000) then 111010000 else 111010000, directByte = 1111111, T <= 01101, DBGINDEX <= 00, IL_PC <= 011, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
7 => '1' & '1' & "00000" & O"720" & O"720" & "1111111" & "01101" & "00" & O"3" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '1' & '0' & '0' & '0' & '0',

-- traceString 51;
-- L0371@0008 C1F7FBB3020000000000.fetch:  trace(from_microcode), directByte = 51;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0110011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
8 => '1' & '1' & "00000" & O"767" & O"767" & "0110011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 2;
-- L0372@0009 C1F7FB82020000000000.fetch1:  trace(from_microcode), directByte = 2;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0000010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
9 => '1' & '1' & "00000" & O"767" & O"767" & "0000010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_OP <= from_interpreter, IL_PC <= inc, traceSDepth;
-- L0373@000A C1F7FBB8029000000000.  IL_OP <= from_interpreter, IL_PC <= inc, trace(from_microcode), directByte = 56;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0111000, T <= 00000, DBGINDEX <= 01, IL_PC <= 010, XQhere <= 0, IL_OP <= 1, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
10 => '1' & '1' & "00000" & O"767" & O"767" & "0111000" & "00000" & "01" & O"2" & '0' & '1' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= zero, alu <= reset0, if true then fork else INTERNAL_ERR;
-- L0374@000B C003DE7F380000000020.  T <= zero, alu <= reset0, if true then fork else INTERNAL_ERR;
--  nWR = 1, nRD = 1, if (00000) then 000000011 else 110111100, directByte = 1111111, T <= 00111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
11 => '1' & '1' & "00000" & O"003" & O"674" & "1111111" & "00111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00001" & '0' & '0' & '0' & '0' & '0',

-- goto INTERNAL_ERR;
-- L0377@000C FE00DE7F000000000000.badop:  if false then continue else INTERNAL_ERR;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110111100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
12 => '1' & '1' & "11111" & O"000" & O"674" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 15;
-- L0382@000D C1F7FB8F020000000000.  trace(from_microcode), directByte = 15;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0001111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
13 => '1' & '1' & "00000" & O"767" & O"767" & "0001111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= startSwap, traceString 51;
-- L0383@000E C1F7FBB3020040000000.  ExpStack <= startSwap, trace(from_microcode), directByte = 51;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0110011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 010, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
14 => '1' & '1' & "00000" & O"767" & O"767" & "0110011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"2" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= endSwap, goto fetch1;
-- L0384@000F FE0004FF000060000000.  ExpStack <= endSwap, if false then continue else fetch1;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 011, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
15 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"3" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 15;
-- L0387@0010 C1F7FB8F020000000000.  trace(from_microcode), directByte = 15;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0001111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
16 => '1' & '1' & "00000" & O"767" & O"767" & "0001111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= il_cache_store, goto fetch;
-- L0388@0011 FE00047F000000000380.  alu <= il_cache_store, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 11100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
17 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "11100" & '0' & '0' & '0' & '0' & '0',

-- traceString 12;
-- L0393@0012 C1F7FB8C020000000000.  trace(from_microcode), directByte = 12;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0001100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
18 => '1' & '1' & "00000" & O"767" & O"767" & "0001100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0394@0013 FE00047F000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
19 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 28;
-- L0399@0014 C1F7FB9C020000000000.  trace(from_microcode), directByte = 28;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0011100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
20 => '1' & '1' & "00000" & O"767" & O"767" & "0011100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 3, T <= codeByte;
-- L0400@0015 C1F7FB83420000000000.lb_push:  trace(from_microcode), directByte = 3, T <= codeByte;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0000011, T <= 01000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
21 => '1' & '1' & "00000" & O"767" & O"767" & "0000011" & "01000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TByte, traceString 51;
-- L0401@0016 C1F7FBB30200A0000000.  ExpStack <= push_TByte, trace(from_microcode), directByte = 51;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0110011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 101, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
22 => '1' & '1' & "00000" & O"767" & O"767" & "0110011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"5" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch1;
-- L0402@0017 E1BD04FF008000000000.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch1;
--  nWR = 1, nRD = 1, if (10000) then 110111101 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
23 => '1' & '1' & "10000" & O"675" & O"011" & "1111111" & "00000" & "00" & O"2" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 29;
-- L0407@0018 C1F7FB9D020000000000.  trace(from_microcode), directByte = 29;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0011101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
24 => '1' & '1' & "00000" & O"767" & O"767" & "0011101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 3, T <= codeByte;
-- L0408@0019 C1F7FB83420000000000.  trace(from_microcode), directByte = 3, T <= codeByte;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0000011, T <= 01000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
25 => '1' & '1' & "00000" & O"767" & O"767" & "0000011" & "01000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TByte;
-- L0409@001A C000007F0000A0000000.  ExpStack <= push_TByte;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 101, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
26 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"5" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
-- L0410@001B E1BD0AFF008000000000.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
--  nWR = 1, nRD = 1, if (10000) then 110111101 else 000010101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
27 => '1' & '1' & "10000" & O"675" & O"025" & "1111111" & "00000" & "00" & O"2" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 38;
-- L0415@001C C1F7FBA6020000000000.  trace(from_microcode), directByte = 38;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0100110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
28 => '1' & '1' & "00000" & O"767" & O"767" & "0100110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0416@001D E3BD007F000000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110111101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
29 => '1' & '1' & "10001" & O"675" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR else push_T;
-- L0417@001E E1BD167F200000000000.  T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR else push_T;
--  nWR = 1, nRD = 1, if (10000) then 110111101 else 000101100, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
30 => '1' & '1' & "10000" & O"675" & O"054" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 34;
-- L0422@001F C1F7FBA2020000000000.  trace(from_microcode), directByte = 34;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0100010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
31 => '1' & '1' & "00000" & O"767" & O"767" & "0100010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR else fetch;
-- L0423@0020 E3BD047F0000C0000000.  ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR else fetch;
--  nWR = 1, nRD = 1, if (10001) then 110111101 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
32 => '1' & '1' & "10001" & O"675" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 10;
-- L0428@0021 C1F7FB8A020000000000.  trace(from_microcode), directByte = 10;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0001010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
33 => '1' & '1' & "00000" & O"767" & O"767" & "0001010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if BP_IN_INPLINE then next else ptr_exc;
-- L0429@0022 D800147F000000000000.  if BP_IN_INPLINE then next else ptr_exc;
--  nWR = 1, nRD = 1, if (01100) then 000000000 else 000101000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
34 => '1' & '1' & "01100" & O"000" & O"050" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- SvPt <= BP;
-- L0430@0023 C000007F000000008000.save_bp:  SvPt <= BP;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 10, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
35 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "10" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceBP();
-- L0431@0024 C1F3F9FF000000000000.bp_done:  traceBP();
--  nWR = 1, nRD = 1, if (00000) then 111110011 else 111110011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
36 => '1' & '1' & "00000" & O"763" & O"763" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0432@0025 FE00047F000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
37 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 11;
-- L0437@0026 C1F7FB8B020000000000.  trace(from_microcode), directByte = 11;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0001011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
38 => '1' & '1' & "00000" & O"767" & O"767" & "0001011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if SVP_IN_INPLINE then save_bp;
-- L0438@0027 DA23007F000000000000.  if SVP_IN_INPLINE then save_bp;
--  nWR = 1, nRD = 1, if (01101) then 000100011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
39 => '1' & '1' & "01101" & O"043" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- SvPt <= BP, BP <= SvPt, goto bp_done;
-- L0439@0028 FE00127F000000028000.ptr_exc:  SvPt <= BP, BP <= SvPt, if false then continue else bp_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000100100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 010, SvPt <= 10, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
40 => '1' & '1' & "11111" & O"000" & O"044" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"2" & "10" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 36;
-- L0444@0029 C1F7FBA4020000000000.  trace(from_microcode), directByte = 36;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0100100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
41 => '1' & '1' & "00000" & O"767" & O"767" & "0100100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0445@002A E3BD007F000000000400.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110111101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 001, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
42 => '1' & '1' & "10001" & O"675" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"1" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= from_vars, ExpStack <= pop1;
-- L0446@002B C000007F1800E0000000.  T <= from_vars, ExpStack <= pop1;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 111, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
43 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"7" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, goto fetch;
-- L0447@002C FE00047F000080000000.push_T:  ExpStack <= push_TWord, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
44 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 37;
-- L0452@002D C1F7FBA5020000000000.  trace(from_microcode), directByte = 37;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0100101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
45 => '1' & '1' & "00000" & O"767" & O"767" & "0100101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0453@002E E3BD007F000000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110111101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
46 => '1' & '1' & "10001" & O"675" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, ExpStack <= pop2, traceString 51;
-- L0454@002F C1F7FBB32200C0000000.  T <= ExpStack, ExpStack <= pop2, trace(from_microcode), directByte = 51;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0110011, T <= 00100, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
47 => '1' & '1' & "00000" & O"767" & O"767" & "0110011" & "00100" & "01" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0455@0030 E3BD007F000000000400.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110111101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 001, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
48 => '1' & '1' & "10001" & O"675" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"1" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= pop1, Vars <= T, goto fetch1;
-- L0456@0031 FE0004FF0000E0000800.  ExpStack <= pop1, Vars <= T, if false then continue else fetch1;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 111, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 010, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
49 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"7" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"2" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 47;
-- L0461@0032 C1F7FBAF020000000000.  trace(from_microcode), directByte = 47;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0101111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
50 => '1' & '1' & "00000" & O"767" & O"767" & "0101111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if IS_RUNMODE then next else INTERNAL_ERR;
-- L0462@0033 F600DE7F000000000000.  if IS_RUNMODE then next else INTERNAL_ERR;
--  nWR = 1, nRD = 1, if (11011) then 000000000 else 110111100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
51 => '1' & '1' & "11011" & O"000" & O"674" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_FULL then BSTACK_ERR;
-- L0463@0034 E1BF007F000000000000.  if STACK_IS_FULL then BSTACK_ERR;
--  nWR = 1, nRD = 1, if (10000) then 110111111 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
52 => '1' & '1' & "10000" & O"677" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- BasStack <= push_Lino_and_BP, goto fetch;
-- L0464@0035 FE00047F000300000000.  BasStack <= push_Lino_and_BP, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 11, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
53 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "11" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 48;
-- L0469@0036 C1F7FBB0020000000000.  trace(from_microcode), directByte = 48;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0110000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
54 => '1' & '1' & "00000" & O"767" & O"767" & "0110000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if IS_RUNMODE then next else INTERNAL_ERR;
-- L0470@0037 F600DE7F000000000000.  if IS_RUNMODE then next else INTERNAL_ERR;
--  nWR = 1, nRD = 1, if (11011) then 000000000 else 110111100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
55 => '1' & '1' & "11011" & O"000" & O"674" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= BasStack_Hi,if STACK_IS_EMPTY then BSTACK_ERR;
-- L0471@0038 E3BF007FA00000000000.  T <= BasStack_Hi,if STACK_IS_EMPTY then BSTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110111111 else 000000000, directByte = 1111111, T <= 10100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
56 => '1' & '1' & "10001" & O"677" & O"000" & "1111111" & "10100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, T <= BasStack_Lo, traceString 51;
-- L0472@0039 C1F7FBB3AA0000000010.  Lino <= T, T <= BasStack_Lo, trace(from_microcode), directByte = 51;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0110011, T <= 10101, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
57 => '1' & '1' & "00000" & O"767" & O"767" & "0110011" & "10101" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '1' & '0' & '0' & '0' & '0',

-- BP <= T, BasStack <= pop, goto fetch1;
-- L0473@003A FE0004FF000200060000.  BP <= T, BasStack <= pop, if false then continue else fetch1;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 10, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
58 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "10" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 45;
-- L0478@003B C1F7FBAD020000000000.  trace(from_microcode), directByte = 45;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0101101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
59 => '1' & '1' & "00000" & O"767" & O"767" & "0101101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= XQhere, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0479@003C E3BD007F004000000000.go:  IL_PC <= XQhere, if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110111101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 001, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
60 => '1' & '1' & "10001" & O"675" & O"000" & "1111111" & "00000" & "00" & O"1" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0480@003D C000007F0000C0000060.  alu <= R_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
61 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00011" & '0' & '0' & '0' & '0' & '0',

-- T <= from_R;
-- L0481@003E C000007F880000000000.  T <= from_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
62 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, if R_IS_ZERO then NOPROG_ERR;
-- L0482@003F E7B8007F000000000010.  Lino <= T, if R_IS_ZERO then NOPROG_ERR;
--  nWR = 1, nRD = 1, if (10011) then 110111000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
63 => '1' & '1' & "10011" & O"670" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '1' & '0' & '0' & '0' & '0',

-- T <= Cache_Data, if CACHE_VALID then go_cvalid;
-- L0484@0040 FA43007FB00000000000.  T <= Cache_Data, if CACHE_VALID then go_cvalid;
--  nWR = 1, nRD = 1, if (11101) then 001000011 else 000000000, directByte = 1111111, T <= 10110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
64 => '1' & '1' & "11101" & O"103" & O"000" & "1111111" & "10110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findLino(Prog_start);
-- L0486@0041 C044227F700000000000.go_cmiss:  findLino(Prog_start);
--  nWR = 1, nRD = 1, if (00000) then 001000100 else 001000100, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
65 => '1' & '1' & "00000" & O"104" & O"104" & "1111111" & "01110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= cache_store, goto fetch;
-- L0487@0042 FE00047F000000000380.  alu <= cache_store, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 11100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
66 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "11100" & '0' & '0' & '0' & '0' & '0',

-- BP <= T, if CACHE_HIT then fetch else go_cmiss;
-- L0489@0043 FC0820FF000000060000.go_cvalid:  BP <= T, if CACHE_HIT then fetch else go_cmiss;
--  nWR = 1, nRD = 1, if (11110) then 000001000 else 001000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
67 => '1' & '1' & "11110" & O"010" & O"101" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= reset1, readCore(T);
-- L0491@0044 C1F1F8FF000003000040.findLino:  alu <= reset1, readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111110001 else 111110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
68 => '1' & '1' & "00000" & O"761" & O"761" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00010" & '0' & '0' & '0' & '0' & '0',

-- alu <= Rx256_plus_MDR, T <= inc;
-- L0492@0045 C000007F580000000220.  alu <= Rx256_plus_MDR, T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
69 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10001" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromLino, readCore(T);
-- L0493@0046 C1F1F8FF000003000280.  alu <= S_fromLino, readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111110001 else 111110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
70 => '1' & '1' & "00000" & O"761" & O"761" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10100" & '0' & '0' & '0' & '0' & '0',

-- alu <= Rx256_plus_MDR, T <= inc;
-- L0494@0047 C000007F580000000220.  alu <= Rx256_plus_MDR, T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
71 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10001" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_minus_R, if R_IS_ZERO then nx_err;
-- L0495@0048 E677007F0000000000C0.  alu <= S_minus_R, if R_IS_ZERO then nx_err;
--  nWR = 1, nRD = 1, if (10011) then 001110111 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
72 => '1' & '1' & "10011" & O"167" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00110" & '0' & '0' & '0' & '0' & '0',

-- BP <= T, if Y_ZERO then return;
-- L0497@0049 E802007F000000060000.  BP <= T, if Y_ZERO then return;
--  nWR = 1, nRD = 1, if (10100) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
73 => '1' & '1' & "10100" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findNextCR(same);
-- L0498@004A C1C9E4FF000000000000.  findNextCR(same);
--  nWR = 1, nRD = 1, if (00000) then 111001001 else 111001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
74 => '1' & '1' & "00000" & O"711" & O"711" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto findLino;
-- L0499@004B FE00227F580000000000.  T <= inc, if false then continue else findLino;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 001000100, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
75 => '1' & '1' & "11111" & O"000" & O"104" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 25;
-- L0504@004C C1F7FB99020000000000.  trace(from_microcode), directByte = 25;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0011001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
76 => '1' & '1' & "00000" & O"767" & O"767" & "0011001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0505@004D E3BD007F000000000060.  alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110111101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
77 => '1' & '1' & "10001" & O"675" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00011" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= pop2, alu <= neg_R, goto alu_done;
-- L0506@004E FE00297F0000C00000E0.  ExpStack <= pop2, alu <= neg_R, if false then continue else alu_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 001010010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
78 => '1' & '1' & "11111" & O"000" & O"122" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00111" & '0' & '0' & '0' & '0' & '0',

-- traceString 22;
-- L0511@004F C1F7FB96020000000000.  trace(from_microcode), directByte = 22;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0010110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
79 => '1' & '1' & "00000" & O"767" & O"767" & "0010110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- pullRS();
-- L0512@0050 C1D2E97F000000000000.  pullRS();
--  nWR = 1, nRD = 1, if (00000) then 111010010 else 111010010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
80 => '1' & '1' & "00000" & O"722" & O"722" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_plus_R, if ALU_READY then next else repeat;
-- L0513@0051 EC0000FF0000000000A0.  alu <= S_plus_R, if ALU_READY then next else repeat;
--  nWR = 1, nRD = 1, if (10110) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
81 => '1' & '1' & "10110" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00101" & '0' & '0' & '0' & '0' & '0',

-- T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
-- L0515@0052 EFBA007F280000000000.alu_done:  T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
--  nWR = 1, nRD = 1, if (10111) then 110111010 else 000000000, directByte = 1111111, T <= 00101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
82 => '1' & '1' & "10111" & O"672" & O"000" & "1111111" & "00101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, goto fetch;
-- L0516@0053 FE00047F000080000000.u_done:  ExpStack <= push_TWord, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
83 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 23;
-- L0521@0054 C1F7FB97020000000000.  trace(from_microcode), directByte = 23;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0010111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
84 => '1' & '1' & "00000" & O"767" & O"767" & "0010111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- pullRS();
-- L0522@0055 C1D2E97F000000000000.  pullRS();
--  nWR = 1, nRD = 1, if (00000) then 111010010 else 111010010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
85 => '1' & '1' & "00000" & O"722" & O"722" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_minus_R, if ALU_READY then alu_done else repeat;
-- L0523@0056 EC5200FF0000000000C0.  alu <= S_minus_R, if ALU_READY then alu_done else repeat;
--  nWR = 1, nRD = 1, if (10110) then 001010010 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
86 => '1' & '1' & "10110" & O"122" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00110" & '0' & '0' & '0' & '0' & '0',

-- traceString 24;
-- L0528@0057 C1F7FB98020000000000.  trace(from_microcode), directByte = 24;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0011000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
87 => '1' & '1' & "00000" & O"767" & O"767" & "0011000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- pullRS();
-- L0529@0058 C1D2E97F000000000000.  pullRS();
--  nWR = 1, nRD = 1, if (00000) then 111010010 else 111010010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
88 => '1' & '1' & "00000" & O"722" & O"722" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_mul_R, if ALU_READY then alu_done else repeat;
-- L0530@0059 EC5200FF000000000100.  alu <= S_mul_R, if ALU_READY then alu_done else repeat;
--  nWR = 1, nRD = 1, if (10110) then 001010010 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 01000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
89 => '1' & '1' & "10110" & O"122" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "01000" & '0' & '0' & '0' & '0' & '0',

-- traceString 35;
-- L0535@005A C1F7FBA3020000000000.  trace(from_microcode), directByte = 35;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0100011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
90 => '1' & '1' & "00000" & O"767" & O"767" & "0100011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- pullRS();
-- L0536@005B C1D2E97F000000000000.  pullRS();
--  nWR = 1, nRD = 1, if (00000) then 111010010 else 111010010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
91 => '1' & '1' & "00000" & O"722" & O"722" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- div_mod();
-- L0537@005C C05E2F7F000000000000.  div_mod();
--  nWR = 1, nRD = 1, if (00000) then 001011110 else 001011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
92 => '1' & '1' & "00000" & O"136" & O"136" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto alu_done;
-- L0538@005D FE00297F000000000000.  if false then continue else alu_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 001010010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
93 => '1' & '1' & "11111" & O"000" & O"122" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
-- L0540@005E E7B9007F000000000180.div_mod:  alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
--  nWR = 1, nRD = 1, if (10011) then 110111001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 01100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
94 => '1' & '1' & "10011" & O"671" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "01100" & '0' & '0' & '0' & '0' & '0',

-- alu <= div_shift;
-- L0541@005F C000007F0000000001A0.div_loop:  alu <= div_shift;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 01101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
95 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "01101" & '0' & '0' & '0' & '0' & '0',

-- if ALU_READY then div_done;
-- L0542@0060 EC62007F000000000000.  if ALU_READY then div_done;
--  nWR = 1, nRD = 1, if (10110) then 001100010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
96 => '1' & '1' & "10110" & O"142" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= div_subset, goto div_loop;
-- L0543@0061 FE002FFF0000000001C0.  alu <= div_subset, if false then continue else div_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 001011111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 01110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
97 => '1' & '1' & "11111" & O"000" & O"137" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "01110" & '0' & '0' & '0' & '0' & '0',

-- alu <= div_end, back;
-- L0544@0062 C002007F0000000001E0.div_done:  alu <= div_end, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 01111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
98 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "01111" & '0' & '0' & '0' & '0' & '0',

-- traceString 46;
-- L0549@0063 C1F7FBAE020000000000.  trace(from_microcode), directByte = 46;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0101110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
99 => '1' & '1' & "00000" & O"767" & O"767" & "0101110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0550@0064 C000007F0000C0000060.  alu <= R_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
100 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00011" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TByte;
-- L0551@0065 C000007F0000A0000000.  ExpStack <= push_TByte;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 101, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
101 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"5" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, ExpStack <= pop2;
-- L0552@0066 C000007F2000C0000000.  T <= ExpStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
102 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromStack, ExpStack <= pop2, traceString 51;
-- L0553@0067 C1F7FBB30200C0000080.  alu <= S_fromStack, ExpStack <= pop2, trace(from_microcode), directByte = 51;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0110011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
103 => '1' & '1' & "00000" & O"767" & O"767" & "0110011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00100" & '0' & '0' & '0' & '0' & '0',

-- if CP_SKIP then next else fetch1;
-- L0554@0068 E80004FF000000000000.  if CP_SKIP then next else fetch1;
--  nWR = 1, nRD = 1, if (10100) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
104 => '1' & '1' & "10100" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= inc, goto fetch1;
-- L0555@0069 FE0004FF008000000000.  IL_PC <= inc, if false then continue else fetch1;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
105 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"2" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 39;
-- L0560@006A C1F7FBA7020000000000.  trace(from_microcode), directByte = 39;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0100111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
106 => '1' & '1' & "00000" & O"767" & O"767" & "0100111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if INTREQ then next else nx_start;
-- L0561@006B EA0036FF000000000000.  if INTREQ then next else nx_start;
--  nWR = 1, nRD = 1, if (10101) then 000000000 else 001101101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
107 => '1' & '1' & "10101" & O"000" & O"155" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_intLino, BasStack <= push_Lino_and_BP, goto go;
-- L0562@006C FE001E7F000380000000.  ExpStack <= push_intLino, BasStack <= push_Lino_and_BP, if false then continue else go;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000111100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 11, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
108 => '1' & '1' & "11111" & O"000" & O"074" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "11" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= T, if IS_RUNMODE then next else fetch;
-- L0563@006D F600047F00C000000000.nx_start:  IL_PC <= T, if IS_RUNMODE then next else fetch;
--  nWR = 1, nRD = 1, if (11011) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 011, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
109 => '1' & '1' & "11011" & O"000" & O"010" & "1111111" & "00000" & "00" & O"3" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findNx();
-- L0564@006E C072397F000000000000.  findNx();
--  nWR = 1, nRD = 1, if (00000) then 001110010 else 001110010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
110 => '1' & '1' & "00000" & O"162" & O"162" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, IL_PC <= XQhere;
-- L0565@006F C000007F004000000010.  Lino <= T, IL_PC <= XQhere;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 001, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
111 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"1" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '1' & '0' & '0' & '0' & '0',

-- traceBP();
-- L0567@0070 C1F3F9FF000000000000.nx_cont:  traceBP();
--  nWR = 1, nRD = 1, if (00000) then 111110011 else 111110011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
112 => '1' & '1' & "00000" & O"763" & O"763" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if KBD_BREAK then BREAK else fetch;
-- L0569@0071 C9B3047F000000000000.  if KBD_BREAK then BREAK else fetch;
--  nWR = 1, nRD = 1, if (00100) then 110110011 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
113 => '1' & '1' & "00100" & O"663" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findNextCR(BP);
-- L0571@0072 C1C9E4FF680000000000.findNx:  findNextCR(BP);
--  nWR = 1, nRD = 1, if (00000) then 111001001 else 111001001, directByte = 1111111, T <= 01101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
114 => '1' & '1' & "00000" & O"711" & O"711" & "1111111" & "01101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc;
-- L0572@0073 C000007F580000000000.  T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
115 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- BP <= T;
-- L0573@0074 C000007F000000060000.  BP <= T;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
116 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore16(reset1, BP);
-- L0574@0075 C1CCE67F680000000040.  readCore16(reset1, BP);
--  nWR = 1, nRD = 1, if (00000) then 111001100 else 111001100, directByte = 1111111, T <= 01101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
117 => '1' & '1' & "00000" & O"714" & O"714" & "1111111" & "01101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00010" & '0' & '0' & '0' & '0' & '0',

-- BP <= T, T <= from_R, if R_IS_ZERO then next else return;
-- L0575@0076 E600017F880000060000.  BP <= T, T <= from_R, if R_IS_ZERO then next else return;
--  nWR = 1, nRD = 1, if (10011) then 000000000 else 000000010, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
118 => '1' & '1' & "10011" & O"000" & O"002" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = BEEP, outChar(from_microcode);
-- L0577@0077 C1EBF587000008000000.nx_err:  directByte = 0x07, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 0000111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
119 => '1' & '1' & "00000" & O"753" & O"753" & "0000111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto stop_run;
-- L0578@0078 FE009F7F000000000000.  if false then continue else stop_run;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 100111110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
120 => '1' & '1' & "11111" & O"000" & O"476" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 4;
-- L0583@0079 C1F7FB84020000000000.  trace(from_microcode), directByte = 4;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0000100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
121 => '1' & '1' & "00000" & O"767" & O"767" & "0000100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- skipSpaces();
-- L0584@007A C1E2F17F000000000000.  skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 111100010 else 111100010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
122 => '1' & '1' & "00000" & O"742" & O"742" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(BP);
-- L0585@007B C1F1F8FF000002000000.find_colon:  readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 111110001 else 111110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
123 => '1' & '1' & "00000" & O"761" & O"761" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if MDR_MATCHES_DB then nx_start;
-- L0586@007C CA6D000D000000000000.  directByte = 0x0D, if MDR_MATCHES_DB then nx_start;
--  nWR = 1, nRD = 1, if (00101) then 001101101 else 000000000, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
124 => '1' & '1' & "00101" & O"155" & O"000" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = COLON, if MDR_MATCHES_DB then found_colon;
-- L0587@007D CA7F003A000000000000.  directByte = 0x3A, if MDR_MATCHES_DB then found_colon;
--  nWR = 1, nRD = 1, if (00101) then 001111111 else 000000000, directByte = 0111010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
125 => '1' & '1' & "00101" & O"177" & O"000" & "0111010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- BP <= inc, directByte = NULL, if MDR_MATCHES_DB then INTERNAL_ERR else find_colon;
-- L0588@007E CBBC3D80000000030000.  BP <= inc, directByte = 0x00, if MDR_MATCHES_DB then INTERNAL_ERR else find_colon;
--  nWR = 1, nRD = 1, if (00101) then 110111100 else 001111011, directByte = 0000000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
126 => '1' & '1' & "00101" & O"674" & O"173" & "0000000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- BP <= inc, IL_PC <= XQhere, if IS_RUNMODE then nx_cont else SYNTAX_ERR;
-- L0589@007F F670DDFF004000030000.found_colon:  BP <= inc, IL_PC <= XQhere, if IS_RUNMODE then nx_cont else SYNTAX_ERR;
--  nWR = 1, nRD = 1, if (11011) then 001110000 else 110111011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 001, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
127 => '1' & '1' & "11011" & O"160" & O"673" & "1111111" & "00000" & "00" & O"1" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 41;
-- L0594@0080 C1F7FBA9020000000000.  trace(from_microcode), directByte = 41;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0101001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
128 => '1' & '1' & "00000" & O"767" & O"767" & "0101001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= reset1, if IS_RUNMODE then badop;
-- L0595@0081 F60C007F000000000040.  alu <= reset1, if IS_RUNMODE then badop;
--  nWR = 1, nRD = 1, if (11011) then 000001100 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
129 => '1' & '1' & "11011" & O"014" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00010" & '0' & '0' & '0' & '0' & '0',

-- T <= from_R, if STACK_IS_EMPTY then ls_parchk;
-- L0596@0082 E285007F880000000000.ls_parload:  T <= from_R, if STACK_IS_EMPTY then ls_parchk;
--  nWR = 1, nRD = 1, if (10001) then 010000101 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
130 => '1' & '1' & "10001" & O"205" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromT;
-- L0597@0083 C000007F000000000240.  alu <= S_fromT;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
131 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10010" & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2, goto ls_parload;
-- L0598@0084 FE00417F0000C0000060.  alu <= R_fromStack, ExpStack <= pop2, if false then continue else ls_parload;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010000010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
132 => '1' & '1' & "11111" & O"000" & O"202" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00011" & '0' & '0' & '0' & '0' & '0',

-- alu <= ls_load;
-- L0599@0085 C000007F000000000300.ls_parchk:  alu <= ls_load;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 11000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
133 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "11000" & '0' & '0' & '0' & '0' & '0',

-- if LS_PARAMS_OK then next else SYNTAX_ERR;
-- L0600@0086 EC00DDFF000000000000.  if LS_PARAMS_OK then next else SYNTAX_ERR;
--  nWR = 1, nRD = 1, if (10110) then 000000000 else 110111011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
134 => '1' & '1' & "10110" & O"000" & O"673" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= Prog_start;
-- L0602@0087 C000007F700000000000.ls_start:  T <= Prog_start;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
135 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if CHARIN_READY then next else ls_continue;
-- L0603@0088 D60046FF000000000000.ls_lineloop:  if CHARIN_READY then next else ls_continue;
--  nWR = 1, nRD = 1, if (01011) then 000000000 else 010001101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
136 => '1' & '1' & "01011" & O"000" & O"215" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if KBD_BREAK then BREAK;
-- L0604@0089 C9B3007F000000000000.  if KBD_BREAK then BREAK;
--  nWR = 1, nRD = 1, if (00100) then 110110011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
137 => '1' & '1' & "00100" & O"663" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_continue;
-- L0605@008A D40046A0000000002000.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_continue;
--  nWR = 1, nRD = 1, if (01010) then 000000000 else 010001101, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
138 => '1' & '1' & "01010" & O"000" & O"215" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if CHARIN_READY then next else repeat;
-- L0606@008B D60000FF000000000000.ls_pause:  if CHARIN_READY then next else repeat;
--  nWR = 1, nRD = 1, if (01011) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
139 => '1' & '1' & "01011" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
-- L0607@008C D40045A0000000002000.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
--  nWR = 1, nRD = 1, if (01010) then 000000000 else 010001011, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
140 => '1' & '1' & "01010" & O"000" & O"213" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, readCore16(reset1, same);
-- L0608@008D C1CCE67F000000002040.ls_continue:  gotChar = 1, readCore16(reset1, same);
--  nWR = 1, nRD = 1, if (00000) then 111001100 else 111001100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 000, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
141 => '1' & '1' & "00000" & O"714" & O"714" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & O"0" & "00010" & '0' & '0' & '0' & '0' & '0',

-- alu <= ls_check, if R_IS_ZERO then fetch;
-- L0609@008E E608007F000000000320.  alu <= ls_check, if R_IS_ZERO then fetch;
--  nWR = 1, nRD = 1, if (10011) then 000001000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 11001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
142 => '1' & '1' & "10011" & O"010" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "11001" & '0' & '0' & '0' & '0' & '0',

-- if LS_PASSED_END then fetch;
-- L0610@008F EE08007F000000000000.  if LS_PASSED_END then fetch;
--  nWR = 1, nRD = 1, if (10111) then 000001000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
143 => '1' & '1' & "10111" & O"010" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if LS_IN_RANGE then next else ls_nextLine;
-- L0611@0090 F0004CFF000000000000.  if LS_IN_RANGE then next else ls_nextLine;
--  nWR = 1, nRD = 1, if (11000) then 000000000 else 010011001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
144 => '1' & '1' & "11000" & O"000" & O"231" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= save, printDecR(Y_save);
-- L0613@0091 C1D5EAFF900000000340.  T <= save, printDecR(Y_save);
--  nWR = 1, nRD = 1, if (00000) then 111010101 else 111010101, directByte = 1111111, T <= 10010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 11010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
145 => '1' & '1' & "00000" & O"725" & O"725" & "1111111" & "10010" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "11010" & '0' & '0' & '0' & '0' & '0',

-- T <= recall, alu <= Y_recall, directByte = ' ', outChar(from_microcode);
-- L0614@0092 C1EBF5A0980008000360.  T <= recall, alu <= Y_recall, directByte = ' ', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 0100000, T <= 10011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 11011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
146 => '1' & '1' & "00000" & O"753" & O"753" & "0100000" & "10011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "11011" & '0' & '0' & '0' & '0' & '0',

-- readCore(T);
-- L0615@0093 C1F1F8FF000003000000.ls_charloop:  readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111110001 else 111110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
147 => '1' & '1' & "00000" & O"761" & O"761" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outChar(from_MDR);
-- L0616@0094 C1EBF5FF000010000000.  outChar(from_MDR);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 100, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
148 => '1' & '1' & "00000" & O"753" & O"753" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"4" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if MDR_MATCHES_DB then next else ls_next;
-- L0617@0095 CA004C0D000000000000.ls_nextchar:  directByte = 0x0D, if MDR_MATCHES_DB then next else ls_next;
--  nWR = 1, nRD = 1, if (00101) then 000000000 else 010011000, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
149 => '1' & '1' & "00101" & O"000" & O"230" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = LF, outChar(from_microcode);
-- L0618@0096 C1EBF58A000008000000.  directByte = 0x0A, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 0001010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
150 => '1' & '1' & "00000" & O"753" & O"753" & "0001010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto ls_lineloop;
-- L0619@0097 FE00447F580000000000.  T <= inc, if false then continue else ls_lineloop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010001000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
151 => '1' & '1' & "11111" & O"000" & O"210" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto ls_charloop;
-- L0620@0098 FE0049FF580000000000.ls_next:  T <= inc, if false then continue else ls_charloop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010010011, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
152 => '1' & '1' & "11111" & O"000" & O"223" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findNextCR(same);
-- L0621@0099 C1C9E4FF000000000000.ls_nextLine:  findNextCR(same);
--  nWR = 1, nRD = 1, if (00000) then 111001001 else 111001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
153 => '1' & '1' & "00000" & O"711" & O"711" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto ls_lineloop;
-- L0622@009A FE00447F580000000000.  T <= inc, if false then continue else ls_lineloop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010001000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
154 => '1' & '1' & "11111" & O"000" & O"210" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 26;
-- L0627@009B C1F7FB9A020000000000.  trace(from_microcode), directByte = 26;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0011010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
155 => '1' & '1' & "00000" & O"767" & O"767" & "0011010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0628@009C E3BD007F000000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110111101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
156 => '1' & '1' & "10001" & O"675" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- printDec();
-- L0629@009D C1D4EA7F000000000000.  printDec();
--  nWR = 1, nRD = 1, if (00000) then 111010100 else 111010100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
157 => '1' & '1' & "00000" & O"724" & O"724" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0630@009E FE00047F000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
158 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 18;
-- L0635@009F C1F7FB92020000000000.  trace(from_microcode), directByte = 18;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0010010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
159 => '1' & '1' & "00000" & O"767" & O"767" & "0010010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- BP <= inc, readCore(BP);
-- L0636@00A0 C1F1F8FF000002030000.pq_loop:  BP <= inc, readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 111110001 else 111110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
160 => '1' & '1' & "00000" & O"761" & O"761" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"3" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = '"', if MDR_MATCHES_DB then pq_done;
-- L0637@00A1 CAA40022000000000000.  directByte = '"', if MDR_MATCHES_DB then pq_done;
--  nWR = 1, nRD = 1, if (00101) then 010100100 else 000000000, directByte = 0100010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
161 => '1' & '1' & "00101" & O"244" & O"000" & "0100010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outChar(from_MDR);
-- L0638@00A2 C1EBF5FF000010000000.  outChar(from_MDR);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 100, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
162 => '1' & '1' & "00000" & O"753" & O"753" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"4" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if MDR_MATCHES_DB then INTERNAL_ERR else pq_loop;
-- L0640@00A3 CBBC500D000000000000.  directByte = 0x0D, if MDR_MATCHES_DB then INTERNAL_ERR else pq_loop;
--  nWR = 1, nRD = 1, if (00101) then 110111100 else 010100000, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
163 => '1' & '1' & "00101" & O"674" & O"240" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceBP();
-- L0641@00A4 C1F3F9FF000000000000.pq_done:  traceBP();
--  nWR = 1, nRD = 1, if (00000) then 111110011 else 111110011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
164 => '1' & '1' & "00000" & O"763" & O"763" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0642@00A5 FE00047F000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
165 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 27;
-- L0647@00A6 C1F7FB9B020000000000.  trace(from_microcode), directByte = 27;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0011011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
166 => '1' & '1' & "00000" & O"767" & O"767" & "0011011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if AT_TAB then fetch;
-- L0648@00A7 F208007F000000000000.pt_loop:  if AT_TAB then fetch;
--  nWR = 1, nRD = 1, if (11001) then 000001000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
167 => '1' & '1' & "11001" & O"010" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', outChar(from_microcode);
-- L0649@00A8 C1EBF5A0000008000000.  directByte = ' ', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
168 => '1' & '1' & "00000" & O"753" & O"753" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto pt_loop;
-- L0650@00A9 FE0053FF000000000000.  if false then continue else pt_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010100111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
169 => '1' & '1' & "11111" & O"000" & O"247" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 6;
-- L0655@00AA C1F7FB86020000000000.  trace(from_microcode), directByte = 6;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0000110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
170 => '1' & '1' & "00000" & O"767" & O"767" & "0000110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outCRLF();
-- L0656@00AB C1E9F4FF000000000000.crlf_fetch:  outCRLF();
--  nWR = 1, nRD = 1, if (00000) then 111101001 else 111101001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
171 => '1' & '1' & "00000" & O"751" & O"751" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0657@00AC FE00047F000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
172 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 5;
-- L0662@00AD C1F7FB85020000000000.  trace(from_microcode), directByte = 5;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0000101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
173 => '1' & '1' & "00000" & O"767" & O"767" & "0000101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outChar(from_interpreter);
-- L0663@00AE C1EBF5FF000004000000.pc_loop:  outChar(from_interpreter);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 001, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
174 => '1' & '1' & "00000" & O"753" & O"753" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"1" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 3;
-- L0664@00AF C1F7FB83020000000000.  trace(from_microcode), directByte = 3;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0000011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
175 => '1' & '1' & "00000" & O"767" & O"767" & "0000011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
-- L0665@00B0 C208577F008000000000.  IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
--  nWR = 1, nRD = 1, if (00001) then 000001000 else 010101110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
176 => '1' & '1' & "00001" & O"010" & O"256" & "1111111" & "00000" & "00" & O"2" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 4;
-- L0670@00B1 C1F7FB84020000000000.  trace(from_microcode), directByte = 4;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0000100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
177 => '1' & '1' & "00000" & O"767" & O"767" & "0000100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- pullRS();
-- L0671@00B2 C1D2E97F000000000000.  pullRS();
--  nWR = 1, nRD = 1, if (00000) then 111010010 else 111010010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
178 => '1' & '1' & "00000" & O"722" & O"722" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, ExpStack <= pop2;
-- L0672@00B3 C000007F2000C0000000.  T <= ExpStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
179 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0673@00B4 E3BD007F000000000400.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110111101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 001, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
180 => '1' & '1' & "10001" & O"675" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"1" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= pop1, if NEXT_SET then next else for_first;
-- L0675@00B5 FC005CFF0000E0000000.  ExpStack <= pop1, if NEXT_SET then next else for_first;
--  nWR = 1, nRD = 1, if (11110) then 000000000 else 010111001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 111, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
181 => '1' & '1' & "11110" & O"000" & O"271" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"7" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Vars <= for_fromLino, T <= from_vars, if FOR_SET then next else SYNTAX_ERR;
-- L0678@00B6 FA00DDFF180000001000.  Vars <= for_fromLino, T <= from_vars, if FOR_SET then next else SYNTAX_ERR;
--  nWR = 1, nRD = 1, if (11101) then 000000000 else 110111011, directByte = 1111111, T <= 00011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 100, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
182 => '1' & '1' & "11101" & O"000" & O"673" & "1111111" & "00011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"4" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= for_step;
-- L0679@00B7 C000007F0000000003A0.  alu <= for_step;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 11101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
183 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "11101" & '0' & '0' & '0' & '0' & '0',

-- T <= from_YLo, goto for_check;
-- L0680@00B8 FE005D7F280000000000.  T <= from_YLo, if false then continue else for_check;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010111010, directByte = 1111111, T <= 00101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
184 => '1' & '1' & "11111" & O"000" & O"272" & "1111111" & "00101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Vars <= for_fromLino;
-- L0683@00B9 C000007F000000001000.for_first:  Vars <= for_fromLino;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 100, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
185 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"4" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= for_check;
-- L0684@00BA C000007F0000000003C0.for_check:  alu <= for_check;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 11110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
186 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "11110" & '0' & '0' & '0' & '0' & '0',

-- Vars <= T, if ALU_READY then for_done;
-- L0685@00BB ECCD007F000000000800.  Vars <= T, if ALU_READY then for_done;
--  nWR = 1, nRD = 1, if (10110) then 011001101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 010, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
187 => '1' & '1' & "10110" & O"315" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"2" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= from_var_Next, if NEXT_SET then next else find_next;
-- L0688@00BC FC005F7FD80000000000.  T <= from_var_Next, if NEXT_SET then next else find_next;
--  nWR = 1, nRD = 1, if (11110) then 000000000 else 010111110, directByte = 1111111, T <= 11011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
188 => '1' & '1' & "11110" & O"000" & O"276" & "1111111" & "11011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Vars <= for_clear, BP <= T, goto for_done;
-- L0689@00BD FE0066FF000000061800.  Vars <= for_clear, BP <= T, if false then continue else for_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 011001101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 110, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
189 => '1' & '1' & "11111" & O"000" & O"315" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & O"6" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Vars <= for_clear, findNx();
-- L0692@00BE C072397F000000001800.find_next:  Vars <= for_clear, findNx();
--  nWR = 1, nRD = 1, if (00000) then 001110010 else 001110010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 110, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
190 => '1' & '1' & "00000" & O"162" & O"162" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"6" & "00000" & '0' & '0' & '0' & '0' & '0',

-- skipSpaces();
-- L0693@00BF C1E2F17F000000000000.  skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 111100010 else 111100010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
191 => '1' & '1' & "00000" & O"742" & O"742" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(BP), BP <= inc;
-- L0694@00C0 C1F1F8FF000002030000.  readCore(BP), BP <= inc;
--  nWR = 1, nRD = 1, if (00000) then 111110001 else 111110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
192 => '1' & '1' & "00000" & O"761" & O"761" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"3" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'N', if MDR_MATCHES_DB then next else find_cont;
-- L0695@00C1 CA0065CE000000000000.  directByte = 'N', if MDR_MATCHES_DB then next else find_cont;
--  nWR = 1, nRD = 1, if (00101) then 000000000 else 011001011, directByte = 1001110, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
193 => '1' & '1' & "00101" & O"000" & O"313" & "1001110" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(BP), BP <= inc;
-- L0696@00C2 C1F1F8FF000002030000.  readCore(BP), BP <= inc;
--  nWR = 1, nRD = 1, if (00000) then 111110001 else 111110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
194 => '1' & '1' & "00000" & O"761" & O"761" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"3" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'E', if MDR_MATCHES_DB then next else find_cont;
-- L0697@00C3 CA0065C5000000000000.  directByte = 'E', if MDR_MATCHES_DB then next else find_cont;
--  nWR = 1, nRD = 1, if (00101) then 000000000 else 011001011, directByte = 1000101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
195 => '1' & '1' & "00101" & O"000" & O"313" & "1000101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(BP), BP <= inc;
-- L0698@00C4 C1F1F8FF000002030000.  readCore(BP), BP <= inc;
--  nWR = 1, nRD = 1, if (00000) then 111110001 else 111110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
196 => '1' & '1' & "00000" & O"761" & O"761" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"3" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'X', if MDR_MATCHES_DB then next else find_cont;
-- L0699@00C5 CA0065D8000000000000.  directByte = 'X', if MDR_MATCHES_DB then next else find_cont;
--  nWR = 1, nRD = 1, if (00101) then 000000000 else 011001011, directByte = 1011000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
197 => '1' & '1' & "00101" & O"000" & O"313" & "1011000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(BP), BP <= inc;
-- L0700@00C6 C1F1F8FF000002030000.  readCore(BP), BP <= inc;
--  nWR = 1, nRD = 1, if (00000) then 111110001 else 111110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
198 => '1' & '1' & "00000" & O"761" & O"761" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"3" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'T', if MDR_MATCHES_DB then next else find_cont;
-- L0701@00C7 CA0065D4000000000000.  directByte = 'T', if MDR_MATCHES_DB then next else find_cont;
--  nWR = 1, nRD = 1, if (00101) then 000000000 else 011001011, directByte = 1010100, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
199 => '1' & '1' & "00101" & O"000" & O"313" & "1010100" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- skipSpaces();
-- L0702@00C8 C1E2F17F000000000000.  skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 111100010 else 111100010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
200 => '1' & '1' & "00000" & O"742" & O"742" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(BP);
-- L0703@00C9 C1F1F8FF000002000000.  readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 111110001 else 111110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
201 => '1' & '1' & "00000" & O"761" & O"761" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if MDR_MATCHES_VARNAME then for_done;
-- L0704@00CA E4CD007F000000000000.  if MDR_MATCHES_VARNAME then for_done;
--  nWR = 1, nRD = 1, if (10010) then 011001101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
202 => '1' & '1' & "10010" & O"315" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findNextCR(BP);
-- L0705@00CB C1C9E4FF680000000000.find_cont:  findNextCR(BP);
--  nWR = 1, nRD = 1, if (00000) then 111001001 else 111001001, directByte = 1111111, T <= 01101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
203 => '1' & '1' & "00000" & O"711" & O"711" & "1111111" & "01101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto find_next;
-- L0706@00CC FE005F7F000000000000.  if false then continue else find_next;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010111110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
204 => '1' & '1' & "11111" & O"000" & O"276" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Vars <= next_clear, findNx();
-- L0708@00CD C072397F000000001C00.for_done:  Vars <= next_clear, findNx();
--  nWR = 1, nRD = 1, if (00000) then 001110010 else 001110010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 111, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
205 => '1' & '1' & "00000" & O"162" & O"162" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"7" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <=  push_TWord, goto fetch;
-- L0710@00CE FE00047F000080000000.  ExpStack <=  push_TWord, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
206 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 4;
-- L0715@00CF C1F7FB84020000000000.  trace(from_microcode), directByte = 4;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0000100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
207 => '1' & '1' & "00000" & O"767" & O"767" & "0000100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0716@00D0 E3BD007F000000000400.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110111101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 001, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
208 => '1' & '1' & "10001" & O"675" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"1" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= pop1, T <= from_var_For, if FOR_SET then next else INTERNAL_ERR;
-- L0717@00D1 FA00DE7FD000E0000000.  ExpStack <= pop1, T <= from_var_For, if FOR_SET then next else INTERNAL_ERR;
--  nWR = 1, nRD = 1, if (11101) then 000000000 else 110111100, directByte = 1111111, T <= 11010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 111, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
209 => '1' & '1' & "11101" & O"000" & O"674" & "1111111" & "11010" & "00" & O"0" & '0' & '0' & "00" & "00" & O"7" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Vars <= next_fromBP, ExpStack <= push_TWord, goto fetch;
-- L0718@00D2 FE00047F000080001400.  Vars <= next_fromBP, ExpStack <= push_TWord, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 101, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
210 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"5" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 8;
-- L0723@00D3 C1F7FB88020000000000.  trace(from_microcode), directByte = 8;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0001000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
211 => '1' & '1' & "00000" & O"767" & O"767" & "0001000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- InlEnd <= InLine_start;
-- L0724@00D4 C000007F000000080000.gl:  InlEnd <= InLine_start;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
212 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "01" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if CHARIN_READY then next else repeat;
-- L0725@00D5 D60000FF000000000000.gl_loop:  if CHARIN_READY then next else repeat;
--  nWR = 1, nRD = 1, if (01011) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
213 => '1' & '1' & "01011" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if KBD_BREAK then next else gl_char;
-- L0726@00D6 C8006C7F000000000000.  if KBD_BREAK then next else gl_char;
--  nWR = 1, nRD = 1, if (00100) then 000000000 else 011011000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
214 => '1' & '1' & "00100" & O"000" & O"330" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
-- L0727@00D7 F73E727F000000002000.  gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
--  nWR = 1, nRD = 1, if (11011) then 100111110 else 011100100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
215 => '1' & '1' & "11011" & O"476" & O"344" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if CHARIN_PRINTABLE then gl_print;
-- L0728@00D8 D2DF007F000000000000.gl_char:  if CHARIN_PRINTABLE then gl_print;
--  nWR = 1, nRD = 1, if (01001) then 011011111 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
216 => '1' & '1' & "01001" & O"337" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if CHARIN_EQU_DB then gl_cr;
-- L0729@00D9 D4E9000D000000000000.  directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
--  nWR = 1, nRD = 1, if (01010) then 011101001 else 000000000, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
217 => '1' & '1' & "01010" & O"351" & O"000" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = BACKSPACE, if CHARIN_EQU_DB then gl_bs;
-- L0730@00DA D4E60008000000000000.  directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
--  nWR = 1, nRD = 1, if (01010) then 011100110 else 000000000, directByte = 0001000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
218 => '1' & '1' & "01010" & O"346" & O"000" & "0001000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = ESC, if CHARIN_EQU_DB then gl_esc;
-- L0731@00DB D4E4001B000000000000.  directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
--  nWR = 1, nRD = 1, if (01010) then 011100100 else 000000000, directByte = 0011011, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
219 => '1' & '1' & "01010" & O"344" & O"000" & "0011011" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = TAB, if CHARIN_EQU_DB then gl_tab;
-- L0732@00DC D4ED0009000000000000.  directByte = 0x09, if CHARIN_EQU_DB then gl_tab;
--  nWR = 1, nRD = 1, if (01010) then 011101101 else 000000000, directByte = 0001001, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
220 => '1' & '1' & "01010" & O"355" & O"000" & "0001001" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = BEEP, outChar(from_microcode);
-- L0734@00DD C1EBF587000008000000.gl_ignore:  directByte = 0x07, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 0000111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
221 => '1' & '1' & "00000" & O"753" & O"753" & "0000111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, goto gl_loop;
-- L0735@00DE FE006AFF000000002000.  gotChar = 1, if false then continue else gl_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 011010101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
222 => '1' & '1' & "11111" & O"000" & O"325" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if INLEND_MAX then gl_ignore;
-- L0737@00DF CEDD007F000000000000.gl_print:  if INLEND_MAX then gl_ignore;
--  nWR = 1, nRD = 1, if (00111) then 011011101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
223 => '1' & '1' & "00111" & O"335" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outChar(from_charin);
-- L0738@00E0 C1EBF5FF00000C000000.  outChar(from_charin);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 011, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
224 => '1' & '1' & "00000" & O"753" & O"753" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"3" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- L0739@00E1 C1EFF7FF000001700000.  writeCore(InlEnd, CHARIN), InlEnd <= inc;
--  nWR = 1, nRD = 1, if (00000) then 111101111 else 111101111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 10, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
225 => '1' & '1' & "00000" & O"757" & O"757" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"3" & "10" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- writeCore(InlEnd, zero);
-- L0740@00E2 C1EFF7FF000001400000.gl_write0:  writeCore(InlEnd, zero);
--  nWR = 1, nRD = 1, if (00000) then 111101111 else 111101111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
226 => '1' & '1' & "00000" & O"757" & O"757" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"2" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, goto gl_loop;
-- L0741@00E3 FE006AFF000000002000.  gotChar = 1, if false then continue else gl_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 011010101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
227 => '1' & '1' & "11111" & O"000" & O"325" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outBeep();
-- L0743@00E4 C1E6F37F000000000000.gl_esc:  outBeep();
--  nWR = 1, nRD = 1, if (00000) then 111100110 else 111100110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
228 => '1' & '1' & "00000" & O"746" & O"746" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, goto gl;
-- L0744@00E5 FE006A7F000000002000.  gotChar = 1, if false then continue else gl;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 011010100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
229 => '1' & '1' & "11111" & O"000" & O"324" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if INLEND_MIN then gl_ignore;
-- L0746@00E6 D0DD007F000000000000.gl_bs:  if INLEND_MIN then gl_ignore;
--  nWR = 1, nRD = 1, if (01000) then 011011101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
230 => '1' & '1' & "01000" & O"335" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = BACKSPACE, outChar(from_microcode);
-- L0747@00E7 C1EBF588000008000000.  directByte = 0x08, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 0001000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
231 => '1' & '1' & "00000" & O"753" & O"753" & "0001000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- InlEnd <= dec, goto gl_write0;
-- L0748@00E8 FE00717F000000180000.  InlEnd <= dec, if false then continue else gl_write0;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 011100010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 11, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
232 => '1' & '1' & "11111" & O"000" & O"342" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "11" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- L0750@00E9 C1EFF7FF000001700000.gl_cr:  writeCore(InlEnd, CHARIN), InlEnd <= inc;
--  nWR = 1, nRD = 1, if (00000) then 111101111 else 111101111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 10, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
233 => '1' & '1' & "00000" & O"757" & O"757" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"3" & "10" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- writeCore(InlEnd, zero);
-- L0751@00EA C1EFF7FF000001400000.  writeCore(InlEnd, zero);
--  nWR = 1, nRD = 1, if (00000) then 111101111 else 111101111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
234 => '1' & '1' & "00000" & O"757" & O"757" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"2" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outCRLF();
-- L0753@00EB C1E9F4FF000000000000.  outCRLF();
--  nWR = 1, nRD = 1, if (00000) then 111101001 else 111101001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
235 => '1' & '1' & "00000" & O"751" & O"751" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, BP <= Inline_start, goto fetch;
-- L0754@00EC FE00047F000000012000.  gotChar = 1, BP <= Inline_start, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 001, SvPt <= 00, gotChar = 1, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
236 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"1" & "00" & '1' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if INLEND_MAX then gl_ignore;
-- L0756@00ED CEDD007F000000000000.gl_tab:  if INLEND_MAX then gl_ignore;
--  nWR = 1, nRD = 1, if (00111) then 011011101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
237 => '1' & '1' & "00111" & O"335" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if AT_TAB then gl_write0;
-- L0757@00EE F2E2007F000000000000.gl_tabloop:  if AT_TAB then gl_write0;
--  nWR = 1, nRD = 1, if (11001) then 011100010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
238 => '1' & '1' & "11001" & O"342" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', outChar(from_microcode);
-- L0758@00EF C1EBF5A0000008000000.  directByte = ' ', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
239 => '1' & '1' & "00000" & O"753" & O"753" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', writeCore(InlEnd, from_microcode), InlEnd <= inc;
-- L0759@00F0 C1EFF7A0000001F00000.  directByte = ' ', writeCore(InlEnd, from_microcode), InlEnd <= inc;
--  nWR = 1, nRD = 1, if (00000) then 111101111 else 111101111, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 111, InlEnd <= 10, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
240 => '1' & '1' & "00000" & O"757" & O"757" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"7" & "10" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto gl_tabloop;
-- L0760@00F1 FE00777F000000000000.  if false then continue else gl_tabloop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 011101110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
241 => '1' & '1' & "11111" & O"000" & O"356" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 4;
-- L0765@00F2 C1F7FB84020000000000.  trace(from_microcode), directByte = 4;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0000100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
242 => '1' & '1' & "00000" & O"767" & O"767" & "0000100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= il_cache_update_statementcount, skipSpaces();
-- L0766@00F3 C1E2F17F000000000040.  alu <= il_cache_update_statementcount, skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 111100010 else 111100010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
243 => '1' & '1' & "00000" & O"742" & O"742" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00010" & '0' & '0' & '0' & '0' & '0',

-- MDR <= ToUpper, if MDR_IS_ALPHA then next else sa_default;
-- L0767@00F4 DE007BFF000000800000.  MDR <= ToUpper, if MDR_IS_ALPHA then next else sa_default;
--  nWR = 1, nRD = 1, if (01111) then 000000000 else 011110111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 100, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
244 => '1' & '1' & "01111" & O"000" & O"367" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"4" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if IL_CACHE_HIT then sa_cached;
-- L0768@00F5 F2F8007F000000000000.  if IL_CACHE_HIT then sa_cached;
--  nWR = 1, nRD = 1, if (11001) then 011111000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
245 => '1' & '1' & "11001" & O"370" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= pc_plus_off2alpha, goto fetch;
-- L0769@00F6 FE00047F014000000000.  IL_PC <= pc_plus_off2alpha, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
246 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"5" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= pc_plus_off8, goto fetch;
-- L0770@00F7 FE00047F010000000000.sa_default:  IL_PC <= pc_plus_off8, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 100, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
247 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"4" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= from_il_cache, BP <= from_il_cache, goto fetch;
-- L0771@00F8 FE00047F004000070000.sa_cached:  IL_PC <= from_il_cache, BP <= from_il_cache, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 001, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 111, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
248 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"1" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"7" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 40;
-- L0776@00F9 C1F7FBA8020000000000.  trace(from_microcode), directByte = 40;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0101000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
249 => '1' & '1' & "00000" & O"767" & O"767" & "0101000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromStack, ExpStack <= pop2;
-- L0777@00FA C000007F0000C0000080.  alu <= S_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
250 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00100" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_plus_R;
-- L0778@00FB C000007F0000000000A0.  alu <= S_plus_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
251 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00101" & '0' & '0' & '0' & '0' & '0',

-- T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
-- L0779@00FC EBBB007F280000000000.  T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
--  nWR = 1, nRD = 1, if (10101) then 110111011 else 000000000, directByte = 1111111, T <= 00101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
252 => '1' & '1' & "10101" & O"673" & O"000" & "1111111" & "00101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, if Y_ZERO then SYNTAX_ERR;
-- L0780@00FD E9BB007F000000000010.  Lino <= T, if Y_ZERO then SYNTAX_ERR;
--  nWR = 1, nRD = 1, if (10100) then 110111011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
253 => '1' & '1' & "10100" & O"673" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '1' & '0' & '0' & '0' & '0',

-- skipSpaces();
-- L0783@00FE C1E2F17F000000000000.  skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 111100010 else 111100010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
254 => '1' & '1' & "00000" & O"742" & O"742" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= BP;
-- L0784@00FF C000007F680000000000.  T <= BP;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
255 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- BE <= T, readCore(T);
-- L0785@0100 C1F1F8FF000003000008.il_findBE:  BE <= T, readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111110001 else 111110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 1, LS <= 0, LE <= 0, PrgEnd <= 0;
256 => '1' & '1' & "00000" & O"761" & O"761" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '1' & '0' & '0' & '0',

-- directByte = CR, if MDR_MATCHES_DB then il_fork;
-- L0786@0101 CB03000D000000000000.  directByte = 0x0D, if MDR_MATCHES_DB then il_fork;
--  nWR = 1, nRD = 1, if (00101) then 100000011 else 000000000, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
257 => '1' & '1' & "00101" & O"403" & O"000" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto il_findBE;
-- L0787@0102 FE00807F580000000000.  T <= inc, if false then continue else il_findBE;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 100000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
258 => '1' & '1' & "11111" & O"000" & O"400" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- scanProgram();
-- L0789@0103 C126937F000000000000.il_fork:  scanProgram();
--  nWR = 1, nRD = 1, if (00000) then 100100110 else 100100110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
259 => '1' & '1' & "00000" & O"446" & O"446" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if IMPLINE_EMPTY then next else changeLine;
-- L0790@0104 D000857F000000000000.  if IMPLINE_EMPTY then next else changeLine;
--  nWR = 1, nRD = 1, if (01000) then 000000000 else 100001010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
260 => '1' & '1' & "01000" & O"000" & O"412" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if R_IS_ZERO then WarmStart;
-- L0792@0105 E605007F000000000000.deleteLine:  if R_IS_ZERO then WarmStart;
--  nWR = 1, nRD = 1, if (10011) then 000000101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
261 => '1' & '1' & "10011" & O"005" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if Y_ZERO then next else WarmStart;
-- L0793@0106 E80002FF000000000000.  if Y_ZERO then next else WarmStart;
--  nWR = 1, nRD = 1, if (10100) then 000000000 else 000000101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
262 => '1' & '1' & "10100" & O"000" & O"005" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findPrgEnd();
-- L0794@0107 C11F8FFF000000000000.  findPrgEnd();
--  nWR = 1, nRD = 1, if (00000) then 100011111 else 100011111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
263 => '1' & '1' & "00000" & O"437" & O"437" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- copyCore(copy_init_del);
-- L0795@0108 C13198FF0000000002A0.  copyCore(copy_init_del);
--  nWR = 1, nRD = 1, if (00000) then 100110001 else 100110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
264 => '1' & '1' & "00000" & O"461" & O"461" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10101" & '0' & '0' & '0' & '0' & '0',

-- goto WarmStart;
-- L0796@0109 FE0002FF000000000000.  if false then continue else WarmStart;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000000101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
265 => '1' & '1' & "11111" & O"000" & O"005" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if R_IS_ZERO then appendLine;
-- L0798@010A E713007F000000000000.changeLine:  if R_IS_ZERO then appendLine;
--  nWR = 1, nRD = 1, if (10011) then 100010011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
266 => '1' & '1' & "10011" & O"423" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if Y_ZERO then next else insertLine;
-- L0799@010B E80087FF000000000000.  if Y_ZERO then next else insertLine;
--  nWR = 1, nRD = 1, if (10100) then 000000000 else 100001111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
267 => '1' & '1' & "10100" & O"000" & O"417" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findPrgEnd();
-- L0801@010C C11F8FFF000000000000.replaceLine:  findPrgEnd();
--  nWR = 1, nRD = 1, if (00000) then 100011111 else 100011111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
268 => '1' & '1' & "00000" & O"437" & O"437" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- copyCore(copy_init_del);
-- L0802@010D C13198FF0000000002A0.  copyCore(copy_init_del);
--  nWR = 1, nRD = 1, if (00000) then 100110001 else 100110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
269 => '1' & '1' & "00000" & O"461" & O"461" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10101" & '0' & '0' & '0' & '0' & '0',

-- scanProgram();
-- L0803@010E C126937F000000000000.  scanProgram();
--  nWR = 1, nRD = 1, if (00000) then 100100110 else 100100110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
270 => '1' & '1' & "00000" & O"446" & O"446" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findPrgEnd();
-- L0804@010F C11F8FFF000000000000.insertLine:  findPrgEnd();
--  nWR = 1, nRD = 1, if (00000) then 100011111 else 100011111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
271 => '1' & '1' & "00000" & O"437" & O"437" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- copyCore(copy_init_ins);
-- L0805@0110 C13198FF0000000002E0.  copyCore(copy_init_ins);
--  nWR = 1, nRD = 1, if (00000) then 100110001 else 100110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
272 => '1' & '1' & "00000" & O"461" & O"461" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10111" & '0' & '0' & '0' & '0' & '0',

-- copyLine(LS);
-- L0806@0111 C1178BFFB80000000000.ins_finish:  copyLine(LS);
--  nWR = 1, nRD = 1, if (00000) then 100010111 else 100010111, directByte = 1111111, T <= 10111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
273 => '1' & '1' & "00000" & O"427" & O"427" & "1111111" & "10111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto WarmStart;
-- L0807@0112 FE0002FF000000000000.  if false then continue else WarmStart;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000000101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
274 => '1' & '1' & "11111" & O"000" & O"005" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= dec;
-- L0809@0113 C000007F600000000000.appendLine:  T <= dec;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
275 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- copyLine(dec);
-- L0810@0114 C1178BFF600000000000.  copyLine(dec);
--  nWR = 1, nRD = 1, if (00000) then 100010111 else 100010111, directByte = 1111111, T <= 01100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
276 => '1' & '1' & "00000" & O"427" & O"427" & "1111111" & "01100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- write2Nulls(same);
-- L0811@0115 C1D0E87F000000000000.  write2Nulls(same);
--  nWR = 1, nRD = 1, if (00000) then 111010000 else 111010000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
277 => '1' & '1' & "00000" & O"720" & O"720" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto WarmStart;
-- L0812@0116 FE0002FF000000000000.  if false then continue else WarmStart;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000000101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
278 => '1' & '1' & "11111" & O"000" & O"005" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromLino;
-- L0814@0117 C000007F000000000280.copyLine:  alu <= S_fromLino;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
279 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10100" & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, from_SHi);
-- L0815@0118 C1EFF7FF000003A00000.  writeCore(T, from_SHi);
--  nWR = 1, nRD = 1, if (00000) then 111101111 else 111101111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 101, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
280 => '1' & '1' & "00000" & O"757" & O"757" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"5" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc;
-- L0816@0119 C000007F580000000000.  T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
281 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, from_SLo);
-- L0817@011A C1EFF7FF000003C00000.  writeCore(T, from_SLo);
--  nWR = 1, nRD = 1, if (00000) then 111101111 else 111101111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 110, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
282 => '1' & '1' & "00000" & O"757" & O"757" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"6" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc;
-- L0818@011B C000007F580000000000.  T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
283 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(BP);
-- L0819@011C C1F1F8FF000002000000.app_loop:  readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 111110001 else 111110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
284 => '1' & '1' & "00000" & O"761" & O"761" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, same);
-- L0820@011D C1EFF7FF000003000000.  writeCore(T, same);
--  nWR = 1, nRD = 1, if (00000) then 111101111 else 111101111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
285 => '1' & '1' & "00000" & O"757" & O"757" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- BP <= inc, T <= inc, directByte = CR, if MDR_MATCHES_DB then return else app_loop;
-- L0821@011E CA028E0D580000030000.  BP <= inc, T <= inc, directByte = 0x0D, if MDR_MATCHES_DB then return else app_loop;
--  nWR = 1, nRD = 1, if (00101) then 000000010 else 100011100, directByte = 0001101, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
286 => '1' & '1' & "00101" & O"002" & O"434" & "0001101" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= Prog_start;
-- L0823@011F C000007F700000000000.findPrgEnd:  T <= Prog_start;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
287 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore16(reset1, same);
-- L0824@0120 C1CCE67F000000000040.fpe_loop:  readCore16(reset1, same);
--  nWR = 1, nRD = 1, if (00000) then 111001100 else 111001100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
288 => '1' & '1' & "00000" & O"714" & O"714" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00010" & '0' & '0' & '0' & '0' & '0',

-- if R_IS_ZERO then next else fpe_next;
-- L0825@0121 E600927F000000000000.  if R_IS_ZERO then next else fpe_next;
--  nWR = 1, nRD = 1, if (10011) then 000000000 else 100100100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
289 => '1' & '1' & "10011" & O"000" & O"444" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= dec;
-- L0826@0122 C000007F600000000000.  T <= dec;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
290 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- PrgEnd <= T, back;
-- L0827@0123 C002007F000000000001.  PrgEnd <= T, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 1;
291 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '1',

-- findNextCR(same);
-- L0828@0124 C1C9E4FF000000000000.fpe_next:  findNextCR(same);
--  nWR = 1, nRD = 1, if (00000) then 111001001 else 111001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
292 => '1' & '1' & "00000" & O"711" & O"711" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto fpe_loop;
-- L0829@0125 FE00907F580000000000.  T <= inc, if false then continue else fpe_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 100100000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
293 => '1' & '1' & "11111" & O"000" & O"440" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= zero;
-- L0833@0126 C000007F380000000000.scanProgram:  T <= zero;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
294 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- LS <= T, LE <= T, T <= Prog_start;
-- L0834@0127 C000007F700000000006.  LS <= T, LE <= T, T <= Prog_start;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 1, LE <= 1, PrgEnd <= 0;
295 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '1' & '1' & '0',

-- LS <= T, readCore16(reset1, same);
-- L0836@0128 C1CCE67F000000000044.scan_loop:  LS <= T, readCore16(reset1, same);
--  nWR = 1, nRD = 1, if (00000) then 111001100 else 111001100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00010, Lino <= 0, BE <= 0, LS <= 1, LE <= 0, PrgEnd <= 0;
296 => '1' & '1' & "00000" & O"714" & O"714" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00010" & '0' & '0' & '1' & '0' & '0',

-- alu <= S_fromLino, if R_IS_ZERO then return;
-- L0837@0129 E602007F000000000280.  alu <= S_fromLino, if R_IS_ZERO then return;
--  nWR = 1, nRD = 1, if (10011) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
297 => '1' & '1' & "10011" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10100" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_minus_R;
-- L0838@012A C000007F0000000000C0.scan_check:  alu <= S_minus_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
298 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00110" & '0' & '0' & '0' & '0' & '0',

-- if Y_ZERO then scan_found else next;
-- L0840@012B E92F007F000000000000.  if Y_ZERO then scan_found else next;
--  nWR = 1, nRD = 1, if (10100) then 100101111 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
299 => '1' & '1' & "10100" & O"457" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if Y_SIGN then scan_found else next;
-- L0841@012C EB2F007F000000000000.  if Y_SIGN then scan_found else next;
--  nWR = 1, nRD = 1, if (10101) then 100101111 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
300 => '1' & '1' & "10101" & O"457" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findNextCR(same);
-- L0842@012D C1C9E4FF000000000000.scan_next:  findNextCR(same);
--  nWR = 1, nRD = 1, if (00000) then 111001001 else 111001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
301 => '1' & '1' & "00000" & O"711" & O"711" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto scan_loop;
-- L0843@012E FE00947F580000000000.scan_line:  T <= inc, if false then continue else scan_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 100101000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
302 => '1' & '1' & "11111" & O"000" & O"450" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- findNextCR(same);
-- L0845@012F C1C9E4FF000000000000.scan_found:  findNextCR(same);
--  nWR = 1, nRD = 1, if (00000) then 111001001 else 111001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
303 => '1' & '1' & "00000" & O"711" & O"711" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- LE <= T, back;
-- L0846@0130 C002007F000000000002.  LE <= T, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 1, PrgEnd <= 0;
304 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '1' & '0',

-- T <= from_S, if Y_ZERO then return;
-- L0849@0131 E802007F800000000000.copyCore:  T <= from_S, if Y_ZERO then return;
--  nWR = 1, nRD = 1, if (10100) then 000000010 else 000000000, directByte = 1111111, T <= 10000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
305 => '1' & '1' & "10100" & O"002" & O"000" & "1111111" & "10000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(T);
-- L0850@0132 C1F1F8FF000003000000.  readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111110001 else 111110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
306 => '1' & '1' & "00000" & O"761" & O"761" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= from_R;
-- L0851@0133 C000007F880000000000.  T <= from_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
307 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, same);
-- L0852@0134 C1EFF7FF000003000000.  writeCore(T, same);
--  nWR = 1, nRD = 1, if (00000) then 111101111 else 111101111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
308 => '1' & '1' & "00000" & O"757" & O"757" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= copy_next, goto copyCore;
-- L0854@0135 FE0098FF0000000002C0.  alu <= copy_next, if false then continue else copyCore;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 100110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
309 => '1' & '1' & "11111" & O"000" & O"461" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10110" & '0' & '0' & '0' & '0' & '0',

-- traceString 43;
-- L0859@0136 C1F7FBAB020000000000.  trace(from_microcode), directByte = 43;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0101011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
310 => '1' & '1' & "00000" & O"767" & O"767" & "0101011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto ColdStart;
-- L0860@0137 FE00027F000000000000.  if false then continue else ColdStart;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
311 => '1' & '1' & "11111" & O"000" & O"004" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 42;
-- L0865@0138 C1F7FBAA020000000000.  trace(from_microcode), directByte = 42;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0101010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
312 => '1' & '1' & "00000" & O"767" & O"767" & "0101010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= IL_PC;
-- L0866@0139 C000007F080000000000.  T <= IL_PC;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
313 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- XQhere <= T, readCore16(reset1, Prog_start);
-- L0867@013A C1CCE67F702000000040.  XQhere <= T, readCore16(reset1, Prog_start);
--  nWR = 1, nRD = 1, if (00000) then 111001100 else 111001100, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 1, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
314 => '1' & '1' & "00000" & O"714" & O"714" & "1111111" & "01110" & "00" & O"0" & '1' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00010" & '0' & '0' & '0' & '0' & '0',

-- BP <= T, T <= from_R, if R_IS_ZERO then NOPROG_ERR;
-- L0868@013B E7B8007F880000060000.  BP <= T, T <= from_R, if R_IS_ZERO then NOPROG_ERR;
--  nWR = 1, nRD = 1, if (10011) then 110111000 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
315 => '1' & '1' & "10011" & O"670" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, goto fetch;
-- L0869@013C FE00047F000000000010.  Lino <= T, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
316 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '1' & '0' & '0' & '0' & '0',

-- traceString 44;
-- L0874@013D C1F7FBAC020000000000.  trace(from_microcode), directByte = 44;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0101100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
317 => '1' & '1' & "00000" & O"767" & O"767" & "0101100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'S', outChar(from_microcode);
-- L0875@013E C1EBF5D3000008000000.stop_run:  directByte = 'S', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 1010011, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
318 => '1' & '1' & "00000" & O"753" & O"753" & "1010011" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'T', outChar(from_microcode);
-- L0876@013F C1EBF5D4000008000000.  directByte = 'T', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 1010100, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
319 => '1' & '1' & "00000" & O"753" & O"753" & "1010100" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'O', outChar(from_microcode);
-- L0877@0140 C1EBF5CF000008000000.  directByte = 'O', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 1001111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
320 => '1' & '1' & "00000" & O"753" & O"753" & "1001111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'P', outChar(from_microcode);
-- L0878@0141 C1EBF5D0000008000000.  directByte = 'P', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 1010000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
321 => '1' & '1' & "00000" & O"753" & O"753" & "1010000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', outChar(from_microcode), alu <= S_fromLino;
-- L0879@0142 C1EBF5A0000008000280.print_lino:  directByte = ' ', outChar(from_microcode), alu <= S_fromLino;
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
322 => '1' & '1' & "00000" & O"753" & O"753" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10100" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'A', outChar(from_microcode), T <= from_S;
-- L0880@0143 C1EBF5C1800008000000.  directByte = 'A', outChar(from_microcode), T <= from_S;
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 1000001, T <= 10000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
323 => '1' & '1' & "00000" & O"753" & O"753" & "1000001" & "10000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'T', outChar(from_microcode), LS <= T;
-- L0881@0144 C1EBF5D4000008000004.  directByte = 'T', outChar(from_microcode), LS <= T;
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 1010100, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 1, LE <= 0, PrgEnd <= 0;
324 => '1' & '1' & "00000" & O"753" & O"753" & "1010100" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '1' & '0' & '0',

-- directByte = ' ', outChar(from_microcode), T <= LS;
-- L0882@0145 C1EBF5A0B80008000000.  directByte = ' ', outChar(from_microcode), T <= LS;
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 0100000, T <= 10111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
325 => '1' & '1' & "00000" & O"753" & O"753" & "0100000" & "10111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- printDecR(R_fromT);
-- L0883@0146 C1D5EAFF000000000260.  printDecR(R_fromT);
--  nWR = 1, nRD = 1, if (00000) then 111010101 else 111010101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
326 => '1' & '1' & "00000" & O"725" & O"725" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10011" & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', outChar(from_microcode), T <= fromTicks;
-- L0884@0147 C1EBF5A0C80008000000.  directByte = ' ', outChar(from_microcode), T <= fromTicks;
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 0100000, T <= 11001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
327 => '1' & '1' & "00000" & O"753" & O"753" & "0100000" & "11001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- printDecR(R_fromT);
-- L0885@0148 C1D5EAFF000000000260.  printDecR(R_fromT);
--  nWR = 1, nRD = 1, if (00000) then 111010101 else 111010101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
328 => '1' & '1' & "00000" & O"725" & O"725" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10011" & '0' & '0' & '0' & '0' & '0',

-- directByte = '.', outChar(from_microcode), T <= recall;
-- L0886@0149 C1EBF5AE980008000000.  directByte = ' C1EBF5AE980008000000.', outChar(from_microcode), T <= recall;
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 0101110, T <= 10011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
329 => '1' & '1' & "00000" & O"753" & O"753" & "0101110" & "10011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- printDecR(R_fromT);
-- L0887@014A C1D5EAFF000000000260.  printDecR(R_fromT);
--  nWR = 1, nRD = 1, if (00000) then 111010101 else 111010101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
330 => '1' & '1' & "00000" & O"725" & O"725" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10011" & '0' & '0' & '0' & '0' & '0',

-- outBeep();
-- L0888@014B C1E6F37F000000000000.err_done:  outBeep();
--  nWR = 1, nRD = 1, if (00000) then 111100110 else 111100110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
331 => '1' & '1' & "00000" & O"746" & O"746" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- clear, goto WarmStart2;
-- L0889@014C FE00037F3C0520000020.  DBGINDEX <= zero, ExpStack <= clear, RetStack <= clear, BasStack <= clear, T <= zero, alu <= reset0, if false then continue else WarmStart2;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000000110, directByte = 1111111, T <= 00111, DBGINDEX <= 10, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 01, BasStack <= 01, ExpStack <= 001, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
332 => '1' & '1' & "11111" & O"000" & O"006" & "1111111" & "00111" & "10" & O"0" & '0' & '0' & "01" & "01" & O"1" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00001" & '0' & '0' & '0' & '0' & '0',

-- traceString 49;
-- L0894@014D C1F7FBB1020000000000.  trace(from_microcode), directByte = 49;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0110001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
333 => '1' & '1' & "00000" & O"767" & O"767" & "0110001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0895@014E C000007F0000C0000060.  alu <= R_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
334 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00011" & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, ExpStack <= pop2;
-- L0896@014F C000007F2000C0000000.  T <= ExpStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
335 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromStack, ExpStack <= pop2;
-- L0897@0150 C000007F0000C0000080.  alu <= S_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
336 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00100" & '0' & '0' & '0' & '0' & '0',

-- directByte = 30, if S_EQU_DB_MOD32 then u_getarray;
-- L0901@0151 F96D001E000000000000.  directByte = 30, if S_EQU_DB_MOD32 then u_getarray;
--  nWR = 1, nRD = 1, if (11100) then 101101101 else 000000000, directByte = 0011110, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
337 => '1' & '1' & "11100" & O"555" & O"000" & "0011110" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 31, if S_EQU_DB_MOD32 then u_setarray;
-- L0902@0152 F976001F000000000000.  directByte = 31, if S_EQU_DB_MOD32 then u_setarray;
--  nWR = 1, nRD = 1, if (11100) then 101110110 else 000000000, directByte = 0011111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
338 => '1' & '1' & "11100" & O"566" & O"000" & "0011111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 20, if S_EQU_DB_MOD32 then u_peek8;
-- L0904@0153 F9690014000000000000.  directByte = 20, if S_EQU_DB_MOD32 then u_peek8;
--  nWR = 1, nRD = 1, if (11100) then 101101001 else 000000000, directByte = 0010100, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
339 => '1' & '1' & "11100" & O"551" & O"000" & "0010100" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 24, if S_EQU_DB_MOD32 then u_poke8;
-- L0905@0154 F9730018000000000000.  directByte = 24, if S_EQU_DB_MOD32 then u_poke8;
--  nWR = 1, nRD = 1, if (11100) then 101110011 else 000000000, directByte = 0011000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
340 => '1' & '1' & "11100" & O"563" & O"000" & "0011000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 21, if S_EQU_DB_MOD32 then u_peek16;
-- L0907@0155 F96E0015000000000000.  directByte = 21, if S_EQU_DB_MOD32 then u_peek16;
--  nWR = 1, nRD = 1, if (11100) then 101101110 else 000000000, directByte = 0010101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
341 => '1' & '1' & "11100" & O"556" & O"000" & "0010101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 25, if S_EQU_DB_MOD32 then u_poke16;
-- L0908@0156 F9770019000000000000.  directByte = 25, if S_EQU_DB_MOD32 then u_poke16;
--  nWR = 1, nRD = 1, if (11100) then 101110111 else 000000000, directByte = 0011001, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
342 => '1' & '1' & "11100" & O"567" & O"000" & "0011001" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 22, if S_EQU_DB_MOD32 then u_peek32;
-- L0910@0157 F9700016000000000000.  directByte = 22, if S_EQU_DB_MOD32 then u_peek32;
--  nWR = 1, nRD = 1, if (11100) then 101110000 else 000000000, directByte = 0010110, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
343 => '1' & '1' & "11100" & O"560" & O"000" & "0010110" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 26, if S_EQU_DB_MOD32 then u_poke32;
-- L0911@0158 F97A001A000000000000.  directByte = 26, if S_EQU_DB_MOD32 then u_poke32;
--  nWR = 1, nRD = 1, if (11100) then 101111010 else 000000000, directByte = 0011010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
344 => '1' & '1' & "11100" & O"572" & O"000" & "0011010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 27, if S_EQU_DB_MOD32 then u_modulo;
-- L0913@0159 F961001B000000000000.  directByte = 27, if S_EQU_DB_MOD32 then u_modulo;
--  nWR = 1, nRD = 1, if (11100) then 101100001 else 000000000, directByte = 0011011, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
345 => '1' & '1' & "11100" & O"541" & O"000" & "0011011" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 18, if S_EQU_DB_MOD32 then u_random;
-- L0914@015A F9600012000000000000.  directByte = 18, if S_EQU_DB_MOD32 then u_random;
--  nWR = 1, nRD = 1, if (11100) then 101100000 else 000000000, directByte = 0010010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
346 => '1' & '1' & "11100" & O"540" & O"000" & "0010010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 23, if S_EQU_DB_MOD32 then u_charin;
-- L0916@015B F9670017000000000000.  directByte = 23, if S_EQU_DB_MOD32 then u_charin;
--  nWR = 1, nRD = 1, if (11100) then 101100111 else 000000000, directByte = 0010111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
347 => '1' & '1' & "11100" & O"547" & O"000" & "0010111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 28, if S_EQU_DB_MOD32 then u_charout;
-- L0917@015C F963001C000000000000.  directByte = 28, if S_EQU_DB_MOD32 then u_charout;
--  nWR = 1, nRD = 1, if (11100) then 101100011 else 000000000, directByte = 0011100, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
348 => '1' & '1' & "11100" & O"543" & O"000" & "0011100" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 19, if S_EQU_DB_MOD32 then u_coreend;
-- L0919@015D F96C0013000000000000.  directByte = 19, if S_EQU_DB_MOD32 then u_coreend;
--  nWR = 1, nRD = 1, if (11100) then 101101100 else 000000000, directByte = 0010011, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
349 => '1' & '1' & "11100" & O"554" & O"000" & "0010011" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 29, if S_EQU_DB_MOD32 then u_prgend;
-- L0920@015E F96B001D000000000000.  directByte = 29, if S_EQU_DB_MOD32 then u_prgend;
--  nWR = 1, nRD = 1, if (11100) then 101101011 else 000000000, directByte = 0011101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
350 => '1' & '1' & "11100" & O"553" & O"000" & "0011101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= binop, goto u_done;
-- L0922@015F FE0029FFC00000000000.  T <= binop, if false then continue else u_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 001010011, directByte = 1111111, T <= 11000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
351 => '1' & '1' & "11111" & O"000" & O"123" & "1111111" & "11000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= from_lfsr;
-- L0924@0160 C000007FF80000000000.u_random:  T <= from_lfsr;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 11111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
352 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "11111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromT, div_mod();
-- L0925@0161 C05E2F7F000000000240.u_modulo:  alu <= S_fromT, div_mod();
--  nWR = 1, nRD = 1, if (00000) then 001011110 else 001011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
353 => '1' & '1' & "00000" & O"136" & O"136" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10010" & '0' & '0' & '0' & '0' & '0',

-- T <= from_YHi, goto u_done;
-- L0926@0162 FE0029FF300000000000.  T <= from_YHi, if false then continue else u_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 001010011, directByte = 1111111, T <= 00110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
354 => '1' & '1' & "11111" & O"000" & O"123" & "1111111" & "00110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromT;
-- L0928@0163 C000007F000000000240.u_charout:  alu <= S_fromT;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
355 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10010" & '0' & '0' & '0' & '0' & '0',

-- MDR <= from_SLo, traceString 51;
-- L0929@0164 C1F7FBB3020000C00000.  MDR <= from_SLo, trace(from_microcode), directByte = 51;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0110011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 110, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
356 => '1' & '1' & "00000" & O"767" & O"767" & "0110011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"6" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outChar(from_MDR);
-- L0930@0165 C1EBF5FF000010000000.  outChar(from_MDR);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 100, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
357 => '1' & '1' & "00000" & O"753" & O"753" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"4" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, goto fetch1;
-- L0931@0166 FE0004FF000080000000.  ExpStack <= push_TWord, if false then continue else fetch1;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
358 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if CHARIN_READY then next else repeat;
-- L0933@0167 D60000FF000000000000.u_charin:  if CHARIN_READY then next else repeat;
--  nWR = 1, nRD = 1, if (01011) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
359 => '1' & '1' & "01011" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, MDR <= CHARIN, goto u_in;
-- L0934@0168 FE00B57F000000602000.  gotChar = 1, MDR <= CHARIN, if false then continue else u_in;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 101101010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 011, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
360 => '1' & '1' & "11111" & O"000" & O"552" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"3" & "00" & O"0" & "00" & '1' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(T);
-- L0936@0169 C1F1F8FF000003000000.u_peek8:  readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111110001 else 111110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
361 => '1' & '1' & "00000" & O"761" & O"761" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= MDR, goto u_done;
-- L0937@016A FE0029FF480000000000.u_in:  T <= MDR, if false then continue else u_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 001010011, directByte = 1111111, T <= 01001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
362 => '1' & '1' & "11111" & O"000" & O"123" & "1111111" & "01001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= PrgEnd, goto u_done;
-- L0939@016B FE0029FF780000000000.u_prgend:  T <= PrgEnd, if false then continue else u_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 001010011, directByte = 1111111, T <= 01111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
363 => '1' & '1' & "11111" & O"000" & O"123" & "1111111" & "01111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= Core_End, goto u_done;
-- L0940@016C FE0029FFF00000000000.u_coreend:  T <= Core_End, if false then continue else u_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 001010011, directByte = 1111111, T <= 11110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
364 => '1' & '1' & "11111" & O"000" & O"123" & "1111111" & "11110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= index2address, if IS_CPU32 then u_peek32;
-- L0942@016D C770007FE00000000000.u_getarray:  T <= index2address, if IS_CPU32 then u_peek32;
--  nWR = 1, nRD = 1, if (00011) then 101110000 else 000000000, directByte = 1111111, T <= 11100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
365 => '1' & '1' & "00011" & O"560" & O"000" & "1111111" & "11100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore16(reset0, same);
-- L0943@016E C1CCE67F000000000020.u_peek16:  readCore16(reset0, same);
--  nWR = 1, nRD = 1, if (00000) then 111001100 else 111001100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
366 => '1' & '1' & "00000" & O"714" & O"714" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00001" & '0' & '0' & '0' & '0' & '0',

-- T <= from_R, goto u_done;
-- L0944@016F FE0029FF880000000000.  T <= from_R, if false then continue else u_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 001010011, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
367 => '1' & '1' & "11111" & O"000" & O"123" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore16(reset0, same);
-- L0945@0170 C1CCE67F000000000020.u_peek32:  readCore16(reset0, same);
--  nWR = 1, nRD = 1, if (00000) then 111001100 else 111001100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
368 => '1' & '1' & "00000" & O"714" & O"714" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00001" & '0' & '0' & '0' & '0' & '0',

-- readCore16(nop, same);
-- L0946@0171 C1CCE67F000000000000.  readCore16(nop, same);
--  nWR = 1, nRD = 1, if (00000) then 111001100 else 111001100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
369 => '1' & '1' & "00000" & O"714" & O"714" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= from_R, goto u_done;
-- L0947@0172 FE0029FF880000000000.  T <= from_R, if false then continue else u_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 001010011, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
370 => '1' & '1' & "11111" & O"000" & O"123" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- prepWrite();
-- L0949@0173 C180C07F000000000000.u_poke8:  prepWrite();
--  nWR = 1, nRD = 1, if (00000) then 110000000 else 110000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
371 => '1' & '1' & "00000" & O"600" & O"600" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, from_SLo);
-- L0950@0174 C1EFF7FF000003C00000.  writeCore(T, from_SLo);
--  nWR = 1, nRD = 1, if (00000) then 111101111 else 111101111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 110, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
372 => '1' & '1' & "00000" & O"757" & O"757" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"6" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto fetch1;
-- L0951@0175 FE0004FF000000000000.  if false then continue else fetch1;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
373 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= index2address, if IS_CPU32 then u_poke32;
-- L0953@0176 C77A007FE00000000000.u_setarray:  T <= index2address, if IS_CPU32 then u_poke32;
--  nWR = 1, nRD = 1, if (00011) then 101111010 else 000000000, directByte = 1111111, T <= 11100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
374 => '1' & '1' & "00011" & O"572" & O"000" & "1111111" & "11100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- prepWrite();
-- L0954@0177 C180C07F000000000000.u_poke16:  prepWrite();
--  nWR = 1, nRD = 1, if (00000) then 110000000 else 110000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
375 => '1' & '1' & "00000" & O"600" & O"600" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc, writeS16();
-- L0955@0178 C1EDF6FF580000000000.  T <= inc, writeS16();
--  nWR = 1, nRD = 1, if (00000) then 111101101 else 111101101, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
376 => '1' & '1' & "00000" & O"755" & O"755" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto fetch1;
-- L0956@0179 FE0004FF000000000000.  if false then continue else fetch1;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
377 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- prepWrite();
-- L0958@017A C180C07F000000000000.u_poke32:  prepWrite();
--  nWR = 1, nRD = 1, if (00000) then 110000000 else 110000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
378 => '1' & '1' & "00000" & O"600" & O"600" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc;
-- L0959@017B C000007F580000000000.  T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
379 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc;
-- L0960@017C C000007F580000000000.  T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
380 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc, writeS16();
-- L0961@017D C1EDF6FF580000000000.  T <= inc, writeS16();
--  nWR = 1, nRD = 1, if (00000) then 111101101 else 111101101, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
381 => '1' & '1' & "00000" & O"755" & O"755" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_swap32, writeS16();
-- L0962@017E C1EDF6FF0000000003E0.  alu <= S_swap32, writeS16();
--  nWR = 1, nRD = 1, if (00000) then 111101101 else 111101101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 11111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
382 => '1' & '1' & "00000" & O"755" & O"755" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "11111" & '0' & '0' & '0' & '0' & '0',

-- goto fetch1;
-- L0963@017F FE0004FF000000000000.  if false then continue else fetch1;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
383 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= save, traceString 51;
-- L0965@0180 C1F7FBB3920000000000.prepWrite:  T <= save, trace(from_microcode), directByte = 51;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0110011, T <= 10010, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
384 => '1' & '1' & "00000" & O"767" & O"767" & "0110011" & "10010" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= from_R;
-- L0966@0181 C000007F880000000000.  T <= from_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
385 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, alu <= S_fromT, T <= recall, back;
-- L0967@0182 C002007F980080000240.  ExpStack <= push_TWord, alu <= S_fromT, T <= recall, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 10011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
386 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "10011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10010" & '0' & '0' & '0' & '0' & '0',

-- traceString 19;
-- L0972@0183 C1F7FB93020000000000.  trace(from_microcode), directByte = 19;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0010011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
387 => '1' & '1' & "00000" & O"767" & O"767" & "0010011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then RSTACK_ERR;
-- L0973@0184 E3BE007F000000000000.  if STACK_IS_EMPTY then RSTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110111110 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
388 => '1' & '1' & "10001" & O"676" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= RetStack, RetStack <= pop, goto fetch;
-- L0974@0185 FE00047F01C800000000.  IL_PC <= RetStack, RetStack <= pop, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 111, XQhere <= 0, IL_OP <= 0, RetStack <= 10, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
389 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"7" & '0' & '0' & "10" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 20;
-- L0979@0186 C1F7FB94020000000000.  trace(from_microcode), directByte = 20;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0010100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
390 => '1' & '1' & "00000" & O"767" & O"767" & "0010100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 3;
-- L0980@0187 C1F7FB83020000000000.  trace(from_microcode), directByte = 3;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0000011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
391 => '1' & '1' & "00000" & O"767" & O"767" & "0000011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_FULL then RSTACK_ERR;
-- L0981@0188 E1BE007F000000000000.  if STACK_IS_FULL then RSTACK_ERR;
--  nWR = 1, nRD = 1, if (10000) then 110111110 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
392 => '1' & '1' & "10000" & O"676" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- RetStack <= push_IL_PC_PLUS_1, goto jump;
-- L0982@0189 FE00C67F000C00000000.  RetStack <= push_IL_PC_PLUS_1, if false then continue else jump;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110001100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 11, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
393 => '1' & '1' & "11111" & O"000" & O"614" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "11" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 21;
-- L0987@018A C1F7FB95020000000000.  trace(from_microcode), directByte = 21;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0010101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
394 => '1' & '1' & "00000" & O"767" & O"767" & "0010101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 3;
-- L0988@018B C1F7FB83020000000000.  trace(from_microcode), directByte = 3;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0000011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
395 => '1' & '1' & "00000" & O"767" & O"767" & "0000011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= direct11, goto fetch;
-- L0989@018C FE00047F018000000000.jump:  IL_PC <= direct11, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 110, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
396 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"6" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 7;
-- L0994@018D C1F7FB87020000000000.  trace(from_microcode), directByte = 7;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0000111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
397 => '1' & '1' & "00000" & O"767" & O"767" & "0000111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= pc_plus_off6;
-- L0995@018E C000007F010000000000.  IL_PC <= pc_plus_off6;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 100, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
398 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"4" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceGoto;
-- L0996@018F C1F7FB9E020000000000.br_exit:  trace(from_microcode), directByte = 30;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0011110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
399 => '1' & '1' & "00000" & O"767" & O"767" & "0011110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0997@0190 FE00047F000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
400 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 7;
-- L1002@0191 C1F7FB87020000000000.  trace(from_microcode), directByte = 7;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0000111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
401 => '1' & '1' & "00000" & O"767" & O"767" & "0000111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto badop;
-- L1003@0192 FE00067F000000000000.  if false then continue else badop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
402 => '1' & '1' & "11111" & O"000" & O"014" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 17;
-- L1008@0193 C1F7FB91020000000000.  trace(from_microcode), directByte = 17;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0010001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
403 => '1' & '1' & "00000" & O"767" & O"767" & "0010001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= IL_PC, BP <= save, skipSpaces();
-- L1009@0194 C1E2F17F080000040000.  T <= IL_PC, BP <= save, skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 111100010 else 111100010, directByte = 1111111, T <= 00001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 100, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
404 => '1' & '1' & "00000" & O"742" & O"742" & "1111111" & "00001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"4" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 3;
-- L1010@0195 C1F7FB83020000000000.bc_loop:  trace(from_microcode), directByte = 3;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0000011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
405 => '1' & '1' & "00000" & O"767" & O"767" & "0000011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(BP);
-- L1011@0196 C1F1F8FF000002000000.  readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 111110001 else 111110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
406 => '1' & '1' & "00000" & O"761" & O"761" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
-- L1012@0197 E400CD7F000000000000.  if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
--  nWR = 1, nRD = 1, if (10010) then 000000000 else 110011010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
407 => '1' & '1' & "10010" & O"000" & O"632" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- BP <= inc, IL_PC <= inc, if ILCODEBYTE_BIT7 then next else bc_loop;
-- L1013@0198 C200CAFF008000030000.  BP <= inc, IL_PC <= inc, if ILCODEBYTE_BIT7 then next else bc_loop;
--  nWR = 1, nRD = 1, if (00001) then 000000000 else 110010101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
408 => '1' & '1' & "00001" & O"000" & O"625" & "1111111" & "00000" & "00" & O"2" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L1015@0199 FE00047F000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
409 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- BP <= recall, IL_PC <= T;
-- L1016@019A C000007F00C000050000.bc_exit:  BP <= recall, IL_PC <= T;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 011, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 101, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
410 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"3" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"5" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- L1018@019B F5BBC7FF014000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
--  nWR = 1, nRD = 1, if (11010) then 110111011 else 110001111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
411 => '1' & '1' & "11010" & O"673" & O"617" & "1111111" & "00000" & "00" & O"5" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 16;
-- L1023@019C C1F7FB90020000000000.  trace(from_microcode), directByte = 16;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0010000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
412 => '1' & '1' & "00000" & O"767" & O"767" & "0010000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- skipSpaces();
-- L1024@019D C1E2F17F000000000000.  skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 111100010 else 111100010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
413 => '1' & '1' & "00000" & O"742" & O"742" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
-- L1025@019E DFA0007F000000800000.  MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
--  nWR = 1, nRD = 1, if (01111) then 110100000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 100, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
414 => '1' & '1' & "01111" & O"640" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"4" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- L1026@019F F5BBC7FF014000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
--  nWR = 1, nRD = 1, if (11010) then 110111011 else 110001111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
415 => '1' & '1' & "11010" & O"673" & O"617" & "1111111" & "00000" & "00" & O"5" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
-- L1027@01A0 E1BD007F500000000000.bv_exec:  T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10000) then 110111101 else 000000000, directByte = 1111111, T <= 01010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
416 => '1' & '1' & "10000" & O"675" & O"000" & "1111111" & "01010" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TByte, BP <= inc, goto fetch;
-- L1028@01A1 FE00047F0000A0030000.  ExpStack <= push_TByte, BP <= inc, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 101, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
417 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"5" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 14;
-- L1033@01A2 C1F7FB8E020000000000.  trace(from_microcode), directByte = 14;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0001110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
418 => '1' & '1' & "00000" & O"767" & O"767" & "0001110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- skipSpaces();
-- L1034@01A3 C1E2F17F000000000000.  skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 111100010 else 111100010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
419 => '1' & '1' & "00000" & O"742" & O"742" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= reset0, if MDR_IS_NUM then bn_loop;
-- L1035@01A4 DDA9007F000000000020.  alu <= reset0, if MDR_IS_NUM then bn_loop;
--  nWR = 1, nRD = 1, if (01110) then 110101001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
420 => '1' & '1' & "01110" & O"651" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00001" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
-- L1036@01A5 F40C007F014000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
--  nWR = 1, nRD = 1, if (11010) then 000001100 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
421 => '1' & '1' & "11010" & O"014" & O"000" & "1111111" & "00000" & "00" & O"5" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceY();
-- L1037@01A6 C1F5FAFF000000000000.bn_exit:  traceY();
--  nWR = 1, nRD = 1, if (00000) then 111110101 else 111110101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
422 => '1' & '1' & "00000" & O"765" & O"765" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceGoto;
-- L1038@01A7 C1F7FB9E020000000000.  trace(from_microcode), directByte = 30;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0011110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
423 => '1' & '1' & "00000" & O"767" & O"767" & "0011110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L1039@01A8 FE00047F000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
424 => '1' & '1' & "11111" & O"000" & O"010" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= Yx10_plus_MDR, BP <= inc;
-- L1040@01A9 C000007F000000030200.bn_loop:  alu <= Yx10_plus_MDR, BP <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
425 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & O"0" & "10000" & '0' & '0' & '0' & '0' & '0',

-- if ALU_OVERFLOW then OVERFLOW_ERR;
-- L1041@01AA EFBA007F000000000000.  if ALU_OVERFLOW then OVERFLOW_ERR;
--  nWR = 1, nRD = 1, if (10111) then 110111010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
426 => '1' & '1' & "10111" & O"672" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(BP);
-- L1042@01AB C1F1F8FF000002000000.  readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 111110001 else 111110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
427 => '1' & '1' & "00000" & O"761" & O"761" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if MDR_IS_NUM then bn_loop;
-- L1043@01AC DDA9007F000000000000.  if MDR_IS_NUM then bn_loop;
--  nWR = 1, nRD = 1, if (01110) then 110101001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
428 => '1' & '1' & "01110" & O"651" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
-- L1044@01AD E1BD007F280000000000.  T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10000) then 110111101 else 000000000, directByte = 1111111, T <= 00101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
429 => '1' & '1' & "10000" & O"675" & O"000" & "1111111" & "00101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, goto bn_exit;
-- L1045@01AE FE00D37F000080000000.  ExpStack <= push_TWord, if false then continue else bn_exit;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110100110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
430 => '1' & '1' & "11111" & O"000" & O"646" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- traceString 13;
-- L1050@01AF C1F7FB8D020000000000.  trace(from_microcode), directByte = 13;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0001101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
431 => '1' & '1' & "00000" & O"767" & O"767" & "0001101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- skipSpaces();
-- L1051@01B0 C1E2F17F000000000000.  skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 111100010 else 111100010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
432 => '1' & '1' & "00000" & O"742" & O"742" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if MDR_MATCHES_DB then fetch;
-- L1052@01B1 CA08000D000000000000.  directByte = 0x0D, if MDR_MATCHES_DB then fetch;
--  nWR = 1, nRD = 1, if (00101) then 000001000 else 000000000, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
433 => '1' & '1' & "00101" & O"010" & O"000" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- L1053@01B2 F5BBC7FF014000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
--  nWR = 1, nRD = 1, if (11010) then 110111011 else 110001111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
434 => '1' & '1' & "11010" & O"673" & O"617" & "1111111" & "00000" & "00" & O"5" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, traceString 55;
-- L1055@01B3 C1F7FBB7020000002000.BREAK:  gotChar = 1, trace(from_microcode), directByte = 55;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0110111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
435 => '1' & '1' & "00000" & O"767" & O"767" & "0110111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'B', outChar(from_microcode);
-- L1056@01B4 C1EBF5C2000008000000.  directByte = 'B', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 1000010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
436 => '1' & '1' & "00000" & O"753" & O"753" & "1000010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'R', outChar(from_microcode);
-- L1057@01B5 C1EBF5D2000008000000.  directByte = 'R', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 1010010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
437 => '1' & '1' & "00000" & O"753" & O"753" & "1010010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'K', outChar(from_microcode);
-- L1058@01B6 C1EBF5CB000008000000.  directByte = 'K', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 1001011, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
438 => '1' & '1' & "00000" & O"753" & O"753" & "1001011" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- goto traceDetails;
-- L1059@01B7 FE00E2FF000000000000.  if false then continue else traceDetails;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 111000101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
439 => '1' & '1' & "11111" & O"000" & O"705" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 50, DBGINDEX <= from_microcode, goto traceError;
-- L1061@01B8 FE00E032020000000000.NOPROG_ERR:  directByte = 50, DBGINDEX <= from_microcode, if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 111000000, directByte = 0110010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
440 => '1' & '1' & "11111" & O"000" & O"700" & "0110010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 57, DBGINDEX <= from_microcode, goto traceError;
-- L1062@01B9 FE00E039020000000000.DIVBY0_ERR:  directByte = 57, DBGINDEX <= from_microcode, if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 111000000, directByte = 0111001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
441 => '1' & '1' & "11111" & O"000" & O"700" & "0111001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 58, DBGINDEX <= from_microcode, goto traceError;
-- L1063@01BA FE00E03A020000000000.OVERFLOW_ERR:  directByte = 58, DBGINDEX <= from_microcode, if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 111000000, directByte = 0111010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
442 => '1' & '1' & "11111" & O"000" & O"700" & "0111010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 61, DBGINDEX <= from_microcode, goto traceError;
-- L1064@01BB FE00E03D020000000000.SYNTAX_ERR:  directByte = 61, DBGINDEX <= from_microcode, if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 111000000, directByte = 0111101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
443 => '1' & '1' & "11111" & O"000" & O"700" & "0111101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 62, DBGINDEX <= from_microcode, goto traceError;
-- L1065@01BC FE00E03E020000000000.INTERNAL_ERR:  directByte = 62, DBGINDEX <= from_microcode, if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 111000000, directByte = 0111110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
444 => '1' & '1' & "11111" & O"000" & O"700" & "0111110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 60, DBGINDEX <= from_microcode, goto traceError;
-- L1066@01BD FE00E03C020000000000.ESTACK_ERR:  directByte = 60, DBGINDEX <= from_microcode, if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 111000000, directByte = 0111100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
445 => '1' & '1' & "11111" & O"000" & O"700" & "0111100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 59, DBGINDEX <= from_microcode, goto traceError;
-- L1067@01BE FE00E03B020000000000.RSTACK_ERR:  directByte = 59, DBGINDEX <= from_microcode, if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 111000000, directByte = 0111011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
446 => '1' & '1' & "11111" & O"000" & O"700" & "0111011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 54, DBGINDEX <= from_microcode;
-- L1068@01BF C0000036020000000000.BSTACK_ERR:  directByte = 54, DBGINDEX <= from_microcode;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 0110110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
447 => '1' & '1' & "00000" & O"000" & O"000" & "0110110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if DBG_READY then next else repeat;
-- L1069@01C0 C80000FF000000000000.traceError:  if DBG_READY then next else repeat;
--  nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
448 => '1' & '1' & "00100" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if DBG_READY then next else repeat;
-- L1070@01C1 C80000FF000000000000.  if DBG_READY then next else repeat;
--  nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
449 => '1' & '1' & "00100" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- DBGINDEX <= zero, directByte = 'E', outChar(from_microcode);
-- L1071@01C2 C1EBF5C5040008000000.  DBGINDEX <= zero, directByte = 'E', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 1000101, T <= 00000, DBGINDEX <= 10, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
450 => '1' & '1' & "00000" & O"753" & O"753" & "1000101" & "00000" & "10" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'R', outChar(from_microcode);
-- L1072@01C3 C1EBF5D2000008000000.  directByte = 'R', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 1010010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
451 => '1' & '1' & "00000" & O"753" & O"753" & "1010010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 'R', outChar(from_microcode);
-- L1073@01C4 C1EBF5D2000008000000.  directByte = 'R', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 1010010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
452 => '1' & '1' & "00000" & O"753" & O"753" & "1010010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = '#', outChar(from_microcode), T <= IL_PC;
-- L1074@01C5 C1EBF5A3080008000000.traceDetails:  directByte = '#', outChar(from_microcode), T <= IL_PC;
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 0100011, T <= 00001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
453 => '1' & '1' & "00000" & O"753" & O"753" & "0100011" & "00001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= dec;
-- L1075@01C6 C000007F600000000000.  T <= dec;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
454 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- printDecR(R_fromT);
-- L1076@01C7 C1D5EAFF000000000260.  printDecR(R_fromT);
--  nWR = 1, nRD = 1, if (00000) then 111010101 else 111010101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
455 => '1' & '1' & "00000" & O"725" & O"725" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10011" & '0' & '0' & '0' & '0' & '0',

-- if IS_RUNMODE then print_lino else err_done;
-- L1077@01C8 F742A5FF000000000000.  if IS_RUNMODE then print_lino else err_done;
--  nWR = 1, nRD = 1, if (11011) then 101000010 else 101001011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
456 => '1' & '1' & "11011" & O"502" & O"513" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(T);
-- L1079@01C9 C1F1F8FF000003000000.findNextCR:  readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111110001 else 111110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
457 => '1' & '1' & "00000" & O"761" & O"761" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if MDR_MATCHES_DB then return;
-- L1080@01CA CA02000D000000000000.  directByte = 0x0D, if MDR_MATCHES_DB then return;
--  nWR = 1, nRD = 1, if (00101) then 000000010 else 000000000, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
458 => '1' & '1' & "00101" & O"002" & O"000" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= inc, directByte = NULL, if MDR_MATCHES_DB then INTERNAL_ERR else findNextCR;
-- L1081@01CB CBBCE480580000000000.  T <= inc, directByte = 0x00, if MDR_MATCHES_DB then INTERNAL_ERR else findNextCR;
--  nWR = 1, nRD = 1, if (00101) then 110111100 else 111001001, directByte = 0000000, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
459 => '1' & '1' & "00101" & O"674" & O"711" & "0000000" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- readCore(T);
-- L1083@01CC C1F1F8FF000003000000.readCore16:  readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111110001 else 111110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
460 => '1' & '1' & "00000" & O"761" & O"761" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= Rx256_plus_MDR, T <= inc;
-- L1084@01CD C000007F580000000220.  alu <= Rx256_plus_MDR, T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
461 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10001" & '0' & '0' & '0' & '0' & '0',

-- readCore(T);
-- L1085@01CE C1F1F8FF000003000000.  readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 111110001 else 111110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
462 => '1' & '1' & "00000" & O"761" & O"761" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= Rx256_plus_MDR, T <= inc, back;
-- L1086@01CF C002007F580000000220.  alu <= Rx256_plus_MDR, T <= inc, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
463 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10001" & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, zero), T <= inc;
-- L1088@01D0 C1EFF7FF580003400000.write2Nulls:  writeCore(T, zero), T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 111101111 else 111101111, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
464 => '1' & '1' & "00000" & O"757" & O"757" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"2" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- MAR <= T, MDR <= zero, goto writeCore;
-- L1089@01D1 FE00F7FF000003400000.  MAR <= T, MDR <= zero, if false then continue else writeCore;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 111101111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
465 => '1' & '1' & "11111" & O"000" & O"757" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"2" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR;
-- L1092@01D2 E3BD007F0000C0000060.pullRS:  alu <= R_fromStack, ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 110111101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
466 => '1' & '1' & "10001" & O"675" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00011" & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromStack, ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR else return;
-- L1093@01D3 E3BD017F0000C0000080.  alu <= S_fromStack, ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR else return;
--  nWR = 1, nRD = 1, if (10001) then 110111101 else 000000010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
467 => '1' & '1' & "10001" & O"675" & O"002" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00100" & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2;
-- L1096@01D4 C000007F0000C0000060.printDec:  alu <= R_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
468 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00011" & '0' & '0' & '0' & '0' & '0',

-- alu <= bcd_start;
-- L1098@01D5 C000007F000000000140.printDecR:  alu <= bcd_start;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 01010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
469 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "01010" & '0' & '0' & '0' & '0' & '0',

-- alu <= bcd_next, if ALU_READY then next else repeat;
-- L1099@01D6 EC0000FF000000000160.  alu <= bcd_next, if ALU_READY then next else repeat;
--  nWR = 1, nRD = 1, if (10110) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 01011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
470 => '1' & '1' & "10110" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "01011" & '0' & '0' & '0' & '0' & '0',

-- if ALU_SIGN then next else printY;
-- L1100@01D7 F000ECFF000000000000.  if ALU_SIGN then next else printY;
--  nWR = 1, nRD = 1, if (11000) then 000000000 else 111011001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
471 => '1' & '1' & "11000" & O"000" & O"731" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = '-', outChar(from_microcode);
-- L1101@01D8 C1EBF5AD000008000000.  directByte = '-', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 0101101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
472 => '1' & '1' & "00000" & O"753" & O"753" & "0101101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 6, T <= from_microcode, if IS_CPU32 then next else printY1;
-- L1102@01D9 C600ED86E80000000000.printY:  directByte = 6, T <= from_microcode, if IS_CPU32 then next else printY1;
--  nWR = 1, nRD = 1, if (00011) then 000000000 else 111011011, directByte = 0000110, T <= 11101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
473 => '1' & '1' & "00011" & O"000" & O"733" & "0000110" & "11101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = 14, T <= from_microcode;
-- L1103@01DA C000000EE80000000000.  directByte = 14, T <= from_microcode;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 0001110, T <= 11101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
474 => '1' & '1' & "00000" & O"000" & O"000" & "0001110" & "11101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ);
-- L1104@01DB C1E0F07F000018000000.printY1:  outNZChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 111100000 else 111100000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
475 => '1' & '1' & "00000" & O"740" & O"740" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ), T <= dec;
-- L1105@01DC C1E0F07F600018000000.printYlp:  outNZChar(from_YtoAlphaZ), T <= dec;
--  nWR = 1, nRD = 1, if (00000) then 111100000 else 111100000, directByte = 1111111, T <= 01100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
476 => '1' & '1' & "00000" & O"740" & O"740" & "1111111" & "01100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromT;
-- L1106@01DD C000007F000000000260.  alu <= R_fromT;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
477 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "10011" & '0' & '0' & '0' & '0' & '0',

-- if R_IS_ZERO then next else printYlp;
-- L1107@01DE E600EE7F000000000000.  if R_IS_ZERO then next else printYlp;
--  nWR = 1, nRD = 1, if (10011) then 000000000 else 111011100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
478 => '1' & '1' & "10011" & O"000" & O"734" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- CHAROUT <= from_YtoAlpha, goto outChar;
-- L1108@01DF FE00F5FF000014000000.  CHAROUT <= from_YtoAlpha, if false then continue else outChar;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 111101011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
479 => '1' & '1' & "11111" & O"000" & O"753" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"5" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outChar(from_YtoAlphaZ);
-- L1110@01E0 C1EBF5FF000018000000.outNZChar:  outChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
480 => '1' & '1' & "00000" & O"753" & O"753" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- alu <= Yx16, back;
-- L1111@01E1 C002007F000000000120.  alu <= Yx16, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
481 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "01001" & '0' & '0' & '0' & '0' & '0',

-- readCore(BP);
-- L1113@01E2 C1F1F8FF000002000000.skipSpaces:  readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 111110001 else 111110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
482 => '1' & '1' & "00000" & O"761" & O"761" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', if MDR_MATCHES_DB then skipSp;
-- L1114@01E3 CBE50020000000000000.  directByte = ' ', if MDR_MATCHES_DB then skipSp;
--  nWR = 1, nRD = 1, if (00101) then 111100101 else 000000000, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
483 => '1' & '1' & "00101" & O"745" & O"000" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = TAB, if MDR_MATCHES_DB then skipSp else return;
-- L1115@01E4 CBE50109000000000000.  directByte = 0x09, if MDR_MATCHES_DB then skipSp else return;
--  nWR = 1, nRD = 1, if (00101) then 111100101 else 000000010, directByte = 0001001, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
484 => '1' & '1' & "00101" & O"745" & O"002" & "0001001" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- BP <= inc, goto skipSpaces;
-- L1116@01E5 FE00F17F000000030000.skipSp:  BP <= inc, if false then continue else skipSpaces;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 111100010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
485 => '1' & '1' & "11111" & O"000" & O"742" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- outCRLF();
-- L1118@01E6 C1E9F4FF000000000000.outBeep:  outCRLF();
--  nWR = 1, nRD = 1, if (00000) then 111101001 else 111101001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
486 => '1' & '1' & "00000" & O"751" & O"751" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- trace(crlf);
-- L1119@01E7 C1F7FBFF060000000000.  trace(crlf);
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 1111111, T <= 00000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
487 => '1' & '1' & "00000" & O"767" & O"767" & "1111111" & "00000" & "11" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = BEEP, CHAROUT <= from_microcode, goto outChar;
-- L1120@01E8 FE00F587000008000000.  directByte = 0x07, CHAROUT <= from_microcode, if false then continue else outChar;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 111101011, directByte = 0000111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
488 => '1' & '1' & "11111" & O"000" & O"753" & "0000111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, outChar(from_microcode);
-- L1122@01E9 C1EBF58D000008000000.outCRLF:  directByte = 0x0D, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111101011 else 111101011, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
489 => '1' & '1' & "00000" & O"753" & O"753" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- directByte = LF, CHAROUT <= from_microcode;
-- L1123@01EA C000000A000008000000.  directByte = 0x0A, CHAROUT <= from_microcode;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 0001010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
490 => '1' & '1' & "00000" & O"000" & O"000" & "0001010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if CHAROUT_READY then next else repeat;
-- L1124@01EB C40000FF000000000000.outChar:  if CHAROUT_READY then next else repeat;
--  nWR = 1, nRD = 1, if (00010) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
491 => '1' & '1' & "00010" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if CHAROUT_READY then return else repeat;
-- L1125@01EC C40200FF000000000000.  if CHAROUT_READY then return else repeat;
--  nWR = 1, nRD = 1, if (00010) then 000000010 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
492 => '1' & '1' & "00010" & O"002" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, from_SLo), T <= dec;
-- L1127@01ED C1EFF7FF600003C00000.writeS16:  writeCore(T, from_SLo), T <= dec;
--  nWR = 1, nRD = 1, if (00000) then 111101111 else 111101111, directByte = 1111111, T <= 01100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 110, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
493 => '1' & '1' & "00000" & O"757" & O"757" & "1111111" & "01100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"6" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- MAR <= T, MDR <= from_SHi, T <= dec;
-- L1128@01EE C000007F600003A00000.  MAR <= T, MDR <= from_SHi, T <= dec;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 101, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
494 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"5" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- nWR = 0;
-- L1129@01EF 4000007F000000000000.writeCore:  nWR = 0;
--  nWR = 0, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
495 => '0' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- nWR = 0, if nREADY then repeat else return;
-- L1130@01F0 4C01017F000000000000.  nWR = 0, if nREADY then repeat else return;
--  nWR = 0, nRD = 1, if (00110) then 000000001 else 000000010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
496 => '0' & '1' & "00110" & O"001" & O"002" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- nRD = 0;
-- L1132@01F1 8000007F000000000000.readCore:  nRD = 0;
--  nWR = 1, nRD = 0, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
497 => '1' & '0' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- nRD = 0, MDR <= from_Bus, if nREADY then repeat else return;
-- L1133@01F2 8C01017F000000200000.  nRD = 0, MDR <= from_Bus, if nREADY then repeat else return;
--  nWR = 1, nRD = 0, if (00110) then 000000001 else 000000010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 001, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
498 => '1' & '0' & "00110" & O"001" & O"002" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"1" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, T <= BP, traceString 33;
-- L1145@01F3 C1F7FBA16A0080000000.traceBP:  ExpStack <= push_TWord, T <= BP, trace(from_microcode), directByte = 33;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0100001, T <= 01101, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
499 => '1' & '1' & "00000" & O"767" & O"767" & "0100001" & "01101" & "01" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, ExpStack <= pop2, back;
-- L1146@01F4 C002007F2000C0000000.  T <= ExpStack, ExpStack <= pop2, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
500 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, T <= from_YLo, traceString 32;
-- L1148@01F5 C1F7FBA02A0080000000.traceY:  ExpStack <= push_TWord, T <= from_YLo, trace(from_microcode), directByte = 32;
--  nWR = 1, nRD = 1, if (00000) then 111110111 else 111110111, directByte = 0100000, T <= 00101, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
501 => '1' & '1' & "00000" & O"767" & O"767" & "0100000" & "00101" & "01" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, ExpStack <= pop2, back;
-- L1149@01F6 C002007F2000C0000000.  T <= ExpStack, ExpStack <= pop2, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
502 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if DBG_READY then next else repeat;
-- L1158@01F7 C80000FF000000000000.trace:  if DBG_READY then next else repeat;
--  nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
503 => '1' & '1' & "00100" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- if DBG_READY then next else repeat;
-- L1159@01F8 C80000FF000000000000.  if DBG_READY then next else repeat;
--  nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
504 => '1' & '1' & "00100" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- DBGINDEX <= zero, back;
-- L1160@01F9 C002007F040000000000.  DBGINDEX <= zero, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 10, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 000, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0;
505 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "10" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0',

-- 6 location(s) in following ranges will be filled with default value
-- 01FA .. 01FF

others => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & O"0" & "00000" & '0' & '0' & '0' & '0' & '0'
);

end microBasic_code;

