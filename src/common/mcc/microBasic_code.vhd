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
-- L0018.seq_cond: .if 5 values true, ILCODEBYTE_BIT7, CHAROUT_READY, IL_A_VALID, DBG_READY, MDR_EQU_DB, nBUSACK, INLEND_MAX, INLEND_MIN, CHARIN_PRINTABLE, CHARIN_EQU_DB, CHARIN_READY, BP_IN_INPLINE, SVP_IN_INPLINE, MDR_IS_NUM, MDR_IS_ALPHA, STACK_IS_FULL, STACK_IS_EMPTY, MDR_MATCHES_ILCODEBYTE, R_IS_ZERO, Y_ZERO, Y_SIGN, ALU_READY | LS_PARAMS_OK | LS_IN_RANGE, ALU_OVERFLOW | LS_PASSED_END, ALU_SIGN, AT_TAB, OFF_IS_ZERO, LEADING_ZERO, IS_RUNMODE, dummy29, dummy30, false default true;
--
alias mb_seq_cond: 	std_logic_vector(4 downto 0) is mb_uinstruction(76 downto 72);
constant seq_cond_true: 	integer := 0;
constant seq_cond_ILCODEBYTE_BIT7: 	integer := 1;
constant seq_cond_CHAROUT_READY: 	integer := 2;
constant seq_cond_IL_A_VALID: 	integer := 3;
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
constant seq_cond_STACK_IS_FULL: 	integer := 16;
constant seq_cond_STACK_IS_EMPTY: 	integer := 17;
constant seq_cond_MDR_MATCHES_ILCODEBYTE: 	integer := 18;
constant seq_cond_R_IS_ZERO: 	integer := 19;
constant seq_cond_Y_ZERO: 	integer := 20;
constant seq_cond_Y_SIGN: 	integer := 21;
constant seq_cond_ALU_READY: 	integer := 22;
constant seq_cond_LS_PARAMS_OK: 	integer := 22;
constant seq_cond_LS_IN_RANGE: 	integer := 22;
constant seq_cond_ALU_OVERFLOW: 	integer := 23;
constant seq_cond_LS_PASSED_END: 	integer := 23;
constant seq_cond_ALU_SIGN: 	integer := 24;
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
--  cond(seq_cond_STACK_IS_FULL) => STACK_IS_FULL,
--  cond(seq_cond_STACK_IS_EMPTY) => STACK_IS_EMPTY,
--  cond(seq_cond_MDR_MATCHES_ILCODEBYTE) => MDR_MATCHES_ILCODEBYTE,
--  cond(seq_cond_R_IS_ZERO) => R_IS_ZERO,
--  cond(seq_cond_Y_ZERO) => Y_ZERO,
--  cond(seq_cond_Y_SIGN) => Y_SIGN,
--  cond(seq_cond_ALU_READY | LS_PARAMS_OK | LS_IN_RANGE) => ALU_READY | LS_PARAMS_OK | LS_IN_RANGE,
--  cond(seq_cond_ALU_OVERFLOW | LS_PASSED_END) => ALU_OVERFLOW | LS_PASSED_END,
--  cond(seq_cond_ALU_SIGN) => ALU_SIGN,
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
-- L0059.T: .regfield 4 values same, IL_PC, XQhere, from_vars, ExpStack, from_Y, codeByte, MDRx2, inc, dec, BP, Prog_start, PrgEnd, from_S, from_R default same;
--
alias mb_T: 	std_logic_vector(3 downto 0) is mb_uinstruction(45 downto 42);
constant T_same: 	std_logic_vector(3 downto 0) := X"0";
constant T_IL_PC: 	std_logic_vector(3 downto 0) := X"1";
constant T_XQhere: 	std_logic_vector(3 downto 0) := X"2";
constant T_from_vars: 	std_logic_vector(3 downto 0) := X"3";
constant T_ExpStack: 	std_logic_vector(3 downto 0) := X"4";
constant T_from_Y: 	std_logic_vector(3 downto 0) := X"5";
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
--			when T_from_Y =>
--				T <= Y;
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
-- L0201.alu: .regfield 5 values nop, reset0, reset1, R_fromStack, S_fromStack, S_plus_R, S_minus_R, neg_R, S_mul_R, Yx16, bcd_start, bcd_next, div_start, div_shift, div_subset, div_end, Yx10_plus_MDR, Rx256_plus_MDR, S_fromT, R_fromT, S_fromLino, copy_setup, copy_next, ls_load, ls_check, -, -, -, -, -, -, - default nop;
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
constant alu_copy_setup: 	std_logic_vector(4 downto 0) := "10101";
constant alu_copy_next: 	std_logic_vector(4 downto 0) := "10110";
constant alu_ls_load: 	std_logic_vector(4 downto 0) := "10111";
constant alu_ls_check: 	std_logic_vector(4 downto 0) := "11000";
-- Value "11001" not allowed (name '-' is not assignable)
-- Value "11010" not allowed (name '-' is not assignable)
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
--			when alu_copy_setup =>
--				alu <= copy_setup;
--			when alu_copy_next =>
--				alu <= copy_next;
--			when alu_ls_load =>
--				alu <= ls_load;
--			when alu_ls_check =>
--				alu <= ls_check;
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
-- L0318@0000 E000003FC00000000000._reset:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
0 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- nop;
-- L0320@0001 E000003FC00000000000._reset1:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
1 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- nop;
-- L0322@0002 E000003FC00000000000._reset2:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
2 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- nop;
-- L0324@0003 E000003FC00000000000._reset3:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
3 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 4;
-- L0328@0004 E0EBF5C1010000000000.ColdStart:  trace(from_microcode), directByte = 4;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00000100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
4 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"04" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- write2Nulls(Prog_start);
-- L0329@0005 E0CDE6FFEC0000000000.  write2Nulls(Prog_start);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011011 else 110011011, directByte = 11111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
5 => '1' & '1' & '1' & "00000" & O"633" & O"633" & X"FF" & X"B" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- clear;
-- L0330@0006 E000003FC22200008080.WarmStart:  DBGINDEX <= zero, IL_PC <= zero, ExpStack <= clear, RetStack <= clear, alu <= reset0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 10, IL_PC <= 001, XQhere <= 0, IL_OP <= 0, RetStack <= 01, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 001, gotChar = 0, Vars <= 00, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
6 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "10" & O"1" & '0' & '0' & "01" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"1" & '0' & "00" & "00001" & '0' & '0' & '0' & '0' & '0' & "00",

-- BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= from_R;
-- L0331@0007 E000003FF80000940000.  BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= from_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 001, SvPt <= 01, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
7 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"E" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "01" & O"1" & "01" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- Lino <= T;
-- L0332@0008 E000003FC00000000040.  Lino <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
8 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & "00",

-- XQhere <= T;
-- L0333@0009 E000003FC01000000000.  XQhere <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 1, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
9 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '1' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= Prog_start;
-- L0334@000A E000003FEC0000000000.  T <= Prog_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
10 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"B" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- PrgEnd <= T;
-- L0335@000B E000003FC00000000004.  PrgEnd <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 1, dummy = 00;
11 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '1' & "00",

-- write2Nulls(BP);
-- L0336@000C E0CDE6FFE80000000000.  write2Nulls(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011011 else 110011011, directByte = 11111111, T <= 1010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
12 => '1' & '1' & '1' & "00000" & O"633" & O"633" & X"FF" & X"A" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- trace(crlf);
-- L0338@000D E0EBF5FFC30000000000.fetch:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 11111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
13 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"FF" & X"0" & "11" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 51;
-- L0339@000E E0EBF5CCC10000000000.  trace(from_microcode), directByte = 51;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00110011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
14 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"33" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 2;
-- L0340@000F E0EBF5C0810000000000.  trace(from_microcode), directByte = 2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00000010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
15 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"02" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_OP <= from_interpreter, IL_PC <= inc;
-- L0341@0010 E000003FC04800000000.  IL_OP <= from_interpreter, IL_PC <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 1, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
16 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"2" & '0' & '1' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= reset0, if IL_A_VALID then fork else INTERNAL_ERR;
-- L0342@0011 E301DBFFC00000000080.  alu <= reset0, if IL_A_VALID then fork else INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00011) then 000000011 else 101101111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
17 => '1' & '1' & '1' & "00011" & O"003" & O"557" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00001" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto INTERNAL_ERR;
-- L0345@0012 FF005BFFC00000000000.badop:  if false then next else INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101101111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
18 => '1' & '1' & '1' & "11111" & O"000" & O"557" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0350@0013 E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
19 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 15;
-- L0351@0014 E0EBF5C3C10000000000.  trace(from_microcode), directByte = 15;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00001111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
20 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"0F" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= startSwap;
-- L0352@0015 E000003FC00000010000.  ExpStack <= startSwap;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 010, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
21 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"2" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= endSwap;
-- L0353@0016 E000003FC00000018000.  ExpStack <= endSwap;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 011, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
22 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"3" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0354@0017 FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
23 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0357@0018 E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
24 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 15;
-- L0358@0019 E0EBF5C3C10000000000.  trace(from_microcode), directByte = 15;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00001111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
25 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"0F" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0359@001A FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
26 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0364@001B E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
27 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 12;
-- L0365@001C E0EBF5C3010000000000.  trace(from_microcode), directByte = 12;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00001100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
28 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"0C" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0366@001D FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
29 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0371@001E E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
30 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 28;
-- L0372@001F E0EBF5C7010000000000.  trace(from_microcode), directByte = 28;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00011100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
31 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"1C" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 3, T <= codeByte;
-- L0373@0020 E0EBF5C0D90000000000.lb_push:  trace(from_microcode), directByte = 3, T <= codeByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00000011, T <= 0110, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
32 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"03" & X"6" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= push_TByte;
-- L0374@0021 E000003FC00000028000.  ExpStack <= push_TByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 101, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
33 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"5" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
-- L0375@0022 F0B8837FC04000000000.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 101110001 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
34 => '1' & '1' & '1' & "10000" & O"561" & O"015" & X"FF" & X"0" & "00" & O"2" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0380@0023 E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
35 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 29;
-- L0381@0024 E0EBF5C7410000000000.  trace(from_microcode), directByte = 29;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00011101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
36 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"1D" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 3, T <= codeByte;
-- L0382@0025 E0EBF5C0D90000000000.  trace(from_microcode), directByte = 3, T <= codeByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00000011, T <= 0110, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
37 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"03" & X"6" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= push_TByte;
-- L0383@0026 E000003FC00000028000.  ExpStack <= push_TByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 101, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
38 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"5" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
-- L0384@0027 F0B8883FC04000000000.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 101110001 else 000100000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
39 => '1' & '1' & '1' & "10000" & O"561" & O"040" & X"FF" & X"0" & "00" & O"2" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0389@0028 E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
40 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 38;
-- L0390@0029 E0EBF5C9810000000000.  trace(from_microcode), directByte = 38;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00100110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
41 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"26" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0391@002A F1B8803FC00000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101110001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
42 => '1' & '1' & '1' & "10001" & O"561" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR;
-- L0392@002B F0B8803FD00000000000.  T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 101110001 else 000000000, directByte = 11111111, T <= 0100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
43 => '1' & '1' & '1' & "10000" & O"561" & O"000" & X"FF" & X"4" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= push_TWord, goto fetch;
-- L0393@002C FF00037FC00000020000.  ExpStack <= push_TWord, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
44 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0398@002D E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
45 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 34;
-- L0399@002E E0EBF5C8810000000000.  trace(from_microcode), directByte = 34;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00100010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
46 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"22" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0400@002F F1B8803FC00000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101110001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
47 => '1' & '1' & '1' & "10001" & O"561" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= pop2, goto fetch;
-- L0401@0030 FF00037FC00000030000.  ExpStack <= pop2, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
48 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0406@0031 E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
49 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 10;
-- L0407@0032 E0EBF5C2810000000000.  trace(from_microcode), directByte = 10;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00001010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
50 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"0A" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if BP_IN_INPLINE then next else ptr_exc;
-- L0408@0033 EC000EBFC00000000000.  if BP_IN_INPLINE then next else ptr_exc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01100) then 000000000 else 000111010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
51 => '1' & '1' & '1' & "01100" & O"000" & O"072" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- SvPt <= BP;
-- L0409@0034 E000003FC00000080000.save_bp:  SvPt <= BP;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 10, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
52 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "10" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceBP();
-- L0410@0035 E0E5F2FFC00000000000.bp_done:  traceBP();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111001011 else 111001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
53 => '1' & '1' & '1' & "00000" & O"713" & O"713" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0411@0036 FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
54 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0416@0037 E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
55 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 11;
-- L0417@0038 E0EBF5C2C10000000000.  trace(from_microcode), directByte = 11;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00001011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
56 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"0B" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if SVP_IN_INPLINE then save_bp;
-- L0418@0039 ED1A003FC00000000000.  if SVP_IN_INPLINE then save_bp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01101) then 000110100 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
57 => '1' & '1' & '1' & "01101" & O"064" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- SvPt <= BP, BP <= SvPt, goto bp_done;
-- L0419@003A FF000D7FC00000280000.ptr_exc:  SvPt <= BP, BP <= SvPt, if false then next else bp_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000110101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 010, SvPt <= 10, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
58 => '1' & '1' & '1' & "11111" & O"000" & O"065" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"2" & "10" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0424@003B E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
59 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 36;
-- L0425@003C E0EBF5C9010000000000.  trace(from_microcode), directByte = 36;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00100100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
60 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"24" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0426@003D F1B8803FC00000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101110001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
61 => '1' & '1' & '1' & "10001" & O"561" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- Vars <= indexFromExpStack;
-- L0427@003E E000003FC00000001000.  Vars <= indexFromExpStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 01, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
62 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "01" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_vars, ExpStack <= pop1;
-- L0428@003F E000003FCC0000038000.  T <= from_vars, ExpStack <= pop1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 111, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
63 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"3" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"7" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= push_TWord, goto fetch;
-- L0429@0040 FF00037FC00000020000.  ExpStack <= push_TWord, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
64 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0434@0041 E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
65 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 37;
-- L0435@0042 E0EBF5C9410000000000.  trace(from_microcode), directByte = 37;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00100101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
66 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"25" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0436@0043 F1B8803FC00000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101110001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
67 => '1' & '1' & '1' & "10001" & O"561" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= ExpStack, ExpStack <= pop2;
-- L0437@0044 E000003FD00000030000.  T <= ExpStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
68 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"4" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0438@0045 F1B8803FC00000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101110001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
69 => '1' & '1' & '1' & "10001" & O"561" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- Vars <= indexFromExpStack, ExpStack <= pop1;
-- L0439@0046 E000003FC00000039000.  Vars <= indexFromExpStack, ExpStack <= pop1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 111, gotChar = 0, Vars <= 01, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
70 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"7" & '0' & "01" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- Vars <= T, goto fetch;
-- L0440@0047 FF00037FC00000002000.  Vars <= T, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 10, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
71 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "10" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0445@0048 E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
72 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 55;
-- L0446@0049 E0EBF5CDC10000000000.  trace(from_microcode), directByte = 55;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00110111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
73 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"37" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= XQhere;
-- L0447@004A E000003FC80000000000.  T <= XQhere;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
74 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"2" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= T, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0448@004B F1B8803FC06000000000.  IL_PC <= T, if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101110001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 011, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
75 => '1' & '1' & '1' & "10001" & O"561" & O"000" & X"FF" & X"0" & "00" & O"3" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0449@004C E000003FC00000030180.  alu <= R_fromStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
76 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceALU();
-- L0450@004D E0E8F47FC00000000000.  traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010001 else 111010001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
77 => '1' & '1' & '1' & "00000" & O"721" & O"721" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if R_IS_ZERO then next else go_find;
-- L0451@004E F300143FC00000000000.  if R_IS_ZERO then next else go_find;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 000000000 else 001010000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
78 => '1' & '1' & '1' & "10011" & O"000" & O"120" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if IS_RUNMODE then stop_run else fetch;
-- L0452@004F FC8B037FC00000000000.  if IS_RUNMODE then stop_run else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11100) then 100010110 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
79 => '1' & '1' & '1' & "11100" & O"426" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_R;
-- L0453@0050 E000003FF80000000000.go_find:  T <= from_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
80 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"E" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- Lino <= T, T <= Prog_start;
-- L0454@0051 E000003FEC0000000040.  Lino <= T, T <= Prog_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
81 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"B" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & "00",

-- alu <= reset1, ReadCore(T);
-- L0455@0052 E0E170BFC00030000100.go_search:  alu <= reset1, ReadCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000010 else 111000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
82 => '1' & '1' & '1' & "00000" & O"702" & O"702" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00010" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= Rx256_plus_MDR, T <= inc;
-- L0456@0053 E000003FE00000000880.  alu <= Rx256_plus_MDR, T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
83 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & "00",

-- ReadCore(T);
-- L0457@0054 E0E170BFC00030000000.  ReadCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000010 else 111000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
84 => '1' & '1' & '1' & "00000" & O"702" & O"702" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= Rx256_plus_MDR, T <= inc;
-- L0458@0055 E000003FE00000000880.  alu <= Rx256_plus_MDR, T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
85 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_fromLino, if R_IS_ZERO then stop_run;
-- L0459@0056 F38B003FC00000000A00.  alu <= S_fromLino, if R_IS_ZERO then stop_run;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 100010110 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
86 => '1' & '1' & '1' & "10011" & O"426" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_minus_R;
-- L0460@0057 E000003FC00000000300.  alu <= S_minus_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
87 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & "00",

-- if Y_ZERO then go_found;
-- L0461@0058 F42D803FC00000000000.  if Y_ZERO then go_found;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 001011011 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
88 => '1' & '1' & '1' & "10100" & O"133" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- findNextCR(same);
-- L0462@0059 E0C4623FC00000000000.  findNextCR(same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110001000 else 110001000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
89 => '1' & '1' & '1' & "00000" & O"610" & O"610" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= inc, goto go_search;
-- L0463@005A FF0014BFE00000000000.  T <= inc, if false then next else go_search;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001010010, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
90 => '1' & '1' & '1' & "11111" & O"000" & O"122" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- BP <= T, goto fetch;
-- L0464@005B FF00037FC00000600000.go_found:  BP <= T, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
91 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"6" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0469@005C E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
92 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 25;
-- L0470@005D E0EBF5C6410000000000.  trace(from_microcode), directByte = 25;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00011001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
93 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"19" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0471@005E F1B8803FC00000000180.  alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101110001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
94 => '1' & '1' & '1' & "10001" & O"561" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= pop2;
-- L0472@005F E000003FC00000030000.  ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
95 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= neg_R, if ALU_READY then alu_done else repeat;
-- L0473@0060 F632807FC00000000380.  alu <= neg_R, if ALU_READY then alu_done else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 001100101 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
96 => '1' & '1' & '1' & "10110" & O"145" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00111" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0478@0061 E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
97 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 22;
-- L0479@0062 E0EBF5C5810000000000.  trace(from_microcode), directByte = 22;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00010110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
98 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"16" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- pullRS();
-- L0480@0063 E0CF67BFC00000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011110 else 110011110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
99 => '1' & '1' & '1' & "00000" & O"636" & O"636" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_plus_R, if ALU_READY then next else repeat;
-- L0481@0064 F600007FC00000000280.  alu <= S_plus_R, if ALU_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
100 => '1' & '1' & '1' & "10110" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00101" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceALU();
-- L0482@0065 E0E8F47FC00000000000.alu_done:  traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010001 else 111010001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
101 => '1' & '1' & '1' & "00000" & O"721" & O"721" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_Y, if ALU_OVERFLOW then OVERFLOW_ERR;
-- L0483@0066 F7B5803FD40000000000.  T <= from_Y, if ALU_OVERFLOW then OVERFLOW_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10111) then 101101011 else 000000000, directByte = 11111111, T <= 0101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
102 => '1' & '1' & '1' & "10111" & O"553" & O"000" & X"FF" & X"5" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= push_TWord, goto fetch;
-- L0484@0067 FF00037FC00000020000.  ExpStack <= push_TWord, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
103 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0489@0068 E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
104 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 23;
-- L0490@0069 E0EBF5C5C10000000000.  trace(from_microcode), directByte = 23;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00010111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
105 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"17" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- pullRS();
-- L0491@006A E0CF67BFC00000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011110 else 110011110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
106 => '1' & '1' & '1' & "00000" & O"636" & O"636" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_minus_R, if ALU_READY then alu_done else repeat;
-- L0492@006B F632807FC00000000300.  alu <= S_minus_R, if ALU_READY then alu_done else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 001100101 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
107 => '1' & '1' & '1' & "10110" & O"145" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0497@006C E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
108 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 24;
-- L0498@006D E0EBF5C6010000000000.  trace(from_microcode), directByte = 24;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00011000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
109 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"18" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- pullRS();
-- L0499@006E E0CF67BFC00000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011110 else 110011110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
110 => '1' & '1' & '1' & "00000" & O"636" & O"636" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_mul_R, if ALU_READY then alu_done else repeat;
-- L0500@006F F632807FC00000000400.  alu <= S_mul_R, if ALU_READY then alu_done else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 001100101 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
111 => '1' & '1' & '1' & "10110" & O"145" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0505@0070 E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
112 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 35;
-- L0506@0071 E0EBF5C8C10000000000.  trace(from_microcode), directByte = 35;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00100011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
113 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"23" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- pullRS();
-- L0507@0072 E0CF67BFC00000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011110 else 110011110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
114 => '1' & '1' & '1' & "00000" & O"636" & O"636" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
-- L0508@0073 F3B4803FC00000000600.  alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 101101001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
115 => '1' & '1' & '1' & "10011" & O"551" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01100" & '0' & '0' & '0' & '0' & '0' & "00",

-- nop;
-- L0509@0074 E000003FC00000000000.div_loop:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
116 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= div_shift;
-- L0513@0075 E000003FC00000000680.  alu <= div_shift;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
117 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01101" & '0' & '0' & '0' & '0' & '0' & "00",

-- if ALU_READY then div_done;
-- L0514@0076 F63C003FC00000000000.  if ALU_READY then div_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 001111000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
118 => '1' & '1' & '1' & "10110" & O"170" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= div_subset, goto div_loop;
-- L0518@0077 FF001D3FC00000000700.  alu <= div_subset, if false then next else div_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001110100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
119 => '1' & '1' & '1' & "11111" & O"000" & O"164" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01110" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= div_end, goto alu_done;
-- L0519@0078 FF00197FC00000000780.div_done:  alu <= div_end, if false then next else alu_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001100101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
120 => '1' & '1' & '1' & "11111" & O"000" & O"145" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01111" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0524@0079 E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
121 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 39;
-- L0525@007A E0EBF5C9C10000000000.  trace(from_microcode), directByte = 39;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00100111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
122 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"27" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if IS_RUNMODE then nx_run;
-- L0526@007B FC3E803FC00000000000.  if IS_RUNMODE then nx_run;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11100) then 001111101 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
123 => '1' & '1' & '1' & "11100" & O"175" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= zero, goto fetch;
-- L0527@007C FF00037FC02000000000.  IL_PC <= zero, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 001, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
124 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"1" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- findNextCR(BP);
-- L0528@007D E0C4623FE80000000000.nx_run:  findNextCR(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110001000 else 110001000, directByte = 11111111, T <= 1010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
125 => '1' & '1' & '1' & "00000" & O"610" & O"610" & X"FF" & X"A" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= inc;
-- L0529@007E E000003FE00000000000.  T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
126 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- BP <= T;
-- L0530@007F E000003FC00000600000.  BP <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
127 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"6" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- readCore16(BP);
-- L0531@0080 E0C6633FE80000000000.  readCore16(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110001100 else 110001100, directByte = 11111111, T <= 1010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
128 => '1' & '1' & '1' & "00000" & O"614" & O"614" & X"FF" & X"A" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if R_IS_ZERO then nx_err;
-- L0532@0081 F344003FC00000000000.  if R_IS_ZERO then nx_err;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 010001000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
129 => '1' & '1' & '1' & "10011" & O"210" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- BP <= T, T <= from_R;
-- L0533@0082 E000003FF80000600000.  BP <= T, T <= from_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
130 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"E" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"6" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- Lino <= T;
-- L0534@0083 E000003FC00000000040.  Lino <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
131 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & "00",

-- T <= XQhere;
-- L0535@0084 E000003FC80000000000.  T <= XQhere;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
132 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"2" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= T;
-- L0536@0085 E000003FC06000000000.  IL_PC <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 011, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
133 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"3" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if CHARIN_READY then next else fetch;
-- L0537@0086 EB00037FC00000000000.  if CHARIN_READY then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01011) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
134 => '1' & '1' & '1' & "01011" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- gotChar = 1, directByte = CTRL_C, if CHARIN_EQU_DB then nx_err else fetch;
-- L0538@0087 EA440340C00000004000.  gotChar = 1, directByte = 0x03, if CHARIN_EQU_DB then nx_err else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 010001000 else 000001101, directByte = 00000011, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
135 => '1' & '1' & '1' & "01010" & O"210" & O"015" & X"03" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = BEEP, outChar(from_microcode);
-- L0539@0088 E0DEEF41C00080000000.nx_err:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 00000111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
136 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"07" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto stop_run;
-- L0540@0089 FF0045BFC00000000000.  if false then next else stop_run;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100010110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
137 => '1' & '1' & '1' & "11111" & O"000" & O"426" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0545@008A E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
138 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 41;
-- L0546@008B E0EBF5CA410000000000.  trace(from_microcode), directByte = 41;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00101001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
139 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"29" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= reset1, if IS_RUNMODE then badop;
-- L0547@008C FC09003FC00000000100.  alu <= reset1, if IS_RUNMODE then badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11100) then 000010010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
140 => '1' & '1' & '1' & "11100" & O"022" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00010" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_R, if STACK_IS_EMPTY then ls_parchk;
-- L0548@008D F148003FF80000000000.ls_parload:  T <= from_R, if STACK_IS_EMPTY then ls_parchk;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 010010000 else 000000000, directByte = 11111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
141 => '1' & '1' & '1' & "10001" & O"220" & O"000" & X"FF" & X"E" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_fromT;
-- L0549@008E E000003FC00000000900.  alu <= S_fromT;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
142 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10010" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= R_fromStack, ExpStack <= pop2, goto ls_parload;
-- L0550@008F FF00237FC00000030180.  alu <= R_fromStack, ExpStack <= pop2, if false then next else ls_parload;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
143 => '1' & '1' & '1' & "11111" & O"000" & O"215" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceALU();
-- L0551@0090 E0E8F47FC00000000000.ls_parchk:  traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010001 else 111010001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
144 => '1' & '1' & '1' & "00000" & O"721" & O"721" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= ls_load;
-- L0552@0091 E000003FC00000000B80.  alu <= ls_load;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
145 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10111" & '0' & '0' & '0' & '0' & '0' & "00",

-- if LS_PARAMS_OK then next else SYNTAX_ERR;
-- L0553@0092 F6005B7FC00000000000.  if LS_PARAMS_OK then next else SYNTAX_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 000000000 else 101101101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
146 => '1' & '1' & '1' & "10110" & O"000" & O"555" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= Prog_start;
-- L0554@0093 E000003FEC0000000000.ls_start:  T <= Prog_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
147 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"B" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceALU();
-- L0555@0094 E0E8F47FC00000000000.  traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010001 else 111010001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
148 => '1' & '1' & '1' & "00000" & O"721" & O"721" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if CHARIN_READY then next else ls_nobreak;
-- L0556@0095 EB0026BFC00000000000.ls_lineloop:  if CHARIN_READY then next else ls_nobreak;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01011) then 000000000 else 010011010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
149 => '1' & '1' & '1' & "01011" & O"000" & O"232" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- gotChar = 1, directByte = CTRL_C, if CHARIN_EQU_DB then crlf_fetch;
-- L0557@0096 EA5F0000C00000004000.  gotChar = 1, directByte = 0x03, if CHARIN_EQU_DB then crlf_fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 010111110 else 000000000, directByte = 00000011, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
150 => '1' & '1' & '1' & "01010" & O"276" & O"000" & X"03" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = ' ', if CHARIN_EQU_DB then next else ls_nobreak;
-- L0558@0097 EA002688000000000000.  directByte = ' ', if CHARIN_EQU_DB then next else ls_nobreak;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 000000000 else 010011010, directByte = 00100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
151 => '1' & '1' & '1' & "01010" & O"000" & O"232" & X"20" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if CHARIN_READY then next else repeat;
-- L0559@0098 EB00007FC00000000000.ls_pause:  if CHARIN_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01011) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
152 => '1' & '1' & '1' & "01011" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
-- L0560@0099 EA002608000000004000.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 000000000 else 010011000, directByte = 00100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
153 => '1' & '1' & '1' & "01010" & O"000" & O"230" & X"20" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- gotChar = 1, readCore16(same);
-- L0561@009A E0C6633FC00000004000.ls_nobreak:  gotChar = 1, readCore16(same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110001100 else 110001100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
154 => '1' & '1' & '1' & "00000" & O"614" & O"614" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= dec, alu <= ls_check, if R_IS_ZERO then crlf_fetch;
-- L0562@009B F35F003FE40000000C00.  T <= dec, alu <= ls_check, if R_IS_ZERO then crlf_fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 010111110 else 000000000, directByte = 11111111, T <= 1001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 11000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
155 => '1' & '1' & '1' & "10011" & O"276" & O"000" & X"FF" & X"9" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "11000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceALU();
-- L0563@009C E0E8F47FC00000000000.  traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010001 else 111010001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
156 => '1' & '1' & '1' & "00000" & O"721" & O"721" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if LS_IN_RANGE then next else ls_skipline;
-- L0564@009D F60029BFC00000000000.  if LS_IN_RANGE then next else ls_skipline;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 000000000 else 010100110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
157 => '1' & '1' & '1' & "10110" & O"000" & O"246" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- printDecR();
-- L0565@009E E0D1E8FFC00000000000.  printDecR();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110100011 else 110100011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
158 => '1' & '1' & '1' & "00000" & O"643" & O"643" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = ' ', outChar(from_microcode);
-- L0566@009F E0DEEF48000080000000.  directByte = ' ', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 00100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
159 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"20" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= inc;
-- L0567@00A0 E000003FE00000000000.ls_nextchar:  T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
160 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ReadCore(T);
-- L0568@00A1 E0E170BFC00030000000.  ReadCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000010 else 111000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
161 => '1' & '1' & '1' & "00000" & O"702" & O"702" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outChar(from_MDR);
-- L0569@00A2 E0DEEF7FC00100000000.  outChar(from_MDR);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 100, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
162 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"4" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = CR, if MDR_EQU_DB then next else ls_nextchar;
-- L0570@00A3 E5002803400000000000.  directByte = 0x0D, if MDR_EQU_DB then next else ls_nextchar;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 000000000 else 010100000, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
163 => '1' & '1' & '1' & "00101" & O"000" & O"240" & X"0D" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = LF, outChar(from_microcode);
-- L0571@00A4 E0DEEF42800080000000.  directByte = 0x0A, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 00001010, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
164 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"0A" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= inc, goto ls_lineloop;
-- L0572@00A5 FF00257FE00000000000.ls_nextline:  T <= inc, if false then next else ls_lineloop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010010101, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
165 => '1' & '1' & '1' & "11111" & O"000" & O"225" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= inc;
-- L0573@00A6 E000003FE00000000000.ls_skipline:  T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
166 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ReadCore(T);
-- L0574@00A7 E0E170BFC00030000000.  ReadCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000010 else 111000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
167 => '1' & '1' & '1' & "00000" & O"702" & O"702" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = CR, if MDR_EQU_DB then ls_nextline else ls_skipline;
-- L0575@00A8 E552A983400000000000.  directByte = 0x0D, if MDR_EQU_DB then ls_nextline else ls_skipline;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 010100101 else 010100110, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
168 => '1' & '1' & '1' & "00101" & O"245" & O"246" & X"0D" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0580@00A9 E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
169 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 26;
-- L0581@00AA E0EBF5C6810000000000.  trace(from_microcode), directByte = 26;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00011010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
170 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"1A" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0582@00AB F1B8803FC00000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101110001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
171 => '1' & '1' & '1' & "10001" & O"561" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- printDec();
-- L0583@00AC E0D168BFC00000000000.  printDec();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110100010 else 110100010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
172 => '1' & '1' & '1' & "00000" & O"642" & O"642" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0584@00AD FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
173 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0589@00AE E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
174 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 18;
-- L0590@00AF E0EBF5C4810000000000.  trace(from_microcode), directByte = 18;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00010010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
175 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"12" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- BP <= inc, ReadCore(BP);
-- L0591@00B0 E0E170BFC00020300000.pq_loop:  BP <= inc, ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000010 else 111000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
176 => '1' & '1' & '1' & "00000" & O"702" & O"702" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "10" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = '"', if MDR_EQU_DB then pq_done;
-- L0592@00B1 E55A8008800000000000.  directByte = '"', if MDR_EQU_DB then pq_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 010110101 else 000000000, directByte = 00100010, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
177 => '1' & '1' & '1' & "00101" & O"265" & O"000" & X"22" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outChar(from_MDR);
-- L0593@00B2 E0DEEF7FC00100000000.  outChar(from_MDR);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 100, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
178 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"4" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 3;
-- L0594@00B3 E0EBF5C0C10000000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00000011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
179 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"03" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = CR, if MDR_EQU_DB then INTERNAL_ERR else pq_loop;
-- L0595@00B4 E5B7AC03400000000000.  directByte = 0x0D, if MDR_EQU_DB then INTERNAL_ERR else pq_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 101101111 else 010110000, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
180 => '1' & '1' & '1' & "00101" & O"557" & O"260" & X"0D" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceBP();
-- L0596@00B5 E0E5F2FFC00000000000.pq_done:  traceBP();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111001011 else 111001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
181 => '1' & '1' & '1' & "00000" & O"713" & O"713" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0597@00B6 FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
182 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0602@00B7 E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
183 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 27;
-- L0603@00B8 E0EBF5C6C10000000000.  trace(from_microcode), directByte = 27;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00011011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
184 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"1B" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if AT_TAB then fetch;
-- L0604@00B9 F906803FC00000000000.pt_loop:  if AT_TAB then fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11001) then 000001101 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
185 => '1' & '1' & '1' & "11001" & O"015" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = ' ', outChar(from_microcode);
-- L0605@00BA E0DEEF48000080000000.  directByte = ' ', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 00100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
186 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"20" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto pt_loop;
-- L0606@00BB FF002E7FC00000000000.  if false then next else pt_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010111001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
187 => '1' & '1' & '1' & "11111" & O"000" & O"271" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0611@00BC E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
188 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 6;
-- L0612@00BD E0EBF5C1810000000000.  trace(from_microcode), directByte = 6;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00000110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
189 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"06" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outCRLF();
-- L0613@00BE E0DDEEFFC00000000000.crlf_fetch:  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111011 else 110111011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
190 => '1' & '1' & '1' & "00000" & O"673" & O"673" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0614@00BF FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
191 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0619@00C0 E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
192 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 5;
-- L0620@00C1 E0EBF5C1410000000000.  trace(from_microcode), directByte = 5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00000101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
193 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"05" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outChar(from_interpreter);
-- L0621@00C2 E0DEEF7FC00040000000.pc_loop:  outChar(from_interpreter);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 001, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
194 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"1" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 3;
-- L0622@00C3 E0EBF5C0C10000000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00000011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
195 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"03" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if ILCODEBYTE_BIT7 then pc_exit;
-- L0623@00C4 E163003FC00000000000.  if ILCODEBYTE_BIT7 then pc_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00001) then 011000110 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
196 => '1' & '1' & '1' & "00001" & O"306" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= inc, goto pc_loop;
-- L0624@00C5 FF0030BFC04000000000.  IL_PC <= inc, if false then next else pc_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
197 => '1' & '1' & '1' & "11111" & O"000" & O"302" & X"FF" & X"0" & "00" & O"2" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= inc, goto fetch;
-- L0625@00C6 FF00037FC04000000000.pc_exit:  IL_PC <= inc, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
198 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"2" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0630@00C7 E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
199 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 8;
-- L0631@00C8 E0EBF5C2010000000000.  trace(from_microcode), directByte = 8;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00001000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
200 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"08" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- InlEnd <= InLine_start;
-- L0632@00C9 E000003FC00000800000.gl:  InlEnd <= InLine_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
201 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "01" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if CHARIN_READY then next else repeat;
-- L0633@00CA EB00007FC00000000000.gl_loop:  if CHARIN_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01011) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
202 => '1' & '1' & '1' & "01011" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if CHARIN_PRINTABLE then gl_print;
-- L0634@00CB E968803FC00000000000.  if CHARIN_PRINTABLE then gl_print;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01001) then 011010001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
203 => '1' & '1' & '1' & "01001" & O"321" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = CR, if CHARIN_EQU_DB then gl_cr;
-- L0635@00CC EA6E8003400000000000.  directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 011011101 else 000000000, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
204 => '1' & '1' & '1' & "01010" & O"335" & O"000" & X"0D" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = BACKSPACE, if CHARIN_EQU_DB then gl_bs;
-- L0636@00CD EA6D0002000000000000.  directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 011011010 else 000000000, directByte = 00001000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
205 => '1' & '1' & '1' & "01010" & O"332" & O"000" & X"08" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = ESC, if CHARIN_EQU_DB then gl_esc;
-- L0637@00CE EA6B8006C00000000000.  directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 011010111 else 000000000, directByte = 00011011, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
206 => '1' & '1' & '1' & "01010" & O"327" & O"000" & X"1B" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = BEEP, outChar(from_microcode);
-- L0640@00CF E0DEEF41C00080000000.gl_ignore:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 00000111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
207 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"07" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- gotChar = 1, goto gl_loop;
-- L0641@00D0 FF0032BFC00000004000.  gotChar = 1, if false then next else gl_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011001010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
208 => '1' & '1' & '1' & "11111" & O"000" & O"312" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if INLEND_MAX then gl_ignore;
-- L0643@00D1 E767803FC00000000000.gl_print:  if INLEND_MAX then gl_ignore;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00111) then 011001111 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
209 => '1' & '1' & '1' & "00111" & O"317" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outChar(from_charin);
-- L0644@00D2 E0DEEF7FC000C0000000.  outChar(from_charin);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 011, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
210 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"3" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- WriteCore(InlEnd, CHARIN);
-- L0645@00D3 E0E0703FC00016000000.  WriteCore(InlEnd, CHARIN);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000000 else 111000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
211 => '1' & '1' & '1' & "00000" & O"700" & O"700" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "01" & O"3" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- InlEnd <= inc;
-- L0646@00D4 E000003FC00001000000.  InlEnd <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
212 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "10" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- WriteCore(InlEnd, zero);
-- L0647@00D5 E0E0703FC00014000000.gl_write0:  WriteCore(InlEnd, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000000 else 111000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
213 => '1' & '1' & '1' & "00000" & O"700" & O"700" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "01" & O"2" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- gotChar = 1, goto gl_loop;
-- L0648@00D6 FF0032BFC00000004000.  gotChar = 1, if false then next else gl_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011001010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
214 => '1' & '1' & '1' & "11111" & O"000" & O"312" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = BEEP, outChar(from_microcode);
-- L0650@00D7 E0DEEF41C00080000000.gl_esc:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 00000111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
215 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"07" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outCRLF();
-- L0651@00D8 E0DDEEFFC00000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111011 else 110111011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
216 => '1' & '1' & '1' & "00000" & O"673" & O"673" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- gotChar = 1, goto gl;
-- L0652@00D9 FF00327FC00000004000.  gotChar = 1, if false then next else gl;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011001001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
217 => '1' & '1' & '1' & "11111" & O"000" & O"311" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if INLEND_MIN then gl_ignore;
-- L0654@00DA E867803FC00000000000.gl_bs:  if INLEND_MIN then gl_ignore;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01000) then 011001111 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
218 => '1' & '1' & '1' & "01000" & O"317" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = BACKSPACE, outChar(from_microcode);
-- L0655@00DB E0DEEF42000080000000.  directByte = 0x08, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 00001000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
219 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"08" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- InlEnd <= dec, goto gl_write0;
-- L0656@00DC FF00357FC00001800000.  InlEnd <= dec, if false then next else gl_write0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011010101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 11, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
220 => '1' & '1' & '1' & "11111" & O"000" & O"325" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "11" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- WriteCore(InlEnd, CHARIN);
-- L0658@00DD E0E0703FC00016000000.gl_cr:  WriteCore(InlEnd, CHARIN);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000000 else 111000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
221 => '1' & '1' & '1' & "00000" & O"700" & O"700" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "01" & O"3" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- InlEnd <= inc;
-- L0659@00DE E000003FC00001000000.  InlEnd <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
222 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "10" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- WriteCore(InlEnd, zero);
-- L0660@00DF E0E0703FC00014000000.  WriteCore(InlEnd, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000000 else 111000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
223 => '1' & '1' & '1' & "00000" & O"700" & O"700" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "01" & O"2" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- dump_input();
-- L0661@00E0 E0E2713FC00000000000.  dump_input();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000100 else 111000100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
224 => '1' & '1' & '1' & "00000" & O"704" & O"704" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outCRLF();
-- L0662@00E1 E0DDEEFFC00000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111011 else 110111011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
225 => '1' & '1' & '1' & "00000" & O"673" & O"673" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- gotChar = 1, BP <= Inline_start, goto fetch;
-- L0663@00E2 FF00037FC00000104000.  gotChar = 1, BP <= Inline_start, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 001, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
226 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"1" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0668@00E3 E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
227 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 40;
-- L0669@00E4 E0EBF5CA010000000000.  trace(from_microcode), directByte = 40;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00101000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
228 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"28" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= ExpStack;
-- L0670@00E5 E000003FD00000000000.  T <= ExpStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
229 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"4" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- Lino <= T, ExpStack <= pop2, alu <= S_fromT;
-- L0671@00E6 E000003FC00000030940.  Lino <= T, ExpStack <= pop2, alu <= S_fromT;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 10010, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
230 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "10010" & '1' & '0' & '0' & '0' & '0' & "00",

-- traceLino;
-- L0672@00E7 E0EBF5CD010000000000.  trace(from_microcode), directByte = 52;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00110100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
231 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"34" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_minus_R;
-- L0673@00E8 E000003FC00000000300.  alu <= S_minus_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
232 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & "00",

-- if Y_SIGN then SYNTAX_ERR;
-- L0674@00E9 F5B6803FC00000000000.  if Y_SIGN then SYNTAX_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 101101101 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
233 => '1' & '1' & '1' & "10101" & O"555" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if Y_ZERO then SYNTAX_ERR;
-- L0675@00EA F4B6803FC00000000000.  if Y_ZERO then SYNTAX_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 101101101 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
234 => '1' & '1' & '1' & "10100" & O"555" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- skipSpaces();
-- L0676@00EB E0DBEDFFC00000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110111 else 110110111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
235 => '1' & '1' & '1' & "00000" & O"667" & O"667" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = CR, if MDR_EQU_DB then delLine;
-- L0677@00EC E5828003400000000000.  directByte = 0x0D, if MDR_EQU_DB then delLine;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 100000101 else 000000000, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
236 => '1' & '1' & '1' & "00101" & O"405" & O"000" & X"0D" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- findNextCR(BP);
-- L0680@00ED E0C4623FE80000000000.insLine:  findNextCR(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110001000 else 110001000, directByte = 11111111, T <= 1010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
237 => '1' & '1' & '1' & "00000" & O"610" & O"610" & X"FF" & X"A" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- BE <= T;
-- L0681@00EE E000003FC00000000020.  BE <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 1, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
238 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '1' & '0' & '0' & '0' & "00",

-- findPrgEnd(Prog_start);
-- L0682@00EF E08DC6FFEC0000000000.insLine1:  findPrgEnd(Prog_start);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100011011 else 100011011, directByte = 11111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
239 => '1' & '1' & '1' & "00000" & O"433" & O"433" & X"FF" & X"B" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- findBasLine(Prog_start);
-- L0683@00F0 E0C8643FEC0000000000.  findBasLine(Prog_start);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010000 else 110010000, directByte = 11111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
240 => '1' & '1' & '1' & "00000" & O"620" & O"620" & X"FF" & X"B" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if R_IS_ZERO then appendLine;
-- L0684@00F1 F37C803FC00000000000.  if R_IS_ZERO then appendLine;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 011111001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
241 => '1' & '1' & '1' & "10011" & O"371" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_minus_R;
-- L0685@00F2 E000003FC00000000300.  alu <= S_minus_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
242 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & "00",

-- if Y_ZERO then replaceLine;
-- L0686@00F3 F47B803FC00000000000.  if Y_ZERO then replaceLine;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 011110111 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
243 => '1' & '1' & '1' & "10100" & O"367" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if Y_SIGN then next else INTERNAL_ERR;
-- L0687@00F4 F5005BFFC00000000000.  if Y_SIGN then next else INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 000000000 else 101101111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
244 => '1' & '1' & '1' & "10101" & O"000" & O"557" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- insLnBefore();
-- L0689@00F5 E094CA7FC00000000000.  insLnBefore();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100101001 else 100101001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
245 => '1' & '1' & '1' & "00000" & O"451" & O"451" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0690@00F6 FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
246 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- delBasLine();
-- L0693@00F7 E090C87FC00000000000.replaceLine:  delBasLine();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
247 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto insLine1;
-- L0694@00F8 FF003BFFC00000000000.  if false then next else insLine1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011101111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
248 => '1' & '1' & '1' & "11111" & O"000" & O"357" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= PrgEnd;
-- L0696@00F9 E000003FF00000000000.appendLine:  T <= PrgEnd;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
249 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"C" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_fromLino, T <= dec;
-- L0697@00FA E000003FE40000000A00.  alu <= S_fromLino, T <= dec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
250 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"9" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & "00",

-- WriteCore(T, from_SHi);
-- L0698@00FB E0E0703FC0003A000000.  WriteCore(T, from_SHi);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000000 else 111000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 101, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
251 => '1' & '1' & '1' & "00000" & O"700" & O"700" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"5" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= inc;
-- L0699@00FC E000003FE00000000000.  T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
252 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- WriteCore(T, from_SLo);
-- L0700@00FD E0E0703FC0003C000000.  WriteCore(T, from_SLo);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000000 else 111000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 110, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
253 => '1' & '1' & '1' & "00000" & O"700" & O"700" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"6" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= inc;
-- L0701@00FE E000003FE00000000000.  T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
254 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ReadCore(BP);
-- L0702@00FF E0E170BFC00020000000.app_loop:  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000010 else 111000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
255 => '1' & '1' & '1' & "00000" & O"702" & O"702" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- WriteCore(T, same);
-- L0703@0100 E0E0703FC00030000000.  WriteCore(T, same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000000 else 111000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
256 => '1' & '1' & '1' & "00000" & O"700" & O"700" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- BP <= inc, T <= inc;
-- L0704@0101 E000003FE00000300000.  BP <= inc, T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
257 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = CR, if MDR_EQU_DB then next else app_loop;
-- L0705@0102 E5003FC3400000000000.  directByte = 0x0D, if MDR_EQU_DB then next else app_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 000000000 else 011111111, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
258 => '1' & '1' & '1' & "00101" & O"000" & O"377" & X"0D" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- write2Nulls(same);
-- L0706@0103 E0CDE6FFC00000000000.  write2Nulls(same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110011011 else 110011011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
259 => '1' & '1' & '1' & "00000" & O"633" & O"633" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0707@0104 FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
260 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- findPrgEnd(Prog_start);
-- L0710@0105 E08DC6FFEC0000000000.delLine:  findPrgEnd(Prog_start);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100011011 else 100011011, directByte = 11111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
261 => '1' & '1' & '1' & "00000" & O"433" & O"433" & X"FF" & X"B" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- findBasLine(Prog_start);
-- L0711@0106 E0C8643FEC0000000000.  findBasLine(Prog_start);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010000 else 110010000, directByte = 11111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
262 => '1' & '1' & '1' & "00000" & O"620" & O"620" & X"FF" & X"B" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if Y_ZERO then next else WarmStart;
-- L0712@0107 F40001BFC00000000000.  if Y_ZERO then next else WarmStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 000000000 else 000000110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
263 => '1' & '1' & '1' & "10100" & O"000" & O"006" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- delBasLine();
-- L0713@0108 E090C87FC00000000000.  delBasLine();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 100100001 else 100100001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
264 => '1' & '1' & '1' & "00000" & O"441" & O"441" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0714@0109 FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
265 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0719@010A E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
266 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 43;
-- L0720@010B E0EBF5CAC10000000000.  trace(from_microcode), directByte = 43;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00101011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
267 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"2B" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto ColdStart;
-- L0721@010C FF00013FC00000000000.  if false then next else ColdStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
268 => '1' & '1' & '1' & "11111" & O"000" & O"004" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0726@010D E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
269 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 42;
-- L0727@010E E0EBF5CA810000000000.  trace(from_microcode), directByte = 42;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00101010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
270 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"2A" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= IL_PC;
-- L0728@010F E000003FC40000000000.  T <= IL_PC;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
271 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"1" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- XQhere <= T, readCore16(Prog_start);
-- L0729@0110 E0C6633FEC1000000000.  XQhere <= T, readCore16(Prog_start);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110001100 else 110001100, directByte = 11111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 1, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
272 => '1' & '1' & '1' & "00000" & O"614" & O"614" & X"FF" & X"B" & "00" & O"0" & '1' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if R_IS_ZERO then NOPROG_ERR;
-- L0730@0111 F3B3803FC00000000000.  if R_IS_ZERO then NOPROG_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 101100111 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
273 => '1' & '1' & '1' & "10011" & O"547" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- BP <= T, T <= from_R;
-- L0731@0112 E000003FF80000600000.  BP <= T, T <= from_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 110, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
274 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"E" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"6" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- Lino <= T, goto fetch;
-- L0732@0113 FF00037FC00000000040.  Lino <= T, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
275 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0737@0114 E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
276 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 44;
-- L0738@0115 E0EBF5CB010000000000.  trace(from_microcode), directByte = 44;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00101100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
277 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"2C" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = 'S', outChar(from_microcode);
-- L0739@0116 E0DEEF54C00080000000.stop_run:  directByte = 'S', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 01010011, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
278 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"53" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = 'T', outChar(from_microcode);
-- L0740@0117 E0DEEF55000080000000.  directByte = 'T', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 01010100, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
279 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"54" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = 'O', outChar(from_microcode);
-- L0741@0118 E0DEEF53C00080000000.  directByte = 'O', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 01001111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
280 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"4F" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = 'P', outChar(from_microcode);
-- L0742@0119 E0DEEF54000080000000.  directByte = 'P', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 01010000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
281 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"50" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto print_lino;
-- L0743@011A FF005FFFC00000000000.  if false then next else print_lino;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101111111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
282 => '1' & '1' & '1' & "11111" & O"000" & O"577" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= reset1;
-- L0745@011B E000003FC00000000100.findPrgEnd:  alu <= reset1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
283 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00010" & '0' & '0' & '0' & '0' & '0' & "00",

-- ReadCore(T);
-- L0746@011C E0E170BFC00030000000.fpend_loop:  ReadCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000010 else 111000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
284 => '1' & '1' & '1' & "00000" & O"702" & O"702" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= Rx256_plus_MDR;
-- L0747@011D E000003FC00000000880.  alu <= Rx256_plus_MDR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
285 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & "00",

-- if R_IS_ZERO then fpend_exit;
-- L0748@011E F390003FC00000000000.  if R_IS_ZERO then fpend_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 100100000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
286 => '1' & '1' & '1' & "10011" & O"440" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= inc, goto fpend_loop;
-- L0749@011F FF00473FE00000000000.  T <= inc, if false then next else fpend_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100011100, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
287 => '1' & '1' & '1' & "11111" & O"000" & O"434" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- PrgEnd <= T, back;
-- L0750@0120 E00100BFC00000000004.fpend_exit:  PrgEnd <= T, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 1, dummy = 00;
288 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '1' & "00",

-- alu <= copy_setup;
-- L0752@0121 E000003FC00000000A80.delBasLine:  alu <= copy_setup;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
289 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10101" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceALU();
-- L0753@0122 E0E8F47FC00000000000.dbs_loop:  traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010001 else 111010001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
290 => '1' & '1' & '1' & "00000" & O"721" & O"721" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_S;
-- L0754@0123 E000003FF40000000000.  T <= from_S;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
291 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"D" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ReadCore(T);
-- L0755@0124 E0E170BFC00030000000.  ReadCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000010 else 111000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
292 => '1' & '1' & '1' & "00000" & O"702" & O"702" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_R;
-- L0756@0125 E000003FF80000000000.  T <= from_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
293 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"E" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- WriteCore(T, same);
-- L0757@0126 E0E0703FC00030000000.  WriteCore(T, same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000000 else 111000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
294 => '1' & '1' & '1' & "00000" & O"700" & O"700" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= copy_next;
-- L0758@0127 E000003FC00000000B00.  alu <= copy_next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
295 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10110" & '0' & '0' & '0' & '0' & '0' & "00",

-- if Y_ZERO then return else dbs_loop;
-- L0759@0128 F40148BFC00000000000.  if Y_ZERO then return else dbs_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 000000010 else 100100010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
296 => '1' & '1' & '1' & "10100" & O"002" & O"442" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto INTERNAL_ERR;
-- L0761@0129 FF005BFFC00000000000.insLnBefore:  if false then next else INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101101111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
297 => '1' & '1' & '1' & "11111" & O"000" & O"557" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0766@012A E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
298 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 19;
-- L0767@012B E0EBF5C4C10000000000.  trace(from_microcode), directByte = 19;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00010011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
299 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"13" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if STACK_IS_EMPTY then RSTACK_ERR;
-- L0768@012C F1B9803FC00000000000.  if STACK_IS_EMPTY then RSTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101110011 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
300 => '1' & '1' & '1' & "10001" & O"563" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= RetStack, RetStack <= pop, goto fetch;
-- L0769@012D FF00037FC0E400000000.  IL_PC <= RetStack, RetStack <= pop, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 111, XQhere <= 0, IL_OP <= 0, RetStack <= 10, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
301 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"7" & '0' & '0' & "10" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0774@012E E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
302 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 20;
-- L0775@012F E0EBF5C5010000000000.  trace(from_microcode), directByte = 20;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00010100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
303 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"14" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 3;
-- L0776@0130 E0EBF5C0C10000000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00000011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
304 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"03" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if STACK_IS_FULL then RSTACK_ERR;
-- L0777@0131 F0B9803FC00000000000.  if STACK_IS_FULL then RSTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 101110011 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
305 => '1' & '1' & '1' & "10000" & O"563" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- RetStack <= push_IL_PC_PLUS_1, goto jump;
-- L0778@0132 FF004DBFC00600000000.  RetStack <= push_IL_PC_PLUS_1, if false then next else jump;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100110110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 11, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
306 => '1' & '1' & '1' & "11111" & O"000" & O"466" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "11" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0783@0133 E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
307 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 21;
-- L0784@0134 E0EBF5C5410000000000.  trace(from_microcode), directByte = 21;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00010101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
308 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"15" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 3;
-- L0785@0135 E0EBF5C0C10000000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00000011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
309 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"03" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= direct11, goto fetch;
-- L0786@0136 FF00037FC0C000000000.jump:  IL_PC <= direct11, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 110, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
310 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"6" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0792@0137 E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
311 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 7;
-- L0793@0138 E0EBF5C1C10000000000.  trace(from_microcode), directByte = 7;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00000111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
312 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"07" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= pc_plus_off6;
-- L0794@0139 E000003FC08000000000.  IL_PC <= pc_plus_off6;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 100, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
313 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"4" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceGoto;
-- L0795@013A E0EBF5C7810000000000.br_exit:  trace(from_microcode), directByte = 30;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00011110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
314 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"1E" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0796@013B FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
315 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0801@013C E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
316 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 7;
-- L0802@013D E0EBF5C1C10000000000.  trace(from_microcode), directByte = 7;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00000111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
317 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"07" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto badop;
-- L0803@013E FF0004BFC00000000000.  if false then next else badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000010010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
318 => '1' & '1' & '1' & "11111" & O"000" & O"022" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0808@013F E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
319 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 17;
-- L0809@0140 E0EBF5C4410000000000.  trace(from_microcode), directByte = 17;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00010001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
320 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"11" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= IL_PC, BP <= save, skipSpaces();
-- L0810@0141 E0DBEDFFC40000400000.  T <= IL_PC, BP <= save, skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110111 else 110110111, directByte = 11111111, T <= 0001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 100, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
321 => '1' & '1' & '1' & "00000" & O"667" & O"667" & X"FF" & X"1" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"4" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 3;
-- L0811@0142 E0EBF5C0C10000000000.bc_loop:  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00000011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
322 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"03" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ReadCore(BP);
-- L0812@0143 E0E170BFC00020000000.  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000010 else 111000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
323 => '1' & '1' & '1' & "00000" & O"702" & O"702" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
-- L0813@0144 F20052BFC00000000000.  if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10010) then 000000000 else 101001010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
324 => '1' & '1' & '1' & "10010" & O"000" & O"512" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if ILCODEBYTE_BIT7 then bc_match;
-- L0814@0145 E1A3803FC00000000000.  if ILCODEBYTE_BIT7 then bc_match;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00001) then 101000111 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
325 => '1' & '1' & '1' & "00001" & O"507" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- BP <= inc, IL_PC <= inc, goto bc_loop;
-- L0815@0146 FF0050BFC04000300000.  BP <= inc, IL_PC <= inc, if false then next else bc_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
326 => '1' & '1' & '1' & "11111" & O"000" & O"502" & X"FF" & X"0" & "00" & O"2" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- BP <= inc, IL_PC <= inc;
-- L0816@0147 E000003FC04000300000.bc_match:  BP <= inc, IL_PC <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
327 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"2" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceBP();
-- L0817@0148 E0E5F2FFC00000000000.  traceBP();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111001011 else 111001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
328 => '1' & '1' & '1' & "00000" & O"713" & O"713" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0818@0149 FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
329 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- BP <= restore, IL_PC <= T;
-- L0819@014A E000003FC06000500000.bc_exit:  BP <= restore, IL_PC <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 011, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 101, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
330 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"3" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"5" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceBP();
-- L0820@014B E0E5F2FFC00000000000.  traceBP();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111001011 else 111001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
331 => '1' & '1' & '1' & "00000" & O"713" & O"713" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= pc_plus_off5, goto br_exit;
-- L0821@014C FF004EBFC0A000000000.  IL_PC <= pc_plus_off5, if false then next else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100111010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
332 => '1' & '1' & '1' & "11111" & O"000" & O"472" & X"FF" & X"0" & "00" & O"5" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0826@014D E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
333 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 16;
-- L0827@014E E0EBF5C4010000000000.  trace(from_microcode), directByte = 16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00010000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
334 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"10" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- skipSpaces();
-- L0828@014F E0DBEDFFC00000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110111 else 110110111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
335 => '1' & '1' & '1' & "00000" & O"667" & O"667" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
-- L0829@0150 EFA9003FC00008000000.  MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01111) then 101010010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 100, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
336 => '1' & '1' & '1' & "01111" & O"522" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"4" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop else br_exit;
-- L0830@0151 FA094EBFC0A000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11010) then 000010010 else 100111010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
337 => '1' & '1' & '1' & "11010" & O"022" & O"472" & X"FF" & X"0" & "00" & O"5" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
-- L0831@0152 F0B8803FDC0000000000.bv_exec:  T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 101110001 else 000000000, directByte = 11111111, T <= 0111, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
338 => '1' & '1' & '1' & "10000" & O"561" & O"000" & X"FF" & X"7" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= push_TByte, BP <= inc, goto fetch;
-- L0832@0153 FF00037FC00000328000.  ExpStack <= push_TByte, BP <= inc, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 101, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
339 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"5" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0837@0154 E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
340 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 14;
-- L0838@0155 E0EBF5C3810000000000.  trace(from_microcode), directByte = 14;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00001110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
341 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"0E" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- skipSpaces();
-- L0839@0156 E0DBEDFFC00000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110111 else 110110111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
342 => '1' & '1' & '1' & "00000" & O"667" & O"667" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= reset0, if MDR_IS_NUM then bn_loop;
-- L0840@0157 EEAE003FC00000000080.  alu <= reset0, if MDR_IS_NUM then bn_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01110) then 101011100 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
343 => '1' & '1' & '1' & "01110" & O"534" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00001" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
-- L0841@0158 FA09003FC0A000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11010) then 000010010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
344 => '1' & '1' & '1' & "11010" & O"022" & O"000" & X"FF" & X"0" & "00" & O"5" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceY();
-- L0842@0159 E0E773BFC00000000000.bn_exit:  traceY();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111001110 else 111001110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
345 => '1' & '1' & '1' & "00000" & O"716" & O"716" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceGoto;
-- L0843@015A E0EBF5C7810000000000.  trace(from_microcode), directByte = 30;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00011110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
346 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"1E" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto fetch;
-- L0844@015B FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
347 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= Yx10_plus_MDR, BP <= inc;
-- L0845@015C E000003FC00000300800.bn_loop:  alu <= Yx10_plus_MDR, BP <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
348 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "10000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if ALU_OVERFLOW then OVERFLOW_ERR;
-- L0846@015D F7B5803FC00000000000.  if ALU_OVERFLOW then OVERFLOW_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10111) then 101101011 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
349 => '1' & '1' & '1' & "10111" & O"553" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ReadCore(BP);
-- L0847@015E E0E170BFC00020000000.  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000010 else 111000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
350 => '1' & '1' & '1' & "00000" & O"702" & O"702" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if MDR_IS_NUM then bn_loop;
-- L0848@015F EEAE003FC00000000000.  if MDR_IS_NUM then bn_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01110) then 101011100 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
351 => '1' & '1' & '1' & "01110" & O"534" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_Y, if STACK_IS_FULL then ESTACK_ERR;
-- L0849@0160 F0B8803FD40000000000.  T <= from_Y, if STACK_IS_FULL then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 101110001 else 000000000, directByte = 11111111, T <= 0101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
352 => '1' & '1' & '1' & "10000" & O"561" & O"000" & X"FF" & X"5" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= push_TWord, goto bn_exit;
-- L0850@0161 FF00567FC00000020000.  ExpStack <= push_TWord, if false then next else bn_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101011001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
353 => '1' & '1' & '1' & "11111" & O"000" & O"531" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceSDepth;
-- L0855@0162 E0EBF5CE010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
354 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"38" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 13;
-- L0856@0163 E0EBF5C3410000000000.  trace(from_microcode), directByte = 13;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00001101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
355 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"0D" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- skipSpaces();
-- L0857@0164 E0DBEDFFC00000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110110111 else 110110111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
356 => '1' & '1' & '1' & "00000" & O"667" & O"667" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = CR, if MDR_EQU_DB then fetch;
-- L0858@0165 E5068003400000000000.  directByte = 0x0D, if MDR_EQU_DB then fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 000001101 else 000000000, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
357 => '1' & '1' & '1' & "00101" & O"015" & O"000" & X"0D" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- IL_PC <= pc_plus_off5, goto br_exit;
-- L0859@0166 FF004EBFC0A000000000.  IL_PC <= pc_plus_off5, if false then next else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100111010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 101, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
358 => '1' & '1' & '1' & "11111" & O"000" & O"472" & X"FF" & X"0" & "00" & O"5" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 50;
-- L0863@0167 E0EBF5CC810000000000.NOPROG_ERR:  trace(from_microcode), directByte = 50;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00110010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
359 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"32" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto traceError;
-- L0864@0168 FF005D3FC00000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101110100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
360 => '1' & '1' & '1' & "11111" & O"000" & O"564" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 57;
-- L0865@0169 E0EBF5CE410000000000.DIVBY0_ERR:  trace(from_microcode), directByte = 57;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
361 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"39" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto traceError;
-- L0866@016A FF005D3FC00000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101110100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
362 => '1' & '1' & '1' & "11111" & O"000" & O"564" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 58;
-- L0867@016B E0EBF5CE810000000000.OVERFLOW_ERR:  trace(from_microcode), directByte = 58;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
363 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"3A" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto traceError;
-- L0868@016C FF005D3FC00000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101110100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
364 => '1' & '1' & '1' & "11111" & O"000" & O"564" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 61;
-- L0869@016D E0EBF5CF410000000000.SYNTAX_ERR:  trace(from_microcode), directByte = 61;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
365 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"3D" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto traceError;
-- L0870@016E FF005D3FC00000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101110100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
366 => '1' & '1' & '1' & "11111" & O"000" & O"564" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 62;
-- L0871@016F E0EBF5CF810000000000.INTERNAL_ERR:  trace(from_microcode), directByte = 62;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
367 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"3E" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto traceError;
-- L0872@0170 FF005D3FC00000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101110100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
368 => '1' & '1' & '1' & "11111" & O"000" & O"564" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 60;
-- L0873@0171 E0EBF5CF010000000000.ESTACK_ERR:  trace(from_microcode), directByte = 60;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
369 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"3C" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto traceError;
-- L0874@0172 FF005D3FC00000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101110100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
370 => '1' & '1' & '1' & "11111" & O"000" & O"564" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 59;
-- L0875@0173 E0EBF5CEC10000000000.RSTACK_ERR:  trace(from_microcode), directByte = 59;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00111011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
371 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"3B" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outCRLF();
-- L0876@0174 E0DDEEFFC00000000000.traceError:  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111011 else 110111011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
372 => '1' & '1' & '1' & "00000" & O"673" & O"673" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- trace(crlf);
-- L0877@0175 E0EBF5FFC30000000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 11111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
373 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"FF" & X"0" & "11" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = BEEP, outChar(from_microcode);
-- L0878@0176 E0DEEF41C00080000000.  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 00000111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
374 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"07" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = 'E', outChar(from_microcode);
-- L0879@0177 E0DEEF51400080000000.  directByte = 'E', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 01000101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
375 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"45" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = 'R', outChar(from_microcode);
-- L0880@0178 E0DEEF54800080000000.  directByte = 'R', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 01010010, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
376 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"52" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = 'R', outChar(from_microcode);
-- L0881@0179 E0DEEF54800080000000.  directByte = 'R', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 01010010, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
377 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"52" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = ' ', outChar(from_microcode);
-- L0882@017A E0DEEF48000080000000.  directByte = ' ', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 00100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
378 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"20" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = '#', outChar(from_microcode), T <= IL_PC;
-- L0883@017B E0DEEF48C40080000000.  directByte = '#', outChar(from_microcode), T <= IL_PC;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 00100011, T <= 0001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
379 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"23" & X"1" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= dec;
-- L0884@017C E000003FE40000000000.  T <= dec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1001, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
380 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"9" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= R_fromT, printDecR();
-- L0885@017D E0D1E8FFC00000000980.  alu <= R_fromT, printDecR();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110100011 else 110100011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
381 => '1' & '1' & '1' & "00000" & O"643" & O"643" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10011" & '0' & '0' & '0' & '0' & '0' & "00",

-- if IS_RUNMODE then next else err_done;
-- L0886@017E FC00617FC00000000000.  if IS_RUNMODE then next else err_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11100) then 000000000 else 110000101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
382 => '1' & '1' & '1' & "11100" & O"000" & O"605" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = ' ', outChar(from_microcode);
-- L0887@017F E0DEEF48000080000000.print_lino:  directByte = ' ', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 00100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
383 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"20" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = 'A', outChar(from_microcode);
-- L0888@0180 E0DEEF50400080000000.  directByte = 'A', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 01000001, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
384 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"41" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = 'T', outChar(from_microcode);
-- L0889@0181 E0DEEF55000080000000.  directByte = 'T', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 01010100, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
385 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"54" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = ' ', outChar(from_microcode), alu <= S_fromLino;
-- L0890@0182 E0DEEF48000080000A00.  directByte = ' ', outChar(from_microcode), alu <= S_fromLino;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 00100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
386 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"20" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_S;
-- L0891@0183 E000003FF40000000000.  T <= from_S;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
387 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"D" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= R_fromT, printDecR();
-- L0892@0184 E0D1E8FFC00000000980.  alu <= R_fromT, printDecR();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110100011 else 110100011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
388 => '1' & '1' & '1' & "00000" & O"643" & O"643" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10011" & '0' & '0' & '0' & '0' & '0' & "00",

-- outCRLF();
-- L0893@0185 E0DDEEFFC00000000000.err_done:  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111011 else 110111011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
389 => '1' & '1' & '1' & "00000" & O"673" & O"673" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- trace(crlf);
-- L0894@0186 E0EBF5FFC30000000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 11111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
390 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"FF" & X"0" & "11" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- goto WarmStart;
-- L0895@0187 FF0001BFC00000000000.  if false then next else WarmStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
391 => '1' & '1' & '1' & "11111" & O"000" & O"006" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ReadCore(T);
-- L0897@0188 E0E170BFC00030000000.findNextCR:  ReadCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000010 else 111000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
392 => '1' & '1' & '1' & "00000" & O"702" & O"702" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = CR, if MDR_EQU_DB then return;
-- L0898@0189 E5010003400000000000.  directByte = 0x0D, if MDR_EQU_DB then return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 000000010 else 000000000, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
393 => '1' & '1' & '1' & "00101" & O"002" & O"000" & X"0D" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = NULL, if MDR_EQU_DB then INTERNAL_ERR;
-- L0899@018A E5B78000000000000000.  directByte = 0x00, if MDR_EQU_DB then INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 101101111 else 000000000, directByte = 00000000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
394 => '1' & '1' & '1' & "00101" & O"557" & O"000" & X"00" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= inc, goto findNextCR;
-- L0900@018B FF00623FE00000000000.  T <= inc, if false then next else findNextCR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 110001000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
395 => '1' & '1' & '1' & "11111" & O"000" & O"610" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ReadCore(T);
-- L0902@018C E0E170BFC00030000000.readCore16:  ReadCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000010 else 111000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
396 => '1' & '1' & '1' & "00000" & O"702" & O"702" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= Rx256_plus_MDR, T <= inc;
-- L0903@018D E000003FE00000000880.  alu <= Rx256_plus_MDR, T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
397 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & "00",

-- ReadCore(T);
-- L0904@018E E0E170BFC00030000000.  ReadCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000010 else 111000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
398 => '1' & '1' & '1' & "00000" & O"702" & O"702" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= Rx256_plus_MDR, T <= inc, back;
-- L0905@018F E00100BFE00000000880.  alu <= Rx256_plus_MDR, T <= inc, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
399 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= reset1;
-- L0911@0190 E000003FC00000000100.findBasLine:  alu <= reset1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
400 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00010" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_fromLino, LS <= T;
-- L0912@0191 E000003FC00000000A10.  alu <= S_fromLino, LS <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 1, LE <= 0, PrgEnd <= 0, dummy = 00;
401 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10100" & '0' & '0' & '1' & '0' & '0' & "00",

-- readCore16(same);
-- L0913@0192 E0C6633FC00000000000.  readCore16(same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110001100 else 110001100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
402 => '1' & '1' & '1' & "00000" & O"614" & O"614" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if R_IS_ZERO then return;
-- L0914@0193 F301003FC00000000000.  if R_IS_ZERO then return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 000000010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
403 => '1' & '1' & '1' & "10011" & O"002" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_minus_R;
-- L0915@0194 E000003FC00000000300.  alu <= S_minus_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
404 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & "00",

-- if Y_ZERO then fbs_found;
-- L0916@0195 F4CC803FC00000000000.  if Y_ZERO then fbs_found;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 110011001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
405 => '1' & '1' & '1' & "10100" & O"631" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if Y_SIGN then fbs_found;
-- L0917@0196 F5CC803FC00000000000.  if Y_SIGN then fbs_found;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 110011001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
406 => '1' & '1' & '1' & "10101" & O"631" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- findNextCR(same);
-- L0918@0197 E0C4623FC00000000000.  findNextCR(same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110001000 else 110001000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
407 => '1' & '1' & '1' & "00000" & O"610" & O"610" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= inc, goto findBasLine;
-- L0919@0198 FF00643FE00000000000.  T <= inc, if false then next else findBasLine;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 110010000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
408 => '1' & '1' & '1' & "11111" & O"000" & O"620" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- findNextCR(same);
-- L0920@0199 E0C4623FC00000000000.fbs_found:  findNextCR(same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110001000 else 110001000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
409 => '1' & '1' & '1' & "00000" & O"610" & O"610" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- LE <= T, back;
-- L0921@019A E00100BFC00000000008.  LE <= T, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 1, PrgEnd <= 0, dummy = 00;
410 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '1' & '0' & "00",

-- WriteCore(T, zero), T <= inc;
-- L0923@019B E0E0703FE00034000000.write2Nulls:  WriteCore(T, zero), T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000000 else 111000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
411 => '1' & '1' & '1' & "00000" & O"700" & O"700" & X"FF" & X"8" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"2" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- WriteCore(T, zero);
-- L0924@019C E0E0703FC00034000000.  WriteCore(T, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000000 else 111000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
412 => '1' & '1' & '1' & "00000" & O"700" & O"700" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "11" & O"2" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- back;
-- L0925@019D E00100BFC00000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
413 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= R_fromStack;
-- L0928@019E E000003FC00000000180.pullRS:  alu <= R_fromStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
414 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0929@019F F1B8803FC00000030000.  ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101110001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
415 => '1' & '1' & '1' & "10001" & O"561" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= S_fromStack;
-- L0930@01A0 E000003FC00000000200.  alu <= S_fromStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
416 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00100" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR else return;
-- L0931@01A1 F1B880BFC00000030000.  ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 101110001 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
417 => '1' & '1' & '1' & "10001" & O"561" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0934@01A2 E000003FC00000030180.printDec:  alu <= R_fromStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
418 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= bcd_start;
-- L0935@01A3 E000003FC00000000500.printDecR:  alu <= bcd_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
419 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01010" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= bcd_next, if ALU_READY then next else repeat;
-- L0936@01A4 F600007FC00000000580.  alu <= bcd_next, if ALU_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
420 => '1' & '1' & '1' & "10110" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01011" & '0' & '0' & '0' & '0' & '0' & "00",

-- if ALU_SIGN then next else pn_5;
-- L0938@01A5 F80069FFC00000000000.  if ALU_SIGN then next else pn_5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11000) then 000000000 else 110100111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
421 => '1' & '1' & '1' & "11000" & O"000" & O"647" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = '-', outChar(from_microcode);
-- L0939@01A6 E0DEEF4B400080000000.  directByte = '-', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 00101101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
422 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"2D" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if LEADING_ZERO then pn_4;
-- L0940@01A7 FBD4803FC00000000000.pn_5:  if LEADING_ZERO then pn_4;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 110101001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
423 => '1' & '1' & '1' & "11011" & O"651" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outChar(from_YtoAlpha);
-- L0941@01A8 E0DEEF7FC00140000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
424 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= Yx16;
-- L0942@01A9 E000003FC00000000480.pn_4:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
425 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01001" & '0' & '0' & '0' & '0' & '0' & "00",

-- if LEADING_ZERO then pn_3;
-- L0943@01AA FBD6003FC00000000000.  if LEADING_ZERO then pn_3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 110101100 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
426 => '1' & '1' & '1' & "11011" & O"654" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outChar(from_YtoAlpha);
-- L0944@01AB E0DEEF7FC00140000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
427 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= Yx16;
-- L0945@01AC E000003FC00000000480.pn_3:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
428 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01001" & '0' & '0' & '0' & '0' & '0' & "00",

-- if LEADING_ZERO then pn_2;
-- L0946@01AD FBD7803FC00000000000.  if LEADING_ZERO then pn_2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 110101111 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
429 => '1' & '1' & '1' & "11011" & O"657" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outChar(from_YtoAlpha);
-- L0947@01AE E0DEEF7FC00140000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
430 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= Yx16;
-- L0948@01AF E000003FC00000000480.pn_2:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
431 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01001" & '0' & '0' & '0' & '0' & '0' & "00",

-- if LEADING_ZERO then pn_1;
-- L0949@01B0 FBD9003FC00000000000.  if LEADING_ZERO then pn_1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 110110010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
432 => '1' & '1' & '1' & "11011" & O"662" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outChar(from_YtoAlpha);
-- L0950@01B1 E0DEEF7FC00140000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
433 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= Yx16;
-- L0951@01B2 E000003FC00000000480.pn_1:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
434 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01001" & '0' & '0' & '0' & '0' & '0' & "00",

-- if LEADING_ZERO then pn_0;
-- L0952@01B3 FBDA803FC00000000000.  if LEADING_ZERO then pn_0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 110110101 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
435 => '1' & '1' & '1' & "11011" & O"665" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- outChar(from_YtoAlpha);
-- L0953@01B4 E0DEEF7FC00140000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
436 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- alu <= Yx16;
-- L0954@01B5 E000003FC00000000480.pn_0:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
437 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01001" & '0' & '0' & '0' & '0' & '0' & "00",

-- CHAROUT <= from_YtoAlpha, goto outChar;
-- L0955@01B6 FF006F7FC00140000000.  CHAROUT <= from_YtoAlpha, if false then next else outChar;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 110111101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
438 => '1' & '1' & '1' & "11111" & O"000" & O"675" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ReadCore(BP);
-- L0957@01B7 E0E170BFC00020000000.skipSpaces:  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000010 else 111000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
439 => '1' & '1' & '1' & "00000" & O"702" & O"702" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = ' ', if MDR_EQU_DB then skipSp;
-- L0958@01B8 E5DD0008000000000000.  directByte = ' ', if MDR_EQU_DB then skipSp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 110111010 else 000000000, directByte = 00100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
440 => '1' & '1' & '1' & "00101" & O"672" & O"000" & X"20" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = TAB, if MDR_EQU_DB then skipSp else return;
-- L0959@01B9 E5DD0082400000000000.  directByte = 0x09, if MDR_EQU_DB then skipSp else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 110111010 else 000000010, directByte = 00001001, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
441 => '1' & '1' & '1' & "00101" & O"672" & O"002" & X"09" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- BP <= inc, goto  skipSpaces;
-- L0960@01BA FF006DFFC00000300000.skipSp:  BP <= inc, if false then next else  skipSpaces;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 110110111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
442 => '1' & '1' & '1' & "11111" & O"000" & O"667" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = CR, outChar(from_microcode);
-- L0962@01BB E0DEEF43400080000000.outCRLF:  directByte = 0x0D, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110111101 else 110111101, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
443 => '1' & '1' & '1' & "00000" & O"675" & O"675" & X"0D" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = LF, CHAROUT <= from_microcode;
-- L0963@01BC E0000002800080000000.  directByte = 0x0A, CHAROUT <= from_microcode;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 00001010, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
444 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"0A" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if CHAROUT_READY then next else repeat;
-- L0964@01BD E200007FC00000000000.outChar:  if CHAROUT_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00010) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
445 => '1' & '1' & '1' & "00010" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if CHAROUT_READY then next else repeat;
-- L0965@01BE E200007FC00000000000.  if CHAROUT_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00010) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
446 => '1' & '1' & '1' & "00010" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- back;
-- L0966@01BF E00100BFC00000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
447 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- nBUSREQ = 0, if nBUSACK then repeat else next;
-- L0968@01C0 6600803FC00000000000.WriteCore:  nBUSREQ = 0, if nBUSACK then repeat else next;
--  nBUSREQ = 0, nWR = 1, nRD = 1, if (00110) then 000000001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
448 => '0' & '1' & '1' & "00110" & O"001" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- nBUSREQ = 0, nWR = 0, back;
-- L0969@01C1 200100BFC00000000000.  nBUSREQ = 0, nWR = 0, if true then return else return;
--  nBUSREQ = 0, nWR = 0, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
449 => '0' & '0' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- nBUSREQ = 0, if nBUSACK then repeat else next;
-- L0971@01C2 6600803FC00000000000.ReadCore:  nBUSREQ = 0, if nBUSACK then repeat else next;
--  nBUSREQ = 0, nWR = 1, nRD = 1, if (00110) then 000000001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
450 => '0' & '1' & '1' & "00110" & O"001" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- nBUSREQ = 0, nRD = 0, MDR <= from_Bus, back;
-- L0972@01C3 400100BFC00002000000.  nBUSREQ = 0, nRD = 0, MDR <= from_Bus, if true then return else return;
--  nBUSREQ = 0, nWR = 1, nRD = 0, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 001, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
451 => '0' & '1' & '0' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"1" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- InlEnd <= InLine_start, trace(crlf);
-- L0976@01C4 E0EBF5FFC30000800000.dump_input:  InlEnd <= InLine_start, trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 11111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
452 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"FF" & X"0" & "11" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "01" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ReadCore(InlEnd);
-- L0977@01C5 E0E170BFC00010000000.dump_inlp:  ReadCore(InlEnd);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111000010 else 111000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
453 => '1' & '1' & '1' & "00000" & O"702" & O"702" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "01" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = 9, trace(from_microcode);
-- L0978@01C6 E0EBF5C2410000000000.  directByte = 9, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00001001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
454 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"09" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- directByte = NULL, if MDR_EQU_DB then dump_inex;
-- L0979@01C7 E5E48000000000000000.  directByte = 0x00, if MDR_EQU_DB then dump_inex;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 111001001 else 000000000, directByte = 00000000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
455 => '1' & '1' & '1' & "00101" & O"711" & O"000" & X"00" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- InlEnd <= inc, goto dump_inlp;
-- L0980@01C8 FF00717FC00001000000.  InlEnd <= inc, if false then next else dump_inlp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 111000101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
456 => '1' & '1' & '1' & "11111" & O"000" & O"705" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "10" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- trace(crlf);
-- L0981@01C9 E0EBF5FFC30000000000.dump_inex:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 11111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
457 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"FF" & X"0" & "11" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- back;
-- L0982@01CA E00100BFC00000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
458 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= push_TWord, T <= BP;
-- L0984@01CB E000003FE80000020000.traceBP:  ExpStack <= push_TWord, T <= BP;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1010, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
459 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"A" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 33;
-- L0985@01CC E0EBF5C8410000000000.  trace(from_microcode), directByte = 33;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00100001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
460 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"21" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= ExpStack, ExpStack <= pop2, back;
-- L0986@01CD E00100BFD00000030000.  T <= ExpStack, ExpStack <= pop2, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
461 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"4" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= push_TWord, T <= from_Y;
-- L0988@01CE E000003FD40000020000.traceY:  ExpStack <= push_TWord, T <= from_Y;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0101, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
462 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"5" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- traceString 32;
-- L0989@01CF E0EBF5C8010000000000.  trace(from_microcode), directByte = 32;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00100000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
463 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"20" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= ExpStack, ExpStack <= pop2, back;
-- L0990@01D0 E00100BFD00000030000.  T <= ExpStack, ExpStack <= pop2, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0100, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
464 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"4" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- trace(crlf);
-- L0992@01D1 E0EBF5FFC30000000000.traceALU:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 11111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
465 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"FF" & X"0" & "11" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- ExpStack <= push_TWord, traceT;
-- L0993@01D2 E0EBF5CD410000020000.  ExpStack <= push_TWord, trace(from_microcode), directByte = 53;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00110101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
466 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"35" & X"0" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_S, traceString 54;
-- L0994@01D3 E0EBF5CDB50000000000.  T <= from_S, trace(from_microcode), directByte = 54;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00110110, T <= 1101, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
467 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"36" & X"D" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_R, traceString 55;
-- L0995@01D4 E0EBF5CDF90000000000.  T <= from_R, trace(from_microcode), directByte = 55;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00110111, T <= 1110, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
468 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"37" & X"E" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= from_Y, traceString 32;
-- L0996@01D5 E0EBF5C8150000000000.  T <= from_Y, trace(from_microcode), directByte = 32;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 111010111 else 111010111, directByte = 00100000, T <= 0101, DBGINDEX <= 01, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
469 => '1' & '1' & '1' & "00000" & O"727" & O"727" & X"20" & X"5" & "01" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- T <= ExpStack, ExpStack <= pop2, DBGINDEX <= crlf;
-- L0997@01D6 E000003FD30000030000.  T <= ExpStack, ExpStack <= pop2, DBGINDEX <= crlf;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0100, DBGINDEX <= 11, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
470 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"4" & "11" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if DBG_READY then next else repeat;
-- L0998@01D7 E400007FC00000000000.trace:  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
471 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if DBG_READY then next else repeat;
-- L0999@01D8 E400007FC00000000000.  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
472 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- if DBG_READY then next else repeat;
-- L1000@01D9 E400007FC00000000000.  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
473 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- DBGINDEX <= zero, back;
-- L1001@01DA E00100BFC20000000000.  DBGINDEX <= zero, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 10, IL_PC <= 000, XQhere <= 0, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 00;
474 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "10" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00",

-- 37 location(s) in following ranges will be filled with default value
-- 01DB .. 01FF

others => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & "00"
);

end microBasic_code;

