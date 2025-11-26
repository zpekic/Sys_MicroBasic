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

-- L0354@0000 5F72657365743A206966207472756520._reset:  if true then continue else repeat;
-- _reset: if true then continue else repeat;
0 => X"5F_72_65_73_65_74_3A_20_69_66_20_74_72_75_65_20",

-- L0356@0001 5F7265736574313A2054203C3D207A65._reset1:  T <= zero;
-- _reset1: T <= zero;
1 => X"5F_72_65_73_65_74_31_3A_20_54_20_3C_3D_20_7A_65",

-- L0358@0002 5F7265736574323A2058516865726520._reset2:  XQhere <= T;
-- _reset2: XQhere <= T;
2 => X"5F_72_65_73_65_74_32_3A_20_58_51_68_65_72_65_20",

-- L0360@0003 5F7265736574333A2069662074727565._reset3:  if true then continue else repeat;
-- _reset3: if true then continue else repeat;
3 => X"5F_72_65_73_65_74_33_3A_20_69_66_20_74_72_75_65",

-- L0365@0004 436F6C6453746172743A207772697465.ColdStart:  write2Nulls(Prog_start);
-- ColdStart: write2Nulls(Prog_start);
4 => X"43_6F_6C_64_53_74_61_72_74_3A_20_77_72_69_74_65",

-- L0366@0005 5761726D53746172743A20444247494E.WarmStart:  DBGINDEX <= zero, ExpStack <= clear, RetStack <= clear, BasStack <= clear, T <= zero, alu <= reset0, findPrgEnd();
-- WarmStart: DBGINDEX <= zero, ExpStack <= clear, RetStack <= clear, BasStack <= clear, T <= zero, alu <= reset0, findPrgEnd();
5 => X"57_61_72_6D_53_74_61_72_74_3A_20_44_42_47_49_4E",

-- L0367@0006 4250203C3D20496E4C696E655F737461.  BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= zero;
-- BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= zero;
6 => X"42_50_20_3C_3D_20_49_6E_4C_69_6E_65_5F_73_74_61",

-- L0368@0007 4C696E6F203C3D20542C20494C5F5043.  Lino <= T, IL_PC <= T, write2Nulls(BP);
-- Lino <= T, IL_PC <= T, write2Nulls(BP);
7 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_49_4C_5F_50_43",

-- L0370@0008 66657463683A2074726163652866726F.fetch:  trace(from_microcode), directByte = 51;
-- fetch: trace(from_microcode), directByte = 51;
8 => X"66_65_74_63_68_3A_20_74_72_61_63_65_28_66_72_6F",

-- L0371@0009 6665746368313A207472616365286672.fetch1:  trace(from_microcode), directByte = 2;
-- fetch1: trace(from_microcode), directByte = 2;
9 => X"66_65_74_63_68_31_3A_20_74_72_61_63_65_28_66_72",

-- L0372@000A 494C5F4F50203C3D2066726F6D5F696E.  IL_OP <= from_interpreter, IL_PC <= inc, trace(from_microcode), directByte = 56;
-- IL_OP <= from_interpreter, IL_PC <= inc, trace(from_microcode), directByte = 56;
10 => X"49_4C_5F_4F_50_20_3C_3D_20_66_72_6F_6D_5F_69_6E",

-- L0373@000B 54203C3D207A65726F2C20616C75203C.  T <= zero, alu <= reset0, if true then fork else INTERNAL_ERR;
-- T <= zero, alu <= reset0, if true then fork else INTERNAL_ERR;
11 => X"54_20_3C_3D_20_7A_65_72_6F_2C_20_61_6C_75_20_3C",

-- L0376@000C 6261646F703A2069662066616C736520.badop:  if false then continue else INTERNAL_ERR;
-- badop: if false then continue else INTERNAL_ERR;
12 => X"62_61_64_6F_70_3A_20_69_66_20_66_61_6C_73_65_20",

-- L0381@000D 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 15;
-- trace(from_microcode), directByte = 15;
13 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0382@000E 457870537461636B203C3D2073746172.  ExpStack <= startSwap, trace(from_microcode), directByte = 51;
-- ExpStack <= startSwap, trace(from_microcode), directByte = 51;
14 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_73_74_61_72",

-- L0383@000F 457870537461636B203C3D20656E6453.  ExpStack <= endSwap, if false then continue else fetch1;
-- ExpStack <= endSwap, if false then continue else fetch1;
15 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_65_6E_64_53",

-- L0386@0010 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 15;
-- trace(from_microcode), directByte = 15;
16 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0387@0011 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
17 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0392@0012 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 12;
-- trace(from_microcode), directByte = 12;
18 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0393@0013 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
19 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0398@0014 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 28;
-- trace(from_microcode), directByte = 28;
20 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0399@0015 6C625F707573683A2074726163652866.lb_push:  trace(from_microcode), directByte = 3, T <= codeByte;
-- lb_push: trace(from_microcode), directByte = 3, T <= codeByte;
21 => X"6C_62_5F_70_75_73_68_3A_20_74_72_61_63_65_28_66",

-- L0400@0016 457870537461636B203C3D2070757368.  ExpStack <= push_TByte;
-- ExpStack <= push_TByte;
22 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0401@0017 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
23 => X"49_4C_5F_50_43_20_3C_3D_20_69_6E_63_2C_20_69_66",

-- L0406@0018 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 29;
-- trace(from_microcode), directByte = 29;
24 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0407@0019 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3, T <= codeByte;
-- trace(from_microcode), directByte = 3, T <= codeByte;
25 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0408@001A 457870537461636B203C3D2070757368.  ExpStack <= push_TByte;
-- ExpStack <= push_TByte;
26 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0409@001B 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
27 => X"49_4C_5F_50_43_20_3C_3D_20_69_6E_63_2C_20_69_66",

-- L0414@001C 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 38;
-- trace(from_microcode), directByte = 38;
28 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0415@001D 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
29 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0416@001E 54203C3D20457870537461636B2C2069.  T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR;
-- T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR;
30 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_69",

-- L0417@001F 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, if false then continue else fetch;
-- ExpStack <= push_TWord, if false then continue else fetch;
31 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0422@0020 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 34;
-- trace(from_microcode), directByte = 34;
32 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0423@0021 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
33 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0424@0022 457870537461636B203C3D20706F7032.  ExpStack <= pop2, if false then continue else fetch;
-- ExpStack <= pop2, if false then continue else fetch;
34 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_32",

-- L0429@0023 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 10;
-- trace(from_microcode), directByte = 10;
35 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0430@0024 69662042505F494E5F494E504C494E45.  if BP_IN_INPLINE then next else ptr_exc;
-- if BP_IN_INPLINE then next else ptr_exc;
36 => X"69_66_20_42_50_5F_49_4E_5F_49_4E_50_4C_49_4E_45",

-- L0431@0025 736176655F62703A2053765074203C3D.save_bp:  SvPt <= BP;
-- save_bp: SvPt <= BP;
37 => X"73_61_76_65_5F_62_70_3A_20_53_76_50_74_20_3C_3D",

-- L0432@0026 62705F646F6E653A2074726163654250.bp_done:  traceBP();
-- bp_done: traceBP();
38 => X"62_70_5F_64_6F_6E_65_3A_20_74_72_61_63_65_42_50",

-- L0433@0027 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
39 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0438@0028 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 11;
-- trace(from_microcode), directByte = 11;
40 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0439@0029 6966205356505F494E5F494E504C494E.  if SVP_IN_INPLINE then save_bp;
-- if SVP_IN_INPLINE then save_bp;
41 => X"69_66_20_53_56_50_5F_49_4E_5F_49_4E_50_4C_49_4E",

-- L0440@002A 7074725F6578633A2053765074203C3D.ptr_exc:  SvPt <= BP, BP <= SvPt, if false then continue else bp_done;
-- ptr_exc: SvPt <= BP, BP <= SvPt, if false then continue else bp_done;
42 => X"70_74_72_5F_65_78_63_3A_20_53_76_50_74_20_3C_3D",

-- L0445@002B 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 36;
-- trace(from_microcode), directByte = 36;
43 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0446@002C 56617273203C3D20696E64657846726F.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
44 => X"56_61_72_73_20_3C_3D_20_69_6E_64_65_78_46_72_6F",

-- L0447@002D 54203C3D2066726F6D5F766172732C20.  T <= from_vars, ExpStack <= pop1, trace(from_microcode), directByte = 51;
-- T <= from_vars, ExpStack <= pop1, trace(from_microcode), directByte = 51;
45 => X"54_20_3C_3D_20_66_72_6F_6D_5F_76_61_72_73_2C_20",

-- L0448@002E 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, if false then continue else fetch1;
-- ExpStack <= push_TWord, if false then continue else fetch1;
46 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0453@002F 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 37;
-- trace(from_microcode), directByte = 37;
47 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0454@0030 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
48 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0455@0031 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2;
-- T <= ExpStack, ExpStack <= pop2;
49 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L0456@0032 56617273203C3D20696E64657846726F.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
50 => X"56_61_72_73_20_3C_3D_20_69_6E_64_65_78_46_72_6F",

-- L0457@0033 457870537461636B203C3D20706F7031.  ExpStack <= pop1, Vars <= T, if false then continue else fetch;
-- ExpStack <= pop1, Vars <= T, if false then continue else fetch;
51 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_31",

-- L0462@0034 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 47;
-- trace(from_microcode), directByte = 47;
52 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0463@0035 69662049535F52554E4D4F4445207468.  if IS_RUNMODE then next else INTERNAL_ERR;
-- if IS_RUNMODE then next else INTERNAL_ERR;
53 => X"69_66_20_49_53_5F_52_55_4E_4D_4F_44_45_20_74_68",

-- L0464@0036 696620535441434B5F49535F46554C4C.  if STACK_IS_FULL then BSTACK_ERR;
-- if STACK_IS_FULL then BSTACK_ERR;
54 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_46_55_4C_4C",

-- L0465@0037 426173537461636B203C3D2070757368.  BasStack <= push_Lino_and_BP, if false then continue else fetch;
-- BasStack <= push_Lino_and_BP, if false then continue else fetch;
55 => X"42_61_73_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0470@0038 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 48;
-- trace(from_microcode), directByte = 48;
56 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0471@0039 69662049535F52554E4D4F4445207468.  if IS_RUNMODE then next else INTERNAL_ERR;
-- if IS_RUNMODE then next else INTERNAL_ERR;
57 => X"69_66_20_49_53_5F_52_55_4E_4D_4F_44_45_20_74_68",

-- L0472@003A 54203C3D20426173537461636B5F4869.  T <= BasStack_Hi,if STACK_IS_EMPTY then BSTACK_ERR;
-- T <= BasStack_Hi,if STACK_IS_EMPTY then BSTACK_ERR;
58 => X"54_20_3C_3D_20_42_61_73_53_74_61_63_6B_5F_48_69",

-- L0473@003B 4C696E6F203C3D20542C2054203C3D20.  Lino <= T, T <= BasStack_Lo, trace(from_microcode), directByte = 51;
-- Lino <= T, T <= BasStack_Lo, trace(from_microcode), directByte = 51;
59 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_54_20_3C_3D_20",

-- L0474@003C 4250203C3D20542C2042617353746163.  BP <= T, BasStack <= pop, if false then continue else fetch1;
-- BP <= T, BasStack <= pop, if false then continue else fetch1;
60 => X"42_50_20_3C_3D_20_54_2C_20_42_61_73_53_74_61_63",

-- L0479@003D 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 45;
-- trace(from_microcode), directByte = 45;
61 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0480@003E 494C5F5043203C3D205851686572652C.  IL_PC <= XQhere, if STACK_IS_EMPTY then ESTACK_ERR;
-- IL_PC <= XQhere, if STACK_IS_EMPTY then ESTACK_ERR;
62 => X"49_4C_5F_50_43_20_3C_3D_20_58_51_68_65_72_65_2C",

-- L0481@003F 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2;
-- alu <= R_fromStack, ExpStack <= pop2;
63 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0482@0040 54203C3D2066726F6D5F523B20202020.  T <= from_R;
-- T <= from_R;
64 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_3B_20_20_20_20",

-- L0483@0041 4C696E6F203C3D20542C20696620525F.  Lino <= T, if R_IS_ZERO then NOPROG_ERR;
-- Lino <= T, if R_IS_ZERO then NOPROG_ERR;
65 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_69_66_20_52_5F",

-- L0485@0042 54203C3D2043616368655F446174612C.  T <= Cache_Data, if CACHE_VALID then go_cvalid;
-- T <= Cache_Data, if CACHE_VALID then go_cvalid;
66 => X"54_20_3C_3D_20_43_61_63_68_65_5F_44_61_74_61_2C",

-- L0487@0043 66696E644C696E6F2850726F675F7374.  findLino(Prog_start);
-- findLino(Prog_start);
67 => X"66_69_6E_64_4C_69_6E_6F_28_50_72_6F_67_5F_73_74",

-- L0488@0044 616C75203C3D2063616368655F73746F.  alu <= cache_store, if false then continue else fetch;
-- alu <= cache_store, if false then continue else fetch;
68 => X"61_6C_75_20_3C_3D_20_63_61_63_68_65_5F_73_74_6F",

-- L0490@0045 676F5F6376616C69643A204250203C3D.go_cvalid:  BP <= T, if CACHE_HIT then fetch else go_cmiss;
-- go_cvalid: BP <= T, if CACHE_HIT then fetch else go_cmiss;
69 => X"67_6F_5F_63_76_61_6C_69_64_3A_20_42_50_20_3C_3D",

-- L0495@0046 676F5F636D6973733A2066696E644C69.go_cmiss:  findLino(Prog_start);
-- go_cmiss: findLino(Prog_start);
70 => X"67_6F_5F_63_6D_69_73_73_3A_20_66_69_6E_64_4C_69",

-- L0496@0047 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
71 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0498@0048 66696E644C696E6F3A20616C75203C3D.findLino:  alu <= reset1, readCore(T);
-- findLino: alu <= reset1, readCore(T);
72 => X"66_69_6E_64_4C_69_6E_6F_3A_20_61_6C_75_20_3C_3D",

-- L0499@0049 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc;
-- alu <= Rx256_plus_MDR, T <= inc;
73 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L0500@004A 616C75203C3D20535F66726F6D4C696E.  alu <= S_fromLino, readCore(T);
-- alu <= S_fromLino, readCore(T);
74 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_4C_69_6E",

-- L0501@004B 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc;
-- alu <= Rx256_plus_MDR, T <= inc;
75 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L0502@004C 616C75203C3D20535F6D696E75735F52.  alu <= S_minus_R, if R_IS_ZERO then stop_run;
-- alu <= S_minus_R, if R_IS_ZERO then stop_run;
76 => X"61_6C_75_20_3C_3D_20_53_5F_6D_69_6E_75_73_5F_52",

-- L0503@004D 4250203C3D20542C20696620595F5A45.  BP <= T, if Y_ZERO then return;
-- BP <= T, if Y_ZERO then return;
77 => X"42_50_20_3C_3D_20_54_2C_20_69_66_20_59_5F_5A_45",

-- L0504@004E 66696E644E65787443522873616D6529.  findNextCR(same);
-- findNextCR(same);
78 => X"66_69_6E_64_4E_65_78_74_43_52_28_73_61_6D_65_29",

-- L0505@004F 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else findLino;
-- T <= inc, if false then continue else findLino;
79 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0510@0050 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 25;
-- trace(from_microcode), directByte = 25;
80 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0511@0051 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
81 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0512@0052 457870537461636B203C3D20706F7032.  ExpStack <= pop2;
-- ExpStack <= pop2;
82 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_32",

-- L0513@0053 616C75203C3D206E65675F522C206966.  alu <= neg_R, if ALU_READY then alu_done else repeat;
-- alu <= neg_R, if ALU_READY then alu_done else repeat;
83 => X"61_6C_75_20_3C_3D_20_6E_65_67_5F_52_2C_20_69_66",

-- L0518@0054 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 22;
-- trace(from_microcode), directByte = 22;
84 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0519@0055 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
85 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0520@0056 616C75203C3D20535F706C75735F522C.  alu <= S_plus_R, if ALU_READY then next else repeat;
-- alu <= S_plus_R, if ALU_READY then next else repeat;
86 => X"61_6C_75_20_3C_3D_20_53_5F_70_6C_75_73_5F_52_2C",

-- L0521@0057 616C755F646F6E653A20747261636541.alu_done:  traceALU();
-- alu_done: traceALU();
87 => X"61_6C_75_5F_64_6F_6E_65_3A_20_74_72_61_63_65_41",

-- L0522@0058 54203C3D2066726F6D5F594C6F2C2069.  T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
-- T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
88 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_69",

-- L0523@0059 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, if false then continue else fetch;
-- ExpStack <= push_TWord, if false then continue else fetch;
89 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0528@005A 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 23;
-- trace(from_microcode), directByte = 23;
90 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0529@005B 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
91 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0530@005C 616C75203C3D20535F6D696E75735F52.  alu <= S_minus_R, if ALU_READY then alu_done else repeat;
-- alu <= S_minus_R, if ALU_READY then alu_done else repeat;
92 => X"61_6C_75_20_3C_3D_20_53_5F_6D_69_6E_75_73_5F_52",

-- L0535@005D 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 24;
-- trace(from_microcode), directByte = 24;
93 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0536@005E 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
94 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0537@005F 616C75203C3D20535F6D756C5F522C20.  alu <= S_mul_R, if ALU_READY then alu_done else repeat;
-- alu <= S_mul_R, if ALU_READY then alu_done else repeat;
95 => X"61_6C_75_20_3C_3D_20_53_5F_6D_75_6C_5F_52_2C_20",

-- L0542@0060 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 35;
-- trace(from_microcode), directByte = 35;
96 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0543@0061 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
97 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0544@0062 616C75203C3D206469765F7374617274.  alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
-- alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
98 => X"61_6C_75_20_3C_3D_20_64_69_76_5F_73_74_61_72_74",

-- L0545@0063 6469765F6C6F6F703A20616C75203C3D.div_loop:  alu <= div_shift;
-- div_loop: alu <= div_shift;
99 => X"64_69_76_5F_6C_6F_6F_70_3A_20_61_6C_75_20_3C_3D",

-- L0546@0064 696620414C555F524541445920746865.  if ALU_READY then div_done;
-- if ALU_READY then div_done;
100 => X"69_66_20_41_4C_55_5F_52_45_41_44_59_20_74_68_65",

-- L0547@0065 616C75203C3D206469765F7375627365.  alu <= div_subset, if false then continue else div_loop;
-- alu <= div_subset, if false then continue else div_loop;
101 => X"61_6C_75_20_3C_3D_20_64_69_76_5F_73_75_62_73_65",

-- L0548@0066 6469765F646F6E653A20616C75203C3D.div_done:  alu <= div_end, if false then continue else alu_done;
-- div_done: alu <= div_end, if false then continue else alu_done;
102 => X"64_69_76_5F_64_6F_6E_65_3A_20_61_6C_75_20_3C_3D",

-- L0553@0067 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 46;
-- trace(from_microcode), directByte = 46;
103 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0554@0068 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2;
-- alu <= R_fromStack, ExpStack <= pop2;
104 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0555@0069 457870537461636B203C3D2070757368.  ExpStack <= push_TByte;
-- ExpStack <= push_TByte;
105 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0556@006A 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2;
-- T <= ExpStack, ExpStack <= pop2;
106 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L0557@006B 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2;
-- alu <= S_fromStack, ExpStack <= pop2;
107 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L0558@006C 69662043505F534B4950207468656E20.  if CP_SKIP then next else fetch;
-- if CP_SKIP then next else fetch;
108 => X"69_66_20_43_50_5F_53_4B_49_50_20_74_68_65_6E_20",

-- L0559@006D 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if false then continue else fetch;
-- IL_PC <= inc, if false then continue else fetch;
109 => X"49_4C_5F_50_43_20_3C_3D_20_69_6E_63_2C_20_69_66",

-- L0564@006E 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 39;
-- trace(from_microcode), directByte = 39;
110 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0565@006F 494C5F5043203C3D20542C2069662049.  IL_PC <= T, if IS_RUNMODE then next else fetch;
-- IL_PC <= T, if IS_RUNMODE then next else fetch;
111 => X"49_4C_5F_50_43_20_3C_3D_20_54_2C_20_69_66_20_49",

-- L0566@0070 66696E644E7828293B20202020202020.  findNx();
-- findNx();
112 => X"66_69_6E_64_4E_78_28_29_3B_20_20_20_20_20_20_20",

-- L0567@0071 4C696E6F203C3D20542C20494C5F5043.  Lino <= T, IL_PC <= XQhere;
-- Lino <= T, IL_PC <= XQhere;
113 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_49_4C_5F_50_43",

-- L0569@0072 7472616365425028293B202020202020.  traceBP();
-- traceBP();
114 => X"74_72_61_63_65_42_50_28_29_3B_20_20_20_20_20_20",

-- L0570@0073 6966204B42445F425245414B20746865.  if KBD_BREAK then BREAK else fetch;
-- if KBD_BREAK then BREAK else fetch;
115 => X"69_66_20_4B_42_44_5F_42_52_45_41_4B_20_74_68_65",

-- L0572@0074 66696E644E783A2066696E644E657874.findNx:  findNextCR(BP);
-- findNx: findNextCR(BP);
116 => X"66_69_6E_64_4E_78_3A_20_66_69_6E_64_4E_65_78_74",

-- L0573@0075 54203C3D20696E633B20202020202020.  T <= inc;
-- T <= inc;
117 => X"54_20_3C_3D_20_69_6E_63_3B_20_20_20_20_20_20_20",

-- L0574@0076 4250203C3D20543B2020202020202020.  BP <= T;
-- BP <= T;
118 => X"42_50_20_3C_3D_20_54_3B_20_20_20_20_20_20_20_20",

-- L0575@0077 72656164436F72653136284250293B20.  readCore16(BP);
-- readCore16(BP);
119 => X"72_65_61_64_43_6F_72_65_31_36_28_42_50_29_3B_20",

-- L0576@0078 4250203C3D20542C2054203C3D206672.  BP <= T, T <= from_R, if R_IS_ZERO then next else return;
-- BP <= T, T <= from_R, if R_IS_ZERO then next else return;
120 => X"42_50_20_3C_3D_20_54_2C_20_54_20_3C_3D_20_66_72",

-- L0577@0079 6E785F6572723A206469726563744279.nx_err:  directByte = 0x07, outChar(from_microcode);
-- nx_err: directByte = 0x07, outChar(from_microcode);
121 => X"6E_78_5F_65_72_72_3A_20_64_69_72_65_63_74_42_79",

-- L0578@007A 69662066616C7365207468656E20636F.  if false then continue else stop_run;
-- if false then continue else stop_run;
122 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0583@007B 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 41;
-- trace(from_microcode), directByte = 41;
123 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0584@007C 616C75203C3D207265736574312C2069.  alu <= reset1, if IS_RUNMODE then badop;
-- alu <= reset1, if IS_RUNMODE then badop;
124 => X"61_6C_75_20_3C_3D_20_72_65_73_65_74_31_2C_20_69",

-- L0585@007D 6C735F7061726C6F61643A2054203C3D.ls_parload:  T <= from_R, if STACK_IS_EMPTY then ls_parchk;
-- ls_parload: T <= from_R, if STACK_IS_EMPTY then ls_parchk;
125 => X"6C_73_5F_70_61_72_6C_6F_61_64_3A_20_54_20_3C_3D",

-- L0586@007E 616C75203C3D20535F66726F6D543B20.  alu <= S_fromT;
-- alu <= S_fromT;
126 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_54_3B_20",

-- L0587@007F 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2, if false then continue else ls_parload;
-- alu <= R_fromStack, ExpStack <= pop2, if false then continue else ls_parload;
127 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0588@0080 6C735F70617263686B3A20616C75203C.ls_parchk:  alu <= ls_load;
-- ls_parchk: alu <= ls_load;
128 => X"6C_73_5F_70_61_72_63_68_6B_3A_20_61_6C_75_20_3C",

-- L0589@0081 6966204C535F504152414D535F4F4B20.  if LS_PARAMS_OK then next else SYNTAX_ERR;
-- if LS_PARAMS_OK then next else SYNTAX_ERR;
129 => X"69_66_20_4C_53_5F_50_41_52_41_4D_53_5F_4F_4B_20",

-- L0590@0082 6C735F73746172743A2054203C3D2050.ls_start:  T <= Prog_start;
-- ls_start: T <= Prog_start;
130 => X"6C_73_5F_73_74_61_72_74_3A_20_54_20_3C_3D_20_50",

-- L0591@0083 6C735F6C696E656C6F6F703A20696620.ls_lineloop:  if CHARIN_READY then next else ls_continue;
-- ls_lineloop: if CHARIN_READY then next else ls_continue;
131 => X"6C_73_5F_6C_69_6E_65_6C_6F_6F_70_3A_20_69_66_20",

-- L0592@0084 6966204B42445F425245414B20746865.  if KBD_BREAK then BREAK;
-- if KBD_BREAK then BREAK;
132 => X"69_66_20_4B_42_44_5F_42_52_45_41_4B_20_74_68_65",

-- L0593@0085 676F7443686172203D20312C20646972.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_continue;
-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_continue;
133 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_64_69_72",

-- L0594@0086 6C735F70617573653A20696620434841.ls_pause:  if CHARIN_READY then next else repeat;
-- ls_pause: if CHARIN_READY then next else repeat;
134 => X"6C_73_5F_70_61_75_73_65_3A_20_69_66_20_43_48_41",

-- L0595@0087 676F7443686172203D20312C20646972.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
135 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_64_69_72",

-- L0596@0088 6C735F636F6E74696E75653A20676F74.ls_continue:  gotChar = 1, readCore16(same);
-- ls_continue: gotChar = 1, readCore16(same);
136 => X"6C_73_5F_63_6F_6E_74_69_6E_75_65_3A_20_67_6F_74",

-- L0597@0089 616C75203C3D206C735F636865636B2C.  alu <= ls_check, if R_IS_ZERO then fetch;
-- alu <= ls_check, if R_IS_ZERO then fetch;
137 => X"61_6C_75_20_3C_3D_20_6C_73_5F_63_68_65_63_6B_2C",

-- L0598@008A 6966204C535F5041535345445F454E44.  if LS_PASSED_END then fetch;
-- if LS_PASSED_END then fetch;
138 => X"69_66_20_4C_53_5F_50_41_53_53_45_44_5F_45_4E_44",

-- L0599@008B 6966204C535F494E5F52414E47452074.  if LS_IN_RANGE then next else ls_nextLine;
-- if LS_IN_RANGE then next else ls_nextLine;
139 => X"69_66_20_4C_53_5F_49_4E_5F_52_41_4E_47_45_20_74",

-- L0600@008C 7072696E744465635228595F73617665.  printDecR(Y_save);
-- printDecR(Y_save);
140 => X"70_72_69_6E_74_44_65_63_52_28_59_5F_73_61_76_65",

-- L0601@008D 616C75203C3D20595F726563616C6C2C.  alu <= Y_recall, directByte = ' ', outChar(from_microcode);
-- alu <= Y_recall, directByte = ' ', outChar(from_microcode);
141 => X"61_6C_75_20_3C_3D_20_59_5F_72_65_63_61_6C_6C_2C",

-- L0602@008E 6C735F636861726C6F6F703A20726561.ls_charloop:  readCore(T);
-- ls_charloop: readCore(T);
142 => X"6C_73_5F_63_68_61_72_6C_6F_6F_70_3A_20_72_65_61",

-- L0603@008F 6F7574436861722866726F6D5F4D4452.  outChar(from_MDR);
-- outChar(from_MDR);
143 => X"6F_75_74_43_68_61_72_28_66_72_6F_6D_5F_4D_44_52",

-- L0604@0090 6C735F6E657874636861723A20646972.ls_nextchar:  directByte = 0x0D, if MDR_MATCHES_DB then next else ls_next;
-- ls_nextchar: directByte = 0x0D, if MDR_MATCHES_DB then next else ls_next;
144 => X"6C_73_5F_6E_65_78_74_63_68_61_72_3A_20_64_69_72",

-- L0605@0091 64697265637442797465203D20307830.  directByte = 0x0A, outChar(from_microcode);
-- directByte = 0x0A, outChar(from_microcode);
145 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0606@0092 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else ls_lineloop;
-- T <= inc, if false then continue else ls_lineloop;
146 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0607@0093 6C735F6E6578743A2054203C3D20696E.ls_next:  T <= inc, if false then continue else ls_charloop;
-- ls_next: T <= inc, if false then continue else ls_charloop;
147 => X"6C_73_5F_6E_65_78_74_3A_20_54_20_3C_3D_20_69_6E",

-- L0608@0094 6C735F6E6578744C696E653A2066696E.ls_nextLine:  findNextCR(same);
-- ls_nextLine: findNextCR(same);
148 => X"6C_73_5F_6E_65_78_74_4C_69_6E_65_3A_20_66_69_6E",

-- L0609@0095 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else ls_lineloop;
-- T <= inc, if false then continue else ls_lineloop;
149 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0614@0096 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 26;
-- trace(from_microcode), directByte = 26;
150 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0615@0097 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
151 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0616@0098 7072696E7444656328293B2020202020.  printDec();
-- printDec();
152 => X"70_72_69_6E_74_44_65_63_28_29_3B_20_20_20_20_20",

-- L0617@0099 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
153 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0622@009A 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 18;
-- trace(from_microcode), directByte = 18;
154 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0623@009B 70715F6C6F6F703A204250203C3D2069.pq_loop:  BP <= inc, readCore(BP);
-- pq_loop: BP <= inc, readCore(BP);
155 => X"70_71_5F_6C_6F_6F_70_3A_20_42_50_20_3C_3D_20_69",

-- L0624@009C 64697265637442797465203D20272227.  directByte = '"', if MDR_MATCHES_DB then pq_done;
-- directByte = '"', if MDR_MATCHES_DB then pq_done;
156 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_22_27",

-- L0625@009D 6F7574436861722866726F6D5F4D4452.  outChar(from_MDR);
-- outChar(from_MDR);
157 => X"6F_75_74_43_68_61_72_28_66_72_6F_6D_5F_4D_44_52",

-- L0626@009E 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3;
-- trace(from_microcode), directByte = 3;
158 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0627@009F 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_MATCHES_DB then INTERNAL_ERR else pq_loop;
-- directByte = 0x0D, if MDR_MATCHES_DB then INTERNAL_ERR else pq_loop;
159 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0628@00A0 70715F646F6E653A2074726163654250.pq_done:  traceBP();
-- pq_done: traceBP();
160 => X"70_71_5F_64_6F_6E_65_3A_20_74_72_61_63_65_42_50",

-- L0629@00A1 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
161 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0634@00A2 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 27;
-- trace(from_microcode), directByte = 27;
162 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0635@00A3 70745F6C6F6F703A2069662041545F54.pt_loop:  if AT_TAB then fetch;
-- pt_loop: if AT_TAB then fetch;
163 => X"70_74_5F_6C_6F_6F_70_3A_20_69_66_20_41_54_5F_54",

-- L0636@00A4 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode);
-- directByte = ' ', outChar(from_microcode);
164 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0637@00A5 69662066616C7365207468656E20636F.  if false then continue else pt_loop;
-- if false then continue else pt_loop;
165 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0642@00A6 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 6;
-- trace(from_microcode), directByte = 6;
166 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0643@00A7 63726C665F66657463683A206F757443.crlf_fetch:  outCRLF();
-- crlf_fetch: outCRLF();
167 => X"63_72_6C_66_5F_66_65_74_63_68_3A_20_6F_75_74_43",

-- L0644@00A8 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
168 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0649@00A9 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 5;
-- trace(from_microcode), directByte = 5;
169 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0650@00AA 70635F6C6F6F703A206F757443686172.pc_loop:  outChar(from_interpreter);
-- pc_loop: outChar(from_interpreter);
170 => X"70_63_5F_6C_6F_6F_70_3A_20_6F_75_74_43_68_61_72",

-- L0651@00AB 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3;
-- trace(from_microcode), directByte = 3;
171 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0652@00AC 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
-- IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
172 => X"49_4C_5F_50_43_20_3C_3D_20_69_6E_63_2C_20_69_66",

-- L0657@00AD 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 4;
-- trace(from_microcode), directByte = 4;
173 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0658@00AE 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
174 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0659@00AF 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2;
-- T <= ExpStack, ExpStack <= pop2;
175 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L0660@00B0 56617273203C3D20696E64657846726F.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
176 => X"56_61_72_73_20_3C_3D_20_69_6E_64_65_78_46_72_6F",

-- L0662@00B1 457870537461636B203C3D20706F7031.  ExpStack <= pop1, if NEXT_SET then next else for_first;
-- ExpStack <= pop1, if NEXT_SET then next else for_first;
177 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_31",

-- L0665@00B2 56617273203C3D20666F725F66726F6D.  Vars <= for_fromLino, T <= from_vars, if FOR_SET then next else SYNTAX_ERR;
-- Vars <= for_fromLino, T <= from_vars, if FOR_SET then next else SYNTAX_ERR;
178 => X"56_61_72_73_20_3C_3D_20_66_6F_72_5F_66_72_6F_6D",

-- L0666@00B3 616C75203C3D20666F725F737465703B.  alu <= for_step;
-- alu <= for_step;
179 => X"61_6C_75_20_3C_3D_20_66_6F_72_5F_73_74_65_70_3B",

-- L0667@00B4 54203C3D2066726F6D5F594C6F2C2069.  T <= from_YLo, if false then continue else for_check;
-- T <= from_YLo, if false then continue else for_check;
180 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_69",

-- L0670@00B5 666F725F66697273743A205661727320.for_first:  Vars <= for_fromLino;
-- for_first: Vars <= for_fromLino;
181 => X"66_6F_72_5F_66_69_72_73_74_3A_20_56_61_72_73_20",

-- L0671@00B6 666F725F636865636B3A20616C75203C.for_check:  alu <= for_check;
-- for_check: alu <= for_check;
182 => X"66_6F_72_5F_63_68_65_63_6B_3A_20_61_6C_75_20_3C",

-- L0672@00B7 56617273203C3D20542C20696620414C.  Vars <= T, if ALU_READY then for_done;
-- Vars <= T, if ALU_READY then for_done;
183 => X"56_61_72_73_20_3C_3D_20_54_2C_20_69_66_20_41_4C",

-- L0675@00B8 54203C3D2066726F6D5F7661725F4E65.  T <= from_var_Next, if NEXT_SET then next else find_next;
-- T <= from_var_Next, if NEXT_SET then next else find_next;
184 => X"54_20_3C_3D_20_66_72_6F_6D_5F_76_61_72_5F_4E_65",

-- L0676@00B9 56617273203C3D20666F725F636C6561.  Vars <= for_clear, BP <= T, if false then continue else for_done;
-- Vars <= for_clear, BP <= T, if false then continue else for_done;
185 => X"56_61_72_73_20_3C_3D_20_66_6F_72_5F_63_6C_65_61",

-- L0679@00BA 66696E645F6E6578743A205661727320.find_next:  Vars <= for_clear, findNx();
-- find_next: Vars <= for_clear, findNx();
186 => X"66_69_6E_64_5F_6E_65_78_74_3A_20_56_61_72_73_20",

-- L0680@00BB 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
187 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0681@00BC 72656164436F7265284250292C204250.  readCore(BP), BP <= inc;
-- readCore(BP), BP <= inc;
188 => X"72_65_61_64_43_6F_72_65_28_42_50_29_2C_20_42_50",

-- L0682@00BD 64697265637442797465203D20274E27.  directByte = 'N', if MDR_MATCHES_DB then next else find_cont;
-- directByte = 'N', if MDR_MATCHES_DB then next else find_cont;
189 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_4E_27",

-- L0683@00BE 72656164436F7265284250292C204250.  readCore(BP), BP <= inc;
-- readCore(BP), BP <= inc;
190 => X"72_65_61_64_43_6F_72_65_28_42_50_29_2C_20_42_50",

-- L0684@00BF 64697265637442797465203D20274527.  directByte = 'E', if MDR_MATCHES_DB then next else find_cont;
-- directByte = 'E', if MDR_MATCHES_DB then next else find_cont;
191 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_45_27",

-- L0685@00C0 72656164436F7265284250292C204250.  readCore(BP), BP <= inc;
-- readCore(BP), BP <= inc;
192 => X"72_65_61_64_43_6F_72_65_28_42_50_29_2C_20_42_50",

-- L0686@00C1 64697265637442797465203D20275827.  directByte = 'X', if MDR_MATCHES_DB then next else find_cont;
-- directByte = 'X', if MDR_MATCHES_DB then next else find_cont;
193 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_58_27",

-- L0687@00C2 72656164436F7265284250292C204250.  readCore(BP), BP <= inc;
-- readCore(BP), BP <= inc;
194 => X"72_65_61_64_43_6F_72_65_28_42_50_29_2C_20_42_50",

-- L0688@00C3 64697265637442797465203D20275427.  directByte = 'T', if MDR_MATCHES_DB then next else find_cont;
-- directByte = 'T', if MDR_MATCHES_DB then next else find_cont;
195 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_54_27",

-- L0689@00C4 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
196 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0690@00C5 72656164436F7265284250293B202020.  readCore(BP);
-- readCore(BP);
197 => X"72_65_61_64_43_6F_72_65_28_42_50_29_3B_20_20_20",

-- L0691@00C6 6966204D44525F4D4154434845535F56.  if MDR_MATCHES_VARNAME then for_done;
-- if MDR_MATCHES_VARNAME then for_done;
198 => X"69_66_20_4D_44_52_5F_4D_41_54_43_48_45_53_5F_56",

-- L0692@00C7 66696E645F636F6E743A2066696E644E.find_cont:  findNextCR(BP);
-- find_cont: findNextCR(BP);
199 => X"66_69_6E_64_5F_63_6F_6E_74_3A_20_66_69_6E_64_4E",

-- L0693@00C8 69662066616C7365207468656E20636F.  if false then continue else find_next;
-- if false then continue else find_next;
200 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0695@00C9 666F725F646F6E653A2056617273203C.for_done:  Vars <= next_clear, findNx();
-- for_done: Vars <= next_clear, findNx();
201 => X"66_6F_72_5F_64_6F_6E_65_3A_20_56_61_72_73_20_3C",

-- L0696@00CA 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 52;
-- trace(from_microcode), directByte = 52;
202 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0697@00CB 457870537461636B203C3D2020707573.  ExpStack <=  push_TWord, if false then continue else fetch;
-- ExpStack <=  push_TWord, if false then continue else fetch;
203 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_20_70_75_73",

-- L0702@00CC 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 4;
-- trace(from_microcode), directByte = 4;
204 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0703@00CD 56617273203C3D20696E64657846726F.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
205 => X"56_61_72_73_20_3C_3D_20_69_6E_64_65_78_46_72_6F",

-- L0704@00CE 457870537461636B203C3D20706F7031.  ExpStack <= pop1, T <= from_var_For, if FOR_SET then next else INTERNAL_ERR;
-- ExpStack <= pop1, T <= from_var_For, if FOR_SET then next else INTERNAL_ERR;
206 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_31",

-- L0705@00CF 56617273203C3D206E6578745F66726F.  Vars <= next_fromBP, ExpStack <= push_TWord, if false then continue else fetch;
-- Vars <= next_fromBP, ExpStack <= push_TWord, if false then continue else fetch;
207 => X"56_61_72_73_20_3C_3D_20_6E_65_78_74_5F_66_72_6F",

-- L0710@00D0 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 8;
-- trace(from_microcode), directByte = 8;
208 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0711@00D1 676C3A20496E6C456E64203C3D20496E.gl:  InlEnd <= InLine_start;
-- gl: InlEnd <= InLine_start;
209 => X"67_6C_3A_20_49_6E_6C_45_6E_64_20_3C_3D_20_49_6E",

-- L0712@00D2 676C5F6C6F6F703A2069662043484152.gl_loop:  if CHARIN_READY then next else repeat;
-- gl_loop: if CHARIN_READY then next else repeat;
210 => X"67_6C_5F_6C_6F_6F_70_3A_20_69_66_20_43_48_41_52",

-- L0713@00D3 6966204B42445F425245414B20746865.  if KBD_BREAK then next else gl_char;
-- if KBD_BREAK then next else gl_char;
211 => X"69_66_20_4B_42_44_5F_42_52_45_41_4B_20_74_68_65",

-- L0714@00D4 676F7443686172203D20312C20696620.  gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
-- gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
212 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0715@00D5 676C5F636861723A2069662043484152.gl_char:  if CHARIN_PRINTABLE then gl_print;
-- gl_char: if CHARIN_PRINTABLE then gl_print;
213 => X"67_6C_5F_63_68_61_72_3A_20_69_66_20_43_48_41_52",

-- L0716@00D6 64697265637442797465203D20307830.  directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
-- directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
214 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0717@00D7 64697265637442797465203D20307830.  directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
-- directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
215 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0718@00D8 64697265637442797465203D20307831.  directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
-- directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
216 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_31",

-- L0719@00D9 64697265637442797465203D20307830.  directByte = 0x09, if CHARIN_EQU_DB then gl_tab;
-- directByte = 0x09, if CHARIN_EQU_DB then gl_tab;
217 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0721@00DA 676C5F69676E6F72653A206469726563.gl_ignore:  directByte = 0x07, outChar(from_microcode);
-- gl_ignore: directByte = 0x07, outChar(from_microcode);
218 => X"67_6C_5F_69_67_6E_6F_72_65_3A_20_64_69_72_65_63",

-- L0722@00DB 676F7443686172203D20312C20696620.  gotChar = 1, if false then continue else gl_loop;
-- gotChar = 1, if false then continue else gl_loop;
219 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0724@00DC 676C5F7072696E743A20696620494E4C.gl_print:  if INLEND_MAX then gl_ignore;
-- gl_print: if INLEND_MAX then gl_ignore;
220 => X"67_6C_5F_70_72_69_6E_74_3A_20_69_66_20_49_4E_4C",

-- L0725@00DD 6F7574436861722866726F6D5F636861.  outChar(from_charin);
-- outChar(from_charin);
221 => X"6F_75_74_43_68_61_72_28_66_72_6F_6D_5F_63_68_61",

-- L0726@00DE 7772697465436F726528496E6C456E64.  writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- writeCore(InlEnd, CHARIN), InlEnd <= inc;
222 => X"77_72_69_74_65_43_6F_72_65_28_49_6E_6C_45_6E_64",

-- L0727@00DF 676C5F7772697465303A207772697465.gl_write0:  writeCore(InlEnd, zero);
-- gl_write0: writeCore(InlEnd, zero);
223 => X"67_6C_5F_77_72_69_74_65_30_3A_20_77_72_69_74_65",

-- L0728@00E0 676F7443686172203D20312C20696620.  gotChar = 1, if false then continue else gl_loop;
-- gotChar = 1, if false then continue else gl_loop;
224 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0730@00E1 676C5F6573633A206469726563744279.gl_esc:  directByte = 0x07, outChar(from_microcode);
-- gl_esc: directByte = 0x07, outChar(from_microcode);
225 => X"67_6C_5F_65_73_63_3A_20_64_69_72_65_63_74_42_79",

-- L0731@00E2 6F757443524C4628293B202020202020.  outCRLF();
-- outCRLF();
226 => X"6F_75_74_43_52_4C_46_28_29_3B_20_20_20_20_20_20",

-- L0732@00E3 676F7443686172203D20312C20696620.  gotChar = 1, if false then continue else gl;
-- gotChar = 1, if false then continue else gl;
227 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0734@00E4 676C5F62733A20696620494E4C454E44.gl_bs:  if INLEND_MIN then gl_ignore;
-- gl_bs: if INLEND_MIN then gl_ignore;
228 => X"67_6C_5F_62_73_3A_20_69_66_20_49_4E_4C_45_4E_44",

-- L0735@00E5 64697265637442797465203D20307830.  directByte = 0x08, outChar(from_microcode);
-- directByte = 0x08, outChar(from_microcode);
229 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0736@00E6 496E6C456E64203C3D206465632C2069.  InlEnd <= dec, if false then continue else gl_write0;
-- InlEnd <= dec, if false then continue else gl_write0;
230 => X"49_6E_6C_45_6E_64_20_3C_3D_20_64_65_63_2C_20_69",

-- L0738@00E7 676C5F63723A207772697465436F7265.gl_cr:  writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- gl_cr: writeCore(InlEnd, CHARIN), InlEnd <= inc;
231 => X"67_6C_5F_63_72_3A_20_77_72_69_74_65_43_6F_72_65",

-- L0739@00E8 7772697465436F726528496E6C456E64.  writeCore(InlEnd, zero);
-- writeCore(InlEnd, zero);
232 => X"77_72_69_74_65_43_6F_72_65_28_49_6E_6C_45_6E_64",

-- L0740@00E9 64756D705F696E70757428293B202020.  dump_input();
-- dump_input();
233 => X"64_75_6D_70_5F_69_6E_70_75_74_28_29_3B_20_20_20",

-- L0741@00EA 6F757443524C4628293B202020202020.  outCRLF();
-- outCRLF();
234 => X"6F_75_74_43_52_4C_46_28_29_3B_20_20_20_20_20_20",

-- L0742@00EB 676F7443686172203D20312C20425020.  gotChar = 1, BP <= Inline_start, if false then continue else fetch;
-- gotChar = 1, BP <= Inline_start, if false then continue else fetch;
235 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_42_50_20",

-- L0744@00EC 676C5F7461623A20696620494E4C454E.gl_tab:  if INLEND_MAX then gl_ignore;
-- gl_tab: if INLEND_MAX then gl_ignore;
236 => X"67_6C_5F_74_61_62_3A_20_69_66_20_49_4E_4C_45_4E",

-- L0745@00ED 676C5F7461626C6F6F703A2069662041.gl_tabloop:  if AT_TAB then gl_write0;
-- gl_tabloop: if AT_TAB then gl_write0;
237 => X"67_6C_5F_74_61_62_6C_6F_6F_70_3A_20_69_66_20_41",

-- L0746@00EE 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode);
-- directByte = ' ', outChar(from_microcode);
238 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0747@00EF 64697265637442797465203D20272027.  directByte = ' ', writeCore(InlEnd, from_microcode), InlEnd <= inc;
-- directByte = ' ', writeCore(InlEnd, from_microcode), InlEnd <= inc;
239 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0748@00F0 69662066616C7365207468656E20636F.  if false then continue else gl_tabloop;
-- if false then continue else gl_tabloop;
240 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0753@00F1 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 40;
-- trace(from_microcode), directByte = 40;
241 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0754@00F2 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2;
-- alu <= S_fromStack, ExpStack <= pop2;
242 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L0755@00F3 616C75203C3D20535F706C75735F523B.  alu <= S_plus_R;
-- alu <= S_plus_R;
243 => X"61_6C_75_20_3C_3D_20_53_5F_70_6C_75_73_5F_52_3B",

-- L0756@00F4 54203C3D2066726F6D5F594C6F2C2069.  T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
-- T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
244 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_69",

-- L0757@00F5 4C696E6F203C3D20542C20696620595F.  Lino <= T, if Y_ZERO then SYNTAX_ERR;
-- Lino <= T, if Y_ZERO then SYNTAX_ERR;
245 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_69_66_20_59_5F",

-- L0760@00F6 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
246 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0761@00F7 54203C3D2042503B2020202020202020.  T <= BP;
-- T <= BP;
247 => X"54_20_3C_3D_20_42_50_3B_20_20_20_20_20_20_20_20",

-- L0762@00F8 696C5F66696E6442453A204245203C3D.il_findBE:  BE <= T, readCore(T);
-- il_findBE: BE <= T, readCore(T);
248 => X"69_6C_5F_66_69_6E_64_42_45_3A_20_42_45_20_3C_3D",

-- L0763@00F9 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_MATCHES_DB then il_fork;
-- directByte = 0x0D, if MDR_MATCHES_DB then il_fork;
249 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0764@00FA 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else il_findBE;
-- T <= inc, if false then continue else il_findBE;
250 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0766@00FB 696C5F666F726B3A207363616E50726F.il_fork:  scanProgram();
-- il_fork: scanProgram();
251 => X"69_6C_5F_66_6F_72_6B_3A_20_73_63_61_6E_50_72_6F",

-- L0767@00FC 696620494D504C494E455F454D505459.  if IMPLINE_EMPTY then next else changeLine;
-- if IMPLINE_EMPTY then next else changeLine;
252 => X"69_66_20_49_4D_50_4C_49_4E_45_5F_45_4D_50_54_59",

-- L0769@00FD 64656C6574654C696E653A2069662052.deleteLine:  if R_IS_ZERO then WarmStart;
-- deleteLine: if R_IS_ZERO then WarmStart;
253 => X"64_65_6C_65_74_65_4C_69_6E_65_3A_20_69_66_20_52",

-- L0770@00FE 696620595F5A45524F207468656E206E.  if Y_ZERO then next else WarmStart;
-- if Y_ZERO then next else WarmStart;
254 => X"69_66_20_59_5F_5A_45_52_4F_20_74_68_65_6E_20_6E",

-- L0771@00FF 66696E64507267456E6428293B202020.  findPrgEnd();
-- findPrgEnd();
255 => X"66_69_6E_64_50_72_67_45_6E_64_28_29_3B_20_20_20",

-- L0772@0100 636F7079436F726528636F70795F696E.  copyCore(copy_init_del);
-- copyCore(copy_init_del);
256 => X"63_6F_70_79_43_6F_72_65_28_63_6F_70_79_5F_69_6E",

-- L0773@0101 69662066616C7365207468656E20636F.  if false then continue else WarmStart;
-- if false then continue else WarmStart;
257 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0775@0102 6368616E67654C696E653A2069662052.changeLine:  if R_IS_ZERO then appendLine;
-- changeLine: if R_IS_ZERO then appendLine;
258 => X"63_68_61_6E_67_65_4C_69_6E_65_3A_20_69_66_20_52",

-- L0776@0103 696620595F5A45524F207468656E206E.  if Y_ZERO then next else insertLine;
-- if Y_ZERO then next else insertLine;
259 => X"69_66_20_59_5F_5A_45_52_4F_20_74_68_65_6E_20_6E",

-- L0778@0104 7265706C6163654C696E653A2066696E.replaceLine:  findPrgEnd();
-- replaceLine: findPrgEnd();
260 => X"72_65_70_6C_61_63_65_4C_69_6E_65_3A_20_66_69_6E",

-- L0779@0105 636F7079436F726528636F70795F696E.  copyCore(copy_init_del);
-- copyCore(copy_init_del);
261 => X"63_6F_70_79_43_6F_72_65_28_63_6F_70_79_5F_69_6E",

-- L0780@0106 7363616E50726F6772616D28293B2020.  scanProgram();
-- scanProgram();
262 => X"73_63_61_6E_50_72_6F_67_72_61_6D_28_29_3B_20_20",

-- L0781@0107 696E736572744C696E653A2066696E64.insertLine:  findPrgEnd();
-- insertLine: findPrgEnd();
263 => X"69_6E_73_65_72_74_4C_69_6E_65_3A_20_66_69_6E_64",

-- L0782@0108 636F7079436F726528636F70795F696E.  copyCore(copy_init_ins);
-- copyCore(copy_init_ins);
264 => X"63_6F_70_79_43_6F_72_65_28_63_6F_70_79_5F_69_6E",

-- L0783@0109 696E735F66696E6973683A20636F7079.ins_finish:  copyLine(LS);
-- ins_finish: copyLine(LS);
265 => X"69_6E_73_5F_66_69_6E_69_73_68_3A_20_63_6F_70_79",

-- L0784@010A 69662066616C7365207468656E20636F.  if false then continue else WarmStart;
-- if false then continue else WarmStart;
266 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0786@010B 617070656E644C696E653A2054203C3D.appendLine:  T <= dec;
-- appendLine: T <= dec;
267 => X"61_70_70_65_6E_64_4C_69_6E_65_3A_20_54_20_3C_3D",

-- L0787@010C 636F70794C696E6528646563293B2020.  copyLine(dec);
-- copyLine(dec);
268 => X"63_6F_70_79_4C_69_6E_65_28_64_65_63_29_3B_20_20",

-- L0788@010D 7772697465324E756C6C732873616D65.  write2Nulls(same);
-- write2Nulls(same);
269 => X"77_72_69_74_65_32_4E_75_6C_6C_73_28_73_61_6D_65",

-- L0789@010E 69662066616C7365207468656E20636F.  if false then continue else WarmStart;
-- if false then continue else WarmStart;
270 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0791@010F 636F70794C696E653A20616C75203C3D.copyLine:  alu <= S_fromLino;
-- copyLine: alu <= S_fromLino;
271 => X"63_6F_70_79_4C_69_6E_65_3A_20_61_6C_75_20_3C_3D",

-- L0792@0110 7772697465436F726528542C2066726F.  writeCore(T, from_SHi);
-- writeCore(T, from_SHi);
272 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0793@0111 54203C3D20696E633B20202020202020.  T <= inc;
-- T <= inc;
273 => X"54_20_3C_3D_20_69_6E_63_3B_20_20_20_20_20_20_20",

-- L0794@0112 7772697465436F726528542C2066726F.  writeCore(T, from_SLo);
-- writeCore(T, from_SLo);
274 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0795@0113 54203C3D20696E633B20202020202020.  T <= inc;
-- T <= inc;
275 => X"54_20_3C_3D_20_69_6E_63_3B_20_20_20_20_20_20_20",

-- L0796@0114 6170705F6C6F6F703A2072656164436F.app_loop:  readCore(BP);
-- app_loop: readCore(BP);
276 => X"61_70_70_5F_6C_6F_6F_70_3A_20_72_65_61_64_43_6F",

-- L0797@0115 7772697465436F726528542C2073616D.  writeCore(T, same);
-- writeCore(T, same);
277 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_73_61_6D",

-- L0798@0116 4250203C3D20696E632C2054203C3D20.  BP <= inc, T <= inc;
-- BP <= inc, T <= inc;
278 => X"42_50_20_3C_3D_20_69_6E_63_2C_20_54_20_3C_3D_20",

-- L0799@0117 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_MATCHES_DB then return else app_loop;
-- directByte = 0x0D, if MDR_MATCHES_DB then return else app_loop;
279 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0801@0118 66696E64507267456E643A2054203C3D.findPrgEnd:  T <= Prog_start;
-- findPrgEnd: T <= Prog_start;
280 => X"66_69_6E_64_50_72_67_45_6E_64_3A_20_54_20_3C_3D",

-- L0802@0119 6670655F6C6F6F703A2072656164436F.fpe_loop:  readCore16(same);
-- fpe_loop: readCore16(same);
281 => X"66_70_65_5F_6C_6F_6F_70_3A_20_72_65_61_64_43_6F",

-- L0803@011A 696620525F49535F5A45524F20746865.  if R_IS_ZERO then next else fpe_next;
-- if R_IS_ZERO then next else fpe_next;
282 => X"69_66_20_52_5F_49_53_5F_5A_45_52_4F_20_74_68_65",

-- L0804@011B 54203C3D206465633B20202020202020.  T <= dec;
-- T <= dec;
283 => X"54_20_3C_3D_20_64_65_63_3B_20_20_20_20_20_20_20",

-- L0805@011C 507267456E64203C3D20542C20696620.  PrgEnd <= T, if true then return else continue;
-- PrgEnd <= T, if true then return else continue;
284 => X"50_72_67_45_6E_64_20_3C_3D_20_54_2C_20_69_66_20",

-- L0806@011D 6670655F6E6578743A2066696E644E65.fpe_next:  findNextCR(same);
-- fpe_next: findNextCR(same);
285 => X"66_70_65_5F_6E_65_78_74_3A_20_66_69_6E_64_4E_65",

-- L0807@011E 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else fpe_loop;
-- T <= inc, if false then continue else fpe_loop;
286 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0811@011F 7363616E50726F6772616D3A2054203C.scanProgram:  T <= zero;
-- scanProgram: T <= zero;
287 => X"73_63_61_6E_50_72_6F_67_72_61_6D_3A_20_54_20_3C",

-- L0812@0120 4C53203C3D20542C204C45203C3D2054.  LS <= T, LE <= T, T <= Prog_start;
-- LS <= T, LE <= T, T <= Prog_start;
288 => X"4C_53_20_3C_3D_20_54_2C_20_4C_45_20_3C_3D_20_54",

-- L0814@0121 7363616E5F6C6F6F703A204C53203C3D.scan_loop:  LS <= T, readCore16(same);
-- scan_loop: LS <= T, readCore16(same);
289 => X"73_63_61_6E_5F_6C_6F_6F_70_3A_20_4C_53_20_3C_3D",

-- L0815@0122 616C75203C3D20535F66726F6D4C696E.  alu <= S_fromLino, if R_IS_ZERO then return;
-- alu <= S_fromLino, if R_IS_ZERO then return;
290 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_4C_69_6E",

-- L0816@0123 7363616E5F636865636B3A20616C7520.scan_check:  alu <= S_minus_R;
-- scan_check: alu <= S_minus_R;
291 => X"73_63_61_6E_5F_63_68_65_63_6B_3A_20_61_6C_75_20",

-- L0817@0124 7472616365414C5528293B2020202020.  traceALU();
-- traceALU();
292 => X"74_72_61_63_65_41_4C_55_28_29_3B_20_20_20_20_20",

-- L0818@0125 696620595F5A45524F207468656E2073.  if Y_ZERO then scan_found else next;
-- if Y_ZERO then scan_found else next;
293 => X"69_66_20_59_5F_5A_45_52_4F_20_74_68_65_6E_20_73",

-- L0819@0126 696620595F5349474E207468656E2073.  if Y_SIGN then scan_found else next;
-- if Y_SIGN then scan_found else next;
294 => X"69_66_20_59_5F_53_49_47_4E_20_74_68_65_6E_20_73",

-- L0820@0127 7363616E5F6E6578743A2066696E644E.scan_next:  findNextCR(same);
-- scan_next: findNextCR(same);
295 => X"73_63_61_6E_5F_6E_65_78_74_3A_20_66_69_6E_64_4E",

-- L0821@0128 7363616E5F6C696E653A2054203C3D20.scan_line:  T <= inc, if false then continue else scan_loop;
-- scan_line: T <= inc, if false then continue else scan_loop;
296 => X"73_63_61_6E_5F_6C_69_6E_65_3A_20_54_20_3C_3D_20",

-- L0823@0129 7363616E5F666F756E643A2066696E64.scan_found:  findNextCR(same);
-- scan_found: findNextCR(same);
297 => X"73_63_61_6E_5F_66_6F_75_6E_64_3A_20_66_69_6E_64",

-- L0824@012A 4C45203C3D20543B2020202020202020.  LE <= T;
-- LE <= T;
298 => X"4C_45_20_3C_3D_20_54_3B_20_20_20_20_20_20_20_20",

-- L0826@012B 69662074727565207468656E20726574.  if true then return else continue;
-- if true then return else continue;
299 => X"69_66_20_74_72_75_65_20_74_68_65_6E_20_72_65_74",

-- L0829@012C 636F7079436F72653A2054203C3D2066.copyCore:  T <= from_S, if Y_ZERO then return;
-- copyCore: T <= from_S, if Y_ZERO then return;
300 => X"63_6F_70_79_43_6F_72_65_3A_20_54_20_3C_3D_20_66",

-- L0830@012D 72656164436F72652854293B20202020.  readCore(T);
-- readCore(T);
301 => X"72_65_61_64_43_6F_72_65_28_54_29_3B_20_20_20_20",

-- L0831@012E 54203C3D2066726F6D5F523B20202020.  T <= from_R;
-- T <= from_R;
302 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_3B_20_20_20_20",

-- L0832@012F 7772697465436F726528542C2073616D.  writeCore(T, same);
-- writeCore(T, same);
303 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_73_61_6D",

-- L0834@0130 616C75203C3D20636F70795F6E657874.  alu <= copy_next, if false then continue else copyCore;
-- alu <= copy_next, if false then continue else copyCore;
304 => X"61_6C_75_20_3C_3D_20_63_6F_70_79_5F_6E_65_78_74",

-- L0839@0131 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 43;
-- trace(from_microcode), directByte = 43;
305 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0840@0132 69662066616C7365207468656E20636F.  if false then continue else ColdStart;
-- if false then continue else ColdStart;
306 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0845@0133 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 42;
-- trace(from_microcode), directByte = 42;
307 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0846@0134 54203C3D20494C5F50433B2020202020.  T <= IL_PC;
-- T <= IL_PC;
308 => X"54_20_3C_3D_20_49_4C_5F_50_43_3B_20_20_20_20_20",

-- L0847@0135 585168657265203C3D20542C20726561.  XQhere <= T, readCore16(Prog_start);
-- XQhere <= T, readCore16(Prog_start);
309 => X"58_51_68_65_72_65_20_3C_3D_20_54_2C_20_72_65_61",

-- L0848@0136 4250203C3D20542C2054203C3D206672.  BP <= T, T <= from_R, if R_IS_ZERO then NOPROG_ERR;
-- BP <= T, T <= from_R, if R_IS_ZERO then NOPROG_ERR;
310 => X"42_50_20_3C_3D_20_54_2C_20_54_20_3C_3D_20_66_72",

-- L0849@0137 4C696E6F203C3D20542C206966206661.  Lino <= T, if false then continue else fetch;
-- Lino <= T, if false then continue else fetch;
311 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_69_66_20_66_61",

-- L0854@0138 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 44;
-- trace(from_microcode), directByte = 44;
312 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0855@0139 73746F705F72756E3A20646972656374.stop_run:  directByte = 'S', outChar(from_microcode);
-- stop_run: directByte = 'S', outChar(from_microcode);
313 => X"73_74_6F_70_5F_72_75_6E_3A_20_64_69_72_65_63_74",

-- L0856@013A 64697265637442797465203D20275427.  directByte = 'T', outChar(from_microcode);
-- directByte = 'T', outChar(from_microcode);
314 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_54_27",

-- L0857@013B 64697265637442797465203D20274F27.  directByte = 'O', outChar(from_microcode);
-- directByte = 'O', outChar(from_microcode);
315 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_4F_27",

-- L0858@013C 64697265637442797465203D20275027.  directByte = 'P', outChar(from_microcode);
-- directByte = 'P', outChar(from_microcode);
316 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_50_27",

-- L0859@013D 69662066616C7365207468656E20636F.  if false then continue else print_lino;
-- if false then continue else print_lino;
317 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0864@013E 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 49;
-- trace(from_microcode), directByte = 49;
318 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0865@013F 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2;
-- alu <= R_fromStack, ExpStack <= pop2;
319 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0866@0140 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2;
-- T <= ExpStack, ExpStack <= pop2;
320 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L0867@0141 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2;
-- alu <= S_fromStack, ExpStack <= pop2;
321 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L0868@0142 7472616365414C5528293B2020202020.  traceALU();
-- traceALU();
322 => X"74_72_61_63_65_41_4C_55_28_29_3B_20_20_20_20_20",

-- L0870@0143 64697265637442797465203D2032302C.  directByte = 20, if S_EQU_DB_MOD32 then u_peek8;
-- directByte = 20, if S_EQU_DB_MOD32 then u_peek8;
323 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_30_2C",

-- L0871@0144 64697265637442797465203D2032342C.  directByte = 24, if S_EQU_DB_MOD32 then u_poke8;
-- directByte = 24, if S_EQU_DB_MOD32 then u_poke8;
324 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_34_2C",

-- L0872@0145 64697265637442797465203D2032312C.  directByte = 21, if S_EQU_DB_MOD32 then u_peek16;
-- directByte = 21, if S_EQU_DB_MOD32 then u_peek16;
325 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_31_2C",

-- L0873@0146 64697265637442797465203D2032352C.  directByte = 25, if S_EQU_DB_MOD32 then u_poke16;
-- directByte = 25, if S_EQU_DB_MOD32 then u_poke16;
326 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_35_2C",

-- L0875@0147 64697265637442797465203D2032392C.  directByte = 29, if S_EQU_DB_MOD32 then u_size;
-- directByte = 29, if S_EQU_DB_MOD32 then u_size;
327 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_39_2C",

-- L0876@0148 54203C3D20696E646578326164647265.  T <= index2address;
-- T <= index2address;
328 => X"54_20_3C_3D_20_69_6E_64_65_78_32_61_64_64_72_65",

-- L0877@0149 64697265637442797465203D2033302C.  directByte = 30, if S_EQU_DB_MOD32 then u_peek16;
-- directByte = 30, if S_EQU_DB_MOD32 then u_peek16;
329 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_33_30_2C",

-- L0878@014A 64697265637442797465203D2033312C.  directByte = 31, if S_EQU_DB_MOD32 then u_poke16;
-- directByte = 31, if S_EQU_DB_MOD32 then u_poke16;
330 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_33_31_2C",

-- L0879@014B 54203C3D2062696E6F702C2069662066.  T <= binop, if false then continue else u_done;
-- T <= binop, if false then continue else u_done;
331 => X"54_20_3C_3D_20_62_69_6E_6F_70_2C_20_69_66_20_66",

-- L0881@014C 755F7065656B383A2072656164436F72.u_peek8:  readCore(T);
-- u_peek8: readCore(T);
332 => X"75_5F_70_65_65_6B_38_3A_20_72_65_61_64_43_6F_72",

-- L0882@014D 755F696E3A2054203C3D204D44523B20.u_in:  T <= MDR;
-- u_in: T <= MDR;
333 => X"75_5F_69_6E_3A_20_54_20_3C_3D_20_4D_44_52_3B_20",

-- L0883@014E 755F646F6E653A20457870537461636B.u_done:  ExpStack <= push_TWord, if false then continue else fetch;
-- u_done: ExpStack <= push_TWord, if false then continue else fetch;
334 => X"75_5F_64_6F_6E_65_3A_20_45_78_70_53_74_61_63_6B",

-- L0885@014F 755F73697A653A2054203C3D2066726F.u_size:  T <= fromSize, if false then continue else u_done;
-- u_size: T <= fromSize, if false then continue else u_done;
335 => X"75_5F_73_69_7A_65_3A_20_54_20_3C_3D_20_66_72_6F",

-- L0887@0150 755F7065656B31363A2072656164436F.u_peek16:  readCore16(same);
-- u_peek16: readCore16(same);
336 => X"75_5F_70_65_65_6B_31_36_3A_20_72_65_61_64_43_6F",

-- L0888@0151 54203C3D2066726F6D5F522C20696620.  T <= from_R, if false then continue else u_done;
-- T <= from_R, if false then continue else u_done;
337 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_2C_20_69_66_20",

-- L0890@0152 755F706F6B65383A2070726570577269.u_poke8:  prepWrite();
-- u_poke8: prepWrite();
338 => X"75_5F_70_6F_6B_65_38_3A_20_70_72_65_70_57_72_69",

-- L0891@0153 7772697465436F726528542C2066726F.  writeCore(T, from_SLo);
-- writeCore(T, from_SLo);
339 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0892@0154 69662066616C7365207468656E20636F.  if false then continue else u_peek8;
-- if false then continue else u_peek8;
340 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0894@0155 755F706F6B6531363A20707265705772.u_poke16:  prepWrite();
-- u_poke16: prepWrite();
341 => X"75_5F_70_6F_6B_65_31_36_3A_20_70_72_65_70_57_72",

-- L0895@0156 7772697465436F726528542C2066726F.  writeCore(T, from_SHi), T <= inc;
-- writeCore(T, from_SHi), T <= inc;
342 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0896@0157 7772697465436F726528542C2066726F.  writeCore(T, from_SLo);
-- writeCore(T, from_SLo);
343 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0897@0158 54203C3D206465632C2069662066616C.  T <= dec, if false then continue else u_peek16;
-- T <= dec, if false then continue else u_peek16;
344 => X"54_20_3C_3D_20_64_65_63_2C_20_69_66_20_66_61_6C",

-- L0899@0159 7072657057726974653A2054203C3D20.prepWrite:  T <= save;
-- prepWrite: T <= save;
345 => X"70_72_65_70_57_72_69_74_65_3A_20_54_20_3C_3D_20",

-- L0900@015A 54203C3D2066726F6D5F523B20202020.  T <= from_R;
-- T <= from_R;
346 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_3B_20_20_20_20",

-- L0901@015B 616C75203C3D20535F66726F6D542C20.  alu <= S_fromT, T <= recall, if true then return else continue;
-- alu <= S_fromT, T <= recall, if true then return else continue;
347 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_54_2C_20",

-- L0906@015C 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 19;
-- trace(from_microcode), directByte = 19;
348 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0907@015D 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then RSTACK_ERR;
-- if STACK_IS_EMPTY then RSTACK_ERR;
349 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0908@015E 494C5F5043203C3D2052657453746163.  IL_PC <= RetStack, RetStack <= pop, if false then continue else fetch;
-- IL_PC <= RetStack, RetStack <= pop, if false then continue else fetch;
350 => X"49_4C_5F_50_43_20_3C_3D_20_52_65_74_53_74_61_63",

-- L0913@015F 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 20;
-- trace(from_microcode), directByte = 20;
351 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0914@0160 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3;
-- trace(from_microcode), directByte = 3;
352 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0915@0161 696620535441434B5F49535F46554C4C.  if STACK_IS_FULL then RSTACK_ERR;
-- if STACK_IS_FULL then RSTACK_ERR;
353 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_46_55_4C_4C",

-- L0916@0162 526574537461636B203C3D2070757368.  RetStack <= push_IL_PC_PLUS_1, if false then continue else jump;
-- RetStack <= push_IL_PC_PLUS_1, if false then continue else jump;
354 => X"52_65_74_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0921@0163 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 21;
-- trace(from_microcode), directByte = 21;
355 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0922@0164 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3;
-- trace(from_microcode), directByte = 3;
356 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0923@0165 6A756D703A20494C5F5043203C3D2064.jump:  IL_PC <= direct11, if false then continue else fetch;
-- jump: IL_PC <= direct11, if false then continue else fetch;
357 => X"6A_75_6D_70_3A_20_49_4C_5F_50_43_20_3C_3D_20_64",

-- L0928@0166 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 7;
-- trace(from_microcode), directByte = 7;
358 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0929@0167 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off6;
-- IL_PC <= pc_plus_off6;
359 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L0930@0168 62725F657869743A2074726163652866.br_exit:  trace(from_microcode), directByte = 30;
-- br_exit: trace(from_microcode), directByte = 30;
360 => X"62_72_5F_65_78_69_74_3A_20_74_72_61_63_65_28_66",

-- L0931@0169 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
361 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0936@016A 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 7;
-- trace(from_microcode), directByte = 7;
362 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0937@016B 69662066616C7365207468656E20636F.  if false then continue else badop;
-- if false then continue else badop;
363 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0942@016C 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 17;
-- trace(from_microcode), directByte = 17;
364 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0943@016D 54203C3D20494C5F50432C204250203C.  T <= IL_PC, BP <= save, skipSpaces();
-- T <= IL_PC, BP <= save, skipSpaces();
365 => X"54_20_3C_3D_20_49_4C_5F_50_43_2C_20_42_50_20_3C",

-- L0944@016E 62635F6C6F6F703A2074726163652866.bc_loop:  trace(from_microcode), directByte = 3;
-- bc_loop: trace(from_microcode), directByte = 3;
366 => X"62_63_5F_6C_6F_6F_70_3A_20_74_72_61_63_65_28_66",

-- L0945@016F 72656164436F7265284250293B202020.  readCore(BP);
-- readCore(BP);
367 => X"72_65_61_64_43_6F_72_65_28_42_50_29_3B_20_20_20",

-- L0946@0170 6966204D44525F4D4154434845535F49.  if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
-- if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
368 => X"69_66_20_4D_44_52_5F_4D_41_54_43_48_45_53_5F_49",

-- L0947@0171 4250203C3D20696E632C20494C5F5043.  BP <= inc, IL_PC <= inc, if ILCODEBYTE_BIT7 then next else bc_loop;
-- BP <= inc, IL_PC <= inc, if ILCODEBYTE_BIT7 then next else bc_loop;
369 => X"42_50_20_3C_3D_20_69_6E_63_2C_20_49_4C_5F_50_43",

-- L0948@0172 7472616365425028293B202020202020.  traceBP();
-- traceBP();
370 => X"74_72_61_63_65_42_50_28_29_3B_20_20_20_20_20_20",

-- L0949@0173 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
371 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0950@0174 62635F657869743A204250203C3D2072.bc_exit:  BP <= recall, IL_PC <= T;
-- bc_exit: BP <= recall, IL_PC <= T;
372 => X"62_63_5F_65_78_69_74_3A_20_42_50_20_3C_3D_20_72",

-- L0951@0175 7472616365425028293B202020202020.  traceBP();
-- traceBP();
373 => X"74_72_61_63_65_42_50_28_29_3B_20_20_20_20_20_20",

-- L0952@0176 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
374 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L0957@0177 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 16;
-- trace(from_microcode), directByte = 16;
375 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0958@0178 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
376 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0959@0179 4D4452203C3D20546F55707065722C20.  MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
-- MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
377 => X"4D_44_52_20_3C_3D_20_54_6F_55_70_70_65_72_2C_20",

-- L0960@017A 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
378 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L0961@017B 62765F657865633A2054203C3D204D44.bv_exec:  T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
-- bv_exec: T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
379 => X"62_76_5F_65_78_65_63_3A_20_54_20_3C_3D_20_4D_44",

-- L0962@017C 457870537461636B203C3D2070757368.  ExpStack <= push_TByte, BP <= inc, if false then continue else fetch;
-- ExpStack <= push_TByte, BP <= inc, if false then continue else fetch;
380 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0967@017D 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 14;
-- trace(from_microcode), directByte = 14;
381 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0968@017E 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
382 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0969@017F 616C75203C3D207265736574302C2069.  alu <= reset0, if MDR_IS_NUM then bn_loop;
-- alu <= reset0, if MDR_IS_NUM then bn_loop;
383 => X"61_6C_75_20_3C_3D_20_72_65_73_65_74_30_2C_20_69",

-- L0970@0180 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
384 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L0971@0181 626E5F657869743A2074726163655928.bn_exit:  traceY();
-- bn_exit: traceY();
385 => X"62_6E_5F_65_78_69_74_3A_20_74_72_61_63_65_59_28",

-- L0972@0182 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 30;
-- trace(from_microcode), directByte = 30;
386 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0973@0183 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
387 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0974@0184 626E5F6C6F6F703A20616C75203C3D20.bn_loop:  alu <= Yx10_plus_MDR, BP <= inc;
-- bn_loop: alu <= Yx10_plus_MDR, BP <= inc;
388 => X"62_6E_5F_6C_6F_6F_70_3A_20_61_6C_75_20_3C_3D_20",

-- L0975@0185 696620414C555F4F564552464C4F5720.  if ALU_OVERFLOW then OVERFLOW_ERR;
-- if ALU_OVERFLOW then OVERFLOW_ERR;
389 => X"69_66_20_41_4C_55_5F_4F_56_45_52_46_4C_4F_57_20",

-- L0976@0186 72656164436F7265284250293B202020.  readCore(BP);
-- readCore(BP);
390 => X"72_65_61_64_43_6F_72_65_28_42_50_29_3B_20_20_20",

-- L0977@0187 6966204D44525F49535F4E554D207468.  if MDR_IS_NUM then bn_loop;
-- if MDR_IS_NUM then bn_loop;
391 => X"69_66_20_4D_44_52_5F_49_53_5F_4E_55_4D_20_74_68",

-- L0978@0188 54203C3D2066726F6D5F594C6F2C2069.  T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
-- T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
392 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_69",

-- L0979@0189 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, if false then continue else bn_exit;
-- ExpStack <= push_TWord, if false then continue else bn_exit;
393 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0984@018A 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 13;
-- trace(from_microcode), directByte = 13;
394 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0985@018B 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
395 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0986@018C 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_MATCHES_DB then fetch;
-- directByte = 0x0D, if MDR_MATCHES_DB then fetch;
396 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0987@018D 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
397 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L0989@018E 425245414B3A20676F7443686172203D.BREAK:  gotChar = 1, trace(from_microcode), directByte = 55;
-- BREAK: gotChar = 1, trace(from_microcode), directByte = 55;
398 => X"42_52_45_41_4B_3A_20_67_6F_74_43_68_61_72_20_3D",

-- L0990@018F 6F75744265657028293B202020202020.  outBeep();
-- outBeep();
399 => X"6F_75_74_42_65_65_70_28_29_3B_20_20_20_20_20_20",

-- L0991@0190 64697265637442797465203D20274227.  directByte = 'B', outChar(from_microcode);
-- directByte = 'B', outChar(from_microcode);
400 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_42_27",

-- L0992@0191 64697265637442797465203D20275227.  directByte = 'R', outChar(from_microcode);
-- directByte = 'R', outChar(from_microcode);
401 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_52_27",

-- L0993@0192 64697265637442797465203D20274B27.  directByte = 'K', outChar(from_microcode);
-- directByte = 'K', outChar(from_microcode);
402 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_4B_27",

-- L0994@0193 69662066616C7365207468656E20636F.  if false then continue else traceDetails;
-- if false then continue else traceDetails;
403 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0996@0194 4E4F50524F475F4552523A2074726163.NOPROG_ERR:  trace(from_microcode), directByte = 50;
-- NOPROG_ERR: trace(from_microcode), directByte = 50;
404 => X"4E_4F_50_52_4F_47_5F_45_52_52_3A_20_74_72_61_63",

-- L0997@0195 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
405 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0998@0196 4449564259305F4552523A2074726163.DIVBY0_ERR:  trace(from_microcode), directByte = 57;
-- DIVBY0_ERR: trace(from_microcode), directByte = 57;
406 => X"44_49_56_42_59_30_5F_45_52_52_3A_20_74_72_61_63",

-- L0999@0197 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
407 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L1000@0198 4F564552464C4F575F4552523A207472.OVERFLOW_ERR:  trace(from_microcode), directByte = 58;
-- OVERFLOW_ERR: trace(from_microcode), directByte = 58;
408 => X"4F_56_45_52_46_4C_4F_57_5F_45_52_52_3A_20_74_72",

-- L1001@0199 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
409 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L1002@019A 53594E5441585F4552523A2074726163.SYNTAX_ERR:  trace(from_microcode), directByte = 61;
-- SYNTAX_ERR: trace(from_microcode), directByte = 61;
410 => X"53_59_4E_54_41_58_5F_45_52_52_3A_20_74_72_61_63",

-- L1003@019B 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
411 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L1004@019C 494E5445524E414C5F4552523A207472.INTERNAL_ERR:  trace(from_microcode), directByte = 62;
-- INTERNAL_ERR: trace(from_microcode), directByte = 62;
412 => X"49_4E_54_45_52_4E_41_4C_5F_45_52_52_3A_20_74_72",

-- L1005@019D 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
413 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L1006@019E 45535441434B5F4552523A2074726163.ESTACK_ERR:  trace(from_microcode), directByte = 60;
-- ESTACK_ERR: trace(from_microcode), directByte = 60;
414 => X"45_53_54_41_43_4B_5F_45_52_52_3A_20_74_72_61_63",

-- L1007@019F 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
415 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L1008@01A0 52535441434B5F4552523A2074726163.RSTACK_ERR:  trace(from_microcode), directByte = 59;
-- RSTACK_ERR: trace(from_microcode), directByte = 59;
416 => X"52_53_54_41_43_4B_5F_45_52_52_3A_20_74_72_61_63",

-- L1009@01A1 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
417 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L1010@01A2 42535441434B5F4552523A2074726163.BSTACK_ERR:  trace(from_microcode), directByte = 54;
-- BSTACK_ERR: trace(from_microcode), directByte = 54;
418 => X"42_53_54_41_43_4B_5F_45_52_52_3A_20_74_72_61_63",

-- L1011@01A3 74726163654572726F723A206F757442.traceError:  outBeep();
-- traceError: outBeep();
419 => X"74_72_61_63_65_45_72_72_6F_72_3A_20_6F_75_74_42",

-- L1012@01A4 64697265637442797465203D20274527.  directByte = 'E', outChar(from_microcode);
-- directByte = 'E', outChar(from_microcode);
420 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_45_27",

-- L1013@01A5 64697265637442797465203D20275227.  directByte = 'R', outChar(from_microcode);
-- directByte = 'R', outChar(from_microcode);
421 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_52_27",

-- L1014@01A6 64697265637442797465203D20275227.  directByte = 'R', outChar(from_microcode);
-- directByte = 'R', outChar(from_microcode);
422 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_52_27",

-- L1015@01A7 747261636544657461696C733A206469.traceDetails:  directByte = '#', outChar(from_microcode), T <= IL_PC;
-- traceDetails: directByte = '#', outChar(from_microcode), T <= IL_PC;
423 => X"74_72_61_63_65_44_65_74_61_69_6C_73_3A_20_64_69",

-- L1016@01A8 54203C3D206465633B20202020202020.  T <= dec;
-- T <= dec;
424 => X"54_20_3C_3D_20_64_65_63_3B_20_20_20_20_20_20_20",

-- L1017@01A9 7072696E744465635228525F66726F6D.  printDecR(R_fromT);
-- printDecR(R_fromT);
425 => X"70_72_69_6E_74_44_65_63_52_28_52_5F_66_72_6F_6D",

-- L1018@01AA 69662049535F52554E4D4F4445207468.  if IS_RUNMODE then next else err_done;
-- if IS_RUNMODE then next else err_done;
426 => X"69_66_20_49_53_5F_52_55_4E_4D_4F_44_45_20_74_68",

-- L1019@01AB 7072696E745F6C696E6F3A2064697265.print_lino:  directByte = ' ', outChar(from_microcode);
-- print_lino: directByte = ' ', outChar(from_microcode);
427 => X"70_72_69_6E_74_5F_6C_69_6E_6F_3A_20_64_69_72_65",

-- L1020@01AC 64697265637442797465203D20274127.  directByte = 'A', outChar(from_microcode);
-- directByte = 'A', outChar(from_microcode);
428 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_41_27",

-- L1021@01AD 64697265637442797465203D20275427.  directByte = 'T', outChar(from_microcode), alu <= S_fromLino;
-- directByte = 'T', outChar(from_microcode), alu <= S_fromLino;
429 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_54_27",

-- L1022@01AE 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode), T <= from_S;
-- directByte = ' ', outChar(from_microcode), T <= from_S;
430 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L1023@01AF 7072696E744465635228525F66726F6D.  printDecR(R_fromT);
-- printDecR(R_fromT);
431 => X"70_72_69_6E_74_44_65_63_52_28_52_5F_66_72_6F_6D",

-- L1024@01B0 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode), T <= fromTicks;
-- directByte = ' ', outChar(from_microcode), T <= fromTicks;
432 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L1025@01B1 7072696E744465635228525F66726F6D.  printDecR(R_fromT);
-- printDecR(R_fromT);
433 => X"70_72_69_6E_74_44_65_63_52_28_52_5F_66_72_6F_6D",

-- L1026@01B2 64697265637442797465203D20272E27.  directByte = ' 64697265637442797465203D20272E27.', outChar(from_microcode), T <= recall;
-- directByte = '.', outChar(from_microcode), T <= recall;
434 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_2E_27",

-- L1027@01B3 7072696E744465635228525F66726F6D.  printDecR(R_fromT);
-- printDecR(R_fromT);
435 => X"70_72_69_6E_74_44_65_63_52_28_52_5F_66_72_6F_6D",

-- L1028@01B4 6572725F646F6E653A206F757443524C.err_done:  outCRLF();
-- err_done: outCRLF();
436 => X"65_72_72_5F_64_6F_6E_65_3A_20_6F_75_74_43_52_4C",

-- L1029@01B5 74726163652863726C66293B20202020.  trace(crlf);
-- trace(crlf);
437 => X"74_72_61_63_65_28_63_72_6C_66_29_3B_20_20_20_20",

-- L1030@01B6 69662066616C7365207468656E20636F.  if false then continue else WarmStart;
-- if false then continue else WarmStart;
438 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L1032@01B7 66696E644E65787443523A2072656164.findNextCR:  readCore(T);
-- findNextCR: readCore(T);
439 => X"66_69_6E_64_4E_65_78_74_43_52_3A_20_72_65_61_64",

-- L1033@01B8 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_MATCHES_DB then return;
-- directByte = 0x0D, if MDR_MATCHES_DB then return;
440 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1034@01B9 54203C3D20696E632C20646972656374.  T <= inc, directByte = 0x00, if MDR_MATCHES_DB then INTERNAL_ERR else findNextCR;
-- T <= inc, directByte = 0x00, if MDR_MATCHES_DB then INTERNAL_ERR else findNextCR;
441 => X"54_20_3C_3D_20_69_6E_63_2C_20_64_69_72_65_63_74",

-- L1036@01BA 72656164436F726531363A20616C7520.readCore16:  alu <= reset1, readCore(T);
-- readCore16: alu <= reset1, readCore(T);
442 => X"72_65_61_64_43_6F_72_65_31_36_3A_20_61_6C_75_20",

-- L1037@01BB 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc;
-- alu <= Rx256_plus_MDR, T <= inc;
443 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L1038@01BC 72656164436F72652854293B20202020.  readCore(T);
-- readCore(T);
444 => X"72_65_61_64_43_6F_72_65_28_54_29_3B_20_20_20_20",

-- L1039@01BD 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc, if true then return else continue;
-- alu <= Rx256_plus_MDR, T <= inc, if true then return else continue;
445 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L1041@01BE 7772697465324E756C6C733A20777269.write2Nulls:  writeCore(T, zero), T <= inc;
-- write2Nulls: writeCore(T, zero), T <= inc;
446 => X"77_72_69_74_65_32_4E_75_6C_6C_73_3A_20_77_72_69",

-- L1042@01BF 7772697465436F726528542C207A6572.  writeCore(T, zero);
-- writeCore(T, zero);
447 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_7A_65_72",

-- L1043@01C0 69662074727565207468656E20726574.  if true then return else continue;
-- if true then return else continue;
448 => X"69_66_20_74_72_75_65_20_74_68_65_6E_20_72_65_74",

-- L1046@01C1 70756C6C52533A20696620535441434B.pullRS:  if STACK_IS_EMPTY then ESTACK_ERR;
-- pullRS: if STACK_IS_EMPTY then ESTACK_ERR;
449 => X"70_75_6C_6C_52_53_3A_20_69_66_20_53_54_41_43_4B",

-- L1047@01C2 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2;
-- alu <= R_fromStack, ExpStack <= pop2;
450 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L1048@01C3 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
451 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L1049@01C4 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2, if true then return else continue;
-- alu <= S_fromStack, ExpStack <= pop2, if true then return else continue;
452 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L1052@01C5 7072696E744465633A20616C75203C3D.printDec:  alu <= R_fromStack, ExpStack <= pop2;
-- printDec: alu <= R_fromStack, ExpStack <= pop2;
453 => X"70_72_69_6E_74_44_65_63_3A_20_61_6C_75_20_3C_3D",

-- L1054@01C6 7072696E74446563523A20616C75203C.printDecR:  alu <= bcd_start;
-- printDecR: alu <= bcd_start;
454 => X"70_72_69_6E_74_44_65_63_52_3A_20_61_6C_75_20_3C",

-- L1055@01C7 616C75203C3D206263645F6E6578742C.  alu <= bcd_next, if ALU_READY then next else repeat;
-- alu <= bcd_next, if ALU_READY then next else repeat;
455 => X"61_6C_75_20_3C_3D_20_62_63_64_5F_6E_65_78_74_2C",

-- L1056@01C8 696620414C555F5349474E207468656E.  if ALU_SIGN then next else printY;
-- if ALU_SIGN then next else printY;
456 => X"69_66_20_41_4C_55_5F_53_49_47_4E_20_74_68_65_6E",

-- L1057@01C9 64697265637442797465203D20272D27.  directByte = '-', outChar(from_microcode);
-- directByte = '-', outChar(from_microcode);
457 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_2D_27",

-- L1058@01CA 7072696E74593A206F75744E5A436861.printY:  outNZChar(from_YtoAlphaZ);
-- printY: outNZChar(from_YtoAlphaZ);
458 => X"70_72_69_6E_74_59_3A_20_6F_75_74_4E_5A_43_68_61",

-- L1059@01CB 6F75744E5A436861722866726F6D5F59.  outNZChar(from_YtoAlphaZ);
-- outNZChar(from_YtoAlphaZ);
459 => X"6F_75_74_4E_5A_43_68_61_72_28_66_72_6F_6D_5F_59",

-- L1060@01CC 6F75744E5A436861722866726F6D5F59.  outNZChar(from_YtoAlphaZ);
-- outNZChar(from_YtoAlphaZ);
460 => X"6F_75_74_4E_5A_43_68_61_72_28_66_72_6F_6D_5F_59",

-- L1061@01CD 6F75744E5A436861722866726F6D5F59.  outNZChar(from_YtoAlphaZ);
-- outNZChar(from_YtoAlphaZ);
461 => X"6F_75_74_4E_5A_43_68_61_72_28_66_72_6F_6D_5F_59",

-- L1062@01CE 6F75744E5A436861722866726F6D5F59.  outNZChar(from_YtoAlphaZ);
-- outNZChar(from_YtoAlphaZ);
462 => X"6F_75_74_4E_5A_43_68_61_72_28_66_72_6F_6D_5F_59",

-- L1063@01CF 6F75744E5A436861722866726F6D5F59.  outNZChar(from_YtoAlphaZ);
-- outNZChar(from_YtoAlphaZ);
463 => X"6F_75_74_4E_5A_43_68_61_72_28_66_72_6F_6D_5F_59",

-- L1064@01D0 6F75744E5A436861722866726F6D5F59.  outNZChar(from_YtoAlphaZ);
-- outNZChar(from_YtoAlphaZ);
464 => X"6F_75_74_4E_5A_43_68_61_72_28_66_72_6F_6D_5F_59",

-- L1065@01D1 434841524F5554203C3D2066726F6D5F.  CHAROUT <= from_YtoAlpha, if false then continue else outChar;
-- CHAROUT <= from_YtoAlpha, if false then continue else outChar;
465 => X"43_48_41_52_4F_55_54_20_3C_3D_20_66_72_6F_6D_5F",

-- L1067@01D2 6F75744E5A436861723A206F75744368.outNZChar:  outChar(from_YtoAlphaZ);
-- outNZChar: outChar(from_YtoAlphaZ);
466 => X"6F_75_74_4E_5A_43_68_61_72_3A_20_6F_75_74_43_68",

-- L1068@01D3 6F75745F736B69703A20616C75203C3D.out_skip:  alu <= Yx16, if true then return else continue;
-- out_skip: alu <= Yx16, if true then return else continue;
467 => X"6F_75_74_5F_73_6B_69_70_3A_20_61_6C_75_20_3C_3D",

-- L1070@01D4 736B69705370616365733A2072656164.skipSpaces:  readCore(BP);
-- skipSpaces: readCore(BP);
468 => X"73_6B_69_70_53_70_61_63_65_73_3A_20_72_65_61_64",

-- L1071@01D5 64697265637442797465203D20272027.  directByte = ' ', if MDR_MATCHES_DB then skipSp;
-- directByte = ' ', if MDR_MATCHES_DB then skipSp;
469 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L1072@01D6 64697265637442797465203D20307830.  directByte = 0x09, if MDR_MATCHES_DB then skipSp else return;
-- directByte = 0x09, if MDR_MATCHES_DB then skipSp else return;
470 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1073@01D7 736B697053703A204250203C3D20696E.skipSp:  BP <= inc, if false then continue else skipSpaces;
-- skipSp: BP <= inc, if false then continue else skipSpaces;
471 => X"73_6B_69_70_53_70_3A_20_42_50_20_3C_3D_20_69_6E",

-- L1075@01D8 6F7574426565703A206F757443524C46.outBeep:  outCRLF();
-- outBeep: outCRLF();
472 => X"6F_75_74_42_65_65_70_3A_20_6F_75_74_43_52_4C_46",

-- L1076@01D9 74726163652863726C66293B20202020.  trace(crlf);
-- trace(crlf);
473 => X"74_72_61_63_65_28_63_72_6C_66_29_3B_20_20_20_20",

-- L1077@01DA 64697265637442797465203D20307830.  directByte = 0x07, CHAROUT <= from_microcode, if false then continue else outChar;
-- directByte = 0x07, CHAROUT <= from_microcode, if false then continue else outChar;
474 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1079@01DB 6F757443524C463A2064697265637442.outCRLF:  directByte = 0x0D, outChar(from_microcode);
-- outCRLF: directByte = 0x0D, outChar(from_microcode);
475 => X"6F_75_74_43_52_4C_46_3A_20_64_69_72_65_63_74_42",

-- L1080@01DC 64697265637442797465203D20307830.  directByte = 0x0A, CHAROUT <= from_microcode;
-- directByte = 0x0A, CHAROUT <= from_microcode;
476 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1081@01DD 6F7574436861723A2069662043484152.outChar:  if CHAROUT_READY then next else repeat;
-- outChar: if CHAROUT_READY then next else repeat;
477 => X"6F_75_74_43_68_61_72_3A_20_69_66_20_43_48_41_52",

-- L1082@01DE 696620434841524F55545F5245414459.  if CHAROUT_READY then return else repeat;
-- if CHAROUT_READY then return else repeat;
478 => X"69_66_20_43_48_41_52_4F_55_54_5F_52_45_41_44_59",

-- L1084@01DF 7772697465436F72653A206E5752203D.writeCore:  nWR = 0, if nBUSACK then repeat else return;
-- writeCore: nWR = 0, if nBUSACK then repeat else return;
479 => X"77_72_69_74_65_43_6F_72_65_3A_20_6E_57_52_20_3D",

-- L1086@01E0 72656164436F72653A206E5244203D20.readCore:  nRD = 0, if nBUSACK then repeat else next;
-- readCore: nRD = 0, if nBUSACK then repeat else next;
480 => X"72_65_61_64_43_6F_72_65_3A_20_6E_52_44_20_3D_20",

-- L1087@01E1 6E5244203D20302C204D4452203C3D20.  nRD = 0, MDR <= from_Bus, if true then return else continue;
-- nRD = 0, MDR <= from_Bus, if true then return else continue;
481 => X"6E_52_44_20_3D_20_30_2C_20_4D_44_52_20_3C_3D_20",

-- L1091@01E2 64756D705F696E7075743A20496E6C45.dump_input:  InlEnd <= InLine_start, trace(crlf);
-- dump_input: InlEnd <= InLine_start, trace(crlf);
482 => X"64_75_6D_70_5F_69_6E_70_75_74_3A_20_49_6E_6C_45",

-- L1092@01E3 64756D705F696E6C703A207265616443.dump_inlp:  readCore(InlEnd);
-- dump_inlp: readCore(InlEnd);
483 => X"64_75_6D_70_5F_69_6E_6C_70_3A_20_72_65_61_64_43",

-- L1093@01E4 64697265637442797465203D20392C20.  directByte = 9, trace(from_microcode);
-- directByte = 9, trace(from_microcode);
484 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_39_2C_20",

-- L1094@01E5 64697265637442797465203D20307830.  directByte = 0x00, if MDR_MATCHES_DB then dump_inex;
-- directByte = 0x00, if MDR_MATCHES_DB then dump_inex;
485 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1095@01E6 496E6C456E64203C3D20696E632C2069.  InlEnd <= inc, if false then continue else dump_inlp;
-- InlEnd <= inc, if false then continue else dump_inlp;
486 => X"49_6E_6C_45_6E_64_20_3C_3D_20_69_6E_63_2C_20_69",

-- L1096@01E7 64756D705F696E65783A207472616365.dump_inex:  trace(crlf);
-- dump_inex: trace(crlf);
487 => X"64_75_6D_70_5F_69_6E_65_78_3A_20_74_72_61_63_65",

-- L1097@01E8 69662074727565207468656E20726574.  if true then return else continue;
-- if true then return else continue;
488 => X"69_66_20_74_72_75_65_20_74_68_65_6E_20_72_65_74",

-- L1099@01E9 747261636542503A2045787053746163.traceBP:  ExpStack <= push_TWord, T <= BP;
-- traceBP: ExpStack <= push_TWord, T <= BP;
489 => X"74_72_61_63_65_42_50_3A_20_45_78_70_53_74_61_63",

-- L1100@01EA 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 33;
-- trace(from_microcode), directByte = 33;
490 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L1101@01EB 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2, if true then return else continue;
-- T <= ExpStack, ExpStack <= pop2, if true then return else continue;
491 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L1103@01EC 7472616365593A20457870537461636B.traceY:  ExpStack <= push_TWord, T <= from_YLo;
-- traceY: ExpStack <= push_TWord, T <= from_YLo;
492 => X"74_72_61_63_65_59_3A_20_45_78_70_53_74_61_63_6B",

-- L1104@01ED 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 32;
-- trace(from_microcode), directByte = 32;
493 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L1105@01EE 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2, if true then return else continue;
-- T <= ExpStack, ExpStack <= pop2, if true then return else continue;
494 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L1107@01EF 7472616365414C553A20747261636528.traceALU:  trace(crlf);
-- traceALU: trace(crlf);
495 => X"74_72_61_63_65_41_4C_55_3A_20_74_72_61_63_65_28",

-- L1108@01F0 54203C3D20736176652C207472616365.  T <= save, trace(from_microcode), directByte = 52;
-- T <= save, trace(from_microcode), directByte = 52;
496 => X"54_20_3C_3D_20_73_61_76_65_2C_20_74_72_61_63_65",

-- L1109@01F1 54203C3D2066726F6D5F532C20747261.  T <= from_S, trace(from_microcode), directByte = 52;
-- T <= from_S, trace(from_microcode), directByte = 52;
497 => X"54_20_3C_3D_20_66_72_6F_6D_5F_53_2C_20_74_72_61",

-- L1110@01F2 54203C3D2066726F6D5F522C20747261.  T <= from_R, trace(from_microcode), directByte = 52;
-- T <= from_R, trace(from_microcode), directByte = 52;
498 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_2C_20_74_72_61",

-- L1111@01F3 54203C3D2066726F6D5F5948692C2074.  T <= from_YHi, trace(from_microcode), directByte = 53;
-- T <= from_YHi, trace(from_microcode), directByte = 53;
499 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_48_69_2C_20_74",

-- L1112@01F4 54203C3D2066726F6D5F594C6F2C2074.  T <= from_YLo, trace(from_microcode), directByte = 52;
-- T <= from_YLo, trace(from_microcode), directByte = 52;
500 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_74",

-- L1113@01F5 54203C3D20726563616C6C2C20444247.  T <= recall, DBGINDEX <= crlf;
-- T <= recall, DBGINDEX <= crlf;
501 => X"54_20_3C_3D_20_72_65_63_61_6C_6C_2C_20_44_42_47",

-- L1114@01F6 74726163653A206966204442475F5245.trace:  if DBG_READY then next else repeat;
-- trace: if DBG_READY then next else repeat;
502 => X"74_72_61_63_65_3A_20_69_66_20_44_42_47_5F_52_45",

-- L1115@01F7 6966204442475F524541445920746865.  if DBG_READY then next else repeat;
-- if DBG_READY then next else repeat;
503 => X"69_66_20_44_42_47_5F_52_45_41_44_59_20_74_68_65",

-- L1116@01F8 444247494E444558203C3D207A65726F.  DBGINDEX <= zero, if true then return else continue;
-- DBGINDEX <= zero, if true then return else continue;
504 => X"44_42_47_49_4E_44_45_58_20_3C_3D_20_7A_65_72_6F",

505 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

506 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

507 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

508 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

509 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

510 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

511 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20");

end microBasic_sym;

