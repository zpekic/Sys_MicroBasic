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
-- L0052.DBGINDEX: .regfield 2 values same, directByte, zero, crlf default same;
--
alias mb_DBGINDEX: 	std_logic_vector(1 downto 0) is mb_uinstruction(12 downto 11);
constant DBGINDEX_same: 	std_logic_vector(1 downto 0) := "00";
constant DBGINDEX_directByte: 	std_logic_vector(1 downto 0) := "01";
constant DBGINDEX_zero: 	std_logic_vector(1 downto 0) := "10";
constant DBGINDEX_crlf: 	std_logic_vector(1 downto 0) := "11";
---- Start boilerplate code (use with utmost caution!)
-- update_DBGINDEX: process(clk, mb_DBGINDEX)
-- begin
--	if (rising_edge(clk)) then
--		case mb_DBGINDEX is
----			when DBGINDEX_same =>
----				DBGINDEX <= DBGINDEX;
--			when DBGINDEX_directByte =>
--				DBGINDEX <= directByte;
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
-- L0089@0000 E000007F9100._reset:  DBGINDEX <= zero, IL_PC <= zero;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 10, IL_PC <= 001, dummy = 00000000;
0 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "10" & O"1" & X"00",

-- clear;
-- L0091@0001 E000007F9100._reset1:  DBGINDEX <= zero, IL_PC <= zero;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 10, IL_PC <= 001, dummy = 00000000;
1 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "10" & O"1" & X"00",

-- clear;
-- L0093@0002 E000007F9100._reset2:  DBGINDEX <= zero, IL_PC <= zero;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 10, IL_PC <= 001, dummy = 00000000;
2 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "10" & O"1" & X"00",

-- clear;
-- L0095@0003 E000007F9100._reset3:  DBGINDEX <= zero, IL_PC <= zero;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 00, DBGINDEX <= 10, IL_PC <= 001, dummy = 00000000;
3 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "10" & O"1" & X"00",

-- directByte = 4, trace(directByte);
-- L0099@0004 E01209020800.  directByte = 4, trace(directByte);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000010010 else 000010010, directByte = 00000100, T <= 00, DBGINDEX <= 01, IL_PC <= 000, dummy = 00000000;
4 => '1' & '1' & '1' & X"0" & O"022" & O"022" & X"04" & "00" & "01" & O"0" & X"00",

-- trace(crlf);
-- L0100@0005 E012097F9800.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000010010 else 000010010, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, dummy = 00000000;
5 => '1' & '1' & '1' & X"0" & O"022" & O"022" & X"FF" & "00" & "11" & O"0" & X"00",

-- dump_il();
-- L0101@0006 E00904FF8000.  dump_il();
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000001001 else 000001001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, dummy = 00000000;
6 => '1' & '1' & '1' & X"0" & O"011" & O"011" & X"FF" & "00" & "00" & O"0" & X"00",

-- goto deadloop;
-- L0102@0007 FE0003FF8000.deadloop:  if false then next else deadloop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, dummy = 00000000;
7 => '1' & '1' & '1' & X"F" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & X"00",

-- goto deadloop;
-- L0105@0008 FE0003FF8000.  if false then next else deadloop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, dummy = 00000000;
8 => '1' & '1' & '1' & X"F" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & X"00",

-- directByte = 1, trace(directByte);
-- L0109@0009 E01209008800.dump_il:  directByte = 1, trace(directByte);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000010010 else 000010010, directByte = 00000001, T <= 00, DBGINDEX <= 01, IL_PC <= 000, dummy = 00000000;
9 => '1' & '1' & '1' & X"0" & O"022" & O"022" & X"01" & "00" & "01" & O"0" & X"00",

-- trace(crlf);
-- L0110@000A E012097F9800.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000010010 else 000010010, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, dummy = 00000000;
10 => '1' & '1' & '1' & X"0" & O"022" & O"022" & X"FF" & "00" & "11" & O"0" & X"00",

-- T <= IL_PC, IL_PC <= zero;
-- L0111@000B E000007FA100.  T <= IL_PC, IL_PC <= zero;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000000 else 000000000, directByte = 11111111, T <= 01, DBGINDEX <= 00, IL_PC <= 001, dummy = 00000000;
11 => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "01" & "00" & O"1" & X"00",

-- if IL_PC_VALID then next else dump_il_ex;
-- L0112@000C E60008FF8000.dump_il_lp:  if IL_PC_VALID then next else dump_il_ex;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0011) then 000000000 else 000010001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, dummy = 00000000;
12 => '1' & '1' & '1' & X"3" & O"000" & O"021" & X"FF" & "00" & "00" & O"0" & X"00",

-- directByte = 2, trace(directByte);
-- L0113@000D E01209010800.  directByte = 2, trace(directByte);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000010010 else 000010010, directByte = 00000010, T <= 00, DBGINDEX <= 01, IL_PC <= 000, dummy = 00000000;
13 => '1' & '1' & '1' & X"0" & O"022" & O"022" & X"02" & "00" & "01" & O"0" & X"00",

-- directByte = 3, trace(directByte);
-- L0114@000E E01209018800.  directByte = 3, trace(directByte);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000010010 else 000010010, directByte = 00000011, T <= 00, DBGINDEX <= 01, IL_PC <= 000, dummy = 00000000;
14 => '1' & '1' & '1' & X"0" & O"022" & O"022" & X"03" & "00" & "01" & O"0" & X"00",

-- trace(crlf);
-- L0115@000F E012097F9800.  trace(crlf);
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000010010 else 000010010, directByte = 11111111, T <= 00, DBGINDEX <= 11, IL_PC <= 000, dummy = 00000000;
15 => '1' & '1' & '1' & X"0" & O"022" & O"022" & X"FF" & "00" & "11" & O"0" & X"00",

-- IL_PC <= inc, goto dump_il_lp;
-- L0116@0010 FE00067F8200.  IL_PC <= inc, if false then next else dump_il_lp;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000001100, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 010, dummy = 00000000;
16 => '1' & '1' & '1' & X"F" & O"000" & O"014" & X"FF" & "00" & "00" & O"2" & X"00",

-- IL_PC <= T, back;
-- L0117@0011 E002017F8300.dump_il_ex:  IL_PC <= T, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 011, dummy = 00000000;
17 => '1' & '1' & '1' & X"0" & O"002" & O"002" & X"FF" & "00" & "00" & O"3" & X"00",

-- if DBG_READY then next else repeat;
-- L0119@0012 E80000FF8000.trace:  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0100) then 000000000 else 000000001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, dummy = 00000000;
18 => '1' & '1' & '1' & X"4" & O"000" & O"001" & X"FF" & "00" & "00" & O"0" & X"00",

-- if DBG_READY then next else repeat;
-- L0120@0013 E80000FF8000.  if DBG_READY then next else repeat;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0100) then 000000000 else 000000001, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, dummy = 00000000;
19 => '1' & '1' & '1' & X"4" & O"000" & O"001" & X"FF" & "00" & "00" & O"0" & X"00",

-- DBGINDEX <= zero, back;
-- L0121@0014 E002017F9000.  DBGINDEX <= zero, if true then return else return;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (0000) then 000000010 else 000000010, directByte = 11111111, T <= 00, DBGINDEX <= 10, IL_PC <= 000, dummy = 00000000;
20 => '1' & '1' & '1' & X"0" & O"002" & O"002" & X"FF" & "00" & "10" & O"0" & X"00",

-- goto deadloop;
-- L0124@001F FE0003FF8000.  if false then next else deadloop;
--  nBUSREQ = 1, nWR = 1, nRD = 1, if (1111) then 000000000 else 000000111, directByte = 11111111, T <= 00, DBGINDEX <= 00, IL_PC <= 000, dummy = 00000000;
31 => '1' & '1' & '1' & X"F" & O"000" & O"007" & X"FF" & "00" & "00" & O"0" & X"00",

-- 490 location(s) in following ranges will be filled with default value
-- 0015 .. 001E
-- 0020 .. 01FF

others => '1' & '1' & '1' & X"0" & O"000" & O"000" & X"FF" & "00" & "00" & O"0" & X"00"
);

end microBasic_code;

