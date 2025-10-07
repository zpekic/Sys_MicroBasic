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
constant CODE_DATA_WIDTH: 	positive := 48;
constant CODE_ADDRESS_WIDTH: 	positive := 9;
constant CODE_ADDRESS_LAST: 	positive := 511;
constant CODE_IF_WIDTH: 	positive := 4;


type mb_code_memory is array(0 to 511) of std_logic_vector(47 downto 0);

signal mb_uinstruction: std_logic_vector(47 downto 0);

--mb_uinstruction <= mb_microcode(to_integer(unsigned(TODO))); -- copy to file containing the control unit. TODO is typically replace with 'ui_address' control unit output

--
-- L0011.nBUSREQ: .valfield 1 values 0, 1 default 1;
--
alias mb_nBUSREQ: 	std_logic is mb_uinstruction(47);
-- Value '0' allowed
-- Value '1' allowed
---- Start boilerplate code (use with utmost caution!)
--  nBUSREQ <= mb_nBUSREQ;
---- End boilerplate code

--
-- L0012.nWR: .valfield 1 values 0, 1 default 1;
--
alias mb_nWR: 	std_logic is mb_uinstruction(46);
-- Value '0' allowed
-- Value '1' allowed
---- Start boilerplate code (use with utmost caution!)
--  nWR <= mb_nWR;
---- End boilerplate code

--
-- L0013.nRD: .valfield 1 values 0, 1 default 1;
--
alias mb_nRD: 	std_logic is mb_uinstruction(45);
-- Value '0' allowed
-- Value '1' allowed
---- Start boilerplate code (use with utmost caution!)
--  nRD <= mb_nRD;
---- End boilerplate code

--
-- L0019.seq_cond: .if 4 values true, nWAIT, nBUSACK, IL_PC_VALID, DBG_READY, dummy_5, dummy_6, dummy_7, dummy_8, dummy_9, dummy_A, dummy_B, dummy_C, dummy_D, dummy_E, false default true;
--
alias mb_seq_cond: 	std_logic_vector(3 downto 0) is mb_uinstruction(44 downto 41);
constant seq_cond_true: 	integer := 0;
constant seq_cond_nWAIT: 	integer := 1;
constant seq_cond_nBUSACK: 	integer := 2;
constant seq_cond_IL_PC_VALID: 	integer := 3;
constant seq_cond_DBG_READY: 	integer := 4;
constant seq_cond_dummy_5: 	integer := 5;
constant seq_cond_dummy_6: 	integer := 6;
constant seq_cond_dummy_7: 	integer := 7;
constant seq_cond_dummy_8: 	integer := 8;
constant seq_cond_dummy_9: 	integer := 9;
constant seq_cond_dummy_A: 	integer := 10;
constant seq_cond_dummy_B: 	integer := 11;
constant seq_cond_dummy_C: 	integer := 12;
constant seq_cond_dummy_D: 	integer := 13;
constant seq_cond_dummy_E: 	integer := 14;
constant seq_cond_false: 	integer := 15;
---- Start boilerplate code (use with utmost caution!)
---- include '.controller <filename.vhd>, <stackdepth>;' in .mcc file to generate pre-canned microcode control unit and feed 'conditions' with:
--  cond(seq_cond_true) => '1',
--  cond(seq_cond_nWAIT) => nWAIT,
--  cond(seq_cond_nBUSACK) => nBUSACK,
--  cond(seq_cond_IL_PC_VALID) => IL_PC_VALID,
--  cond(seq_cond_DBG_READY) => DBG_READY,
--  cond(seq_cond_dummy_5) => dummy_5,
--  cond(seq_cond_dummy_6) => dummy_6,
--  cond(seq_cond_dummy_7) => dummy_7,
--  cond(seq_cond_dummy_8) => dummy_8,
--  cond(seq_cond_dummy_9) => dummy_9,
--  cond(seq_cond_dummy_A) => dummy_A,
--  cond(seq_cond_dummy_B) => dummy_B,
--  cond(seq_cond_dummy_C) => dummy_C,
--  cond(seq_cond_dummy_D) => dummy_D,
--  cond(seq_cond_dummy_E) => dummy_E,
--  cond(seq_cond_false) => '0',
---- End boilerplate code

--
-- L0037.seq_then: .then 9 values next, repeat, return, fork, @ default next;
--
alias mb_seq_then: 	std_logic_vector(8 downto 0) is mb_uinstruction(40 downto 32);
constant seq_then_next: 	std_logic_vector(8 downto 0) := O"000";
constant seq_then_repeat: 	std_logic_vector(8 downto 0) := O"001";
constant seq_then_return: 	std_logic_vector(8 downto 0) := O"002";
constant seq_then_fork: 	std_logic_vector(8 downto 0) := O"003";
-- Jump targets allowed!
-- include '.controller <filename.vhd>, <stackdepth>;' in .mcc file to generate pre-canned microcode control unit and connect 'then' to mb_seq_then

--
-- L0038.seq_else: .else 9 values next, repeat, return, fork, 0b000000..0b111111, @ default next;
--
alias mb_seq_else: 	std_logic_vector(8 downto 0) is mb_uinstruction(31 downto 23);
constant seq_else_next: 	std_logic_vector(8 downto 0) := O"000";
constant seq_else_repeat: 	std_logic_vector(8 downto 0) := O"001";
constant seq_else_return: 	std_logic_vector(8 downto 0) := O"002";
constant seq_else_fork: 	std_logic_vector(8 downto 0) := O"003";
-- Values from O"000" to O"077" allowed
-- Jump targets allowed!
-- include '.controller <filename.vhd>, <stackdepth>;' in .mcc file to generate pre-canned microcode control unit and connect 'else' to mb_seq_else

--
-- L0041.directByte: .valfield 8 values 0x00..0xFF default 0xFF;
--
alias mb_directByte: 	std_logic_vector(7 downto 0) is mb_uinstruction(22 downto 15);
-- Values from X"00" to X"FF" allowed
---- Start boilerplate code (use with utmost caution!)
--  directByte <= mb_directByte;
---- End boilerplate code

--
-- L0044.T: .regfield 2 values same, IL_PC, -, - default same;
--
alias mb_T: 	std_logic_vector(1 downto 0) is mb_uinstruction(14 downto 13);
constant T_same: 	std_logic_vector(1 downto 0) := "00";
constant T_IL_PC: 	std_logic_vector(1 downto 0) := "01";
-- Value "10" not allowed (name '-' is not assignable)
-- Value "11" not allowed (name '-' is not assignable)
---- Start boilerplate code (use with utmost caution!)
-- update_T: process(clk, mb_T)
-- begin
--	if (rising_edge(clk)) then
--		case mb_T is
----			when T_same =>
----				T <= T;
--			when T_IL_PC =>
--				T <= IL_PC;
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0052.DBGCHAR: .regfield 2 values same, directByte, zero, - default same;
--
alias mb_DBGCHAR: 	std_logic_vector(1 downto 0) is mb_uinstruction(12 downto 11);
constant DBGCHAR_same: 	std_logic_vector(1 downto 0) := "00";
constant DBGCHAR_directByte: 	std_logic_vector(1 downto 0) := "01";
constant DBGCHAR_zero: 	std_logic_vector(1 downto 0) := "10";
-- Value "11" not allowed (name '-' is not assignable)
---- Start boilerplate code (use with utmost caution!)
-- update_DBGCHAR: process(clk, mb_DBGCHAR)
-- begin
--	if (rising_edge(clk)) then
--		case mb_DBGCHAR is
----			when DBGCHAR_same =>
----				DBGCHAR <= DBGCHAR;
--			when DBGCHAR_directByte =>
--				DBGCHAR <= directByte;
--			when DBGCHAR_zero =>
--				DBGCHAR <= (others => '0');
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0060.IL_PC: .regfield 3 values same, zero, inc, T, -, -, -, - default same;
--
alias mb_IL_PC: 	std_logic_vector(2 downto 0) is mb_uinstruction(10 downto 8);
constant IL_PC_same: 	std_logic_vector(2 downto 0) := O"0";
constant IL_PC_zero: 	std_logic_vector(2 downto 0) := O"1";
constant IL_PC_inc: 	std_logic_vector(2 downto 0) := O"2";
constant IL_PC_T: 	std_logic_vector(2 downto 0) := O"3";
-- Value O"4" not allowed (name '-' is not assignable)
-- Value O"5" not allowed (name '-' is not assignable)
-- Value O"6" not allowed (name '-' is not assignable)
-- Value O"7" not allowed (name '-' is not assignable)
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
--			when others =>
--				null;
--		end case;
-- end if;
-- end process;
---- End boilerplate code

--
-- L0072.dummy: .valfield 8 values * default 0;
--
alias mb_dummy: 	std_logic_vector(7 downto 0) is mb_uinstruction(7 downto 0);
-- Values from X"00" to X"FF" allowed
---- Start boilerplate code (use with utmost caution!)
--  dummy <= mb_dummy;
---- End boilerplate code



constant mb_microcode: mb_code_memory := (

-- clear;
-- L0090@0000 E000007F9100._reset:  DBGCHAR <= zero, IL_PC <= zero;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGCHAR <= 10, IL_PC <= 001, dummy = 00000000;
0 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "10" & O"1" & X"00",

-- clear;
-- L0092@0001 E000007F9100._reset1:  DBGCHAR <= zero, IL_PC <= zero;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGCHAR <= 10, IL_PC <= 001, dummy = 00000000;
1 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "10" & O"1" & X"00",

-- clear;
-- L0094@0002 E000007F9100._reset2:  DBGCHAR <= zero, IL_PC <= zero;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGCHAR <= 10, IL_PC <= 001, dummy = 00000000;
2 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "10" & O"1" & X"00",

-- clear;
-- L0096@0003 E000007F9100._reset3:  DBGCHAR <= zero, IL_PC <= zero;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGCHAR <= 10, IL_PC <= 001, dummy = 00000000;
3 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "10" & O"1" & X"00",

-- dump_il();
-- L0100@0004 E00703FF8000.  dump_il();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000111 else 000000111, directByte = 11111111, T <= 00, DBGCHAR <= 00, IL_PC <= 000, dummy = 00000000;
4 => '1' & '1' & '1' & X"0" & O"007" & O"007" & X"FF" & "00" & "00" & O"0" & X"00",

-- goto deadloop;
-- L0101@0005 FE0002FF8000.deadloop:  if false then next else deadloop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000000101, directByte = 11111111, T <= 00, DBGCHAR <= 00, IL_PC <= 000, dummy = 00000000;
5 => '1' & '1' & '1' & X"F" & O"000" & O"005" & X"FF" & "00" & "00" & O"0" & X"00",

-- goto deadloop;
-- L0104@0006 FE0002FF8000.  if false then next else deadloop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000000101, directByte = 11111111, T <= 00, DBGCHAR <= 00, IL_PC <= 000, dummy = 00000000;
6 => '1' & '1' & '1' & X"F" & O"000" & O"005" & X"FF" & "00" & "00" & O"0" & X"00",

-- T <= IL_PC, directByte = "I", DBGCHAR <= directByte, dbg_out();
-- L0108@0007 E0160B24A800.dump_il:  T <= IL_PC, directByte = "I", DBGCHAR <= directByte, dbg_out();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000010110 else 000010110, directByte = 01001001, T <= 01, DBGCHAR <= 01, IL_PC <= 000, dummy = 00000000;
7 => '1' & '1' & '1' & X"0" & O"026" & O"026" & X"49" & "01" & "01" & O"0" & X"00",

-- IL_PC <= zero, directByte = "L", DBGCHAR <= directByte, dbg_out();
-- L0109@0008 E0160B260900.  IL_PC <= zero, directByte = "L", DBGCHAR <= directByte, dbg_out();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000010110 else 000010110, directByte = 01001100, T <= 00, DBGCHAR <= 01, IL_PC <= 001, dummy = 00000000;
8 => '1' & '1' & '1' & X"0" & O"026" & O"026" & X"4C" & "00" & "01" & O"1" & X"00",

-- dbg_crlf();
-- L0110@0009 E0140A7F8000.  dbg_crlf();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000010100 else 000010100, directByte = 11111111, T <= 00, DBGCHAR <= 00, IL_PC <= 000, dummy = 00000000;
9 => '1' & '1' & '1' & X"0" & O"024" & O"024" & X"FF" & "00" & "00" & O"0" & X"00",

-- if IL_PC_VALID then next else dump_il_ex;
-- L0111@000A E60009FF8000.dump_il_lp:  if IL_PC_VALID then next else dump_il_ex;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0011) then 000000000 else 000010011, directByte = 11111111, T <= 00, DBGCHAR <= 00, IL_PC <= 000, dummy = 00000000;
10 => '1' & '1' & '1' & X"3" & O"000" & O"023" & X"FF" & "00" & "00" & O"0" & X"00",

-- directByte = 0x80, DBGCHAR <= directByte, dbg_out();
-- L0112@000B E0160B400800.  directByte = 0x80, DBGCHAR <= directByte, dbg_out();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000010110 else 000010110, directByte = 10000000, T <= 00, DBGCHAR <= 01, IL_PC <= 000, dummy = 00000000;
11 => '1' & '1' & '1' & X"0" & O"026" & O"026" & X"80" & "00" & "01" & O"0" & X"00",

-- directByte = 0x81, DBGCHAR <= directByte, dbg_out();
-- L0113@000C E0160B408800.  directByte = 0x81, DBGCHAR <= directByte, dbg_out();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000010110 else 000010110, directByte = 10000001, T <= 00, DBGCHAR <= 01, IL_PC <= 000, dummy = 00000000;
12 => '1' & '1' & '1' & X"0" & O"026" & O"026" & X"81" & "00" & "01" & O"0" & X"00",

-- directByte = 0x82, DBGCHAR <= directByte, dbg_out();
-- L0114@000D E0160B410800.  directByte = 0x82, DBGCHAR <= directByte, dbg_out();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000010110 else 000010110, directByte = 10000010, T <= 00, DBGCHAR <= 01, IL_PC <= 000, dummy = 00000000;
13 => '1' & '1' & '1' & X"0" & O"026" & O"026" & X"82" & "00" & "01" & O"0" & X"00",

-- directByte = " ", DBGCHAR <= directByte, dbg_out();
-- L0115@000E E0160B100800.  directByte = " ", DBGCHAR <= directByte, dbg_out();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000010110 else 000010110, directByte = 00100000, T <= 00, DBGCHAR <= 01, IL_PC <= 000, dummy = 00000000;
14 => '1' & '1' & '1' & X"0" & O"026" & O"026" & X"20" & "00" & "01" & O"0" & X"00",

-- directByte = 0x83, DBGCHAR <= directByte, dbg_out();
-- L0116@000F E0160B418800.  directByte = 0x83, DBGCHAR <= directByte, dbg_out();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000010110 else 000010110, directByte = 10000011, T <= 00, DBGCHAR <= 01, IL_PC <= 000, dummy = 00000000;
15 => '1' & '1' & '1' & X"0" & O"026" & O"026" & X"83" & "00" & "01" & O"0" & X"00",

-- directByte = 0x84, DBGCHAR <= directByte, dbg_out();
-- L0117@0010 E0160B420800.  directByte = 0x84, DBGCHAR <= directByte, dbg_out();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000010110 else 000010110, directByte = 10000100, T <= 00, DBGCHAR <= 01, IL_PC <= 000, dummy = 00000000;
16 => '1' & '1' & '1' & X"0" & O"026" & O"026" & X"84" & "00" & "01" & O"0" & X"00",

-- dbg_crlf();
-- L0118@0011 E0140A7F8000.  dbg_crlf();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000010100 else 000010100, directByte = 11111111, T <= 00, DBGCHAR <= 00, IL_PC <= 000, dummy = 00000000;
17 => '1' & '1' & '1' & X"0" & O"024" & O"024" & X"FF" & "00" & "00" & O"0" & X"00",

-- IL_PC <= inc, goto dump_il_lp;
-- L0120@0012 FE00057F8200.  IL_PC <= inc, if false then next else dump_il_lp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000001010, directByte = 11111111, T <= 00, DBGCHAR <= 00, IL_PC <= 010, dummy = 00000000;
18 => '1' & '1' & '1' & X"F" & O"000" & O"012" & X"FF" & "00" & "00" & O"2" & X"00",

-- IL_PC <= T, back;
-- L0121@0013 E002017F8300.dump_il_ex:  IL_PC <= T, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGCHAR <= 00, IL_PC <= 011, dummy = 00000000;
19 => '1' & '1' & '1' & X"0" & O"002" & O"002" & X"FF" & "00" & "00" & O"3" & X"00",

-- directByte = 0x0D, DBGCHAR <= directByte, dbg_out();
-- L0123@0014 E0160B068800.dbg_crlf:  directByte = 0x0D, DBGCHAR <= directByte, dbg_out();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000010110 else 000010110, directByte = 00001101, T <= 00, DBGCHAR <= 01, IL_PC <= 000, dummy = 00000000;
20 => '1' & '1' & '1' & X"0" & O"026" & O"026" & X"0D" & "00" & "01" & O"0" & X"00",

-- directByte = 0x0A, DBGCHAR <= directByte;
-- L0124@0015 E00000050800.  directByte = 0x0A, DBGCHAR <= directByte;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 00001010, T <= 00, DBGCHAR <= 01, IL_PC <= 000, dummy = 00000000;
21 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"0A" & "00" & "01" & O"0" & X"00",

-- if DBG_READY then next else repeat;
-- L0125@0016 E80000FF8000.dbg_out:  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0100) then 000000000 else 000000001, directByte = 11111111, T <= 00, DBGCHAR <= 00, IL_PC <= 000, dummy = 00000000;
22 => '1' & '1' & '1' & X"4" & O"000" & O"001" & X"FF" & "00" & "00" & O"0" & X"00",

-- if DBG_READY then next else repeat;
-- L0126@0017 E80000FF8000.  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0100) then 000000000 else 000000001, directByte = 11111111, T <= 00, DBGCHAR <= 00, IL_PC <= 000, dummy = 00000000;
23 => '1' & '1' & '1' & X"4" & O"000" & O"001" & X"FF" & "00" & "00" & O"0" & X"00",

-- DBGCHAR <= zero, back;
-- L0127@0018 E002017F9000.  DBGCHAR <= zero, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGCHAR <= 10, IL_PC <= 000, dummy = 00000000;
24 => '1' & '1' & '1' & X"0" & O"002" & O"002" & X"FF" & "00" & "10" & O"0" & X"00",

-- goto deadloop;
-- L0130@001F FE0002FF8000.  if false then next else deadloop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000000101, directByte = 11111111, T <= 00, DBGCHAR <= 00, IL_PC <= 000, dummy = 00000000;
31 => '1' & '1' & '1' & X"F" & O"000" & O"005" & X"FF" & "00" & "00" & O"0" & X"00",

-- 486 location(s) in following ranges will be filled with default value
-- 0019 .. 001E
-- 0020 .. 01FF

others => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & X"00"
);

end microBasic_code;

