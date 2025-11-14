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
-- L0018.seq_cond: .if 5 values true, ILCODEBYTE_BIT7, CHAROUT_READY, IL_A_VALID, DBG_READY | KBD_BREAK, MDR_EQU_DB, nBUSACK, INLEND_MAX | BASLINE_FOUND, INLEND_MIN | IMPLINE_EMPTY, CHARIN_PRINTABLE, CHARIN_EQU_DB, CHARIN_READY, BP_IN_INPLINE, SVP_IN_INPLINE, MDR_IS_NUM, MDR_IS_ALPHA, STACK_IS_FULL, STACK_IS_EMPTY, MDR_MATCHES_ILCODEBYTE, R_IS_ZERO, Y_ZERO   | CP_SKIP, Y_SIGN, ALU_READY  | LS_PARAMS_OK, ALU_OVERFLOW  | LS_PASSED_END, ALU_SIGN  | LS_IN_RANGE, AT_TAB, OFF_IS_ZERO, IS_RUNMODE, S_EQU_DB_MOD32, CACHE_VALID, CACHE_HIT, false default true;
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
constant seq_cond_S_EQU_DB_MOD32: 	integer := 28;
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
--  cond(seq_cond_S_EQU_DB_MOD32) => S_EQU_DB_MOD32,
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
-- L0059.T: .regfield 5 values same, IL_PC, XQhere, from_vars, ExpStack, from_YLo, from_YHi, zero, codeByte, MDR, MDRx2, inc, dec, BP, Prog_start, PrgEnd, from_S, from_R, save, recall, BasStack_Hi, BasStack_Lo, Cache_Data, LS, binop, fromTicks, -, -, -, -, -, - default same;
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
-- Value "11010" not allowed (name '-' is not assignable)
-- Value "11011" not allowed (name '-' is not assignable)
-- Value "11100" not allowed (name '-' is not assignable)
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
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0095.DBGINDEX: .regfield 2 values same, from_microcode, zero, crlf default same;
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
-- L0103.IL_PC: .regfield 3 values same, XQhere, inc, T, pc_plus_off6, pc_plus_off5, direct11, RetStack default same;
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
-- L0115.XQhere: .regfield 1 values same, T default same;
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
-- L0121.IL_OP: .regfield 1 values same, from_interpreter default same;
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
-- L0127.RetStack: .regfield 2 values same, clear, pop, push_IL_PC_PLUS_1 default same;
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
-- L0135.BasStack: .regfield 2 values same, clear, pop, push_Lino_and_BP default same;
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
-- L0143.ExpStack: .regfield 3 values same, clear, startSwap, endSwap, push_TWord, push_TByte, pop2, pop1 default same;
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
-- L0155.CHAROUT: .regfield 3 values same, from_interpreter, from_microcode, from_charin, from_MDR, from_YtoAlpha, from_YtoAlphaZ, - default same;
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
-- L0167.MAR: .regfield 2 values same, InlEnd, BP, T default same;
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
-- L0175.MDR: .regfield 3 values same, from_Bus, zero, CHARIN, ToUpper, from_SHi, from_SLo, from_microcode default same;
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
-- L0187.InlEnd: .regfield 2 values same, InLine_start, inc, dec default same;
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
-- L0195.BP: .regfield 3 values same, InLine_start, SvPt, inc, save, recall, T, LS default same;
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
-- L0207.SvPt: .regfield 2 values same, InLine_start, BP, - default same;
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
-- L0215.gotChar: .valfield 1 values 0, 1 default 0;
--
alias mb_gotChar: 	std_logic is mb_uinstruction(13);
---- Start boilerplate code (use with utmost caution!)
--  gotChar <= mb_gotChar;
---- End boilerplate code

--
-- L0220.Vars: .regfield 2 values same, indexFromExpStack, T, - default same;
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
-- L0228.alu: .regfield 5 values nop, reset0, reset1, R_fromStack, S_fromStack, S_plus_R, S_minus_R, neg_R, S_mul_R, Yx16, bcd_start, bcd_next, div_start, div_shift, div_subset, div_end, Yx10_plus_MDR, Rx256_plus_MDR, S_fromT, R_fromT, S_fromLino, copy_init_del, copy_next, copy_init_ins, ls_load, ls_check, Y_save, Y_recall, cache_store, -, -, - default nop;
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
constant alu_cache_store: 	std_logic_vector(4 downto 0) := "11100";
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
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0264.Lino: .regfield 1 values same, T default same;
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
-- L0270.BE: .regfield 1 values same, T default same;
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
-- L0276.LS: .regfield 1 values same, T default same;
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
-- L0282.LE: .regfield 1 values same, T default same;
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
-- L0288.PrgEnd: .regfield 1 values same, T default same;
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
-- L0294.dummy: .valfield 1 values * default 0;
--
alias mb_dummy: 	std_logic is mb_uinstruction(0);
---- Start boilerplate code (use with utmost caution!)
--  dummy <= mb_dummy;
---- End boilerplate code



constant mb_microcode: mb_code_memory := (

-- nop;
-- L0350@0000 C00000FF000000000000._reset:  if true then continue else repeat;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
0 => '1' & '1' & "00000" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= zero;
-- L0352@0001 C000007F380000000000._reset1:  T <= zero;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
1 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- XQhere <= T;
-- L0354@0002 C000007F002000000000._reset2:  XQhere <= T;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 1, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
2 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '1' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- nop;
-- L0356@0003 C00000FF000000000000._reset3:  if true then continue else repeat;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
3 => '1' & '1' & "00000" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 4;
-- L0360@0004 C1D3E984020000000000.ColdStart:  trace(from_microcode), directByte = 4;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0000100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
4 => '1' & '1' & "00000" & O"723" & O"723" & "0000100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- write2Nulls(Prog_start);
-- L0361@0005 C19BCDFF700000000000.  write2Nulls(Prog_start);
--  nWR = 1, nRD = 1, if (00000) then 110011011 else 110011011, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
5 => '1' & '1' & "00000" & O"633" & O"633" & "1111111" & "01110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- clear;
-- L0362@0006 C000007F3C0520000040.WarmStart:  DBGINDEX <= zero, ExpStack <= clear, RetStack <= clear, BasStack <= clear, T <= zero, alu <= reset0;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00111, DBGINDEX <= 10, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 01, BasStack <= 01, ExpStack <= 001, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
6 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00111" & "10" & O"0" & '0' & '0' & "01" & "01" & O"1" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00001" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= zero;
-- L0363@0007 C000007F380000094000.  BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= zero;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 001, SvPt <= 01, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
7 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "01" & O"1" & "01" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, IL_PC <= T, write2Nulls(BP);
-- L0364@0008 C19BCDFF68C000000020.  Lino <= T, IL_PC <= T, write2Nulls(BP);
--  nWR = 1, nRD = 1, if (00000) then 110011011 else 110011011, directByte = 1111111, T <= 01101, DBGINDEX <= 00, IL_PC <= 011, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
8 => '1' & '1' & "00000" & O"633" & O"633" & "1111111" & "01101" & "00" & O"3" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & '0',

-- traceString 51;
-- L0366@0009 C1D3E9B3020000000000.fetch:  trace(from_microcode), directByte = 51;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0110011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
9 => '1' & '1' & "00000" & O"723" & O"723" & "0110011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 2;
-- L0367@000A C1D3E982020000000000.fetch1:  trace(from_microcode), directByte = 2;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0000010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
10 => '1' & '1' & "00000" & O"723" & O"723" & "0000010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_OP <= from_interpreter, IL_PC <= inc, traceSDepth;
-- L0368@000B C1D3E9B8029000000000.  IL_OP <= from_interpreter, IL_PC <= inc, trace(from_microcode), directByte = 56;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0111000, T <= 00000, DBGINDEX <= 01, IL_PC <= 010, XQhere <= 0, IL_OP <= 1, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
11 => '1' & '1' & "00000" & O"723" & O"723" & "0111000" & "00000" & "01" & O"2" & '0' & '1' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= zero, alu <= reset0, if IL_A_VALID then fork else INTERNAL_ERR;
-- L0369@000C C603BCFF380000000040.  T <= zero, alu <= reset0, if IL_A_VALID then fork else INTERNAL_ERR;
--  nWR = 1, nRD = 1, if (00011) then 000000011 else 101111001, directByte = 1111111, T <= 00111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
12 => '1' & '1' & "00011" & O"003" & O"571" & "1111111" & "00111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00001" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto INTERNAL_ERR;
-- L0372@000D FE00BCFF000000000000.badop:  if false then continue else INTERNAL_ERR;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 101111001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
13 => '1' & '1' & "11111" & O"000" & O"571" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 15;
-- L0377@000E C1D3E98F020000000000.  trace(from_microcode), directByte = 15;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0001111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
14 => '1' & '1' & "00000" & O"723" & O"723" & "0001111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= startSwap, traceString 51;
-- L0378@000F C1D3E9B3020040000000.  ExpStack <= startSwap, trace(from_microcode), directByte = 51;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0110011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 010, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
15 => '1' & '1' & "00000" & O"723" & O"723" & "0110011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"2" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= endSwap, goto fetch1;
-- L0379@0010 FE00057F000060000000.  ExpStack <= endSwap, if false then continue else fetch1;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 011, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
16 => '1' & '1' & "11111" & O"000" & O"012" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"3" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 15;
-- L0382@0011 C1D3E98F020000000000.  trace(from_microcode), directByte = 15;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0001111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
17 => '1' & '1' & "00000" & O"723" & O"723" & "0001111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0383@0012 FE0004FF000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
18 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 12;
-- L0388@0013 C1D3E98C020000000000.  trace(from_microcode), directByte = 12;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0001100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
19 => '1' & '1' & "00000" & O"723" & O"723" & "0001100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0389@0014 FE0004FF000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
20 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 28;
-- L0394@0015 C1D3E99C020000000000.  trace(from_microcode), directByte = 28;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0011100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
21 => '1' & '1' & "00000" & O"723" & O"723" & "0011100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 3, T <= codeByte;
-- L0395@0016 C1D3E983420000000000.lb_push:  trace(from_microcode), directByte = 3, T <= codeByte;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0000011, T <= 01000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
22 => '1' & '1' & "00000" & O"723" & O"723" & "0000011" & "01000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TByte;
-- L0396@0017 C000007F0000A0000000.  ExpStack <= push_TByte;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 101, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
23 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"5" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
-- L0397@0018 E17B04FF008000000000.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
--  nWR = 1, nRD = 1, if (10000) then 101111011 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
24 => '1' & '1' & "10000" & O"573" & O"011" & "1111111" & "00000" & "00" & O"2" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 29;
-- L0402@0019 C1D3E99D020000000000.  trace(from_microcode), directByte = 29;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0011101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
25 => '1' & '1' & "00000" & O"723" & O"723" & "0011101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 3, T <= codeByte;
-- L0403@001A C1D3E983420000000000.  trace(from_microcode), directByte = 3, T <= codeByte;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0000011, T <= 01000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
26 => '1' & '1' & "00000" & O"723" & O"723" & "0000011" & "01000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TByte;
-- L0404@001B C000007F0000A0000000.  ExpStack <= push_TByte;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 101, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
27 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"5" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
-- L0405@001C E17B0B7F008000000000.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
--  nWR = 1, nRD = 1, if (10000) then 101111011 else 000010110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
28 => '1' & '1' & "10000" & O"573" & O"026" & "1111111" & "00000" & "00" & O"2" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 38;
-- L0410@001D C1D3E9A6020000000000.  trace(from_microcode), directByte = 38;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0100110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
29 => '1' & '1' & "00000" & O"723" & O"723" & "0100110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0411@001E E37B007F000000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 101111011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
30 => '1' & '1' & "10001" & O"573" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR;
-- L0412@001F E17B007F200000000000.  T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10000) then 101111011 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
31 => '1' & '1' & "10000" & O"573" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, goto fetch;
-- L0413@0020 FE0004FF000080000000.  ExpStack <= push_TWord, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
32 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 34;
-- L0418@0021 C1D3E9A2020000000000.  trace(from_microcode), directByte = 34;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0100010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
33 => '1' & '1' & "00000" & O"723" & O"723" & "0100010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0419@0022 E37B007F000000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 101111011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
34 => '1' & '1' & "10001" & O"573" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= pop2, goto fetch;
-- L0420@0023 FE0004FF0000C0000000.  ExpStack <= pop2, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
35 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 10;
-- L0425@0024 C1D3E98A020000000000.  trace(from_microcode), directByte = 10;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0001010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
36 => '1' & '1' & "00000" & O"723" & O"723" & "0001010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if BP_IN_INPLINE then next else ptr_exc;
-- L0426@0025 D80015FF000000000000.  if BP_IN_INPLINE then next else ptr_exc;
--  nWR = 1, nRD = 1, if (01100) then 000000000 else 000101011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
37 => '1' & '1' & "01100" & O"000" & O"053" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- SvPt <= BP;
-- L0427@0026 C000007F000000008000.save_bp:  SvPt <= BP;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 10, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
38 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "10" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceBP();
-- L0428@0027 C1C6E37F000000000000.bp_done:  traceBP();
--  nWR = 1, nRD = 1, if (00000) then 111000110 else 111000110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
39 => '1' & '1' & "00000" & O"706" & O"706" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0429@0028 FE0004FF000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
40 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 11;
-- L0434@0029 C1D3E98B020000000000.  trace(from_microcode), directByte = 11;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0001011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
41 => '1' & '1' & "00000" & O"723" & O"723" & "0001011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if SVP_IN_INPLINE then save_bp;
-- L0435@002A DA26007F000000000000.  if SVP_IN_INPLINE then save_bp;
--  nWR = 1, nRD = 1, if (01101) then 000100110 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
42 => '1' & '1' & "01101" & O"046" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- SvPt <= BP, BP <= SvPt, goto bp_done;
-- L0436@002B FE0013FF000000028000.ptr_exc:  SvPt <= BP, BP <= SvPt, if false then continue else bp_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000100111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 010, SvPt <= 10, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
43 => '1' & '1' & "11111" & O"000" & O"047" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"2" & "10" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 36;
-- L0441@002C C1D3E9A4020000000000.  trace(from_microcode), directByte = 36;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0100100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
44 => '1' & '1' & "00000" & O"723" & O"723" & "0100100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0442@002D E37B007F000000000800.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 101111011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 01, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
45 => '1' & '1' & "10001" & O"573" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "01" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_vars, ExpStack <= pop1, traceString 51;
-- L0443@002E C1D3E9B31A00E0000000.  T <= from_vars, ExpStack <= pop1, trace(from_microcode), directByte = 51;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0110011, T <= 00011, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 111, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
46 => '1' & '1' & "00000" & O"723" & O"723" & "0110011" & "00011" & "01" & O"0" & '0' & '0' & "00" & "00" & O"7" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, goto fetch1;
-- L0444@002F FE00057F000080000000.  ExpStack <= push_TWord, if false then continue else fetch1;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
47 => '1' & '1' & "11111" & O"000" & O"012" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 37;
-- L0449@0030 C1D3E9A5020000000000.  trace(from_microcode), directByte = 37;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0100101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
48 => '1' & '1' & "00000" & O"723" & O"723" & "0100101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0450@0031 E37B007F000000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 101111011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
49 => '1' & '1' & "10001" & O"573" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, ExpStack <= pop2;
-- L0451@0032 C000007F2000C0000000.  T <= ExpStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
50 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0452@0033 E37B007F000000000800.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 101111011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 01, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
51 => '1' & '1' & "10001" & O"573" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "01" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= pop1, Vars <= T, goto fetch;
-- L0453@0034 FE0004FF0000E0001000.  ExpStack <= pop1, Vars <= T, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 111, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 10, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
52 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"7" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "10" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 47;
-- L0458@0035 C1D3E9AF020000000000.  trace(from_microcode), directByte = 47;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0101111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
53 => '1' & '1' & "00000" & O"723" & O"723" & "0101111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if IS_RUNMODE then next else INTERNAL_ERR;
-- L0459@0036 F600BCFF000000000000.  if IS_RUNMODE then next else INTERNAL_ERR;
--  nWR = 1, nRD = 1, if (11011) then 000000000 else 101111001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
54 => '1' & '1' & "11011" & O"000" & O"571" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_FULL then BSTACK_ERR;
-- L0460@0037 E17F007F000000000000.  if STACK_IS_FULL then BSTACK_ERR;
--  nWR = 1, nRD = 1, if (10000) then 101111111 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
55 => '1' & '1' & "10000" & O"577" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BasStack <= push_Lino_and_BP, goto fetch;
-- L0461@0038 FE0004FF000300000000.  BasStack <= push_Lino_and_BP, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 11, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
56 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "11" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 48;
-- L0466@0039 C1D3E9B0020000000000.  trace(from_microcode), directByte = 48;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0110000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
57 => '1' & '1' & "00000" & O"723" & O"723" & "0110000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if IS_RUNMODE then next else INTERNAL_ERR;
-- L0467@003A F600BCFF000000000000.  if IS_RUNMODE then next else INTERNAL_ERR;
--  nWR = 1, nRD = 1, if (11011) then 000000000 else 101111001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
58 => '1' & '1' & "11011" & O"000" & O"571" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= BasStack_Hi,if STACK_IS_EMPTY then BSTACK_ERR;
-- L0468@003B E37F007FA00000000000.  T <= BasStack_Hi,if STACK_IS_EMPTY then BSTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 101111111 else 000000000, directByte = 1111111, T <= 10100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
59 => '1' & '1' & "10001" & O"577" & O"000" & "1111111" & "10100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, T <= BasStack_Lo, traceString 51;
-- L0469@003C C1D3E9B3AA0000000020.  Lino <= T, T <= BasStack_Lo, trace(from_microcode), directByte = 51;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0110011, T <= 10101, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
60 => '1' & '1' & "00000" & O"723" & O"723" & "0110011" & "10101" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & '0',

-- BP <= T, BasStack <= pop, goto fetch1;
-- L0470@003D FE00057F000200060000.  BP <= T, BasStack <= pop, if false then continue else fetch1;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 10, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
61 => '1' & '1' & "11111" & O"000" & O"012" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "10" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 45;
-- L0475@003E C1D3E9AD020000000000.  trace(from_microcode), directByte = 45;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0101101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
62 => '1' & '1' & "00000" & O"723" & O"723" & "0101101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= XQhere, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0476@003F E37B007F004000000000.  IL_PC <= XQhere, if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 101111011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 001, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
63 => '1' & '1' & "10001" & O"573" & O"000" & "1111111" & "00000" & "00" & O"1" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0477@0040 C000007F0000C00000C0.  alu <= R_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
64 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_R;
-- L0478@0041 C000007F880000000000.  T <= from_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
65 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, if R_IS_ZERO then NOPROG_ERR;
-- L0479@0042 E771007F000000000020.  Lino <= T, if R_IS_ZERO then NOPROG_ERR;
--  nWR = 1, nRD = 1, if (10011) then 101110001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
66 => '1' & '1' & "10011" & O"561" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & '0',

-- if CACHE_VALID then go_cvalid;
-- L0481@0043 FA46007F000000000000.  if CACHE_VALID then go_cvalid;
--  nWR = 1, nRD = 1, if (11101) then 001000110 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
67 => '1' & '1' & "11101" & O"106" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- findLino(Prog_start);
-- L0483@0044 C04A257F700000000000.  findLino(Prog_start);
--  nWR = 1, nRD = 1, if (00000) then 001001010 else 001001010, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
68 => '1' & '1' & "00000" & O"112" & O"112" & "1111111" & "01110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= cache_store, goto fetch;
-- L0484@0045 FE0004FF000000000700.  alu <= cache_store, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 11100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
69 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "11100" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= Cache_Data, if CACHE_HIT then next else go_cmiss;
-- L0486@0046 FC00247FB00000000000.go_cvalid:  T <= Cache_Data, if CACHE_HIT then next else go_cmiss;
--  nWR = 1, nRD = 1, if (11110) then 000000000 else 001001000, directByte = 1111111, T <= 10110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
70 => '1' & '1' & "11110" & O"000" & O"110" & "1111111" & "10110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= T, goto fetch;
-- L0488@0047 FE0004FF000000060000.  BP <= T, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
71 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- findLino(Prog_start);
-- L0491@0048 C04A257F700000000000.go_cmiss:  findLino(Prog_start);
--  nWR = 1, nRD = 1, if (00000) then 001001010 else 001001010, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
72 => '1' & '1' & "00000" & O"112" & O"112" & "1111111" & "01110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0492@0049 FE0004FF000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
73 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= reset1, readCore(T);
-- L0494@004A C1BDDEFF000003000080.findLino:  alu <= reset1, readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
74 => '1' & '1' & "00000" & O"675" & O"675" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00010" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= Rx256_plus_MDR, T <= inc;
-- L0495@004B C000007F580000000440.  alu <= Rx256_plus_MDR, T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
75 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromLino, readCore(T);
-- L0496@004C C1BDDEFF000003000500.  alu <= S_fromLino, readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
76 => '1' & '1' & "00000" & O"675" & O"675" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= Rx256_plus_MDR, T <= inc;
-- L0497@004D C000007F580000000440.  alu <= Rx256_plus_MDR, T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
77 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_minus_R, if R_IS_ZERO then stop_run;
-- L0498@004E E719007F000000000180.  alu <= S_minus_R, if R_IS_ZERO then stop_run;
--  nWR = 1, nRD = 1, if (10011) then 100011001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
78 => '1' & '1' & "10011" & O"431" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= T, if Y_ZERO then return;
-- L0499@004F E802007F000000060000.  BP <= T, if Y_ZERO then return;
--  nWR = 1, nRD = 1, if (10100) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
79 => '1' & '1' & "10100" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- findNextCR(same);
-- L0500@0050 C194CA7F000000000000.  findNextCR(same);
--  nWR = 1, nRD = 1, if (00000) then 110010100 else 110010100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
80 => '1' & '1' & "00000" & O"624" & O"624" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto findLino;
-- L0501@0051 FE00257F580000000000.  T <= inc, if false then continue else findLino;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 001001010, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
81 => '1' & '1' & "11111" & O"000" & O"112" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 25;
-- L0506@0052 C1D3E999020000000000.  trace(from_microcode), directByte = 25;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0011001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
82 => '1' & '1' & "00000" & O"723" & O"723" & "0011001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0507@0053 E37B007F0000000000C0.  alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 101111011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
83 => '1' & '1' & "10001" & O"573" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= pop2;
-- L0508@0054 C000007F0000C0000000.  ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
84 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= neg_R, if ALU_READY then alu_done else repeat;
-- L0509@0055 EC5900FF0000000001C0.  alu <= neg_R, if ALU_READY then alu_done else repeat;
--  nWR = 1, nRD = 1, if (10110) then 001011001 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
85 => '1' & '1' & "10110" & O"131" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00111" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 22;
-- L0514@0056 C1D3E996020000000000.  trace(from_microcode), directByte = 22;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0010110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
86 => '1' & '1' & "00000" & O"723" & O"723" & "0010110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- pullRS();
-- L0515@0057 C19ECF7F000000000000.  pullRS();
--  nWR = 1, nRD = 1, if (00000) then 110011110 else 110011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
87 => '1' & '1' & "00000" & O"636" & O"636" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_plus_R, if ALU_READY then next else repeat;
-- L0516@0058 EC0000FF000000000140.  alu <= S_plus_R, if ALU_READY then next else repeat;
--  nWR = 1, nRD = 1, if (10110) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
88 => '1' & '1' & "10110" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00101" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceALU();
-- L0517@0059 C1CCE67F000000000000.alu_done:  traceALU();
--  nWR = 1, nRD = 1, if (00000) then 111001100 else 111001100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
89 => '1' & '1' & "00000" & O"714" & O"714" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
-- L0518@005A EF75007F280000000000.  T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
--  nWR = 1, nRD = 1, if (10111) then 101110101 else 000000000, directByte = 1111111, T <= 00101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
90 => '1' & '1' & "10111" & O"565" & O"000" & "1111111" & "00101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, goto fetch;
-- L0519@005B FE0004FF000080000000.  ExpStack <= push_TWord, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
91 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 23;
-- L0524@005C C1D3E997020000000000.  trace(from_microcode), directByte = 23;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0010111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
92 => '1' & '1' & "00000" & O"723" & O"723" & "0010111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- pullRS();
-- L0525@005D C19ECF7F000000000000.  pullRS();
--  nWR = 1, nRD = 1, if (00000) then 110011110 else 110011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
93 => '1' & '1' & "00000" & O"636" & O"636" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_minus_R, if ALU_READY then alu_done else repeat;
-- L0526@005E EC5900FF000000000180.  alu <= S_minus_R, if ALU_READY then alu_done else repeat;
--  nWR = 1, nRD = 1, if (10110) then 001011001 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
94 => '1' & '1' & "10110" & O"131" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 24;
-- L0531@005F C1D3E998020000000000.  trace(from_microcode), directByte = 24;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0011000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
95 => '1' & '1' & "00000" & O"723" & O"723" & "0011000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- pullRS();
-- L0532@0060 C19ECF7F000000000000.  pullRS();
--  nWR = 1, nRD = 1, if (00000) then 110011110 else 110011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
96 => '1' & '1' & "00000" & O"636" & O"636" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_mul_R, if ALU_READY then alu_done else repeat;
-- L0533@0061 EC5900FF000000000200.  alu <= S_mul_R, if ALU_READY then alu_done else repeat;
--  nWR = 1, nRD = 1, if (10110) then 001011001 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 01000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
97 => '1' & '1' & "10110" & O"131" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "01000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 35;
-- L0538@0062 C1D3E9A3020000000000.  trace(from_microcode), directByte = 35;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0100011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
98 => '1' & '1' & "00000" & O"723" & O"723" & "0100011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- pullRS();
-- L0539@0063 C19ECF7F000000000000.  pullRS();
--  nWR = 1, nRD = 1, if (00000) then 110011110 else 110011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
99 => '1' & '1' & "00000" & O"636" & O"636" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
-- L0540@0064 E773007F000000000300.  alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
--  nWR = 1, nRD = 1, if (10011) then 101110011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 01100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
100 => '1' & '1' & "10011" & O"563" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "01100" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= div_shift;
-- L0541@0065 C000007F000000000340.div_loop:  alu <= div_shift;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 01101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
101 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "01101" & '0' & '0' & '0' & '0' & '0' & '0',

-- if ALU_READY then div_done;
-- L0542@0066 EC68007F000000000000.  if ALU_READY then div_done;
--  nWR = 1, nRD = 1, if (10110) then 001101000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
102 => '1' & '1' & "10110" & O"150" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= div_subset, goto div_loop;
-- L0543@0067 FE0032FF000000000380.  alu <= div_subset, if false then continue else div_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 001100101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 01110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
103 => '1' & '1' & "11111" & O"000" & O"145" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "01110" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= div_end, goto alu_done;
-- L0544@0068 FE002CFF0000000003C0.div_done:  alu <= div_end, if false then continue else alu_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 001011001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 01111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
104 => '1' & '1' & "11111" & O"000" & O"131" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "01111" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 46;
-- L0549@0069 C1D3E9AE020000000000.  trace(from_microcode), directByte = 46;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0101110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
105 => '1' & '1' & "00000" & O"723" & O"723" & "0101110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0550@006A C000007F0000C00000C0.  alu <= R_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
106 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TByte;
-- L0551@006B C000007F0000A0000000.  ExpStack <= push_TByte;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 101, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
107 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"5" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, ExpStack <= pop2;
-- L0552@006C C000007F2000C0000000.  T <= ExpStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
108 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromStack, ExpStack <= pop2;
-- L0553@006D C000007F0000C0000100.  alu <= S_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
109 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00100" & '0' & '0' & '0' & '0' & '0' & '0',

-- if CP_SKIP then next else fetch;
-- L0554@006E E80004FF000000000000.  if CP_SKIP then next else fetch;
--  nWR = 1, nRD = 1, if (10100) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
110 => '1' & '1' & "10100" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= inc, goto fetch;
-- L0555@006F FE0004FF008000000000.  IL_PC <= inc, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
111 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"2" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 39;
-- L0560@0070 C1D3E9A7020000000000.  trace(from_microcode), directByte = 39;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0100111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
112 => '1' & '1' & "00000" & O"723" & O"723" & "0100111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= T, if IS_RUNMODE then next else fetch;
-- L0561@0071 F60004FF00C000000000.  IL_PC <= T, if IS_RUNMODE then next else fetch;
--  nWR = 1, nRD = 1, if (11011) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 011, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
113 => '1' & '1' & "11011" & O"000" & O"011" & "1111111" & "00000" & "00" & O"3" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- findNextCR(BP);
-- L0563@0072 C194CA7F680000000000.  findNextCR(BP);
--  nWR = 1, nRD = 1, if (00000) then 110010100 else 110010100, directByte = 1111111, T <= 01101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
114 => '1' & '1' & "00000" & O"624" & O"624" & "1111111" & "01101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= inc;
-- L0564@0073 C000007F580000000000.  T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
115 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= T;
-- L0565@0074 C000007F000000060000.  BP <= T;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
116 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore16(BP);
-- L0566@0075 C197CBFF680000000000.  readCore16(BP);
--  nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 1111111, T <= 01101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
117 => '1' & '1' & "00000" & O"627" & O"627" & "1111111" & "01101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= T, T <= from_R, if R_IS_ZERO then nx_err;
-- L0567@0076 E67A007F880000060000.  BP <= T, T <= from_R, if R_IS_ZERO then nx_err;
--  nWR = 1, nRD = 1, if (10011) then 001111010 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
118 => '1' & '1' & "10011" & O"172" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, IL_PC <= XQhere;
-- L0568@0077 C000007F004000000020.  Lino <= T, IL_PC <= XQhere;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 001, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
119 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"1" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & '0',

-- traceBP();
-- L0570@0078 C1C6E37F000000000000.  traceBP();
--  nWR = 1, nRD = 1, if (00000) then 111000110 else 111000110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
120 => '1' & '1' & "00000" & O"706" & O"706" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if KBD_BREAK then BREAK else fetch;
-- L0571@0079 C96B04FF000000000000.  if KBD_BREAK then BREAK else fetch;
--  nWR = 1, nRD = 1, if (00100) then 101101011 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
121 => '1' & '1' & "00100" & O"553" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = BEEP, outChar(from_microcode);
-- L0572@007A C1BADD07000008000000.nx_err:  directByte = 0x07, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 0000111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
122 => '1' & '1' & "00000" & O"672" & O"672" & "0000111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto stop_run;
-- L0573@007B FE008CFF000000000000.  if false then continue else stop_run;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 100011001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
123 => '1' & '1' & "11111" & O"000" & O"431" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 41;
-- L0578@007C C1D3E9A9020000000000.  trace(from_microcode), directByte = 41;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0101001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
124 => '1' & '1' & "00000" & O"723" & O"723" & "0101001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= reset1, if IS_RUNMODE then badop;
-- L0579@007D F60D007F000000000080.  alu <= reset1, if IS_RUNMODE then badop;
--  nWR = 1, nRD = 1, if (11011) then 000001101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
125 => '1' & '1' & "11011" & O"015" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00010" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_R, if STACK_IS_EMPTY then ls_parchk;
-- L0580@007E E281007F880000000000.ls_parload:  T <= from_R, if STACK_IS_EMPTY then ls_parchk;
--  nWR = 1, nRD = 1, if (10001) then 010000001 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
126 => '1' & '1' & "10001" & O"201" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromT;
-- L0581@007F C000007F000000000480.  alu <= S_fromT;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
127 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10010" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2, goto ls_parload;
-- L0582@0080 FE003F7F0000C00000C0.  alu <= R_fromStack, ExpStack <= pop2, if false then continue else ls_parload;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 001111110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
128 => '1' & '1' & "11111" & O"000" & O"176" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= ls_load;
-- L0583@0081 C000007F000000000600.ls_parchk:  alu <= ls_load;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 11000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
129 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "11000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if LS_PARAMS_OK then next else SYNTAX_ERR;
-- L0584@0082 EC00BBFF000000000000.  if LS_PARAMS_OK then next else SYNTAX_ERR;
--  nWR = 1, nRD = 1, if (10110) then 000000000 else 101110111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
130 => '1' & '1' & "10110" & O"000" & O"567" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= Prog_start;
-- L0585@0083 C000007F700000000000.ls_start:  T <= Prog_start;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
131 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if CHARIN_READY then next else ls_continue;
-- L0586@0084 D60044FF000000000000.ls_lineloop:  if CHARIN_READY then next else ls_continue;
--  nWR = 1, nRD = 1, if (01011) then 000000000 else 010001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
132 => '1' & '1' & "01011" & O"000" & O"211" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if KBD_BREAK then BREAK;
-- L0587@0085 C96B007F000000000000.  if KBD_BREAK then BREAK;
--  nWR = 1, nRD = 1, if (00100) then 101101011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
133 => '1' & '1' & "00100" & O"553" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_continue;
-- L0588@0086 D40044A0000000002000.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_continue;
--  nWR = 1, nRD = 1, if (01010) then 000000000 else 010001001, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
134 => '1' & '1' & "01010" & O"000" & O"211" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if CHARIN_READY then next else repeat;
-- L0589@0087 D60000FF000000000000.ls_pause:  if CHARIN_READY then next else repeat;
--  nWR = 1, nRD = 1, if (01011) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
135 => '1' & '1' & "01011" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
-- L0590@0088 D40043A0000000002000.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
--  nWR = 1, nRD = 1, if (01010) then 000000000 else 010000111, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
136 => '1' & '1' & "01010" & O"000" & O"207" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, readCore16(same);
-- L0591@0089 C197CBFF000000002000.ls_continue:  gotChar = 1, readCore16(same);
--  nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
137 => '1' & '1' & "00000" & O"627" & O"627" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= ls_check, if R_IS_ZERO then fetch;
-- L0592@008A E609007F000000000640.  alu <= ls_check, if R_IS_ZERO then fetch;
--  nWR = 1, nRD = 1, if (10011) then 000001001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 11001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
138 => '1' & '1' & "10011" & O"011" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "11001" & '0' & '0' & '0' & '0' & '0' & '0',

-- if LS_PASSED_END then fetch;
-- L0593@008B EE09007F000000000000.  if LS_PASSED_END then fetch;
--  nWR = 1, nRD = 1, if (10111) then 000001001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
139 => '1' & '1' & "10111" & O"011" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if LS_IN_RANGE then next else ls_nextLine;
-- L0594@008C F0004AFF000000000000.  if LS_IN_RANGE then next else ls_nextLine;
--  nWR = 1, nRD = 1, if (11000) then 000000000 else 010010101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
140 => '1' & '1' & "11000" & O"000" & O"225" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- printDecR(Y_save);
-- L0595@008D C1A3D1FF000000000680.  printDecR(Y_save);
--  nWR = 1, nRD = 1, if (00000) then 110100011 else 110100011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 11010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
141 => '1' & '1' & "00000" & O"643" & O"643" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "11010" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= Y_recall, directByte = ' ', outChar(from_microcode);
-- L0596@008E C1BADD200000080006C0.  alu <= Y_recall, directByte = ' ', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 11011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
142 => '1' & '1' & "00000" & O"672" & O"672" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "11011" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore(T);
-- L0597@008F C1BDDEFF000003000000.ls_charloop:  readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
143 => '1' & '1' & "00000" & O"675" & O"675" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outChar(from_MDR);
-- L0598@0090 C1BADD7F000010000000.  outChar(from_MDR);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 100, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
144 => '1' & '1' & "00000" & O"672" & O"672" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"4" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if MDR_EQU_DB then next else ls_next;
-- L0599@0091 CA004A0D000000000000.ls_nextchar:  directByte = 0x0D, if MDR_EQU_DB then next else ls_next;
--  nWR = 1, nRD = 1, if (00101) then 000000000 else 010010100, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
145 => '1' & '1' & "00101" & O"000" & O"224" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = LF, outChar(from_microcode);
-- L0600@0092 C1BADD0A000008000000.  directByte = 0x0A, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 0001010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
146 => '1' & '1' & "00000" & O"672" & O"672" & "0001010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto ls_lineloop;
-- L0601@0093 FE00427F580000000000.  T <= inc, if false then continue else ls_lineloop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010000100, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
147 => '1' & '1' & "11111" & O"000" & O"204" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto ls_charloop;
-- L0602@0094 FE0047FF580000000000.ls_next:  T <= inc, if false then continue else ls_charloop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010001111, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
148 => '1' & '1' & "11111" & O"000" & O"217" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- findNextCR(same);
-- L0603@0095 C194CA7F000000000000.ls_nextLine:  findNextCR(same);
--  nWR = 1, nRD = 1, if (00000) then 110010100 else 110010100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
149 => '1' & '1' & "00000" & O"624" & O"624" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto ls_lineloop;
-- L0604@0096 FE00427F580000000000.  T <= inc, if false then continue else ls_lineloop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010000100, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
150 => '1' & '1' & "11111" & O"000" & O"204" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 26;
-- L0609@0097 C1D3E99A020000000000.  trace(from_microcode), directByte = 26;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0011010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
151 => '1' & '1' & "00000" & O"723" & O"723" & "0011010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0610@0098 E37B007F000000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 101111011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
152 => '1' & '1' & "10001" & O"573" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- printDec();
-- L0611@0099 C1A2D17F000000000000.  printDec();
--  nWR = 1, nRD = 1, if (00000) then 110100010 else 110100010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
153 => '1' & '1' & "00000" & O"642" & O"642" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0612@009A FE0004FF000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
154 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 18;
-- L0617@009B C1D3E992020000000000.  trace(from_microcode), directByte = 18;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0010010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
155 => '1' & '1' & "00000" & O"723" & O"723" & "0010010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= inc, readCore(BP);
-- L0618@009C C1BDDEFF000002030000.pq_loop:  BP <= inc, readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
156 => '1' & '1' & "00000" & O"675" & O"675" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"3" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = '"', if MDR_EQU_DB then pq_done;
-- L0619@009D CAA10022000000000000.  directByte = '"', if MDR_EQU_DB then pq_done;
--  nWR = 1, nRD = 1, if (00101) then 010100001 else 000000000, directByte = 0100010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
157 => '1' & '1' & "00101" & O"241" & O"000" & "0100010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outChar(from_MDR);
-- L0620@009E C1BADD7F000010000000.  outChar(from_MDR);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 100, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
158 => '1' & '1' & "00000" & O"672" & O"672" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"4" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 3;
-- L0621@009F C1D3E983020000000000.  trace(from_microcode), directByte = 3;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0000011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
159 => '1' & '1' & "00000" & O"723" & O"723" & "0000011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if MDR_EQU_DB then INTERNAL_ERR else pq_loop;
-- L0622@00A0 CB794E0D000000000000.  directByte = 0x0D, if MDR_EQU_DB then INTERNAL_ERR else pq_loop;
--  nWR = 1, nRD = 1, if (00101) then 101111001 else 010011100, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
160 => '1' & '1' & "00101" & O"571" & O"234" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceBP();
-- L0623@00A1 C1C6E37F000000000000.pq_done:  traceBP();
--  nWR = 1, nRD = 1, if (00000) then 111000110 else 111000110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
161 => '1' & '1' & "00000" & O"706" & O"706" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0624@00A2 FE0004FF000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
162 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 27;
-- L0629@00A3 C1D3E99B020000000000.  trace(from_microcode), directByte = 27;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0011011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
163 => '1' & '1' & "00000" & O"723" & O"723" & "0011011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if AT_TAB then fetch;
-- L0630@00A4 F209007F000000000000.pt_loop:  if AT_TAB then fetch;
--  nWR = 1, nRD = 1, if (11001) then 000001001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
164 => '1' & '1' & "11001" & O"011" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', outChar(from_microcode);
-- L0631@00A5 C1BADD20000008000000.  directByte = ' ', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
165 => '1' & '1' & "00000" & O"672" & O"672" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto pt_loop;
-- L0632@00A6 FE00527F000000000000.  if false then continue else pt_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010100100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
166 => '1' & '1' & "11111" & O"000" & O"244" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 6;
-- L0637@00A7 C1D3E986020000000000.  trace(from_microcode), directByte = 6;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0000110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
167 => '1' & '1' & "00000" & O"723" & O"723" & "0000110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outCRLF();
-- L0638@00A8 C1B8DC7F000000000000.crlf_fetch:  outCRLF();
--  nWR = 1, nRD = 1, if (00000) then 110111000 else 110111000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
168 => '1' & '1' & "00000" & O"670" & O"670" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0639@00A9 FE0004FF000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
169 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 5;
-- L0644@00AA C1D3E985020000000000.  trace(from_microcode), directByte = 5;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0000101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
170 => '1' & '1' & "00000" & O"723" & O"723" & "0000101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outChar(from_interpreter);
-- L0645@00AB C1BADD7F000004000000.pc_loop:  outChar(from_interpreter);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 001, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
171 => '1' & '1' & "00000" & O"672" & O"672" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"1" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 3;
-- L0646@00AC C1D3E983020000000000.  trace(from_microcode), directByte = 3;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0000011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
172 => '1' & '1' & "00000" & O"723" & O"723" & "0000011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
-- L0647@00AD C20955FF008000000000.  IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
--  nWR = 1, nRD = 1, if (00001) then 000001001 else 010101011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
173 => '1' & '1' & "00001" & O"011" & O"253" & "1111111" & "00000" & "00" & O"2" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 8;
-- L0652@00AE C1D3E988020000000000.  trace(from_microcode), directByte = 8;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0001000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
174 => '1' & '1' & "00000" & O"723" & O"723" & "0001000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- InlEnd <= InLine_start;
-- L0653@00AF C000007F000000080000.gl:  InlEnd <= InLine_start;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
175 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "01" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if CHARIN_READY then next else repeat;
-- L0654@00B0 D60000FF000000000000.gl_loop:  if CHARIN_READY then next else repeat;
--  nWR = 1, nRD = 1, if (01011) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
176 => '1' & '1' & "01011" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if KBD_BREAK then next else gl_char;
-- L0655@00B1 C80059FF000000000000.  if KBD_BREAK then next else gl_char;
--  nWR = 1, nRD = 1, if (00100) then 000000000 else 010110011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
177 => '1' & '1' & "00100" & O"000" & O"263" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
-- L0656@00B2 F7195FFF000000002000.  gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
--  nWR = 1, nRD = 1, if (11011) then 100011001 else 010111111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
178 => '1' & '1' & "11011" & O"431" & O"277" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if CHARIN_PRINTABLE then gl_print;
-- L0657@00B3 D2BA007F000000000000.gl_char:  if CHARIN_PRINTABLE then gl_print;
--  nWR = 1, nRD = 1, if (01001) then 010111010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
179 => '1' & '1' & "01001" & O"272" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if CHARIN_EQU_DB then gl_cr;
-- L0658@00B4 D4C5000D000000000000.  directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
--  nWR = 1, nRD = 1, if (01010) then 011000101 else 000000000, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
180 => '1' & '1' & "01010" & O"305" & O"000" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = BACKSPACE, if CHARIN_EQU_DB then gl_bs;
-- L0659@00B5 D4C20008000000000000.  directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
--  nWR = 1, nRD = 1, if (01010) then 011000010 else 000000000, directByte = 0001000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
181 => '1' & '1' & "01010" & O"302" & O"000" & "0001000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = ESC, if CHARIN_EQU_DB then gl_esc;
-- L0660@00B6 D4BF001B000000000000.  directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
--  nWR = 1, nRD = 1, if (01010) then 010111111 else 000000000, directByte = 0011011, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
182 => '1' & '1' & "01010" & O"277" & O"000" & "0011011" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = TAB, if CHARIN_EQU_DB then gl_tab;
-- L0661@00B7 D4CA0009000000000000.  directByte = 0x09, if CHARIN_EQU_DB then gl_tab;
--  nWR = 1, nRD = 1, if (01010) then 011001010 else 000000000, directByte = 0001001, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
183 => '1' & '1' & "01010" & O"312" & O"000" & "0001001" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = BEEP, outChar(from_microcode);
-- L0663@00B8 C1BADD07000008000000.gl_ignore:  directByte = 0x07, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 0000111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
184 => '1' & '1' & "00000" & O"672" & O"672" & "0000111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, goto gl_loop;
-- L0664@00B9 FE00587F000000002000.  gotChar = 1, if false then continue else gl_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010110000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
185 => '1' & '1' & "11111" & O"000" & O"260" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if INLEND_MAX then gl_ignore;
-- L0666@00BA CEB8007F000000000000.gl_print:  if INLEND_MAX then gl_ignore;
--  nWR = 1, nRD = 1, if (00111) then 010111000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
186 => '1' & '1' & "00111" & O"270" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outChar(from_charin);
-- L0667@00BB C1BADD7F00000C000000.  outChar(from_charin);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 011, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
187 => '1' & '1' & "00000" & O"672" & O"672" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"3" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- L0668@00BC C1BCDE7F000001700000.  writeCore(InlEnd, CHARIN), InlEnd <= inc;
--  nWR = 1, nRD = 1, if (00000) then 110111100 else 110111100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 10, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
188 => '1' & '1' & "00000" & O"674" & O"674" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"3" & "10" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(InlEnd, zero);
-- L0669@00BD C1BCDE7F000001400000.gl_write0:  writeCore(InlEnd, zero);
--  nWR = 1, nRD = 1, if (00000) then 110111100 else 110111100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
189 => '1' & '1' & "00000" & O"674" & O"674" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"2" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, goto gl_loop;
-- L0670@00BE FE00587F000000002000.  gotChar = 1, if false then continue else gl_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010110000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
190 => '1' & '1' & "11111" & O"000" & O"260" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = BEEP, outChar(from_microcode);
-- L0672@00BF C1BADD07000008000000.gl_esc:  directByte = 0x07, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 0000111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
191 => '1' & '1' & "00000" & O"672" & O"672" & "0000111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outCRLF();
-- L0673@00C0 C1B8DC7F000000000000.  outCRLF();
--  nWR = 1, nRD = 1, if (00000) then 110111000 else 110111000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
192 => '1' & '1' & "00000" & O"670" & O"670" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, goto gl;
-- L0674@00C1 FE0057FF000000002000.  gotChar = 1, if false then continue else gl;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010101111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
193 => '1' & '1' & "11111" & O"000" & O"257" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if INLEND_MIN then gl_ignore;
-- L0676@00C2 D0B8007F000000000000.gl_bs:  if INLEND_MIN then gl_ignore;
--  nWR = 1, nRD = 1, if (01000) then 010111000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
194 => '1' & '1' & "01000" & O"270" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = BACKSPACE, outChar(from_microcode);
-- L0677@00C3 C1BADD08000008000000.  directByte = 0x08, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 0001000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
195 => '1' & '1' & "00000" & O"672" & O"672" & "0001000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- InlEnd <= dec, goto gl_write0;
-- L0678@00C4 FE005EFF000000180000.  InlEnd <= dec, if false then continue else gl_write0;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 010111101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 11, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
196 => '1' & '1' & "11111" & O"000" & O"275" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "11" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- L0680@00C5 C1BCDE7F000001700000.gl_cr:  writeCore(InlEnd, CHARIN), InlEnd <= inc;
--  nWR = 1, nRD = 1, if (00000) then 110111100 else 110111100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 10, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
197 => '1' & '1' & "00000" & O"674" & O"674" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"3" & "10" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(InlEnd, zero);
-- L0681@00C6 C1BCDE7F000001400000.  writeCore(InlEnd, zero);
--  nWR = 1, nRD = 1, if (00000) then 110111100 else 110111100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
198 => '1' & '1' & "00000" & O"674" & O"674" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"2" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- dump_input();
-- L0682@00C7 C1BFDFFF000000000000.  dump_input();
--  nWR = 1, nRD = 1, if (00000) then 110111111 else 110111111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
199 => '1' & '1' & "00000" & O"677" & O"677" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outCRLF();
-- L0683@00C8 C1B8DC7F000000000000.  outCRLF();
--  nWR = 1, nRD = 1, if (00000) then 110111000 else 110111000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
200 => '1' & '1' & "00000" & O"670" & O"670" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, BP <= Inline_start, goto fetch;
-- L0684@00C9 FE0004FF000000012000.  gotChar = 1, BP <= Inline_start, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 001, SvPt <= 00, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
201 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"1" & "00" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if INLEND_MAX then gl_ignore;
-- L0686@00CA CEB8007F000000000000.gl_tab:  if INLEND_MAX then gl_ignore;
--  nWR = 1, nRD = 1, if (00111) then 010111000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
202 => '1' & '1' & "00111" & O"270" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if AT_TAB then gl_write0;
-- L0687@00CB F2BD007F000000000000.gl_tabloop:  if AT_TAB then gl_write0;
--  nWR = 1, nRD = 1, if (11001) then 010111101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
203 => '1' & '1' & "11001" & O"275" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', outChar(from_microcode);
-- L0688@00CC C1BADD20000008000000.  directByte = ' ', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
204 => '1' & '1' & "00000" & O"672" & O"672" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', writeCore(InlEnd, from_microcode), InlEnd <= inc;
-- L0689@00CD C1BCDE20000001F00000.  directByte = ' ', writeCore(InlEnd, from_microcode), InlEnd <= inc;
--  nWR = 1, nRD = 1, if (00000) then 110111100 else 110111100, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 111, InlEnd <= 10, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
205 => '1' & '1' & "00000" & O"674" & O"674" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"7" & "10" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto gl_tabloop;
-- L0690@00CE FE0065FF000000000000.  if false then continue else gl_tabloop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 011001011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
206 => '1' & '1' & "11111" & O"000" & O"313" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 40;
-- L0695@00CF C1D3E9A8020000000000.  trace(from_microcode), directByte = 40;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0101000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
207 => '1' & '1' & "00000" & O"723" & O"723" & "0101000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromStack, ExpStack <= pop2;
-- L0696@00D0 C000007F0000C0000100.  alu <= S_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
208 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00100" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_plus_R;
-- L0697@00D1 C000007F000000000140.  alu <= S_plus_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
209 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00101" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
-- L0698@00D2 EB77007F280000000000.  T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
--  nWR = 1, nRD = 1, if (10101) then 101110111 else 000000000, directByte = 1111111, T <= 00101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
210 => '1' & '1' & "10101" & O"567" & O"000" & "1111111" & "00101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, if Y_ZERO then SYNTAX_ERR;
-- L0699@00D3 E977007F000000000020.  Lino <= T, if Y_ZERO then SYNTAX_ERR;
--  nWR = 1, nRD = 1, if (10100) then 101110111 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
211 => '1' & '1' & "10100" & O"567" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & '0',

-- traceALU();
-- L0700@00D4 C1CCE67F000000000000.  traceALU();
--  nWR = 1, nRD = 1, if (00000) then 111001100 else 111001100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
212 => '1' & '1' & "00000" & O"714" & O"714" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- skipSpaces();
-- L0702@00D5 C1B1D8FF000000000000.  skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
213 => '1' & '1' & "00000" & O"661" & O"661" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= BP;
-- L0703@00D6 C000007F680000000000.  T <= BP;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
214 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BE <= T, readCore(T);
-- L0704@00D7 C1BDDEFF000003000010.il_findBE:  BE <= T, readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 1, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
215 => '1' & '1' & "00000" & O"675" & O"675" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '1' & '0' & '0' & '0' & '0',

-- directByte = CR, if MDR_EQU_DB then il_fork;
-- L0705@00D8 CADA000D000000000000.  directByte = 0x0D, if MDR_EQU_DB then il_fork;
--  nWR = 1, nRD = 1, if (00101) then 011011010 else 000000000, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
216 => '1' & '1' & "00101" & O"332" & O"000" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto il_findBE;
-- L0706@00D9 FE006BFF580000000000.  T <= inc, if false then continue else il_findBE;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 011010111, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
217 => '1' & '1' & "11111" & O"000" & O"327" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- scanProgram();
-- L0708@00DA C0FE7F7F000000000000.il_fork:  scanProgram();
--  nWR = 1, nRD = 1, if (00000) then 011111110 else 011111110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
218 => '1' & '1' & "00000" & O"376" & O"376" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if IMPLINE_EMPTY then next else changeLine;
-- L0709@00DB D00070FF000000000000.  if IMPLINE_EMPTY then next else changeLine;
--  nWR = 1, nRD = 1, if (01000) then 000000000 else 011100001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
219 => '1' & '1' & "01000" & O"000" & O"341" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if R_IS_ZERO then WarmStart;
-- L0711@00DC E606007F000000000000.deleteLine:  if R_IS_ZERO then WarmStart;
--  nWR = 1, nRD = 1, if (10011) then 000000110 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
220 => '1' & '1' & "10011" & O"006" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if Y_ZERO then next else WarmStart;
-- L0712@00DD E800037F000000000000.  if Y_ZERO then next else WarmStart;
--  nWR = 1, nRD = 1, if (10100) then 000000000 else 000000110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
221 => '1' & '1' & "10100" & O"000" & O"006" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- findPrgEnd();
-- L0713@00DE C0F77BFF000000000000.  findPrgEnd();
--  nWR = 1, nRD = 1, if (00000) then 011110111 else 011110111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
222 => '1' & '1' & "00000" & O"367" & O"367" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- copyCore(copy_init_del);
-- L0714@00DF C10B85FF000000000540.  copyCore(copy_init_del);
--  nWR = 1, nRD = 1, if (00000) then 100001011 else 100001011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
223 => '1' & '1' & "00000" & O"413" & O"413" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10101" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto WarmStart;
-- L0715@00E0 FE00037F000000000000.  if false then continue else WarmStart;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000000110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
224 => '1' & '1' & "11111" & O"000" & O"006" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if R_IS_ZERO then appendLine;
-- L0717@00E1 E6EA007F000000000000.changeLine:  if R_IS_ZERO then appendLine;
--  nWR = 1, nRD = 1, if (10011) then 011101010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
225 => '1' & '1' & "10011" & O"352" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if Y_ZERO then next else insertLine;
-- L0718@00E2 E800737F000000000000.  if Y_ZERO then next else insertLine;
--  nWR = 1, nRD = 1, if (10100) then 000000000 else 011100110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
226 => '1' & '1' & "10100" & O"000" & O"346" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- findPrgEnd();
-- L0720@00E3 C0F77BFF000000000000.replaceLine:  findPrgEnd();
--  nWR = 1, nRD = 1, if (00000) then 011110111 else 011110111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
227 => '1' & '1' & "00000" & O"367" & O"367" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- copyCore(copy_init_del);
-- L0721@00E4 C10B85FF000000000540.  copyCore(copy_init_del);
--  nWR = 1, nRD = 1, if (00000) then 100001011 else 100001011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
228 => '1' & '1' & "00000" & O"413" & O"413" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10101" & '0' & '0' & '0' & '0' & '0' & '0',

-- scanProgram();
-- L0722@00E5 C0FE7F7F000000000000.  scanProgram();
--  nWR = 1, nRD = 1, if (00000) then 011111110 else 011111110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
229 => '1' & '1' & "00000" & O"376" & O"376" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- findPrgEnd();
-- L0723@00E6 C0F77BFF000000000000.insertLine:  findPrgEnd();
--  nWR = 1, nRD = 1, if (00000) then 011110111 else 011110111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
230 => '1' & '1' & "00000" & O"367" & O"367" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- copyCore(copy_init_ins);
-- L0724@00E7 C10B85FF0000000005C0.  copyCore(copy_init_ins);
--  nWR = 1, nRD = 1, if (00000) then 100001011 else 100001011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
231 => '1' & '1' & "00000" & O"413" & O"413" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10111" & '0' & '0' & '0' & '0' & '0' & '0',

-- copyLine(LS);
-- L0725@00E8 C0EE777FB80000000000.ins_finish:  copyLine(LS);
--  nWR = 1, nRD = 1, if (00000) then 011101110 else 011101110, directByte = 1111111, T <= 10111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
232 => '1' & '1' & "00000" & O"356" & O"356" & "1111111" & "10111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto WarmStart;
-- L0726@00E9 FE00037F000000000000.  if false then continue else WarmStart;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000000110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
233 => '1' & '1' & "11111" & O"000" & O"006" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= dec;
-- L0728@00EA C000007F600000000000.appendLine:  T <= dec;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
234 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- copyLine(dec);
-- L0729@00EB C0EE777F600000000000.  copyLine(dec);
--  nWR = 1, nRD = 1, if (00000) then 011101110 else 011101110, directByte = 1111111, T <= 01100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
235 => '1' & '1' & "00000" & O"356" & O"356" & "1111111" & "01100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- write2Nulls(same);
-- L0730@00EC C19BCDFF000000000000.  write2Nulls(same);
--  nWR = 1, nRD = 1, if (00000) then 110011011 else 110011011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
236 => '1' & '1' & "00000" & O"633" & O"633" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto WarmStart;
-- L0731@00ED FE00037F000000000000.  if false then continue else WarmStart;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000000110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
237 => '1' & '1' & "11111" & O"000" & O"006" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromLino;
-- L0733@00EE C000007F000000000500.copyLine:  alu <= S_fromLino;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
238 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, from_SHi);
-- L0734@00EF C1BCDE7F000003A00000.  writeCore(T, from_SHi);
--  nWR = 1, nRD = 1, if (00000) then 110111100 else 110111100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 101, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
239 => '1' & '1' & "00000" & O"674" & O"674" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"5" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= inc;
-- L0735@00F0 C000007F580000000000.  T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
240 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, from_SLo);
-- L0736@00F1 C1BCDE7F000003C00000.  writeCore(T, from_SLo);
--  nWR = 1, nRD = 1, if (00000) then 110111100 else 110111100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 110, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
241 => '1' & '1' & "00000" & O"674" & O"674" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"6" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= inc;
-- L0737@00F2 C000007F580000000000.  T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
242 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore(BP);
-- L0738@00F3 C1BDDEFF000002000000.app_loop:  readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
243 => '1' & '1' & "00000" & O"675" & O"675" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, same);
-- L0739@00F4 C1BCDE7F000003000000.  writeCore(T, same);
--  nWR = 1, nRD = 1, if (00000) then 110111100 else 110111100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
244 => '1' & '1' & "00000" & O"674" & O"674" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= inc, T <= inc;
-- L0740@00F5 C000007F580000030000.  BP <= inc, T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
245 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if MDR_EQU_DB then return else app_loop;
-- L0741@00F6 CA02798D000000000000.  directByte = 0x0D, if MDR_EQU_DB then return else app_loop;
--  nWR = 1, nRD = 1, if (00101) then 000000010 else 011110011, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
246 => '1' & '1' & "00101" & O"002" & O"363" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= Prog_start;
-- L0743@00F7 C000007F700000000000.findPrgEnd:  T <= Prog_start;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
247 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore16(same);
-- L0744@00F8 C197CBFF000000000000.fpe_loop:  readCore16(same);
--  nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
248 => '1' & '1' & "00000" & O"627" & O"627" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if R_IS_ZERO then next else fpe_next;
-- L0745@00F9 E6007E7F000000000000.  if R_IS_ZERO then next else fpe_next;
--  nWR = 1, nRD = 1, if (10011) then 000000000 else 011111100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
249 => '1' & '1' & "10011" & O"000" & O"374" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= dec;
-- L0746@00FA C000007F600000000000.  T <= dec;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
250 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- PrgEnd <= T, back;
-- L0747@00FB C002007F000000000002.  PrgEnd <= T, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 1, dummy = 0;
251 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '1' & '0',

-- findNextCR(same);
-- L0748@00FC C194CA7F000000000000.fpe_next:  findNextCR(same);
--  nWR = 1, nRD = 1, if (00000) then 110010100 else 110010100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
252 => '1' & '1' & "00000" & O"624" & O"624" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto fpe_loop;
-- L0749@00FD FE007C7F580000000000.  T <= inc, if false then continue else fpe_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 011111000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
253 => '1' & '1' & "11111" & O"000" & O"370" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= zero;
-- L0753@00FE C000007F380000000000.scanProgram:  T <= zero;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
254 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00111" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- LS <= T, LE <= T, T <= Prog_start;
-- L0754@00FF C000007F70000000000C.  LS <= T, LE <= T, T <= Prog_start;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 1, LE <= 1, PrgEnd <= 0, dummy = 0;
255 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01110" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '1' & '1' & '0' & '0',

-- LS <= T, readCore16(same);
-- L0756@0100 C197CBFF000000000008.scan_loop:  LS <= T, readCore16(same);
--  nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 1, LE <= 0, PrgEnd <= 0, dummy = 0;
256 => '1' & '1' & "00000" & O"627" & O"627" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '1' & '0' & '0' & '0',

-- alu <= S_fromLino, if R_IS_ZERO then return;
-- L0757@0101 E602007F000000000500.  alu <= S_fromLino, if R_IS_ZERO then return;
--  nWR = 1, nRD = 1, if (10011) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
257 => '1' & '1' & "10011" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_minus_R;
-- L0758@0102 C000007F000000000180.scan_check:  alu <= S_minus_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
258 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceALU();
-- L0759@0103 C1CCE67F000000000000.  traceALU();
--  nWR = 1, nRD = 1, if (00000) then 111001100 else 111001100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
259 => '1' & '1' & "00000" & O"714" & O"714" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if Y_ZERO then scan_found else next;
-- L0760@0104 E908007F000000000000.  if Y_ZERO then scan_found else next;
--  nWR = 1, nRD = 1, if (10100) then 100001000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
260 => '1' & '1' & "10100" & O"410" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if Y_SIGN then scan_found else next;
-- L0761@0105 EB08007F000000000000.  if Y_SIGN then scan_found else next;
--  nWR = 1, nRD = 1, if (10101) then 100001000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
261 => '1' & '1' & "10101" & O"410" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- findNextCR(same);
-- L0762@0106 C194CA7F000000000000.scan_next:  findNextCR(same);
--  nWR = 1, nRD = 1, if (00000) then 110010100 else 110010100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
262 => '1' & '1' & "00000" & O"624" & O"624" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= inc, goto scan_loop;
-- L0763@0107 FE00807F580000000000.scan_line:  T <= inc, if false then continue else scan_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 100000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
263 => '1' & '1' & "11111" & O"000" & O"400" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- findNextCR(same);
-- L0765@0108 C194CA7F000000000000.scan_found:  findNextCR(same);
--  nWR = 1, nRD = 1, if (00000) then 110010100 else 110010100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
264 => '1' & '1' & "00000" & O"624" & O"624" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- LE <= T;
-- L0766@0109 C000007F000000000004.  LE <= T;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 1, PrgEnd <= 0, dummy = 0;
265 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '1' & '0' & '0',

-- back;
-- L0768@010A C002007F000000000000.  if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
266 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_S, if Y_ZERO then return;
-- L0771@010B E802007F800000000000.copyCore:  T <= from_S, if Y_ZERO then return;
--  nWR = 1, nRD = 1, if (10100) then 000000010 else 000000000, directByte = 1111111, T <= 10000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
267 => '1' & '1' & "10100" & O"002" & O"000" & "1111111" & "10000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore(T);
-- L0772@010C C1BDDEFF000003000000.  readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
268 => '1' & '1' & "00000" & O"675" & O"675" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_R;
-- L0773@010D C000007F880000000000.  T <= from_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
269 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, same);
-- L0774@010E C1BCDE7F000003000000.  writeCore(T, same);
--  nWR = 1, nRD = 1, if (00000) then 110111100 else 110111100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
270 => '1' & '1' & "00000" & O"674" & O"674" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= copy_next, goto copyCore;
-- L0776@010F FE0085FF000000000580.  alu <= copy_next, if false then continue else copyCore;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 100001011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
271 => '1' & '1' & "11111" & O"000" & O"413" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10110" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 43;
-- L0781@0110 C1D3E9AB020000000000.  trace(from_microcode), directByte = 43;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0101011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
272 => '1' & '1' & "00000" & O"723" & O"723" & "0101011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto ColdStart;
-- L0782@0111 FE00027F000000000000.  if false then continue else ColdStart;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
273 => '1' & '1' & "11111" & O"000" & O"004" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 42;
-- L0787@0112 C1D3E9AA020000000000.  trace(from_microcode), directByte = 42;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0101010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
274 => '1' & '1' & "00000" & O"723" & O"723" & "0101010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= IL_PC;
-- L0788@0113 C000007F080000000000.  T <= IL_PC;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
275 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- XQhere <= T, readCore16(Prog_start);
-- L0789@0114 C197CBFF702000000000.  XQhere <= T, readCore16(Prog_start);
--  nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 1111111, T <= 01110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 1, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
276 => '1' & '1' & "00000" & O"627" & O"627" & "1111111" & "01110" & "00" & O"0" & '1' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if R_IS_ZERO then NOPROG_ERR;
-- L0790@0115 E771007F000000000000.  if R_IS_ZERO then NOPROG_ERR;
--  nWR = 1, nRD = 1, if (10011) then 101110001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
277 => '1' & '1' & "10011" & O"561" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= T, T <= from_R;
-- L0791@0116 C000007F880000060000.  BP <= T, T <= from_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
278 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"6" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- Lino <= T, goto fetch;
-- L0792@0117 FE0004FF000000000020.  Lino <= T, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
279 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & '0',

-- traceString 44;
-- L0797@0118 C1D3E9AC020000000000.  trace(from_microcode), directByte = 44;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0101100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
280 => '1' & '1' & "00000" & O"723" & O"723" & "0101100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'S', outChar(from_microcode);
-- L0798@0119 C1BADD53000008000000.stop_run:  directByte = 'S', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 1010011, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
281 => '1' & '1' & "00000" & O"672" & O"672" & "1010011" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'T', outChar(from_microcode);
-- L0799@011A C1BADD54000008000000.  directByte = 'T', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 1010100, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
282 => '1' & '1' & "00000" & O"672" & O"672" & "1010100" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'O', outChar(from_microcode);
-- L0800@011B C1BADD4F000008000000.  directByte = 'O', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 1001111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
283 => '1' & '1' & "00000" & O"672" & O"672" & "1001111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'P', outChar(from_microcode);
-- L0801@011C C1BADD50000008000000.  directByte = 'P', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 1010000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
284 => '1' & '1' & "00000" & O"672" & O"672" & "1010000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto print_lino;
-- L0802@011D FE00C47F000000000000.  if false then continue else print_lino;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110001000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
285 => '1' & '1' & "11111" & O"000" & O"610" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 49;
-- L0807@011E C1D3E9B1020000000000.  trace(from_microcode), directByte = 49;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0110001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
286 => '1' & '1' & "00000" & O"723" & O"723" & "0110001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0808@011F C000007F0000C00000C0.  alu <= R_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
287 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, ExpStack <= pop2;
-- L0809@0120 C000007F2000C0000000.  T <= ExpStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
288 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromStack, ExpStack <= pop2;
-- L0810@0121 C000007F0000C0000100.  alu <= S_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
289 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00100" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceALU();
-- L0811@0122 C1CCE67F000000000000.  traceALU();
--  nWR = 1, nRD = 1, if (00000) then 111001100 else 111001100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
290 => '1' & '1' & "00000" & O"714" & O"714" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 20, if S_EQU_DB_MOD32 then u_peek8;
-- L0813@0123 F9280014000000000000.  directByte = 20, if S_EQU_DB_MOD32 then u_peek8;
--  nWR = 1, nRD = 1, if (11100) then 100101000 else 000000000, directByte = 0010100, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
291 => '1' & '1' & "11100" & O"450" & O"000" & "0010100" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 24, if S_EQU_DB_MOD32 then u_poke8;
-- L0814@0124 F92D0018000000000000.  directByte = 24, if S_EQU_DB_MOD32 then u_poke8;
--  nWR = 1, nRD = 1, if (11100) then 100101101 else 000000000, directByte = 0011000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
292 => '1' & '1' & "11100" & O"455" & O"000" & "0011000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 21, if S_EQU_DB_MOD32 then u_peek16;
-- L0815@0125 F92B0015000000000000.  directByte = 21, if S_EQU_DB_MOD32 then u_peek16;
--  nWR = 1, nRD = 1, if (11100) then 100101011 else 000000000, directByte = 0010101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
293 => '1' & '1' & "11100" & O"453" & O"000" & "0010101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 25, if S_EQU_DB_MOD32 then u_poke16;
-- L0816@0126 F9300019000000000000.  directByte = 25, if S_EQU_DB_MOD32 then u_poke16;
--  nWR = 1, nRD = 1, if (11100) then 100110000 else 000000000, directByte = 0011001, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
294 => '1' & '1' & "11100" & O"460" & O"000" & "0011001" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= binop, goto u_done;
-- L0818@0127 FE00957FC00000000000.  T <= binop, if false then continue else u_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 100101010, directByte = 1111111, T <= 11000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
295 => '1' & '1' & "11111" & O"000" & O"452" & "1111111" & "11000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore(T);
-- L0820@0128 C1BDDEFF000003000000.u_peek8:  readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
296 => '1' & '1' & "00000" & O"675" & O"675" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= MDR;
-- L0821@0129 C000007F480000000000.u_in:  T <= MDR;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
297 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, goto fetch;
-- L0822@012A FE0004FF000080000000.u_done:  ExpStack <= push_TWord, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
298 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore16(same);
-- L0824@012B C197CBFF000000000000.u_peek16:  readCore16(same);
--  nWR = 1, nRD = 1, if (00000) then 110010111 else 110010111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
299 => '1' & '1' & "00000" & O"627" & O"627" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_R, goto u_done;
-- L0825@012C FE00957F880000000000.  T <= from_R, if false then continue else u_done;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 100101010, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
300 => '1' & '1' & "11111" & O"000" & O"452" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- prepWrite();
-- L0827@012D C1349A7F000000000000.u_poke8:  prepWrite();
--  nWR = 1, nRD = 1, if (00000) then 100110100 else 100110100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
301 => '1' & '1' & "00000" & O"464" & O"464" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, from_SLo);
-- L0828@012E C1BCDE7F000003C00000.  writeCore(T, from_SLo);
--  nWR = 1, nRD = 1, if (00000) then 110111100 else 110111100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 110, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
302 => '1' & '1' & "00000" & O"674" & O"674" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"6" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto u_peek8;
-- L0829@012F FE00947F000000000000.  if false then continue else u_peek8;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 100101000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
303 => '1' & '1' & "11111" & O"000" & O"450" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- prepWrite();
-- L0831@0130 C1349A7F000000000000.u_poke16:  prepWrite();
--  nWR = 1, nRD = 1, if (00000) then 100110100 else 100110100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
304 => '1' & '1' & "00000" & O"464" & O"464" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, from_SHi), T <= inc;
-- L0832@0131 C1BCDE7F580003A00000.  writeCore(T, from_SHi), T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 110111100 else 110111100, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 101, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
305 => '1' & '1' & "00000" & O"674" & O"674" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"5" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, from_SLo);
-- L0833@0132 C1BCDE7F000003C00000.  writeCore(T, from_SLo);
--  nWR = 1, nRD = 1, if (00000) then 110111100 else 110111100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 110, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
306 => '1' & '1' & "00000" & O"674" & O"674" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"6" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= dec, goto u_peek16;
-- L0834@0133 FE0095FF600000000000.  T <= dec, if false then continue else u_peek16;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 100101011, directByte = 1111111, T <= 01100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
307 => '1' & '1' & "11111" & O"000" & O"453" & "1111111" & "01100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= save;
-- L0836@0134 C000007F900000000000.prepWrite:  T <= save;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
308 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10010" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_R;
-- L0837@0135 C000007F880000000000.  T <= from_R;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
309 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromT, T <= recall, back;
-- L0838@0136 C002007F980000000480.  alu <= S_fromT, T <= recall, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 10011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
310 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "10011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10010" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 19;
-- L0843@0137 C1D3E993020000000000.  trace(from_microcode), directByte = 19;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0010011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
311 => '1' & '1' & "00000" & O"723" & O"723" & "0010011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then RSTACK_ERR;
-- L0844@0138 E37D007F000000000000.  if STACK_IS_EMPTY then RSTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 101111101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
312 => '1' & '1' & "10001" & O"575" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= RetStack, RetStack <= pop, goto fetch;
-- L0845@0139 FE0004FF01C800000000.  IL_PC <= RetStack, RetStack <= pop, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 111, XQhere <= 0, IL_OP <= 0, RetStack <= 10, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
313 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"7" & '0' & '0' & "10" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 20;
-- L0850@013A C1D3E994020000000000.  trace(from_microcode), directByte = 20;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0010100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
314 => '1' & '1' & "00000" & O"723" & O"723" & "0010100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 3;
-- L0851@013B C1D3E983020000000000.  trace(from_microcode), directByte = 3;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0000011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
315 => '1' & '1' & "00000" & O"723" & O"723" & "0000011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_FULL then RSTACK_ERR;
-- L0852@013C E17D007F000000000000.  if STACK_IS_FULL then RSTACK_ERR;
--  nWR = 1, nRD = 1, if (10000) then 101111101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
316 => '1' & '1' & "10000" & O"575" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- RetStack <= push_IL_PC_PLUS_1, goto jump;
-- L0853@013D FE00A07F000C00000000.  RetStack <= push_IL_PC_PLUS_1, if false then continue else jump;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 101000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 11, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
317 => '1' & '1' & "11111" & O"000" & O"500" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "11" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 21;
-- L0858@013E C1D3E995020000000000.  trace(from_microcode), directByte = 21;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0010101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
318 => '1' & '1' & "00000" & O"723" & O"723" & "0010101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 3;
-- L0859@013F C1D3E983020000000000.  trace(from_microcode), directByte = 3;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0000011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
319 => '1' & '1' & "00000" & O"723" & O"723" & "0000011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= direct11, goto fetch;
-- L0860@0140 FE0004FF018000000000.jump:  IL_PC <= direct11, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 110, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
320 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"6" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 7;
-- L0865@0141 C1D3E987020000000000.  trace(from_microcode), directByte = 7;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0000111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
321 => '1' & '1' & "00000" & O"723" & O"723" & "0000111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= pc_plus_off6;
-- L0866@0142 C000007F010000000000.  IL_PC <= pc_plus_off6;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 100, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
322 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"4" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceGoto;
-- L0867@0143 C1D3E99E020000000000.br_exit:  trace(from_microcode), directByte = 30;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0011110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
323 => '1' & '1' & "00000" & O"723" & O"723" & "0011110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0868@0144 FE0004FF000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
324 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 7;
-- L0873@0145 C1D3E987020000000000.  trace(from_microcode), directByte = 7;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0000111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
325 => '1' & '1' & "00000" & O"723" & O"723" & "0000111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto badop;
-- L0874@0146 FE0006FF000000000000.  if false then continue else badop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
326 => '1' & '1' & "11111" & O"000" & O"015" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 17;
-- L0879@0147 C1D3E991020000000000.  trace(from_microcode), directByte = 17;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0010001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
327 => '1' & '1' & "00000" & O"723" & O"723" & "0010001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= IL_PC, BP <= save, skipSpaces();
-- L0880@0148 C1B1D8FF080000040000.  T <= IL_PC, BP <= save, skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 1111111, T <= 00001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 100, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
328 => '1' & '1' & "00000" & O"661" & O"661" & "1111111" & "00001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"4" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 3;
-- L0881@0149 C1D3E983020000000000.bc_loop:  trace(from_microcode), directByte = 3;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0000011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
329 => '1' & '1' & "00000" & O"723" & O"723" & "0000011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore(BP);
-- L0882@014A C1BDDEFF000002000000.  readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
330 => '1' & '1' & "00000" & O"675" & O"675" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
-- L0883@014B E400A8FF000000000000.  if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
--  nWR = 1, nRD = 1, if (10010) then 000000000 else 101010001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
331 => '1' & '1' & "10010" & O"000" & O"521" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if ILCODEBYTE_BIT7 then bc_match;
-- L0884@014C C34E007F000000000000.  if ILCODEBYTE_BIT7 then bc_match;
--  nWR = 1, nRD = 1, if (00001) then 101001110 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
332 => '1' & '1' & "00001" & O"516" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= inc, IL_PC <= inc, goto bc_loop;
-- L0885@014D FE00A4FF008000030000.  BP <= inc, IL_PC <= inc, if false then continue else bc_loop;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 101001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
333 => '1' & '1' & "11111" & O"000" & O"511" & "1111111" & "00000" & "00" & O"2" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= inc, IL_PC <= inc;
-- L0886@014E C000007F008000030000.bc_match:  BP <= inc, IL_PC <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
334 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"2" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceBP();
-- L0887@014F C1C6E37F000000000000.  traceBP();
--  nWR = 1, nRD = 1, if (00000) then 111000110 else 111000110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
335 => '1' & '1' & "00000" & O"706" & O"706" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0888@0150 FE0004FF000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
336 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= recall, IL_PC <= T;
-- L0889@0151 C000007F00C000050000.bc_exit:  BP <= recall, IL_PC <= T;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 011, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 101, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
337 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"3" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"5" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceBP();
-- L0890@0152 C1C6E37F000000000000.  traceBP();
--  nWR = 1, nRD = 1, if (00000) then 111000110 else 111000110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
338 => '1' & '1' & "00000" & O"706" & O"706" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- L0891@0153 F577A1FF014000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
--  nWR = 1, nRD = 1, if (11010) then 101110111 else 101000011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
339 => '1' & '1' & "11010" & O"567" & O"503" & "1111111" & "00000" & "00" & O"5" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 16;
-- L0896@0154 C1D3E990020000000000.  trace(from_microcode), directByte = 16;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0010000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
340 => '1' & '1' & "00000" & O"723" & O"723" & "0010000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- skipSpaces();
-- L0897@0155 C1B1D8FF000000000000.  skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
341 => '1' & '1' & "00000" & O"661" & O"661" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
-- L0898@0156 DF58007F000000800000.  MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
--  nWR = 1, nRD = 1, if (01111) then 101011000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 100, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
342 => '1' & '1' & "01111" & O"530" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"4" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- L0899@0157 F577A1FF014000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
--  nWR = 1, nRD = 1, if (11010) then 101110111 else 101000011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
343 => '1' & '1' & "11010" & O"567" & O"503" & "1111111" & "00000" & "00" & O"5" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
-- L0900@0158 E17B007F500000000000.bv_exec:  T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10000) then 101111011 else 000000000, directByte = 1111111, T <= 01010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
344 => '1' & '1' & "10000" & O"573" & O"000" & "1111111" & "01010" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TByte, BP <= inc, goto fetch;
-- L0901@0159 FE0004FF0000A0030000.  ExpStack <= push_TByte, BP <= inc, if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 101, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
345 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"5" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 14;
-- L0906@015A C1D3E98E020000000000.  trace(from_microcode), directByte = 14;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0001110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
346 => '1' & '1' & "00000" & O"723" & O"723" & "0001110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- skipSpaces();
-- L0907@015B C1B1D8FF000000000000.  skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
347 => '1' & '1' & "00000" & O"661" & O"661" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= reset0, if MDR_IS_NUM then bn_loop;
-- L0908@015C DD61007F000000000040.  alu <= reset0, if MDR_IS_NUM then bn_loop;
--  nWR = 1, nRD = 1, if (01110) then 101100001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
348 => '1' & '1' & "01110" & O"541" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00001" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
-- L0909@015D F40D007F014000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
--  nWR = 1, nRD = 1, if (11010) then 000001101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
349 => '1' & '1' & "11010" & O"015" & O"000" & "1111111" & "00000" & "00" & O"5" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceY();
-- L0910@015E C1C9E4FF000000000000.bn_exit:  traceY();
--  nWR = 1, nRD = 1, if (00000) then 111001001 else 111001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
350 => '1' & '1' & "00000" & O"711" & O"711" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceGoto;
-- L0911@015F C1D3E99E020000000000.  trace(from_microcode), directByte = 30;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0011110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
351 => '1' & '1' & "00000" & O"723" & O"723" & "0011110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto fetch;
-- L0912@0160 FE0004FF000000000000.  if false then continue else fetch;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000001001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
352 => '1' & '1' & "11111" & O"000" & O"011" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= Yx10_plus_MDR, BP <= inc;
-- L0913@0161 C000007F000000030400.bn_loop:  alu <= Yx10_plus_MDR, BP <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
353 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & "00" & "10000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if ALU_OVERFLOW then OVERFLOW_ERR;
-- L0914@0162 EF75007F000000000000.  if ALU_OVERFLOW then OVERFLOW_ERR;
--  nWR = 1, nRD = 1, if (10111) then 101110101 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
354 => '1' & '1' & "10111" & O"565" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore(BP);
-- L0915@0163 C1BDDEFF000002000000.  readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
355 => '1' & '1' & "00000" & O"675" & O"675" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if MDR_IS_NUM then bn_loop;
-- L0916@0164 DD61007F000000000000.  if MDR_IS_NUM then bn_loop;
--  nWR = 1, nRD = 1, if (01110) then 101100001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
356 => '1' & '1' & "01110" & O"541" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
-- L0917@0165 E17B007F280000000000.  T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10000) then 101111011 else 000000000, directByte = 1111111, T <= 00101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
357 => '1' & '1' & "10000" & O"573" & O"000" & "1111111" & "00101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, goto bn_exit;
-- L0918@0166 FE00AF7F000080000000.  ExpStack <= push_TWord, if false then continue else bn_exit;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 101011110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
358 => '1' & '1' & "11111" & O"000" & O"536" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 13;
-- L0923@0167 C1D3E98D020000000000.  trace(from_microcode), directByte = 13;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0001101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
359 => '1' & '1' & "00000" & O"723" & O"723" & "0001101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- skipSpaces();
-- L0924@0168 C1B1D8FF000000000000.  skipSpaces();
--  nWR = 1, nRD = 1, if (00000) then 110110001 else 110110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
360 => '1' & '1' & "00000" & O"661" & O"661" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if MDR_EQU_DB then fetch;
-- L0925@0169 CA09000D000000000000.  directByte = 0x0D, if MDR_EQU_DB then fetch;
--  nWR = 1, nRD = 1, if (00101) then 000001001 else 000000000, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
361 => '1' & '1' & "00101" & O"011" & O"000" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- L0926@016A F577A1FF014000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
--  nWR = 1, nRD = 1, if (11010) then 101110111 else 101000011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
362 => '1' & '1' & "11010" & O"567" & O"503" & "1111111" & "00000" & "00" & O"5" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- gotChar = 1, traceString 55;
-- L0928@016B C1D3E9B7020000002000.BREAK:  gotChar = 1, trace(from_microcode), directByte = 55;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0110111, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
363 => '1' & '1' & "00000" & O"723" & O"723" & "0110111" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outBeep();
-- L0929@016C C1B5DAFF000000000000.  outBeep();
--  nWR = 1, nRD = 1, if (00000) then 110110101 else 110110101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
364 => '1' & '1' & "00000" & O"665" & O"665" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'B', outChar(from_microcode);
-- L0930@016D C1BADD42000008000000.  directByte = 'B', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 1000010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
365 => '1' & '1' & "00000" & O"672" & O"672" & "1000010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'R', outChar(from_microcode);
-- L0931@016E C1BADD52000008000000.  directByte = 'R', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 1010010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
366 => '1' & '1' & "00000" & O"672" & O"672" & "1010010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'K', outChar(from_microcode);
-- L0932@016F C1BADD4B000008000000.  directByte = 'K', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 1001011, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
367 => '1' & '1' & "00000" & O"672" & O"672" & "1001011" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto traceDetails;
-- L0933@0170 FE00C27F000000000000.  if false then continue else traceDetails;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110000100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
368 => '1' & '1' & "11111" & O"000" & O"604" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 50;
-- L0935@0171 C1D3E9B2020000000000.NOPROG_ERR:  trace(from_microcode), directByte = 50;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0110010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
369 => '1' & '1' & "00000" & O"723" & O"723" & "0110010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto traceError;
-- L0936@0172 FE00C07F000000000000.  if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
370 => '1' & '1' & "11111" & O"000" & O"600" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 57;
-- L0937@0173 C1D3E9B9020000000000.DIVBY0_ERR:  trace(from_microcode), directByte = 57;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0111001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
371 => '1' & '1' & "00000" & O"723" & O"723" & "0111001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto traceError;
-- L0938@0174 FE00C07F000000000000.  if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
372 => '1' & '1' & "11111" & O"000" & O"600" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 58;
-- L0939@0175 C1D3E9BA020000000000.OVERFLOW_ERR:  trace(from_microcode), directByte = 58;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0111010, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
373 => '1' & '1' & "00000" & O"723" & O"723" & "0111010" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto traceError;
-- L0940@0176 FE00C07F000000000000.  if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
374 => '1' & '1' & "11111" & O"000" & O"600" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 61;
-- L0941@0177 C1D3E9BD020000000000.SYNTAX_ERR:  trace(from_microcode), directByte = 61;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0111101, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
375 => '1' & '1' & "00000" & O"723" & O"723" & "0111101" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto traceError;
-- L0942@0178 FE00C07F000000000000.  if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
376 => '1' & '1' & "11111" & O"000" & O"600" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 62;
-- L0943@0179 C1D3E9BE020000000000.INTERNAL_ERR:  trace(from_microcode), directByte = 62;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0111110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
377 => '1' & '1' & "00000" & O"723" & O"723" & "0111110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto traceError;
-- L0944@017A FE00C07F000000000000.  if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
378 => '1' & '1' & "11111" & O"000" & O"600" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 60;
-- L0945@017B C1D3E9BC020000000000.ESTACK_ERR:  trace(from_microcode), directByte = 60;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0111100, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
379 => '1' & '1' & "00000" & O"723" & O"723" & "0111100" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto traceError;
-- L0946@017C FE00C07F000000000000.  if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
380 => '1' & '1' & "11111" & O"000" & O"600" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 59;
-- L0947@017D C1D3E9BB020000000000.RSTACK_ERR:  trace(from_microcode), directByte = 59;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0111011, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
381 => '1' & '1' & "00000" & O"723" & O"723" & "0111011" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto traceError;
-- L0948@017E FE00C07F000000000000.  if false then continue else traceError;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
382 => '1' & '1' & "11111" & O"000" & O"600" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 54;
-- L0949@017F C1D3E9B6020000000000.BSTACK_ERR:  trace(from_microcode), directByte = 54;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0110110, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
383 => '1' & '1' & "00000" & O"723" & O"723" & "0110110" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outBeep();
-- L0950@0180 C1B5DAFF000000000000.traceError:  outBeep();
--  nWR = 1, nRD = 1, if (00000) then 110110101 else 110110101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
384 => '1' & '1' & "00000" & O"665" & O"665" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'E', outChar(from_microcode);
-- L0951@0181 C1BADD45000008000000.  directByte = 'E', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 1000101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
385 => '1' & '1' & "00000" & O"672" & O"672" & "1000101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'R', outChar(from_microcode);
-- L0952@0182 C1BADD52000008000000.  directByte = 'R', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 1010010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
386 => '1' & '1' & "00000" & O"672" & O"672" & "1010010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'R', outChar(from_microcode);
-- L0953@0183 C1BADD52000008000000.  directByte = 'R', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 1010010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
387 => '1' & '1' & "00000" & O"672" & O"672" & "1010010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = '#', outChar(from_microcode), T <= IL_PC;
-- L0954@0184 C1BADD23080008000000.traceDetails:  directByte = '#', outChar(from_microcode), T <= IL_PC;
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 0100011, T <= 00001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
388 => '1' & '1' & "00000" & O"672" & O"672" & "0100011" & "00001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= dec;
-- L0955@0185 C000007F600000000000.  T <= dec;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
389 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- printDecR(R_fromT);
-- L0956@0186 C1A3D1FF0000000004C0.  printDecR(R_fromT);
--  nWR = 1, nRD = 1, if (00000) then 110100011 else 110100011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
390 => '1' & '1' & "00000" & O"643" & O"643" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10011" & '0' & '0' & '0' & '0' & '0' & '0',

-- if IS_RUNMODE then next else err_done;
-- L0957@0187 F600C8FF000000000000.  if IS_RUNMODE then next else err_done;
--  nWR = 1, nRD = 1, if (11011) then 000000000 else 110010001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
391 => '1' & '1' & "11011" & O"000" & O"621" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', outChar(from_microcode);
-- L0958@0188 C1BADD20000008000000.print_lino:  directByte = ' ', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
392 => '1' & '1' & "00000" & O"672" & O"672" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'A', outChar(from_microcode);
-- L0959@0189 C1BADD41000008000000.  directByte = 'A', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 1000001, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
393 => '1' & '1' & "00000" & O"672" & O"672" & "1000001" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 'T', outChar(from_microcode), alu <= S_fromLino;
-- L0960@018A C1BADD54000008000500.  directByte = 'T', outChar(from_microcode), alu <= S_fromLino;
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 1010100, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
394 => '1' & '1' & "00000" & O"672" & O"672" & "1010100" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', outChar(from_microcode), T <= from_S;
-- L0961@018B C1BADD20800008000000.  directByte = ' ', outChar(from_microcode), T <= from_S;
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 0100000, T <= 10000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
395 => '1' & '1' & "00000" & O"672" & O"672" & "0100000" & "10000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- printDecR(R_fromT);
-- L0962@018C C1A3D1FF0000000004C0.  printDecR(R_fromT);
--  nWR = 1, nRD = 1, if (00000) then 110100011 else 110100011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
396 => '1' & '1' & "00000" & O"643" & O"643" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10011" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', outChar(from_microcode), T <= fromTicks;
-- L0963@018D C1BADD20C80008000000.  directByte = ' ', outChar(from_microcode), T <= fromTicks;
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 0100000, T <= 11001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
397 => '1' & '1' & "00000" & O"672" & O"672" & "0100000" & "11001" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- printDecR(R_fromT);
-- L0964@018E C1A3D1FF0000000004C0.  printDecR(R_fromT);
--  nWR = 1, nRD = 1, if (00000) then 110100011 else 110100011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
398 => '1' & '1' & "00000" & O"643" & O"643" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10011" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = '.', outChar(from_microcode), T <= recall;
-- L0965@018F C1BADD2E980008000000.  directByte = ' C1BADD2E980008000000.', outChar(from_microcode), T <= recall;
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 0101110, T <= 10011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
399 => '1' & '1' & "00000" & O"672" & O"672" & "0101110" & "10011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- printDecR(R_fromT);
-- L0966@0190 C1A3D1FF0000000004C0.  printDecR(R_fromT);
--  nWR = 1, nRD = 1, if (00000) then 110100011 else 110100011, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
400 => '1' & '1' & "00000" & O"643" & O"643" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10011" & '0' & '0' & '0' & '0' & '0' & '0',

-- outCRLF();
-- L0967@0191 C1B8DC7F000000000000.err_done:  outCRLF();
--  nWR = 1, nRD = 1, if (00000) then 110111000 else 110111000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
401 => '1' & '1' & "00000" & O"670" & O"670" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- trace(crlf);
-- L0968@0192 C1D3E9FF060000000000.  trace(crlf);
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 1111111, T <= 00000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
402 => '1' & '1' & "00000" & O"723" & O"723" & "1111111" & "00000" & "11" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- goto WarmStart;
-- L0969@0193 FE00037F000000000000.  if false then continue else WarmStart;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 000000110, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
403 => '1' & '1' & "11111" & O"000" & O"006" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore(T);
-- L0971@0194 C1BDDEFF000003000000.findNextCR:  readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
404 => '1' & '1' & "00000" & O"675" & O"675" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, if MDR_EQU_DB then return;
-- L0972@0195 CA02000D000000000000.  directByte = 0x0D, if MDR_EQU_DB then return;
--  nWR = 1, nRD = 1, if (00101) then 000000010 else 000000000, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
405 => '1' & '1' & "00101" & O"002" & O"000" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= inc, directByte = NULL, if MDR_EQU_DB then INTERNAL_ERR else findNextCR;
-- L0973@0196 CB79CA00580000000000.  T <= inc, directByte = 0x00, if MDR_EQU_DB then INTERNAL_ERR else findNextCR;
--  nWR = 1, nRD = 1, if (00101) then 101111001 else 110010100, directByte = 0000000, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
406 => '1' & '1' & "00101" & O"571" & O"624" & "0000000" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= reset1, readCore(T);
-- L0975@0197 C1BDDEFF000003000080.readCore16:  alu <= reset1, readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
407 => '1' & '1' & "00000" & O"675" & O"675" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00010" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= Rx256_plus_MDR, T <= inc;
-- L0976@0198 C000007F580000000440.  alu <= Rx256_plus_MDR, T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
408 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore(T);
-- L0977@0199 C1BDDEFF000003000000.  readCore(T);
--  nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
409 => '1' & '1' & "00000" & O"675" & O"675" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= Rx256_plus_MDR, T <= inc, back;
-- L0978@019A C002007F580000000440.  alu <= Rx256_plus_MDR, T <= inc, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
410 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, zero), T <= inc;
-- L0980@019B C1BCDE7F580003400000.write2Nulls:  writeCore(T, zero), T <= inc;
--  nWR = 1, nRD = 1, if (00000) then 110111100 else 110111100, directByte = 1111111, T <= 01011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
411 => '1' & '1' & "00000" & O"674" & O"674" & "1111111" & "01011" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"2" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- writeCore(T, zero);
-- L0981@019C C1BCDE7F000003400000.  writeCore(T, zero);
--  nWR = 1, nRD = 1, if (00000) then 110111100 else 110111100, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 11, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
412 => '1' & '1' & "00000" & O"674" & O"674" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "11" & O"2" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- back;
-- L0982@019D C002007F000000000000.  if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
413 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0985@019E E37B007F000000000000.pullRS:  if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 101111011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
414 => '1' & '1' & "10001" & O"573" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0986@019F C000007F0000C00000C0.  alu <= R_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
415 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & '0',

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0987@01A0 E37B007F000000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nWR = 1, nRD = 1, if (10001) then 101111011 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
416 => '1' & '1' & "10001" & O"573" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= S_fromStack, ExpStack <= pop2, back;
-- L0988@01A1 C002007F0000C0000100.  alu <= S_fromStack, ExpStack <= pop2, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
417 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00100" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0991@01A2 C000007F0000C00000C0.printDec:  alu <= R_fromStack, ExpStack <= pop2;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
418 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= bcd_start;
-- L0993@01A3 C000007F000000000280.printDecR:  alu <= bcd_start;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 01010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
419 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "01010" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= bcd_next, if ALU_READY then next else repeat;
-- L0994@01A4 EC0000FF0000000002C0.  alu <= bcd_next, if ALU_READY then next else repeat;
--  nWR = 1, nRD = 1, if (10110) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 01011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
420 => '1' & '1' & "10110" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "01011" & '0' & '0' & '0' & '0' & '0' & '0',

-- if ALU_SIGN then next else printY;
-- L0995@01A5 F000D3FF000000000000.  if ALU_SIGN then next else printY;
--  nWR = 1, nRD = 1, if (11000) then 000000000 else 110100111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
421 => '1' & '1' & "11000" & O"000" & O"647" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = '-', outChar(from_microcode);
-- L0996@01A6 C1BADD2D000008000000.  directByte = '-', outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 0101101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
422 => '1' & '1' & "00000" & O"672" & O"672" & "0101101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ);
-- L0997@01A7 C1AFD7FF000018000000.printY:  outNZChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 110101111 else 110101111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
423 => '1' & '1' & "00000" & O"657" & O"657" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ);
-- L0998@01A8 C1AFD7FF000018000000.  outNZChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 110101111 else 110101111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
424 => '1' & '1' & "00000" & O"657" & O"657" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ);
-- L0999@01A9 C1AFD7FF000018000000.  outNZChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 110101111 else 110101111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
425 => '1' & '1' & "00000" & O"657" & O"657" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ);
-- L1000@01AA C1AFD7FF000018000000.  outNZChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 110101111 else 110101111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
426 => '1' & '1' & "00000" & O"657" & O"657" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ);
-- L1001@01AB C1AFD7FF000018000000.  outNZChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 110101111 else 110101111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
427 => '1' & '1' & "00000" & O"657" & O"657" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ);
-- L1002@01AC C1AFD7FF000018000000.  outNZChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 110101111 else 110101111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
428 => '1' & '1' & "00000" & O"657" & O"657" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outNZChar(from_YtoAlphaZ);
-- L1003@01AD C1AFD7FF000018000000.  outNZChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 110101111 else 110101111, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
429 => '1' & '1' & "00000" & O"657" & O"657" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- CHAROUT <= from_YtoAlpha, goto outChar;
-- L1004@01AE FE00DD7F000014000000.  CHAROUT <= from_YtoAlpha, if false then continue else outChar;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110111010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
430 => '1' & '1' & "11111" & O"000" & O"672" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"5" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outChar(from_YtoAlphaZ);
-- L1006@01AF C1BADD7F000018000000.outNZChar:  outChar(from_YtoAlphaZ);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 110, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
431 => '1' & '1' & "00000" & O"672" & O"672" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"6" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- alu <= Yx16, back;
-- L1007@01B0 C002007F000000000240.out_skip:  alu <= Yx16, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
432 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "01001" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore(BP);
-- L1009@01B1 C1BDDEFF000002000000.skipSpaces:  readCore(BP);
--  nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
433 => '1' & '1' & "00000" & O"675" & O"675" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "10" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = ' ', if MDR_EQU_DB then skipSp;
-- L1010@01B2 CBB40020000000000000.  directByte = ' ', if MDR_EQU_DB then skipSp;
--  nWR = 1, nRD = 1, if (00101) then 110110100 else 000000000, directByte = 0100000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
434 => '1' & '1' & "00101" & O"664" & O"000" & "0100000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = TAB, if MDR_EQU_DB then skipSp else return;
-- L1011@01B3 CBB40109000000000000.  directByte = 0x09, if MDR_EQU_DB then skipSp else return;
--  nWR = 1, nRD = 1, if (00101) then 110110100 else 000000010, directByte = 0001001, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
435 => '1' & '1' & "00101" & O"664" & O"002" & "0001001" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- BP <= inc, goto skipSpaces;
-- L1012@01B4 FE00D8FF000000030000.skipSp:  BP <= inc, if false then continue else skipSpaces;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110110001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
436 => '1' & '1' & "11111" & O"000" & O"661" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"3" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- outCRLF();
-- L1014@01B5 C1B8DC7F000000000000.outBeep:  outCRLF();
--  nWR = 1, nRD = 1, if (00000) then 110111000 else 110111000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
437 => '1' & '1' & "00000" & O"670" & O"670" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- trace(crlf);
-- L1015@01B6 C1D3E9FF060000000000.  trace(crlf);
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 1111111, T <= 00000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
438 => '1' & '1' & "00000" & O"723" & O"723" & "1111111" & "00000" & "11" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = BEEP, CHAROUT <= from_microcode, goto outChar;
-- L1016@01B7 FE00DD07000008000000.  directByte = 0x07, CHAROUT <= from_microcode, if false then continue else outChar;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 110111010, directByte = 0000111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
439 => '1' & '1' & "11111" & O"000" & O"672" & "0000111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = CR, outChar(from_microcode);
-- L1018@01B8 C1BADD0D000008000000.outCRLF:  directByte = 0x0D, outChar(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 110111010 else 110111010, directByte = 0001101, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
440 => '1' & '1' & "00000" & O"672" & O"672" & "0001101" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = LF, CHAROUT <= from_microcode;
-- L1019@01B9 C000000A000008000000.  directByte = 0x0A, CHAROUT <= from_microcode;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 0001010, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
441 => '1' & '1' & "00000" & O"000" & O"000" & "0001010" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"2" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if CHAROUT_READY then next else repeat;
-- L1020@01BA C40000FF000000000000.outChar:  if CHAROUT_READY then next else repeat;
--  nWR = 1, nRD = 1, if (00010) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
442 => '1' & '1' & "00010" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if CHAROUT_READY then return else repeat;
-- L1021@01BB C40200FF000000000000.  if CHAROUT_READY then return else repeat;
--  nWR = 1, nRD = 1, if (00010) then 000000010 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
443 => '1' & '1' & "00010" & O"002" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- nWR = 0, if nBUSACK then repeat else return;
-- L1023@01BC 4C01017F000000000000.writeCore:  nWR = 0, if nBUSACK then repeat else return;
--  nWR = 0, nRD = 1, if (00110) then 000000001 else 000000010, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
444 => '0' & '1' & "00110" & O"001" & O"002" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- nRD = 0, if nBUSACK then repeat else next;
-- L1025@01BD 8C01007F000000000000.readCore:  nRD = 0, if nBUSACK then repeat else next;
--  nWR = 1, nRD = 0, if (00110) then 000000001 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
445 => '1' & '0' & "00110" & O"001" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- nRD = 0, MDR <= from_Bus, back;
-- L1026@01BE 8002007F000000200000.  nRD = 0, MDR <= from_Bus, if true then return else continue;
--  nWR = 1, nRD = 0, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 001, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
446 => '1' & '0' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"1" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- InlEnd <= InLine_start, trace(crlf);
-- L1030@01BF C1D3E9FF060000080000.dump_input:  InlEnd <= InLine_start, trace(crlf);
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 1111111, T <= 00000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
447 => '1' & '1' & "00000" & O"723" & O"723" & "1111111" & "00000" & "11" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "01" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- readCore(InlEnd);
-- L1031@01C0 C1BDDEFF000001000000.dump_inlp:  readCore(InlEnd);
--  nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 01, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
448 => '1' & '1' & "00000" & O"675" & O"675" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "01" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = 9, trace(from_microcode);
-- L1032@01C1 C1D3E989020000000000.  directByte = 9, trace(from_microcode);
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0001001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
449 => '1' & '1' & "00000" & O"723" & O"723" & "0001001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- directByte = NULL, if MDR_EQU_DB then dump_inex;
-- L1033@01C2 CBC40000000000000000.  directByte = 0x00, if MDR_EQU_DB then dump_inex;
--  nWR = 1, nRD = 1, if (00101) then 111000100 else 000000000, directByte = 0000000, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
450 => '1' & '1' & "00101" & O"704" & O"000" & "0000000" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- InlEnd <= inc, goto dump_inlp;
-- L1034@01C3 FE00E07F000000100000.  InlEnd <= inc, if false then continue else dump_inlp;
--  nWR = 1, nRD = 1, if (11111) then 000000000 else 111000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
451 => '1' & '1' & "11111" & O"000" & O"700" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "10" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- trace(crlf);
-- L1035@01C4 C1D3E9FF060000000000.dump_inex:  trace(crlf);
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 1111111, T <= 00000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
452 => '1' & '1' & "00000" & O"723" & O"723" & "1111111" & "00000" & "11" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- back;
-- L1036@01C5 C002007F000000000000.  if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
453 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, T <= BP;
-- L1038@01C6 C000007F680080000000.traceBP:  ExpStack <= push_TWord, T <= BP;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 01101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
454 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "01101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 33;
-- L1039@01C7 C1D3E9A1020000000000.  trace(from_microcode), directByte = 33;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0100001, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
455 => '1' & '1' & "00000" & O"723" & O"723" & "0100001" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, ExpStack <= pop2, back;
-- L1040@01C8 C002007F2000C0000000.  T <= ExpStack, ExpStack <= pop2, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
456 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- ExpStack <= push_TWord, T <= from_YLo;
-- L1042@01C9 C000007F280080000000.traceY:  ExpStack <= push_TWord, T <= from_YLo;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 00101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 100, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
457 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00101" & "00" & O"0" & '0' & '0' & "00" & "00" & O"4" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- traceString 32;
-- L1043@01CA C1D3E9A0020000000000.  trace(from_microcode), directByte = 32;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0100000, T <= 00000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
458 => '1' & '1' & "00000" & O"723" & O"723" & "0100000" & "00000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= ExpStack, ExpStack <= pop2, back;
-- L1044@01CB C002007F2000C0000000.  T <= ExpStack, ExpStack <= pop2, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 110, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
459 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00100" & "00" & O"0" & '0' & '0' & "00" & "00" & O"6" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- trace(crlf);
-- L1046@01CC C1D3E9FF060000000000.traceALU:  trace(crlf);
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 1111111, T <= 00000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
460 => '1' & '1' & "00000" & O"723" & O"723" & "1111111" & "00000" & "11" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= save, traceT;
-- L1047@01CD C1D3E9B4920000000000.  T <= save, trace(from_microcode), directByte = 52;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0110100, T <= 10010, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
461 => '1' & '1' & "00000" & O"723" & O"723" & "0110100" & "10010" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_S, traceString 52;
-- L1048@01CE C1D3E9B4820000000000.  T <= from_S, trace(from_microcode), directByte = 52;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0110100, T <= 10000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
462 => '1' & '1' & "00000" & O"723" & O"723" & "0110100" & "10000" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_R, traceString 52;
-- L1049@01CF C1D3E9B48A0000000000.  T <= from_R, trace(from_microcode), directByte = 52;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0110100, T <= 10001, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
463 => '1' & '1' & "00000" & O"723" & O"723" & "0110100" & "10001" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_YHi, traceString 53;
-- L1050@01D0 C1D3E9B5320000000000.  T <= from_YHi, trace(from_microcode), directByte = 53;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0110101, T <= 00110, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
464 => '1' & '1' & "00000" & O"723" & O"723" & "0110101" & "00110" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= from_YLo, traceString 52;
-- L1051@01D1 C1D3E9B42A0000000000.  T <= from_YLo, trace(from_microcode), directByte = 52;
--  nWR = 1, nRD = 1, if (00000) then 111010011 else 111010011, directByte = 0110100, T <= 00101, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
465 => '1' & '1' & "00000" & O"723" & O"723" & "0110100" & "00101" & "01" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- T <= recall, DBGINDEX <= crlf;
-- L1052@01D2 C000007F9E0000000000.  T <= recall, DBGINDEX <= crlf;
--  nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 1111111, T <= 10011, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
466 => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "10011" & "11" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if DBG_READY then next else repeat;
-- L1053@01D3 C80000FF000000000000.trace:  if DBG_READY then next else repeat;
--  nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
467 => '1' & '1' & "00100" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- if DBG_READY then next else repeat;
-- L1054@01D4 C80000FF000000000000.  if DBG_READY then next else repeat;
--  nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 1111111, T <= 00000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
468 => '1' & '1' & "00100" & O"000" & O"001" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- DBGINDEX <= zero, back;
-- L1055@01D5 C002007F040000000000.  DBGINDEX <= zero, if true then return else continue;
--  nWR = 1, nRD = 1, if (00000) then 000000010 else 000000000, directByte = 1111111, T <= 00000, DBGINDEX <= 10, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, BasStack <= 00, ExpStack <= 000, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 0;
469 => '1' & '1' & "00000" & O"002" & O"000" & "1111111" & "00000" & "10" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0',

-- 42 location(s) in following ranges will be filled with default value
-- 01D6 .. 01FF

others => '1' & '1' & "00000" & O"000" & O"000" & "1111111" & "00000" & "00" & O"0" & '0' & '0' & "00" & "00" & O"0" & O"0" & "00" & O"0" & "00" & O"0" & "00" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & '0'
);

end microBasic_code;

