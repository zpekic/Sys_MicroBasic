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

-- L0350@0000 5F72657365743A206966207472756520._reset:  if true then continue else repeat;
-- _reset: if true then continue else repeat;
0 => X"5F_72_65_73_65_74_3A_20_69_66_20_74_72_75_65_20",

-- L0352@0001 5F7265736574313A2054203C3D207A65._reset1:  T <= zero;
-- _reset1: T <= zero;
1 => X"5F_72_65_73_65_74_31_3A_20_54_20_3C_3D_20_7A_65",

-- L0354@0002 5F7265736574323A2058516865726520._reset2:  XQhere <= T;
-- _reset2: XQhere <= T;
2 => X"5F_72_65_73_65_74_32_3A_20_58_51_68_65_72_65_20",

-- L0356@0003 5F7265736574333A2069662074727565._reset3:  if true then continue else repeat;
-- _reset3: if true then continue else repeat;
3 => X"5F_72_65_73_65_74_33_3A_20_69_66_20_74_72_75_65",

-- L0360@0004 436F6C6453746172743A207472616365.ColdStart:  trace(from_microcode), directByte = 4;
-- ColdStart: trace(from_microcode), directByte = 4;
4 => X"43_6F_6C_64_53_74_61_72_74_3A_20_74_72_61_63_65",

-- L0361@0005 7772697465324E756C6C732850726F67.  write2Nulls(Prog_start);
-- write2Nulls(Prog_start);
5 => X"77_72_69_74_65_32_4E_75_6C_6C_73_28_50_72_6F_67",

-- L0362@0006 5761726D53746172743A20444247494E.WarmStart:  DBGINDEX <= zero, ExpStack <= clear, RetStack <= clear, BasStack <= clear, T <= zero, alu <= reset0;
-- WarmStart: DBGINDEX <= zero, ExpStack <= clear, RetStack <= clear, BasStack <= clear, T <= zero, alu <= reset0;
6 => X"57_61_72_6D_53_74_61_72_74_3A_20_44_42_47_49_4E",

-- L0363@0007 4250203C3D20496E4C696E655F737461.  BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= zero;
-- BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= zero;
7 => X"42_50_20_3C_3D_20_49_6E_4C_69_6E_65_5F_73_74_61",

-- L0364@0008 4C696E6F203C3D20542C20494C5F5043.  Lino <= T, IL_PC <= T, write2Nulls(BP);
-- Lino <= T, IL_PC <= T, write2Nulls(BP);
8 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_49_4C_5F_50_43",

-- L0366@0009 66657463683A2074726163652866726F.fetch:  trace(from_microcode), directByte = 51;
-- fetch: trace(from_microcode), directByte = 51;
9 => X"66_65_74_63_68_3A_20_74_72_61_63_65_28_66_72_6F",

-- L0367@000A 6665746368313A207472616365286672.fetch1:  trace(from_microcode), directByte = 2;
-- fetch1: trace(from_microcode), directByte = 2;
10 => X"66_65_74_63_68_31_3A_20_74_72_61_63_65_28_66_72",

-- L0368@000B 494C5F4F50203C3D2066726F6D5F696E.  IL_OP <= from_interpreter, IL_PC <= inc, trace(from_microcode), directByte = 56;
-- IL_OP <= from_interpreter, IL_PC <= inc, trace(from_microcode), directByte = 56;
11 => X"49_4C_5F_4F_50_20_3C_3D_20_66_72_6F_6D_5F_69_6E",

-- L0369@000C 54203C3D207A65726F2C20616C75203C.  T <= zero, alu <= reset0, if IL_A_VALID then fork else INTERNAL_ERR;
-- T <= zero, alu <= reset0, if IL_A_VALID then fork else INTERNAL_ERR;
12 => X"54_20_3C_3D_20_7A_65_72_6F_2C_20_61_6C_75_20_3C",

-- L0372@000D 6261646F703A2069662066616C736520.badop:  if false then continue else INTERNAL_ERR;
-- badop: if false then continue else INTERNAL_ERR;
13 => X"62_61_64_6F_70_3A_20_69_66_20_66_61_6C_73_65_20",

-- L0377@000E 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 15;
-- trace(from_microcode), directByte = 15;
14 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0378@000F 457870537461636B203C3D2073746172.  ExpStack <= startSwap, trace(from_microcode), directByte = 51;
-- ExpStack <= startSwap, trace(from_microcode), directByte = 51;
15 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_73_74_61_72",

-- L0379@0010 457870537461636B203C3D20656E6453.  ExpStack <= endSwap, if false then continue else fetch1;
-- ExpStack <= endSwap, if false then continue else fetch1;
16 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_65_6E_64_53",

-- L0382@0011 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 15;
-- trace(from_microcode), directByte = 15;
17 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0383@0012 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
18 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0388@0013 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 12;
-- trace(from_microcode), directByte = 12;
19 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0389@0014 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
20 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0394@0015 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 28;
-- trace(from_microcode), directByte = 28;
21 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0395@0016 6C625F707573683A2074726163652866.lb_push:  trace(from_microcode), directByte = 3, T <= codeByte;
-- lb_push: trace(from_microcode), directByte = 3, T <= codeByte;
22 => X"6C_62_5F_70_75_73_68_3A_20_74_72_61_63_65_28_66",

-- L0396@0017 457870537461636B203C3D2070757368.  ExpStack <= push_TByte;
-- ExpStack <= push_TByte;
23 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0397@0018 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
24 => X"49_4C_5F_50_43_20_3C_3D_20_69_6E_63_2C_20_69_66",

-- L0402@0019 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 29;
-- trace(from_microcode), directByte = 29;
25 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0403@001A 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3, T <= codeByte;
-- trace(from_microcode), directByte = 3, T <= codeByte;
26 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0404@001B 457870537461636B203C3D2070757368.  ExpStack <= push_TByte;
-- ExpStack <= push_TByte;
27 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0405@001C 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
28 => X"49_4C_5F_50_43_20_3C_3D_20_69_6E_63_2C_20_69_66",

-- L0410@001D 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 38;
-- trace(from_microcode), directByte = 38;
29 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0411@001E 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
30 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0412@001F 54203C3D20457870537461636B2C2069.  T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR;
-- T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR;
31 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_69",

-- L0413@0020 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, if false then continue else fetch;
-- ExpStack <= push_TWord, if false then continue else fetch;
32 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0418@0021 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 34;
-- trace(from_microcode), directByte = 34;
33 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0419@0022 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
34 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0420@0023 457870537461636B203C3D20706F7032.  ExpStack <= pop2, if false then continue else fetch;
-- ExpStack <= pop2, if false then continue else fetch;
35 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_32",

-- L0425@0024 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 10;
-- trace(from_microcode), directByte = 10;
36 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0426@0025 69662042505F494E5F494E504C494E45.  if BP_IN_INPLINE then next else ptr_exc;
-- if BP_IN_INPLINE then next else ptr_exc;
37 => X"69_66_20_42_50_5F_49_4E_5F_49_4E_50_4C_49_4E_45",

-- L0427@0026 736176655F62703A2053765074203C3D.save_bp:  SvPt <= BP;
-- save_bp: SvPt <= BP;
38 => X"73_61_76_65_5F_62_70_3A_20_53_76_50_74_20_3C_3D",

-- L0428@0027 62705F646F6E653A2074726163654250.bp_done:  traceBP();
-- bp_done: traceBP();
39 => X"62_70_5F_64_6F_6E_65_3A_20_74_72_61_63_65_42_50",

-- L0429@0028 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
40 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0434@0029 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 11;
-- trace(from_microcode), directByte = 11;
41 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0435@002A 6966205356505F494E5F494E504C494E.  if SVP_IN_INPLINE then save_bp;
-- if SVP_IN_INPLINE then save_bp;
42 => X"69_66_20_53_56_50_5F_49_4E_5F_49_4E_50_4C_49_4E",

-- L0436@002B 7074725F6578633A2053765074203C3D.ptr_exc:  SvPt <= BP, BP <= SvPt, if false then continue else bp_done;
-- ptr_exc: SvPt <= BP, BP <= SvPt, if false then continue else bp_done;
43 => X"70_74_72_5F_65_78_63_3A_20_53_76_50_74_20_3C_3D",

-- L0441@002C 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 36;
-- trace(from_microcode), directByte = 36;
44 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0442@002D 56617273203C3D20696E64657846726F.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
45 => X"56_61_72_73_20_3C_3D_20_69_6E_64_65_78_46_72_6F",

-- L0443@002E 54203C3D2066726F6D5F766172732C20.  T <= from_vars, ExpStack <= pop1, trace(from_microcode), directByte = 51;
-- T <= from_vars, ExpStack <= pop1, trace(from_microcode), directByte = 51;
46 => X"54_20_3C_3D_20_66_72_6F_6D_5F_76_61_72_73_2C_20",

-- L0444@002F 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, if false then continue else fetch1;
-- ExpStack <= push_TWord, if false then continue else fetch1;
47 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0449@0030 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 37;
-- trace(from_microcode), directByte = 37;
48 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0450@0031 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
49 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0451@0032 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2;
-- T <= ExpStack, ExpStack <= pop2;
50 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L0452@0033 56617273203C3D20696E64657846726F.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
51 => X"56_61_72_73_20_3C_3D_20_69_6E_64_65_78_46_72_6F",

-- L0453@0034 457870537461636B203C3D20706F7031.  ExpStack <= pop1, Vars <= T, if false then continue else fetch;
-- ExpStack <= pop1, Vars <= T, if false then continue else fetch;
52 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_31",

-- L0458@0035 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 47;
-- trace(from_microcode), directByte = 47;
53 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0459@0036 69662049535F52554E4D4F4445207468.  if IS_RUNMODE then next else INTERNAL_ERR;
-- if IS_RUNMODE then next else INTERNAL_ERR;
54 => X"69_66_20_49_53_5F_52_55_4E_4D_4F_44_45_20_74_68",

-- L0460@0037 696620535441434B5F49535F46554C4C.  if STACK_IS_FULL then BSTACK_ERR;
-- if STACK_IS_FULL then BSTACK_ERR;
55 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_46_55_4C_4C",

-- L0461@0038 426173537461636B203C3D2070757368.  BasStack <= push_Lino_and_BP, if false then continue else fetch;
-- BasStack <= push_Lino_and_BP, if false then continue else fetch;
56 => X"42_61_73_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0466@0039 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 48;
-- trace(from_microcode), directByte = 48;
57 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0467@003A 69662049535F52554E4D4F4445207468.  if IS_RUNMODE then next else INTERNAL_ERR;
-- if IS_RUNMODE then next else INTERNAL_ERR;
58 => X"69_66_20_49_53_5F_52_55_4E_4D_4F_44_45_20_74_68",

-- L0468@003B 54203C3D20426173537461636B5F4869.  T <= BasStack_Hi,if STACK_IS_EMPTY then BSTACK_ERR;
-- T <= BasStack_Hi,if STACK_IS_EMPTY then BSTACK_ERR;
59 => X"54_20_3C_3D_20_42_61_73_53_74_61_63_6B_5F_48_69",

-- L0469@003C 4C696E6F203C3D20542C2054203C3D20.  Lino <= T, T <= BasStack_Lo, trace(from_microcode), directByte = 51;
-- Lino <= T, T <= BasStack_Lo, trace(from_microcode), directByte = 51;
60 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_54_20_3C_3D_20",

-- L0470@003D 4250203C3D20542C2042617353746163.  BP <= T, BasStack <= pop, if false then continue else fetch1;
-- BP <= T, BasStack <= pop, if false then continue else fetch1;
61 => X"42_50_20_3C_3D_20_54_2C_20_42_61_73_53_74_61_63",

-- L0475@003E 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 45;
-- trace(from_microcode), directByte = 45;
62 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0476@003F 494C5F5043203C3D205851686572652C.  IL_PC <= XQhere, if STACK_IS_EMPTY then ESTACK_ERR;
-- IL_PC <= XQhere, if STACK_IS_EMPTY then ESTACK_ERR;
63 => X"49_4C_5F_50_43_20_3C_3D_20_58_51_68_65_72_65_2C",

-- L0477@0040 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2;
-- alu <= R_fromStack, ExpStack <= pop2;
64 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0478@0041 54203C3D2066726F6D5F523B20202020.  T <= from_R;
-- T <= from_R;
65 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_3B_20_20_20_20",

-- L0479@0042 4C696E6F203C3D20542C20696620525F.  Lino <= T, if R_IS_ZERO then NOPROG_ERR;
-- Lino <= T, if R_IS_ZERO then NOPROG_ERR;
66 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_69_66_20_52_5F",

-- L0481@0043 69662043414348455F56414C49442074.  if CACHE_VALID then go_cvalid;
-- if CACHE_VALID then go_cvalid;
67 => X"69_66_20_43_41_43_48_45_5F_56_41_4C_49_44_20_74",

-- L0483@0044 66696E644C696E6F2850726F675F7374.  findLino(Prog_start);
-- findLino(Prog_start);
68 => X"66_69_6E_64_4C_69_6E_6F_28_50_72_6F_67_5F_73_74",

-- L0484@0045 616C75203C3D2063616368655F73746F.  alu <= cache_store, if false then continue else fetch;
-- alu <= cache_store, if false then continue else fetch;
69 => X"61_6C_75_20_3C_3D_20_63_61_63_68_65_5F_73_74_6F",

-- L0486@0046 676F5F6376616C69643A2054203C3D20.go_cvalid:  T <= Cache_Data, if CACHE_HIT then next else go_cmiss;
-- go_cvalid: T <= Cache_Data, if CACHE_HIT then next else go_cmiss;
70 => X"67_6F_5F_63_76_61_6C_69_64_3A_20_54_20_3C_3D_20",

-- L0488@0047 4250203C3D20542C2069662066616C73.  BP <= T, if false then continue else fetch;
-- BP <= T, if false then continue else fetch;
71 => X"42_50_20_3C_3D_20_54_2C_20_69_66_20_66_61_6C_73",

-- L0491@0048 676F5F636D6973733A2066696E644C69.go_cmiss:  findLino(Prog_start);
-- go_cmiss: findLino(Prog_start);
72 => X"67_6F_5F_63_6D_69_73_73_3A_20_66_69_6E_64_4C_69",

-- L0492@0049 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
73 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0494@004A 66696E644C696E6F3A20616C75203C3D.findLino:  alu <= reset1, readCore(T);
-- findLino: alu <= reset1, readCore(T);
74 => X"66_69_6E_64_4C_69_6E_6F_3A_20_61_6C_75_20_3C_3D",

-- L0495@004B 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc;
-- alu <= Rx256_plus_MDR, T <= inc;
75 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L0496@004C 616C75203C3D20535F66726F6D4C696E.  alu <= S_fromLino, readCore(T);
-- alu <= S_fromLino, readCore(T);
76 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_4C_69_6E",

-- L0497@004D 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc;
-- alu <= Rx256_plus_MDR, T <= inc;
77 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L0498@004E 616C75203C3D20535F6D696E75735F52.  alu <= S_minus_R, if R_IS_ZERO then stop_run;
-- alu <= S_minus_R, if R_IS_ZERO then stop_run;
78 => X"61_6C_75_20_3C_3D_20_53_5F_6D_69_6E_75_73_5F_52",

-- L0499@004F 4250203C3D20542C20696620595F5A45.  BP <= T, if Y_ZERO then return;
-- BP <= T, if Y_ZERO then return;
79 => X"42_50_20_3C_3D_20_54_2C_20_69_66_20_59_5F_5A_45",

-- L0500@0050 66696E644E65787443522873616D6529.  findNextCR(same);
-- findNextCR(same);
80 => X"66_69_6E_64_4E_65_78_74_43_52_28_73_61_6D_65_29",

-- L0501@0051 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else findLino;
-- T <= inc, if false then continue else findLino;
81 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0506@0052 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 25;
-- trace(from_microcode), directByte = 25;
82 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0507@0053 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
83 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0508@0054 457870537461636B203C3D20706F7032.  ExpStack <= pop2;
-- ExpStack <= pop2;
84 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_32",

-- L0509@0055 616C75203C3D206E65675F522C206966.  alu <= neg_R, if ALU_READY then alu_done else repeat;
-- alu <= neg_R, if ALU_READY then alu_done else repeat;
85 => X"61_6C_75_20_3C_3D_20_6E_65_67_5F_52_2C_20_69_66",

-- L0514@0056 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 22;
-- trace(from_microcode), directByte = 22;
86 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0515@0057 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
87 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0516@0058 616C75203C3D20535F706C75735F522C.  alu <= S_plus_R, if ALU_READY then next else repeat;
-- alu <= S_plus_R, if ALU_READY then next else repeat;
88 => X"61_6C_75_20_3C_3D_20_53_5F_70_6C_75_73_5F_52_2C",

-- L0517@0059 616C755F646F6E653A20747261636541.alu_done:  traceALU();
-- alu_done: traceALU();
89 => X"61_6C_75_5F_64_6F_6E_65_3A_20_74_72_61_63_65_41",

-- L0518@005A 54203C3D2066726F6D5F594C6F2C2069.  T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
-- T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
90 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_69",

-- L0519@005B 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, if false then continue else fetch;
-- ExpStack <= push_TWord, if false then continue else fetch;
91 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0524@005C 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 23;
-- trace(from_microcode), directByte = 23;
92 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0525@005D 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
93 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0526@005E 616C75203C3D20535F6D696E75735F52.  alu <= S_minus_R, if ALU_READY then alu_done else repeat;
-- alu <= S_minus_R, if ALU_READY then alu_done else repeat;
94 => X"61_6C_75_20_3C_3D_20_53_5F_6D_69_6E_75_73_5F_52",

-- L0531@005F 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 24;
-- trace(from_microcode), directByte = 24;
95 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0532@0060 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
96 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0533@0061 616C75203C3D20535F6D756C5F522C20.  alu <= S_mul_R, if ALU_READY then alu_done else repeat;
-- alu <= S_mul_R, if ALU_READY then alu_done else repeat;
97 => X"61_6C_75_20_3C_3D_20_53_5F_6D_75_6C_5F_52_2C_20",

-- L0538@0062 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 35;
-- trace(from_microcode), directByte = 35;
98 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0539@0063 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
99 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0540@0064 616C75203C3D206469765F7374617274.  alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
-- alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
100 => X"61_6C_75_20_3C_3D_20_64_69_76_5F_73_74_61_72_74",

-- L0541@0065 6469765F6C6F6F703A20616C75203C3D.div_loop:  alu <= div_shift;
-- div_loop: alu <= div_shift;
101 => X"64_69_76_5F_6C_6F_6F_70_3A_20_61_6C_75_20_3C_3D",

-- L0542@0066 696620414C555F524541445920746865.  if ALU_READY then div_done;
-- if ALU_READY then div_done;
102 => X"69_66_20_41_4C_55_5F_52_45_41_44_59_20_74_68_65",

-- L0543@0067 616C75203C3D206469765F7375627365.  alu <= div_subset, if false then continue else div_loop;
-- alu <= div_subset, if false then continue else div_loop;
103 => X"61_6C_75_20_3C_3D_20_64_69_76_5F_73_75_62_73_65",

-- L0544@0068 6469765F646F6E653A20616C75203C3D.div_done:  alu <= div_end, if false then continue else alu_done;
-- div_done: alu <= div_end, if false then continue else alu_done;
104 => X"64_69_76_5F_64_6F_6E_65_3A_20_61_6C_75_20_3C_3D",

-- L0549@0069 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 46;
-- trace(from_microcode), directByte = 46;
105 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0550@006A 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2;
-- alu <= R_fromStack, ExpStack <= pop2;
106 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0551@006B 457870537461636B203C3D2070757368.  ExpStack <= push_TByte;
-- ExpStack <= push_TByte;
107 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0552@006C 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2;
-- T <= ExpStack, ExpStack <= pop2;
108 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L0553@006D 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2;
-- alu <= S_fromStack, ExpStack <= pop2;
109 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L0554@006E 69662043505F534B4950207468656E20.  if CP_SKIP then next else fetch;
-- if CP_SKIP then next else fetch;
110 => X"69_66_20_43_50_5F_53_4B_49_50_20_74_68_65_6E_20",

-- L0555@006F 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if false then continue else fetch;
-- IL_PC <= inc, if false then continue else fetch;
111 => X"49_4C_5F_50_43_20_3C_3D_20_69_6E_63_2C_20_69_66",

-- L0560@0070 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 39;
-- trace(from_microcode), directByte = 39;
112 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0561@0071 494C5F5043203C3D20542C2069662049.  IL_PC <= T, if IS_RUNMODE then next else fetch;
-- IL_PC <= T, if IS_RUNMODE then next else fetch;
113 => X"49_4C_5F_50_43_20_3C_3D_20_54_2C_20_69_66_20_49",

-- L0563@0072 66696E644E6578744352284250293B20.  findNextCR(BP);
-- findNextCR(BP);
114 => X"66_69_6E_64_4E_65_78_74_43_52_28_42_50_29_3B_20",

-- L0564@0073 54203C3D20696E633B20202020202020.  T <= inc;
-- T <= inc;
115 => X"54_20_3C_3D_20_69_6E_63_3B_20_20_20_20_20_20_20",

-- L0565@0074 4250203C3D20543B2020202020202020.  BP <= T;
-- BP <= T;
116 => X"42_50_20_3C_3D_20_54_3B_20_20_20_20_20_20_20_20",

-- L0566@0075 72656164436F72653136284250293B20.  readCore16(BP);
-- readCore16(BP);
117 => X"72_65_61_64_43_6F_72_65_31_36_28_42_50_29_3B_20",

-- L0567@0076 4250203C3D20542C2054203C3D206672.  BP <= T, T <= from_R, if R_IS_ZERO then nx_err;
-- BP <= T, T <= from_R, if R_IS_ZERO then nx_err;
118 => X"42_50_20_3C_3D_20_54_2C_20_54_20_3C_3D_20_66_72",

-- L0568@0077 4C696E6F203C3D20542C20494C5F5043.  Lino <= T, IL_PC <= XQhere;
-- Lino <= T, IL_PC <= XQhere;
119 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_49_4C_5F_50_43",

-- L0570@0078 7472616365425028293B202020202020.  traceBP();
-- traceBP();
120 => X"74_72_61_63_65_42_50_28_29_3B_20_20_20_20_20_20",

-- L0571@0079 6966204B42445F425245414B20746865.  if KBD_BREAK then BREAK else fetch;
-- if KBD_BREAK then BREAK else fetch;
121 => X"69_66_20_4B_42_44_5F_42_52_45_41_4B_20_74_68_65",

-- L0572@007A 6E785F6572723A206469726563744279.nx_err:  directByte = 0x07, outChar(from_microcode);
-- nx_err: directByte = 0x07, outChar(from_microcode);
122 => X"6E_78_5F_65_72_72_3A_20_64_69_72_65_63_74_42_79",

-- L0573@007B 69662066616C7365207468656E20636F.  if false then continue else stop_run;
-- if false then continue else stop_run;
123 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0578@007C 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 41;
-- trace(from_microcode), directByte = 41;
124 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0579@007D 616C75203C3D207265736574312C2069.  alu <= reset1, if IS_RUNMODE then badop;
-- alu <= reset1, if IS_RUNMODE then badop;
125 => X"61_6C_75_20_3C_3D_20_72_65_73_65_74_31_2C_20_69",

-- L0580@007E 6C735F7061726C6F61643A2054203C3D.ls_parload:  T <= from_R, if STACK_IS_EMPTY then ls_parchk;
-- ls_parload: T <= from_R, if STACK_IS_EMPTY then ls_parchk;
126 => X"6C_73_5F_70_61_72_6C_6F_61_64_3A_20_54_20_3C_3D",

-- L0581@007F 616C75203C3D20535F66726F6D543B20.  alu <= S_fromT;
-- alu <= S_fromT;
127 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_54_3B_20",

-- L0582@0080 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2, if false then continue else ls_parload;
-- alu <= R_fromStack, ExpStack <= pop2, if false then continue else ls_parload;
128 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0583@0081 6C735F70617263686B3A20616C75203C.ls_parchk:  alu <= ls_load;
-- ls_parchk: alu <= ls_load;
129 => X"6C_73_5F_70_61_72_63_68_6B_3A_20_61_6C_75_20_3C",

-- L0584@0082 6966204C535F504152414D535F4F4B20.  if LS_PARAMS_OK then next else SYNTAX_ERR;
-- if LS_PARAMS_OK then next else SYNTAX_ERR;
130 => X"69_66_20_4C_53_5F_50_41_52_41_4D_53_5F_4F_4B_20",

-- L0585@0083 6C735F73746172743A2054203C3D2050.ls_start:  T <= Prog_start;
-- ls_start: T <= Prog_start;
131 => X"6C_73_5F_73_74_61_72_74_3A_20_54_20_3C_3D_20_50",

-- L0586@0084 6C735F6C696E656C6F6F703A20696620.ls_lineloop:  if CHARIN_READY then next else ls_continue;
-- ls_lineloop: if CHARIN_READY then next else ls_continue;
132 => X"6C_73_5F_6C_69_6E_65_6C_6F_6F_70_3A_20_69_66_20",

-- L0587@0085 6966204B42445F425245414B20746865.  if KBD_BREAK then BREAK;
-- if KBD_BREAK then BREAK;
133 => X"69_66_20_4B_42_44_5F_42_52_45_41_4B_20_74_68_65",

-- L0588@0086 676F7443686172203D20312C20646972.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_continue;
-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_continue;
134 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_64_69_72",

-- L0589@0087 6C735F70617573653A20696620434841.ls_pause:  if CHARIN_READY then next else repeat;
-- ls_pause: if CHARIN_READY then next else repeat;
135 => X"6C_73_5F_70_61_75_73_65_3A_20_69_66_20_43_48_41",

-- L0590@0088 676F7443686172203D20312C20646972.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
136 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_64_69_72",

-- L0591@0089 6C735F636F6E74696E75653A20676F74.ls_continue:  gotChar = 1, readCore16(same);
-- ls_continue: gotChar = 1, readCore16(same);
137 => X"6C_73_5F_63_6F_6E_74_69_6E_75_65_3A_20_67_6F_74",

-- L0592@008A 616C75203C3D206C735F636865636B2C.  alu <= ls_check, if R_IS_ZERO then fetch;
-- alu <= ls_check, if R_IS_ZERO then fetch;
138 => X"61_6C_75_20_3C_3D_20_6C_73_5F_63_68_65_63_6B_2C",

-- L0593@008B 6966204C535F5041535345445F454E44.  if LS_PASSED_END then fetch;
-- if LS_PASSED_END then fetch;
139 => X"69_66_20_4C_53_5F_50_41_53_53_45_44_5F_45_4E_44",

-- L0594@008C 6966204C535F494E5F52414E47452074.  if LS_IN_RANGE then next else ls_nextLine;
-- if LS_IN_RANGE then next else ls_nextLine;
140 => X"69_66_20_4C_53_5F_49_4E_5F_52_41_4E_47_45_20_74",

-- L0595@008D 7072696E744465635228595F73617665.  printDecR(Y_save);
-- printDecR(Y_save);
141 => X"70_72_69_6E_74_44_65_63_52_28_59_5F_73_61_76_65",

-- L0596@008E 616C75203C3D20595F726563616C6C2C.  alu <= Y_recall, directByte = ' ', outChar(from_microcode);
-- alu <= Y_recall, directByte = ' ', outChar(from_microcode);
142 => X"61_6C_75_20_3C_3D_20_59_5F_72_65_63_61_6C_6C_2C",

-- L0597@008F 6C735F636861726C6F6F703A20726561.ls_charloop:  readCore(T);
-- ls_charloop: readCore(T);
143 => X"6C_73_5F_63_68_61_72_6C_6F_6F_70_3A_20_72_65_61",

-- L0598@0090 6F7574436861722866726F6D5F4D4452.  outChar(from_MDR);
-- outChar(from_MDR);
144 => X"6F_75_74_43_68_61_72_28_66_72_6F_6D_5F_4D_44_52",

-- L0599@0091 6C735F6E657874636861723A20646972.ls_nextchar:  directByte = 0x0D, if MDR_EQU_DB then next else ls_next;
-- ls_nextchar: directByte = 0x0D, if MDR_EQU_DB then next else ls_next;
145 => X"6C_73_5F_6E_65_78_74_63_68_61_72_3A_20_64_69_72",

-- L0600@0092 64697265637442797465203D20307830.  directByte = 0x0A, outChar(from_microcode);
-- directByte = 0x0A, outChar(from_microcode);
146 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0601@0093 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else ls_lineloop;
-- T <= inc, if false then continue else ls_lineloop;
147 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0602@0094 6C735F6E6578743A2054203C3D20696E.ls_next:  T <= inc, if false then continue else ls_charloop;
-- ls_next: T <= inc, if false then continue else ls_charloop;
148 => X"6C_73_5F_6E_65_78_74_3A_20_54_20_3C_3D_20_69_6E",

-- L0603@0095 6C735F6E6578744C696E653A2066696E.ls_nextLine:  findNextCR(same);
-- ls_nextLine: findNextCR(same);
149 => X"6C_73_5F_6E_65_78_74_4C_69_6E_65_3A_20_66_69_6E",

-- L0604@0096 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else ls_lineloop;
-- T <= inc, if false then continue else ls_lineloop;
150 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0609@0097 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 26;
-- trace(from_microcode), directByte = 26;
151 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0610@0098 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
152 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0611@0099 7072696E7444656328293B2020202020.  printDec();
-- printDec();
153 => X"70_72_69_6E_74_44_65_63_28_29_3B_20_20_20_20_20",

-- L0612@009A 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
154 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0617@009B 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 18;
-- trace(from_microcode), directByte = 18;
155 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0618@009C 70715F6C6F6F703A204250203C3D2069.pq_loop:  BP <= inc, readCore(BP);
-- pq_loop: BP <= inc, readCore(BP);
156 => X"70_71_5F_6C_6F_6F_70_3A_20_42_50_20_3C_3D_20_69",

-- L0619@009D 64697265637442797465203D20272227.  directByte = '"', if MDR_EQU_DB then pq_done;
-- directByte = '"', if MDR_EQU_DB then pq_done;
157 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_22_27",

-- L0620@009E 6F7574436861722866726F6D5F4D4452.  outChar(from_MDR);
-- outChar(from_MDR);
158 => X"6F_75_74_43_68_61_72_28_66_72_6F_6D_5F_4D_44_52",

-- L0621@009F 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3;
-- trace(from_microcode), directByte = 3;
159 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0622@00A0 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_EQU_DB then INTERNAL_ERR else pq_loop;
-- directByte = 0x0D, if MDR_EQU_DB then INTERNAL_ERR else pq_loop;
160 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0623@00A1 70715F646F6E653A2074726163654250.pq_done:  traceBP();
-- pq_done: traceBP();
161 => X"70_71_5F_64_6F_6E_65_3A_20_74_72_61_63_65_42_50",

-- L0624@00A2 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
162 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0629@00A3 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 27;
-- trace(from_microcode), directByte = 27;
163 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0630@00A4 70745F6C6F6F703A2069662041545F54.pt_loop:  if AT_TAB then fetch;
-- pt_loop: if AT_TAB then fetch;
164 => X"70_74_5F_6C_6F_6F_70_3A_20_69_66_20_41_54_5F_54",

-- L0631@00A5 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode);
-- directByte = ' ', outChar(from_microcode);
165 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0632@00A6 69662066616C7365207468656E20636F.  if false then continue else pt_loop;
-- if false then continue else pt_loop;
166 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0637@00A7 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 6;
-- trace(from_microcode), directByte = 6;
167 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0638@00A8 63726C665F66657463683A206F757443.crlf_fetch:  outCRLF();
-- crlf_fetch: outCRLF();
168 => X"63_72_6C_66_5F_66_65_74_63_68_3A_20_6F_75_74_43",

-- L0639@00A9 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
169 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0644@00AA 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 5;
-- trace(from_microcode), directByte = 5;
170 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0645@00AB 70635F6C6F6F703A206F757443686172.pc_loop:  outChar(from_interpreter);
-- pc_loop: outChar(from_interpreter);
171 => X"70_63_5F_6C_6F_6F_70_3A_20_6F_75_74_43_68_61_72",

-- L0646@00AC 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3;
-- trace(from_microcode), directByte = 3;
172 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0647@00AD 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
-- IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
173 => X"49_4C_5F_50_43_20_3C_3D_20_69_6E_63_2C_20_69_66",

-- L0652@00AE 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 8;
-- trace(from_microcode), directByte = 8;
174 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0653@00AF 676C3A20496E6C456E64203C3D20496E.gl:  InlEnd <= InLine_start;
-- gl: InlEnd <= InLine_start;
175 => X"67_6C_3A_20_49_6E_6C_45_6E_64_20_3C_3D_20_49_6E",

-- L0654@00B0 676C5F6C6F6F703A2069662043484152.gl_loop:  if CHARIN_READY then next else repeat;
-- gl_loop: if CHARIN_READY then next else repeat;
176 => X"67_6C_5F_6C_6F_6F_70_3A_20_69_66_20_43_48_41_52",

-- L0655@00B1 6966204B42445F425245414B20746865.  if KBD_BREAK then next else gl_char;
-- if KBD_BREAK then next else gl_char;
177 => X"69_66_20_4B_42_44_5F_42_52_45_41_4B_20_74_68_65",

-- L0656@00B2 676F7443686172203D20312C20696620.  gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
-- gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
178 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0657@00B3 676C5F636861723A2069662043484152.gl_char:  if CHARIN_PRINTABLE then gl_print;
-- gl_char: if CHARIN_PRINTABLE then gl_print;
179 => X"67_6C_5F_63_68_61_72_3A_20_69_66_20_43_48_41_52",

-- L0658@00B4 64697265637442797465203D20307830.  directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
-- directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
180 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0659@00B5 64697265637442797465203D20307830.  directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
-- directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
181 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0660@00B6 64697265637442797465203D20307831.  directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
-- directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
182 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_31",

-- L0661@00B7 64697265637442797465203D20307830.  directByte = 0x09, if CHARIN_EQU_DB then gl_tab;
-- directByte = 0x09, if CHARIN_EQU_DB then gl_tab;
183 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0663@00B8 676C5F69676E6F72653A206469726563.gl_ignore:  directByte = 0x07, outChar(from_microcode);
-- gl_ignore: directByte = 0x07, outChar(from_microcode);
184 => X"67_6C_5F_69_67_6E_6F_72_65_3A_20_64_69_72_65_63",

-- L0664@00B9 676F7443686172203D20312C20696620.  gotChar = 1, if false then continue else gl_loop;
-- gotChar = 1, if false then continue else gl_loop;
185 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0666@00BA 676C5F7072696E743A20696620494E4C.gl_print:  if INLEND_MAX then gl_ignore;
-- gl_print: if INLEND_MAX then gl_ignore;
186 => X"67_6C_5F_70_72_69_6E_74_3A_20_69_66_20_49_4E_4C",

-- L0667@00BB 6F7574436861722866726F6D5F636861.  outChar(from_charin);
-- outChar(from_charin);
187 => X"6F_75_74_43_68_61_72_28_66_72_6F_6D_5F_63_68_61",

-- L0668@00BC 7772697465436F726528496E6C456E64.  writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- writeCore(InlEnd, CHARIN), InlEnd <= inc;
188 => X"77_72_69_74_65_43_6F_72_65_28_49_6E_6C_45_6E_64",

-- L0669@00BD 676C5F7772697465303A207772697465.gl_write0:  writeCore(InlEnd, zero);
-- gl_write0: writeCore(InlEnd, zero);
189 => X"67_6C_5F_77_72_69_74_65_30_3A_20_77_72_69_74_65",

-- L0670@00BE 676F7443686172203D20312C20696620.  gotChar = 1, if false then continue else gl_loop;
-- gotChar = 1, if false then continue else gl_loop;
190 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0672@00BF 676C5F6573633A206469726563744279.gl_esc:  directByte = 0x07, outChar(from_microcode);
-- gl_esc: directByte = 0x07, outChar(from_microcode);
191 => X"67_6C_5F_65_73_63_3A_20_64_69_72_65_63_74_42_79",

-- L0673@00C0 6F757443524C4628293B202020202020.  outCRLF();
-- outCRLF();
192 => X"6F_75_74_43_52_4C_46_28_29_3B_20_20_20_20_20_20",

-- L0674@00C1 676F7443686172203D20312C20696620.  gotChar = 1, if false then continue else gl;
-- gotChar = 1, if false then continue else gl;
193 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0676@00C2 676C5F62733A20696620494E4C454E44.gl_bs:  if INLEND_MIN then gl_ignore;
-- gl_bs: if INLEND_MIN then gl_ignore;
194 => X"67_6C_5F_62_73_3A_20_69_66_20_49_4E_4C_45_4E_44",

-- L0677@00C3 64697265637442797465203D20307830.  directByte = 0x08, outChar(from_microcode);
-- directByte = 0x08, outChar(from_microcode);
195 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0678@00C4 496E6C456E64203C3D206465632C2069.  InlEnd <= dec, if false then continue else gl_write0;
-- InlEnd <= dec, if false then continue else gl_write0;
196 => X"49_6E_6C_45_6E_64_20_3C_3D_20_64_65_63_2C_20_69",

-- L0680@00C5 676C5F63723A207772697465436F7265.gl_cr:  writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- gl_cr: writeCore(InlEnd, CHARIN), InlEnd <= inc;
197 => X"67_6C_5F_63_72_3A_20_77_72_69_74_65_43_6F_72_65",

-- L0681@00C6 7772697465436F726528496E6C456E64.  writeCore(InlEnd, zero);
-- writeCore(InlEnd, zero);
198 => X"77_72_69_74_65_43_6F_72_65_28_49_6E_6C_45_6E_64",

-- L0682@00C7 64756D705F696E70757428293B202020.  dump_input();
-- dump_input();
199 => X"64_75_6D_70_5F_69_6E_70_75_74_28_29_3B_20_20_20",

-- L0683@00C8 6F757443524C4628293B202020202020.  outCRLF();
-- outCRLF();
200 => X"6F_75_74_43_52_4C_46_28_29_3B_20_20_20_20_20_20",

-- L0684@00C9 676F7443686172203D20312C20425020.  gotChar = 1, BP <= Inline_start, if false then continue else fetch;
-- gotChar = 1, BP <= Inline_start, if false then continue else fetch;
201 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_42_50_20",

-- L0686@00CA 676C5F7461623A20696620494E4C454E.gl_tab:  if INLEND_MAX then gl_ignore;
-- gl_tab: if INLEND_MAX then gl_ignore;
202 => X"67_6C_5F_74_61_62_3A_20_69_66_20_49_4E_4C_45_4E",

-- L0687@00CB 676C5F7461626C6F6F703A2069662041.gl_tabloop:  if AT_TAB then gl_write0;
-- gl_tabloop: if AT_TAB then gl_write0;
203 => X"67_6C_5F_74_61_62_6C_6F_6F_70_3A_20_69_66_20_41",

-- L0688@00CC 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode);
-- directByte = ' ', outChar(from_microcode);
204 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0689@00CD 64697265637442797465203D20272027.  directByte = ' ', writeCore(InlEnd, from_microcode), InlEnd <= inc;
-- directByte = ' ', writeCore(InlEnd, from_microcode), InlEnd <= inc;
205 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0690@00CE 69662066616C7365207468656E20636F.  if false then continue else gl_tabloop;
-- if false then continue else gl_tabloop;
206 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0695@00CF 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 40;
-- trace(from_microcode), directByte = 40;
207 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0696@00D0 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2;
-- alu <= S_fromStack, ExpStack <= pop2;
208 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L0697@00D1 616C75203C3D20535F706C75735F523B.  alu <= S_plus_R;
-- alu <= S_plus_R;
209 => X"61_6C_75_20_3C_3D_20_53_5F_70_6C_75_73_5F_52_3B",

-- L0698@00D2 54203C3D2066726F6D5F594C6F2C2069.  T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
-- T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
210 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_69",

-- L0699@00D3 4C696E6F203C3D20542C20696620595F.  Lino <= T, if Y_ZERO then SYNTAX_ERR;
-- Lino <= T, if Y_ZERO then SYNTAX_ERR;
211 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_69_66_20_59_5F",

-- L0700@00D4 7472616365414C5528293B2020202020.  traceALU();
-- traceALU();
212 => X"74_72_61_63_65_41_4C_55_28_29_3B_20_20_20_20_20",

-- L0702@00D5 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
213 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0703@00D6 54203C3D2042503B2020202020202020.  T <= BP;
-- T <= BP;
214 => X"54_20_3C_3D_20_42_50_3B_20_20_20_20_20_20_20_20",

-- L0704@00D7 696C5F66696E6442453A204245203C3D.il_findBE:  BE <= T, readCore(T);
-- il_findBE: BE <= T, readCore(T);
215 => X"69_6C_5F_66_69_6E_64_42_45_3A_20_42_45_20_3C_3D",

-- L0705@00D8 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_EQU_DB then il_fork;
-- directByte = 0x0D, if MDR_EQU_DB then il_fork;
216 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0706@00D9 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else il_findBE;
-- T <= inc, if false then continue else il_findBE;
217 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0708@00DA 696C5F666F726B3A207363616E50726F.il_fork:  scanProgram();
-- il_fork: scanProgram();
218 => X"69_6C_5F_66_6F_72_6B_3A_20_73_63_61_6E_50_72_6F",

-- L0709@00DB 696620494D504C494E455F454D505459.  if IMPLINE_EMPTY then next else changeLine;
-- if IMPLINE_EMPTY then next else changeLine;
219 => X"69_66_20_49_4D_50_4C_49_4E_45_5F_45_4D_50_54_59",

-- L0711@00DC 64656C6574654C696E653A2069662052.deleteLine:  if R_IS_ZERO then WarmStart;
-- deleteLine: if R_IS_ZERO then WarmStart;
220 => X"64_65_6C_65_74_65_4C_69_6E_65_3A_20_69_66_20_52",

-- L0712@00DD 696620595F5A45524F207468656E206E.  if Y_ZERO then next else WarmStart;
-- if Y_ZERO then next else WarmStart;
221 => X"69_66_20_59_5F_5A_45_52_4F_20_74_68_65_6E_20_6E",

-- L0713@00DE 66696E64507267456E6428293B202020.  findPrgEnd();
-- findPrgEnd();
222 => X"66_69_6E_64_50_72_67_45_6E_64_28_29_3B_20_20_20",

-- L0714@00DF 636F7079436F726528636F70795F696E.  copyCore(copy_init_del);
-- copyCore(copy_init_del);
223 => X"63_6F_70_79_43_6F_72_65_28_63_6F_70_79_5F_69_6E",

-- L0715@00E0 69662066616C7365207468656E20636F.  if false then continue else WarmStart;
-- if false then continue else WarmStart;
224 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0717@00E1 6368616E67654C696E653A2069662052.changeLine:  if R_IS_ZERO then appendLine;
-- changeLine: if R_IS_ZERO then appendLine;
225 => X"63_68_61_6E_67_65_4C_69_6E_65_3A_20_69_66_20_52",

-- L0718@00E2 696620595F5A45524F207468656E206E.  if Y_ZERO then next else insertLine;
-- if Y_ZERO then next else insertLine;
226 => X"69_66_20_59_5F_5A_45_52_4F_20_74_68_65_6E_20_6E",

-- L0720@00E3 7265706C6163654C696E653A2066696E.replaceLine:  findPrgEnd();
-- replaceLine: findPrgEnd();
227 => X"72_65_70_6C_61_63_65_4C_69_6E_65_3A_20_66_69_6E",

-- L0721@00E4 636F7079436F726528636F70795F696E.  copyCore(copy_init_del);
-- copyCore(copy_init_del);
228 => X"63_6F_70_79_43_6F_72_65_28_63_6F_70_79_5F_69_6E",

-- L0722@00E5 7363616E50726F6772616D28293B2020.  scanProgram();
-- scanProgram();
229 => X"73_63_61_6E_50_72_6F_67_72_61_6D_28_29_3B_20_20",

-- L0723@00E6 696E736572744C696E653A2066696E64.insertLine:  findPrgEnd();
-- insertLine: findPrgEnd();
230 => X"69_6E_73_65_72_74_4C_69_6E_65_3A_20_66_69_6E_64",

-- L0724@00E7 636F7079436F726528636F70795F696E.  copyCore(copy_init_ins);
-- copyCore(copy_init_ins);
231 => X"63_6F_70_79_43_6F_72_65_28_63_6F_70_79_5F_69_6E",

-- L0725@00E8 696E735F66696E6973683A20636F7079.ins_finish:  copyLine(LS);
-- ins_finish: copyLine(LS);
232 => X"69_6E_73_5F_66_69_6E_69_73_68_3A_20_63_6F_70_79",

-- L0726@00E9 69662066616C7365207468656E20636F.  if false then continue else WarmStart;
-- if false then continue else WarmStart;
233 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0728@00EA 617070656E644C696E653A2054203C3D.appendLine:  T <= dec;
-- appendLine: T <= dec;
234 => X"61_70_70_65_6E_64_4C_69_6E_65_3A_20_54_20_3C_3D",

-- L0729@00EB 636F70794C696E6528646563293B2020.  copyLine(dec);
-- copyLine(dec);
235 => X"63_6F_70_79_4C_69_6E_65_28_64_65_63_29_3B_20_20",

-- L0730@00EC 7772697465324E756C6C732873616D65.  write2Nulls(same);
-- write2Nulls(same);
236 => X"77_72_69_74_65_32_4E_75_6C_6C_73_28_73_61_6D_65",

-- L0731@00ED 69662066616C7365207468656E20636F.  if false then continue else WarmStart;
-- if false then continue else WarmStart;
237 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0733@00EE 636F70794C696E653A20616C75203C3D.copyLine:  alu <= S_fromLino;
-- copyLine: alu <= S_fromLino;
238 => X"63_6F_70_79_4C_69_6E_65_3A_20_61_6C_75_20_3C_3D",

-- L0734@00EF 7772697465436F726528542C2066726F.  writeCore(T, from_SHi);
-- writeCore(T, from_SHi);
239 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0735@00F0 54203C3D20696E633B20202020202020.  T <= inc;
-- T <= inc;
240 => X"54_20_3C_3D_20_69_6E_63_3B_20_20_20_20_20_20_20",

-- L0736@00F1 7772697465436F726528542C2066726F.  writeCore(T, from_SLo);
-- writeCore(T, from_SLo);
241 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0737@00F2 54203C3D20696E633B20202020202020.  T <= inc;
-- T <= inc;
242 => X"54_20_3C_3D_20_69_6E_63_3B_20_20_20_20_20_20_20",

-- L0738@00F3 6170705F6C6F6F703A2072656164436F.app_loop:  readCore(BP);
-- app_loop: readCore(BP);
243 => X"61_70_70_5F_6C_6F_6F_70_3A_20_72_65_61_64_43_6F",

-- L0739@00F4 7772697465436F726528542C2073616D.  writeCore(T, same);
-- writeCore(T, same);
244 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_73_61_6D",

-- L0740@00F5 4250203C3D20696E632C2054203C3D20.  BP <= inc, T <= inc;
-- BP <= inc, T <= inc;
245 => X"42_50_20_3C_3D_20_69_6E_63_2C_20_54_20_3C_3D_20",

-- L0741@00F6 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_EQU_DB then return else app_loop;
-- directByte = 0x0D, if MDR_EQU_DB then return else app_loop;
246 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0743@00F7 66696E64507267456E643A2054203C3D.findPrgEnd:  T <= Prog_start;
-- findPrgEnd: T <= Prog_start;
247 => X"66_69_6E_64_50_72_67_45_6E_64_3A_20_54_20_3C_3D",

-- L0744@00F8 6670655F6C6F6F703A2072656164436F.fpe_loop:  readCore16(same);
-- fpe_loop: readCore16(same);
248 => X"66_70_65_5F_6C_6F_6F_70_3A_20_72_65_61_64_43_6F",

-- L0745@00F9 696620525F49535F5A45524F20746865.  if R_IS_ZERO then next else fpe_next;
-- if R_IS_ZERO then next else fpe_next;
249 => X"69_66_20_52_5F_49_53_5F_5A_45_52_4F_20_74_68_65",

-- L0746@00FA 54203C3D206465633B20202020202020.  T <= dec;
-- T <= dec;
250 => X"54_20_3C_3D_20_64_65_63_3B_20_20_20_20_20_20_20",

-- L0747@00FB 507267456E64203C3D20542C20696620.  PrgEnd <= T, if true then return else continue;
-- PrgEnd <= T, if true then return else continue;
251 => X"50_72_67_45_6E_64_20_3C_3D_20_54_2C_20_69_66_20",

-- L0748@00FC 6670655F6E6578743A2066696E644E65.fpe_next:  findNextCR(same);
-- fpe_next: findNextCR(same);
252 => X"66_70_65_5F_6E_65_78_74_3A_20_66_69_6E_64_4E_65",

-- L0749@00FD 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else fpe_loop;
-- T <= inc, if false then continue else fpe_loop;
253 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0753@00FE 7363616E50726F6772616D3A2054203C.scanProgram:  T <= zero;
-- scanProgram: T <= zero;
254 => X"73_63_61_6E_50_72_6F_67_72_61_6D_3A_20_54_20_3C",

-- L0754@00FF 4C53203C3D20542C204C45203C3D2054.  LS <= T, LE <= T, T <= Prog_start;
-- LS <= T, LE <= T, T <= Prog_start;
255 => X"4C_53_20_3C_3D_20_54_2C_20_4C_45_20_3C_3D_20_54",

-- L0756@0100 7363616E5F6C6F6F703A204C53203C3D.scan_loop:  LS <= T, readCore16(same);
-- scan_loop: LS <= T, readCore16(same);
256 => X"73_63_61_6E_5F_6C_6F_6F_70_3A_20_4C_53_20_3C_3D",

-- L0757@0101 616C75203C3D20535F66726F6D4C696E.  alu <= S_fromLino, if R_IS_ZERO then return;
-- alu <= S_fromLino, if R_IS_ZERO then return;
257 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_4C_69_6E",

-- L0758@0102 7363616E5F636865636B3A20616C7520.scan_check:  alu <= S_minus_R;
-- scan_check: alu <= S_minus_R;
258 => X"73_63_61_6E_5F_63_68_65_63_6B_3A_20_61_6C_75_20",

-- L0759@0103 7472616365414C5528293B2020202020.  traceALU();
-- traceALU();
259 => X"74_72_61_63_65_41_4C_55_28_29_3B_20_20_20_20_20",

-- L0760@0104 696620595F5A45524F207468656E2073.  if Y_ZERO then scan_found else next;
-- if Y_ZERO then scan_found else next;
260 => X"69_66_20_59_5F_5A_45_52_4F_20_74_68_65_6E_20_73",

-- L0761@0105 696620595F5349474E207468656E2073.  if Y_SIGN then scan_found else next;
-- if Y_SIGN then scan_found else next;
261 => X"69_66_20_59_5F_53_49_47_4E_20_74_68_65_6E_20_73",

-- L0762@0106 7363616E5F6E6578743A2066696E644E.scan_next:  findNextCR(same);
-- scan_next: findNextCR(same);
262 => X"73_63_61_6E_5F_6E_65_78_74_3A_20_66_69_6E_64_4E",

-- L0763@0107 7363616E5F6C696E653A2054203C3D20.scan_line:  T <= inc, if false then continue else scan_loop;
-- scan_line: T <= inc, if false then continue else scan_loop;
263 => X"73_63_61_6E_5F_6C_69_6E_65_3A_20_54_20_3C_3D_20",

-- L0765@0108 7363616E5F666F756E643A2066696E64.scan_found:  findNextCR(same);
-- scan_found: findNextCR(same);
264 => X"73_63_61_6E_5F_66_6F_75_6E_64_3A_20_66_69_6E_64",

-- L0766@0109 4C45203C3D20543B2020202020202020.  LE <= T;
-- LE <= T;
265 => X"4C_45_20_3C_3D_20_54_3B_20_20_20_20_20_20_20_20",

-- L0768@010A 69662074727565207468656E20726574.  if true then return else continue;
-- if true then return else continue;
266 => X"69_66_20_74_72_75_65_20_74_68_65_6E_20_72_65_74",

-- L0771@010B 636F7079436F72653A2054203C3D2066.copyCore:  T <= from_S, if Y_ZERO then return;
-- copyCore: T <= from_S, if Y_ZERO then return;
267 => X"63_6F_70_79_43_6F_72_65_3A_20_54_20_3C_3D_20_66",

-- L0772@010C 72656164436F72652854293B20202020.  readCore(T);
-- readCore(T);
268 => X"72_65_61_64_43_6F_72_65_28_54_29_3B_20_20_20_20",

-- L0773@010D 54203C3D2066726F6D5F523B20202020.  T <= from_R;
-- T <= from_R;
269 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_3B_20_20_20_20",

-- L0774@010E 7772697465436F726528542C2073616D.  writeCore(T, same);
-- writeCore(T, same);
270 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_73_61_6D",

-- L0776@010F 616C75203C3D20636F70795F6E657874.  alu <= copy_next, if false then continue else copyCore;
-- alu <= copy_next, if false then continue else copyCore;
271 => X"61_6C_75_20_3C_3D_20_63_6F_70_79_5F_6E_65_78_74",

-- L0781@0110 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 43;
-- trace(from_microcode), directByte = 43;
272 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0782@0111 69662066616C7365207468656E20636F.  if false then continue else ColdStart;
-- if false then continue else ColdStart;
273 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0787@0112 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 42;
-- trace(from_microcode), directByte = 42;
274 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0788@0113 54203C3D20494C5F50433B2020202020.  T <= IL_PC;
-- T <= IL_PC;
275 => X"54_20_3C_3D_20_49_4C_5F_50_43_3B_20_20_20_20_20",

-- L0789@0114 585168657265203C3D20542C20726561.  XQhere <= T, readCore16(Prog_start);
-- XQhere <= T, readCore16(Prog_start);
276 => X"58_51_68_65_72_65_20_3C_3D_20_54_2C_20_72_65_61",

-- L0790@0115 696620525F49535F5A45524F20746865.  if R_IS_ZERO then NOPROG_ERR;
-- if R_IS_ZERO then NOPROG_ERR;
277 => X"69_66_20_52_5F_49_53_5F_5A_45_52_4F_20_74_68_65",

-- L0791@0116 4250203C3D20542C2054203C3D206672.  BP <= T, T <= from_R;
-- BP <= T, T <= from_R;
278 => X"42_50_20_3C_3D_20_54_2C_20_54_20_3C_3D_20_66_72",

-- L0792@0117 4C696E6F203C3D20542C206966206661.  Lino <= T, if false then continue else fetch;
-- Lino <= T, if false then continue else fetch;
279 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_69_66_20_66_61",

-- L0797@0118 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 44;
-- trace(from_microcode), directByte = 44;
280 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0798@0119 73746F705F72756E3A20646972656374.stop_run:  directByte = 'S', outChar(from_microcode);
-- stop_run: directByte = 'S', outChar(from_microcode);
281 => X"73_74_6F_70_5F_72_75_6E_3A_20_64_69_72_65_63_74",

-- L0799@011A 64697265637442797465203D20275427.  directByte = 'T', outChar(from_microcode);
-- directByte = 'T', outChar(from_microcode);
282 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_54_27",

-- L0800@011B 64697265637442797465203D20274F27.  directByte = 'O', outChar(from_microcode);
-- directByte = 'O', outChar(from_microcode);
283 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_4F_27",

-- L0801@011C 64697265637442797465203D20275027.  directByte = 'P', outChar(from_microcode);
-- directByte = 'P', outChar(from_microcode);
284 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_50_27",

-- L0802@011D 69662066616C7365207468656E20636F.  if false then continue else print_lino;
-- if false then continue else print_lino;
285 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0807@011E 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 49;
-- trace(from_microcode), directByte = 49;
286 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0808@011F 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2;
-- alu <= R_fromStack, ExpStack <= pop2;
287 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0809@0120 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2;
-- T <= ExpStack, ExpStack <= pop2;
288 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L0810@0121 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2;
-- alu <= S_fromStack, ExpStack <= pop2;
289 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L0811@0122 7472616365414C5528293B2020202020.  traceALU();
-- traceALU();
290 => X"74_72_61_63_65_41_4C_55_28_29_3B_20_20_20_20_20",

-- L0813@0123 64697265637442797465203D2032302C.  directByte = 20, if S_EQU_DB_MOD32 then u_peek8;
-- directByte = 20, if S_EQU_DB_MOD32 then u_peek8;
291 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_30_2C",

-- L0814@0124 64697265637442797465203D2032342C.  directByte = 24, if S_EQU_DB_MOD32 then u_poke8;
-- directByte = 24, if S_EQU_DB_MOD32 then u_poke8;
292 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_34_2C",

-- L0815@0125 64697265637442797465203D2032312C.  directByte = 21, if S_EQU_DB_MOD32 then u_peek16;
-- directByte = 21, if S_EQU_DB_MOD32 then u_peek16;
293 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_31_2C",

-- L0816@0126 64697265637442797465203D2032352C.  directByte = 25, if S_EQU_DB_MOD32 then u_poke16;
-- directByte = 25, if S_EQU_DB_MOD32 then u_poke16;
294 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_35_2C",

-- L0818@0127 54203C3D2062696E6F702C2069662066.  T <= binop, if false then continue else u_done;
-- T <= binop, if false then continue else u_done;
295 => X"54_20_3C_3D_20_62_69_6E_6F_70_2C_20_69_66_20_66",

-- L0820@0128 755F7065656B383A2072656164436F72.u_peek8:  readCore(T);
-- u_peek8: readCore(T);
296 => X"75_5F_70_65_65_6B_38_3A_20_72_65_61_64_43_6F_72",

-- L0821@0129 755F696E3A2054203C3D204D44523B20.u_in:  T <= MDR;
-- u_in: T <= MDR;
297 => X"75_5F_69_6E_3A_20_54_20_3C_3D_20_4D_44_52_3B_20",

-- L0822@012A 755F646F6E653A20457870537461636B.u_done:  ExpStack <= push_TWord, if false then continue else fetch;
-- u_done: ExpStack <= push_TWord, if false then continue else fetch;
298 => X"75_5F_64_6F_6E_65_3A_20_45_78_70_53_74_61_63_6B",

-- L0824@012B 755F7065656B31363A2072656164436F.u_peek16:  readCore16(same);
-- u_peek16: readCore16(same);
299 => X"75_5F_70_65_65_6B_31_36_3A_20_72_65_61_64_43_6F",

-- L0825@012C 54203C3D2066726F6D5F522C20696620.  T <= from_R, if false then continue else u_done;
-- T <= from_R, if false then continue else u_done;
300 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_2C_20_69_66_20",

-- L0827@012D 755F706F6B65383A2070726570577269.u_poke8:  prepWrite();
-- u_poke8: prepWrite();
301 => X"75_5F_70_6F_6B_65_38_3A_20_70_72_65_70_57_72_69",

-- L0828@012E 7772697465436F726528542C2066726F.  writeCore(T, from_SLo);
-- writeCore(T, from_SLo);
302 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0829@012F 69662066616C7365207468656E20636F.  if false then continue else u_peek8;
-- if false then continue else u_peek8;
303 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0831@0130 755F706F6B6531363A20707265705772.u_poke16:  prepWrite();
-- u_poke16: prepWrite();
304 => X"75_5F_70_6F_6B_65_31_36_3A_20_70_72_65_70_57_72",

-- L0832@0131 7772697465436F726528542C2066726F.  writeCore(T, from_SHi), T <= inc;
-- writeCore(T, from_SHi), T <= inc;
305 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0833@0132 7772697465436F726528542C2066726F.  writeCore(T, from_SLo);
-- writeCore(T, from_SLo);
306 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0834@0133 54203C3D206465632C2069662066616C.  T <= dec, if false then continue else u_peek16;
-- T <= dec, if false then continue else u_peek16;
307 => X"54_20_3C_3D_20_64_65_63_2C_20_69_66_20_66_61_6C",

-- L0836@0134 7072657057726974653A2054203C3D20.prepWrite:  T <= save;
-- prepWrite: T <= save;
308 => X"70_72_65_70_57_72_69_74_65_3A_20_54_20_3C_3D_20",

-- L0837@0135 54203C3D2066726F6D5F523B20202020.  T <= from_R;
-- T <= from_R;
309 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_3B_20_20_20_20",

-- L0838@0136 616C75203C3D20535F66726F6D542C20.  alu <= S_fromT, T <= recall, if true then return else continue;
-- alu <= S_fromT, T <= recall, if true then return else continue;
310 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_54_2C_20",

-- L0843@0137 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 19;
-- trace(from_microcode), directByte = 19;
311 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0844@0138 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then RSTACK_ERR;
-- if STACK_IS_EMPTY then RSTACK_ERR;
312 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0845@0139 494C5F5043203C3D2052657453746163.  IL_PC <= RetStack, RetStack <= pop, if false then continue else fetch;
-- IL_PC <= RetStack, RetStack <= pop, if false then continue else fetch;
313 => X"49_4C_5F_50_43_20_3C_3D_20_52_65_74_53_74_61_63",

-- L0850@013A 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 20;
-- trace(from_microcode), directByte = 20;
314 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0851@013B 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3;
-- trace(from_microcode), directByte = 3;
315 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0852@013C 696620535441434B5F49535F46554C4C.  if STACK_IS_FULL then RSTACK_ERR;
-- if STACK_IS_FULL then RSTACK_ERR;
316 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_46_55_4C_4C",

-- L0853@013D 526574537461636B203C3D2070757368.  RetStack <= push_IL_PC_PLUS_1, if false then continue else jump;
-- RetStack <= push_IL_PC_PLUS_1, if false then continue else jump;
317 => X"52_65_74_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0858@013E 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 21;
-- trace(from_microcode), directByte = 21;
318 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0859@013F 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3;
-- trace(from_microcode), directByte = 3;
319 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0860@0140 6A756D703A20494C5F5043203C3D2064.jump:  IL_PC <= direct11, if false then continue else fetch;
-- jump: IL_PC <= direct11, if false then continue else fetch;
320 => X"6A_75_6D_70_3A_20_49_4C_5F_50_43_20_3C_3D_20_64",

-- L0865@0141 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 7;
-- trace(from_microcode), directByte = 7;
321 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0866@0142 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off6;
-- IL_PC <= pc_plus_off6;
322 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L0867@0143 62725F657869743A2074726163652866.br_exit:  trace(from_microcode), directByte = 30;
-- br_exit: trace(from_microcode), directByte = 30;
323 => X"62_72_5F_65_78_69_74_3A_20_74_72_61_63_65_28_66",

-- L0868@0144 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
324 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0873@0145 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 7;
-- trace(from_microcode), directByte = 7;
325 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0874@0146 69662066616C7365207468656E20636F.  if false then continue else badop;
-- if false then continue else badop;
326 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0879@0147 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 17;
-- trace(from_microcode), directByte = 17;
327 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0880@0148 54203C3D20494C5F50432C204250203C.  T <= IL_PC, BP <= save, skipSpaces();
-- T <= IL_PC, BP <= save, skipSpaces();
328 => X"54_20_3C_3D_20_49_4C_5F_50_43_2C_20_42_50_20_3C",

-- L0881@0149 62635F6C6F6F703A2074726163652866.bc_loop:  trace(from_microcode), directByte = 3;
-- bc_loop: trace(from_microcode), directByte = 3;
329 => X"62_63_5F_6C_6F_6F_70_3A_20_74_72_61_63_65_28_66",

-- L0882@014A 72656164436F7265284250293B202020.  readCore(BP);
-- readCore(BP);
330 => X"72_65_61_64_43_6F_72_65_28_42_50_29_3B_20_20_20",

-- L0883@014B 6966204D44525F4D4154434845535F49.  if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
-- if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
331 => X"69_66_20_4D_44_52_5F_4D_41_54_43_48_45_53_5F_49",

-- L0884@014C 696620494C434F4445425954455F4249.  if ILCODEBYTE_BIT7 then bc_match;
-- if ILCODEBYTE_BIT7 then bc_match;
332 => X"69_66_20_49_4C_43_4F_44_45_42_59_54_45_5F_42_49",

-- L0885@014D 4250203C3D20696E632C20494C5F5043.  BP <= inc, IL_PC <= inc, if false then continue else bc_loop;
-- BP <= inc, IL_PC <= inc, if false then continue else bc_loop;
333 => X"42_50_20_3C_3D_20_69_6E_63_2C_20_49_4C_5F_50_43",

-- L0886@014E 62635F6D617463683A204250203C3D20.bc_match:  BP <= inc, IL_PC <= inc;
-- bc_match: BP <= inc, IL_PC <= inc;
334 => X"62_63_5F_6D_61_74_63_68_3A_20_42_50_20_3C_3D_20",

-- L0887@014F 7472616365425028293B202020202020.  traceBP();
-- traceBP();
335 => X"74_72_61_63_65_42_50_28_29_3B_20_20_20_20_20_20",

-- L0888@0150 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
336 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0889@0151 62635F657869743A204250203C3D2072.bc_exit:  BP <= recall, IL_PC <= T;
-- bc_exit: BP <= recall, IL_PC <= T;
337 => X"62_63_5F_65_78_69_74_3A_20_42_50_20_3C_3D_20_72",

-- L0890@0152 7472616365425028293B202020202020.  traceBP();
-- traceBP();
338 => X"74_72_61_63_65_42_50_28_29_3B_20_20_20_20_20_20",

-- L0891@0153 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
339 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L0896@0154 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 16;
-- trace(from_microcode), directByte = 16;
340 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0897@0155 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
341 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0898@0156 4D4452203C3D20546F55707065722C20.  MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
-- MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
342 => X"4D_44_52_20_3C_3D_20_54_6F_55_70_70_65_72_2C_20",

-- L0899@0157 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
343 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L0900@0158 62765F657865633A2054203C3D204D44.bv_exec:  T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
-- bv_exec: T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
344 => X"62_76_5F_65_78_65_63_3A_20_54_20_3C_3D_20_4D_44",

-- L0901@0159 457870537461636B203C3D2070757368.  ExpStack <= push_TByte, BP <= inc, if false then continue else fetch;
-- ExpStack <= push_TByte, BP <= inc, if false then continue else fetch;
345 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0906@015A 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 14;
-- trace(from_microcode), directByte = 14;
346 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0907@015B 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
347 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0908@015C 616C75203C3D207265736574302C2069.  alu <= reset0, if MDR_IS_NUM then bn_loop;
-- alu <= reset0, if MDR_IS_NUM then bn_loop;
348 => X"61_6C_75_20_3C_3D_20_72_65_73_65_74_30_2C_20_69",

-- L0909@015D 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
349 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L0910@015E 626E5F657869743A2074726163655928.bn_exit:  traceY();
-- bn_exit: traceY();
350 => X"62_6E_5F_65_78_69_74_3A_20_74_72_61_63_65_59_28",

-- L0911@015F 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 30;
-- trace(from_microcode), directByte = 30;
351 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0912@0160 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
352 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0913@0161 626E5F6C6F6F703A20616C75203C3D20.bn_loop:  alu <= Yx10_plus_MDR, BP <= inc;
-- bn_loop: alu <= Yx10_plus_MDR, BP <= inc;
353 => X"62_6E_5F_6C_6F_6F_70_3A_20_61_6C_75_20_3C_3D_20",

-- L0914@0162 696620414C555F4F564552464C4F5720.  if ALU_OVERFLOW then OVERFLOW_ERR;
-- if ALU_OVERFLOW then OVERFLOW_ERR;
354 => X"69_66_20_41_4C_55_5F_4F_56_45_52_46_4C_4F_57_20",

-- L0915@0163 72656164436F7265284250293B202020.  readCore(BP);
-- readCore(BP);
355 => X"72_65_61_64_43_6F_72_65_28_42_50_29_3B_20_20_20",

-- L0916@0164 6966204D44525F49535F4E554D207468.  if MDR_IS_NUM then bn_loop;
-- if MDR_IS_NUM then bn_loop;
356 => X"69_66_20_4D_44_52_5F_49_53_5F_4E_55_4D_20_74_68",

-- L0917@0165 54203C3D2066726F6D5F594C6F2C2069.  T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
-- T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
357 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_69",

-- L0918@0166 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, if false then continue else bn_exit;
-- ExpStack <= push_TWord, if false then continue else bn_exit;
358 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0923@0167 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 13;
-- trace(from_microcode), directByte = 13;
359 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0924@0168 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
360 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0925@0169 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_EQU_DB then fetch;
-- directByte = 0x0D, if MDR_EQU_DB then fetch;
361 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0926@016A 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
362 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L0928@016B 425245414B3A20676F7443686172203D.BREAK:  gotChar = 1, trace(from_microcode), directByte = 55;
-- BREAK: gotChar = 1, trace(from_microcode), directByte = 55;
363 => X"42_52_45_41_4B_3A_20_67_6F_74_43_68_61_72_20_3D",

-- L0929@016C 6F75744265657028293B202020202020.  outBeep();
-- outBeep();
364 => X"6F_75_74_42_65_65_70_28_29_3B_20_20_20_20_20_20",

-- L0930@016D 64697265637442797465203D20274227.  directByte = 'B', outChar(from_microcode);
-- directByte = 'B', outChar(from_microcode);
365 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_42_27",

-- L0931@016E 64697265637442797465203D20275227.  directByte = 'R', outChar(from_microcode);
-- directByte = 'R', outChar(from_microcode);
366 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_52_27",

-- L0932@016F 64697265637442797465203D20274B27.  directByte = 'K', outChar(from_microcode);
-- directByte = 'K', outChar(from_microcode);
367 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_4B_27",

-- L0933@0170 69662066616C7365207468656E20636F.  if false then continue else traceDetails;
-- if false then continue else traceDetails;
368 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0935@0171 4E4F50524F475F4552523A2074726163.NOPROG_ERR:  trace(from_microcode), directByte = 50;
-- NOPROG_ERR: trace(from_microcode), directByte = 50;
369 => X"4E_4F_50_52_4F_47_5F_45_52_52_3A_20_74_72_61_63",

-- L0936@0172 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
370 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0937@0173 4449564259305F4552523A2074726163.DIVBY0_ERR:  trace(from_microcode), directByte = 57;
-- DIVBY0_ERR: trace(from_microcode), directByte = 57;
371 => X"44_49_56_42_59_30_5F_45_52_52_3A_20_74_72_61_63",

-- L0938@0174 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
372 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0939@0175 4F564552464C4F575F4552523A207472.OVERFLOW_ERR:  trace(from_microcode), directByte = 58;
-- OVERFLOW_ERR: trace(from_microcode), directByte = 58;
373 => X"4F_56_45_52_46_4C_4F_57_5F_45_52_52_3A_20_74_72",

-- L0940@0176 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
374 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0941@0177 53594E5441585F4552523A2074726163.SYNTAX_ERR:  trace(from_microcode), directByte = 61;
-- SYNTAX_ERR: trace(from_microcode), directByte = 61;
375 => X"53_59_4E_54_41_58_5F_45_52_52_3A_20_74_72_61_63",

-- L0942@0178 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
376 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0943@0179 494E5445524E414C5F4552523A207472.INTERNAL_ERR:  trace(from_microcode), directByte = 62;
-- INTERNAL_ERR: trace(from_microcode), directByte = 62;
377 => X"49_4E_54_45_52_4E_41_4C_5F_45_52_52_3A_20_74_72",

-- L0944@017A 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
378 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0945@017B 45535441434B5F4552523A2074726163.ESTACK_ERR:  trace(from_microcode), directByte = 60;
-- ESTACK_ERR: trace(from_microcode), directByte = 60;
379 => X"45_53_54_41_43_4B_5F_45_52_52_3A_20_74_72_61_63",

-- L0946@017C 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
380 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0947@017D 52535441434B5F4552523A2074726163.RSTACK_ERR:  trace(from_microcode), directByte = 59;
-- RSTACK_ERR: trace(from_microcode), directByte = 59;
381 => X"52_53_54_41_43_4B_5F_45_52_52_3A_20_74_72_61_63",

-- L0948@017E 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
382 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0949@017F 42535441434B5F4552523A2074726163.BSTACK_ERR:  trace(from_microcode), directByte = 54;
-- BSTACK_ERR: trace(from_microcode), directByte = 54;
383 => X"42_53_54_41_43_4B_5F_45_52_52_3A_20_74_72_61_63",

-- L0950@0180 74726163654572726F723A206F757442.traceError:  outBeep();
-- traceError: outBeep();
384 => X"74_72_61_63_65_45_72_72_6F_72_3A_20_6F_75_74_42",

-- L0951@0181 64697265637442797465203D20274527.  directByte = 'E', outChar(from_microcode);
-- directByte = 'E', outChar(from_microcode);
385 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_45_27",

-- L0952@0182 64697265637442797465203D20275227.  directByte = 'R', outChar(from_microcode);
-- directByte = 'R', outChar(from_microcode);
386 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_52_27",

-- L0953@0183 64697265637442797465203D20275227.  directByte = 'R', outChar(from_microcode);
-- directByte = 'R', outChar(from_microcode);
387 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_52_27",

-- L0954@0184 747261636544657461696C733A206469.traceDetails:  directByte = '#', outChar(from_microcode), T <= IL_PC;
-- traceDetails: directByte = '#', outChar(from_microcode), T <= IL_PC;
388 => X"74_72_61_63_65_44_65_74_61_69_6C_73_3A_20_64_69",

-- L0955@0185 54203C3D206465633B20202020202020.  T <= dec;
-- T <= dec;
389 => X"54_20_3C_3D_20_64_65_63_3B_20_20_20_20_20_20_20",

-- L0956@0186 7072696E744465635228525F66726F6D.  printDecR(R_fromT);
-- printDecR(R_fromT);
390 => X"70_72_69_6E_74_44_65_63_52_28_52_5F_66_72_6F_6D",

-- L0957@0187 69662049535F52554E4D4F4445207468.  if IS_RUNMODE then next else err_done;
-- if IS_RUNMODE then next else err_done;
391 => X"69_66_20_49_53_5F_52_55_4E_4D_4F_44_45_20_74_68",

-- L0958@0188 7072696E745F6C696E6F3A2064697265.print_lino:  directByte = ' ', outChar(from_microcode);
-- print_lino: directByte = ' ', outChar(from_microcode);
392 => X"70_72_69_6E_74_5F_6C_69_6E_6F_3A_20_64_69_72_65",

-- L0959@0189 64697265637442797465203D20274127.  directByte = 'A', outChar(from_microcode);
-- directByte = 'A', outChar(from_microcode);
393 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_41_27",

-- L0960@018A 64697265637442797465203D20275427.  directByte = 'T', outChar(from_microcode), alu <= S_fromLino;
-- directByte = 'T', outChar(from_microcode), alu <= S_fromLino;
394 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_54_27",

-- L0961@018B 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode), T <= from_S;
-- directByte = ' ', outChar(from_microcode), T <= from_S;
395 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0962@018C 7072696E744465635228525F66726F6D.  printDecR(R_fromT);
-- printDecR(R_fromT);
396 => X"70_72_69_6E_74_44_65_63_52_28_52_5F_66_72_6F_6D",

-- L0963@018D 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode), T <= fromTicks;
-- directByte = ' ', outChar(from_microcode), T <= fromTicks;
397 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0964@018E 7072696E744465635228525F66726F6D.  printDecR(R_fromT);
-- printDecR(R_fromT);
398 => X"70_72_69_6E_74_44_65_63_52_28_52_5F_66_72_6F_6D",

-- L0965@018F 64697265637442797465203D20272E27.  directByte = ' 64697265637442797465203D20272E27.', outChar(from_microcode), T <= recall;
-- directByte = '.', outChar(from_microcode), T <= recall;
399 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_2E_27",

-- L0966@0190 7072696E744465635228525F66726F6D.  printDecR(R_fromT);
-- printDecR(R_fromT);
400 => X"70_72_69_6E_74_44_65_63_52_28_52_5F_66_72_6F_6D",

-- L0967@0191 6572725F646F6E653A206F757443524C.err_done:  outCRLF();
-- err_done: outCRLF();
401 => X"65_72_72_5F_64_6F_6E_65_3A_20_6F_75_74_43_52_4C",

-- L0968@0192 74726163652863726C66293B20202020.  trace(crlf);
-- trace(crlf);
402 => X"74_72_61_63_65_28_63_72_6C_66_29_3B_20_20_20_20",

-- L0969@0193 69662066616C7365207468656E20636F.  if false then continue else WarmStart;
-- if false then continue else WarmStart;
403 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0971@0194 66696E644E65787443523A2072656164.findNextCR:  readCore(T);
-- findNextCR: readCore(T);
404 => X"66_69_6E_64_4E_65_78_74_43_52_3A_20_72_65_61_64",

-- L0972@0195 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_EQU_DB then return;
-- directByte = 0x0D, if MDR_EQU_DB then return;
405 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0973@0196 54203C3D20696E632C20646972656374.  T <= inc, directByte = 0x00, if MDR_EQU_DB then INTERNAL_ERR else findNextCR;
-- T <= inc, directByte = 0x00, if MDR_EQU_DB then INTERNAL_ERR else findNextCR;
406 => X"54_20_3C_3D_20_69_6E_63_2C_20_64_69_72_65_63_74",

-- L0975@0197 72656164436F726531363A20616C7520.readCore16:  alu <= reset1, readCore(T);
-- readCore16: alu <= reset1, readCore(T);
407 => X"72_65_61_64_43_6F_72_65_31_36_3A_20_61_6C_75_20",

-- L0976@0198 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc;
-- alu <= Rx256_plus_MDR, T <= inc;
408 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L0977@0199 72656164436F72652854293B20202020.  readCore(T);
-- readCore(T);
409 => X"72_65_61_64_43_6F_72_65_28_54_29_3B_20_20_20_20",

-- L0978@019A 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc, if true then return else continue;
-- alu <= Rx256_plus_MDR, T <= inc, if true then return else continue;
410 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L0980@019B 7772697465324E756C6C733A20777269.write2Nulls:  writeCore(T, zero), T <= inc;
-- write2Nulls: writeCore(T, zero), T <= inc;
411 => X"77_72_69_74_65_32_4E_75_6C_6C_73_3A_20_77_72_69",

-- L0981@019C 7772697465436F726528542C207A6572.  writeCore(T, zero);
-- writeCore(T, zero);
412 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_7A_65_72",

-- L0982@019D 69662074727565207468656E20726574.  if true then return else continue;
-- if true then return else continue;
413 => X"69_66_20_74_72_75_65_20_74_68_65_6E_20_72_65_74",

-- L0985@019E 70756C6C52533A20696620535441434B.pullRS:  if STACK_IS_EMPTY then ESTACK_ERR;
-- pullRS: if STACK_IS_EMPTY then ESTACK_ERR;
414 => X"70_75_6C_6C_52_53_3A_20_69_66_20_53_54_41_43_4B",

-- L0986@019F 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2;
-- alu <= R_fromStack, ExpStack <= pop2;
415 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0987@01A0 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
416 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0988@01A1 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2, if true then return else continue;
-- alu <= S_fromStack, ExpStack <= pop2, if true then return else continue;
417 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L0991@01A2 7072696E744465633A20616C75203C3D.printDec:  alu <= R_fromStack, ExpStack <= pop2;
-- printDec: alu <= R_fromStack, ExpStack <= pop2;
418 => X"70_72_69_6E_74_44_65_63_3A_20_61_6C_75_20_3C_3D",

-- L0993@01A3 7072696E74446563523A20616C75203C.printDecR:  alu <= bcd_start;
-- printDecR: alu <= bcd_start;
419 => X"70_72_69_6E_74_44_65_63_52_3A_20_61_6C_75_20_3C",

-- L0994@01A4 616C75203C3D206263645F6E6578742C.  alu <= bcd_next, if ALU_READY then next else repeat;
-- alu <= bcd_next, if ALU_READY then next else repeat;
420 => X"61_6C_75_20_3C_3D_20_62_63_64_5F_6E_65_78_74_2C",

-- L0995@01A5 696620414C555F5349474E207468656E.  if ALU_SIGN then next else printY;
-- if ALU_SIGN then next else printY;
421 => X"69_66_20_41_4C_55_5F_53_49_47_4E_20_74_68_65_6E",

-- L0996@01A6 64697265637442797465203D20272D27.  directByte = '-', outChar(from_microcode);
-- directByte = '-', outChar(from_microcode);
422 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_2D_27",

-- L0997@01A7 7072696E74593A206F75744E5A436861.printY:  outNZChar(from_YtoAlphaZ);
-- printY: outNZChar(from_YtoAlphaZ);
423 => X"70_72_69_6E_74_59_3A_20_6F_75_74_4E_5A_43_68_61",

-- L0998@01A8 6F75744E5A436861722866726F6D5F59.  outNZChar(from_YtoAlphaZ);
-- outNZChar(from_YtoAlphaZ);
424 => X"6F_75_74_4E_5A_43_68_61_72_28_66_72_6F_6D_5F_59",

-- L0999@01A9 6F75744E5A436861722866726F6D5F59.  outNZChar(from_YtoAlphaZ);
-- outNZChar(from_YtoAlphaZ);
425 => X"6F_75_74_4E_5A_43_68_61_72_28_66_72_6F_6D_5F_59",

-- L1000@01AA 6F75744E5A436861722866726F6D5F59.  outNZChar(from_YtoAlphaZ);
-- outNZChar(from_YtoAlphaZ);
426 => X"6F_75_74_4E_5A_43_68_61_72_28_66_72_6F_6D_5F_59",

-- L1001@01AB 6F75744E5A436861722866726F6D5F59.  outNZChar(from_YtoAlphaZ);
-- outNZChar(from_YtoAlphaZ);
427 => X"6F_75_74_4E_5A_43_68_61_72_28_66_72_6F_6D_5F_59",

-- L1002@01AC 6F75744E5A436861722866726F6D5F59.  outNZChar(from_YtoAlphaZ);
-- outNZChar(from_YtoAlphaZ);
428 => X"6F_75_74_4E_5A_43_68_61_72_28_66_72_6F_6D_5F_59",

-- L1003@01AD 6F75744E5A436861722866726F6D5F59.  outNZChar(from_YtoAlphaZ);
-- outNZChar(from_YtoAlphaZ);
429 => X"6F_75_74_4E_5A_43_68_61_72_28_66_72_6F_6D_5F_59",

-- L1004@01AE 434841524F5554203C3D2066726F6D5F.  CHAROUT <= from_YtoAlpha, if false then continue else outChar;
-- CHAROUT <= from_YtoAlpha, if false then continue else outChar;
430 => X"43_48_41_52_4F_55_54_20_3C_3D_20_66_72_6F_6D_5F",

-- L1006@01AF 6F75744E5A436861723A206F75744368.outNZChar:  outChar(from_YtoAlphaZ);
-- outNZChar: outChar(from_YtoAlphaZ);
431 => X"6F_75_74_4E_5A_43_68_61_72_3A_20_6F_75_74_43_68",

-- L1007@01B0 6F75745F736B69703A20616C75203C3D.out_skip:  alu <= Yx16, if true then return else continue;
-- out_skip: alu <= Yx16, if true then return else continue;
432 => X"6F_75_74_5F_73_6B_69_70_3A_20_61_6C_75_20_3C_3D",

-- L1009@01B1 736B69705370616365733A2072656164.skipSpaces:  readCore(BP);
-- skipSpaces: readCore(BP);
433 => X"73_6B_69_70_53_70_61_63_65_73_3A_20_72_65_61_64",

-- L1010@01B2 64697265637442797465203D20272027.  directByte = ' ', if MDR_EQU_DB then skipSp;
-- directByte = ' ', if MDR_EQU_DB then skipSp;
434 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L1011@01B3 64697265637442797465203D20307830.  directByte = 0x09, if MDR_EQU_DB then skipSp else return;
-- directByte = 0x09, if MDR_EQU_DB then skipSp else return;
435 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1012@01B4 736B697053703A204250203C3D20696E.skipSp:  BP <= inc, if false then continue else skipSpaces;
-- skipSp: BP <= inc, if false then continue else skipSpaces;
436 => X"73_6B_69_70_53_70_3A_20_42_50_20_3C_3D_20_69_6E",

-- L1014@01B5 6F7574426565703A206F757443524C46.outBeep:  outCRLF();
-- outBeep: outCRLF();
437 => X"6F_75_74_42_65_65_70_3A_20_6F_75_74_43_52_4C_46",

-- L1015@01B6 74726163652863726C66293B20202020.  trace(crlf);
-- trace(crlf);
438 => X"74_72_61_63_65_28_63_72_6C_66_29_3B_20_20_20_20",

-- L1016@01B7 64697265637442797465203D20307830.  directByte = 0x07, CHAROUT <= from_microcode, if false then continue else outChar;
-- directByte = 0x07, CHAROUT <= from_microcode, if false then continue else outChar;
439 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1018@01B8 6F757443524C463A2064697265637442.outCRLF:  directByte = 0x0D, outChar(from_microcode);
-- outCRLF: directByte = 0x0D, outChar(from_microcode);
440 => X"6F_75_74_43_52_4C_46_3A_20_64_69_72_65_63_74_42",

-- L1019@01B9 64697265637442797465203D20307830.  directByte = 0x0A, CHAROUT <= from_microcode;
-- directByte = 0x0A, CHAROUT <= from_microcode;
441 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1020@01BA 6F7574436861723A2069662043484152.outChar:  if CHAROUT_READY then next else repeat;
-- outChar: if CHAROUT_READY then next else repeat;
442 => X"6F_75_74_43_68_61_72_3A_20_69_66_20_43_48_41_52",

-- L1021@01BB 696620434841524F55545F5245414459.  if CHAROUT_READY then return else repeat;
-- if CHAROUT_READY then return else repeat;
443 => X"69_66_20_43_48_41_52_4F_55_54_5F_52_45_41_44_59",

-- L1023@01BC 7772697465436F72653A206E5752203D.writeCore:  nWR = 0, if nBUSACK then repeat else return;
-- writeCore: nWR = 0, if nBUSACK then repeat else return;
444 => X"77_72_69_74_65_43_6F_72_65_3A_20_6E_57_52_20_3D",

-- L1025@01BD 72656164436F72653A206E5244203D20.readCore:  nRD = 0, if nBUSACK then repeat else next;
-- readCore: nRD = 0, if nBUSACK then repeat else next;
445 => X"72_65_61_64_43_6F_72_65_3A_20_6E_52_44_20_3D_20",

-- L1026@01BE 6E5244203D20302C204D4452203C3D20.  nRD = 0, MDR <= from_Bus, if true then return else continue;
-- nRD = 0, MDR <= from_Bus, if true then return else continue;
446 => X"6E_52_44_20_3D_20_30_2C_20_4D_44_52_20_3C_3D_20",

-- L1030@01BF 64756D705F696E7075743A20496E6C45.dump_input:  InlEnd <= InLine_start, trace(crlf);
-- dump_input: InlEnd <= InLine_start, trace(crlf);
447 => X"64_75_6D_70_5F_69_6E_70_75_74_3A_20_49_6E_6C_45",

-- L1031@01C0 64756D705F696E6C703A207265616443.dump_inlp:  readCore(InlEnd);
-- dump_inlp: readCore(InlEnd);
448 => X"64_75_6D_70_5F_69_6E_6C_70_3A_20_72_65_61_64_43",

-- L1032@01C1 64697265637442797465203D20392C20.  directByte = 9, trace(from_microcode);
-- directByte = 9, trace(from_microcode);
449 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_39_2C_20",

-- L1033@01C2 64697265637442797465203D20307830.  directByte = 0x00, if MDR_EQU_DB then dump_inex;
-- directByte = 0x00, if MDR_EQU_DB then dump_inex;
450 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1034@01C3 496E6C456E64203C3D20696E632C2069.  InlEnd <= inc, if false then continue else dump_inlp;
-- InlEnd <= inc, if false then continue else dump_inlp;
451 => X"49_6E_6C_45_6E_64_20_3C_3D_20_69_6E_63_2C_20_69",

-- L1035@01C4 64756D705F696E65783A207472616365.dump_inex:  trace(crlf);
-- dump_inex: trace(crlf);
452 => X"64_75_6D_70_5F_69_6E_65_78_3A_20_74_72_61_63_65",

-- L1036@01C5 69662074727565207468656E20726574.  if true then return else continue;
-- if true then return else continue;
453 => X"69_66_20_74_72_75_65_20_74_68_65_6E_20_72_65_74",

-- L1038@01C6 747261636542503A2045787053746163.traceBP:  ExpStack <= push_TWord, T <= BP;
-- traceBP: ExpStack <= push_TWord, T <= BP;
454 => X"74_72_61_63_65_42_50_3A_20_45_78_70_53_74_61_63",

-- L1039@01C7 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 33;
-- trace(from_microcode), directByte = 33;
455 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L1040@01C8 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2, if true then return else continue;
-- T <= ExpStack, ExpStack <= pop2, if true then return else continue;
456 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L1042@01C9 7472616365593A20457870537461636B.traceY:  ExpStack <= push_TWord, T <= from_YLo;
-- traceY: ExpStack <= push_TWord, T <= from_YLo;
457 => X"74_72_61_63_65_59_3A_20_45_78_70_53_74_61_63_6B",

-- L1043@01CA 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 32;
-- trace(from_microcode), directByte = 32;
458 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L1044@01CB 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2, if true then return else continue;
-- T <= ExpStack, ExpStack <= pop2, if true then return else continue;
459 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L1046@01CC 7472616365414C553A20747261636528.traceALU:  trace(crlf);
-- traceALU: trace(crlf);
460 => X"74_72_61_63_65_41_4C_55_3A_20_74_72_61_63_65_28",

-- L1047@01CD 54203C3D20736176652C207472616365.  T <= save, trace(from_microcode), directByte = 52;
-- T <= save, trace(from_microcode), directByte = 52;
461 => X"54_20_3C_3D_20_73_61_76_65_2C_20_74_72_61_63_65",

-- L1048@01CE 54203C3D2066726F6D5F532C20747261.  T <= from_S, trace(from_microcode), directByte = 52;
-- T <= from_S, trace(from_microcode), directByte = 52;
462 => X"54_20_3C_3D_20_66_72_6F_6D_5F_53_2C_20_74_72_61",

-- L1049@01CF 54203C3D2066726F6D5F522C20747261.  T <= from_R, trace(from_microcode), directByte = 52;
-- T <= from_R, trace(from_microcode), directByte = 52;
463 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_2C_20_74_72_61",

-- L1050@01D0 54203C3D2066726F6D5F5948692C2074.  T <= from_YHi, trace(from_microcode), directByte = 53;
-- T <= from_YHi, trace(from_microcode), directByte = 53;
464 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_48_69_2C_20_74",

-- L1051@01D1 54203C3D2066726F6D5F594C6F2C2074.  T <= from_YLo, trace(from_microcode), directByte = 52;
-- T <= from_YLo, trace(from_microcode), directByte = 52;
465 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_74",

-- L1052@01D2 54203C3D20726563616C6C2C20444247.  T <= recall, DBGINDEX <= crlf;
-- T <= recall, DBGINDEX <= crlf;
466 => X"54_20_3C_3D_20_72_65_63_61_6C_6C_2C_20_44_42_47",

-- L1053@01D3 74726163653A206966204442475F5245.trace:  if DBG_READY then next else repeat;
-- trace: if DBG_READY then next else repeat;
467 => X"74_72_61_63_65_3A_20_69_66_20_44_42_47_5F_52_45",

-- L1054@01D4 6966204442475F524541445920746865.  if DBG_READY then next else repeat;
-- if DBG_READY then next else repeat;
468 => X"69_66_20_44_42_47_5F_52_45_41_44_59_20_74_68_65",

-- L1055@01D5 444247494E444558203C3D207A65726F.  DBGINDEX <= zero, if true then return else continue;
-- DBGINDEX <= zero, if true then return else continue;
469 => X"44_42_47_49_4E_44_45_58_20_3C_3D_20_7A_65_72_6F",

470 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

471 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20",

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

