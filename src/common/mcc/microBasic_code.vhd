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
-- Value '0' allowed
-- Value '1' allowed
---- Start boilerplate code (use with utmost caution!)
--  nBUSREQ <= mb_nBUSREQ;
---- End boilerplate code

--
-- L0012.nWR: .valfield 1 values 0, 1 default 1;
--
alias mb_nWR: 	std_logic is mb_uinstruction(78);
-- Value '0' allowed
-- Value '1' allowed
---- Start boilerplate code (use with utmost caution!)
--  nWR <= mb_nWR;
---- End boilerplate code

--
-- L0013.nRD: .valfield 1 values 0, 1 default 1;
--
alias mb_nRD: 	std_logic is mb_uinstruction(77);
-- Value '0' allowed
-- Value '1' allowed
---- Start boilerplate code (use with utmost caution!)
--  nRD <= mb_nRD;
---- End boilerplate code

--
-- L0019.seq_cond: .if 5 values true, ILCODEBYTE_BIT7, CHAROUT_READY, IL_A_VALID, DBG_READY, MDR_EQU_DB, nBUSACK, INLEND_MAX, INLEND_MIN, CHARIN_PRINTABLE, CHARIN_EQU_DB, CHARIN_READY, BP_IN_INPLINE, SVP_IN_INPLINE, MDR_IS_NUM, MDR_IS_ALPHA, STACK_IS_FULL, STACK_IS_EMPTY, MDR_MATCHES_ILCODEBYTE, R_IS_ZERO, Y_ZERO, Y_SIGN, ALU_READY, ALU_OVERFLOW, ALU_SIGN, AT_TAB, OFF_IS_ZERO, LEADING_ZERO, IS_RUNMODE, dummy30, dummy31, false default true;
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
constant seq_cond_ALU_OVERFLOW: 	integer := 23;
constant seq_cond_ALU_SIGN: 	integer := 24;
constant seq_cond_AT_TAB: 	integer := 25;
constant seq_cond_OFF_IS_ZERO: 	integer := 26;
constant seq_cond_LEADING_ZERO: 	integer := 27;
constant seq_cond_IS_RUNMODE: 	integer := 28;
constant seq_cond_dummy30: 	integer := 29;
constant seq_cond_dummy31: 	integer := 30;
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
--  cond(seq_cond_ALU_READY) => ALU_READY,
--  cond(seq_cond_ALU_OVERFLOW) => ALU_OVERFLOW,
--  cond(seq_cond_ALU_SIGN) => ALU_SIGN,
--  cond(seq_cond_AT_TAB) => AT_TAB,
--  cond(seq_cond_OFF_IS_ZERO) => OFF_IS_ZERO,
--  cond(seq_cond_LEADING_ZERO) => LEADING_ZERO,
--  cond(seq_cond_IS_RUNMODE) => IS_RUNMODE,
--  cond(seq_cond_dummy30) => dummy30,
--  cond(seq_cond_dummy31) => dummy31,
--  cond(seq_cond_false) => '0',
---- End boilerplate code

--
-- L0053.seq_then: .then 9 values next, repeat, return, fork, @ default next;
--
alias mb_seq_then: 	std_logic_vector(8 downto 0) is mb_uinstruction(71 downto 63);
constant seq_then_next: 	std_logic_vector(8 downto 0) := O"000";
constant seq_then_repeat: 	std_logic_vector(8 downto 0) := O"001";
constant seq_then_return: 	std_logic_vector(8 downto 0) := O"002";
constant seq_then_fork: 	std_logic_vector(8 downto 0) := O"003";
-- Jump targets allowed!
-- include '.controller <filename.vhd>, <stackdepth>;' in .mcc file to generate pre-canned microcode control unit and connect 'then' to mb_seq_then

--
-- L0054.seq_else: .else 9 values next, repeat, return, fork, 0b000000..0b111111, @ default next;
--
alias mb_seq_else: 	std_logic_vector(8 downto 0) is mb_uinstruction(62 downto 54);
constant seq_else_next: 	std_logic_vector(8 downto 0) := O"000";
constant seq_else_repeat: 	std_logic_vector(8 downto 0) := O"001";
constant seq_else_return: 	std_logic_vector(8 downto 0) := O"002";
constant seq_else_fork: 	std_logic_vector(8 downto 0) := O"003";
-- Values from O"000" to O"077" allowed
-- Jump targets allowed!
-- include '.controller <filename.vhd>, <stackdepth>;' in .mcc file to generate pre-canned microcode control unit and connect 'else' to mb_seq_else

--
-- L0057.directByte: .valfield 8 values 0x00..0xFF default 0xFF;
--
alias mb_directByte: 	std_logic_vector(7 downto 0) is mb_uinstruction(53 downto 46);
-- Values from X"00" to X"FF" allowed
---- Start boilerplate code (use with utmost caution!)
--  directByte <= mb_directByte;
---- End boilerplate code

--
-- L0060.T: .regfield 4 values same, IL_PC, zero, from_vars, ExpStack, from_Y, codeByte, MDRx2, inc, dec, BP, Prog_start, PrgEnd, from_S, from_R default same;
--
alias mb_T: 	std_logic_vector(3 downto 0) is mb_uinstruction(45 downto 42);
constant T_same: 	std_logic_vector(3 downto 0) := X"0";
constant T_IL_PC: 	std_logic_vector(3 downto 0) := X"1";
constant T_zero: 	std_logic_vector(3 downto 0) := X"2";
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
--			when T_zero =>
--				T <= (others => '0');
--			when T_from_vars =>
--				T <= from_vars;
--			when T_ExpStack =>
--				T <= ExpStack;
--			when T_from_Y =>
--				T <= from_Y;
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
--				T <= from_S;
--			when T_from_R =>
--				T <= from_R;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0079.DBGINDEX: .regfield 2 values same, from_microcode, zero, crlf default same;
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
-- L0087.IL_PC: .regfield 3 values same, zero, inc, T, pc_plus_off6, pc_plus_off5, direct11, RetStack default same;
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
-- L0099.IL_OP: .regfield 1 values same, from_interpreter default same;
--
alias mb_IL_OP: 	std_logic is mb_uinstruction(36);
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
-- L0104.RetStack: .regfield 2 values same, clear, pop, push_IL_PC_PLUS_1 default same;
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
-- L0112.CHAROUT: .regfield 3 values same, from_interpreter, from_microcode, from_charin, from_MDR, from_YtoAlpha, -, - default same;
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
-- L0124.MAR: .regfield 2 values same, InlEnd, BP, T default same;
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
-- L0132.MDR: .regfield 3 values same, from_Bus, zero, CHARIN, ToUpper, from_SHi, from_SLo, - default same;
--
alias mb_MDR: 	std_logic_vector(2 downto 0) is mb_uinstruction(28 downto 26);
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
--				MDR <= from_Bus;
--			when MDR_zero =>
--				MDR <= (others => '0');
--			when MDR_CHARIN =>
--				MDR <= CHARIN;
--			when MDR_ToUpper =>
--				MDR <= ToUpper;
--			when MDR_from_SHi =>
--				MDR <= from_SHi;
--			when MDR_from_SLo =>
--				MDR <= from_SLo;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0144.InlEnd: .regfield 2 values same, InLine_start, inc, dec default same;
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
-- L0152.BP: .regfield 3 values same, InLine_start, SvPt, inc, save, restore, -, - default same;
--
alias mb_BP: 	std_logic_vector(2 downto 0) is mb_uinstruction(23 downto 21);
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
-- L0164.SvPt: .regfield 2 values same, InLine_start, BP, - default same;
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
-- L0171.ExpStack: .regfield 3 values same, clear, startSwap, endSwap, push_TWord, push_TByte, pop2, pop1 default same;
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
-- L0183.gotChar: .valfield 1 values 0, 1 default 0;
--
alias mb_gotChar: 	std_logic is mb_uinstruction(15);
-- Value '0' allowed
-- Value '1' allowed
---- Start boilerplate code (use with utmost caution!)
--  gotChar <= mb_gotChar;
---- End boilerplate code

--
-- L0188.Vars: .regfield 2 values same, indexFromExpStack, T, - default same;
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
-- L0196.alu: .regfield 5 values nop, reset0, reset1, R_fromStack, S_fromStack, S_plus_R, S_minus_R, neg_R, S_mul_R, Yx16, bcd_start, bcd_next, div_start, div_shift, div_subset, div_end, Yx10_plus_MDR, Rx256_plus_MDR, S_fromT, R_fromT, S_fromLino, copy_setup, copy_next, -, -, -, -, -, -, -, -, - default nop;
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
constant alu_copy_setup: 	std_logic_vector(4 downto 0) := "10101";
constant alu_copy_next: 	std_logic_vector(4 downto 0) := "10110";
-- Value "10111" not allowed (name '-' is not assignable)
-- Value "11000" not allowed (name '-' is not assignable)
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
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0232.Lino: .regfield 1 values same, T default same;
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
-- L0238.BE: .regfield 1 values same, T default same;
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
-- L0244.LS: .regfield 1 values same, T default same;
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
-- L0250.LE: .regfield 1 values same, T default same;
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
-- L0256.PrgEnd: .regfield 1 values same, T default same;
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
-- L0263.dummy: .valfield 3 values * default 0;
--
alias mb_dummy: 	std_logic_vector(2 downto 0) is mb_uinstruction(2 downto 0);
-- Values from O"0" to O"7" allowed
---- Start boilerplate code (use with utmost caution!)
--  dummy <= mb_dummy;
---- End boilerplate code



constant mb_microcode: mb_code_memory := (

-- nop;
-- L0312@0000 E000003FC00000000000._reset:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
0 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- nop;
-- L0314@0001 E000003FC00000000000._reset1:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
1 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- nop;
-- L0316@0002 E000003FC00000000000._reset2:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
2 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- nop;
-- L0318@0003 E000003FC00000000000._reset3:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
3 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 4;
-- L0322@0004 E0C8E441010000000000.ColdStart:  trace(from_microcode), directByte = 4;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00000100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
4 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"04" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- write2Nulls(BP);
-- L0323@0005 E063B1FFE80000000000.  write2Nulls(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011000111 else 011000111, directByte = 11111111, T <= 1010, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
5 => '1' & '1' & '1' & "00000" & O"307" & O"307" & X"FF" & X"A" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- write2Nulls(Prog_start);
-- L0324@0006 E063B1FFEC0000000000.  write2Nulls(Prog_start);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011000111 else 011000111, directByte = 11111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
6 => '1' & '1' & '1' & "00000" & O"307" & O"307" & X"FF" & X"B" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- clear;
-- L0325@0007 E000003FC22400010100.WarmStart:  DBGINDEX <= zero, IL_PC <= zero, ExpStack <= clear, RetStack <= clear, alu <= reset0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 10, IL_PC <= 001, IL_OP <= 0, RetStack <= 01, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 001, gotChar = 0, Vars <= 00, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
7 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "10" & O"1" & '0' & "01" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"1" & '0' & "00" & "00001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start;
-- L0326@0008 E000003FC00001280000.  BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 001, SvPt <= 01, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
8 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "01" & O"1" & "01" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= Prog_start;
-- L0327@0009 E000003FEC0000000000.  T <= Prog_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
9 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"B" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- PrgEnd <= T;
-- L0328@000A E000003FC00000000008.  PrgEnd <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 1, dummy = 000;
10 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '1' & O"0",

-- T <= zero;
-- L0329@000B E000003FC80000000000.  T <= zero;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0010, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
11 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"2" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- Lino <= T;
-- L0330@000C E000003FC00000000080.  Lino <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
12 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '1' & '0' & '0' & '0' & '0' & O"0",

-- trace(crlf);
-- L0332@000D E0C8E47FC30000000000.fetch:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 11111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
13 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"FF" & X"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 51;
-- L0333@000E E0C8E44CC10000000000.  trace(from_microcode), directByte = 51;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00110011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
14 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"33" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 2;
-- L0334@000F E0C8E440810000000000.  trace(from_microcode), directByte = 2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00000010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
15 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"02" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_OP <= from_interpreter, IL_PC <= inc;
-- L0335@0010 E000003FC05000000000.  IL_OP <= from_interpreter, IL_PC <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 1, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
16 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"2" & '1' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= reset0, if IL_A_VALID then fork else INTERNAL_ERR;
-- L0336@0011 E301CCFFC00000000100.  alu <= reset0, if IL_A_VALID then fork else INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00011) then 000000011 else 100110011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
17 => '1' & '1' & '1' & "00011" & O"003" & O"463" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto INTERNAL_ERR;
-- L0339@0012 FF004CFFC00000000000.badop:  if false then next else INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100110011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
18 => '1' & '1' & '1' & "11111" & O"000" & O"463" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0344@0013 E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
19 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 15;
-- L0345@0014 E0C8E443C10000000000.  trace(from_microcode), directByte = 15;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00001111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
20 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"0F" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= startSwap;
-- L0346@0015 E000003FC00000020000.  ExpStack <= startSwap;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 010, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
21 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"2" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= endSwap;
-- L0347@0016 E000003FC00000030000.  ExpStack <= endSwap;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 011, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
22 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"3" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0348@0017 FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
23 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0351@0018 E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
24 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 15;
-- L0352@0019 E0C8E443C10000000000.  trace(from_microcode), directByte = 15;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00001111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
25 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"0F" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0353@001A FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
26 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0358@001B E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
27 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 12;
-- L0359@001C E0C8E443010000000000.  trace(from_microcode), directByte = 12;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00001100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
28 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"0C" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0360@001D FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
29 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0365@001E E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
30 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 28;
-- L0366@001F E0C8E447010000000000.  trace(from_microcode), directByte = 28;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00011100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
31 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"1C" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 3, T <= codeByte;
-- L0367@0020 E0C8E440D90000000000.lb_push:  trace(from_microcode), directByte = 3, T <= codeByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00000011, T <= 0110, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
32 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"03" & X"6" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= push_TByte;
-- L0368@0021 E000003FC00000050000.  ExpStack <= push_TByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 101, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
33 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"5" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
-- L0369@0022 F09A837FC04000000000.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 100110101 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
34 => '1' & '1' & '1' & "10000" & O"465" & O"015" & X"FF" & X"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0374@0023 E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
35 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 29;
-- L0375@0024 E0C8E447410000000000.  trace(from_microcode), directByte = 29;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00011101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
36 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"1D" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 3, T <= codeByte;
-- L0376@0025 E0C8E440D90000000000.  trace(from_microcode), directByte = 3, T <= codeByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00000011, T <= 0110, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
37 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"03" & X"6" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= push_TByte;
-- L0377@0026 E000003FC00000050000.  ExpStack <= push_TByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 101, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
38 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"5" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
-- L0378@0027 F09A883FC04000000000.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 100110101 else 000100000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
39 => '1' & '1' & '1' & "10000" & O"465" & O"040" & X"FF" & X"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0383@0028 E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
40 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 38;
-- L0384@0029 E0C8E449810000000000.  trace(from_microcode), directByte = 38;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00100110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
41 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"26" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0385@002A F19A803FC00000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 100110101 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
42 => '1' & '1' & '1' & "10001" & O"465" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR;
-- L0386@002B F09A803FD00000000000.  T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 100110101 else 000000000, directByte = 11111111, T <= 0100, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
43 => '1' & '1' & '1' & "10000" & O"465" & O"000" & X"FF" & X"4" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= push_TWord, goto fetch;
-- L0387@002C FF00037FC00000040000.  ExpStack <= push_TWord, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
44 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0392@002D E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
45 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 34;
-- L0393@002E E0C8E448810000000000.  trace(from_microcode), directByte = 34;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00100010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
46 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"22" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0394@002F F19A803FC00000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 100110101 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
47 => '1' & '1' & '1' & "10001" & O"465" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= pop2, goto fetch;
-- L0395@0030 FF00037FC00000060000.  ExpStack <= pop2, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
48 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0400@0031 E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
49 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 10;
-- L0401@0032 E0C8E442810000000000.  trace(from_microcode), directByte = 10;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00001010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
50 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"0A" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if BP_IN_INPLINE then next else ptr_exc;
-- L0402@0033 EC000EBFC00000000000.  if BP_IN_INPLINE then next else ptr_exc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01100) then 000000000 else 000111010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
51 => '1' & '1' & '1' & "01100" & O"000" & O"072" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- SvPt <= BP;
-- L0403@0034 E000003FC00000100000.save_bp:  SvPt <= BP;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 10, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
52 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "10" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceBP();
-- L0404@0035 E0C2E17FC00000000000.bp_done:  traceBP();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110000101 else 110000101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
53 => '1' & '1' & '1' & "00000" & O"605" & O"605" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0405@0036 FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
54 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0410@0037 E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
55 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 11;
-- L0411@0038 E0C8E442C10000000000.  trace(from_microcode), directByte = 11;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00001011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
56 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"0B" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if SVP_IN_INPLINE then save_bp;
-- L0412@0039 ED1A003FC00000000000.  if SVP_IN_INPLINE then save_bp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01101) then 000110100 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
57 => '1' & '1' & '1' & "01101" & O"064" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- SvPt <= BP, BP <= SvPt, goto bp_done;
-- L0413@003A FF000D7FC00000500000.ptr_exc:  SvPt <= BP, BP <= SvPt, if false then next else bp_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000110101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 010, SvPt <= 10, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
58 => '1' & '1' & '1' & "11111" & O"000" & O"065" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"2" & "10" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0418@003B E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
59 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 36;
-- L0419@003C E0C8E449010000000000.  trace(from_microcode), directByte = 36;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00100100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
60 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"24" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0420@003D F19A803FC00000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 100110101 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
61 => '1' & '1' & '1' & "10001" & O"465" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- Vars <= indexFromExpStack;
-- L0421@003E E000003FC00000002000.  Vars <= indexFromExpStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 01, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
62 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "01" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= from_vars, ExpStack <= pop1;
-- L0422@003F E000003FCC0000070000.  T <= from_vars, ExpStack <= pop1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0011, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 111, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
63 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"3" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"7" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= push_TWord, goto fetch;
-- L0423@0040 FF00037FC00000040000.  ExpStack <= push_TWord, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
64 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0428@0041 E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
65 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 37;
-- L0429@0042 E0C8E449410000000000.  trace(from_microcode), directByte = 37;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00100101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
66 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"25" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0430@0043 F19A803FC00000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 100110101 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
67 => '1' & '1' & '1' & "10001" & O"465" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= ExpStack, ExpStack <= pop2;
-- L0431@0044 E000003FD00000060000.  T <= ExpStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0100, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
68 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"4" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0432@0045 F19A803FC00000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 100110101 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
69 => '1' & '1' & '1' & "10001" & O"465" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- Vars <= indexFromExpStack, ExpStack <= pop1;
-- L0433@0046 E000003FC00000072000.  Vars <= indexFromExpStack, ExpStack <= pop1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 111, gotChar = 0, Vars <= 01, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
70 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"7" & '0' & "01" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- Vars <= T, goto fetch;
-- L0434@0047 FF00037FC00000004000.  Vars <= T, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 10, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
71 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "10" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0439@0048 E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
72 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 25;
-- L0440@0049 E0C8E446410000000000.  trace(from_microcode), directByte = 25;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00011001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
73 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"19" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0441@004A F19A803FC00000000300.  alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 100110101 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
74 => '1' & '1' & '1' & "10001" & O"465" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= pop2;
-- L0442@004B E000003FC00000060000.  ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
75 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= neg_R, if ALU_READY then alu_done else repeat;
-- L0443@004C F628807FC00000000700.  alu <= neg_R, if ALU_READY then alu_done else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 001010001 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
76 => '1' & '1' & '1' & "10110" & O"121" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00111" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0448@004D E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
77 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 22;
-- L0449@004E E0C8E445810000000000.  trace(from_microcode), directByte = 22;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00010110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
78 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"16" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- pullRS();
-- L0450@004F E0A6533FC00000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101001100 else 101001100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
79 => '1' & '1' & '1' & "00000" & O"514" & O"514" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_plus_R, if ALU_READY then next else repeat;
-- L0451@0050 F600007FC00000000500.  alu <= S_plus_R, if ALU_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
80 => '1' & '1' & '1' & "10110" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00101" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceALU();
-- L0452@0051 E0C5E2FFC00000000000.alu_done:  traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110001011 else 110001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
81 => '1' & '1' & '1' & "00000" & O"613" & O"613" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= from_Y, if ALU_OVERFLOW then OVERFLOW_ERR;
-- L0453@0052 F797803FD40000000000.  T <= from_Y, if ALU_OVERFLOW then OVERFLOW_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10111) then 100101111 else 000000000, directByte = 11111111, T <= 0101, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
82 => '1' & '1' & '1' & "10111" & O"457" & O"000" & X"FF" & X"5" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= push_TWord, goto fetch;
-- L0454@0053 FF00037FC00000040000.  ExpStack <= push_TWord, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
83 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0459@0054 E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
84 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 23;
-- L0460@0055 E0C8E445C10000000000.  trace(from_microcode), directByte = 23;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00010111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
85 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"17" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- pullRS();
-- L0461@0056 E0A6533FC00000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101001100 else 101001100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
86 => '1' & '1' & '1' & "00000" & O"514" & O"514" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_minus_R, if ALU_READY then alu_done else repeat;
-- L0462@0057 F628807FC00000000600.  alu <= S_minus_R, if ALU_READY then alu_done else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 001010001 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
87 => '1' & '1' & '1' & "10110" & O"121" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0467@0058 E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
88 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 24;
-- L0468@0059 E0C8E446010000000000.  trace(from_microcode), directByte = 24;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00011000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
89 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"18" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- pullRS();
-- L0469@005A E0A6533FC00000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101001100 else 101001100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
90 => '1' & '1' & '1' & "00000" & O"514" & O"514" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_mul_R, if ALU_READY then alu_done else repeat;
-- L0470@005B F628807FC00000000800.  alu <= S_mul_R, if ALU_READY then alu_done else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 001010001 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
91 => '1' & '1' & '1' & "10110" & O"121" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0475@005C E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
92 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 39;
-- L0476@005D E0C8E449C10000000000.  trace(from_microcode), directByte = 39;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00100111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
93 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"27" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if IS_RUNMODE then next else WarmStart;
-- L0477@005E FC0001FFC00000000000.  if IS_RUNMODE then next else WarmStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11100) then 000000000 else 000000111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
94 => '1' & '1' & '1' & "11100" & O"000" & O"007" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto badop;
-- L0478@005F FF0004BFC00000000000.  if false then next else badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000010010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
95 => '1' & '1' & '1' & "11111" & O"000" & O"022" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0483@0060 E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
96 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 35;
-- L0484@0061 E0C8E448C10000000000.  trace(from_microcode), directByte = 35;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00100011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
97 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"23" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- pullRS();
-- L0485@0062 E0A6533FC00000000000.  pullRS();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101001100 else 101001100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
98 => '1' & '1' & '1' & "00000" & O"514" & O"514" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
-- L0486@0063 F396803FC00000000C00.  alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 100101101 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
99 => '1' & '1' & '1' & "10011" & O"455" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01100" & '0' & '0' & '0' & '0' & '0' & O"0",

-- nop;
-- L0487@0064 E000003FC00000000000.div_loop:  if true then next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
100 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= div_shift;
-- L0491@0065 E000003FC00000000D00.  alu <= div_shift;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
101 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01101" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if ALU_READY then div_done;
-- L0492@0066 F634003FC00000000000.  if ALU_READY then div_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 001101000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
102 => '1' & '1' & '1' & "10110" & O"150" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= div_subset, goto div_loop;
-- L0496@0067 FF00193FC00000000E00.  alu <= div_subset, if false then next else div_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001100100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
103 => '1' & '1' & '1' & "11111" & O"000" & O"144" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01110" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= div_end, goto alu_done;
-- L0497@0068 FF00147FC00000000F00.div_done:  alu <= div_end, if false then next else alu_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001010001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01111, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
104 => '1' & '1' & '1' & "11111" & O"000" & O"121" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01111" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0502@0069 E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
105 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 26;
-- L0503@006A E0C8E446810000000000.  trace(from_microcode), directByte = 26;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00011010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
106 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"1A" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if STACK_IS_EMPTY then ESTACK_ERR;
-- L0504@006B F19A803FC00000000000.  if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 100110101 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
107 => '1' & '1' & '1' & "10001" & O"465" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- printDec();
-- L0505@006C E0A8543FC00000000000.  printDec();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101010000 else 101010000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
108 => '1' & '1' & '1' & "00000" & O"520" & O"520" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0506@006D FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
109 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0511@006E E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
110 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 18;
-- L0512@006F E0C8E444810000000000.  trace(from_microcode), directByte = 18;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00010010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
111 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"12" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- BP <= inc, ReadCore(BP);
-- L0513@0070 E0B9DCFFC00040600000.pq_loop:  BP <= inc, ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110011 else 101110011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
112 => '1' & '1' & '1' & "00000" & O"563" & O"563" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = '"', if MDR_EQU_DB then pq_done;
-- L0514@0071 E53A8008800000000000.  directByte = '"', if MDR_EQU_DB then pq_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 001110101 else 000000000, directByte = 00100010, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
113 => '1' & '1' & '1' & "00101" & O"165" & O"000" & X"22" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outChar(from_MDR);
-- L0515@0072 E0B75BBFC00200000000.  outChar(from_MDR);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 100, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
114 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"4" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 3;
-- L0516@0073 E0C8E440C10000000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00000011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
115 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"03" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = CR, if MDR_EQU_DB then STRING_ERR else pq_loop;
-- L0517@0074 E5989C03400000000000.  directByte = 0x0D, if MDR_EQU_DB then STRING_ERR else pq_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 100110001 else 001110000, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
116 => '1' & '1' & '1' & "00101" & O"461" & O"160" & X"0D" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceBP();
-- L0518@0075 E0C2E17FC00000000000.pq_done:  traceBP();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110000101 else 110000101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
117 => '1' & '1' & '1' & "00000" & O"605" & O"605" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0519@0076 FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
118 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0524@0077 E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
119 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 27;
-- L0525@0078 E0C8E446C10000000000.  trace(from_microcode), directByte = 27;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00011011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
120 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"1B" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if AT_TAB then fetch;
-- L0526@0079 F906803FC00000000000.pt_loop:  if AT_TAB then fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11001) then 000001101 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
121 => '1' & '1' & '1' & "11001" & O"015" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = ' ', outChar(from_microcode);
-- L0527@007A E0B75B88000100000000.  directByte = ' ', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 00100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
122 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"20" & X"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto pt_loop;
-- L0528@007B FF001E7FC00000000000.  if false then next else pt_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 001111001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
123 => '1' & '1' & '1' & "11111" & O"000" & O"171" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0533@007C E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
124 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 6;
-- L0534@007D E0C8E441810000000000.  trace(from_microcode), directByte = 6;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00000110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
125 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"06" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outCRLF();
-- L0535@007E E0B5DAFFC00000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101011 else 101101011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
126 => '1' & '1' & '1' & "00000" & O"553" & O"553" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0536@007F FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
127 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0541@0080 E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
128 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 5;
-- L0542@0081 E0C8E441410000000000.  trace(from_microcode), directByte = 5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00000101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
129 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"05" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outChar(from_interpreter);
-- L0543@0082 E0B75BBFC00080000000.pc_loop:  outChar(from_interpreter);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 001, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
130 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"1" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 3;
-- L0544@0083 E0C8E440C10000000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00000011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
131 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"03" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if ILCODEBYTE_BIT7 then pc_exit;
-- L0545@0084 E143003FC00000000000.  if ILCODEBYTE_BIT7 then pc_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00001) then 010000110 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
132 => '1' & '1' & '1' & "00001" & O"206" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= inc, goto pc_loop;
-- L0546@0085 FF0020BFC04000000000.  IL_PC <= inc, if false then next else pc_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
133 => '1' & '1' & '1' & "11111" & O"000" & O"202" & X"FF" & X"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= inc, goto fetch;
-- L0547@0086 FF00037FC04000000000.pc_exit:  IL_PC <= inc, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
134 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0552@0087 E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
135 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 40;
-- L0553@0088 E0C8E44A010000000000.  trace(from_microcode), directByte = 40;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00101000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
136 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"28" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= ExpStack;
-- L0554@0089 E000003FD00000000000.  T <= ExpStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0100, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
137 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"4" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- Lino <= T, ExpStack <= pop2, alu <= S_fromT;
-- L0555@008A E000003FC00000061280.  Lino <= T, ExpStack <= pop2, alu <= S_fromT;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 10010, Lino <= 1, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
138 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "10010" & '1' & '0' & '0' & '0' & '0' & O"0",

-- traceLino;
-- L0556@008B E0C8E44D010000000000.  trace(from_microcode), directByte = 52;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00110100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
139 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"34" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_minus_R;
-- L0557@008C E000003FC00000000600.  alu <= S_minus_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
140 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if Y_SIGN then INTERNAL_ERR;
-- L0558@008D F599803FC00000000000.  if Y_SIGN then INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 100110011 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
141 => '1' & '1' & '1' & "10101" & O"463" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if Y_ZERO then INTERNAL_ERR;
-- L0559@008E F499803FC00000000000.  if Y_ZERO then INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 100110011 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
142 => '1' & '1' & '1' & "10100" & O"463" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- skipSpaces();
-- L0560@008F E0B3D9FFC00000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101100111 else 101100111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
143 => '1' & '1' & '1' & "00000" & O"547" & O"547" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = CR, if MDR_EQU_DB then delLine;
-- L0561@0090 E5548003400000000000.  directByte = 0x0D, if MDR_EQU_DB then delLine;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 010101001 else 000000000, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
144 => '1' & '1' & '1' & "00101" & O"251" & O"000" & X"0D" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- findNextCR(BP);
-- L0564@0091 E05E2F3FE80000000000.insLine:  findNextCR(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010111100 else 010111100, directByte = 11111111, T <= 1010, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
145 => '1' & '1' & '1' & "00000" & O"274" & O"274" & X"FF" & X"A" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- BE <= T;
-- L0565@0092 E000003FC00000000040.  BE <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 1, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
146 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '1' & '0' & '0' & '0' & O"0",

-- findPrgEnd(Prog_start);
-- L0566@0093 E060B07FEC0000000000.insLine1:  findPrgEnd(Prog_start);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011000001 else 011000001, directByte = 11111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
147 => '1' & '1' & '1' & "00000" & O"301" & O"301" & X"FF" & X"B" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- findBasLine(Prog_start);
-- L0567@0094 E0572BBFEC0000000000.  findBasLine(Prog_start);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010101110 else 010101110, directByte = 11111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
148 => '1' & '1' & '1' & "00000" & O"256" & O"256" & X"FF" & X"B" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if R_IS_ZERO then appendLine;
-- L0568@0095 F34E803FC00000000000.  if R_IS_ZERO then appendLine;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 010011101 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
149 => '1' & '1' & '1' & "10011" & O"235" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_minus_R;
-- L0569@0096 E000003FC00000000600.  alu <= S_minus_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
150 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if Y_ZERO then replaceLine;
-- L0570@0097 F44D803FC00000000000.  if Y_ZERO then replaceLine;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 010011011 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
151 => '1' & '1' & '1' & "10100" & O"233" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if Y_SIGN then next else INTERNAL_ERR;
-- L0571@0098 F5004CFFC00000000000.  if Y_SIGN then next else INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 000000000 else 100110011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
152 => '1' & '1' & '1' & "10101" & O"000" & O"463" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- insLnBefore();
-- L0573@0099 E069B4FFC00000000000.  insLnBefore();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011010011 else 011010011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
153 => '1' & '1' & '1' & "00000" & O"323" & O"323" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0574@009A FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
154 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- delBasLine();
-- L0577@009B E065B2FFC00000000000.replaceLine:  delBasLine();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001011 else 011001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
155 => '1' & '1' & '1' & "00000" & O"313" & O"313" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto insLine1;
-- L0578@009C FF0024FFC00000000000.  if false then next else insLine1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010010011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
156 => '1' & '1' & '1' & "11111" & O"000" & O"223" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= PrgEnd;
-- L0580@009D E000003FF00000000000.appendLine:  T <= PrgEnd;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1100, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
157 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"C" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_fromLino, T <= dec;
-- L0581@009E E000003FE40000001400.  alu <= S_fromLino, T <= dec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1001, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
158 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"9" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & O"0",

-- WriteCore(T, from_SHi);
-- L0582@009F E0B8DC7FC00074000000.  WriteCore(T, from_SHi);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110001 else 101110001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 101, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
159 => '1' & '1' & '1' & "00000" & O"561" & O"561" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "11" & O"5" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= inc;
-- L0583@00A0 E000003FE00000000000.  T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
160 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- WriteCore(T, from_SLo);
-- L0584@00A1 E0B8DC7FC00078000000.  WriteCore(T, from_SLo);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110001 else 101110001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 110, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
161 => '1' & '1' & '1' & "00000" & O"561" & O"561" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "11" & O"6" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= inc;
-- L0585@00A2 E000003FE00000000000.  T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
162 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ReadCore(BP);
-- L0586@00A3 E0B9DCFFC00040000000.app_loop:  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110011 else 101110011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
163 => '1' & '1' & '1' & "00000" & O"563" & O"563" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- WriteCore(T, same);
-- L0587@00A4 E0B8DC7FC00060000000.  WriteCore(T, same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110001 else 101110001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
164 => '1' & '1' & '1' & "00000" & O"561" & O"561" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- BP <= inc, T <= inc;
-- L0588@00A5 E000003FE00000600000.  BP <= inc, T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
165 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = CR, if MDR_EQU_DB then next else app_loop;
-- L0589@00A6 E50028C3400000000000.  directByte = 0x0D, if MDR_EQU_DB then next else app_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 000000000 else 010100011, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
166 => '1' & '1' & '1' & "00101" & O"000" & O"243" & X"0D" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- write2Nulls(same);
-- L0590@00A7 E063B1FFC00000000000.  write2Nulls(same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011000111 else 011000111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
167 => '1' & '1' & '1' & "00000" & O"307" & O"307" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0591@00A8 FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
168 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- findPrgEnd(Prog_start);
-- L0594@00A9 E060B07FEC0000000000.delLine:  findPrgEnd(Prog_start);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011000001 else 011000001, directByte = 11111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
169 => '1' & '1' & '1' & "00000" & O"301" & O"301" & X"FF" & X"B" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- findBasLine(Prog_start);
-- L0595@00AA E0572BBFEC0000000000.  findBasLine(Prog_start);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010101110 else 010101110, directByte = 11111111, T <= 1011, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
170 => '1' & '1' & '1' & "00000" & O"256" & O"256" & X"FF" & X"B" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if Y_ZERO then next else WarmStart;
-- L0596@00AB F40001FFC00000000000.  if Y_ZERO then next else WarmStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 000000000 else 000000111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
171 => '1' & '1' & '1' & "10100" & O"000" & O"007" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- delBasLine();
-- L0597@00AC E065B2FFC00000000000.  delBasLine();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 011001011 else 011001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
172 => '1' & '1' & '1' & "00000" & O"313" & O"313" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0598@00AD FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
173 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= reset1;
-- L0604@00AE E000003FC00000000200.findBasLine:  alu <= reset1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
174 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00010" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_fromLino, LS <= T;
-- L0605@00AF E000003FC00000001420.  alu <= S_fromLino, LS <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 1, LE <= 0, PrgEnd <= 0, dummy = 000;
175 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10100" & '0' & '0' & '1' & '0' & '0' & O"0",

-- ReadCore(T);
-- L0606@00B0 E0B9DCFFC00060000000.  ReadCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110011 else 101110011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
176 => '1' & '1' & '1' & "00000" & O"563" & O"563" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= Rx256_plus_MDR, T <= inc;
-- L0607@00B1 E000003FE00000001100.  alu <= Rx256_plus_MDR, T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
177 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ReadCore(T);
-- L0608@00B2 E0B9DCFFC00060000000.  ReadCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110011 else 101110011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
178 => '1' & '1' & '1' & "00000" & O"563" & O"563" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= Rx256_plus_MDR, T <= inc;
-- L0609@00B3 E000003FE00000001100.  alu <= Rx256_plus_MDR, T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
179 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if R_IS_ZERO then return;
-- L0610@00B4 F301003FC00000000000.  if R_IS_ZERO then return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 000000010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
180 => '1' & '1' & '1' & "10011" & O"002" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_minus_R;
-- L0611@00B5 E000003FC00000000600.  alu <= S_minus_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
181 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00110" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if Y_ZERO then fbs_found;
-- L0612@00B6 F45D003FC00000000000.  if Y_ZERO then fbs_found;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 010111010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
182 => '1' & '1' & '1' & "10100" & O"272" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if Y_SIGN then fbs_found;
-- L0613@00B7 F55D003FC00000000000.  if Y_SIGN then fbs_found;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10101) then 010111010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
183 => '1' & '1' & '1' & "10101" & O"272" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- findNextCR(same);
-- L0614@00B8 E05E2F3FC00000000000.  findNextCR(same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010111100 else 010111100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
184 => '1' & '1' & '1' & "00000" & O"274" & O"274" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= inc, goto findBasLine;
-- L0615@00B9 FF002BBFE00000000000.  T <= inc, if false then next else findBasLine;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010101110, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
185 => '1' & '1' & '1' & "11111" & O"000" & O"256" & X"FF" & X"8" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- findNextCR(same);
-- L0616@00BA E05E2F3FC00000000000.fbs_found:  findNextCR(same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 010111100 else 010111100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
186 => '1' & '1' & '1' & "00000" & O"274" & O"274" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- LE <= T, back;
-- L0617@00BB E00100BFC00000000010.  LE <= T, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 1, PrgEnd <= 0, dummy = 000;
187 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '1' & '0' & O"0",

-- alu <= reset1;
-- L0619@00BC E000003FC00000000200.findNextCR:  alu <= reset1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
188 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00010" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ReadCore(T);
-- L0620@00BD E0B9DCFFC00060000000.fncr_loop:  ReadCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110011 else 101110011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
189 => '1' & '1' & '1' & "00000" & O"563" & O"563" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = CR, if MDR_EQU_DB then return;
-- L0621@00BE E5010003400000000000.  directByte = 0x0D, if MDR_EQU_DB then return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 000000010 else 000000000, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
190 => '1' & '1' & '1' & "00101" & O"002" & O"000" & X"0D" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = NULL, if MDR_EQU_DB then INTERNAL_ERR;
-- L0622@00BF E5998000000000000000.  directByte = 0x00, if MDR_EQU_DB then INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 100110011 else 000000000, directByte = 00000000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
191 => '1' & '1' & '1' & "00101" & O"463" & O"000" & X"00" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= inc, goto fncr_loop;
-- L0623@00C0 FF002F7FE00000000000.  T <= inc, if false then next else fncr_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 010111101, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
192 => '1' & '1' & '1' & "11111" & O"000" & O"275" & X"FF" & X"8" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= reset1;
-- L0625@00C1 E000003FC00000000200.findPrgEnd:  alu <= reset1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
193 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00010" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ReadCore(T);
-- L0626@00C2 E0B9DCFFC00060000000.fpend_loop:  ReadCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110011 else 101110011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
194 => '1' & '1' & '1' & "00000" & O"563" & O"563" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= Rx256_plus_MDR;
-- L0627@00C3 E000003FC00000001100.  alu <= Rx256_plus_MDR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
195 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if R_IS_ZERO then fpend_exit;
-- L0628@00C4 F363003FC00000000000.  if R_IS_ZERO then fpend_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10011) then 011000110 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
196 => '1' & '1' & '1' & "10011" & O"306" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= inc, goto fpend_loop;
-- L0629@00C5 FF0030BFE00000000000.  T <= inc, if false then next else fpend_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011000010, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
197 => '1' & '1' & '1' & "11111" & O"000" & O"302" & X"FF" & X"8" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- PrgEnd <= T, back;
-- L0630@00C6 E00100BFC00000000008.fpend_exit:  PrgEnd <= T, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 1, dummy = 000;
198 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '1' & O"0",

-- WriteCore(T, zero);
-- L0632@00C7 E0B8DC7FC00068000000.write2Nulls:  WriteCore(T, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110001 else 101110001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
199 => '1' & '1' & '1' & "00000" & O"561" & O"561" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "11" & O"2" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= inc;
-- L0633@00C8 E000003FE00000000000.  T <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
200 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"8" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- WriteCore(T, zero);
-- L0634@00C9 E0B8DC7FC00068000000.  WriteCore(T, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110001 else 101110001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
201 => '1' & '1' & '1' & "00000" & O"561" & O"561" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "11" & O"2" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- PrgEnd <= T, back;
-- L0635@00CA E00100BFC00000000008.  PrgEnd <= T, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 1, dummy = 000;
202 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '1' & O"0",

-- alu <= copy_setup;
-- L0637@00CB E000003FC00000001500.delBasLine:  alu <= copy_setup;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10101, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
203 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10101" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceALU();
-- L0638@00CC E0C5E2FFC00000000000.dbs_loop:  traceALU();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110001011 else 110001011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
204 => '1' & '1' & '1' & "00000" & O"613" & O"613" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= from_S;
-- L0639@00CD E000003FF40000000000.  T <= from_S;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1101, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
205 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"D" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ReadCore(T);
-- L0640@00CE E0B9DCFFC00060000000.  ReadCore(T);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110011 else 101110011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
206 => '1' & '1' & '1' & "00000" & O"563" & O"563" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= from_R;
-- L0641@00CF E000003FF80000000000.  T <= from_R;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1110, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
207 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"E" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- WriteCore(T, same);
-- L0642@00D0 E0B8DC7FC00060000000.  WriteCore(T, same);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110001 else 101110001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 11, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
208 => '1' & '1' & '1' & "00000" & O"561" & O"561" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "11" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= copy_next;
-- L0643@00D1 E000003FC00000001600.  alu <= copy_next;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10110, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
209 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10110" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if Y_ZERO then return else dbs_loop;
-- L0644@00D2 F401333FC00000000000.  if Y_ZERO then return else dbs_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10100) then 000000010 else 011001100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
210 => '1' & '1' & '1' & "10100" & O"002" & O"314" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto INTERNAL_ERR;
-- L0646@00D3 FF004CFFC00000000000.insLnBefore:  if false then next else INTERNAL_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100110011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
211 => '1' & '1' & '1' & "11111" & O"000" & O"463" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0651@00D4 E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
212 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 19;
-- L0652@00D5 E0C8E444C10000000000.  trace(from_microcode), directByte = 19;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00010011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
213 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"13" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if STACK_IS_EMPTY then RSTACK_ERR;
-- L0653@00D6 F19B803FC00000000000.  if STACK_IS_EMPTY then RSTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 100110111 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
214 => '1' & '1' & '1' & "10001" & O"467" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= RetStack, RetStack <= pop, goto fetch;
-- L0654@00D7 FF00037FC0E800000000.  IL_PC <= RetStack, RetStack <= pop, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 111, IL_OP <= 0, RetStack <= 10, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
215 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"7" & '0' & "10" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0659@00D8 E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
216 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 20;
-- L0660@00D9 E0C8E445010000000000.  trace(from_microcode), directByte = 20;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00010100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
217 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"14" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 3;
-- L0661@00DA E0C8E440C10000000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00000011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
218 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"03" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if STACK_IS_FULL then RSTACK_ERR;
-- L0662@00DB F09B803FC00000000000.  if STACK_IS_FULL then RSTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 100110111 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
219 => '1' & '1' & '1' & "10000" & O"467" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- RetStack <= push_IL_PC_PLUS_1, goto jump;
-- L0663@00DC FF00383FC00C00000000.  RetStack <= push_IL_PC_PLUS_1, if false then next else jump;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011100000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 11, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
220 => '1' & '1' & '1' & "11111" & O"000" & O"340" & X"FF" & X"0" & "00" & O"0" & '0' & "11" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0668@00DD E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
221 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 21;
-- L0669@00DE E0C8E445410000000000.  trace(from_microcode), directByte = 21;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00010101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
222 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"15" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 3;
-- L0670@00DF E0C8E440C10000000000.  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00000011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
223 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"03" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= direct11, goto fetch;
-- L0671@00E0 FF00037FC0C000000000.jump:  IL_PC <= direct11, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 110, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
224 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"6" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0676@00E1 E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
225 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 8;
-- L0677@00E2 E0C8E442010000000000.  trace(from_microcode), directByte = 8;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00001000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
226 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"08" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- InlEnd <= InLine_start;
-- L0678@00E3 E000003FC00001000000.gl:  InlEnd <= InLine_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
227 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "01" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if CHARIN_READY then next else repeat;
-- L0679@00E4 EB00007FC00000000000.gl_loop:  if CHARIN_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01011) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
228 => '1' & '1' & '1' & "01011" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if CHARIN_PRINTABLE then gl_print;
-- L0680@00E5 E975803FC00000000000.  if CHARIN_PRINTABLE then gl_print;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01001) then 011101011 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
229 => '1' & '1' & '1' & "01001" & O"353" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = CR, if CHARIN_EQU_DB then gl_cr;
-- L0681@00E6 EA7B8003400000000000.  directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 011110111 else 000000000, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
230 => '1' & '1' & '1' & "01010" & O"367" & O"000" & X"0D" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = BACKSPACE, if CHARIN_EQU_DB then gl_bs;
-- L0682@00E7 EA7A0002000000000000.  directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 011110100 else 000000000, directByte = 00001000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
231 => '1' & '1' & '1' & "01010" & O"364" & O"000" & X"08" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = ESC, if CHARIN_EQU_DB then gl_esc;
-- L0683@00E8 EA788006C00000000000.  directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01010) then 011110001 else 000000000, directByte = 00011011, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
232 => '1' & '1' & '1' & "01010" & O"361" & O"000" & X"1B" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = BEEP, outChar(from_microcode);
-- L0686@00E9 E0B75B81C00100000000.gl_ignore:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 00000111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
233 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"07" & X"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- gotChar = 1, goto gl_loop;
-- L0687@00EA FF00393FC00000008000.  gotChar = 1, if false then next else gl_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011100100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
234 => '1' & '1' & '1' & "11111" & O"000" & O"344" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if INLEND_MAX then gl_ignore;
-- L0689@00EB E774803FC00000000000.gl_print:  if INLEND_MAX then gl_ignore;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00111) then 011101001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
235 => '1' & '1' & '1' & "00111" & O"351" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outChar(from_charin);
-- L0690@00EC E0B75BBFC00180000000.  outChar(from_charin);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 011, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
236 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"3" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- WriteCore(InlEnd, CHARIN);
-- L0691@00ED E0B8DC7FC0002C000000.  WriteCore(InlEnd, CHARIN);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110001 else 101110001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
237 => '1' & '1' & '1' & "00000" & O"561" & O"561" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"3" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- InlEnd <= inc;
-- L0692@00EE E000003FC00002000000.  InlEnd <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
238 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "10" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- WriteCore(InlEnd, zero);
-- L0693@00EF E0B8DC7FC00028000000.gl_write0:  WriteCore(InlEnd, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110001 else 101110001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
239 => '1' & '1' & '1' & "00000" & O"561" & O"561" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"2" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- gotChar = 1, goto gl_loop;
-- L0694@00F0 FF00393FC00000008000.  gotChar = 1, if false then next else gl_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011100100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
240 => '1' & '1' & '1' & "11111" & O"000" & O"344" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = BEEP, outChar(from_microcode);
-- L0696@00F1 E0B75B81C00100000000.gl_esc:  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 00000111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
241 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"07" & X"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outCRLF();
-- L0697@00F2 E0B5DAFFC00000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101011 else 101101011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
242 => '1' & '1' & '1' & "00000" & O"553" & O"553" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- gotChar = 1, goto gl;
-- L0698@00F3 FF0038FFC00000008000.  gotChar = 1, if false then next else gl;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011100011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
243 => '1' & '1' & '1' & "11111" & O"000" & O"343" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if INLEND_MIN then gl_ignore;
-- L0700@00F4 E874803FC00000000000.gl_bs:  if INLEND_MIN then gl_ignore;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01000) then 011101001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
244 => '1' & '1' & '1' & "01000" & O"351" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = BACKSPACE, outChar(from_microcode);
-- L0701@00F5 E0B75B82000100000000.  directByte = 0x08, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 00001000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
245 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"08" & X"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- InlEnd <= dec, goto gl_write0;
-- L0702@00F6 FF003BFFC00003000000.  InlEnd <= dec, if false then next else gl_write0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 011101111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 11, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
246 => '1' & '1' & '1' & "11111" & O"000" & O"357" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "11" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- WriteCore(InlEnd, CHARIN);
-- L0704@00F7 E0B8DC7FC0002C000000.gl_cr:  WriteCore(InlEnd, CHARIN);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110001 else 101110001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 011, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
247 => '1' & '1' & '1' & "00000" & O"561" & O"561" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"3" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- InlEnd <= inc;
-- L0705@00F8 E000003FC00002000000.  InlEnd <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
248 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "10" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- WriteCore(InlEnd, zero);
-- L0706@00F9 E0B8DC7FC00028000000.  WriteCore(InlEnd, zero);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110001 else 101110001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 010, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
249 => '1' & '1' & '1' & "00000" & O"561" & O"561" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"2" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- dump_input();
-- L0707@00FA E0BADD7FC00000000000.  dump_input();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110101 else 101110101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
250 => '1' & '1' & '1' & "00000" & O"565" & O"565" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outCRLF();
-- L0708@00FB E0B5DAFFC00000000000.  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101011 else 101101011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
251 => '1' & '1' & '1' & "00000" & O"553" & O"553" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- gotChar = 1, BP <= Inline_start, goto fetch;
-- L0709@00FC FF00037FC00000208000.  gotChar = 1, BP <= Inline_start, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 001, SvPt <= 00, ExpStack <= 000, gotChar = 1, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
252 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"1" & "00" & O"0" & '1' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0714@00FD E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
253 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 7;
-- L0715@00FE E0C8E441C10000000000.  trace(from_microcode), directByte = 7;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00000111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
254 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"07" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= pc_plus_off6;
-- L0716@00FF E000003FC08000000000.  IL_PC <= pc_plus_off6;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 100, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
255 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"4" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceGoto;
-- L0717@0100 E0C8E447810000000000.br_exit:  trace(from_microcode), directByte = 30;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00011110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
256 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"1E" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0718@0101 FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
257 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0723@0102 E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
258 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 7;
-- L0724@0103 E0C8E441C10000000000.  trace(from_microcode), directByte = 7;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00000111, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
259 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"07" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto badop;
-- L0725@0104 FF0004BFC00000000000.  if false then next else badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000010010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
260 => '1' & '1' & '1' & "11111" & O"000" & O"022" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0730@0105 E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
261 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 17;
-- L0731@0106 E0C8E444410000000000.  trace(from_microcode), directByte = 17;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00010001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
262 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"11" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= IL_PC, BP <= save, skipSpaces();
-- L0732@0107 E0B3D9FFC40000800000.  T <= IL_PC, BP <= save, skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101100111 else 101100111, directByte = 11111111, T <= 0001, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 100, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
263 => '1' & '1' & '1' & "00000" & O"547" & O"547" & X"FF" & X"1" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"4" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 3;
-- L0733@0108 E0C8E440C10000000000.bc_loop:  trace(from_microcode), directByte = 3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00000011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
264 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"03" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ReadCore(BP);
-- L0734@0109 E0B9DCFFC00040000000.  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110011 else 101110011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
265 => '1' & '1' & '1' & "00000" & O"563" & O"563" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
-- L0735@010A F200443FC00000000000.  if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10010) then 000000000 else 100010000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
266 => '1' & '1' & '1' & "10010" & O"000" & O"420" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if ILCODEBYTE_BIT7 then bc_match;
-- L0736@010B E186803FC00000000000.  if ILCODEBYTE_BIT7 then bc_match;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00001) then 100001101 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
267 => '1' & '1' & '1' & "00001" & O"415" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- BP <= inc, IL_PC <= inc, goto bc_loop;
-- L0737@010C FF00423FC04000600000.  BP <= inc, IL_PC <= inc, if false then next else bc_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100001000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
268 => '1' & '1' & '1' & "11111" & O"000" & O"410" & X"FF" & X"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- BP <= inc, IL_PC <= inc;
-- L0738@010D E000003FC04000600000.bc_match:  BP <= inc, IL_PC <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
269 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceBP();
-- L0739@010E E0C2E17FC00000000000.  traceBP();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110000101 else 110000101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
270 => '1' & '1' & '1' & "00000" & O"605" & O"605" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0740@010F FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
271 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- BP <= restore, IL_PC <= T;
-- L0741@0110 E000003FC06000A00000.bc_exit:  BP <= restore, IL_PC <= T;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 011, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 101, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
272 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"3" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"5" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceBP();
-- L0742@0111 E0C2E17FC00000000000.  traceBP();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110000101 else 110000101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
273 => '1' & '1' & '1' & "00000" & O"605" & O"605" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= pc_plus_off5, goto br_exit;
-- L0743@0112 FF00403FC0A000000000.  IL_PC <= pc_plus_off5, if false then next else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
274 => '1' & '1' & '1' & "11111" & O"000" & O"400" & X"FF" & X"0" & "00" & O"5" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0748@0113 E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
275 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 16;
-- L0749@0114 E0C8E444010000000000.  trace(from_microcode), directByte = 16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00010000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
276 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"10" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- skipSpaces();
-- L0750@0115 E0B3D9FFC00000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101100111 else 101100111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
277 => '1' & '1' & '1' & "00000" & O"547" & O"547" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
-- L0751@0116 EF8C003FC00010000000.  MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01111) then 100011000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 100, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
278 => '1' & '1' & '1' & "01111" & O"430" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"4" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop else br_exit;
-- L0752@0117 FA09403FC0A000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11010) then 000010010 else 100000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
279 => '1' & '1' & '1' & "11010" & O"022" & O"400" & X"FF" & X"0" & "00" & O"5" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
-- L0753@0118 F09A803FDC0000000000.bv_exec:  T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 100110101 else 000000000, directByte = 11111111, T <= 0111, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
280 => '1' & '1' & '1' & "10000" & O"465" & O"000" & X"FF" & X"7" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= push_TByte, BP <= inc, goto fetch;
-- L0754@0119 FF00037FC00000650000.  ExpStack <= push_TByte, BP <= inc, if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 101, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
281 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"5" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0759@011A E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
282 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 14;
-- L0760@011B E0C8E443810000000000.  trace(from_microcode), directByte = 14;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00001110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
283 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"0E" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- skipSpaces();
-- L0761@011C E0B3D9FFC00000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101100111 else 101100111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
284 => '1' & '1' & '1' & "00000" & O"547" & O"547" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= reset0, if MDR_IS_NUM then bn_loop;
-- L0762@011D EE91003FC00000000100.  alu <= reset0, if MDR_IS_NUM then bn_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01110) then 100100010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
285 => '1' & '1' & '1' & "01110" & O"442" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
-- L0763@011E FA09003FC0A000000000.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11010) then 000010010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
286 => '1' & '1' & '1' & "11010" & O"022" & O"000" & X"FF" & X"0" & "00" & O"5" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceY();
-- L0764@011F E0C4623FC00000000000.bn_exit:  traceY();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110001000 else 110001000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
287 => '1' & '1' & '1' & "00000" & O"610" & O"610" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceGoto;
-- L0765@0120 E0C8E447810000000000.  trace(from_microcode), directByte = 30;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00011110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
288 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"1E" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto fetch;
-- L0766@0121 FF00037FC00000000000.  if false then next else fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000001101, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
289 => '1' & '1' & '1' & "11111" & O"000" & O"015" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= Yx10_plus_MDR, BP <= inc;
-- L0767@0122 E000003FC00000601000.bn_loop:  alu <= Yx10_plus_MDR, BP <= inc;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
290 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "10000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if ALU_OVERFLOW then OVERFLOW_ERR;
-- L0768@0123 F797803FC00000000000.  if ALU_OVERFLOW then OVERFLOW_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10111) then 100101111 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
291 => '1' & '1' & '1' & "10111" & O"457" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ReadCore(BP);
-- L0769@0124 E0B9DCFFC00040000000.  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110011 else 101110011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
292 => '1' & '1' & '1' & "00000" & O"563" & O"563" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if MDR_IS_NUM then bn_loop;
-- L0770@0125 EE91003FC00000000000.  if MDR_IS_NUM then bn_loop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (01110) then 100100010 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
293 => '1' & '1' & '1' & "01110" & O"442" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= from_Y, if STACK_IS_FULL then ESTACK_ERR;
-- L0771@0126 F09A803FD40000000000.  T <= from_Y, if STACK_IS_FULL then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10000) then 100110101 else 000000000, directByte = 11111111, T <= 0101, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
294 => '1' & '1' & '1' & "10000" & O"465" & O"000" & X"FF" & X"5" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= push_TWord, goto bn_exit;
-- L0772@0127 FF0047FFC00000040000.  ExpStack <= push_TWord, if false then next else bn_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100011111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
295 => '1' & '1' & '1' & "11111" & O"000" & O"437" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceSDepth;
-- L0777@0128 E0C8E44E010000000000.  trace(from_microcode), directByte = 56;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
296 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"38" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 13;
-- L0778@0129 E0C8E443410000000000.  trace(from_microcode), directByte = 13;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00001101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
297 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"0D" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- skipSpaces();
-- L0779@012A E0B3D9FFC00000000000.  skipSpaces();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101100111 else 101100111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
298 => '1' & '1' & '1' & "00000" & O"547" & O"547" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = CR, if MDR_EQU_DB then fetch;
-- L0780@012B E5068003400000000000.  directByte = 0x0D, if MDR_EQU_DB then fetch;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 000001101 else 000000000, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
299 => '1' & '1' & '1' & "00101" & O"015" & O"000" & X"0D" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= pc_plus_off5, goto br_exit;
-- L0781@012C FF00403FC0A000000000.  IL_PC <= pc_plus_off5, if false then next else br_exit;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 101, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
300 => '1' & '1' & '1' & "11111" & O"000" & O"400" & X"FF" & X"0" & "00" & O"5" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 57;
-- L0785@012D E0C8E44E410000000000.DIVBY0_ERR:  trace(from_microcode), directByte = 57;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
301 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"39" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto traceError;
-- L0786@012E FF004E3FC00000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100111000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
302 => '1' & '1' & '1' & "11111" & O"000" & O"470" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 58;
-- L0787@012F E0C8E44E810000000000.OVERFLOW_ERR:  trace(from_microcode), directByte = 58;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
303 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"3A" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto traceError;
-- L0788@0130 FF004E3FC00000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100111000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
304 => '1' & '1' & '1' & "11111" & O"000" & O"470" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 61;
-- L0789@0131 E0C8E44F410000000000.STRING_ERR:  trace(from_microcode), directByte = 61;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
305 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"3D" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto traceError;
-- L0790@0132 FF004E3FC00000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100111000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
306 => '1' & '1' & '1' & "11111" & O"000" & O"470" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 62;
-- L0791@0133 E0C8E44F810000000000.INTERNAL_ERR:  trace(from_microcode), directByte = 62;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111110, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
307 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"3E" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto traceError;
-- L0792@0134 FF004E3FC00000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100111000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
308 => '1' & '1' & '1' & "11111" & O"000" & O"470" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 60;
-- L0793@0135 E0C8E44F010000000000.ESTACK_ERR:  trace(from_microcode), directByte = 60;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111100, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
309 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"3C" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto traceError;
-- L0794@0136 FF004E3FC00000000000.  if false then next else traceError;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 100111000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
310 => '1' & '1' & '1' & "11111" & O"000" & O"470" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 59;
-- L0795@0137 E0C8E44EC10000000000.RSTACK_ERR:  trace(from_microcode), directByte = 59;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00111011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
311 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"3B" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outCRLF();
-- L0796@0138 E0B5DAFFC00000000000.traceError:  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101011 else 101101011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
312 => '1' & '1' & '1' & "00000" & O"553" & O"553" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- trace(crlf);
-- L0797@0139 E0C8E47FC30000000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 11111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
313 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"FF" & X"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = BEEP, outChar(from_microcode);
-- L0798@013A E0B75B81C00100000000.  directByte = 0x07, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 00000111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
314 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"07" & X"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = 'E', outChar(from_microcode);
-- L0799@013B E0B75B91400100000000.  directByte = 'E', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 01000101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
315 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"45" & X"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = 'R', outChar(from_microcode);
-- L0800@013C E0B75B94800100000000.  directByte = 'R', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 01010010, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
316 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"52" & X"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = 'R', outChar(from_microcode);
-- L0801@013D E0B75B94800100000000.  directByte = 'R', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 01010010, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
317 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"52" & X"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = ' ', outChar(from_microcode);
-- L0802@013E E0B75B88000100000000.  directByte = ' ', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 00100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
318 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"20" & X"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = '#', outChar(from_microcode), T <= IL_PC;
-- L0803@013F E0B75B88C40100000000.  directByte = '#', outChar(from_microcode), T <= IL_PC;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 00100011, T <= 0001, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
319 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"23" & X"1" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= dec;
-- L0804@0140 E000003FE40000000000.  T <= dec;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1001, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
320 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"9" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= R_fromT, printDecR();
-- L0805@0141 E0A8D47FC00000001300.  alu <= R_fromT, printDecR();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101010001 else 101010001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
321 => '1' & '1' & '1' & "00000" & O"521" & O"521" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10011" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if IS_RUNMODE then next else err_done;
-- L0806@0142 FC00527FC00000000000.  if IS_RUNMODE then next else err_done;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11100) then 000000000 else 101001001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
322 => '1' & '1' & '1' & "11100" & O"000" & O"511" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = ' ', outChar(from_microcode);
-- L0807@0143 E0B75B88000100000000.  directByte = ' ', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 00100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
323 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"20" & X"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = 'A', outChar(from_microcode);
-- L0808@0144 E0B75B90400100000000.  directByte = 'A', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 01000001, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
324 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"41" & X"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = 'T', outChar(from_microcode);
-- L0809@0145 E0B75B95000100000000.  directByte = 'T', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 01010100, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
325 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"54" & X"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = ' ', outChar(from_microcode), alu <= S_fromLino;
-- L0810@0146 E0B75B88000100001400.  directByte = ' ', outChar(from_microcode), alu <= S_fromLino;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 00100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
326 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"20" & X"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10100" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= from_S;
-- L0811@0147 E000003FF40000000000.  T <= from_S;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1101, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
327 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"D" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= R_fromT, printDecR();
-- L0812@0148 E0A8D47FC00000001300.  alu <= R_fromT, printDecR();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101010001 else 101010001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 10011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
328 => '1' & '1' & '1' & "00000" & O"521" & O"521" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "10011" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outCRLF();
-- L0813@0149 E0B5DAFFC00000000000.err_done:  outCRLF();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101011 else 101101011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
329 => '1' & '1' & '1' & "00000" & O"553" & O"553" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- trace(crlf);
-- L0814@014A E0C8E47FC30000000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 11111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
330 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"FF" & X"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- goto WarmStart;
-- L0815@014B FF0001FFC00000000000.  if false then next else WarmStart;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 000000111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
331 => '1' & '1' & '1' & "11111" & O"000" & O"007" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= R_fromStack;
-- L0818@014C E000003FC00000000300.pullRS:  alu <= R_fromStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
332 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR;
-- L0819@014D F19A803FC00000060000.  ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 100110101 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
333 => '1' & '1' & '1' & "10001" & O"465" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= S_fromStack;
-- L0820@014E E000003FC00000000400.  alu <= S_fromStack;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00100, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
334 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00100" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR else return;
-- L0821@014F F19A80BFC00000060000.  ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10001) then 100110101 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
335 => '1' & '1' & '1' & "10001" & O"465" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= R_fromStack, ExpStack <= pop2;
-- L0824@0150 E000003FC00000060300.printDec:  alu <= R_fromStack, ExpStack <= pop2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
336 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00011" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= bcd_start;
-- L0825@0151 E000003FC00000000A00.printDecR:  alu <= bcd_start;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01010, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
337 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01010" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= bcd_next, if ALU_READY then next else repeat;
-- L0826@0152 F600007FC00000000B00.  alu <= bcd_next, if ALU_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (10110) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01011, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
338 => '1' & '1' & '1' & "10110" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01011" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceY();
-- L0827@0153 E0C4623FC00000000000.  traceY();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110001000 else 110001000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
339 => '1' & '1' & '1' & "00000" & O"610" & O"610" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if ALU_SIGN then next else pn_5;
-- L0828@0154 F80055BFC00000000000.  if ALU_SIGN then next else pn_5;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11000) then 000000000 else 101010110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
340 => '1' & '1' & '1' & "11000" & O"000" & O"526" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = '-', outChar(from_microcode);
-- L0829@0155 E0B75B8B400100000000.  directByte = '-', outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 00101101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
341 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"2D" & X"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if LEADING_ZERO then pn_4;
-- L0830@0156 FBAC003FC00000000000.pn_5:  if LEADING_ZERO then pn_4;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 101011000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
342 => '1' & '1' & '1' & "11011" & O"530" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outChar(from_YtoAlpha);
-- L0831@0157 E0B75BBFC00280000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
343 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= Yx16;
-- L0832@0158 E000003FC00000000900.pn_4:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
344 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if LEADING_ZERO then pn_3;
-- L0833@0159 FBAD803FC00000000000.  if LEADING_ZERO then pn_3;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 101011011 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
345 => '1' & '1' & '1' & "11011" & O"533" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outChar(from_YtoAlpha);
-- L0834@015A E0B75BBFC00280000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
346 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= Yx16;
-- L0835@015B E000003FC00000000900.pn_3:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
347 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if LEADING_ZERO then pn_2;
-- L0836@015C FBAF003FC00000000000.  if LEADING_ZERO then pn_2;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 101011110 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
348 => '1' & '1' & '1' & "11011" & O"536" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outChar(from_YtoAlpha);
-- L0837@015D E0B75BBFC00280000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
349 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= Yx16;
-- L0838@015E E000003FC00000000900.pn_2:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
350 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if LEADING_ZERO then pn_1;
-- L0839@015F FBB0803FC00000000000.  if LEADING_ZERO then pn_1;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 101100001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
351 => '1' & '1' & '1' & "11011" & O"541" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outChar(from_YtoAlpha);
-- L0840@0160 E0B75BBFC00280000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
352 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= Yx16;
-- L0841@0161 E000003FC00000000900.pn_1:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
353 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if LEADING_ZERO then pn_0;
-- L0842@0162 FBB2003FC00000000000.  if LEADING_ZERO then pn_0;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11011) then 101100100 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
354 => '1' & '1' & '1' & "11011" & O"544" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outChar(from_YtoAlpha);
-- L0843@0163 E0B75BBFC00280000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
355 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- alu <= Yx16;
-- L0844@0164 E000003FC00000000900.pn_0:  alu <= Yx16;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 01001, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
356 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "01001" & '0' & '0' & '0' & '0' & '0' & O"0",

-- outChar(from_YtoAlpha);
-- L0845@0165 E0B75BBFC00280000000.  outChar(from_YtoAlpha);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 101, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
357 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"5" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- back;
-- L0846@0166 E00100BFC00000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
358 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ReadCore(BP);
-- L0848@0167 E0B9DCFFC00040000000.skipSpaces:  ReadCore(BP);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110011 else 101110011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 10, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
359 => '1' & '1' & '1' & "00000" & O"563" & O"563" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "10" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = ' ', if MDR_EQU_DB then skipSp;
-- L0849@0168 E5B50008000000000000.  directByte = ' ', if MDR_EQU_DB then skipSp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 101101010 else 000000000, directByte = 00100000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
360 => '1' & '1' & '1' & "00101" & O"552" & O"000" & X"20" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = TAB, if MDR_EQU_DB then skipSp else return;
-- L0850@0169 E5B50082400000000000.  directByte = 0x09, if MDR_EQU_DB then skipSp else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 101101010 else 000000010, directByte = 00001001, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
361 => '1' & '1' & '1' & "00101" & O"552" & O"002" & X"09" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- BP <= inc, goto  skipSpaces;
-- L0851@016A FF0059FFC00000600000.skipSp:  BP <= inc, if false then next else  skipSpaces;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101100111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 011, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
362 => '1' & '1' & '1' & "11111" & O"000" & O"547" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"3" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = CR, outChar(from_microcode);
-- L0853@016B E0B75B83400100000000.outCRLF:  directByte = 0x0D, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 00001101, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
363 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"0D" & X"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = LF, outChar(from_microcode);
-- L0854@016C E0B75B82800100000000.  directByte = 0x0A, outChar(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101101110 else 101101110, directByte = 00001010, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 010, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
364 => '1' & '1' & '1' & "00000" & O"556" & O"556" & X"0A" & X"0" & "00" & O"0" & '0' & "00" & O"2" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- back;
-- L0855@016D E00100BFC00000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
365 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if CHAROUT_READY then next else repeat;
-- L0857@016E E200007FC00000000000.outChar:  if CHAROUT_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00010) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
366 => '1' & '1' & '1' & "00010" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if CHAROUT_READY then next else repeat;
-- L0858@016F E200007FC00000000000.  if CHAROUT_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00010) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
367 => '1' & '1' & '1' & "00010" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- back;
-- L0859@0170 E00100BFC00000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
368 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- nBUSREQ = 0, if nBUSACK then repeat else next;
-- L0861@0171 6600803FC00000000000.WriteCore:  nBUSREQ = 0, if nBUSACK then repeat else next;
--  nBUSREQ = 0, nWR = 1, nRD = 1, if (00110) then 000000001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
369 => '0' & '1' & '1' & "00110" & O"001" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- nBUSREQ = 0, nWR = 0, back;
-- L0862@0172 200100BFC00000000000.  nBUSREQ = 0, nWR = 0, if true then return else return;
--  nBUSREQ = 0, nWR = 0, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
370 => '0' & '0' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- nBUSREQ = 0, if nBUSACK then repeat else next;
-- L0864@0173 6600803FC00000000000.ReadCore:  nBUSREQ = 0, if nBUSACK then repeat else next;
--  nBUSREQ = 0, nWR = 1, nRD = 1, if (00110) then 000000001 else 000000000, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
371 => '0' & '1' & '1' & "00110" & O"001" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- nBUSREQ = 0, nRD = 0, MDR <= from_Bus, back;
-- L0865@0174 400100BFC00004000000.  nBUSREQ = 0, nRD = 0, MDR <= from_Bus, if true then return else return;
--  nBUSREQ = 0, nWR = 1, nRD = 0, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 001, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
372 => '0' & '1' & '0' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"1" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- InlEnd <= InLine_start, trace(crlf);
-- L0869@0175 E0C8E47FC30001000000.dump_input:  InlEnd <= InLine_start, trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 11111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 01, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
373 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"FF" & X"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "01" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ReadCore(InlEnd);
-- L0870@0176 E0B9DCFFC00020000000.dump_inlp:  ReadCore(InlEnd);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 101110011 else 101110011, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 01, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
374 => '1' & '1' & '1' & "00000" & O"563" & O"563" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "01" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = 9, trace(from_microcode);
-- L0871@0177 E0C8E442410000000000.  directByte = 9, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00001001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
375 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"09" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = NULL, if MDR_EQU_DB then dump_inex;
-- L0872@0178 E5BD0000000000000000.  directByte = 0x00, if MDR_EQU_DB then dump_inex;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00101) then 101111010 else 000000000, directByte = 00000000, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
376 => '1' & '1' & '1' & "00101" & O"572" & O"000" & X"00" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- InlEnd <= inc, goto dump_inlp;
-- L0873@0179 FF005DBFC00002000000.  InlEnd <= inc, if false then next else dump_inlp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101110110, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 10, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
377 => '1' & '1' & '1' & "11111" & O"000" & O"566" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "10" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- trace(crlf);
-- L0874@017A E0C8E47FC30000000000.dump_inex:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 11111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
378 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"FF" & X"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- back;
-- L0875@017B E00100BFC00000000000.  if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
379 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = 1, trace(from_microcode);
-- L0877@017C E0C8E440410000000000.dump_il:  directByte = 1, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00000001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
380 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"01" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- trace(crlf);
-- L0878@017D E0C8E47FC30000000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 11111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
381 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"FF" & X"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= IL_PC, IL_PC <= zero;
-- L0879@017E E000003FC42000000000.  T <= IL_PC, IL_PC <= zero;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0001, DBGINDEX <= 00, IL_PC <= 001, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
382 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"1" & "00" & O"1" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if IL_A_VALID then next else dump_il_ex;
-- L0880@017F E300613FC00000000000.dump_il_lp:  if IL_A_VALID then next else dump_il_ex;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00011) then 000000000 else 110000100, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
383 => '1' & '1' & '1' & "00011" & O"000" & O"604" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = 2, trace(from_microcode);
-- L0881@0180 E0C8E440810000000000.  directByte = 2, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00000010, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
384 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"02" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- directByte = 3, trace(from_microcode);
-- L0882@0181 E0C8E440C10000000000.  directByte = 3, trace(from_microcode);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00000011, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
385 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"03" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- trace(crlf);
-- L0883@0182 E0C8E47FC30000000000.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 11111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
386 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"FF" & X"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= inc, goto dump_il_lp;
-- L0884@0183 FF005FFFC04000000000.  IL_PC <= inc, if false then next else dump_il_lp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (11111) then 000000000 else 101111111, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 010, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
387 => '1' & '1' & '1' & "11111" & O"000" & O"577" & X"FF" & X"0" & "00" & O"2" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- IL_PC <= T, back;
-- L0885@0184 E00100BFC06000000000.dump_il_ex:  IL_PC <= T, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 011, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
388 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "00" & O"3" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= push_TWord, T <= BP;
-- L0887@0185 E000003FE80000040000.traceBP:  ExpStack <= push_TWord, T <= BP;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 1010, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
389 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"A" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 33;
-- L0888@0186 E0C8E448410000000000.  trace(from_microcode), directByte = 33;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00100001, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
390 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"21" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= ExpStack, ExpStack <= pop2, back;
-- L0889@0187 E00100BFD00000060000.  T <= ExpStack, ExpStack <= pop2, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0100, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
391 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"4" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= push_TWord, T <= from_Y;
-- L0891@0188 E000003FD40000040000.traceY:  ExpStack <= push_TWord, T <= from_Y;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0101, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
392 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"5" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- traceString 32;
-- L0892@0189 E0C8E448010000000000.  trace(from_microcode), directByte = 32;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00100000, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
393 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"20" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= ExpStack, ExpStack <= pop2, back;
-- L0893@018A E00100BFD00000060000.  T <= ExpStack, ExpStack <= pop2, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0100, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
394 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"4" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- trace(crlf);
-- L0895@018B E0C8E47FC30000000000.traceALU:  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 11111111, T <= 0000, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
395 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"FF" & X"0" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- ExpStack <= push_TWord, traceT;
-- L0896@018C E0C8E44D410000040000.  ExpStack <= push_TWord, trace(from_microcode), directByte = 53;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00110101, T <= 0000, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 100, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
396 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"35" & X"0" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"4" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= from_S, traceString 54;
-- L0897@018D E0C8E44DB50000000000.  T <= from_S, trace(from_microcode), directByte = 54;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00110110, T <= 1101, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
397 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"36" & X"D" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= from_R, traceString 55;
-- L0898@018E E0C8E44DF90000000000.  T <= from_R, trace(from_microcode), directByte = 55;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00110111, T <= 1110, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
398 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"37" & X"E" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= from_Y, traceString 32;
-- L0899@018F E0C8E448150000000000.  T <= from_Y, trace(from_microcode), directByte = 32;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 110010001 else 110010001, directByte = 00100000, T <= 0101, DBGINDEX <= 01, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
399 => '1' & '1' & '1' & "00000" & O"621" & O"621" & X"20" & X"5" & "01" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- T <= ExpStack, ExpStack <= pop2, DBGINDEX <= crlf;
-- L0900@0190 E000003FD30000060000.  T <= ExpStack, ExpStack <= pop2, DBGINDEX <= crlf;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000000 else 000000000, directByte = 11111111, T <= 0100, DBGINDEX <= 11, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 110, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
400 => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"4" & "11" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"6" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if DBG_READY then next else repeat;
-- L0901@0191 E400007FC00000000000.trace:  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
401 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if DBG_READY then next else repeat;
-- L0902@0192 E400007FC00000000000.  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
402 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- if DBG_READY then next else repeat;
-- L0903@0193 E400007FC00000000000.  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00100) then 000000000 else 000000001, directByte = 11111111, T <= 0000, DBGINDEX <= 00, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
403 => '1' & '1' & '1' & "00100" & O"000" & O"001" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- DBGINDEX <= zero, back;
-- L0904@0194 E00100BFC20000000000.  DBGINDEX <= zero, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (00000) then 000000010 else 000000010, directByte = 11111111, T <= 0000, DBGINDEX <= 10, IL_PC <= 000, IL_OP <= 0, RetStack <= 00, CHAROUT <= 000, MAR <= 00, MDR <= 000, InlEnd <= 00, BP <= 000, SvPt <= 00, ExpStack <= 000, gotChar = 0, Vars <= 00, alu <= 00000, Lino <= 0, BE <= 0, LS <= 0, LE <= 0, PrgEnd <= 0, dummy = 000;
404 => '1' & '1' & '1' & "00000" & O"002" & O"002" & X"FF" & X"0" & "10" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0",

-- 107 location(s) in following ranges will be filled with default value
-- 0195 .. 01FF

others => '1' & '1' & '1' & "00000" & O"000" & O"000" & X"FF" & X"0" & "00" & O"0" & '0' & "00" & O"0" & "00" & O"0" & "00" & O"0" & "00" & O"0" & '0' & "00" & "00000" & '0' & '0' & '0' & '0' & '0' & O"0"
);

end microBasic_code;

