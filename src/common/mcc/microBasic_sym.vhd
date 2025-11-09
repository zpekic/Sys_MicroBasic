--------------------------------------------------------
-- mcc V1.5.1108 - Custom microcode compiler (c)2020-... 
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

-- L0349@0000 5F72657365743A206966207472756520._reset:  if true then continue else repeat;
-- _reset: if true then continue else repeat;
0 => X"5F_72_65_73_65_74_3A_20_69_66_20_74_72_75_65_20",

-- L0351@0001 5F7265736574313A2054203C3D207A65._reset1:  T <= zero;
-- _reset1: T <= zero;
1 => X"5F_72_65_73_65_74_31_3A_20_54_20_3C_3D_20_7A_65",

-- L0353@0002 5F7265736574323A2058516865726520._reset2:  XQhere <= T;
-- _reset2: XQhere <= T;
2 => X"5F_72_65_73_65_74_32_3A_20_58_51_68_65_72_65_20",

-- L0355@0003 5F7265736574333A2069662074727565._reset3:  if true then continue else repeat;
-- _reset3: if true then continue else repeat;
3 => X"5F_72_65_73_65_74_33_3A_20_69_66_20_74_72_75_65",

-- L0359@0004 436F6C6453746172743A207472616365.ColdStart:  trace(from_microcode), directByte = 4;
-- ColdStart: trace(from_microcode), directByte = 4;
4 => X"43_6F_6C_64_53_74_61_72_74_3A_20_74_72_61_63_65",

-- L0360@0005 7772697465324E756C6C732850726F67.  write2Nulls(Prog_start);
-- write2Nulls(Prog_start);
5 => X"77_72_69_74_65_32_4E_75_6C_6C_73_28_50_72_6F_67",

-- L0361@0006 5761726D53746172743A20444247494E.WarmStart:  DBGINDEX <= zero, ExpStack <= clear, RetStack <= clear, BasStack <= clear, T <= zero, alu <= reset0;
-- WarmStart: DBGINDEX <= zero, ExpStack <= clear, RetStack <= clear, BasStack <= clear, T <= zero, alu <= reset0;
6 => X"57_61_72_6D_53_74_61_72_74_3A_20_44_42_47_49_4E",

-- L0362@0007 4250203C3D20496E4C696E655F737461.  BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= zero;
-- BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= zero;
7 => X"42_50_20_3C_3D_20_49_6E_4C_69_6E_65_5F_73_74_61",

-- L0363@0008 4C696E6F203C3D20542C20494C5F5043.  Lino <= T, IL_PC <= T, write2Nulls(BP);
-- Lino <= T, IL_PC <= T, write2Nulls(BP);
8 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_49_4C_5F_50_43",

-- L0365@0009 66657463683A2074726163652866726F.fetch:  trace(from_microcode), directByte = 51;
-- fetch: trace(from_microcode), directByte = 51;
9 => X"66_65_74_63_68_3A_20_74_72_61_63_65_28_66_72_6F",

-- L0366@000A 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 2;
-- trace(from_microcode), directByte = 2;
10 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0367@000B 494C5F4F50203C3D2066726F6D5F696E.  IL_OP <= from_interpreter, IL_PC <= inc, trace(from_microcode), directByte = 56;
-- IL_OP <= from_interpreter, IL_PC <= inc, trace(from_microcode), directByte = 56;
11 => X"49_4C_5F_4F_50_20_3C_3D_20_66_72_6F_6D_5F_69_6E",

-- L0368@000C 54203C3D207A65726F2C20616C75203C.  T <= zero, alu <= reset0, if IL_A_VALID then fork else INTERNAL_ERR;
-- T <= zero, alu <= reset0, if IL_A_VALID then fork else INTERNAL_ERR;
12 => X"54_20_3C_3D_20_7A_65_72_6F_2C_20_61_6C_75_20_3C",

-- L0371@000D 6261646F703A2069662066616C736520.badop:  if false then continue else INTERNAL_ERR;
-- badop: if false then continue else INTERNAL_ERR;
13 => X"62_61_64_6F_70_3A_20_69_66_20_66_61_6C_73_65_20",

-- L0376@000E 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 15;
-- trace(from_microcode), directByte = 15;
14 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0377@000F 457870537461636B203C3D2073746172.  ExpStack <= startSwap;
-- ExpStack <= startSwap;
15 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_73_74_61_72",

-- L0378@0010 457870537461636B203C3D20656E6453.  ExpStack <= endSwap, if false then continue else fetch;
-- ExpStack <= endSwap, if false then continue else fetch;
16 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_65_6E_64_53",

-- L0381@0011 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 15;
-- trace(from_microcode), directByte = 15;
17 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0382@0012 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
18 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0387@0013 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 12;
-- trace(from_microcode), directByte = 12;
19 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0388@0014 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
20 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0393@0015 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 28;
-- trace(from_microcode), directByte = 28;
21 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0394@0016 6C625F707573683A2074726163652866.lb_push:  trace(from_microcode), directByte = 3, T <= codeByte;
-- lb_push: trace(from_microcode), directByte = 3, T <= codeByte;
22 => X"6C_62_5F_70_75_73_68_3A_20_74_72_61_63_65_28_66",

-- L0395@0017 457870537461636B203C3D2070757368.  ExpStack <= push_TByte;
-- ExpStack <= push_TByte;
23 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0396@0018 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
24 => X"49_4C_5F_50_43_20_3C_3D_20_69_6E_63_2C_20_69_66",

-- L0401@0019 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 29;
-- trace(from_microcode), directByte = 29;
25 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0402@001A 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3, T <= codeByte;
-- trace(from_microcode), directByte = 3, T <= codeByte;
26 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0403@001B 457870537461636B203C3D2070757368.  ExpStack <= push_TByte;
-- ExpStack <= push_TByte;
27 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0404@001C 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
28 => X"49_4C_5F_50_43_20_3C_3D_20_69_6E_63_2C_20_69_66",

-- L0409@001D 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 38;
-- trace(from_microcode), directByte = 38;
29 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0410@001E 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
30 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0411@001F 54203C3D20457870537461636B2C2069.  T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR;
-- T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR;
31 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_69",

-- L0412@0020 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, if false then continue else fetch;
-- ExpStack <= push_TWord, if false then continue else fetch;
32 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0417@0021 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 34;
-- trace(from_microcode), directByte = 34;
33 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0418@0022 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
34 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0419@0023 457870537461636B203C3D20706F7032.  ExpStack <= pop2, if false then continue else fetch;
-- ExpStack <= pop2, if false then continue else fetch;
35 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_32",

-- L0424@0024 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 10;
-- trace(from_microcode), directByte = 10;
36 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0425@0025 69662042505F494E5F494E504C494E45.  if BP_IN_INPLINE then next else ptr_exc;
-- if BP_IN_INPLINE then next else ptr_exc;
37 => X"69_66_20_42_50_5F_49_4E_5F_49_4E_50_4C_49_4E_45",

-- L0426@0026 736176655F62703A2053765074203C3D.save_bp:  SvPt <= BP;
-- save_bp: SvPt <= BP;
38 => X"73_61_76_65_5F_62_70_3A_20_53_76_50_74_20_3C_3D",

-- L0427@0027 62705F646F6E653A2074726163654250.bp_done:  traceBP();
-- bp_done: traceBP();
39 => X"62_70_5F_64_6F_6E_65_3A_20_74_72_61_63_65_42_50",

-- L0428@0028 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
40 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0433@0029 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 11;
-- trace(from_microcode), directByte = 11;
41 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0434@002A 6966205356505F494E5F494E504C494E.  if SVP_IN_INPLINE then save_bp;
-- if SVP_IN_INPLINE then save_bp;
42 => X"69_66_20_53_56_50_5F_49_4E_5F_49_4E_50_4C_49_4E",

-- L0435@002B 7074725F6578633A2053765074203C3D.ptr_exc:  SvPt <= BP, BP <= SvPt, if false then continue else bp_done;
-- ptr_exc: SvPt <= BP, BP <= SvPt, if false then continue else bp_done;
43 => X"70_74_72_5F_65_78_63_3A_20_53_76_50_74_20_3C_3D",

-- L0440@002C 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 36;
-- trace(from_microcode), directByte = 36;
44 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0441@002D 56617273203C3D20696E64657846726F.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
45 => X"56_61_72_73_20_3C_3D_20_69_6E_64_65_78_46_72_6F",

-- L0442@002E 54203C3D2066726F6D5F766172732C20.  T <= from_vars, ExpStack <= pop1;
-- T <= from_vars, ExpStack <= pop1;
46 => X"54_20_3C_3D_20_66_72_6F_6D_5F_76_61_72_73_2C_20",

-- L0443@002F 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, if false then continue else fetch;
-- ExpStack <= push_TWord, if false then continue else fetch;
47 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0448@0030 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 37;
-- trace(from_microcode), directByte = 37;
48 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0449@0031 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
49 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0450@0032 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2;
-- T <= ExpStack, ExpStack <= pop2;
50 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L0451@0033 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
51 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0452@0034 56617273203C3D20696E64657846726F.  Vars <= indexFromExpStack, ExpStack <= pop1;
-- Vars <= indexFromExpStack, ExpStack <= pop1;
52 => X"56_61_72_73_20_3C_3D_20_69_6E_64_65_78_46_72_6F",

-- L0453@0035 56617273203C3D20542C206966206661.  Vars <= T, if false then continue else fetch;
-- Vars <= T, if false then continue else fetch;
53 => X"56_61_72_73_20_3C_3D_20_54_2C_20_69_66_20_66_61",

-- L0458@0036 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 47;
-- trace(from_microcode), directByte = 47;
54 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0459@0037 69662049535F52554E4D4F4445207468.  if IS_RUNMODE then next else INTERNAL_ERR;
-- if IS_RUNMODE then next else INTERNAL_ERR;
55 => X"69_66_20_49_53_5F_52_55_4E_4D_4F_44_45_20_74_68",

-- L0460@0038 696620535441434B5F49535F46554C4C.  if STACK_IS_FULL then BSTACK_ERR;
-- if STACK_IS_FULL then BSTACK_ERR;
56 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_46_55_4C_4C",

-- L0461@0039 426173537461636B203C3D2070757368.  BasStack <= push_Lino_and_BP, if false then continue else fetch;
-- BasStack <= push_Lino_and_BP, if false then continue else fetch;
57 => X"42_61_73_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0466@003A 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 48;
-- trace(from_microcode), directByte = 48;
58 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0467@003B 69662049535F52554E4D4F4445207468.  if IS_RUNMODE then next else INTERNAL_ERR;
-- if IS_RUNMODE then next else INTERNAL_ERR;
59 => X"69_66_20_49_53_5F_52_55_4E_4D_4F_44_45_20_74_68",

-- L0468@003C 54203C3D20426173537461636B5F4869.  T <= BasStack_Hi,if STACK_IS_EMPTY then BSTACK_ERR;
-- T <= BasStack_Hi,if STACK_IS_EMPTY then BSTACK_ERR;
60 => X"54_20_3C_3D_20_42_61_73_53_74_61_63_6B_5F_48_69",

-- L0469@003D 4C696E6F203C3D20542C2054203C3D20.  Lino <= T, T <= BasStack_Lo;
-- Lino <= T, T <= BasStack_Lo;
61 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_54_20_3C_3D_20",

-- L0470@003E 4250203C3D20542C2042617353746163.  BP <= T, BasStack <= pop, if false then continue else fetch;
-- BP <= T, BasStack <= pop, if false then continue else fetch;
62 => X"42_50_20_3C_3D_20_54_2C_20_42_61_73_53_74_61_63",

-- L0475@003F 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 45;
-- trace(from_microcode), directByte = 45;
63 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0476@0040 494C5F5043203C3D205851686572652C.  IL_PC <= XQhere, if STACK_IS_EMPTY then ESTACK_ERR;
-- IL_PC <= XQhere, if STACK_IS_EMPTY then ESTACK_ERR;
64 => X"49_4C_5F_50_43_20_3C_3D_20_58_51_68_65_72_65_2C",

-- L0477@0041 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2;
-- alu <= R_fromStack, ExpStack <= pop2;
65 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0478@0042 54203C3D2066726F6D5F523B20202020.  T <= from_R;
-- T <= from_R;
66 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_3B_20_20_20_20",

-- L0479@0043 4C696E6F203C3D20542C20696620525F.  Lino <= T, if R_IS_ZERO then NOPROG_ERR;
-- Lino <= T, if R_IS_ZERO then NOPROG_ERR;
67 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_69_66_20_52_5F",

-- L0481@0044 69662043414348455F56414C49442074.  if CACHE_VALID then go_cvalid;
-- if CACHE_VALID then go_cvalid;
68 => X"69_66_20_43_41_43_48_45_5F_56_41_4C_49_44_20_74",

-- L0483@0045 66696E644C696E6F28293B2020202020.  findLino();
-- findLino();
69 => X"66_69_6E_64_4C_69_6E_6F_28_29_3B_20_20_20_20_20",

-- L0484@0046 616C75203C3D2063616368655F73746F.  alu <= cache_store, if false then continue else fetch;
-- alu <= cache_store, if false then continue else fetch;
70 => X"61_6C_75_20_3C_3D_20_63_61_63_68_65_5F_73_74_6F",

-- L0486@0047 676F5F6376616C69643A2054203C3D20.go_cvalid:  T <= Cache_Data, if CACHE_HIT then next else go_cmiss;
-- go_cvalid: T <= Cache_Data, if CACHE_HIT then next else go_cmiss;
71 => X"67_6F_5F_63_76_61_6C_69_64_3A_20_54_20_3C_3D_20",

-- L0488@0048 4250203C3D20542C2069662066616C73.  BP <= T, if false then continue else fetch;
-- BP <= T, if false then continue else fetch;
72 => X"42_50_20_3C_3D_20_54_2C_20_69_66_20_66_61_6C_73",

-- L0491@0049 676F5F636D6973733A2066696E644C69.go_cmiss:  findLino();
-- go_cmiss: findLino();
73 => X"67_6F_5F_63_6D_69_73_73_3A_20_66_69_6E_64_4C_69",

-- L0492@004A 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
74 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0494@004B 66696E644C696E6F3A2054203C3D2050.findLino:  T <= Prog_start;
-- findLino: T <= Prog_start;
75 => X"66_69_6E_64_4C_69_6E_6F_3A_20_54_20_3C_3D_20_50",

-- L0495@004C 676F5F7365617263683A20616C75203C.go_search:  alu <= reset1, readCore(T);
-- go_search: alu <= reset1, readCore(T);
76 => X"67_6F_5F_73_65_61_72_63_68_3A_20_61_6C_75_20_3C",

-- L0496@004D 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc;
-- alu <= Rx256_plus_MDR, T <= inc;
77 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L0497@004E 616C75203C3D20535F66726F6D4C696E.  alu <= S_fromLino, readCore(T);
-- alu <= S_fromLino, readCore(T);
78 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_4C_69_6E",

-- L0498@004F 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc;
-- alu <= Rx256_plus_MDR, T <= inc;
79 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L0499@0050 616C75203C3D20535F6D696E75735F52.  alu <= S_minus_R, if R_IS_ZERO then stop_run;
-- alu <= S_minus_R, if R_IS_ZERO then stop_run;
80 => X"61_6C_75_20_3C_3D_20_53_5F_6D_69_6E_75_73_5F_52",

-- L0500@0051 4250203C3D20542C20696620595F5A45.  BP <= T, if Y_ZERO then return;
-- BP <= T, if Y_ZERO then return;
81 => X"42_50_20_3C_3D_20_54_2C_20_69_66_20_59_5F_5A_45",

-- L0501@0052 66696E644E65787443522873616D6529.  findNextCR(same);
-- findNextCR(same);
82 => X"66_69_6E_64_4E_65_78_74_43_52_28_73_61_6D_65_29",

-- L0502@0053 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else go_search;
-- T <= inc, if false then continue else go_search;
83 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0507@0054 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 25;
-- trace(from_microcode), directByte = 25;
84 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0508@0055 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
85 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0509@0056 457870537461636B203C3D20706F7032.  ExpStack <= pop2;
-- ExpStack <= pop2;
86 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_32",

-- L0510@0057 616C75203C3D206E65675F522C206966.  alu <= neg_R, if ALU_READY then alu_done else repeat;
-- alu <= neg_R, if ALU_READY then alu_done else repeat;
87 => X"61_6C_75_20_3C_3D_20_6E_65_67_5F_52_2C_20_69_66",

-- L0515@0058 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 22;
-- trace(from_microcode), directByte = 22;
88 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0516@0059 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
89 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0517@005A 616C75203C3D20535F706C75735F522C.  alu <= S_plus_R, if ALU_READY then next else repeat;
-- alu <= S_plus_R, if ALU_READY then next else repeat;
90 => X"61_6C_75_20_3C_3D_20_53_5F_70_6C_75_73_5F_52_2C",

-- L0518@005B 616C755F646F6E653A20747261636541.alu_done:  traceALU();
-- alu_done: traceALU();
91 => X"61_6C_75_5F_64_6F_6E_65_3A_20_74_72_61_63_65_41",

-- L0519@005C 54203C3D2066726F6D5F594C6F2C2069.  T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
-- T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
92 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_69",

-- L0520@005D 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, if false then continue else fetch;
-- ExpStack <= push_TWord, if false then continue else fetch;
93 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0525@005E 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 23;
-- trace(from_microcode), directByte = 23;
94 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0526@005F 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
95 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0527@0060 616C75203C3D20535F6D696E75735F52.  alu <= S_minus_R, if ALU_READY then alu_done else repeat;
-- alu <= S_minus_R, if ALU_READY then alu_done else repeat;
96 => X"61_6C_75_20_3C_3D_20_53_5F_6D_69_6E_75_73_5F_52",

-- L0532@0061 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 24;
-- trace(from_microcode), directByte = 24;
97 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0533@0062 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
98 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0534@0063 616C75203C3D20535F6D756C5F522C20.  alu <= S_mul_R, if ALU_READY then alu_done else repeat;
-- alu <= S_mul_R, if ALU_READY then alu_done else repeat;
99 => X"61_6C_75_20_3C_3D_20_53_5F_6D_75_6C_5F_52_2C_20",

-- L0539@0064 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 35;
-- trace(from_microcode), directByte = 35;
100 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0540@0065 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
101 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0541@0066 616C75203C3D206469765F7374617274.  alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
-- alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
102 => X"61_6C_75_20_3C_3D_20_64_69_76_5F_73_74_61_72_74",

-- L0542@0067 6469765F6C6F6F703A20616C75203C3D.div_loop:  alu <= div_shift;
-- div_loop: alu <= div_shift;
103 => X"64_69_76_5F_6C_6F_6F_70_3A_20_61_6C_75_20_3C_3D",

-- L0543@0068 696620414C555F524541445920746865.  if ALU_READY then div_done;
-- if ALU_READY then div_done;
104 => X"69_66_20_41_4C_55_5F_52_45_41_44_59_20_74_68_65",

-- L0544@0069 616C75203C3D206469765F7375627365.  alu <= div_subset, if false then continue else div_loop;
-- alu <= div_subset, if false then continue else div_loop;
105 => X"61_6C_75_20_3C_3D_20_64_69_76_5F_73_75_62_73_65",

-- L0545@006A 6469765F646F6E653A20616C75203C3D.div_done:  alu <= div_end, if false then continue else alu_done;
-- div_done: alu <= div_end, if false then continue else alu_done;
106 => X"64_69_76_5F_64_6F_6E_65_3A_20_61_6C_75_20_3C_3D",

-- L0550@006B 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 46;
-- trace(from_microcode), directByte = 46;
107 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0551@006C 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2;
-- alu <= R_fromStack, ExpStack <= pop2;
108 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0552@006D 457870537461636B203C3D2070757368.  ExpStack <= push_TByte;
-- ExpStack <= push_TByte;
109 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0553@006E 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2;
-- T <= ExpStack, ExpStack <= pop2;
110 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L0554@006F 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2;
-- alu <= S_fromStack, ExpStack <= pop2;
111 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L0555@0070 69662043505F534B4950207468656E20.  if CP_SKIP then next else fetch;
-- if CP_SKIP then next else fetch;
112 => X"69_66_20_43_50_5F_53_4B_49_50_20_74_68_65_6E_20",

-- L0556@0071 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if false then continue else fetch;
-- IL_PC <= inc, if false then continue else fetch;
113 => X"49_4C_5F_50_43_20_3C_3D_20_69_6E_63_2C_20_69_66",

-- L0561@0072 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 39;
-- trace(from_microcode), directByte = 39;
114 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0562@0073 494C5F5043203C3D20542C2069662049.  IL_PC <= T, if IS_RUNMODE then next else fetch;
-- IL_PC <= T, if IS_RUNMODE then next else fetch;
115 => X"49_4C_5F_50_43_20_3C_3D_20_54_2C_20_69_66_20_49",

-- L0563@0074 6E785F72756E3A2066696E644E657874.nx_run:  findNextCR(BP);
-- nx_run: findNextCR(BP);
116 => X"6E_78_5F_72_75_6E_3A_20_66_69_6E_64_4E_65_78_74",

-- L0564@0075 54203C3D20696E633B20202020202020.  T <= inc;
-- T <= inc;
117 => X"54_20_3C_3D_20_69_6E_63_3B_20_20_20_20_20_20_20",

-- L0565@0076 4250203C3D20543B2020202020202020.  BP <= T;
-- BP <= T;
118 => X"42_50_20_3C_3D_20_54_3B_20_20_20_20_20_20_20_20",

-- L0566@0077 72656164436F72653136284250293B20.  readCore16(BP);
-- readCore16(BP);
119 => X"72_65_61_64_43_6F_72_65_31_36_28_42_50_29_3B_20",

-- L0567@0078 4250203C3D20542C2054203C3D206672.  BP <= T, T <= from_R, if R_IS_ZERO then nx_err;
-- BP <= T, T <= from_R, if R_IS_ZERO then nx_err;
120 => X"42_50_20_3C_3D_20_54_2C_20_54_20_3C_3D_20_66_72",

-- L0568@0079 4C696E6F203C3D20542C20494C5F5043.  Lino <= T, IL_PC <= XQhere;
-- Lino <= T, IL_PC <= XQhere;
121 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_49_4C_5F_50_43",

-- L0570@007A 7472616365425028293B202020202020.  traceBP();
-- traceBP();
122 => X"74_72_61_63_65_42_50_28_29_3B_20_20_20_20_20_20",

-- L0571@007B 6966204B42445F425245414B20746865.  if KBD_BREAK then BREAK else fetch;
-- if KBD_BREAK then BREAK else fetch;
123 => X"69_66_20_4B_42_44_5F_42_52_45_41_4B_20_74_68_65",

-- L0572@007C 6E785F6572723A206469726563744279.nx_err:  directByte = 0x07, outChar(from_microcode);
-- nx_err: directByte = 0x07, outChar(from_microcode);
124 => X"6E_78_5F_65_72_72_3A_20_64_69_72_65_63_74_42_79",

-- L0573@007D 69662066616C7365207468656E20636F.  if false then continue else stop_run;
-- if false then continue else stop_run;
125 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0578@007E 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 41;
-- trace(from_microcode), directByte = 41;
126 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0579@007F 616C75203C3D207265736574312C2069.  alu <= reset1, if IS_RUNMODE then badop;
-- alu <= reset1, if IS_RUNMODE then badop;
127 => X"61_6C_75_20_3C_3D_20_72_65_73_65_74_31_2C_20_69",

-- L0580@0080 6C735F7061726C6F61643A2054203C3D.ls_parload:  T <= from_R, if STACK_IS_EMPTY then ls_parchk;
-- ls_parload: T <= from_R, if STACK_IS_EMPTY then ls_parchk;
128 => X"6C_73_5F_70_61_72_6C_6F_61_64_3A_20_54_20_3C_3D",

-- L0581@0081 616C75203C3D20535F66726F6D543B20.  alu <= S_fromT;
-- alu <= S_fromT;
129 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_54_3B_20",

-- L0582@0082 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2, if false then continue else ls_parload;
-- alu <= R_fromStack, ExpStack <= pop2, if false then continue else ls_parload;
130 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0583@0083 6C735F70617263686B3A20616C75203C.ls_parchk:  alu <= ls_load;
-- ls_parchk: alu <= ls_load;
131 => X"6C_73_5F_70_61_72_63_68_6B_3A_20_61_6C_75_20_3C",

-- L0584@0084 6966204C535F504152414D535F4F4B20.  if LS_PARAMS_OK then next else SYNTAX_ERR;
-- if LS_PARAMS_OK then next else SYNTAX_ERR;
132 => X"69_66_20_4C_53_5F_50_41_52_41_4D_53_5F_4F_4B_20",

-- L0585@0085 6C735F73746172743A2054203C3D2050.ls_start:  T <= Prog_start;
-- ls_start: T <= Prog_start;
133 => X"6C_73_5F_73_74_61_72_74_3A_20_54_20_3C_3D_20_50",

-- L0586@0086 6C735F6C696E656C6F6F703A20696620.ls_lineloop:  if CHARIN_READY then next else ls_continue;
-- ls_lineloop: if CHARIN_READY then next else ls_continue;
134 => X"6C_73_5F_6C_69_6E_65_6C_6F_6F_70_3A_20_69_66_20",

-- L0587@0087 6966204B42445F425245414B20746865.  if KBD_BREAK then BREAK;
-- if KBD_BREAK then BREAK;
135 => X"69_66_20_4B_42_44_5F_42_52_45_41_4B_20_74_68_65",

-- L0588@0088 676F7443686172203D20312C20646972.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_continue;
-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_continue;
136 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_64_69_72",

-- L0589@0089 6C735F70617573653A20696620434841.ls_pause:  if CHARIN_READY then next else repeat;
-- ls_pause: if CHARIN_READY then next else repeat;
137 => X"6C_73_5F_70_61_75_73_65_3A_20_69_66_20_43_48_41",

-- L0590@008A 676F7443686172203D20312C20646972.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
138 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_64_69_72",

-- L0591@008B 6C735F636F6E74696E75653A20676F74.ls_continue:  gotChar = 1, readCore16(same);
-- ls_continue: gotChar = 1, readCore16(same);
139 => X"6C_73_5F_63_6F_6E_74_69_6E_75_65_3A_20_67_6F_74",

-- L0592@008C 616C75203C3D206C735F636865636B2C.  alu <= ls_check, if R_IS_ZERO then fetch;
-- alu <= ls_check, if R_IS_ZERO then fetch;
140 => X"61_6C_75_20_3C_3D_20_6C_73_5F_63_68_65_63_6B_2C",

-- L0593@008D 6966204C535F5041535345445F454E44.  if LS_PASSED_END then fetch;
-- if LS_PASSED_END then fetch;
141 => X"69_66_20_4C_53_5F_50_41_53_53_45_44_5F_45_4E_44",

-- L0594@008E 6966204C535F494E5F52414E47452074.  if LS_IN_RANGE then next else ls_nextLine;
-- if LS_IN_RANGE then next else ls_nextLine;
142 => X"69_66_20_4C_53_5F_49_4E_5F_52_41_4E_47_45_20_74",

-- L0595@008F 7072696E744465635228595F73617665.  printDecR(Y_save);
-- printDecR(Y_save);
143 => X"70_72_69_6E_74_44_65_63_52_28_59_5F_73_61_76_65",

-- L0596@0090 616C75203C3D20595F726563616C6C2C.  alu <= Y_recall, directByte = ' ', outChar(from_microcode);
-- alu <= Y_recall, directByte = ' ', outChar(from_microcode);
144 => X"61_6C_75_20_3C_3D_20_59_5F_72_65_63_61_6C_6C_2C",

-- L0597@0091 6C735F636861726C6F6F703A20726561.ls_charloop:  readCore(T);
-- ls_charloop: readCore(T);
145 => X"6C_73_5F_63_68_61_72_6C_6F_6F_70_3A_20_72_65_61",

-- L0598@0092 6F7574436861722866726F6D5F4D4452.  outChar(from_MDR);
-- outChar(from_MDR);
146 => X"6F_75_74_43_68_61_72_28_66_72_6F_6D_5F_4D_44_52",

-- L0599@0093 6C735F6E657874636861723A20646972.ls_nextchar:  directByte = 0x0D, if MDR_EQU_DB then next else ls_next;
-- ls_nextchar: directByte = 0x0D, if MDR_EQU_DB then next else ls_next;
147 => X"6C_73_5F_6E_65_78_74_63_68_61_72_3A_20_64_69_72",

-- L0600@0094 64697265637442797465203D20307830.  directByte = 0x0A, outChar(from_microcode);
-- directByte = 0x0A, outChar(from_microcode);
148 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0601@0095 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else ls_lineloop;
-- T <= inc, if false then continue else ls_lineloop;
149 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0602@0096 6C735F6E6578743A2054203C3D20696E.ls_next:  T <= inc, if false then continue else ls_charloop;
-- ls_next: T <= inc, if false then continue else ls_charloop;
150 => X"6C_73_5F_6E_65_78_74_3A_20_54_20_3C_3D_20_69_6E",

-- L0603@0097 6C735F6E6578744C696E653A2066696E.ls_nextLine:  findNextCR(same);
-- ls_nextLine: findNextCR(same);
151 => X"6C_73_5F_6E_65_78_74_4C_69_6E_65_3A_20_66_69_6E",

-- L0604@0098 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else ls_lineloop;
-- T <= inc, if false then continue else ls_lineloop;
152 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0609@0099 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 26;
-- trace(from_microcode), directByte = 26;
153 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0610@009A 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
154 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0611@009B 7072696E7444656328293B2020202020.  printDec();
-- printDec();
155 => X"70_72_69_6E_74_44_65_63_28_29_3B_20_20_20_20_20",

-- L0612@009C 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
156 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0617@009D 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 18;
-- trace(from_microcode), directByte = 18;
157 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0618@009E 70715F6C6F6F703A204250203C3D2069.pq_loop:  BP <= inc, readCore(BP);
-- pq_loop: BP <= inc, readCore(BP);
158 => X"70_71_5F_6C_6F_6F_70_3A_20_42_50_20_3C_3D_20_69",

-- L0619@009F 64697265637442797465203D20272227.  directByte = '"', if MDR_EQU_DB then pq_done;
-- directByte = '"', if MDR_EQU_DB then pq_done;
159 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_22_27",

-- L0620@00A0 6F7574436861722866726F6D5F4D4452.  outChar(from_MDR);
-- outChar(from_MDR);
160 => X"6F_75_74_43_68_61_72_28_66_72_6F_6D_5F_4D_44_52",

-- L0621@00A1 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3;
-- trace(from_microcode), directByte = 3;
161 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0622@00A2 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_EQU_DB then INTERNAL_ERR else pq_loop;
-- directByte = 0x0D, if MDR_EQU_DB then INTERNAL_ERR else pq_loop;
162 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0623@00A3 70715F646F6E653A2074726163654250.pq_done:  traceBP();
-- pq_done: traceBP();
163 => X"70_71_5F_64_6F_6E_65_3A_20_74_72_61_63_65_42_50",

-- L0624@00A4 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
164 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0629@00A5 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 27;
-- trace(from_microcode), directByte = 27;
165 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0630@00A6 70745F6C6F6F703A2069662041545F54.pt_loop:  if AT_TAB then fetch;
-- pt_loop: if AT_TAB then fetch;
166 => X"70_74_5F_6C_6F_6F_70_3A_20_69_66_20_41_54_5F_54",

-- L0631@00A7 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode);
-- directByte = ' ', outChar(from_microcode);
167 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0632@00A8 69662066616C7365207468656E20636F.  if false then continue else pt_loop;
-- if false then continue else pt_loop;
168 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0637@00A9 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 6;
-- trace(from_microcode), directByte = 6;
169 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0638@00AA 63726C665F66657463683A206F757443.crlf_fetch:  outCRLF();
-- crlf_fetch: outCRLF();
170 => X"63_72_6C_66_5F_66_65_74_63_68_3A_20_6F_75_74_43",

-- L0639@00AB 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
171 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0644@00AC 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 5;
-- trace(from_microcode), directByte = 5;
172 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0645@00AD 70635F6C6F6F703A206F757443686172.pc_loop:  outChar(from_interpreter);
-- pc_loop: outChar(from_interpreter);
173 => X"70_63_5F_6C_6F_6F_70_3A_20_6F_75_74_43_68_61_72",

-- L0646@00AE 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3;
-- trace(from_microcode), directByte = 3;
174 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0647@00AF 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
-- IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
175 => X"49_4C_5F_50_43_20_3C_3D_20_69_6E_63_2C_20_69_66",

-- L0652@00B0 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 8;
-- trace(from_microcode), directByte = 8;
176 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0653@00B1 676C3A20496E6C456E64203C3D20496E.gl:  InlEnd <= InLine_start;
-- gl: InlEnd <= InLine_start;
177 => X"67_6C_3A_20_49_6E_6C_45_6E_64_20_3C_3D_20_49_6E",

-- L0654@00B2 676C5F6C6F6F703A2069662043484152.gl_loop:  if CHARIN_READY then next else repeat;
-- gl_loop: if CHARIN_READY then next else repeat;
178 => X"67_6C_5F_6C_6F_6F_70_3A_20_69_66_20_43_48_41_52",

-- L0655@00B3 6966204B42445F425245414B20746865.  if KBD_BREAK then next else gl_char;
-- if KBD_BREAK then next else gl_char;
179 => X"69_66_20_4B_42_44_5F_42_52_45_41_4B_20_74_68_65",

-- L0656@00B4 676F7443686172203D20312C20696620.  gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
-- gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
180 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0657@00B5 676C5F636861723A2069662043484152.gl_char:  if CHARIN_PRINTABLE then gl_print;
-- gl_char: if CHARIN_PRINTABLE then gl_print;
181 => X"67_6C_5F_63_68_61_72_3A_20_69_66_20_43_48_41_52",

-- L0658@00B6 64697265637442797465203D20307830.  directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
-- directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
182 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0659@00B7 64697265637442797465203D20307830.  directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
-- directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
183 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0660@00B8 64697265637442797465203D20307831.  directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
-- directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
184 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_31",

-- L0661@00B9 64697265637442797465203D20307830.  directByte = 0x09, if CHARIN_EQU_DB then gl_tab;
-- directByte = 0x09, if CHARIN_EQU_DB then gl_tab;
185 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0663@00BA 676C5F69676E6F72653A206469726563.gl_ignore:  directByte = 0x07, outChar(from_microcode);
-- gl_ignore: directByte = 0x07, outChar(from_microcode);
186 => X"67_6C_5F_69_67_6E_6F_72_65_3A_20_64_69_72_65_63",

-- L0664@00BB 676F7443686172203D20312C20696620.  gotChar = 1, if false then continue else gl_loop;
-- gotChar = 1, if false then continue else gl_loop;
187 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0666@00BC 676C5F7072696E743A20696620494E4C.gl_print:  if INLEND_MAX then gl_ignore;
-- gl_print: if INLEND_MAX then gl_ignore;
188 => X"67_6C_5F_70_72_69_6E_74_3A_20_69_66_20_49_4E_4C",

-- L0667@00BD 6F7574436861722866726F6D5F636861.  outChar(from_charin);
-- outChar(from_charin);
189 => X"6F_75_74_43_68_61_72_28_66_72_6F_6D_5F_63_68_61",

-- L0668@00BE 7772697465436F726528496E6C456E64.  writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- writeCore(InlEnd, CHARIN), InlEnd <= inc;
190 => X"77_72_69_74_65_43_6F_72_65_28_49_6E_6C_45_6E_64",

-- L0669@00BF 676C5F7772697465303A207772697465.gl_write0:  writeCore(InlEnd, zero);
-- gl_write0: writeCore(InlEnd, zero);
191 => X"67_6C_5F_77_72_69_74_65_30_3A_20_77_72_69_74_65",

-- L0670@00C0 676F7443686172203D20312C20696620.  gotChar = 1, if false then continue else gl_loop;
-- gotChar = 1, if false then continue else gl_loop;
192 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0672@00C1 676C5F6573633A206469726563744279.gl_esc:  directByte = 0x07, outChar(from_microcode);
-- gl_esc: directByte = 0x07, outChar(from_microcode);
193 => X"67_6C_5F_65_73_63_3A_20_64_69_72_65_63_74_42_79",

-- L0673@00C2 6F757443524C4628293B202020202020.  outCRLF();
-- outCRLF();
194 => X"6F_75_74_43_52_4C_46_28_29_3B_20_20_20_20_20_20",

-- L0674@00C3 676F7443686172203D20312C20696620.  gotChar = 1, if false then continue else gl;
-- gotChar = 1, if false then continue else gl;
195 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0676@00C4 676C5F62733A20696620494E4C454E44.gl_bs:  if INLEND_MIN then gl_ignore;
-- gl_bs: if INLEND_MIN then gl_ignore;
196 => X"67_6C_5F_62_73_3A_20_69_66_20_49_4E_4C_45_4E_44",

-- L0677@00C5 64697265637442797465203D20307830.  directByte = 0x08, outChar(from_microcode);
-- directByte = 0x08, outChar(from_microcode);
197 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0678@00C6 496E6C456E64203C3D206465632C2069.  InlEnd <= dec, if false then continue else gl_write0;
-- InlEnd <= dec, if false then continue else gl_write0;
198 => X"49_6E_6C_45_6E_64_20_3C_3D_20_64_65_63_2C_20_69",

-- L0680@00C7 676C5F63723A207772697465436F7265.gl_cr:  writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- gl_cr: writeCore(InlEnd, CHARIN), InlEnd <= inc;
199 => X"67_6C_5F_63_72_3A_20_77_72_69_74_65_43_6F_72_65",

-- L0681@00C8 7772697465436F726528496E6C456E64.  writeCore(InlEnd, zero);
-- writeCore(InlEnd, zero);
200 => X"77_72_69_74_65_43_6F_72_65_28_49_6E_6C_45_6E_64",

-- L0682@00C9 64756D705F696E70757428293B202020.  dump_input();
-- dump_input();
201 => X"64_75_6D_70_5F_69_6E_70_75_74_28_29_3B_20_20_20",

-- L0683@00CA 6F757443524C4628293B202020202020.  outCRLF();
-- outCRLF();
202 => X"6F_75_74_43_52_4C_46_28_29_3B_20_20_20_20_20_20",

-- L0684@00CB 676F7443686172203D20312C20425020.  gotChar = 1, BP <= Inline_start, if false then continue else fetch;
-- gotChar = 1, BP <= Inline_start, if false then continue else fetch;
203 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_42_50_20",

-- L0686@00CC 676C5F7461623A20696620494E4C454E.gl_tab:  if INLEND_MAX then gl_ignore;
-- gl_tab: if INLEND_MAX then gl_ignore;
204 => X"67_6C_5F_74_61_62_3A_20_69_66_20_49_4E_4C_45_4E",

-- L0687@00CD 676C5F7461626C6F6F703A2069662041.gl_tabloop:  if AT_TAB then gl_write0;
-- gl_tabloop: if AT_TAB then gl_write0;
205 => X"67_6C_5F_74_61_62_6C_6F_6F_70_3A_20_69_66_20_41",

-- L0688@00CE 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode);
-- directByte = ' ', outChar(from_microcode);
206 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0689@00CF 64697265637442797465203D20272027.  directByte = ' ', writeCore(InlEnd, from_microcode), InlEnd <= inc;
-- directByte = ' ', writeCore(InlEnd, from_microcode), InlEnd <= inc;
207 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0690@00D0 69662066616C7365207468656E20636F.  if false then continue else gl_tabloop;
-- if false then continue else gl_tabloop;
208 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0695@00D1 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 40;
-- trace(from_microcode), directByte = 40;
209 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0696@00D2 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2;
-- alu <= S_fromStack, ExpStack <= pop2;
210 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L0697@00D3 616C75203C3D20535F706C75735F523B.  alu <= S_plus_R;
-- alu <= S_plus_R;
211 => X"61_6C_75_20_3C_3D_20_53_5F_70_6C_75_73_5F_52_3B",

-- L0698@00D4 54203C3D2066726F6D5F594C6F2C2069.  T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
-- T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
212 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_69",

-- L0699@00D5 4C696E6F203C3D20542C20696620595F.  Lino <= T, if Y_ZERO then SYNTAX_ERR;
-- Lino <= T, if Y_ZERO then SYNTAX_ERR;
213 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_69_66_20_59_5F",

-- L0700@00D6 7472616365414C5528293B2020202020.  traceALU();
-- traceALU();
214 => X"74_72_61_63_65_41_4C_55_28_29_3B_20_20_20_20_20",

-- L0702@00D7 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
215 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0703@00D8 54203C3D2042503B2020202020202020.  T <= BP;
-- T <= BP;
216 => X"54_20_3C_3D_20_42_50_3B_20_20_20_20_20_20_20_20",

-- L0704@00D9 696C5F66696E6442453A204245203C3D.il_findBE:  BE <= T, readCore(T);
-- il_findBE: BE <= T, readCore(T);
217 => X"69_6C_5F_66_69_6E_64_42_45_3A_20_42_45_20_3C_3D",

-- L0705@00DA 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_EQU_DB then il_fork;
-- directByte = 0x0D, if MDR_EQU_DB then il_fork;
218 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0706@00DB 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else il_findBE;
-- T <= inc, if false then continue else il_findBE;
219 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0708@00DC 696C5F666F726B3A207363616E50726F.il_fork:  scanProgram();
-- il_fork: scanProgram();
220 => X"69_6C_5F_66_6F_72_6B_3A_20_73_63_61_6E_50_72_6F",

-- L0709@00DD 696620494D504C494E455F454D505459.  if IMPLINE_EMPTY then next else changeLine;
-- if IMPLINE_EMPTY then next else changeLine;
221 => X"69_66_20_49_4D_50_4C_49_4E_45_5F_45_4D_50_54_59",

-- L0711@00DE 64656C6574654C696E653A2069662052.deleteLine:  if R_IS_ZERO then WarmStart;
-- deleteLine: if R_IS_ZERO then WarmStart;
222 => X"64_65_6C_65_74_65_4C_69_6E_65_3A_20_69_66_20_52",

-- L0712@00DF 696620595F5A45524F207468656E206E.  if Y_ZERO then next else WarmStart;
-- if Y_ZERO then next else WarmStart;
223 => X"69_66_20_59_5F_5A_45_52_4F_20_74_68_65_6E_20_6E",

-- L0713@00E0 66696E64507267456E6428293B202020.  findPrgEnd();
-- findPrgEnd();
224 => X"66_69_6E_64_50_72_67_45_6E_64_28_29_3B_20_20_20",

-- L0714@00E1 636F7079436F726528636F70795F696E.  copyCore(copy_init_del);
-- copyCore(copy_init_del);
225 => X"63_6F_70_79_43_6F_72_65_28_63_6F_70_79_5F_69_6E",

-- L0715@00E2 69662066616C7365207468656E20636F.  if false then continue else WarmStart;
-- if false then continue else WarmStart;
226 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0717@00E3 6368616E67654C696E653A2069662052.changeLine:  if R_IS_ZERO then appendLine;
-- changeLine: if R_IS_ZERO then appendLine;
227 => X"63_68_61_6E_67_65_4C_69_6E_65_3A_20_69_66_20_52",

-- L0718@00E4 696620595F5A45524F207468656E206E.  if Y_ZERO then next else insertLine;
-- if Y_ZERO then next else insertLine;
228 => X"69_66_20_59_5F_5A_45_52_4F_20_74_68_65_6E_20_6E",

-- L0720@00E5 7265706C6163654C696E653A2066696E.replaceLine:  findPrgEnd();
-- replaceLine: findPrgEnd();
229 => X"72_65_70_6C_61_63_65_4C_69_6E_65_3A_20_66_69_6E",

-- L0721@00E6 636F7079436F726528636F70795F696E.  copyCore(copy_init_del);
-- copyCore(copy_init_del);
230 => X"63_6F_70_79_43_6F_72_65_28_63_6F_70_79_5F_69_6E",

-- L0722@00E7 7363616E50726F6772616D28293B2020.  scanProgram();
-- scanProgram();
231 => X"73_63_61_6E_50_72_6F_67_72_61_6D_28_29_3B_20_20",

-- L0723@00E8 696E736572744C696E653A2066696E64.insertLine:  findPrgEnd();
-- insertLine: findPrgEnd();
232 => X"69_6E_73_65_72_74_4C_69_6E_65_3A_20_66_69_6E_64",

-- L0724@00E9 636F7079436F726528636F70795F696E.  copyCore(copy_init_ins);
-- copyCore(copy_init_ins);
233 => X"63_6F_70_79_43_6F_72_65_28_63_6F_70_79_5F_69_6E",

-- L0725@00EA 696E735F66696E6973683A20636F7079.ins_finish:  copyLine(LS);
-- ins_finish: copyLine(LS);
234 => X"69_6E_73_5F_66_69_6E_69_73_68_3A_20_63_6F_70_79",

-- L0726@00EB 69662066616C7365207468656E20636F.  if false then continue else WarmStart;
-- if false then continue else WarmStart;
235 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0728@00EC 617070656E644C696E653A2054203C3D.appendLine:  T <= dec;
-- appendLine: T <= dec;
236 => X"61_70_70_65_6E_64_4C_69_6E_65_3A_20_54_20_3C_3D",

-- L0729@00ED 636F70794C696E6528646563293B2020.  copyLine(dec);
-- copyLine(dec);
237 => X"63_6F_70_79_4C_69_6E_65_28_64_65_63_29_3B_20_20",

-- L0730@00EE 7772697465324E756C6C732873616D65.  write2Nulls(same);
-- write2Nulls(same);
238 => X"77_72_69_74_65_32_4E_75_6C_6C_73_28_73_61_6D_65",

-- L0731@00EF 69662066616C7365207468656E20636F.  if false then continue else WarmStart;
-- if false then continue else WarmStart;
239 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0733@00F0 636F70794C696E653A20616C75203C3D.copyLine:  alu <= S_fromLino;
-- copyLine: alu <= S_fromLino;
240 => X"63_6F_70_79_4C_69_6E_65_3A_20_61_6C_75_20_3C_3D",

-- L0734@00F1 7772697465436F726528542C2066726F.  writeCore(T, from_SHi);
-- writeCore(T, from_SHi);
241 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0735@00F2 54203C3D20696E633B20202020202020.  T <= inc;
-- T <= inc;
242 => X"54_20_3C_3D_20_69_6E_63_3B_20_20_20_20_20_20_20",

-- L0736@00F3 7772697465436F726528542C2066726F.  writeCore(T, from_SLo);
-- writeCore(T, from_SLo);
243 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0737@00F4 54203C3D20696E633B20202020202020.  T <= inc;
-- T <= inc;
244 => X"54_20_3C_3D_20_69_6E_63_3B_20_20_20_20_20_20_20",

-- L0738@00F5 6170705F6C6F6F703A2072656164436F.app_loop:  readCore(BP);
-- app_loop: readCore(BP);
245 => X"61_70_70_5F_6C_6F_6F_70_3A_20_72_65_61_64_43_6F",

-- L0739@00F6 7772697465436F726528542C2073616D.  writeCore(T, same);
-- writeCore(T, same);
246 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_73_61_6D",

-- L0740@00F7 4250203C3D20696E632C2054203C3D20.  BP <= inc, T <= inc;
-- BP <= inc, T <= inc;
247 => X"42_50_20_3C_3D_20_69_6E_63_2C_20_54_20_3C_3D_20",

-- L0741@00F8 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_EQU_DB then return else app_loop;
-- directByte = 0x0D, if MDR_EQU_DB then return else app_loop;
248 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0743@00F9 66696E64507267456E643A2054203C3D.findPrgEnd:  T <= Prog_start;
-- findPrgEnd: T <= Prog_start;
249 => X"66_69_6E_64_50_72_67_45_6E_64_3A_20_54_20_3C_3D",

-- L0744@00FA 6670655F6C6F6F703A2072656164436F.fpe_loop:  readCore16(same);
-- fpe_loop: readCore16(same);
250 => X"66_70_65_5F_6C_6F_6F_70_3A_20_72_65_61_64_43_6F",

-- L0745@00FB 696620525F49535F5A45524F20746865.  if R_IS_ZERO then next else fpe_next;
-- if R_IS_ZERO then next else fpe_next;
251 => X"69_66_20_52_5F_49_53_5F_5A_45_52_4F_20_74_68_65",

-- L0746@00FC 54203C3D206465633B20202020202020.  T <= dec;
-- T <= dec;
252 => X"54_20_3C_3D_20_64_65_63_3B_20_20_20_20_20_20_20",

-- L0747@00FD 507267456E64203C3D20542C20696620.  PrgEnd <= T, if true then return else continue;
-- PrgEnd <= T, if true then return else continue;
253 => X"50_72_67_45_6E_64_20_3C_3D_20_54_2C_20_69_66_20",

-- L0748@00FE 6670655F6E6578743A2066696E644E65.fpe_next:  findNextCR(same);
-- fpe_next: findNextCR(same);
254 => X"66_70_65_5F_6E_65_78_74_3A_20_66_69_6E_64_4E_65",

-- L0749@00FF 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else fpe_loop;
-- T <= inc, if false then continue else fpe_loop;
255 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0753@0100 7363616E50726F6772616D3A2054203C.scanProgram:  T <= zero;
-- scanProgram: T <= zero;
256 => X"73_63_61_6E_50_72_6F_67_72_61_6D_3A_20_54_20_3C",

-- L0754@0101 4C53203C3D20542C204C45203C3D2054.  LS <= T, LE <= T, T <= Prog_start;
-- LS <= T, LE <= T, T <= Prog_start;
257 => X"4C_53_20_3C_3D_20_54_2C_20_4C_45_20_3C_3D_20_54",

-- L0756@0102 7363616E5F6C6F6F703A204C53203C3D.scan_loop:  LS <= T, readCore16(same);
-- scan_loop: LS <= T, readCore16(same);
258 => X"73_63_61_6E_5F_6C_6F_6F_70_3A_20_4C_53_20_3C_3D",

-- L0757@0103 616C75203C3D20535F66726F6D4C696E.  alu <= S_fromLino, if R_IS_ZERO then return;
-- alu <= S_fromLino, if R_IS_ZERO then return;
259 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_4C_69_6E",

-- L0758@0104 7363616E5F636865636B3A20616C7520.scan_check:  alu <= S_minus_R;
-- scan_check: alu <= S_minus_R;
260 => X"73_63_61_6E_5F_63_68_65_63_6B_3A_20_61_6C_75_20",

-- L0759@0105 7472616365414C5528293B2020202020.  traceALU();
-- traceALU();
261 => X"74_72_61_63_65_41_4C_55_28_29_3B_20_20_20_20_20",

-- L0760@0106 696620595F5A45524F207468656E2073.  if Y_ZERO then scan_found else next;
-- if Y_ZERO then scan_found else next;
262 => X"69_66_20_59_5F_5A_45_52_4F_20_74_68_65_6E_20_73",

-- L0761@0107 696620595F5349474E207468656E2073.  if Y_SIGN then scan_found else next;
-- if Y_SIGN then scan_found else next;
263 => X"69_66_20_59_5F_53_49_47_4E_20_74_68_65_6E_20_73",

-- L0762@0108 7363616E5F6E6578743A2066696E644E.scan_next:  findNextCR(same);
-- scan_next: findNextCR(same);
264 => X"73_63_61_6E_5F_6E_65_78_74_3A_20_66_69_6E_64_4E",

-- L0763@0109 7363616E5F6C696E653A2054203C3D20.scan_line:  T <= inc, if false then continue else scan_loop;
-- scan_line: T <= inc, if false then continue else scan_loop;
265 => X"73_63_61_6E_5F_6C_69_6E_65_3A_20_54_20_3C_3D_20",

-- L0765@010A 7363616E5F666F756E643A2066696E64.scan_found:  findNextCR(same);
-- scan_found: findNextCR(same);
266 => X"73_63_61_6E_5F_66_6F_75_6E_64_3A_20_66_69_6E_64",

-- L0766@010B 4C45203C3D20543B2020202020202020.  LE <= T;
-- LE <= T;
267 => X"4C_45_20_3C_3D_20_54_3B_20_20_20_20_20_20_20_20",

-- L0768@010C 69662074727565207468656E20726574.  if true then return else continue;
-- if true then return else continue;
268 => X"69_66_20_74_72_75_65_20_74_68_65_6E_20_72_65_74",

-- L0771@010D 636F7079436F72653A2054203C3D2066.copyCore:  T <= from_S, if Y_ZERO then return;
-- copyCore: T <= from_S, if Y_ZERO then return;
269 => X"63_6F_70_79_43_6F_72_65_3A_20_54_20_3C_3D_20_66",

-- L0772@010E 72656164436F72652854293B20202020.  readCore(T);
-- readCore(T);
270 => X"72_65_61_64_43_6F_72_65_28_54_29_3B_20_20_20_20",

-- L0773@010F 54203C3D2066726F6D5F523B20202020.  T <= from_R;
-- T <= from_R;
271 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_3B_20_20_20_20",

-- L0774@0110 7772697465436F726528542C2073616D.  writeCore(T, same);
-- writeCore(T, same);
272 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_73_61_6D",

-- L0775@0111 7472616365414C5528293B2020202020.  traceALU();
-- traceALU();
273 => X"74_72_61_63_65_41_4C_55_28_29_3B_20_20_20_20_20",

-- L0776@0112 616C75203C3D20636F70795F6E657874.  alu <= copy_next, if false then continue else copyCore;
-- alu <= copy_next, if false then continue else copyCore;
274 => X"61_6C_75_20_3C_3D_20_63_6F_70_79_5F_6E_65_78_74",

-- L0781@0113 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 43;
-- trace(from_microcode), directByte = 43;
275 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0782@0114 69662066616C7365207468656E20636F.  if false then continue else ColdStart;
-- if false then continue else ColdStart;
276 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0787@0115 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 42;
-- trace(from_microcode), directByte = 42;
277 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0788@0116 54203C3D20494C5F50433B2020202020.  T <= IL_PC;
-- T <= IL_PC;
278 => X"54_20_3C_3D_20_49_4C_5F_50_43_3B_20_20_20_20_20",

-- L0789@0117 585168657265203C3D20542C20726561.  XQhere <= T, readCore16(Prog_start);
-- XQhere <= T, readCore16(Prog_start);
279 => X"58_51_68_65_72_65_20_3C_3D_20_54_2C_20_72_65_61",

-- L0790@0118 696620525F49535F5A45524F20746865.  if R_IS_ZERO then NOPROG_ERR;
-- if R_IS_ZERO then NOPROG_ERR;
280 => X"69_66_20_52_5F_49_53_5F_5A_45_52_4F_20_74_68_65",

-- L0791@0119 4250203C3D20542C2054203C3D206672.  BP <= T, T <= from_R;
-- BP <= T, T <= from_R;
281 => X"42_50_20_3C_3D_20_54_2C_20_54_20_3C_3D_20_66_72",

-- L0792@011A 4C696E6F203C3D20542C206966206661.  Lino <= T, if false then continue else fetch;
-- Lino <= T, if false then continue else fetch;
282 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_69_66_20_66_61",

-- L0797@011B 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 44;
-- trace(from_microcode), directByte = 44;
283 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0798@011C 73746F705F72756E3A20646972656374.stop_run:  directByte = 'S', outChar(from_microcode);
-- stop_run: directByte = 'S', outChar(from_microcode);
284 => X"73_74_6F_70_5F_72_75_6E_3A_20_64_69_72_65_63_74",

-- L0799@011D 64697265637442797465203D20275427.  directByte = 'T', outChar(from_microcode);
-- directByte = 'T', outChar(from_microcode);
285 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_54_27",

-- L0800@011E 64697265637442797465203D20274F27.  directByte = 'O', outChar(from_microcode);
-- directByte = 'O', outChar(from_microcode);
286 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_4F_27",

-- L0801@011F 64697265637442797465203D20275027.  directByte = 'P', outChar(from_microcode);
-- directByte = 'P', outChar(from_microcode);
287 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_50_27",

-- L0802@0120 69662066616C7365207468656E20636F.  if false then continue else print_lino;
-- if false then continue else print_lino;
288 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0807@0121 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 49;
-- trace(from_microcode), directByte = 49;
289 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0808@0122 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2;
-- alu <= R_fromStack, ExpStack <= pop2;
290 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0809@0123 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2;
-- T <= ExpStack, ExpStack <= pop2;
291 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L0810@0124 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2;
-- alu <= S_fromStack, ExpStack <= pop2;
292 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L0811@0125 7472616365414C5528293B2020202020.  traceALU();
-- traceALU();
293 => X"74_72_61_63_65_41_4C_55_28_29_3B_20_20_20_20_20",

-- L0813@0126 64697265637442797465203D2032302C.  directByte = 20, if S_EQU_DB_MOD32 then u_peek8;
-- directByte = 20, if S_EQU_DB_MOD32 then u_peek8;
294 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_30_2C",

-- L0814@0127 64697265637442797465203D2032342C.  directByte = 24, if S_EQU_DB_MOD32 then u_poke8;
-- directByte = 24, if S_EQU_DB_MOD32 then u_poke8;
295 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_34_2C",

-- L0815@0128 64697265637442797465203D2032312C.  directByte = 21, if S_EQU_DB_MOD32 then u_peek16;
-- directByte = 21, if S_EQU_DB_MOD32 then u_peek16;
296 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_31_2C",

-- L0816@0129 64697265637442797465203D2032352C.  directByte = 25, if S_EQU_DB_MOD32 then u_poke16;
-- directByte = 25, if S_EQU_DB_MOD32 then u_poke16;
297 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_35_2C",

-- L0818@012A 54203C3D2062696E6F702C2069662066.  T <= binop, if false then continue else u_done;
-- T <= binop, if false then continue else u_done;
298 => X"54_20_3C_3D_20_62_69_6E_6F_70_2C_20_69_66_20_66",

-- L0820@012B 755F7065656B383A2072656164436F72.u_peek8:  readCore(T);
-- u_peek8: readCore(T);
299 => X"75_5F_70_65_65_6B_38_3A_20_72_65_61_64_43_6F_72",

-- L0821@012C 755F696E3A2054203C3D204D44523B20.u_in:  T <= MDR;
-- u_in: T <= MDR;
300 => X"75_5F_69_6E_3A_20_54_20_3C_3D_20_4D_44_52_3B_20",

-- L0822@012D 755F646F6E653A20457870537461636B.u_done:  ExpStack <= push_TWord, if false then continue else fetch;
-- u_done: ExpStack <= push_TWord, if false then continue else fetch;
301 => X"75_5F_64_6F_6E_65_3A_20_45_78_70_53_74_61_63_6B",

-- L0824@012E 755F7065656B31363A2072656164436F.u_peek16:  readCore16(same);
-- u_peek16: readCore16(same);
302 => X"75_5F_70_65_65_6B_31_36_3A_20_72_65_61_64_43_6F",

-- L0825@012F 54203C3D2066726F6D5F522C20696620.  T <= from_R, if false then continue else u_done;
-- T <= from_R, if false then continue else u_done;
303 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_2C_20_69_66_20",

-- L0827@0130 755F706F6B65383A2070726570577269.u_poke8:  prepWrite();
-- u_poke8: prepWrite();
304 => X"75_5F_70_6F_6B_65_38_3A_20_70_72_65_70_57_72_69",

-- L0828@0131 7772697465436F726528542C2066726F.  writeCore(T, from_SLo);
-- writeCore(T, from_SLo);
305 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0829@0132 69662066616C7365207468656E20636F.  if false then continue else u_peek8;
-- if false then continue else u_peek8;
306 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0831@0133 755F706F6B6531363A20707265705772.u_poke16:  prepWrite();
-- u_poke16: prepWrite();
307 => X"75_5F_70_6F_6B_65_31_36_3A_20_70_72_65_70_57_72",

-- L0832@0134 7772697465436F726528542C2066726F.  writeCore(T, from_SHi), T <= inc;
-- writeCore(T, from_SHi), T <= inc;
308 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0833@0135 7772697465436F726528542C2066726F.  writeCore(T, from_SLo);
-- writeCore(T, from_SLo);
309 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0834@0136 54203C3D206465632C2069662066616C.  T <= dec, if false then continue else u_peek16;
-- T <= dec, if false then continue else u_peek16;
310 => X"54_20_3C_3D_20_64_65_63_2C_20_69_66_20_66_61_6C",

-- L0836@0137 7072657057726974653A2054203C3D20.prepWrite:  T <= save;
-- prepWrite: T <= save;
311 => X"70_72_65_70_57_72_69_74_65_3A_20_54_20_3C_3D_20",

-- L0837@0138 54203C3D2066726F6D5F523B20202020.  T <= from_R;
-- T <= from_R;
312 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_3B_20_20_20_20",

-- L0838@0139 616C75203C3D20535F66726F6D542C20.  alu <= S_fromT, T <= recall, if true then return else continue;
-- alu <= S_fromT, T <= recall, if true then return else continue;
313 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_54_2C_20",

-- L0843@013A 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 19;
-- trace(from_microcode), directByte = 19;
314 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0844@013B 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then RSTACK_ERR;
-- if STACK_IS_EMPTY then RSTACK_ERR;
315 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0845@013C 494C5F5043203C3D2052657453746163.  IL_PC <= RetStack, RetStack <= pop, if false then continue else fetch;
-- IL_PC <= RetStack, RetStack <= pop, if false then continue else fetch;
316 => X"49_4C_5F_50_43_20_3C_3D_20_52_65_74_53_74_61_63",

-- L0850@013D 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 20;
-- trace(from_microcode), directByte = 20;
317 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0851@013E 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3;
-- trace(from_microcode), directByte = 3;
318 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0852@013F 696620535441434B5F49535F46554C4C.  if STACK_IS_FULL then RSTACK_ERR;
-- if STACK_IS_FULL then RSTACK_ERR;
319 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_46_55_4C_4C",

-- L0853@0140 526574537461636B203C3D2070757368.  RetStack <= push_IL_PC_PLUS_1, if false then continue else jump;
-- RetStack <= push_IL_PC_PLUS_1, if false then continue else jump;
320 => X"52_65_74_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0858@0141 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 21;
-- trace(from_microcode), directByte = 21;
321 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0859@0142 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3;
-- trace(from_microcode), directByte = 3;
322 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0860@0143 6A756D703A20494C5F5043203C3D2064.jump:  IL_PC <= direct11, if false then continue else fetch;
-- jump: IL_PC <= direct11, if false then continue else fetch;
323 => X"6A_75_6D_70_3A_20_49_4C_5F_50_43_20_3C_3D_20_64",

-- L0865@0144 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 7;
-- trace(from_microcode), directByte = 7;
324 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0866@0145 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off6;
-- IL_PC <= pc_plus_off6;
325 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L0867@0146 62725F657869743A2074726163652866.br_exit:  trace(from_microcode), directByte = 30;
-- br_exit: trace(from_microcode), directByte = 30;
326 => X"62_72_5F_65_78_69_74_3A_20_74_72_61_63_65_28_66",

-- L0868@0147 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
327 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0873@0148 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 7;
-- trace(from_microcode), directByte = 7;
328 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0874@0149 69662066616C7365207468656E20636F.  if false then continue else badop;
-- if false then continue else badop;
329 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0879@014A 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 17;
-- trace(from_microcode), directByte = 17;
330 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0880@014B 54203C3D20494C5F50432C204250203C.  T <= IL_PC, BP <= save, skipSpaces();
-- T <= IL_PC, BP <= save, skipSpaces();
331 => X"54_20_3C_3D_20_49_4C_5F_50_43_2C_20_42_50_20_3C",

-- L0881@014C 62635F6C6F6F703A2074726163652866.bc_loop:  trace(from_microcode), directByte = 3;
-- bc_loop: trace(from_microcode), directByte = 3;
332 => X"62_63_5F_6C_6F_6F_70_3A_20_74_72_61_63_65_28_66",

-- L0882@014D 72656164436F7265284250293B202020.  readCore(BP);
-- readCore(BP);
333 => X"72_65_61_64_43_6F_72_65_28_42_50_29_3B_20_20_20",

-- L0883@014E 6966204D44525F4D4154434845535F49.  if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
-- if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
334 => X"69_66_20_4D_44_52_5F_4D_41_54_43_48_45_53_5F_49",

-- L0884@014F 696620494C434F4445425954455F4249.  if ILCODEBYTE_BIT7 then bc_match;
-- if ILCODEBYTE_BIT7 then bc_match;
335 => X"69_66_20_49_4C_43_4F_44_45_42_59_54_45_5F_42_49",

-- L0885@0150 4250203C3D20696E632C20494C5F5043.  BP <= inc, IL_PC <= inc, if false then continue else bc_loop;
-- BP <= inc, IL_PC <= inc, if false then continue else bc_loop;
336 => X"42_50_20_3C_3D_20_69_6E_63_2C_20_49_4C_5F_50_43",

-- L0886@0151 62635F6D617463683A204250203C3D20.bc_match:  BP <= inc, IL_PC <= inc;
-- bc_match: BP <= inc, IL_PC <= inc;
337 => X"62_63_5F_6D_61_74_63_68_3A_20_42_50_20_3C_3D_20",

-- L0887@0152 7472616365425028293B202020202020.  traceBP();
-- traceBP();
338 => X"74_72_61_63_65_42_50_28_29_3B_20_20_20_20_20_20",

-- L0888@0153 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
339 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0889@0154 62635F657869743A204250203C3D2072.bc_exit:  BP <= recall, IL_PC <= T;
-- bc_exit: BP <= recall, IL_PC <= T;
340 => X"62_63_5F_65_78_69_74_3A_20_42_50_20_3C_3D_20_72",

-- L0890@0155 7472616365425028293B202020202020.  traceBP();
-- traceBP();
341 => X"74_72_61_63_65_42_50_28_29_3B_20_20_20_20_20_20",

-- L0891@0156 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
342 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L0896@0157 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 16;
-- trace(from_microcode), directByte = 16;
343 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0897@0158 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
344 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0898@0159 4D4452203C3D20546F55707065722C20.  MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
-- MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
345 => X"4D_44_52_20_3C_3D_20_54_6F_55_70_70_65_72_2C_20",

-- L0899@015A 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
346 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L0900@015B 62765F657865633A2054203C3D204D44.bv_exec:  T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
-- bv_exec: T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
347 => X"62_76_5F_65_78_65_63_3A_20_54_20_3C_3D_20_4D_44",

-- L0901@015C 457870537461636B203C3D2070757368.  ExpStack <= push_TByte, BP <= inc, if false then continue else fetch;
-- ExpStack <= push_TByte, BP <= inc, if false then continue else fetch;
348 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0906@015D 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 14;
-- trace(from_microcode), directByte = 14;
349 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0907@015E 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
350 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0908@015F 616C75203C3D207265736574302C2069.  alu <= reset0, if MDR_IS_NUM then bn_loop;
-- alu <= reset0, if MDR_IS_NUM then bn_loop;
351 => X"61_6C_75_20_3C_3D_20_72_65_73_65_74_30_2C_20_69",

-- L0909@0160 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
352 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L0910@0161 626E5F657869743A2074726163655928.bn_exit:  traceY();
-- bn_exit: traceY();
353 => X"62_6E_5F_65_78_69_74_3A_20_74_72_61_63_65_59_28",

-- L0911@0162 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 30;
-- trace(from_microcode), directByte = 30;
354 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0912@0163 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
355 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0913@0164 626E5F6C6F6F703A20616C75203C3D20.bn_loop:  alu <= Yx10_plus_MDR, BP <= inc;
-- bn_loop: alu <= Yx10_plus_MDR, BP <= inc;
356 => X"62_6E_5F_6C_6F_6F_70_3A_20_61_6C_75_20_3C_3D_20",

-- L0914@0165 696620414C555F4F564552464C4F5720.  if ALU_OVERFLOW then OVERFLOW_ERR;
-- if ALU_OVERFLOW then OVERFLOW_ERR;
357 => X"69_66_20_41_4C_55_5F_4F_56_45_52_46_4C_4F_57_20",

-- L0915@0166 72656164436F7265284250293B202020.  readCore(BP);
-- readCore(BP);
358 => X"72_65_61_64_43_6F_72_65_28_42_50_29_3B_20_20_20",

-- L0916@0167 6966204D44525F49535F4E554D207468.  if MDR_IS_NUM then bn_loop;
-- if MDR_IS_NUM then bn_loop;
359 => X"69_66_20_4D_44_52_5F_49_53_5F_4E_55_4D_20_74_68",

-- L0917@0168 54203C3D2066726F6D5F594C6F2C2069.  T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
-- T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
360 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_69",

-- L0918@0169 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, if false then continue else bn_exit;
-- ExpStack <= push_TWord, if false then continue else bn_exit;
361 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0923@016A 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 13;
-- trace(from_microcode), directByte = 13;
362 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0924@016B 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
363 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0925@016C 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_EQU_DB then fetch;
-- directByte = 0x0D, if MDR_EQU_DB then fetch;
364 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0926@016D 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
365 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L0928@016E 425245414B3A20676F7443686172203D.BREAK:  gotChar = 1, trace(from_microcode), directByte = 55;
-- BREAK: gotChar = 1, trace(from_microcode), directByte = 55;
366 => X"42_52_45_41_4B_3A_20_67_6F_74_43_68_61_72_20_3D",

-- L0929@016F 6F75744265657028293B202020202020.  outBeep();
-- outBeep();
367 => X"6F_75_74_42_65_65_70_28_29_3B_20_20_20_20_20_20",

-- L0930@0170 64697265637442797465203D20274227.  directByte = 'B', outChar(from_microcode);
-- directByte = 'B', outChar(from_microcode);
368 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_42_27",

-- L0931@0171 64697265637442797465203D20275227.  directByte = 'R', outChar(from_microcode);
-- directByte = 'R', outChar(from_microcode);
369 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_52_27",

-- L0932@0172 64697265637442797465203D20274B27.  directByte = 'K', outChar(from_microcode);
-- directByte = 'K', outChar(from_microcode);
370 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_4B_27",

-- L0933@0173 69662066616C7365207468656E20636F.  if false then continue else traceDetails;
-- if false then continue else traceDetails;
371 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0935@0174 4E4F50524F475F4552523A2074726163.NOPROG_ERR:  trace(from_microcode), directByte = 50;
-- NOPROG_ERR: trace(from_microcode), directByte = 50;
372 => X"4E_4F_50_52_4F_47_5F_45_52_52_3A_20_74_72_61_63",

-- L0936@0175 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
373 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0937@0176 4449564259305F4552523A2074726163.DIVBY0_ERR:  trace(from_microcode), directByte = 57;
-- DIVBY0_ERR: trace(from_microcode), directByte = 57;
374 => X"44_49_56_42_59_30_5F_45_52_52_3A_20_74_72_61_63",

-- L0938@0177 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
375 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0939@0178 4F564552464C4F575F4552523A207472.OVERFLOW_ERR:  trace(from_microcode), directByte = 58;
-- OVERFLOW_ERR: trace(from_microcode), directByte = 58;
376 => X"4F_56_45_52_46_4C_4F_57_5F_45_52_52_3A_20_74_72",

-- L0940@0179 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
377 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0941@017A 53594E5441585F4552523A2074726163.SYNTAX_ERR:  trace(from_microcode), directByte = 61;
-- SYNTAX_ERR: trace(from_microcode), directByte = 61;
378 => X"53_59_4E_54_41_58_5F_45_52_52_3A_20_74_72_61_63",

-- L0942@017B 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
379 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0943@017C 494E5445524E414C5F4552523A207472.INTERNAL_ERR:  trace(from_microcode), directByte = 62;
-- INTERNAL_ERR: trace(from_microcode), directByte = 62;
380 => X"49_4E_54_45_52_4E_41_4C_5F_45_52_52_3A_20_74_72",

-- L0944@017D 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
381 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0945@017E 45535441434B5F4552523A2074726163.ESTACK_ERR:  trace(from_microcode), directByte = 60;
-- ESTACK_ERR: trace(from_microcode), directByte = 60;
382 => X"45_53_54_41_43_4B_5F_45_52_52_3A_20_74_72_61_63",

-- L0946@017F 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
383 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0947@0180 52535441434B5F4552523A2074726163.RSTACK_ERR:  trace(from_microcode), directByte = 59;
-- RSTACK_ERR: trace(from_microcode), directByte = 59;
384 => X"52_53_54_41_43_4B_5F_45_52_52_3A_20_74_72_61_63",

-- L0948@0181 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
385 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0949@0182 42535441434B5F4552523A2074726163.BSTACK_ERR:  trace(from_microcode), directByte = 54;
-- BSTACK_ERR: trace(from_microcode), directByte = 54;
386 => X"42_53_54_41_43_4B_5F_45_52_52_3A_20_74_72_61_63",

-- L0950@0183 74726163654572726F723A206F757442.traceError:  outBeep();
-- traceError: outBeep();
387 => X"74_72_61_63_65_45_72_72_6F_72_3A_20_6F_75_74_42",

-- L0951@0184 64697265637442797465203D20274527.  directByte = 'E', outChar(from_microcode);
-- directByte = 'E', outChar(from_microcode);
388 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_45_27",

-- L0952@0185 64697265637442797465203D20275227.  directByte = 'R', outChar(from_microcode);
-- directByte = 'R', outChar(from_microcode);
389 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_52_27",

-- L0953@0186 64697265637442797465203D20275227.  directByte = 'R', outChar(from_microcode);
-- directByte = 'R', outChar(from_microcode);
390 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_52_27",

-- L0954@0187 747261636544657461696C733A206469.traceDetails:  directByte = '#', outChar(from_microcode), T <= IL_PC;
-- traceDetails: directByte = '#', outChar(from_microcode), T <= IL_PC;
391 => X"74_72_61_63_65_44_65_74_61_69_6C_73_3A_20_64_69",

-- L0955@0188 54203C3D206465633B20202020202020.  T <= dec;
-- T <= dec;
392 => X"54_20_3C_3D_20_64_65_63_3B_20_20_20_20_20_20_20",

-- L0956@0189 7072696E744465635228525F66726F6D.  printDecR(R_fromT);
-- printDecR(R_fromT);
393 => X"70_72_69_6E_74_44_65_63_52_28_52_5F_66_72_6F_6D",

-- L0957@018A 69662049535F52554E4D4F4445207468.  if IS_RUNMODE then next else err_done;
-- if IS_RUNMODE then next else err_done;
394 => X"69_66_20_49_53_5F_52_55_4E_4D_4F_44_45_20_74_68",

-- L0958@018B 7072696E745F6C696E6F3A2064697265.print_lino:  directByte = ' ', outChar(from_microcode);
-- print_lino: directByte = ' ', outChar(from_microcode);
395 => X"70_72_69_6E_74_5F_6C_69_6E_6F_3A_20_64_69_72_65",

-- L0959@018C 64697265637442797465203D20274127.  directByte = 'A', outChar(from_microcode);
-- directByte = 'A', outChar(from_microcode);
396 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_41_27",

-- L0960@018D 64697265637442797465203D20275427.  directByte = 'T', outChar(from_microcode), alu <= S_fromLino;
-- directByte = 'T', outChar(from_microcode), alu <= S_fromLino;
397 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_54_27",

-- L0961@018E 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode), T <= from_S;
-- directByte = ' ', outChar(from_microcode), T <= from_S;
398 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0962@018F 7072696E744465635228525F66726F6D.  printDecR(R_fromT);
-- printDecR(R_fromT);
399 => X"70_72_69_6E_74_44_65_63_52_28_52_5F_66_72_6F_6D",

-- L0963@0190 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode), alu <= Y_fromTicks;
-- directByte = ' ', outChar(from_microcode), alu <= Y_fromTicks;
400 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0964@0191 7072696E745928293B20202020202020.  printY();
-- printY();
401 => X"70_72_69_6E_74_59_28_29_3B_20_20_20_20_20_20_20",

-- L0967@0192 6572725F646F6E653A206F757443524C.err_done:  outCRLF();
-- err_done: outCRLF();
402 => X"65_72_72_5F_64_6F_6E_65_3A_20_6F_75_74_43_52_4C",

-- L0968@0193 74726163652863726C66293B20202020.  trace(crlf);
-- trace(crlf);
403 => X"74_72_61_63_65_28_63_72_6C_66_29_3B_20_20_20_20",

-- L0969@0194 69662066616C7365207468656E20636F.  if false then continue else WarmStart;
-- if false then continue else WarmStart;
404 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0971@0195 66696E644E65787443523A2072656164.findNextCR:  readCore(T);
-- findNextCR: readCore(T);
405 => X"66_69_6E_64_4E_65_78_74_43_52_3A_20_72_65_61_64",

-- L0972@0196 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_EQU_DB then return;
-- directByte = 0x0D, if MDR_EQU_DB then return;
406 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0973@0197 64697265637442797465203D20307830.  directByte = 0x00, if MDR_EQU_DB then INTERNAL_ERR;
-- directByte = 0x00, if MDR_EQU_DB then INTERNAL_ERR;
407 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0974@0198 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else findNextCR;
-- T <= inc, if false then continue else findNextCR;
408 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0976@0199 72656164436F726531363A20616C7520.readCore16:  alu <= reset1, readCore(T);
-- readCore16: alu <= reset1, readCore(T);
409 => X"72_65_61_64_43_6F_72_65_31_36_3A_20_61_6C_75_20",

-- L0977@019A 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc;
-- alu <= Rx256_plus_MDR, T <= inc;
410 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L0978@019B 72656164436F72652854293B20202020.  readCore(T);
-- readCore(T);
411 => X"72_65_61_64_43_6F_72_65_28_54_29_3B_20_20_20_20",

-- L0979@019C 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc, if true then return else continue;
-- alu <= Rx256_plus_MDR, T <= inc, if true then return else continue;
412 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L0981@019D 7772697465324E756C6C733A20777269.write2Nulls:  writeCore(T, zero), T <= inc;
-- write2Nulls: writeCore(T, zero), T <= inc;
413 => X"77_72_69_74_65_32_4E_75_6C_6C_73_3A_20_77_72_69",

-- L0982@019E 7772697465436F726528542C207A6572.  writeCore(T, zero);
-- writeCore(T, zero);
414 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_7A_65_72",

-- L0983@019F 69662074727565207468656E20726574.  if true then return else continue;
-- if true then return else continue;
415 => X"69_66_20_74_72_75_65_20_74_68_65_6E_20_72_65_74",

-- L0986@01A0 70756C6C52533A20696620535441434B.pullRS:  if STACK_IS_EMPTY then ESTACK_ERR;
-- pullRS: if STACK_IS_EMPTY then ESTACK_ERR;
416 => X"70_75_6C_6C_52_53_3A_20_69_66_20_53_54_41_43_4B",

-- L0987@01A1 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2;
-- alu <= R_fromStack, ExpStack <= pop2;
417 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0988@01A2 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
418 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0989@01A3 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2, if true then return else continue;
-- alu <= S_fromStack, ExpStack <= pop2, if true then return else continue;
419 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L0992@01A4 7072696E744465633A20616C75203C3D.printDec:  alu <= R_fromStack, ExpStack <= pop2;
-- printDec: alu <= R_fromStack, ExpStack <= pop2;
420 => X"70_72_69_6E_74_44_65_63_3A_20_61_6C_75_20_3C_3D",

-- L0994@01A5 7072696E74446563523A20616C75203C.printDecR:  alu <= bcd_start;
-- printDecR: alu <= bcd_start;
421 => X"70_72_69_6E_74_44_65_63_52_3A_20_61_6C_75_20_3C",

-- L0995@01A6 616C75203C3D206263645F6E6578742C.  alu <= bcd_next, if ALU_READY then next else repeat;
-- alu <= bcd_next, if ALU_READY then next else repeat;
422 => X"61_6C_75_20_3C_3D_20_62_63_64_5F_6E_65_78_74_2C",

-- L0996@01A7 696620414C555F5349474E207468656E.  if ALU_SIGN then next else printY;
-- if ALU_SIGN then next else printY;
423 => X"69_66_20_41_4C_55_5F_53_49_47_4E_20_74_68_65_6E",

-- L0997@01A8 64697265637442797465203D20272D27.  directByte = '-', outChar(from_microcode);
-- directByte = '-', outChar(from_microcode);
424 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_2D_27",

-- L0998@01A9 7072696E74593A206F75744E5A436861.printY:  outNZChar(from_YtoAlphaZ);
-- printY: outNZChar(from_YtoAlphaZ);
425 => X"70_72_69_6E_74_59_3A_20_6F_75_74_4E_5A_43_68_61",

-- L0999@01AA 6F75744E5A436861722866726F6D5F59.  outNZChar(from_YtoAlphaZ);
-- outNZChar(from_YtoAlphaZ);
426 => X"6F_75_74_4E_5A_43_68_61_72_28_66_72_6F_6D_5F_59",

-- L1000@01AB 6F75744E5A436861722866726F6D5F59.  outNZChar(from_YtoAlphaZ);
-- outNZChar(from_YtoAlphaZ);
427 => X"6F_75_74_4E_5A_43_68_61_72_28_66_72_6F_6D_5F_59",

-- L1001@01AC 6F75744E5A436861722866726F6D5F59.  outNZChar(from_YtoAlphaZ);
-- outNZChar(from_YtoAlphaZ);
428 => X"6F_75_74_4E_5A_43_68_61_72_28_66_72_6F_6D_5F_59",

-- L1002@01AD 6F75744E5A436861722866726F6D5F59.  outNZChar(from_YtoAlphaZ);
-- outNZChar(from_YtoAlphaZ);
429 => X"6F_75_74_4E_5A_43_68_61_72_28_66_72_6F_6D_5F_59",

-- L1003@01AE 6F75744E5A436861722866726F6D5F59.  outNZChar(from_YtoAlphaZ);
-- outNZChar(from_YtoAlphaZ);
430 => X"6F_75_74_4E_5A_43_68_61_72_28_66_72_6F_6D_5F_59",

-- L1004@01AF 6F75744E5A436861722866726F6D5F59.  outNZChar(from_YtoAlphaZ);
-- outNZChar(from_YtoAlphaZ);
431 => X"6F_75_74_4E_5A_43_68_61_72_28_66_72_6F_6D_5F_59",

-- L1005@01B0 434841524F5554203C3D2066726F6D5F.  CHAROUT <= from_YtoAlpha, if false then continue else outChar;
-- CHAROUT <= from_YtoAlpha, if false then continue else outChar;
432 => X"43_48_41_52_4F_55_54_20_3C_3D_20_66_72_6F_6D_5F",

-- L1007@01B1 6F75744E5A436861723A206F75744368.outNZChar:  outChar(from_YtoAlphaZ);
-- outNZChar: outChar(from_YtoAlphaZ);
433 => X"6F_75_74_4E_5A_43_68_61_72_3A_20_6F_75_74_43_68",

-- L1008@01B2 6F75745F736B69703A20616C75203C3D.out_skip:  alu <= Yx16, if true then return else continue;
-- out_skip: alu <= Yx16, if true then return else continue;
434 => X"6F_75_74_5F_73_6B_69_70_3A_20_61_6C_75_20_3C_3D",

-- L1010@01B3 736B69705370616365733A2072656164.skipSpaces:  readCore(BP);
-- skipSpaces: readCore(BP);
435 => X"73_6B_69_70_53_70_61_63_65_73_3A_20_72_65_61_64",

-- L1011@01B4 64697265637442797465203D20272027.  directByte = ' ', if MDR_EQU_DB then skipSp;
-- directByte = ' ', if MDR_EQU_DB then skipSp;
436 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L1012@01B5 64697265637442797465203D20307830.  directByte = 0x09, if MDR_EQU_DB then skipSp else return;
-- directByte = 0x09, if MDR_EQU_DB then skipSp else return;
437 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1013@01B6 736B697053703A204250203C3D20696E.skipSp:  BP <= inc, if false then continue else skipSpaces;
-- skipSp: BP <= inc, if false then continue else skipSpaces;
438 => X"73_6B_69_70_53_70_3A_20_42_50_20_3C_3D_20_69_6E",

-- L1015@01B7 6F7574426565703A206F757443524C46.outBeep:  outCRLF();
-- outBeep: outCRLF();
439 => X"6F_75_74_42_65_65_70_3A_20_6F_75_74_43_52_4C_46",

-- L1016@01B8 74726163652863726C66293B20202020.  trace(crlf);
-- trace(crlf);
440 => X"74_72_61_63_65_28_63_72_6C_66_29_3B_20_20_20_20",

-- L1017@01B9 64697265637442797465203D20307830.  directByte = 0x07, CHAROUT <= from_microcode, if false then continue else outChar;
-- directByte = 0x07, CHAROUT <= from_microcode, if false then continue else outChar;
441 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1019@01BA 6F757443524C463A2064697265637442.outCRLF:  directByte = 0x0D, outChar(from_microcode);
-- outCRLF: directByte = 0x0D, outChar(from_microcode);
442 => X"6F_75_74_43_52_4C_46_3A_20_64_69_72_65_63_74_42",

-- L1020@01BB 64697265637442797465203D20307830.  directByte = 0x0A, CHAROUT <= from_microcode;
-- directByte = 0x0A, CHAROUT <= from_microcode;
443 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1021@01BC 6F7574436861723A2069662043484152.outChar:  if CHAROUT_READY then next else repeat;
-- outChar: if CHAROUT_READY then next else repeat;
444 => X"6F_75_74_43_68_61_72_3A_20_69_66_20_43_48_41_52",

-- L1022@01BD 696620434841524F55545F5245414459.  if CHAROUT_READY then return else repeat;
-- if CHAROUT_READY then return else repeat;
445 => X"69_66_20_43_48_41_52_4F_55_54_5F_52_45_41_44_59",

-- L1024@01BE 7772697465436F72653A206E5752203D.writeCore:  nWR = 0, if nBUSACK then repeat else return;
-- writeCore: nWR = 0, if nBUSACK then repeat else return;
446 => X"77_72_69_74_65_43_6F_72_65_3A_20_6E_57_52_20_3D",

-- L1026@01BF 72656164436F72653A206E5244203D20.readCore:  nRD = 0, if nBUSACK then repeat else next;
-- readCore: nRD = 0, if nBUSACK then repeat else next;
447 => X"72_65_61_64_43_6F_72_65_3A_20_6E_52_44_20_3D_20",

-- L1027@01C0 6E5244203D20302C204D4452203C3D20.  nRD = 0, MDR <= from_Bus, if true then return else continue;
-- nRD = 0, MDR <= from_Bus, if true then return else continue;
448 => X"6E_52_44_20_3D_20_30_2C_20_4D_44_52_20_3C_3D_20",

-- L1031@01C1 64756D705F696E7075743A20496E6C45.dump_input:  InlEnd <= InLine_start, trace(crlf);
-- dump_input: InlEnd <= InLine_start, trace(crlf);
449 => X"64_75_6D_70_5F_69_6E_70_75_74_3A_20_49_6E_6C_45",

-- L1032@01C2 64756D705F696E6C703A207265616443.dump_inlp:  readCore(InlEnd);
-- dump_inlp: readCore(InlEnd);
450 => X"64_75_6D_70_5F_69_6E_6C_70_3A_20_72_65_61_64_43",

-- L1033@01C3 64697265637442797465203D20392C20.  directByte = 9, trace(from_microcode);
-- directByte = 9, trace(from_microcode);
451 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_39_2C_20",

-- L1034@01C4 64697265637442797465203D20307830.  directByte = 0x00, if MDR_EQU_DB then dump_inex;
-- directByte = 0x00, if MDR_EQU_DB then dump_inex;
452 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1035@01C5 496E6C456E64203C3D20696E632C2069.  InlEnd <= inc, if false then continue else dump_inlp;
-- InlEnd <= inc, if false then continue else dump_inlp;
453 => X"49_6E_6C_45_6E_64_20_3C_3D_20_69_6E_63_2C_20_69",

-- L1036@01C6 64756D705F696E65783A207472616365.dump_inex:  trace(crlf);
-- dump_inex: trace(crlf);
454 => X"64_75_6D_70_5F_69_6E_65_78_3A_20_74_72_61_63_65",

-- L1037@01C7 69662074727565207468656E20726574.  if true then return else continue;
-- if true then return else continue;
455 => X"69_66_20_74_72_75_65_20_74_68_65_6E_20_72_65_74",

-- L1039@01C8 747261636542503A2045787053746163.traceBP:  ExpStack <= push_TWord, T <= BP;
-- traceBP: ExpStack <= push_TWord, T <= BP;
456 => X"74_72_61_63_65_42_50_3A_20_45_78_70_53_74_61_63",

-- L1040@01C9 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 33;
-- trace(from_microcode), directByte = 33;
457 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L1041@01CA 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2, if true then return else continue;
-- T <= ExpStack, ExpStack <= pop2, if true then return else continue;
458 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L1043@01CB 7472616365593A20457870537461636B.traceY:  ExpStack <= push_TWord, T <= from_YLo;
-- traceY: ExpStack <= push_TWord, T <= from_YLo;
459 => X"74_72_61_63_65_59_3A_20_45_78_70_53_74_61_63_6B",

-- L1044@01CC 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 32;
-- trace(from_microcode), directByte = 32;
460 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L1045@01CD 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2, if true then return else continue;
-- T <= ExpStack, ExpStack <= pop2, if true then return else continue;
461 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L1047@01CE 7472616365414C553A20747261636528.traceALU:  trace(crlf);
-- traceALU: trace(crlf);
462 => X"74_72_61_63_65_41_4C_55_3A_20_74_72_61_63_65_28",

-- L1048@01CF 54203C3D20736176652C207472616365.  T <= save, trace(from_microcode), directByte = 52;
-- T <= save, trace(from_microcode), directByte = 52;
463 => X"54_20_3C_3D_20_73_61_76_65_2C_20_74_72_61_63_65",

-- L1049@01D0 54203C3D2066726F6D5F532C20747261.  T <= from_S, trace(from_microcode), directByte = 52;
-- T <= from_S, trace(from_microcode), directByte = 52;
464 => X"54_20_3C_3D_20_66_72_6F_6D_5F_53_2C_20_74_72_61",

-- L1050@01D1 54203C3D2066726F6D5F522C20747261.  T <= from_R, trace(from_microcode), directByte = 52;
-- T <= from_R, trace(from_microcode), directByte = 52;
465 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_2C_20_74_72_61",

-- L1051@01D2 54203C3D2066726F6D5F5948692C2074.  T <= from_YHi, trace(from_microcode), directByte = 53;
-- T <= from_YHi, trace(from_microcode), directByte = 53;
466 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_48_69_2C_20_74",

-- L1052@01D3 54203C3D2066726F6D5F594C6F2C2074.  T <= from_YLo, trace(from_microcode), directByte = 52;
-- T <= from_YLo, trace(from_microcode), directByte = 52;
467 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_74",

-- L1053@01D4 54203C3D20726563616C6C2C20444247.  T <= recall, DBGINDEX <= crlf;
-- T <= recall, DBGINDEX <= crlf;
468 => X"54_20_3C_3D_20_72_65_63_61_6C_6C_2C_20_44_42_47",

-- L1054@01D5 74726163653A206966204442475F5245.trace:  if DBG_READY then next else repeat;
-- trace: if DBG_READY then next else repeat;
469 => X"74_72_61_63_65_3A_20_69_66_20_44_42_47_5F_52_45",

-- L1055@01D6 6966204442475F524541445920746865.  if DBG_READY then next else repeat;
-- if DBG_READY then next else repeat;
470 => X"69_66_20_44_42_47_5F_52_45_41_44_59_20_74_68_65",

-- L1056@01D7 444247494E444558203C3D207A65726F.  DBGINDEX <= zero, if true then return else continue;
-- DBGINDEX <= zero, if true then return else continue;
471 => X"44_42_47_49_4E_44_45_58_20_3C_3D_20_7A_65_72_6F",

472 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

473 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

474 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

475 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

476 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

477 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

478 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

479 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

480 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

481 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

482 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

483 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

484 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

485 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

486 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

487 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

488 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

489 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

490 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

491 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

492 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

493 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

494 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

495 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

496 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

497 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

498 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

499 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

500 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

501 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

502 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

503 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

504 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

505 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

506 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

507 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

508 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

509 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

510 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

511 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20");

end microBasic_sym;

