--------------------------------------------------------
-- mcc V1.5.1110 - Custom microcode compiler (c)2020-... 
--    https://github.com/zpekic/MicroCodeCompiler
--------------------------------------------------------
-- Auto-generated file, do not modify. To customize, create 'symbol_template.vhd' file in mcc.exe folder
-- Supported placeholders:  [NAME], [FIELDS], [SIZES], [TYPE], [SIGNAL], [INSTANCE], [MEMORY].
--------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
--use IEEE.numeric_std.all;

package microBasic_sym is

-- memory block size
constant SYMBOL_DATA_WIDTH: 	positive := 128;
constant SYMBOL_ADDRESS_WIDTH: 	positive := 9;
constant SYMBOL_ADDRESS_LAST: 	positive := 511;
constant SYMBOL_BYTE_LAST: 	positive := 15;
constant SYMBOL_BYTE_WIDTH: positive := 4;


type t_mb_symbol_entry is array(0 to SYMBOL_ADDRESS_LAST) of std_logic_vector(SYMBOL_DATA_WIDTH -1 downto 0);
type t_mb_symbol_byte is array(0 to(SYMBOL_ADDRESS_LAST + 1) * (SYMBOL_BYTE_LAST + 1) - 1) of std_logic_vector(7 downto 0);


signal mb_symbol_byte: t_mb_symbol_byte;
signal mb_sym_d: std_logic_vector(7 downto 0);
signal mb_sym_a: std_logic_vector(SYMBOL_ADDRESS_WIDTH + SYMBOL_BYTE_WIDTH - 1 downto 0);
----Start boilerplate code(use with utmost caution!)
-- mb_sym_a <= -- TODO concatenate microinstruction address and character address
-- mb_sym_d <= mb_symbol_byte(to_integer(unsigned(mb_sym_a)));
----convert symbol entries to byte-oriented ROM
--gen_r: for r in 0 to SYMBOL_ADDRESS_LAST generate
--begin
--    gen_c: for c in 0 to SYMBOL_BYTE_LAST generate
--   begin
--           --assert false report "r = " & integer'image(r) & " c = " & integer'image(c) severity note;
--           mb_symbol_byte(r * (SYMBOL_BYTE_LAST + 1) + c) <= mb_symbol_entry(r)(SYMBOL_DATA_WIDTH - 8 * c - 1 downto SYMBOL_DATA_WIDTH - 8 * (c + 1));
--   end generate;
--end generate;
----End boilerplate code






constant mb_symbol_entry: t_mb_symbol_entry := (

-- L0358@0000 5F72657365743A206966207472756520._reset:  if true then continue else repeat;
-- _reset: if true then continue else repeat;
0 => X"5F_72_65_73_65_74_3A_20_69_66_20_74_72_75_65_20",

-- L0360@0001 5F7265736574313A2054203C3D207A65._reset1:  T <= zero;
-- _reset1: T <= zero;
1 => X"5F_72_65_73_65_74_31_3A_20_54_20_3C_3D_20_7A_65",

-- L0362@0002 5F7265736574323A2058516865726520._reset2:  XQhere <= T;
-- _reset2: XQhere <= T;
2 => X"5F_72_65_73_65_74_32_3A_20_58_51_68_65_72_65_20",

-- L0364@0003 5F7265736574333A2069662074727565._reset3:  if true then continue else repeat;
-- _reset3: if true then continue else repeat;
3 => X"5F_72_65_73_65_74_33_3A_20_69_66_20_74_72_75_65",

-- L0368@0004 436F6C6453746172743A207772697465.ColdStart:  write2Nulls(Prog_start);
-- ColdStart: write2Nulls(Prog_start);
4 => X"43_6F_6C_64_53_74_61_72_74_3A_20_77_72_69_74_65",

-- L0369@0005 5761726D53746172743A20444247494E.WarmStart:  DBGINDEX <= zero, ExpStack <= clear, RetStack <= clear, BasStack <= clear, T <= zero, alu <= reset0, findPrgEnd();
-- WarmStart: DBGINDEX <= zero, ExpStack <= clear, RetStack <= clear, BasStack <= clear, T <= zero, alu <= reset0, findPrgEnd();
5 => X"57_61_72_6D_53_74_61_72_74_3A_20_44_42_47_49_4E",

-- L0370@0006 5761726D5374617274323A204250203C.WarmStart2:  BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= zero;
-- WarmStart2: BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= zero;
6 => X"57_61_72_6D_53_74_61_72_74_32_3A_20_42_50_20_3C",

-- L0371@0007 4C696E6F203C3D20542C20494C5F5043.  Lino <= T, IL_PC <= T, write2Nulls(BP);
-- Lino <= T, IL_PC <= T, write2Nulls(BP);
7 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_49_4C_5F_50_43",

-- L0373@0008 66657463683A2074726163652866726F.fetch:  trace(from_microcode), directByte = 51;
-- fetch: trace(from_microcode), directByte = 51;
8 => X"66_65_74_63_68_3A_20_74_72_61_63_65_28_66_72_6F",

-- L0374@0009 6665746368313A207472616365286672.fetch1:  trace(from_microcode), directByte = 2;
-- fetch1: trace(from_microcode), directByte = 2;
9 => X"66_65_74_63_68_31_3A_20_74_72_61_63_65_28_66_72",

-- L0375@000A 494C5F4F50203C3D2066726F6D5F696E.  IL_OP <= from_interpreter, IL_PC <= inc, trace(from_microcode), directByte = 56;
-- IL_OP <= from_interpreter, IL_PC <= inc, trace(from_microcode), directByte = 56;
10 => X"49_4C_5F_4F_50_20_3C_3D_20_66_72_6F_6D_5F_69_6E",

-- L0376@000B 54203C3D207A65726F2C20616C75203C.  T <= zero, alu <= reset0, if true then fork else INTERNAL_ERR;
-- T <= zero, alu <= reset0, if true then fork else INTERNAL_ERR;
11 => X"54_20_3C_3D_20_7A_65_72_6F_2C_20_61_6C_75_20_3C",

-- L0379@000C 6261646F703A2069662066616C736520.badop:  if false then continue else INTERNAL_ERR;
-- badop: if false then continue else INTERNAL_ERR;
12 => X"62_61_64_6F_70_3A_20_69_66_20_66_61_6C_73_65_20",

-- L0384@000D 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 15;
-- trace(from_microcode), directByte = 15;
13 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0385@000E 457870537461636B203C3D2073746172.  ExpStack <= startSwap, trace(from_microcode), directByte = 51;
-- ExpStack <= startSwap, trace(from_microcode), directByte = 51;
14 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_73_74_61_72",

-- L0386@000F 457870537461636B203C3D20656E6453.  ExpStack <= endSwap, if false then continue else fetch1;
-- ExpStack <= endSwap, if false then continue else fetch1;
15 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_65_6E_64_53",

-- L0389@0010 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 15;
-- trace(from_microcode), directByte = 15;
16 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0390@0011 616C75203C3D20696C5F63616368655F.  alu <= il_cache_store, if false then continue else fetch;
-- alu <= il_cache_store, if false then continue else fetch;
17 => X"61_6C_75_20_3C_3D_20_69_6C_5F_63_61_63_68_65_5F",

-- L0395@0012 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 12;
-- trace(from_microcode), directByte = 12;
18 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0396@0013 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
19 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0401@0014 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 28;
-- trace(from_microcode), directByte = 28;
20 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0402@0015 6C625F707573683A2074726163652866.lb_push:  trace(from_microcode), directByte = 3, T <= codeByte;
-- lb_push: trace(from_microcode), directByte = 3, T <= codeByte;
21 => X"6C_62_5F_70_75_73_68_3A_20_74_72_61_63_65_28_66",

-- L0403@0016 457870537461636B203C3D2070757368.  ExpStack <= push_TByte, trace(from_microcode), directByte = 51;
-- ExpStack <= push_TByte, trace(from_microcode), directByte = 51;
22 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0404@0017 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch1;
-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch1;
23 => X"49_4C_5F_50_43_20_3C_3D_20_69_6E_63_2C_20_69_66",

-- L0409@0018 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 29;
-- trace(from_microcode), directByte = 29;
24 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0410@0019 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3, T <= codeByte;
-- trace(from_microcode), directByte = 3, T <= codeByte;
25 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0411@001A 457870537461636B203C3D2070757368.  ExpStack <= push_TByte, IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
-- ExpStack <= push_TByte, IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
26 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0416@001B 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 38;
-- trace(from_microcode), directByte = 38;
27 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0417@001C 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
28 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0418@001D 54203C3D20457870537461636B2C2069.  T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR else u_done;
-- T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR else u_done;
29 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_69",

-- L0423@001E 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 34;
-- trace(from_microcode), directByte = 34;
30 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0424@001F 457870537461636B203C3D20706F7032.  ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR else fetch;
-- ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR else fetch;
31 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_32",

-- L0429@0020 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 10;
-- trace(from_microcode), directByte = 10;
32 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0430@0021 69662042505F494E5F494E504C494E45.  if BP_IN_INPLINE then next else ptr_exc;
-- if BP_IN_INPLINE then next else ptr_exc;
33 => X"69_66_20_42_50_5F_49_4E_5F_49_4E_50_4C_49_4E_45",

-- L0431@0022 736176655F62703A2053765074203C3D.save_bp:  SvPt <= BP;
-- save_bp: SvPt <= BP;
34 => X"73_61_76_65_5F_62_70_3A_20_53_76_50_74_20_3C_3D",

-- L0432@0023 62705F646F6E653A2074726163654250.bp_done:  traceBP();
-- bp_done: traceBP();
35 => X"62_70_5F_64_6F_6E_65_3A_20_74_72_61_63_65_42_50",

-- L0433@0024 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
36 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0438@0025 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 11;
-- trace(from_microcode), directByte = 11;
37 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0439@0026 6966205356505F494E5F494E504C494E.  if SVP_IN_INPLINE then save_bp;
-- if SVP_IN_INPLINE then save_bp;
38 => X"69_66_20_53_56_50_5F_49_4E_5F_49_4E_50_4C_49_4E",

-- L0440@0027 7074725F6578633A2053765074203C3D.ptr_exc:  SvPt <= BP, BP <= SvPt, if false then continue else bp_done;
-- ptr_exc: SvPt <= BP, BP <= SvPt, if false then continue else bp_done;
39 => X"70_74_72_5F_65_78_63_3A_20_53_76_50_74_20_3C_3D",

-- L0445@0028 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 36;
-- trace(from_microcode), directByte = 36;
40 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0446@0029 56617273203C3D20696E64657846726F.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
41 => X"56_61_72_73_20_3C_3D_20_69_6E_64_65_78_46_72_6F",

-- L0447@002A 54203C3D2066726F6D5F766172732C20.  T <= from_vars, ExpStack <= pop1, trace(from_microcode), directByte = 51;
-- T <= from_vars, ExpStack <= pop1, trace(from_microcode), directByte = 51;
42 => X"54_20_3C_3D_20_66_72_6F_6D_5F_76_61_72_73_2C_20",

-- L0448@002B 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, if false then continue else fetch1;
-- ExpStack <= push_TWord, if false then continue else fetch1;
43 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0453@002C 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 37;
-- trace(from_microcode), directByte = 37;
44 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0454@002D 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
45 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0455@002E 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2, trace(from_microcode), directByte = 51;
-- T <= ExpStack, ExpStack <= pop2, trace(from_microcode), directByte = 51;
46 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L0456@002F 56617273203C3D20696E64657846726F.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
47 => X"56_61_72_73_20_3C_3D_20_69_6E_64_65_78_46_72_6F",

-- L0457@0030 457870537461636B203C3D20706F7031.  ExpStack <= pop1, Vars <= T, if false then continue else fetch1;
-- ExpStack <= pop1, Vars <= T, if false then continue else fetch1;
48 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_31",

-- L0462@0031 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 47;
-- trace(from_microcode), directByte = 47;
49 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0463@0032 69662049535F52554E4D4F4445207468.  if IS_RUNMODE then next else INTERNAL_ERR;
-- if IS_RUNMODE then next else INTERNAL_ERR;
50 => X"69_66_20_49_53_5F_52_55_4E_4D_4F_44_45_20_74_68",

-- L0464@0033 696620535441434B5F49535F46554C4C.  if STACK_IS_FULL then BSTACK_ERR;
-- if STACK_IS_FULL then BSTACK_ERR;
51 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_46_55_4C_4C",

-- L0465@0034 426173537461636B203C3D2070757368.  BasStack <= push_Lino_and_BP, if false then continue else fetch;
-- BasStack <= push_Lino_and_BP, if false then continue else fetch;
52 => X"42_61_73_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0470@0035 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 48;
-- trace(from_microcode), directByte = 48;
53 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0471@0036 69662049535F52554E4D4F4445207468.  if IS_RUNMODE then next else INTERNAL_ERR;
-- if IS_RUNMODE then next else INTERNAL_ERR;
54 => X"69_66_20_49_53_5F_52_55_4E_4D_4F_44_45_20_74_68",

-- L0472@0037 54203C3D20426173537461636B5F4869.  T <= BasStack_Hi,if STACK_IS_EMPTY then BSTACK_ERR;
-- T <= BasStack_Hi,if STACK_IS_EMPTY then BSTACK_ERR;
55 => X"54_20_3C_3D_20_42_61_73_53_74_61_63_6B_5F_48_69",

-- L0473@0038 4C696E6F203C3D20542C2054203C3D20.  Lino <= T, T <= BasStack_Lo, trace(from_microcode), directByte = 51;
-- Lino <= T, T <= BasStack_Lo, trace(from_microcode), directByte = 51;
56 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_54_20_3C_3D_20",

-- L0474@0039 4250203C3D20542C2042617353746163.  BP <= T, BasStack <= pop, if false then continue else fetch1;
-- BP <= T, BasStack <= pop, if false then continue else fetch1;
57 => X"42_50_20_3C_3D_20_54_2C_20_42_61_73_53_74_61_63",

-- L0479@003A 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 45;
-- trace(from_microcode), directByte = 45;
58 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0480@003B 676F3A20494C5F5043203C3D20585168.go:  IL_PC <= XQhere, if STACK_IS_EMPTY then ESTACK_ERR;
-- go: IL_PC <= XQhere, if STACK_IS_EMPTY then ESTACK_ERR;
59 => X"67_6F_3A_20_49_4C_5F_50_43_20_3C_3D_20_58_51_68",

-- L0481@003C 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, T<= ExpStack, ExpStack <= pop2;
-- alu <= R_fromStack, T<= ExpStack, ExpStack <= pop2;
60 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0482@003D 4C696E6F203C3D20542C20696620525F.  Lino <= T, if R_IS_ZERO then NOPROG_ERR;
-- Lino <= T, if R_IS_ZERO then NOPROG_ERR;
61 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_69_66_20_52_5F",

-- L0484@003E 54203C3D2043616368655F446174612C.  T <= Cache_Data, if CACHE_VALID then go_cvalid;
-- T <= Cache_Data, if CACHE_VALID then go_cvalid;
62 => X"54_20_3C_3D_20_43_61_63_68_65_5F_44_61_74_61_2C",

-- L0486@003F 676F5F636D6973733A2066696E644C69.go_cmiss:  findLino(Prog_start);
-- go_cmiss: findLino(Prog_start);
63 => X"67_6F_5F_63_6D_69_73_73_3A_20_66_69_6E_64_4C_69",

-- L0487@0040 616C75203C3D2063616368655F73746F.  alu <= cache_store, if false then continue else fetch;
-- alu <= cache_store, if false then continue else fetch;
64 => X"61_6C_75_20_3C_3D_20_63_61_63_68_65_5F_73_74_6F",

-- L0489@0041 676F5F6376616C69643A204250203C3D.go_cvalid:  BP <= T, if CACHE_HIT then fetch else go_cmiss;
-- go_cvalid: BP <= T, if CACHE_HIT then fetch else go_cmiss;
65 => X"67_6F_5F_63_76_61_6C_69_64_3A_20_42_50_20_3C_3D",

-- L0491@0042 66696E644C696E6F3A20616C75203C3D.findLino:  alu <= reset1, readCore(T);
-- findLino: alu <= reset1, readCore(T);
66 => X"66_69_6E_64_4C_69_6E_6F_3A_20_61_6C_75_20_3C_3D",

-- L0492@0043 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc;
-- alu <= Rx256_plus_MDR, T <= inc;
67 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L0493@0044 616C75203C3D20535F66726F6D4C696E.  alu <= S_fromLino, readCore(T);
-- alu <= S_fromLino, readCore(T);
68 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_4C_69_6E",

-- L0494@0045 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc;
-- alu <= Rx256_plus_MDR, T <= inc;
69 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L0495@0046 616C75203C3D20535F6D696E75735F52.  alu <= S_minus_R, if R_IS_ZERO then NOPROG_ERR;
-- alu <= S_minus_R, if R_IS_ZERO then NOPROG_ERR;
70 => X"61_6C_75_20_3C_3D_20_53_5F_6D_69_6E_75_73_5F_52",

-- L0497@0047 4250203C3D20542C20696620595F5A45.  BP <= T, if Y_ZERO then return;
-- BP <= T, if Y_ZERO then return;
71 => X"42_50_20_3C_3D_20_54_2C_20_69_66_20_59_5F_5A_45",

-- L0498@0048 66696E644E65787443522873616D6529.  findNextCR(same);
-- findNextCR(same);
72 => X"66_69_6E_64_4E_65_78_74_43_52_28_73_61_6D_65_29",

-- L0499@0049 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else findLino;
-- T <= inc, if false then continue else findLino;
73 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0504@004A 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 25;
-- trace(from_microcode), directByte = 25;
74 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0505@004B 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
75 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0506@004C 457870537461636B203C3D20706F7032.  ExpStack <= pop2, alu <= neg_R, if false then continue else alu_done;
-- ExpStack <= pop2, alu <= neg_R, if false then continue else alu_done;
76 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_32",

-- L0511@004D 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 22;
-- trace(from_microcode), directByte = 22;
77 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0512@004E 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
78 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0513@004F 616C75203C3D20535F706C75735F522C.  alu <= S_plus_R, if ALU_READY then next else repeat;
-- alu <= S_plus_R, if ALU_READY then next else repeat;
79 => X"61_6C_75_20_3C_3D_20_53_5F_70_6C_75_73_5F_52_2C",

-- L0515@0050 616C755F646F6E653A2054203C3D2066.alu_done:  T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
-- alu_done: T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
80 => X"61_6C_75_5F_64_6F_6E_65_3A_20_54_20_3C_3D_20_66",

-- L0516@0051 755F646F6E653A20457870537461636B.u_done:  ExpStack <= push_TWord, if false then continue else fetch;
-- u_done: ExpStack <= push_TWord, if false then continue else fetch;
81 => X"75_5F_64_6F_6E_65_3A_20_45_78_70_53_74_61_63_6B",

-- L0521@0052 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 23;
-- trace(from_microcode), directByte = 23;
82 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0522@0053 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
83 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0523@0054 616C75203C3D20535F6D696E75735F52.  alu <= S_minus_R, if ALU_READY then alu_done else repeat;
-- alu <= S_minus_R, if ALU_READY then alu_done else repeat;
84 => X"61_6C_75_20_3C_3D_20_53_5F_6D_69_6E_75_73_5F_52",

-- L0528@0055 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 24;
-- trace(from_microcode), directByte = 24;
85 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0529@0056 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
86 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0530@0057 616C75203C3D20535F6D756C5F522C20.  alu <= S_mul_R, if ALU_READY then alu_done else repeat;
-- alu <= S_mul_R, if ALU_READY then alu_done else repeat;
87 => X"61_6C_75_20_3C_3D_20_53_5F_6D_75_6C_5F_52_2C_20",

-- L0535@0058 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 35;
-- trace(from_microcode), directByte = 35;
88 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0536@0059 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
89 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0537@005A 6469765F6D6F6428293B202020202020.  div_mod();
-- div_mod();
90 => X"64_69_76_5F_6D_6F_64_28_29_3B_20_20_20_20_20_20",

-- L0538@005B 69662066616C7365207468656E20636F.  if false then continue else alu_done;
-- if false then continue else alu_done;
91 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0540@005C 6469765F6D6F643A20616C75203C3D20.div_mod:  alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
-- div_mod: alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
92 => X"64_69_76_5F_6D_6F_64_3A_20_61_6C_75_20_3C_3D_20",

-- L0541@005D 6469765F6C6F6F703A20616C75203C3D.div_loop:  alu <= div_shift;
-- div_loop: alu <= div_shift;
93 => X"64_69_76_5F_6C_6F_6F_70_3A_20_61_6C_75_20_3C_3D",

-- L0542@005E 696620414C555F524541445920746865.  if ALU_READY then div_done;
-- if ALU_READY then div_done;
94 => X"69_66_20_41_4C_55_5F_52_45_41_44_59_20_74_68_65",

-- L0543@005F 616C75203C3D206469765F7375627365.  alu <= div_subset, if false then continue else div_loop;
-- alu <= div_subset, if false then continue else div_loop;
95 => X"61_6C_75_20_3C_3D_20_64_69_76_5F_73_75_62_73_65",

-- L0544@0060 6469765F646F6E653A20616C75203C3D.div_done:  alu <= div_end, if true then return else continue;
-- div_done: alu <= div_end, if true then return else continue;
96 => X"64_69_76_5F_64_6F_6E_65_3A_20_61_6C_75_20_3C_3D",

-- L0549@0061 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 46;
-- trace(from_microcode), directByte = 46;
97 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0550@0062 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2;
-- alu <= R_fromStack, ExpStack <= pop2;
98 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0551@0063 457870537461636B203C3D2070757368.  ExpStack <= push_TByte;
-- ExpStack <= push_TByte;
99 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0552@0064 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2;
-- T <= ExpStack, ExpStack <= pop2;
100 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L0553@0065 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2, trace(from_microcode), directByte = 51;
-- alu <= S_fromStack, ExpStack <= pop2, trace(from_microcode), directByte = 51;
101 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L0554@0066 69662043505F534B4950207468656E20.  if CP_SKIP then next else fetch1;
-- if CP_SKIP then next else fetch1;
102 => X"69_66_20_43_50_5F_53_4B_49_50_20_74_68_65_6E_20",

-- L0555@0067 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if false then continue else fetch1;
-- IL_PC <= inc, if false then continue else fetch1;
103 => X"49_4C_5F_50_43_20_3C_3D_20_69_6E_63_2C_20_69_66",

-- L0560@0068 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 39;
-- trace(from_microcode), directByte = 39;
104 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0561@0069 696620494E54524551207468656E206E.  if INTREQ then next else nx_start;
-- if INTREQ then next else nx_start;
105 => X"69_66_20_49_4E_54_52_45_51_20_74_68_65_6E_20_6E",

-- L0562@006A 457870537461636B203C3D2070757368.  ExpStack <= push_intLino, BasStack <= push_Lino_and_BP, if false then continue else go;
-- ExpStack <= push_intLino, BasStack <= push_Lino_and_BP, if false then continue else go;
106 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0563@006B 6E785F73746172743A20494C5F504320.nx_start:  IL_PC <= T, if IS_RUNMODE then next else fetch;
-- nx_start: IL_PC <= T, if IS_RUNMODE then next else fetch;
107 => X"6E_78_5F_73_74_61_72_74_3A_20_49_4C_5F_50_43_20",

-- L0564@006C 66696E644E7828293B20202020202020.  findNx();
-- findNx();
108 => X"66_69_6E_64_4E_78_28_29_3B_20_20_20_20_20_20_20",

-- L0565@006D 4C696E6F203C3D20542C20494C5F5043.  Lino <= T, IL_PC <= XQhere;
-- Lino <= T, IL_PC <= XQhere;
109 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_49_4C_5F_50_43",

-- L0567@006E 6E785F636F6E743A2074726163654250.nx_cont:  traceBP();
-- nx_cont: traceBP();
110 => X"6E_78_5F_63_6F_6E_74_3A_20_74_72_61_63_65_42_50",

-- L0569@006F 6966204B42445F425245414B20746865.  if KBD_BREAK then BREAK else fetch;
-- if KBD_BREAK then BREAK else fetch;
111 => X"69_66_20_4B_42_44_5F_42_52_45_41_4B_20_74_68_65",

-- L0571@0070 66696E644E783A2066696E644E657874.findNx:  findNextCR(BP);
-- findNx: findNextCR(BP);
112 => X"66_69_6E_64_4E_78_3A_20_66_69_6E_64_4E_65_78_74",

-- L0572@0071 54203C3D20696E633B20202020202020.  T <= inc;
-- T <= inc;
113 => X"54_20_3C_3D_20_69_6E_63_3B_20_20_20_20_20_20_20",

-- L0573@0072 4250203C3D20543B2020202020202020.  BP <= T;
-- BP <= T;
114 => X"42_50_20_3C_3D_20_54_3B_20_20_20_20_20_20_20_20",

-- L0574@0073 72656164436F72653136287265736574.  readCore16(reset1, BP);
-- readCore16(reset1, BP);
115 => X"72_65_61_64_43_6F_72_65_31_36_28_72_65_73_65_74",

-- L0575@0074 4250203C3D20542C2054203C3D206672.  BP <= T, T <= from_R, if R_IS_ZERO then stop_run else return;
-- BP <= T, T <= from_R, if R_IS_ZERO then stop_run else return;
116 => X"42_50_20_3C_3D_20_54_2C_20_54_20_3C_3D_20_66_72",

-- L0580@0075 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 4;
-- trace(from_microcode), directByte = 4;
117 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0581@0076 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
118 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0582@0077 66696E645F636F6C6F6E3A2072656164.find_colon:  readCore(BP);
-- find_colon: readCore(BP);
119 => X"66_69_6E_64_5F_63_6F_6C_6F_6E_3A_20_72_65_61_64",

-- L0583@0078 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_MATCHES_DB then nx_start;
-- directByte = 0x0D, if MDR_MATCHES_DB then nx_start;
120 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0584@0079 64697265637442797465203D20307833.  directByte = 0x3A, if MDR_MATCHES_DB then found_colon;
-- directByte = 0x3A, if MDR_MATCHES_DB then found_colon;
121 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_33",

-- L0585@007A 4250203C3D20696E632C206469726563.  BP <= inc, directByte = 0x00, if MDR_MATCHES_DB then INTERNAL_ERR else find_colon;
-- BP <= inc, directByte = 0x00, if MDR_MATCHES_DB then INTERNAL_ERR else find_colon;
122 => X"42_50_20_3C_3D_20_69_6E_63_2C_20_64_69_72_65_63",

-- L0586@007B 666F756E645F636F6C6F6E3A20425020.found_colon:  BP <= inc, IL_PC <= XQhere, if IS_RUNMODE then nx_cont else SYNTAX_ERR;
-- found_colon: BP <= inc, IL_PC <= XQhere, if IS_RUNMODE then nx_cont else SYNTAX_ERR;
123 => X"66_6F_75_6E_64_5F_63_6F_6C_6F_6E_3A_20_42_50_20",

-- L0591@007C 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 41;
-- trace(from_microcode), directByte = 41;
124 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0592@007D 616C75203C3D207265736574312C2069.  alu <= reset1, if IS_RUNMODE then badop;
-- alu <= reset1, if IS_RUNMODE then badop;
125 => X"61_6C_75_20_3C_3D_20_72_65_73_65_74_31_2C_20_69",

-- L0593@007E 6C735F7061726C6F61643A2054203C3D.ls_parload:  T <= from_R, if STACK_IS_EMPTY then ls_parchk;
-- ls_parload: T <= from_R, if STACK_IS_EMPTY then ls_parchk;
126 => X"6C_73_5F_70_61_72_6C_6F_61_64_3A_20_54_20_3C_3D",

-- L0594@007F 616C75203C3D20535F66726F6D543B20.  alu <= S_fromT;
-- alu <= S_fromT;
127 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_54_3B_20",

-- L0595@0080 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2, if false then continue else ls_parload;
-- alu <= R_fromStack, ExpStack <= pop2, if false then continue else ls_parload;
128 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0596@0081 6C735F70617263686B3A20616C75203C.ls_parchk:  alu <= ls_load;
-- ls_parchk: alu <= ls_load;
129 => X"6C_73_5F_70_61_72_63_68_6B_3A_20_61_6C_75_20_3C",

-- L0597@0082 6966204C535F504152414D535F4F4B20.  if LS_PARAMS_OK then next else SYNTAX_ERR;
-- if LS_PARAMS_OK then next else SYNTAX_ERR;
130 => X"69_66_20_4C_53_5F_50_41_52_41_4D_53_5F_4F_4B_20",

-- L0599@0083 6C735F73746172743A2054203C3D2050.ls_start:  T <= Prog_start;
-- ls_start: T <= Prog_start;
131 => X"6C_73_5F_73_74_61_72_74_3A_20_54_20_3C_3D_20_50",

-- L0600@0084 6C735F6C696E656C6F6F703A20696620.ls_lineloop:  if CHARIN_READY then next else ls_continue;
-- ls_lineloop: if CHARIN_READY then next else ls_continue;
132 => X"6C_73_5F_6C_69_6E_65_6C_6F_6F_70_3A_20_69_66_20",

-- L0601@0085 6966204B42445F425245414B20746865.  if KBD_BREAK then BREAK;
-- if KBD_BREAK then BREAK;
133 => X"69_66_20_4B_42_44_5F_42_52_45_41_4B_20_74_68_65",

-- L0602@0086 676F7443686172203D20312C20646972.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_continue;
-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_continue;
134 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_64_69_72",

-- L0603@0087 6C735F70617573653A20696620434841.ls_pause:  if CHARIN_READY then next else repeat;
-- ls_pause: if CHARIN_READY then next else repeat;
135 => X"6C_73_5F_70_61_75_73_65_3A_20_69_66_20_43_48_41",

-- L0604@0088 676F7443686172203D20312C20646972.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
136 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_64_69_72",

-- L0605@0089 6C735F636F6E74696E75653A20676F74.ls_continue:  gotChar = 1, readCore16(reset1, same);
-- ls_continue: gotChar = 1, readCore16(reset1, same);
137 => X"6C_73_5F_63_6F_6E_74_69_6E_75_65_3A_20_67_6F_74",

-- L0606@008A 616C75203C3D206C735F636865636B2C.  alu <= ls_check, if R_IS_ZERO then fetch;
-- alu <= ls_check, if R_IS_ZERO then fetch;
138 => X"61_6C_75_20_3C_3D_20_6C_73_5F_63_68_65_63_6B_2C",

-- L0607@008B 6966204C535F5041535345445F454E44.  if LS_PASSED_END then fetch;
-- if LS_PASSED_END then fetch;
139 => X"69_66_20_4C_53_5F_50_41_53_53_45_44_5F_45_4E_44",

-- L0608@008C 6966204C535F494E5F52414E47452074.  if LS_IN_RANGE then next else ls_nextLine;
-- if LS_IN_RANGE then next else ls_nextLine;
140 => X"69_66_20_4C_53_5F_49_4E_5F_52_41_4E_47_45_20_74",

-- L0610@008D 54203C3D20736176652C207072696E74.  T <= save, printDecR(Y_save);
-- T <= save, printDecR(Y_save);
141 => X"54_20_3C_3D_20_73_61_76_65_2C_20_70_72_69_6E_74",

-- L0611@008E 54203C3D20726563616C6C2C20616C75.  T <= recall, alu <= Y_recall, directByte = ' ', outChar(from_microcode);
-- T <= recall, alu <= Y_recall, directByte = ' ', outChar(from_microcode);
142 => X"54_20_3C_3D_20_72_65_63_61_6C_6C_2C_20_61_6C_75",

-- L0612@008F 6C735F636861726C6F6F703A20726561.ls_charloop:  readCore(T);
-- ls_charloop: readCore(T);
143 => X"6C_73_5F_63_68_61_72_6C_6F_6F_70_3A_20_72_65_61",

-- L0613@0090 6F7574436861722866726F6D5F4D4452.  outChar(from_MDR);
-- outChar(from_MDR);
144 => X"6F_75_74_43_68_61_72_28_66_72_6F_6D_5F_4D_44_52",

-- L0614@0091 6C735F6E657874636861723A20646972.ls_nextchar:  directByte = 0x0D, if MDR_MATCHES_DB then next else ls_next;
-- ls_nextchar: directByte = 0x0D, if MDR_MATCHES_DB then next else ls_next;
145 => X"6C_73_5F_6E_65_78_74_63_68_61_72_3A_20_64_69_72",

-- L0615@0092 64697265637442797465203D20307830.  directByte = 0x0A, outChar(from_microcode);
-- directByte = 0x0A, outChar(from_microcode);
146 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0616@0093 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else ls_lineloop;
-- T <= inc, if false then continue else ls_lineloop;
147 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0617@0094 6C735F6E6578743A2054203C3D20696E.ls_next:  T <= inc, if false then continue else ls_charloop;
-- ls_next: T <= inc, if false then continue else ls_charloop;
148 => X"6C_73_5F_6E_65_78_74_3A_20_54_20_3C_3D_20_69_6E",

-- L0618@0095 6C735F6E6578744C696E653A2066696E.ls_nextLine:  findNextCR(same);
-- ls_nextLine: findNextCR(same);
149 => X"6C_73_5F_6E_65_78_74_4C_69_6E_65_3A_20_66_69_6E",

-- L0619@0096 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else ls_lineloop;
-- T <= inc, if false then continue else ls_lineloop;
150 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0624@0097 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 26;
-- trace(from_microcode), directByte = 26;
151 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0625@0098 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
152 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0626@0099 7072696E7444656328293B2020202020.  printDec();
-- printDec();
153 => X"70_72_69_6E_74_44_65_63_28_29_3B_20_20_20_20_20",

-- L0627@009A 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
154 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0632@009B 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 18;
-- trace(from_microcode), directByte = 18;
155 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0633@009C 70715F6C6F6F703A204250203C3D2069.pq_loop:  BP <= inc, readCore(BP);
-- pq_loop: BP <= inc, readCore(BP);
156 => X"70_71_5F_6C_6F_6F_70_3A_20_42_50_20_3C_3D_20_69",

-- L0634@009D 64697265637442797465203D20272227.  directByte = '"', if MDR_MATCHES_DB then pq_done;
-- directByte = '"', if MDR_MATCHES_DB then pq_done;
157 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_22_27",

-- L0635@009E 6F7574436861722866726F6D5F4D4452.  outChar(from_MDR);
-- outChar(from_MDR);
158 => X"6F_75_74_43_68_61_72_28_66_72_6F_6D_5F_4D_44_52",

-- L0636@009F 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_MATCHES_DB then INTERNAL_ERR else pq_loop;
-- directByte = 0x0D, if MDR_MATCHES_DB then INTERNAL_ERR else pq_loop;
159 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0637@00A0 70715F646F6E653A2074726163654250.pq_done:  traceBP();
-- pq_done: traceBP();
160 => X"70_71_5F_64_6F_6E_65_3A_20_74_72_61_63_65_42_50",

-- L0638@00A1 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
161 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0643@00A2 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 27;
-- trace(from_microcode), directByte = 27;
162 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0644@00A3 70745F6C6F6F703A2069662041545F54.pt_loop:  if AT_TAB then fetch;
-- pt_loop: if AT_TAB then fetch;
163 => X"70_74_5F_6C_6F_6F_70_3A_20_69_66_20_41_54_5F_54",

-- L0645@00A4 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode);
-- directByte = ' ', outChar(from_microcode);
164 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0646@00A5 69662066616C7365207468656E20636F.  if false then continue else pt_loop;
-- if false then continue else pt_loop;
165 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0651@00A6 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 6;
-- trace(from_microcode), directByte = 6;
166 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0652@00A7 63726C665F66657463683A206F757443.crlf_fetch:  outCRLF();
-- crlf_fetch: outCRLF();
167 => X"63_72_6C_66_5F_66_65_74_63_68_3A_20_6F_75_74_43",

-- L0653@00A8 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
168 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0658@00A9 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 5;
-- trace(from_microcode), directByte = 5;
169 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0659@00AA 70635F6C6F6F703A206F757443686172.pc_loop:  outChar(from_interpreter);
-- pc_loop: outChar(from_interpreter);
170 => X"70_63_5F_6C_6F_6F_70_3A_20_6F_75_74_43_68_61_72",

-- L0660@00AB 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3;
-- trace(from_microcode), directByte = 3;
171 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0661@00AC 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
-- IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
172 => X"49_4C_5F_50_43_20_3C_3D_20_69_6E_63_2C_20_69_66",

-- L0666@00AD 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 4;
-- trace(from_microcode), directByte = 4;
173 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0667@00AE 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
174 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0668@00AF 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2;
-- T <= ExpStack, ExpStack <= pop2;
175 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L0669@00B0 56617273203C3D20696E64657846726F.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
176 => X"56_61_72_73_20_3C_3D_20_69_6E_64_65_78_46_72_6F",

-- L0671@00B1 457870537461636B203C3D20706F7031.  ExpStack <= pop1, if NEXT_SET then next else for_first;
-- ExpStack <= pop1, if NEXT_SET then next else for_first;
177 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_31",

-- L0674@00B2 56617273203C3D20666F725F66726F6D.  Vars <= for_fromLino, T <= from_vars, if FOR_SET then next else SYNTAX_ERR;
-- Vars <= for_fromLino, T <= from_vars, if FOR_SET then next else SYNTAX_ERR;
178 => X"56_61_72_73_20_3C_3D_20_66_6F_72_5F_66_72_6F_6D",

-- L0675@00B3 616C75203C3D20666F725F737465703B.  alu <= for_step;
-- alu <= for_step;
179 => X"61_6C_75_20_3C_3D_20_66_6F_72_5F_73_74_65_70_3B",

-- L0676@00B4 54203C3D2066726F6D5F594C6F2C2069.  T <= from_YLo, if false then continue else for_check;
-- T <= from_YLo, if false then continue else for_check;
180 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_69",

-- L0679@00B5 666F725F66697273743A205661727320.for_first:  Vars <= for_fromLino;
-- for_first: Vars <= for_fromLino;
181 => X"66_6F_72_5F_66_69_72_73_74_3A_20_56_61_72_73_20",

-- L0680@00B6 666F725F636865636B3A20616C75203C.for_check:  alu <= for_check;
-- for_check: alu <= for_check;
182 => X"66_6F_72_5F_63_68_65_63_6B_3A_20_61_6C_75_20_3C",

-- L0681@00B7 56617273203C3D20542C20696620414C.  Vars <= T, if ALU_READY then for_done;
-- Vars <= T, if ALU_READY then for_done;
183 => X"56_61_72_73_20_3C_3D_20_54_2C_20_69_66_20_41_4C",

-- L0684@00B8 54203C3D2066726F6D5F7661725F4E65.  T <= from_var_Next, if NEXT_SET then next else find_next;
-- T <= from_var_Next, if NEXT_SET then next else find_next;
184 => X"54_20_3C_3D_20_66_72_6F_6D_5F_76_61_72_5F_4E_65",

-- L0685@00B9 56617273203C3D20666F725F636C6561.  Vars <= for_clear, BP <= T, if false then continue else for_done;
-- Vars <= for_clear, BP <= T, if false then continue else for_done;
185 => X"56_61_72_73_20_3C_3D_20_66_6F_72_5F_63_6C_65_61",

-- L0688@00BA 66696E645F6E6578743A205661727320.find_next:  Vars <= for_clear, findNx();
-- find_next: Vars <= for_clear, findNx();
186 => X"66_69_6E_64_5F_6E_65_78_74_3A_20_56_61_72_73_20",

-- L0689@00BB 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
187 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0690@00BC 72656164436F7265284250292C204250.  readCore(BP), BP <= inc;
-- readCore(BP), BP <= inc;
188 => X"72_65_61_64_43_6F_72_65_28_42_50_29_2C_20_42_50",

-- L0691@00BD 64697265637442797465203D20274E27.  directByte = 'N', if MDR_MATCHES_DB then next else find_cont;
-- directByte = 'N', if MDR_MATCHES_DB then next else find_cont;
189 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_4E_27",

-- L0692@00BE 72656164436F7265284250292C204250.  readCore(BP), BP <= inc;
-- readCore(BP), BP <= inc;
190 => X"72_65_61_64_43_6F_72_65_28_42_50_29_2C_20_42_50",

-- L0693@00BF 64697265637442797465203D20274527.  directByte = 'E', if MDR_MATCHES_DB then next else find_cont;
-- directByte = 'E', if MDR_MATCHES_DB then next else find_cont;
191 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_45_27",

-- L0694@00C0 72656164436F7265284250292C204250.  readCore(BP), BP <= inc;
-- readCore(BP), BP <= inc;
192 => X"72_65_61_64_43_6F_72_65_28_42_50_29_2C_20_42_50",

-- L0695@00C1 64697265637442797465203D20275827.  directByte = 'X', if MDR_MATCHES_DB then next else find_cont;
-- directByte = 'X', if MDR_MATCHES_DB then next else find_cont;
193 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_58_27",

-- L0696@00C2 72656164436F7265284250292C204250.  readCore(BP), BP <= inc;
-- readCore(BP), BP <= inc;
194 => X"72_65_61_64_43_6F_72_65_28_42_50_29_2C_20_42_50",

-- L0697@00C3 64697265637442797465203D20275427.  directByte = 'T', if MDR_MATCHES_DB then next else find_cont;
-- directByte = 'T', if MDR_MATCHES_DB then next else find_cont;
195 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_54_27",

-- L0698@00C4 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
196 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0699@00C5 72656164436F7265284250293B202020.  readCore(BP);
-- readCore(BP);
197 => X"72_65_61_64_43_6F_72_65_28_42_50_29_3B_20_20_20",

-- L0700@00C6 6966204D44525F4D4154434845535F56.  if MDR_MATCHES_VARNAME then for_done;
-- if MDR_MATCHES_VARNAME then for_done;
198 => X"69_66_20_4D_44_52_5F_4D_41_54_43_48_45_53_5F_56",

-- L0701@00C7 66696E645F636F6E743A2066696E644E.find_cont:  findNextCR(BP);
-- find_cont: findNextCR(BP);
199 => X"66_69_6E_64_5F_63_6F_6E_74_3A_20_66_69_6E_64_4E",

-- L0702@00C8 69662066616C7365207468656E20636F.  if false then continue else find_next;
-- if false then continue else find_next;
200 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0704@00C9 666F725F646F6E653A2056617273203C.for_done:  Vars <= next_clear, findNx();
-- for_done: Vars <= next_clear, findNx();
201 => X"66_6F_72_5F_64_6F_6E_65_3A_20_56_61_72_73_20_3C",

-- L0706@00CA 457870537461636B203C3D2020707573.  ExpStack <=  push_TWord, if false then continue else fetch;
-- ExpStack <=  push_TWord, if false then continue else fetch;
202 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_20_70_75_73",

-- L0711@00CB 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 4;
-- trace(from_microcode), directByte = 4;
203 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0712@00CC 56617273203C3D20696E64657846726F.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
204 => X"56_61_72_73_20_3C_3D_20_69_6E_64_65_78_46_72_6F",

-- L0713@00CD 457870537461636B203C3D20706F7031.  ExpStack <= pop1, T <= from_var_For, if FOR_SET then next else INTERNAL_ERR;
-- ExpStack <= pop1, T <= from_var_For, if FOR_SET then next else INTERNAL_ERR;
205 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_31",

-- L0714@00CE 56617273203C3D206E6578745F66726F.  Vars <= next_fromBP, ExpStack <= push_TWord, if false then continue else fetch;
-- Vars <= next_fromBP, ExpStack <= push_TWord, if false then continue else fetch;
206 => X"56_61_72_73_20_3C_3D_20_6E_65_78_74_5F_66_72_6F",

-- L0719@00CF 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 8;
-- trace(from_microcode), directByte = 8;
207 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0720@00D0 676C3A20496E6C456E64203C3D20496E.gl:  InlEnd <= InLine_start;
-- gl: InlEnd <= InLine_start;
208 => X"67_6C_3A_20_49_6E_6C_45_6E_64_20_3C_3D_20_49_6E",

-- L0721@00D1 676C5F6C6F6F703A2069662043484152.gl_loop:  if CHARIN_READY then next else repeat;
-- gl_loop: if CHARIN_READY then next else repeat;
209 => X"67_6C_5F_6C_6F_6F_70_3A_20_69_66_20_43_48_41_52",

-- L0722@00D2 6966204B42445F425245414B20746865.  if KBD_BREAK then next else gl_char;
-- if KBD_BREAK then next else gl_char;
210 => X"69_66_20_4B_42_44_5F_42_52_45_41_4B_20_74_68_65",

-- L0723@00D3 676F7443686172203D20312C20696620.  gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
-- gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
211 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0724@00D4 676C5F636861723A2069662043484152.gl_char:  if CHARIN_PRINTABLE then gl_print;
-- gl_char: if CHARIN_PRINTABLE then gl_print;
212 => X"67_6C_5F_63_68_61_72_3A_20_69_66_20_43_48_41_52",

-- L0725@00D5 64697265637442797465203D20307830.  directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
-- directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
213 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0726@00D6 64697265637442797465203D20307830.  directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
-- directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
214 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0727@00D7 64697265637442797465203D20307831.  directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
-- directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
215 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_31",

-- L0728@00D8 64697265637442797465203D20307830.  directByte = 0x09, if CHARIN_EQU_DB then gl_tab;
-- directByte = 0x09, if CHARIN_EQU_DB then gl_tab;
216 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0730@00D9 676C5F69676E6F72653A206469726563.gl_ignore:  directByte = 0x07, outChar(from_microcode);
-- gl_ignore: directByte = 0x07, outChar(from_microcode);
217 => X"67_6C_5F_69_67_6E_6F_72_65_3A_20_64_69_72_65_63",

-- L0731@00DA 676F7443686172203D20312C20696620.  gotChar = 1, if false then continue else gl_loop;
-- gotChar = 1, if false then continue else gl_loop;
218 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0733@00DB 676C5F7072696E743A20696620494E4C.gl_print:  if INLEND_MAX then gl_ignore;
-- gl_print: if INLEND_MAX then gl_ignore;
219 => X"67_6C_5F_70_72_69_6E_74_3A_20_69_66_20_49_4E_4C",

-- L0734@00DC 6F7574436861722866726F6D5F636861.  outChar(from_charin);
-- outChar(from_charin);
220 => X"6F_75_74_43_68_61_72_28_66_72_6F_6D_5F_63_68_61",

-- L0735@00DD 7772697465436F726528496E6C456E64.  writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- writeCore(InlEnd, CHARIN), InlEnd <= inc;
221 => X"77_72_69_74_65_43_6F_72_65_28_49_6E_6C_45_6E_64",

-- L0736@00DE 676C5F7772697465303A207772697465.gl_write0:  writeCore(InlEnd, zero);
-- gl_write0: writeCore(InlEnd, zero);
222 => X"67_6C_5F_77_72_69_74_65_30_3A_20_77_72_69_74_65",

-- L0737@00DF 676F7443686172203D20312C20696620.  gotChar = 1, if false then continue else gl_loop;
-- gotChar = 1, if false then continue else gl_loop;
223 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0739@00E0 676C5F6573633A206F75744265657028.gl_esc:  outBeep();
-- gl_esc: outBeep();
224 => X"67_6C_5F_65_73_63_3A_20_6F_75_74_42_65_65_70_28",

-- L0740@00E1 676F7443686172203D20312C20696620.  gotChar = 1, if false then continue else gl;
-- gotChar = 1, if false then continue else gl;
225 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0742@00E2 676C5F62733A20696620494E4C454E44.gl_bs:  if INLEND_MIN then gl_ignore;
-- gl_bs: if INLEND_MIN then gl_ignore;
226 => X"67_6C_5F_62_73_3A_20_69_66_20_49_4E_4C_45_4E_44",

-- L0743@00E3 64697265637442797465203D20307830.  directByte = 0x08, outChar(from_microcode);
-- directByte = 0x08, outChar(from_microcode);
227 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0744@00E4 496E6C456E64203C3D206465632C2069.  InlEnd <= dec, if false then continue else gl_write0;
-- InlEnd <= dec, if false then continue else gl_write0;
228 => X"49_6E_6C_45_6E_64_20_3C_3D_20_64_65_63_2C_20_69",

-- L0746@00E5 676C5F63723A207772697465436F7265.gl_cr:  writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- gl_cr: writeCore(InlEnd, CHARIN), InlEnd <= inc;
229 => X"67_6C_5F_63_72_3A_20_77_72_69_74_65_43_6F_72_65",

-- L0747@00E6 7772697465436F726528496E6C456E64.  writeCore(InlEnd, zero);
-- writeCore(InlEnd, zero);
230 => X"77_72_69_74_65_43_6F_72_65_28_49_6E_6C_45_6E_64",

-- L0749@00E7 6F757443524C4628293B202020202020.  outCRLF();
-- outCRLF();
231 => X"6F_75_74_43_52_4C_46_28_29_3B_20_20_20_20_20_20",

-- L0750@00E8 676F7443686172203D20312C20425020.  gotChar = 1, BP <= Inline_start, if false then continue else fetch;
-- gotChar = 1, BP <= Inline_start, if false then continue else fetch;
232 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_42_50_20",

-- L0752@00E9 676C5F7461623A20696620494E4C454E.gl_tab:  if INLEND_MAX then gl_ignore;
-- gl_tab: if INLEND_MAX then gl_ignore;
233 => X"67_6C_5F_74_61_62_3A_20_69_66_20_49_4E_4C_45_4E",

-- L0753@00EA 676C5F7461626C6F6F703A2069662041.gl_tabloop:  if AT_TAB then gl_write0;
-- gl_tabloop: if AT_TAB then gl_write0;
234 => X"67_6C_5F_74_61_62_6C_6F_6F_70_3A_20_69_66_20_41",

-- L0754@00EB 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode);
-- directByte = ' ', outChar(from_microcode);
235 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0755@00EC 64697265637442797465203D20272027.  directByte = ' ', writeCore(InlEnd, from_microcode), InlEnd <= inc;
-- directByte = ' ', writeCore(InlEnd, from_microcode), InlEnd <= inc;
236 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0756@00ED 69662066616C7365207468656E20636F.  if false then continue else gl_tabloop;
-- if false then continue else gl_tabloop;
237 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0761@00EE 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 4;
-- trace(from_microcode), directByte = 4;
238 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0762@00EF 616C75203C3D20696C5F63616368655F.  alu <= il_cache_update_statementcount, skipSpaces();
-- alu <= il_cache_update_statementcount, skipSpaces();
239 => X"61_6C_75_20_3C_3D_20_69_6C_5F_63_61_63_68_65_5F",

-- L0763@00F0 4D4452203C3D20546F55707065722C20.  MDR <= ToUpper, if MDR_IS_ALPHA then next else sa_default;
-- MDR <= ToUpper, if MDR_IS_ALPHA then next else sa_default;
240 => X"4D_44_52_20_3C_3D_20_54_6F_55_70_70_65_72_2C_20",

-- L0764@00F1 696620494C5F43414348455F48495420.  if IL_CACHE_HIT then sa_cached;
-- if IL_CACHE_HIT then sa_cached;
241 => X"69_66_20_49_4C_5F_43_41_43_48_45_5F_48_49_54_20",

-- L0765@00F2 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off2alpha, if false then continue else fetch;
-- IL_PC <= pc_plus_off2alpha, if false then continue else fetch;
242 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L0766@00F3 73615F64656661756C743A20494C5F50.sa_default:  IL_PC <= pc_plus_off8, if false then continue else fetch;
-- sa_default: IL_PC <= pc_plus_off8, if false then continue else fetch;
243 => X"73_61_5F_64_65_66_61_75_6C_74_3A_20_49_4C_5F_50",

-- L0767@00F4 73615F6361636865643A20494C5F5043.sa_cached:  IL_PC <= from_il_cache, BP <= from_il_cache, if false then continue else fetch;
-- sa_cached: IL_PC <= from_il_cache, BP <= from_il_cache, if false then continue else fetch;
244 => X"73_61_5F_63_61_63_68_65_64_3A_20_49_4C_5F_50_43",

-- L0772@00F5 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 40;
-- trace(from_microcode), directByte = 40;
245 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0773@00F6 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2;
-- alu <= S_fromStack, ExpStack <= pop2;
246 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L0774@00F7 616C75203C3D20535F706C75735F523B.  alu <= S_plus_R;
-- alu <= S_plus_R;
247 => X"61_6C_75_20_3C_3D_20_53_5F_70_6C_75_73_5F_52_3B",

-- L0775@00F8 54203C3D2066726F6D5F594C6F2C2069.  T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
-- T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
248 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_69",

-- L0776@00F9 4C696E6F203C3D20542C20696620595F.  Lino <= T, if Y_ZERO then SYNTAX_ERR;
-- Lino <= T, if Y_ZERO then SYNTAX_ERR;
249 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_69_66_20_59_5F",

-- L0779@00FA 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
250 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0780@00FB 54203C3D2042503B2020202020202020.  T <= BP;
-- T <= BP;
251 => X"54_20_3C_3D_20_42_50_3B_20_20_20_20_20_20_20_20",

-- L0781@00FC 696C5F66696E6442453A204245203C3D.il_findBE:  BE <= T, readCore(T);
-- il_findBE: BE <= T, readCore(T);
252 => X"69_6C_5F_66_69_6E_64_42_45_3A_20_42_45_20_3C_3D",

-- L0782@00FD 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_MATCHES_DB then il_fork;
-- directByte = 0x0D, if MDR_MATCHES_DB then il_fork;
253 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0783@00FE 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else il_findBE;
-- T <= inc, if false then continue else il_findBE;
254 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0785@00FF 696C5F666F726B3A207363616E50726F.il_fork:  scanProgram();
-- il_fork: scanProgram();
255 => X"69_6C_5F_66_6F_72_6B_3A_20_73_63_61_6E_50_72_6F",

-- L0786@0100 696620494D504C494E455F454D505459.  if IMPLINE_EMPTY then next else changeLine;
-- if IMPLINE_EMPTY then next else changeLine;
256 => X"69_66_20_49_4D_50_4C_49_4E_45_5F_45_4D_50_54_59",

-- L0788@0101 64656C6574654C696E653A2069662052.deleteLine:  if R_IS_ZERO then WarmStart;
-- deleteLine: if R_IS_ZERO then WarmStart;
257 => X"64_65_6C_65_74_65_4C_69_6E_65_3A_20_69_66_20_52",

-- L0789@0102 696620595F5A45524F207468656E206E.  if Y_ZERO then next else WarmStart;
-- if Y_ZERO then next else WarmStart;
258 => X"69_66_20_59_5F_5A_45_52_4F_20_74_68_65_6E_20_6E",

-- L0790@0103 66696E64507267456E6428293B202020.  findPrgEnd();
-- findPrgEnd();
259 => X"66_69_6E_64_50_72_67_45_6E_64_28_29_3B_20_20_20",

-- L0791@0104 636F7079436F726528636F70795F696E.  copyCore(copy_init_del);
-- copyCore(copy_init_del);
260 => X"63_6F_70_79_43_6F_72_65_28_63_6F_70_79_5F_69_6E",

-- L0792@0105 69662066616C7365207468656E20636F.  if false then continue else WarmStart;
-- if false then continue else WarmStart;
261 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0794@0106 6368616E67654C696E653A2069662052.changeLine:  if R_IS_ZERO then appendLine;
-- changeLine: if R_IS_ZERO then appendLine;
262 => X"63_68_61_6E_67_65_4C_69_6E_65_3A_20_69_66_20_52",

-- L0795@0107 696620595F5A45524F207468656E206E.  if Y_ZERO then next else insertLine;
-- if Y_ZERO then next else insertLine;
263 => X"69_66_20_59_5F_5A_45_52_4F_20_74_68_65_6E_20_6E",

-- L0797@0108 7265706C6163654C696E653A2066696E.replaceLine:  findPrgEnd();
-- replaceLine: findPrgEnd();
264 => X"72_65_70_6C_61_63_65_4C_69_6E_65_3A_20_66_69_6E",

-- L0798@0109 636F7079436F726528636F70795F696E.  copyCore(copy_init_del);
-- copyCore(copy_init_del);
265 => X"63_6F_70_79_43_6F_72_65_28_63_6F_70_79_5F_69_6E",

-- L0799@010A 7363616E50726F6772616D28293B2020.  scanProgram();
-- scanProgram();
266 => X"73_63_61_6E_50_72_6F_67_72_61_6D_28_29_3B_20_20",

-- L0800@010B 696E736572744C696E653A2066696E64.insertLine:  findPrgEnd();
-- insertLine: findPrgEnd();
267 => X"69_6E_73_65_72_74_4C_69_6E_65_3A_20_66_69_6E_64",

-- L0801@010C 636F7079436F726528636F70795F696E.  copyCore(copy_init_ins);
-- copyCore(copy_init_ins);
268 => X"63_6F_70_79_43_6F_72_65_28_63_6F_70_79_5F_69_6E",

-- L0802@010D 696E735F66696E6973683A20636F7079.ins_finish:  copyLine(LS);
-- ins_finish: copyLine(LS);
269 => X"69_6E_73_5F_66_69_6E_69_73_68_3A_20_63_6F_70_79",

-- L0803@010E 69662066616C7365207468656E20636F.  if false then continue else WarmStart;
-- if false then continue else WarmStart;
270 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0805@010F 617070656E644C696E653A2054203C3D.appendLine:  T <= dec;
-- appendLine: T <= dec;
271 => X"61_70_70_65_6E_64_4C_69_6E_65_3A_20_54_20_3C_3D",

-- L0806@0110 636F70794C696E6528646563293B2020.  copyLine(dec);
-- copyLine(dec);
272 => X"63_6F_70_79_4C_69_6E_65_28_64_65_63_29_3B_20_20",

-- L0807@0111 7772697465324E756C6C732873616D65.  write2Nulls(same);
-- write2Nulls(same);
273 => X"77_72_69_74_65_32_4E_75_6C_6C_73_28_73_61_6D_65",

-- L0808@0112 69662066616C7365207468656E20636F.  if false then continue else WarmStart;
-- if false then continue else WarmStart;
274 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0810@0113 636F70794C696E653A20616C75203C3D.copyLine:  alu <= S_fromLino;
-- copyLine: alu <= S_fromLino;
275 => X"63_6F_70_79_4C_69_6E_65_3A_20_61_6C_75_20_3C_3D",

-- L0811@0114 7772697465436F726528542C2066726F.  writeCore(T, from_SHi);
-- writeCore(T, from_SHi);
276 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0812@0115 54203C3D20696E633B20202020202020.  T <= inc;
-- T <= inc;
277 => X"54_20_3C_3D_20_69_6E_63_3B_20_20_20_20_20_20_20",

-- L0813@0116 7772697465436F726528542C2066726F.  writeCore(T, from_SLo);
-- writeCore(T, from_SLo);
278 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0814@0117 54203C3D20696E633B20202020202020.  T <= inc;
-- T <= inc;
279 => X"54_20_3C_3D_20_69_6E_63_3B_20_20_20_20_20_20_20",

-- L0815@0118 6170705F6C6F6F703A2072656164436F.app_loop:  readCore(BP);
-- app_loop: readCore(BP);
280 => X"61_70_70_5F_6C_6F_6F_70_3A_20_72_65_61_64_43_6F",

-- L0816@0119 7772697465436F726528542C2073616D.  writeCore(T, same);
-- writeCore(T, same);
281 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_73_61_6D",

-- L0817@011A 4250203C3D20696E632C2054203C3D20.  BP <= inc, T <= inc, directByte = 0x0D, if MDR_MATCHES_DB then return else app_loop;
-- BP <= inc, T <= inc, directByte = 0x0D, if MDR_MATCHES_DB then return else app_loop;
282 => X"42_50_20_3C_3D_20_69_6E_63_2C_20_54_20_3C_3D_20",

-- L0819@011B 66696E64507267456E643A2054203C3D.findPrgEnd:  T <= Prog_start;
-- findPrgEnd: T <= Prog_start;
283 => X"66_69_6E_64_50_72_67_45_6E_64_3A_20_54_20_3C_3D",

-- L0820@011C 6670655F6C6F6F703A2072656164436F.fpe_loop:  readCore16(reset1, same);
-- fpe_loop: readCore16(reset1, same);
284 => X"66_70_65_5F_6C_6F_6F_70_3A_20_72_65_61_64_43_6F",

-- L0821@011D 696620525F49535F5A45524F20746865.  if R_IS_ZERO then next else fpe_next;
-- if R_IS_ZERO then next else fpe_next;
285 => X"69_66_20_52_5F_49_53_5F_5A_45_52_4F_20_74_68_65",

-- L0822@011E 54203C3D206465633B20202020202020.  T <= dec;
-- T <= dec;
286 => X"54_20_3C_3D_20_64_65_63_3B_20_20_20_20_20_20_20",

-- L0823@011F 507267456E64203C3D20542C20696620.  PrgEnd <= T, if true then return else continue;
-- PrgEnd <= T, if true then return else continue;
287 => X"50_72_67_45_6E_64_20_3C_3D_20_54_2C_20_69_66_20",

-- L0824@0120 6670655F6E6578743A2066696E644E65.fpe_next:  findNextCR(same);
-- fpe_next: findNextCR(same);
288 => X"66_70_65_5F_6E_65_78_74_3A_20_66_69_6E_64_4E_65",

-- L0825@0121 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else fpe_loop;
-- T <= inc, if false then continue else fpe_loop;
289 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0829@0122 7363616E50726F6772616D3A2054203C.scanProgram:  T <= zero;
-- scanProgram: T <= zero;
290 => X"73_63_61_6E_50_72_6F_67_72_61_6D_3A_20_54_20_3C",

-- L0830@0123 4C53203C3D20542C204C45203C3D2054.  LS <= T, LE <= T, T <= Prog_start;
-- LS <= T, LE <= T, T <= Prog_start;
291 => X"4C_53_20_3C_3D_20_54_2C_20_4C_45_20_3C_3D_20_54",

-- L0832@0124 7363616E5F6C6F6F703A204C53203C3D.scan_loop:  LS <= T, readCore16(reset1, same);
-- scan_loop: LS <= T, readCore16(reset1, same);
292 => X"73_63_61_6E_5F_6C_6F_6F_70_3A_20_4C_53_20_3C_3D",

-- L0833@0125 616C75203C3D20535F66726F6D4C696E.  alu <= S_fromLino, if R_IS_ZERO then return;
-- alu <= S_fromLino, if R_IS_ZERO then return;
293 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_4C_69_6E",

-- L0834@0126 7363616E5F636865636B3A20616C7520.scan_check:  alu <= S_minus_R;
-- scan_check: alu <= S_minus_R;
294 => X"73_63_61_6E_5F_63_68_65_63_6B_3A_20_61_6C_75_20",

-- L0836@0127 696620595F5A45524F207468656E2073.  if Y_ZERO then scan_found else next;
-- if Y_ZERO then scan_found else next;
295 => X"69_66_20_59_5F_5A_45_52_4F_20_74_68_65_6E_20_73",

-- L0837@0128 696620595F5349474E207468656E2073.  if Y_SIGN then scan_found else next;
-- if Y_SIGN then scan_found else next;
296 => X"69_66_20_59_5F_53_49_47_4E_20_74_68_65_6E_20_73",

-- L0838@0129 7363616E5F6E6578743A2066696E644E.scan_next:  findNextCR(same);
-- scan_next: findNextCR(same);
297 => X"73_63_61_6E_5F_6E_65_78_74_3A_20_66_69_6E_64_4E",

-- L0839@012A 7363616E5F6C696E653A2054203C3D20.scan_line:  T <= inc, if false then continue else scan_loop;
-- scan_line: T <= inc, if false then continue else scan_loop;
298 => X"73_63_61_6E_5F_6C_69_6E_65_3A_20_54_20_3C_3D_20",

-- L0841@012B 7363616E5F666F756E643A2066696E64.scan_found:  findNextCR(same);
-- scan_found: findNextCR(same);
299 => X"73_63_61_6E_5F_66_6F_75_6E_64_3A_20_66_69_6E_64",

-- L0842@012C 4C45203C3D20542C2069662074727565.  LE <= T, if true then return else continue;
-- LE <= T, if true then return else continue;
300 => X"4C_45_20_3C_3D_20_54_2C_20_69_66_20_74_72_75_65",

-- L0845@012D 636F7079436F72653A2054203C3D2066.copyCore:  T <= from_S, if Y_ZERO then return;
-- copyCore: T <= from_S, if Y_ZERO then return;
301 => X"63_6F_70_79_43_6F_72_65_3A_20_54_20_3C_3D_20_66",

-- L0846@012E 72656164436F72652854293B20202020.  readCore(T);
-- readCore(T);
302 => X"72_65_61_64_43_6F_72_65_28_54_29_3B_20_20_20_20",

-- L0847@012F 54203C3D2066726F6D5F523B20202020.  T <= from_R;
-- T <= from_R;
303 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_3B_20_20_20_20",

-- L0848@0130 7772697465436F726528542C2073616D.  writeCore(T, same);
-- writeCore(T, same);
304 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_73_61_6D",

-- L0850@0131 616C75203C3D20636F70795F6E657874.  alu <= copy_next, if false then continue else copyCore;
-- alu <= copy_next, if false then continue else copyCore;
305 => X"61_6C_75_20_3C_3D_20_63_6F_70_79_5F_6E_65_78_74",

-- L0855@0132 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 43;
-- trace(from_microcode), directByte = 43;
306 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0856@0133 69662066616C7365207468656E20636F.  if false then continue else ColdStart;
-- if false then continue else ColdStart;
307 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0861@0134 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 42;
-- trace(from_microcode), directByte = 42;
308 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0862@0135 54203C3D20494C5F50433B2020202020.  T <= IL_PC;
-- T <= IL_PC;
309 => X"54_20_3C_3D_20_49_4C_5F_50_43_3B_20_20_20_20_20",

-- L0863@0136 585168657265203C3D20542C20726561.  XQhere <= T, readCore16(reset1, Prog_start);
-- XQhere <= T, readCore16(reset1, Prog_start);
310 => X"58_51_68_65_72_65_20_3C_3D_20_54_2C_20_72_65_61",

-- L0864@0137 4250203C3D20542C2054203C3D206672.  BP <= T, T <= from_R, if R_IS_ZERO then NOPROG_ERR;
-- BP <= T, T <= from_R, if R_IS_ZERO then NOPROG_ERR;
311 => X"42_50_20_3C_3D_20_54_2C_20_54_20_3C_3D_20_66_72",

-- L0865@0138 4C696E6F203C3D20542C206966206661.  Lino <= T, if false then continue else fetch;
-- Lino <= T, if false then continue else fetch;
312 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_69_66_20_66_61",

-- L0870@0139 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 44;
-- trace(from_microcode), directByte = 44;
313 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0871@013A 73746F705F72756E3A20646972656374.stop_run:  directByte = 'S', outChar(from_microcode);
-- stop_run: directByte = 'S', outChar(from_microcode);
314 => X"73_74_6F_70_5F_72_75_6E_3A_20_64_69_72_65_63_74",

-- L0872@013B 64697265637442797465203D20275427.  directByte = 'T', outChar(from_microcode);
-- directByte = 'T', outChar(from_microcode);
315 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_54_27",

-- L0873@013C 64697265637442797465203D20274F27.  directByte = 'O', outChar(from_microcode);
-- directByte = 'O', outChar(from_microcode);
316 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_4F_27",

-- L0874@013D 64697265637442797465203D20275027.  directByte = 'P', outChar(from_microcode);
-- directByte = 'P', outChar(from_microcode);
317 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_50_27",

-- L0875@013E 7072696E745F6C696E6F3A2064697265.print_lino:  directByte = ' ', outChar(from_microcode), alu <= S_fromLino;
-- print_lino: directByte = ' ', outChar(from_microcode), alu <= S_fromLino;
318 => X"70_72_69_6E_74_5F_6C_69_6E_6F_3A_20_64_69_72_65",

-- L0876@013F 64697265637442797465203D20274127.  directByte = 'A', outChar(from_microcode), T <= from_S;
-- directByte = 'A', outChar(from_microcode), T <= from_S;
319 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_41_27",

-- L0877@0140 64697265637442797465203D20275427.  directByte = 'T', outChar(from_microcode), LS <= T;
-- directByte = 'T', outChar(from_microcode), LS <= T;
320 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_54_27",

-- L0878@0141 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode), T <= LS;
-- directByte = ' ', outChar(from_microcode), T <= LS;
321 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0879@0142 7072696E744465635228525F66726F6D.  printDecR(R_fromT);
-- printDecR(R_fromT);
322 => X"70_72_69_6E_74_44_65_63_52_28_52_5F_66_72_6F_6D",

-- L0880@0143 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode), T <= fromTicks;
-- directByte = ' ', outChar(from_microcode), T <= fromTicks;
323 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0881@0144 7072696E744465635228525F66726F6D.  printDecR(R_fromT);
-- printDecR(R_fromT);
324 => X"70_72_69_6E_74_44_65_63_52_28_52_5F_66_72_6F_6D",

-- L0882@0145 64697265637442797465203D20272E27.  directByte = ' 64697265637442797465203D20272E27.', outChar(from_microcode), T <= recall;
-- directByte = '.', outChar(from_microcode), T <= recall;
325 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_2E_27",

-- L0883@0146 7072696E744465635228525F66726F6D.  printDecR(R_fromT);
-- printDecR(R_fromT);
326 => X"70_72_69_6E_74_44_65_63_52_28_52_5F_66_72_6F_6D",

-- L0884@0147 6572725F646F6E653A206F7574426565.err_done:  outBeep();
-- err_done: outBeep();
327 => X"65_72_72_5F_64_6F_6E_65_3A_20_6F_75_74_42_65_65",

-- L0885@0148 444247494E444558203C3D207A65726F.  DBGINDEX <= zero, ExpStack <= clear, RetStack <= clear, BasStack <= clear, T <= zero, alu <= reset0, if false then continue else WarmStart2;
-- DBGINDEX <= zero, ExpStack <= clear, RetStack <= clear, BasStack <= clear, T <= zero, alu <= reset0, if false then continue else WarmStart2;
328 => X"44_42_47_49_4E_44_45_58_20_3C_3D_20_7A_65_72_6F",

-- L0890@0149 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 49;
-- trace(from_microcode), directByte = 49;
329 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0891@014A 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2;
-- alu <= R_fromStack, ExpStack <= pop2;
330 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0892@014B 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2;
-- T <= ExpStack, ExpStack <= pop2;
331 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L0893@014C 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2;
-- alu <= S_fromStack, ExpStack <= pop2;
332 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L0897@014D 64697265637442797465203D2033302C.  directByte = 30, if S_EQU_DB_MOD32 then u_getarray;
-- directByte = 30, if S_EQU_DB_MOD32 then u_getarray;
333 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_33_30_2C",

-- L0898@014E 64697265637442797465203D2033312C.  directByte = 31, if S_EQU_DB_MOD32 then u_setarray;
-- directByte = 31, if S_EQU_DB_MOD32 then u_setarray;
334 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_33_31_2C",

-- L0900@014F 64697265637442797465203D2032302C.  directByte = 20, if S_EQU_DB_MOD32 then u_peek8;
-- directByte = 20, if S_EQU_DB_MOD32 then u_peek8;
335 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_30_2C",

-- L0901@0150 64697265637442797465203D2032342C.  directByte = 24, if S_EQU_DB_MOD32 then u_poke8;
-- directByte = 24, if S_EQU_DB_MOD32 then u_poke8;
336 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_34_2C",

-- L0903@0151 64697265637442797465203D2032312C.  directByte = 21, if S_EQU_DB_MOD32 then u_peek16;
-- directByte = 21, if S_EQU_DB_MOD32 then u_peek16;
337 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_31_2C",

-- L0904@0152 64697265637442797465203D2032352C.  directByte = 25, if S_EQU_DB_MOD32 then u_poke16;
-- directByte = 25, if S_EQU_DB_MOD32 then u_poke16;
338 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_35_2C",

-- L0906@0153 64697265637442797465203D2032322C.  directByte = 22, if S_EQU_DB_MOD32 then u_peek32;
-- directByte = 22, if S_EQU_DB_MOD32 then u_peek32;
339 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_32_2C",

-- L0907@0154 64697265637442797465203D2032362C.  directByte = 26, if S_EQU_DB_MOD32 then u_poke32;
-- directByte = 26, if S_EQU_DB_MOD32 then u_poke32;
340 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_36_2C",

-- L0909@0155 64697265637442797465203D2032372C.  directByte = 27, if S_EQU_DB_MOD32 then u_modulo;
-- directByte = 27, if S_EQU_DB_MOD32 then u_modulo;
341 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_37_2C",

-- L0910@0156 64697265637442797465203D2031382C.  directByte = 18, if S_EQU_DB_MOD32 then u_random;
-- directByte = 18, if S_EQU_DB_MOD32 then u_random;
342 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_31_38_2C",

-- L0912@0157 64697265637442797465203D2032332C.  directByte = 23, if S_EQU_DB_MOD32 then u_charin;
-- directByte = 23, if S_EQU_DB_MOD32 then u_charin;
343 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_33_2C",

-- L0913@0158 64697265637442797465203D2032382C.  directByte = 28, if S_EQU_DB_MOD32 then u_charout;
-- directByte = 28, if S_EQU_DB_MOD32 then u_charout;
344 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_38_2C",

-- L0915@0159 64697265637442797465203D2031392C.  directByte = 19, if S_EQU_DB_MOD32 then u_coreend;
-- directByte = 19, if S_EQU_DB_MOD32 then u_coreend;
345 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_31_39_2C",

-- L0916@015A 64697265637442797465203D2032392C.  directByte = 29, if S_EQU_DB_MOD32 then u_prgend;
-- directByte = 29, if S_EQU_DB_MOD32 then u_prgend;
346 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_39_2C",

-- L0918@015B 54203C3D2062696E6F702C2069662066.  T <= binop, if false then continue else u_done;
-- T <= binop, if false then continue else u_done;
347 => X"54_20_3C_3D_20_62_69_6E_6F_70_2C_20_69_66_20_66",

-- L0920@015C 755F72616E646F6D3A2054203C3D2066.u_random:  T <= from_lfsr;
-- u_random: T <= from_lfsr;
348 => X"75_5F_72_61_6E_64_6F_6D_3A_20_54_20_3C_3D_20_66",

-- L0921@015D 755F6D6F64756C6F3A20616C75203C3D.u_modulo:  alu <= S_fromT, div_mod();
-- u_modulo: alu <= S_fromT, div_mod();
349 => X"75_5F_6D_6F_64_75_6C_6F_3A_20_61_6C_75_20_3C_3D",

-- L0922@015E 54203C3D2066726F6D5F5948692C2069.  T <= from_YHi, if false then continue else u_done;
-- T <= from_YHi, if false then continue else u_done;
350 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_48_69_2C_20_69",

-- L0924@015F 755F636861726F75743A20616C75203C.u_charout:  alu <= S_fromT;
-- u_charout: alu <= S_fromT;
351 => X"75_5F_63_68_61_72_6F_75_74_3A_20_61_6C_75_20_3C",

-- L0925@0160 4D4452203C3D2066726F6D5F534C6F2C.  MDR <= from_SLo, trace(from_microcode), directByte = 51;
-- MDR <= from_SLo, trace(from_microcode), directByte = 51;
352 => X"4D_44_52_20_3C_3D_20_66_72_6F_6D_5F_53_4C_6F_2C",

-- L0926@0161 6F7574436861722866726F6D5F4D4452.  outChar(from_MDR);
-- outChar(from_MDR);
353 => X"6F_75_74_43_68_61_72_28_66_72_6F_6D_5F_4D_44_52",

-- L0927@0162 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, if false then continue else fetch1;
-- ExpStack <= push_TWord, if false then continue else fetch1;
354 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0929@0163 755F63686172696E3A20696620434841.u_charin:  if CHARIN_READY then next else repeat;
-- u_charin: if CHARIN_READY then next else repeat;
355 => X"75_5F_63_68_61_72_69_6E_3A_20_69_66_20_43_48_41",

-- L0930@0164 676F7443686172203D20312C204D4452.  gotChar = 1, MDR <= CHARIN, if false then continue else u_in;
-- gotChar = 1, MDR <= CHARIN, if false then continue else u_in;
356 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_4D_44_52",

-- L0932@0165 755F7065656B383A2072656164436F72.u_peek8:  readCore(T);
-- u_peek8: readCore(T);
357 => X"75_5F_70_65_65_6B_38_3A_20_72_65_61_64_43_6F_72",

-- L0933@0166 755F696E3A2054203C3D204D44522C20.u_in:  T <= MDR, if false then continue else u_done;
-- u_in: T <= MDR, if false then continue else u_done;
358 => X"75_5F_69_6E_3A_20_54_20_3C_3D_20_4D_44_52_2C_20",

-- L0935@0167 755F707267656E643A2054203C3D2050.u_prgend:  T <= PrgEnd, if false then continue else u_done;
-- u_prgend: T <= PrgEnd, if false then continue else u_done;
359 => X"75_5F_70_72_67_65_6E_64_3A_20_54_20_3C_3D_20_50",

-- L0936@0168 755F636F7265656E643A2054203C3D20.u_coreend:  T <= Core_End, if false then continue else u_done;
-- u_coreend: T <= Core_End, if false then continue else u_done;
360 => X"75_5F_63_6F_72_65_65_6E_64_3A_20_54_20_3C_3D_20",

-- L0938@0169 755F67657461727261793A2054203C3D.u_getarray:  T <= index2address, if IS_CPU32 then u_peek32;
-- u_getarray: T <= index2address, if IS_CPU32 then u_peek32;
361 => X"75_5F_67_65_74_61_72_72_61_79_3A_20_54_20_3C_3D",

-- L0939@016A 755F7065656B31363A2072656164436F.u_peek16:  readCore16(reset0, same);
-- u_peek16: readCore16(reset0, same);
362 => X"75_5F_70_65_65_6B_31_36_3A_20_72_65_61_64_43_6F",

-- L0940@016B 54203C3D2066726F6D5F522C20696620.  T <= from_R, if false then continue else u_done;
-- T <= from_R, if false then continue else u_done;
363 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_2C_20_69_66_20",

-- L0941@016C 755F7065656B33323A2072656164436F.u_peek32:  readCore16(reset0, same);
-- u_peek32: readCore16(reset0, same);
364 => X"75_5F_70_65_65_6B_33_32_3A_20_72_65_61_64_43_6F",

-- L0942@016D 72656164436F72653136286E6F702C20.  readCore16(nop, same);
-- readCore16(nop, same);
365 => X"72_65_61_64_43_6F_72_65_31_36_28_6E_6F_70_2C_20",

-- L0943@016E 54203C3D2066726F6D5F522C20696620.  T <= from_R, if false then continue else u_done;
-- T <= from_R, if false then continue else u_done;
366 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_2C_20_69_66_20",

-- L0945@016F 755F706F6B65383A2070726570577269.u_poke8:  prepWrite();
-- u_poke8: prepWrite();
367 => X"75_5F_70_6F_6B_65_38_3A_20_70_72_65_70_57_72_69",

-- L0946@0170 7772697465436F726528542C2066726F.  writeCore(T, from_SLo);
-- writeCore(T, from_SLo);
368 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0947@0171 69662066616C7365207468656E20636F.  if false then continue else fetch1;
-- if false then continue else fetch1;
369 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0949@0172 755F73657461727261793A2054203C3D.u_setarray:  T <= index2address, if IS_CPU32 then u_poke32;
-- u_setarray: T <= index2address, if IS_CPU32 then u_poke32;
370 => X"75_5F_73_65_74_61_72_72_61_79_3A_20_54_20_3C_3D",

-- L0950@0173 755F706F6B6531363A20707265705772.u_poke16:  prepWrite();
-- u_poke16: prepWrite();
371 => X"75_5F_70_6F_6B_65_31_36_3A_20_70_72_65_70_57_72",

-- L0951@0174 54203C3D20696E632C20777269746553.  T <= inc, writeS16();
-- T <= inc, writeS16();
372 => X"54_20_3C_3D_20_69_6E_63_2C_20_77_72_69_74_65_53",

-- L0952@0175 69662066616C7365207468656E20636F.  if false then continue else fetch1;
-- if false then continue else fetch1;
373 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0954@0176 755F706F6B6533323A20707265705772.u_poke32:  prepWrite();
-- u_poke32: prepWrite();
374 => X"75_5F_70_6F_6B_65_33_32_3A_20_70_72_65_70_57_72",

-- L0955@0177 54203C3D20696E633B20202020202020.  T <= inc;
-- T <= inc;
375 => X"54_20_3C_3D_20_69_6E_63_3B_20_20_20_20_20_20_20",

-- L0956@0178 54203C3D20696E633B20202020202020.  T <= inc;
-- T <= inc;
376 => X"54_20_3C_3D_20_69_6E_63_3B_20_20_20_20_20_20_20",

-- L0957@0179 54203C3D20696E632C20777269746553.  T <= inc, writeS16();
-- T <= inc, writeS16();
377 => X"54_20_3C_3D_20_69_6E_63_2C_20_77_72_69_74_65_53",

-- L0958@017A 616C75203C3D20535F7377617033322C.  alu <= S_swap32, writeS16();
-- alu <= S_swap32, writeS16();
378 => X"61_6C_75_20_3C_3D_20_53_5F_73_77_61_70_33_32_2C",

-- L0959@017B 69662066616C7365207468656E20636F.  if false then continue else fetch1;
-- if false then continue else fetch1;
379 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0961@017C 7072657057726974653A2054203C3D20.prepWrite:  T <= save, trace(from_microcode), directByte = 51;
-- prepWrite: T <= save, trace(from_microcode), directByte = 51;
380 => X"70_72_65_70_57_72_69_74_65_3A_20_54_20_3C_3D_20",

-- L0962@017D 54203C3D2066726F6D5F523B20202020.  T <= from_R;
-- T <= from_R;
381 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_3B_20_20_20_20",

-- L0963@017E 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, alu <= S_fromT, T <= recall, if true then return else continue;
-- ExpStack <= push_TWord, alu <= S_fromT, T <= recall, if true then return else continue;
382 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0968@017F 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 19;
-- trace(from_microcode), directByte = 19;
383 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0969@0180 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then RSTACK_ERR;
-- if STACK_IS_EMPTY then RSTACK_ERR;
384 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0970@0181 494C5F5043203C3D2052657453746163.  IL_PC <= RetStack, RetStack <= pop, if false then continue else fetch;
-- IL_PC <= RetStack, RetStack <= pop, if false then continue else fetch;
385 => X"49_4C_5F_50_43_20_3C_3D_20_52_65_74_53_74_61_63",

-- L0975@0182 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 20;
-- trace(from_microcode), directByte = 20;
386 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0976@0183 696620535441434B5F49535F46554C4C.  if STACK_IS_FULL then RSTACK_ERR;
-- if STACK_IS_FULL then RSTACK_ERR;
387 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_46_55_4C_4C",

-- L0977@0184 526574537461636B203C3D2070757368.  RetStack <= push_IL_PC_PLUS_1, if false then continue else jump;
-- RetStack <= push_IL_PC_PLUS_1, if false then continue else jump;
388 => X"52_65_74_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0982@0185 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 21;
-- trace(from_microcode), directByte = 21;
389 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0983@0186 6A756D703A20494C5F5043203C3D2064.jump:  IL_PC <= direct11, if false then continue else fetch;
-- jump: IL_PC <= direct11, if false then continue else fetch;
390 => X"6A_75_6D_70_3A_20_49_4C_5F_50_43_20_3C_3D_20_64",

-- L0988@0187 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 7;
-- trace(from_microcode), directByte = 7;
391 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0989@0188 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off6;
-- IL_PC <= pc_plus_off6;
392 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L0990@0189 62725F657869743A2074726163652866.br_exit:  trace(from_microcode), directByte = 30;
-- br_exit: trace(from_microcode), directByte = 30;
393 => X"62_72_5F_65_78_69_74_3A_20_74_72_61_63_65_28_66",

-- L0991@018A 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
394 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0996@018B 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 7;
-- trace(from_microcode), directByte = 7;
395 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0997@018C 69662066616C7365207468656E20636F.  if false then continue else badop;
-- if false then continue else badop;
396 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L1002@018D 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 17;
-- trace(from_microcode), directByte = 17;
397 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L1003@018E 54203C3D20494C5F50432C204250203C.  T <= IL_PC, BP <= save, skipSpaces();
-- T <= IL_PC, BP <= save, skipSpaces();
398 => X"54_20_3C_3D_20_49_4C_5F_50_43_2C_20_42_50_20_3C",

-- L1004@018F 62635F6C6F6F703A2074726163652866.bc_loop:  trace(from_microcode), directByte = 3;
-- bc_loop: trace(from_microcode), directByte = 3;
399 => X"62_63_5F_6C_6F_6F_70_3A_20_74_72_61_63_65_28_66",

-- L1005@0190 72656164436F7265284250293B202020.  readCore(BP);
-- readCore(BP);
400 => X"72_65_61_64_43_6F_72_65_28_42_50_29_3B_20_20_20",

-- L1006@0191 6966204D44525F4D4154434845535F49.  if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
-- if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
401 => X"69_66_20_4D_44_52_5F_4D_41_54_43_48_45_53_5F_49",

-- L1007@0192 4250203C3D20696E632C20494C5F5043.  BP <= inc, IL_PC <= inc, if ILCODEBYTE_BIT7 then next else bc_loop;
-- BP <= inc, IL_PC <= inc, if ILCODEBYTE_BIT7 then next else bc_loop;
402 => X"42_50_20_3C_3D_20_69_6E_63_2C_20_49_4C_5F_50_43",

-- L1009@0193 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
403 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L1010@0194 62635F657869743A204250203C3D2072.bc_exit:  BP <= recall, IL_PC <= T;
-- bc_exit: BP <= recall, IL_PC <= T;
404 => X"62_63_5F_65_78_69_74_3A_20_42_50_20_3C_3D_20_72",

-- L1012@0195 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
405 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L1017@0196 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 16;
-- trace(from_microcode), directByte = 16;
406 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L1018@0197 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
407 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L1019@0198 4D4452203C3D20546F55707065722C20.  MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
-- MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
408 => X"4D_44_52_20_3C_3D_20_54_6F_55_70_70_65_72_2C_20",

-- L1020@0199 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
409 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L1021@019A 62765F657865633A2054203C3D204D44.bv_exec:  T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
-- bv_exec: T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
410 => X"62_76_5F_65_78_65_63_3A_20_54_20_3C_3D_20_4D_44",

-- L1022@019B 457870537461636B203C3D2070757368.  ExpStack <= push_TByte, BP <= inc, if false then continue else fetch;
-- ExpStack <= push_TByte, BP <= inc, if false then continue else fetch;
411 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L1027@019C 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 14;
-- trace(from_microcode), directByte = 14;
412 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L1028@019D 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
413 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L1029@019E 616C75203C3D207265736574302C2069.  alu <= reset0, if MDR_IS_NUM then bn_loop;
-- alu <= reset0, if MDR_IS_NUM then bn_loop;
414 => X"61_6C_75_20_3C_3D_20_72_65_73_65_74_30_2C_20_69",

-- L1030@019F 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
415 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L1031@01A0 626E5F657869743A2074726163655928.bn_exit:  traceY();
-- bn_exit: traceY();
416 => X"62_6E_5F_65_78_69_74_3A_20_74_72_61_63_65_59_28",

-- L1032@01A1 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 30;
-- trace(from_microcode), directByte = 30;
417 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L1033@01A2 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
418 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L1034@01A3 626E5F6C6F6F703A20616C75203C3D20.bn_loop:  alu <= Yx10_plus_MDR, BP <= inc;
-- bn_loop: alu <= Yx10_plus_MDR, BP <= inc;
419 => X"62_6E_5F_6C_6F_6F_70_3A_20_61_6C_75_20_3C_3D_20",

-- L1035@01A4 696620414C555F4F564552464C4F5720.  if ALU_OVERFLOW then OVERFLOW_ERR;
-- if ALU_OVERFLOW then OVERFLOW_ERR;
420 => X"69_66_20_41_4C_55_5F_4F_56_45_52_46_4C_4F_57_20",

-- L1036@01A5 72656164436F7265284250293B202020.  readCore(BP);
-- readCore(BP);
421 => X"72_65_61_64_43_6F_72_65_28_42_50_29_3B_20_20_20",

-- L1037@01A6 6966204D44525F49535F4E554D207468.  if MDR_IS_NUM then bn_loop;
-- if MDR_IS_NUM then bn_loop;
422 => X"69_66_20_4D_44_52_5F_49_53_5F_4E_55_4D_20_74_68",

-- L1038@01A7 54203C3D2066726F6D5F594C6F2C2069.  T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
-- T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
423 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_69",

-- L1039@01A8 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, if false then continue else bn_exit;
-- ExpStack <= push_TWord, if false then continue else bn_exit;
424 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L1044@01A9 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 13;
-- trace(from_microcode), directByte = 13;
425 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L1045@01AA 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
426 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L1046@01AB 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_MATCHES_DB then fetch;
-- directByte = 0x0D, if MDR_MATCHES_DB then fetch;
427 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1047@01AC 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
428 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L1049@01AD 425245414B3A20676F7443686172203D.BREAK:  gotChar = 1, trace(from_microcode), directByte = 55;
-- BREAK: gotChar = 1, trace(from_microcode), directByte = 55;
429 => X"42_52_45_41_4B_3A_20_67_6F_74_43_68_61_72_20_3D",

-- L1050@01AE 64697265637442797465203D20274227.  directByte = 'B', outChar(from_microcode);
-- directByte = 'B', outChar(from_microcode);
430 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_42_27",

-- L1051@01AF 64697265637442797465203D20275227.  directByte = 'R', outChar(from_microcode);
-- directByte = 'R', outChar(from_microcode);
431 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_52_27",

-- L1052@01B0 64697265637442797465203D20274B27.  directByte = 'K', outChar(from_microcode);
-- directByte = 'K', outChar(from_microcode);
432 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_4B_27",

-- L1053@01B1 69662066616C7365207468656E20636F.  if false then continue else traceDetails;
-- if false then continue else traceDetails;
433 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L1055@01B2 4E4F50524F475F4552523A2064697265.NOPROG_ERR:  directByte = 50, DBGINDEX <= from_microcode, if false then continue else traceError;
-- NOPROG_ERR: directByte = 50, DBGINDEX <= from_microcode, if false then continue else traceError;
434 => X"4E_4F_50_52_4F_47_5F_45_52_52_3A_20_64_69_72_65",

-- L1056@01B3 4449564259305F4552523A2064697265.DIVBY0_ERR:  directByte = 57, DBGINDEX <= from_microcode, if false then continue else traceError;
-- DIVBY0_ERR: directByte = 57, DBGINDEX <= from_microcode, if false then continue else traceError;
435 => X"44_49_56_42_59_30_5F_45_52_52_3A_20_64_69_72_65",

-- L1057@01B4 4F564552464C4F575F4552523A206469.OVERFLOW_ERR:  directByte = 58, DBGINDEX <= from_microcode, if false then continue else traceError;
-- OVERFLOW_ERR: directByte = 58, DBGINDEX <= from_microcode, if false then continue else traceError;
436 => X"4F_56_45_52_46_4C_4F_57_5F_45_52_52_3A_20_64_69",

-- L1058@01B5 53594E5441585F4552523A2064697265.SYNTAX_ERR:  directByte = 61, DBGINDEX <= from_microcode, if false then continue else traceError;
-- SYNTAX_ERR: directByte = 61, DBGINDEX <= from_microcode, if false then continue else traceError;
437 => X"53_59_4E_54_41_58_5F_45_52_52_3A_20_64_69_72_65",

-- L1059@01B6 494E5445524E414C5F4552523A206469.INTERNAL_ERR:  directByte = 62, DBGINDEX <= from_microcode, if false then continue else traceError;
-- INTERNAL_ERR: directByte = 62, DBGINDEX <= from_microcode, if false then continue else traceError;
438 => X"49_4E_54_45_52_4E_41_4C_5F_45_52_52_3A_20_64_69",

-- L1060@01B7 45535441434B5F4552523A2064697265.ESTACK_ERR:  directByte = 60, DBGINDEX <= from_microcode, if false then continue else traceError;
-- ESTACK_ERR: directByte = 60, DBGINDEX <= from_microcode, if false then continue else traceError;
439 => X"45_53_54_41_43_4B_5F_45_52_52_3A_20_64_69_72_65",

-- L1061@01B8 52535441434B5F4552523A2064697265.RSTACK_ERR:  directByte = 59, DBGINDEX <= from_microcode, if false then continue else traceError;
-- RSTACK_ERR: directByte = 59, DBGINDEX <= from_microcode, if false then continue else traceError;
440 => X"52_53_54_41_43_4B_5F_45_52_52_3A_20_64_69_72_65",

-- L1062@01B9 42535441434B5F4552523A2064697265.BSTACK_ERR:  directByte = 54, DBGINDEX <= from_microcode;
-- BSTACK_ERR: directByte = 54, DBGINDEX <= from_microcode;
441 => X"42_53_54_41_43_4B_5F_45_52_52_3A_20_64_69_72_65",

-- L1063@01BA 74726163654572726F723A2069662044.traceError:  if DBG_READY then next else repeat;
-- traceError: if DBG_READY then next else repeat;
442 => X"74_72_61_63_65_45_72_72_6F_72_3A_20_69_66_20_44",

-- L1064@01BB 6966204442475F524541445920746865.  if DBG_READY then next else repeat;
-- if DBG_READY then next else repeat;
443 => X"69_66_20_44_42_47_5F_52_45_41_44_59_20_74_68_65",

-- L1065@01BC 444247494E444558203C3D207A65726F.  DBGINDEX <= zero, directByte = 'E', outChar(from_microcode);
-- DBGINDEX <= zero, directByte = 'E', outChar(from_microcode);
444 => X"44_42_47_49_4E_44_45_58_20_3C_3D_20_7A_65_72_6F",

-- L1066@01BD 64697265637442797465203D20275227.  directByte = 'R', outChar(from_microcode);
-- directByte = 'R', outChar(from_microcode);
445 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_52_27",

-- L1067@01BE 64697265637442797465203D20275227.  directByte = 'R', outChar(from_microcode);
-- directByte = 'R', outChar(from_microcode);
446 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_52_27",

-- L1068@01BF 747261636544657461696C733A206469.traceDetails:  directByte = '#', outChar(from_microcode), T <= IL_PC;
-- traceDetails: directByte = '#', outChar(from_microcode), T <= IL_PC;
447 => X"74_72_61_63_65_44_65_74_61_69_6C_73_3A_20_64_69",

-- L1069@01C0 54203C3D206465633B20202020202020.  T <= dec;
-- T <= dec;
448 => X"54_20_3C_3D_20_64_65_63_3B_20_20_20_20_20_20_20",

-- L1070@01C1 7072696E744465635228525F66726F6D.  printDecR(R_fromT);
-- printDecR(R_fromT);
449 => X"70_72_69_6E_74_44_65_63_52_28_52_5F_66_72_6F_6D",

-- L1071@01C2 69662049535F52554E4D4F4445207468.  if IS_RUNMODE then print_lino else err_done;
-- if IS_RUNMODE then print_lino else err_done;
450 => X"69_66_20_49_53_5F_52_55_4E_4D_4F_44_45_20_74_68",

-- L1073@01C3 66696E644E65787443523A2072656164.findNextCR:  readCore(T);
-- findNextCR: readCore(T);
451 => X"66_69_6E_64_4E_65_78_74_43_52_3A_20_72_65_61_64",

-- L1074@01C4 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_MATCHES_DB then return;
-- directByte = 0x0D, if MDR_MATCHES_DB then return;
452 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1075@01C5 54203C3D20696E632C20646972656374.  T <= inc, directByte = 0x00, if MDR_MATCHES_DB then INTERNAL_ERR else findNextCR;
-- T <= inc, directByte = 0x00, if MDR_MATCHES_DB then INTERNAL_ERR else findNextCR;
453 => X"54_20_3C_3D_20_69_6E_63_2C_20_64_69_72_65_63_74",

-- L1077@01C6 72656164436F726531363A2072656164.readCore16:  readCore(T);
-- readCore16: readCore(T);
454 => X"72_65_61_64_43_6F_72_65_31_36_3A_20_72_65_61_64",

-- L1078@01C7 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc;
-- alu <= Rx256_plus_MDR, T <= inc;
455 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L1079@01C8 72656164436F72652854293B20202020.  readCore(T);
-- readCore(T);
456 => X"72_65_61_64_43_6F_72_65_28_54_29_3B_20_20_20_20",

-- L1080@01C9 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc, if true then return else continue;
-- alu <= Rx256_plus_MDR, T <= inc, if true then return else continue;
457 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L1082@01CA 7772697465324E756C6C733A20777269.write2Nulls:  writeCore(T, zero), T <= inc;
-- write2Nulls: writeCore(T, zero), T <= inc;
458 => X"77_72_69_74_65_32_4E_75_6C_6C_73_3A_20_77_72_69",

-- L1083@01CB 4D4152203C3D20542C204D4452203C3D.  MAR <= T, MDR <= zero, if false then continue else writeCore;
-- MAR <= T, MDR <= zero, if false then continue else writeCore;
459 => X"4D_41_52_20_3C_3D_20_54_2C_20_4D_44_52_20_3C_3D",

-- L1086@01CC 70756C6C52533A20616C75203C3D2052.pullRS:  alu <= R_fromStack, ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR;
-- pullRS: alu <= R_fromStack, ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR;
460 => X"70_75_6C_6C_52_53_3A_20_61_6C_75_20_3C_3D_20_52",

-- L1087@01CD 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR else return;
-- alu <= S_fromStack, ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR else return;
461 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L1090@01CE 7072696E744465633A20616C75203C3D.printDec:  alu <= R_fromStack, ExpStack <= pop2;
-- printDec: alu <= R_fromStack, ExpStack <= pop2;
462 => X"70_72_69_6E_74_44_65_63_3A_20_61_6C_75_20_3C_3D",

-- L1092@01CF 7072696E74446563523A20616C75203C.printDecR:  alu <= bcd_start;
-- printDecR: alu <= bcd_start;
463 => X"70_72_69_6E_74_44_65_63_52_3A_20_61_6C_75_20_3C",

-- L1093@01D0 616C75203C3D206263645F6E6578742C.  alu <= bcd_next, if ALU_READY then next else repeat;
-- alu <= bcd_next, if ALU_READY then next else repeat;
464 => X"61_6C_75_20_3C_3D_20_62_63_64_5F_6E_65_78_74_2C",

-- L1094@01D1 696620414C555F5349474E207468656E.  if ALU_SIGN then next else printY;
-- if ALU_SIGN then next else printY;
465 => X"69_66_20_41_4C_55_5F_53_49_47_4E_20_74_68_65_6E",

-- L1095@01D2 64697265637442797465203D20272D27.  directByte = '-', outChar(from_microcode);
-- directByte = '-', outChar(from_microcode);
466 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_2D_27",

-- L1096@01D3 7072696E74593A206469726563744279.printY:  directByte = 6, T <= from_microcode, if IS_CPU32 then next else printY1;
-- printY: directByte = 6, T <= from_microcode, if IS_CPU32 then next else printY1;
467 => X"70_72_69_6E_74_59_3A_20_64_69_72_65_63_74_42_79",

-- L1097@01D4 64697265637442797465203D2031342C.  directByte = 14, T <= from_microcode;
-- directByte = 14, T <= from_microcode;
468 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_31_34_2C",

-- L1098@01D5 7072696E7459313A206F75744E5A4368.printY1:  outNZChar(from_YtoAlphaZ);
-- printY1: outNZChar(from_YtoAlphaZ);
469 => X"70_72_69_6E_74_59_31_3A_20_6F_75_74_4E_5A_43_68",

-- L1099@01D6 7072696E74596C703A206F75744E5A43.printYlp:  outNZChar(from_YtoAlphaZ), T <= dec;
-- printYlp: outNZChar(from_YtoAlphaZ), T <= dec;
470 => X"70_72_69_6E_74_59_6C_70_3A_20_6F_75_74_4E_5A_43",

-- L1100@01D7 616C75203C3D20525F66726F6D543B20.  alu <= R_fromT;
-- alu <= R_fromT;
471 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_54_3B_20",

-- L1101@01D8 696620525F49535F5A45524F20746865.  if R_IS_ZERO then next else printYlp;
-- if R_IS_ZERO then next else printYlp;
472 => X"69_66_20_52_5F_49_53_5F_5A_45_52_4F_20_74_68_65",

-- L1102@01D9 434841524F5554203C3D2066726F6D5F.  CHAROUT <= from_YtoAlpha, if false then continue else outChar;
-- CHAROUT <= from_YtoAlpha, if false then continue else outChar;
473 => X"43_48_41_52_4F_55_54_20_3C_3D_20_66_72_6F_6D_5F",

-- L1104@01DA 6F75744E5A436861723A206F75744368.outNZChar:  outChar(from_YtoAlphaZ);
-- outNZChar: outChar(from_YtoAlphaZ);
474 => X"6F_75_74_4E_5A_43_68_61_72_3A_20_6F_75_74_43_68",

-- L1105@01DB 616C75203C3D20597831362C20696620.  alu <= Yx16, if true then return else continue;
-- alu <= Yx16, if true then return else continue;
475 => X"61_6C_75_20_3C_3D_20_59_78_31_36_2C_20_69_66_20",

-- L1107@01DC 736B69705370616365733A2072656164.skipSpaces:  readCore(BP);
-- skipSpaces: readCore(BP);
476 => X"73_6B_69_70_53_70_61_63_65_73_3A_20_72_65_61_64",

-- L1108@01DD 64697265637442797465203D20272027.  directByte = ' ', if MDR_MATCHES_DB then skipSp;
-- directByte = ' ', if MDR_MATCHES_DB then skipSp;
477 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L1109@01DE 64697265637442797465203D20307830.  directByte = 0x09, if MDR_MATCHES_DB then skipSp else return;
-- directByte = 0x09, if MDR_MATCHES_DB then skipSp else return;
478 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1110@01DF 736B697053703A204250203C3D20696E.skipSp:  BP <= inc, if false then continue else skipSpaces;
-- skipSp: BP <= inc, if false then continue else skipSpaces;
479 => X"73_6B_69_70_53_70_3A_20_42_50_20_3C_3D_20_69_6E",

-- L1112@01E0 6F7574426565703A206F757443524C46.outBeep:  outCRLF();
-- outBeep: outCRLF();
480 => X"6F_75_74_42_65_65_70_3A_20_6F_75_74_43_52_4C_46",

-- L1113@01E1 74726163652863726C66293B20202020.  trace(crlf);
-- trace(crlf);
481 => X"74_72_61_63_65_28_63_72_6C_66_29_3B_20_20_20_20",

-- L1114@01E2 64697265637442797465203D20307830.  directByte = 0x07, CHAROUT <= from_microcode, if false then continue else outChar;
-- directByte = 0x07, CHAROUT <= from_microcode, if false then continue else outChar;
482 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1116@01E3 6F757443524C463A2064697265637442.outCRLF:  directByte = 0x0D, outChar(from_microcode);
-- outCRLF: directByte = 0x0D, outChar(from_microcode);
483 => X"6F_75_74_43_52_4C_46_3A_20_64_69_72_65_63_74_42",

-- L1117@01E4 64697265637442797465203D20307830.  directByte = 0x0A, CHAROUT <= from_microcode;
-- directByte = 0x0A, CHAROUT <= from_microcode;
484 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1118@01E5 6F7574436861723A2069662043484152.outChar:  if CHAROUT_READY then next else repeat;
-- outChar: if CHAROUT_READY then next else repeat;
485 => X"6F_75_74_43_68_61_72_3A_20_69_66_20_43_48_41_52",

-- L1119@01E6 696620434841524F55545F5245414459.  if CHAROUT_READY then return else repeat;
-- if CHAROUT_READY then return else repeat;
486 => X"69_66_20_43_48_41_52_4F_55_54_5F_52_45_41_44_59",

-- L1121@01E7 77726974655331363A20777269746543.writeS16:  writeCore(T, from_SLo), T <= dec;
-- writeS16: writeCore(T, from_SLo), T <= dec;
487 => X"77_72_69_74_65_53_31_36_3A_20_77_72_69_74_65_43",

-- L1122@01E8 4D4152203C3D20542C204D4452203C3D.  MAR <= T, MDR <= from_SHi, T <= dec;
-- MAR <= T, MDR <= from_SHi, T <= dec;
488 => X"4D_41_52_20_3C_3D_20_54_2C_20_4D_44_52_20_3C_3D",

-- L1123@01E9 7772697465436F72653A206E5752203D.writeCore:  nWR = 0;
-- writeCore: nWR = 0;
489 => X"77_72_69_74_65_43_6F_72_65_3A_20_6E_57_52_20_3D",

-- L1124@01EA 6E5752203D20302C206966206E524541.  nWR = 0, if nREADY then repeat else return;
-- nWR = 0, if nREADY then repeat else return;
490 => X"6E_57_52_20_3D_20_30_2C_20_69_66_20_6E_52_45_41",

-- L1126@01EB 72656164436F72653A206E5244203D20.readCore:  nRD = 0;
-- readCore: nRD = 0;
491 => X"72_65_61_64_43_6F_72_65_3A_20_6E_52_44_20_3D_20",

-- L1127@01EC 6E5244203D20302C204D4452203C3D20.  nRD = 0, MDR <= from_Bus, if nREADY then repeat else return;
-- nRD = 0, MDR <= from_Bus, if nREADY then repeat else return;
492 => X"6E_52_44_20_3D_20_30_2C_20_4D_44_52_20_3C_3D_20",

-- L1139@01ED 747261636542503A2045787053746163.traceBP:  ExpStack <= push_TWord, T <= BP, trace(from_microcode), directByte = 33;
-- traceBP: ExpStack <= push_TWord, T <= BP, trace(from_microcode), directByte = 33;
493 => X"74_72_61_63_65_42_50_3A_20_45_78_70_53_74_61_63",

-- L1140@01EE 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2, if true then return else continue;
-- T <= ExpStack, ExpStack <= pop2, if true then return else continue;
494 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L1142@01EF 7472616365593A20457870537461636B.traceY:  ExpStack <= push_TWord, T <= from_YLo, trace(from_microcode), directByte = 32;
-- traceY: ExpStack <= push_TWord, T <= from_YLo, trace(from_microcode), directByte = 32;
495 => X"74_72_61_63_65_59_3A_20_45_78_70_53_74_61_63_6B",

-- L1143@01F0 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2, if true then return else continue;
-- T <= ExpStack, ExpStack <= pop2, if true then return else continue;
496 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L1145@01F1 7472616365414C553A20747261636528.traceALU:  trace(crlf);
-- traceALU: trace(crlf);
497 => X"74_72_61_63_65_41_4C_55_3A_20_74_72_61_63_65_28",

-- L1146@01F2 54203C3D20736176652C207472616365.  T <= save, trace(from_microcode), directByte = 52;
-- T <= save, trace(from_microcode), directByte = 52;
498 => X"54_20_3C_3D_20_73_61_76_65_2C_20_74_72_61_63_65",

-- L1147@01F3 54203C3D2066726F6D5F532C20747261.  T <= from_S, trace(from_microcode), directByte = 52;
-- T <= from_S, trace(from_microcode), directByte = 52;
499 => X"54_20_3C_3D_20_66_72_6F_6D_5F_53_2C_20_74_72_61",

-- L1148@01F4 54203C3D2066726F6D5F522C20747261.  T <= from_R, trace(from_microcode), directByte = 52;
-- T <= from_R, trace(from_microcode), directByte = 52;
500 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_2C_20_74_72_61",

-- L1149@01F5 54203C3D2066726F6D5F5948692C2074.  T <= from_YHi, trace(from_microcode), directByte = 52;
-- T <= from_YHi, trace(from_microcode), directByte = 52;
501 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_48_69_2C_20_74",

-- L1150@01F6 54203C3D2066726F6D5F594C6F2C2074.  T <= from_YLo, trace(from_microcode), directByte = 52;
-- T <= from_YLo, trace(from_microcode), directByte = 52;
502 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_74",

-- L1151@01F7 54203C3D20726563616C6C2C20444247.  T <= recall, DBGINDEX <= crlf;
-- T <= recall, DBGINDEX <= crlf;
503 => X"54_20_3C_3D_20_72_65_63_61_6C_6C_2C_20_44_42_47",

-- L1152@01F8 74726163653A206966204442475F5245.trace:  if DBG_READY then next else repeat;
-- trace: if DBG_READY then next else repeat;
504 => X"74_72_61_63_65_3A_20_69_66_20_44_42_47_5F_52_45",

-- L1153@01F9 6966204442475F524541445920746865.  if DBG_READY then next else repeat;
-- if DBG_READY then next else repeat;
505 => X"69_66_20_44_42_47_5F_52_45_41_44_59_20_74_68_65",

-- L1154@01FA 444247494E444558203C3D207A65726F.  DBGINDEX <= zero, if true then return else continue;
-- DBGINDEX <= zero, if true then return else continue;
506 => X"44_42_47_49_4E_44_45_58_20_3C_3D_20_7A_65_72_6F",

507 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

508 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

509 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

510 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

511 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20");

end microBasic_sym;

